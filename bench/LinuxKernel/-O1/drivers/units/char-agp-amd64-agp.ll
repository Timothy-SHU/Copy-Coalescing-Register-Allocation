; ModuleID = 'drivers/char/agp/amd64-agp.c'
source_filename = "drivers/char/agp/amd64-agp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_amd64_agp__292_800_agp_amd64_mod_init\22, \22a\22\09\09"
module asm "__initcall__kmod_amd64_agp__292_800_agp_amd64_mod_init6:\09\09\09"
module asm ".long\09__initstub__kmod_amd64_agp__292_800_agp_amd64_mod_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.agp_bridge_driver = type { ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aper_size_info_32 = type { i32, i32, i32, i32 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.agp_bridge_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i64, i64, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i8, i8, %struct.list_head, i32, %struct.list_head, %struct.spinlock }
%struct.amd_northbridge = type { ptr, ptr, ptr, %struct.amd_l3_cache, ptr }
%struct.amd_l3_cache = type { i32, [4 x i8] }
%struct.agp_memory = type { ptr, ptr, ptr, ptr, i64, i32, i32, i64, i32, i32, i8, i8, %struct.list_head, ptr, i32 }
%struct.pci_bus_region = type { i64, i64 }

@agp_off = external dso_local global i32, align 4
@agp_amd64_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @agp_amd64_pci_table, ptr @agp_amd64_probe, ptr @agp_amd64_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @agp_amd64_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer, i8 0 }, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"amd64_agp\00", align 1, !dbg !4898
@agp_bridges_found = internal global i32 0, align 4, !dbg !4943
@agp_try_unsupported = internal global i8 1, section ".init.data", align 1, !dbg !5202
@agp_try_unsupported_boot = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\016agpgart: No supported AGP bridge found.\0A\00", align 1, !dbg !4903
@.str.2 = private unnamed_addr constant [50 x i8] c"\016agpgart: You can boot with agp=try_unsupported\0A\00", align 1, !dbg !4908
@agp_amd64_pci_promisc_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5204
@aperture_resource = internal global ptr null, align 8, !dbg !4941
@__UNIQUE_ID___addressable___initstub__kmod_amd64_agp__292_800_agp_amd64_mod_init6293 = internal global ptr @__initstub__kmod_amd64_agp__292_800_agp_amd64_mod_init6, section ".discard.addressable", align 8, !dbg !4913
@__exitcall_agp_amd64_cleanup = internal global ptr @agp_amd64_cleanup, section ".exitcall.exit", align 8, !dbg !4915
@__UNIQUE_ID_author294 = internal constant [40 x i8] c"amd64_agp.author=Dave Jones, Andi Kleen\00", section ".modinfo", align 1, !dbg !4919
@__param_str_agp_try_unsupported = internal constant [30 x i8] c"amd64_agp.agp_try_unsupported\00", align 16, !dbg !5207
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_agp_try_unsupported = internal constant %struct.kernel_param { ptr @__param_str_agp_try_unsupported, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.14 { ptr @agp_try_unsupported } }, section "__param", align 8, !dbg !4924
@__UNIQUE_ID_agp_try_unsupportedtype295 = internal constant [44 x i8] c"amd64_agp.parmtype=agp_try_unsupported:bool\00", section ".modinfo", align 1, !dbg !4926
@__UNIQUE_ID_file296 = internal constant [42 x i8] c"amd64_agp.file=drivers/char/agp/amd64-agp\00", section ".modinfo", align 1, !dbg !4931
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"amd64_agp.license=GPL\00", section ".modinfo", align 1, !dbg !4936
@.str.3 = private unnamed_addr constant [14 x i8] c"agpgart-amd64\00", align 1, !dbg !4945
@agp_amd64_pci_table = internal constant [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29780, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 5769, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 642, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 12680, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 516, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 822, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 568, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 45448, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 209, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 225, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 1877, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 1888, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 5781, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4950
@agp_amd64_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @agp_amd64_resume, ptr null, ptr @agp_amd64_resume, ptr null, ptr @agp_amd64_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5200
@.str.4 = private unnamed_addr constant [24 x i8] c"AGP bridge [%04x/%04x]\0A\00", align 1, !dbg !4953
@amd_8151_driver = internal constant %struct.agp_bridge_driver { ptr null, ptr @amd_8151_sizes, i32 7, i32 2, i8 0, i8 1, ptr null, ptr @amd64_fetch_size, ptr @amd_8151_configure, ptr @agp_generic_enable, ptr @amd64_cleanup, ptr @amd64_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @amd64_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8, !dbg !4983
@.str.5 = private unnamed_addr constant [3 x i8] c"A0\00", align 1, !dbg !4958
@.str.6 = private unnamed_addr constant [3 x i8] c"A1\00", align 1, !dbg !4961
@.str.7 = private unnamed_addr constant [3 x i8] c"B0\00", align 1, !dbg !4963
@.str.8 = private unnamed_addr constant [3 x i8] c"B1\00", align 1, !dbg !4965
@.str.9 = private unnamed_addr constant [3 x i8] c"B2\00", align 1, !dbg !4967
@.str.10 = private unnamed_addr constant [3 x i8] c"B3\00", align 1, !dbg !4969
@.str.11 = private unnamed_addr constant [3 x i8] c"??\00", align 1, !dbg !4971
@.str.12 = private unnamed_addr constant [28 x i8] c"AMD 8151 AGP Bridge rev %s\0A\00", align 1, !dbg !4973
@.str.13 = private unnamed_addr constant [54 x i8] c"correcting AGP revision (reports 3.5, is really 3.0)\0A\00", align 1, !dbg !4978
@amd_8151_sizes = internal constant [7 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 2048, i32 524288, i32 9, i32 0 }, %struct.aper_size_info_32 { i32 1024, i32 262144, i32 8, i32 1024 }, %struct.aper_size_info_32 { i32 512, i32 131072, i32 7, i32 1536 }, %struct.aper_size_info_32 { i32 256, i32 65536, i32 6, i32 1792 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 5, i32 1824 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 4, i32 1840 }, %struct.aper_size_info_32 { i32 32, i32 8192, i32 3, i32 1848 }], align 16, !dbg !5118
@amd64_aperture_sizes = internal global [7 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 32, i32 8192, i32 4, i32 0 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 5, i32 2 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 6, i32 4 }, %struct.aper_size_info_32 { i32 256, i32 65536, i32 7, i32 6 }, %struct.aper_size_info_32 { i32 512, i32 131072, i32 8, i32 8 }, %struct.aper_size_info_32 { i32 1024, i32 262144, i32 9, i32 10 }, %struct.aper_size_info_32 { i32 2048, i32 524288, i32 10, i32 12 }], align 16, !dbg !5122
@agp_bridge = external dso_local global ptr, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@vmemmap_base = external dso_local global i64, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"drivers/char/agp/amd64-agp.c\00", align 1, !dbg !5125
@.str.15 = private unnamed_addr constant [26 x i8] c"no usable aperture found\0A\00", align 1, !dbg !5130
@.str.16 = private unnamed_addr constant [64 x i8] c"consider rebooting with iommu=memaper=2 to get a good aperture\0A\00", align 1, !dbg !5135
@.str.17 = private unnamed_addr constant [58 x i8] c"aperture size %u MB is not right, using settings from NB\0A\00", align 1, !dbg !5138
@.str.18 = private unnamed_addr constant [36 x i8] c"aperture from AGP @ %Lx size %u MB\0A\00", align 1, !dbg !5143
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"aperture\00", align 1, !dbg !5148
@.str.20 = private unnamed_addr constant [49 x i8] c"\013agpgart: Aperture conflicts with PCI mapping.\0A\00", align 1, !dbg !5153
@.str.21 = private unnamed_addr constant [34 x i8] c"\016Aperture beyond 4GB. Ignoring.\0A\00", align 1, !dbg !5158
@.str.22 = private unnamed_addr constant [44 x i8] c"\016Aperture pointing to e820 RAM. Ignoring.\0A\00", align 1, !dbg !5164
@.str.23 = private unnamed_addr constant [43 x i8] c"\016Aperture too small (%d MB) than (%d MB)\0A\00", align 1, !dbg !5167
@.str.24 = private unnamed_addr constant [24 x i8] c"setting up Nforce3 AGP\0A\00", align 1, !dbg !5169
@.str.25 = private unnamed_addr constant [37 x i8] c"can't find Nforce3 secondary device\0A\00", align 1, !dbg !5171
@nforce3_sizes = internal constant [5 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 512, i32 131072, i32 7, i32 0 }, %struct.aper_size_info_32 { i32 256, i32 65536, i32 6, i32 8 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 5, i32 12 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 4, i32 14 }, %struct.aper_size_info_32 { i32 32, i32 8192, i32 3, i32 15 }], align 16, !dbg !5184
@.str.26 = private unnamed_addr constant [30 x i8] c"no NForce3 size found for %d\0A\00", align 1, !dbg !5176
@.str.27 = private unnamed_addr constant [20 x i8] c"aperture base > 4G\0A\00", align 1, !dbg !5181
@.str.28 = private unnamed_addr constant [20 x i8] c"setting up ULi AGP\0A\00", align 1, !dbg !5189
@.str.29 = private unnamed_addr constant [33 x i8] c"can't find ULi secondary device\0A\00", align 1, !dbg !5191
@uli_sizes = internal constant [7 x %struct.aper_size_info_32] [%struct.aper_size_info_32 { i32 256, i32 65536, i32 6, i32 10 }, %struct.aper_size_info_32 { i32 128, i32 32768, i32 5, i32 9 }, %struct.aper_size_info_32 { i32 64, i32 16384, i32 4, i32 8 }, %struct.aper_size_info_32 { i32 32, i32 8192, i32 3, i32 7 }, %struct.aper_size_info_32 { i32 16, i32 4096, i32 2, i32 6 }, %struct.aper_size_info_32 { i32 8, i32 2048, i32 1, i32 4 }, %struct.aper_size_info_32 { i32 4, i32 1024, i32 0, i32 3 }], align 16, !dbg !5198
@.str.30 = private unnamed_addr constant [26 x i8] c"no ULi size found for %d\0A\00", align 1, !dbg !5196
@llvm.compiler.used = appending global [8 x ptr] [ptr @agp_amd64_cleanup, ptr @__UNIQUE_ID___addressable___initstub__kmod_amd64_agp__292_800_agp_amd64_mod_init6293, ptr @__exitcall_agp_amd64_cleanup, ptr @__UNIQUE_ID_author294, ptr @__param_agp_try_unsupported, ptr @__UNIQUE_ID_agp_try_unsupportedtype295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @agp_amd64_init() #0 section ".init.text" align 16 !dbg !5219 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5222
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5221, metadata !DIExpression()), !dbg !5223
  store i32 0, ptr %err, align 4, !dbg !5223
  %0 = load i32, ptr @agp_off, align 4, !dbg !5224
  %tobool = icmp ne i32 %0, 0, !dbg !5224
  br i1 %tobool, label %if.then, label %if.end, !dbg !5226

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5227

if.end:                                           ; preds = %entry
  %call = call i32 @__pci_register_driver(ptr noundef @agp_amd64_pci_driver, ptr noundef null, ptr noundef @.str) #11, !dbg !5228
  store i32 %call, ptr %err, align 4, !dbg !5229
  %1 = load i32, ptr %err, align 4, !dbg !5230
  %cmp = icmp slt i32 %1, 0, !dbg !5232
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5233

if.then1:                                         ; preds = %if.end
  %2 = load i32, ptr %err, align 4, !dbg !5234
  store i32 %2, ptr %retval, align 4, !dbg !5235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5235

if.end2:                                          ; preds = %if.end
  %3 = load i32, ptr @agp_bridges_found, align 4, !dbg !5236
  %cmp3 = icmp eq i32 %3, 0, !dbg !5238
  br i1 %cmp3, label %if.then4, label %if.end25, !dbg !5239

if.then4:                                         ; preds = %if.end2
  %4 = load i8, ptr @agp_try_unsupported, align 1, !dbg !5240, !range !5243, !noundef !562
  %tobool5 = trunc i8 %4 to i1, !dbg !5240
  br i1 %tobool5, label %if.end14, label %land.lhs.true, !dbg !5244

land.lhs.true:                                    ; preds = %if.then4
  %5 = load i32, ptr @agp_try_unsupported_boot, align 4, !dbg !5245
  %tobool6 = icmp ne i32 %5, 0, !dbg !5245
  br i1 %tobool6, label %if.end14, label %if.then7, !dbg !5246

if.then7:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !5247

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !5250

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5250

do.end:                                           ; preds = %do.cond
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #12, !dbg !5247
  store i32 %call8, ptr %tmp, align 4, !dbg !5250
  %6 = load i32, ptr %tmp, align 4, !dbg !5247
  br label %do.body9, !dbg !5252

do.body9:                                         ; preds = %do.end
  br label %do.cond10, !dbg !5254

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5254

do.end11:                                         ; preds = %do.cond10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #12, !dbg !5252
  store i32 %call13, ptr %tmp12, align 4, !dbg !5254
  %7 = load i32, ptr %tmp12, align 4, !dbg !5252
  call void @pci_unregister_driver(ptr noundef @agp_amd64_pci_driver) #11, !dbg !5256
  store i32 -19, ptr %retval, align 4, !dbg !5257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5257

if.end14:                                         ; preds = %land.lhs.true, %if.then4
  %call15 = call zeroext i16 @amd_nb_num() #11, !dbg !5258
  %tobool16 = icmp ne i16 %call15, 0, !dbg !5258
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5260

if.then17:                                        ; preds = %if.end14
  call void @pci_unregister_driver(ptr noundef @agp_amd64_pci_driver) #11, !dbg !5261
  store i32 -19, ptr %retval, align 4, !dbg !5263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5263

if.end18:                                         ; preds = %if.end14
  store ptr @agp_amd64_pci_promisc_table, ptr getelementptr inbounds (%struct.pci_driver, ptr @agp_amd64_pci_driver, i32 0, i32 2), align 8, !dbg !5264
  %call19 = call i32 @driver_attach(ptr noundef getelementptr inbounds (%struct.pci_driver, ptr @agp_amd64_pci_driver, i32 0, i32 14)) #11, !dbg !5265
  store i32 %call19, ptr %err, align 4, !dbg !5266
  %8 = load i32, ptr %err, align 4, !dbg !5267
  %cmp20 = icmp eq i32 %8, 0, !dbg !5269
  br i1 %cmp20, label %land.lhs.true21, label %if.end24, !dbg !5270

land.lhs.true21:                                  ; preds = %if.end18
  %9 = load i32, ptr @agp_bridges_found, align 4, !dbg !5271
  %cmp22 = icmp eq i32 %9, 0, !dbg !5272
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5273

if.then23:                                        ; preds = %land.lhs.true21
  call void @pci_unregister_driver(ptr noundef @agp_amd64_pci_driver) #11, !dbg !5274
  store i32 -19, ptr %err, align 4, !dbg !5276
  br label %if.end24, !dbg !5277

if.end24:                                         ; preds = %if.then23, %land.lhs.true21, %if.end18
  br label %if.end25, !dbg !5278

if.end25:                                         ; preds = %if.end24, %if.end2
  %10 = load i32, ptr %err, align 4, !dbg !5279
  store i32 %10, ptr %retval, align 4, !dbg !5280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5280

cleanup:                                          ; preds = %if.end25, %if.then17, %do.end11, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5281
  %11 = load i32, ptr %retval, align 4, !dbg !5281
  ret i32 %11, !dbg !5281
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5282 dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5285 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5289 dso_local void @pci_unregister_driver(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5292 dso_local zeroext i16 @amd_nb_num() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5296 dso_local i32 @driver_attach(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @agp_amd64_cleanup() #0 section ".exit.text" align 16 !dbg !5299 {
entry:
  %0 = load ptr, ptr @aperture_resource, align 8, !dbg !5300
  %tobool = icmp ne ptr %0, null, !dbg !5300
  br i1 %tobool, label %if.then, label %if.end, !dbg !5302

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @aperture_resource, align 8, !dbg !5303
  %call = call i32 @release_resource(ptr noundef %1) #11, !dbg !5304
  br label %if.end, !dbg !5304

if.end:                                           ; preds = %if.then, %entry
  call void @pci_unregister_driver(ptr noundef @agp_amd64_pci_driver) #11, !dbg !5305
  ret void, !dbg !5306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5307 dso_local i32 @release_resource(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_amd64_agp__292_800_agp_amd64_mod_init6() #0 section ".init.text" align 16 !dbg !5310 {
entry:
  %call = call i32 @agp_amd64_mod_init() #12, !dbg !5311
  ret i32 %call, !dbg !5311
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @agp_amd64_mod_init() #0 section ".init.text" align 16 !dbg !5312 {
entry:
  %call = call i32 @agp_amd64_init() #12, !dbg !5313
  ret i32 %call, !dbg !5314
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @agp_amd64_probe(ptr noundef %pdev, ptr noundef %ent) #5 align 16 !dbg !5315 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  %cap_ptr = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  %ret43 = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5317, metadata !DIExpression()), !dbg !5328
  store ptr %ent, ptr %ent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ent.addr, metadata !5318, metadata !DIExpression()), !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #10, !dbg !5330
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !5319, metadata !DIExpression()), !dbg !5331
  call void @llvm.lifetime.start.p0(i64 1, ptr %cap_ptr) #10, !dbg !5332
  call void @llvm.dbg.declare(metadata ptr %cap_ptr, metadata !5320, metadata !DIExpression()), !dbg !5333
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5321, metadata !DIExpression()), !dbg !5335
  %0 = load i32, ptr @agp_bridges_found, align 4, !dbg !5336
  %tobool = icmp ne i32 %0, 0, !dbg !5336
  br i1 %tobool, label %if.then, label %if.end, !dbg !5338

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !5339

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5340
  %call = call zeroext i8 @pci_find_capability(ptr noundef %1, i32 noundef 2) #11, !dbg !5341
  store i8 %call, ptr %cap_ptr, align 1, !dbg !5342
  %2 = load i8, ptr %cap_ptr, align 1, !dbg !5343
  %tobool1 = icmp ne i8 %2, 0, !dbg !5343
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5345

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !5346

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @agp_alloc_bridge() #11, !dbg !5347
  store ptr %call4, ptr %bridge, align 8, !dbg !5348
  %3 = load ptr, ptr %bridge, align 8, !dbg !5349
  %tobool5 = icmp ne ptr %3, null, !dbg !5349
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5351

if.then6:                                         ; preds = %if.end3
  store i32 -12, ptr %retval, align 4, !dbg !5352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !5352

if.end7:                                          ; preds = %if.end3
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5353
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 7, !dbg !5355
  %5 = load i16, ptr %vendor, align 4, !dbg !5355
  %conv = zext i16 %5 to i32, !dbg !5353
  %cmp = icmp eq i32 %conv, 4130, !dbg !5356
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5357

land.lhs.true:                                    ; preds = %if.end7
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5358
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8, !dbg !5359
  %7 = load i16, ptr %device, align 2, !dbg !5359
  %conv9 = zext i16 %7 to i32, !dbg !5358
  %cmp10 = icmp eq i32 %conv9, 29780, !dbg !5360
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !5361

if.then12:                                        ; preds = %land.lhs.true
  %8 = load ptr, ptr %pdev.addr, align 8, !dbg !5362
  %9 = load ptr, ptr %bridge, align 8, !dbg !5364
  call void @amd8151_init(ptr noundef %8, ptr noundef %9) #11, !dbg !5365
  br label %if.end17, !dbg !5366

if.else:                                          ; preds = %land.lhs.true, %if.end7
  br label %do.body, !dbg !5367

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !5370

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5370

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %pdev.addr, align 8, !dbg !5367
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 37, !dbg !5367
  %11 = load ptr, ptr %pdev.addr, align 8, !dbg !5367
  %vendor13 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 7, !dbg !5367
  %12 = load i16, ptr %vendor13, align 4, !dbg !5367
  %conv14 = zext i16 %12 to i32, !dbg !5367
  %13 = load ptr, ptr %pdev.addr, align 8, !dbg !5367
  %device15 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8, !dbg !5367
  %14 = load i16, ptr %device15, align 2, !dbg !5367
  %conv16 = zext i16 %14 to i32, !dbg !5367
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.4, i32 noundef %conv14, i32 noundef %conv16) #12, !dbg !5367
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then12
  %15 = load ptr, ptr %bridge, align 8, !dbg !5372
  %driver = getelementptr inbounds %struct.agp_bridge_data, ptr %15, i32 0, i32 1, !dbg !5373
  store ptr @amd_8151_driver, ptr %driver, align 8, !dbg !5374
  %16 = load ptr, ptr %pdev.addr, align 8, !dbg !5375
  %17 = load ptr, ptr %bridge, align 8, !dbg !5376
  %dev18 = getelementptr inbounds %struct.agp_bridge_data, ptr %17, i32 0, i32 6, !dbg !5377
  store ptr %16, ptr %dev18, align 8, !dbg !5378
  %18 = load i8, ptr %cap_ptr, align 1, !dbg !5379
  %conv19 = zext i8 %18 to i32, !dbg !5379
  %19 = load ptr, ptr %bridge, align 8, !dbg !5380
  %capndx = getelementptr inbounds %struct.agp_bridge_data, ptr %19, i32 0, i32 21, !dbg !5381
  store i32 %conv19, ptr %capndx, align 8, !dbg !5382
  %20 = load ptr, ptr %pdev.addr, align 8, !dbg !5383
  %21 = load ptr, ptr %bridge, align 8, !dbg !5384
  %capndx20 = getelementptr inbounds %struct.agp_bridge_data, ptr %21, i32 0, i32 21, !dbg !5385
  %22 = load i32, ptr %capndx20, align 8, !dbg !5385
  %add = add i32 %22, 4, !dbg !5386
  %23 = load ptr, ptr %bridge, align 8, !dbg !5387
  %mode = getelementptr inbounds %struct.agp_bridge_data, ptr %23, i32 0, i32 14, !dbg !5388
  %call21 = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef %add, ptr noundef %mode) #11, !dbg !5389
  %24 = load ptr, ptr %pdev.addr, align 8, !dbg !5390
  %25 = load i8, ptr %cap_ptr, align 1, !dbg !5392
  %conv22 = zext i8 %25 to i32, !dbg !5392
  %call23 = call i32 @cache_nbs(ptr noundef %24, i32 noundef %conv22) #11, !dbg !5393
  %cmp24 = icmp eq i32 %call23, -1, !dbg !5394
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5395

if.then26:                                        ; preds = %if.end17
  %26 = load ptr, ptr %bridge, align 8, !dbg !5396
  call void @agp_put_bridge(ptr noundef %26) #11, !dbg !5398
  store i32 -19, ptr %retval, align 4, !dbg !5399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !5399

if.end27:                                         ; preds = %if.end17
  %27 = load ptr, ptr %pdev.addr, align 8, !dbg !5400
  %vendor28 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 7, !dbg !5401
  %28 = load i16, ptr %vendor28, align 4, !dbg !5401
  %conv29 = zext i16 %28 to i32, !dbg !5400
  %cmp30 = icmp eq i32 %conv29, 4318, !dbg !5402
  br i1 %cmp30, label %if.then32, label %if.end37, !dbg !5403

if.then32:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5322, metadata !DIExpression()), !dbg !5405
  %29 = load ptr, ptr %pdev.addr, align 8, !dbg !5406
  %call33 = call i32 @nforce3_agp_init(ptr noundef %29) #11, !dbg !5407
  store i32 %call33, ptr %ret, align 4, !dbg !5405
  %30 = load i32, ptr %ret, align 4, !dbg !5408
  %tobool34 = icmp ne i32 %30, 0, !dbg !5408
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5410

if.then35:                                        ; preds = %if.then32
  %31 = load ptr, ptr %bridge, align 8, !dbg !5411
  call void @agp_put_bridge(ptr noundef %31) #11, !dbg !5413
  %32 = load i32, ptr %ret, align 4, !dbg !5414
  store i32 %32, ptr %retval, align 4, !dbg !5415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5415

if.end36:                                         ; preds = %if.then32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5416
  br label %cleanup, !dbg !5416

cleanup:                                          ; preds = %if.end36, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5416
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup57 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end37, !dbg !5417

if.end37:                                         ; preds = %cleanup.cont, %if.end27
  %33 = load ptr, ptr %pdev.addr, align 8, !dbg !5418
  %vendor38 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 7, !dbg !5419
  %34 = load i16, ptr %vendor38, align 4, !dbg !5419
  %conv39 = zext i16 %34 to i32, !dbg !5418
  %cmp40 = icmp eq i32 %conv39, 4281, !dbg !5420
  br i1 %cmp40, label %if.then42, label %if.end51, !dbg !5421

if.then42:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret43) #10, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %ret43, metadata !5325, metadata !DIExpression()), !dbg !5423
  %35 = load ptr, ptr %pdev.addr, align 8, !dbg !5424
  %call44 = call i32 @uli_agp_init(ptr noundef %35) #11, !dbg !5425
  store i32 %call44, ptr %ret43, align 4, !dbg !5423
  %36 = load i32, ptr %ret43, align 4, !dbg !5426
  %tobool45 = icmp ne i32 %36, 0, !dbg !5426
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5428

if.then46:                                        ; preds = %if.then42
  %37 = load ptr, ptr %bridge, align 8, !dbg !5429
  call void @agp_put_bridge(ptr noundef %37) #11, !dbg !5431
  %38 = load i32, ptr %ret43, align 4, !dbg !5432
  store i32 %38, ptr %retval, align 4, !dbg !5433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !5433

if.end47:                                         ; preds = %if.then42
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5434
  br label %cleanup48, !dbg !5434

cleanup48:                                        ; preds = %if.end47, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret43) #10, !dbg !5434
  %cleanup.dest49 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest49, label %cleanup57 [
    i32 0, label %cleanup.cont50
  ]

cleanup.cont50:                                   ; preds = %cleanup48
  br label %if.end51, !dbg !5435

if.end51:                                         ; preds = %cleanup.cont50, %if.end37
  %39 = load ptr, ptr %pdev.addr, align 8, !dbg !5436
  %40 = load ptr, ptr %bridge, align 8, !dbg !5437
  call void @pci_set_drvdata(ptr noundef %39, ptr noundef %40) #11, !dbg !5438
  %41 = load ptr, ptr %bridge, align 8, !dbg !5439
  %call52 = call i32 @agp_add_bridge(ptr noundef %41) #11, !dbg !5440
  store i32 %call52, ptr %err, align 4, !dbg !5441
  %42 = load i32, ptr %err, align 4, !dbg !5442
  %cmp53 = icmp slt i32 %42, 0, !dbg !5444
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !5445

if.then55:                                        ; preds = %if.end51
  %43 = load i32, ptr %err, align 4, !dbg !5446
  store i32 %43, ptr %retval, align 4, !dbg !5447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !5447

if.end56:                                         ; preds = %if.end51
  %44 = load i32, ptr @agp_bridges_found, align 4, !dbg !5448
  %inc = add i32 %44, 1, !dbg !5448
  store i32 %inc, ptr @agp_bridges_found, align 4, !dbg !5448
  store i32 0, ptr %retval, align 4, !dbg !5449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !5449

cleanup57:                                        ; preds = %if.end56, %if.then55, %cleanup48, %cleanup, %if.then26, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5450
  call void @llvm.lifetime.end.p0(i64 1, ptr %cap_ptr) #10, !dbg !5450
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #10, !dbg !5450
  %45 = load i32, ptr %retval, align 4, !dbg !5450
  ret i32 %45, !dbg !5450
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @agp_amd64_remove(ptr noundef %pdev) #5 align 16 !dbg !5451 {
entry:
  %pdev.addr = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5453, metadata !DIExpression()), !dbg !5455
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #10, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !5454, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5458
  %call = call ptr @pci_get_drvdata(ptr noundef %0) #11, !dbg !5459
  store ptr %call, ptr %bridge, align 8, !dbg !5457
  %1 = load ptr, ptr %bridge, align 8, !dbg !5460
  %gatt_table_real = getelementptr inbounds %struct.agp_bridge_data, ptr %1, i32 0, i32 8, !dbg !5460
  %2 = load ptr, ptr %gatt_table_real, align 8, !dbg !5460
  %call1 = call i64 @virt_to_phys(ptr noundef %2) #11, !dbg !5460
  %3 = load ptr, ptr %bridge, align 8, !dbg !5460
  %aperture_size_idx = getelementptr inbounds %struct.agp_bridge_data, ptr %3, i32 0, i32 20, !dbg !5460
  %4 = load i32, ptr %aperture_size_idx, align 4, !dbg !5460
  %idxprom = sext i32 %4 to i64, !dbg !5460
  %arrayidx = getelementptr [7 x %struct.aper_size_info_32], ptr @amd64_aperture_sizes, i64 0, i64 %idxprom, !dbg !5460
  %size = getelementptr inbounds %struct.aper_size_info_32, ptr %arrayidx, i32 0, i32 0, !dbg !5460
  %5 = load i32, ptr %size, align 16, !dbg !5460
  %conv = sext i32 %5 to i64, !dbg !5460
  call void @__release_region(ptr noundef @iomem_resource, i64 noundef %call1, i64 noundef %conv) #11, !dbg !5460
  %6 = load ptr, ptr %bridge, align 8, !dbg !5461
  call void @agp_remove_bridge(ptr noundef %6) #11, !dbg !5462
  %7 = load ptr, ptr %bridge, align 8, !dbg !5463
  call void @agp_put_bridge(ptr noundef %7) #11, !dbg !5464
  %8 = load i32, ptr @agp_bridges_found, align 4, !dbg !5465
  %dec = add i32 %8, -1, !dbg !5465
  store i32 %dec, ptr @agp_bridges_found, align 4, !dbg !5465
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #10, !dbg !5466
  ret void, !dbg !5466
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5467 dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5470 dso_local ptr @agp_alloc_bridge() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd8151_init(ptr noundef %pdev, ptr noundef %bridge) #5 align 16 !dbg !5473 {
entry:
  %pdev.addr = alloca ptr, align 8
  %bridge.addr = alloca ptr, align 8
  %revstring = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5477, metadata !DIExpression()), !dbg !5480
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5478, metadata !DIExpression()), !dbg !5481
  call void @llvm.lifetime.start.p0(i64 8, ptr %revstring) #10, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %revstring, metadata !5479, metadata !DIExpression()), !dbg !5483
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5484
  %revision = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12, !dbg !5485
  %1 = load i8, ptr %revision, align 8, !dbg !5485
  %conv = zext i8 %1 to i32, !dbg !5484
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 17, label %sw.bb2
    i32 18, label %sw.bb3
    i32 19, label %sw.bb4
    i32 20, label %sw.bb5
  ], !dbg !5486

sw.bb:                                            ; preds = %entry
  store ptr @.str.5, ptr %revstring, align 8, !dbg !5487
  br label %sw.epilog, !dbg !5489

sw.bb1:                                           ; preds = %entry
  store ptr @.str.6, ptr %revstring, align 8, !dbg !5490
  br label %sw.epilog, !dbg !5491

sw.bb2:                                           ; preds = %entry
  store ptr @.str.7, ptr %revstring, align 8, !dbg !5492
  br label %sw.epilog, !dbg !5493

sw.bb3:                                           ; preds = %entry
  store ptr @.str.8, ptr %revstring, align 8, !dbg !5494
  br label %sw.epilog, !dbg !5495

sw.bb4:                                           ; preds = %entry
  store ptr @.str.9, ptr %revstring, align 8, !dbg !5496
  br label %sw.epilog, !dbg !5497

sw.bb5:                                           ; preds = %entry
  store ptr @.str.10, ptr %revstring, align 8, !dbg !5498
  br label %sw.epilog, !dbg !5499

sw.default:                                       ; preds = %entry
  store ptr @.str.11, ptr %revstring, align 8, !dbg !5500
  br label %sw.epilog, !dbg !5501

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  br label %do.body, !dbg !5502

do.body:                                          ; preds = %sw.epilog
  br label %do.cond, !dbg !5504

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5504

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5502
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !5502
  %3 = load ptr, ptr %revstring, align 8, !dbg !5502
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.12, ptr noundef %3) #12, !dbg !5502
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5506
  %revision6 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 12, !dbg !5508
  %5 = load i8, ptr %revision6, align 8, !dbg !5508
  %conv7 = zext i8 %5 to i32, !dbg !5506
  %cmp = icmp slt i32 %conv7, 19, !dbg !5509
  br i1 %cmp, label %if.then, label %if.end, !dbg !5510

if.then:                                          ; preds = %do.end
  br label %do.body9, !dbg !5511

do.body9:                                         ; preds = %if.then
  br label %do.cond10, !dbg !5514

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5514

do.end11:                                         ; preds = %do.cond10
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5511
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 37, !dbg !5511
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef @.str.13) #12, !dbg !5511
  %7 = load ptr, ptr %bridge.addr, align 8, !dbg !5516
  %major_version = getelementptr inbounds %struct.agp_bridge_data, ptr %7, i32 0, i32 23, !dbg !5517
  store i8 3, ptr %major_version, align 8, !dbg !5518
  %8 = load ptr, ptr %bridge.addr, align 8, !dbg !5519
  %minor_version = getelementptr inbounds %struct.agp_bridge_data, ptr %8, i32 0, i32 24, !dbg !5520
  store i8 0, ptr %minor_version, align 1, !dbg !5521
  br label %if.end, !dbg !5522

if.end:                                           ; preds = %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %revstring) #10, !dbg !5523
  ret void, !dbg !5523
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5524 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5528 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cache_nbs(ptr noundef %pdev, i32 noundef %cap_ptr) #5 align 16 !dbg !5533 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %cap_ptr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %dev = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5537, metadata !DIExpression()), !dbg !5544
  store i32 %cap_ptr, ptr %cap_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap_ptr.addr, metadata !5538, metadata !DIExpression()), !dbg !5545
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5539, metadata !DIExpression()), !dbg !5547
  %call = call zeroext i16 @amd_nb_num() #11, !dbg !5548
  %tobool = icmp ne i16 %call, 0, !dbg !5548
  br i1 %tobool, label %if.end, label %if.then, !dbg !5550

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !5551

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @amd_nb_has_feature(i32 noundef 1) #11, !dbg !5552
  br i1 %call1, label %if.end3, label %if.then2, !dbg !5554

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !5555

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5556
  store i32 0, ptr %i, align 4, !dbg !5557
  br label %for.cond, !dbg !5558

for.cond:                                         ; preds = %for.inc, %if.end3
  %0 = load i32, ptr %i, align 4, !dbg !5559
  %call4 = call zeroext i16 @amd_nb_num() #11, !dbg !5560
  %conv = zext i16 %call4 to i32, !dbg !5560
  %cmp = icmp slt i32 %0, %conv, !dbg !5561
  br i1 %cmp, label %for.body, label %for.end, !dbg !5562

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5540, metadata !DIExpression()), !dbg !5564
  %1 = load i32, ptr %i, align 4, !dbg !5565
  %call6 = call ptr @node_to_amd_nb(i32 noundef %1) #11, !dbg !5566
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call6, i32 0, i32 1, !dbg !5567
  %2 = load ptr, ptr %misc, align 8, !dbg !5567
  store ptr %2, ptr %dev, align 8, !dbg !5564
  %3 = load ptr, ptr %dev, align 8, !dbg !5568
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5570
  %5 = load i32, ptr %cap_ptr.addr, align 4, !dbg !5571
  %conv7 = trunc i32 %5 to i16, !dbg !5571
  %call8 = call i32 @fix_northbridge(ptr noundef %3, ptr noundef %4, i16 noundef zeroext %conv7) #11, !dbg !5572
  %cmp9 = icmp slt i32 %call8, 0, !dbg !5573
  br i1 %cmp9, label %if.then11, label %if.end17, !dbg !5574

if.then11:                                        ; preds = %for.body
  br label %do.body, !dbg !5575

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !5578

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5578

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !5575
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 37, !dbg !5575
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef @.str.15) #12, !dbg !5575
  br label %do.body13, !dbg !5580

do.body13:                                        ; preds = %do.end
  br label %do.cond14, !dbg !5582

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5582

do.end15:                                         ; preds = %do.cond14
  %7 = load ptr, ptr %dev, align 8, !dbg !5580
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 37, !dbg !5580
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef @.str.16) #12, !dbg !5580
  store i32 -1, ptr %retval, align 4, !dbg !5584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5584

if.end17:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5585
  br label %cleanup, !dbg !5585

cleanup:                                          ; preds = %if.end17, %do.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5585
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5586

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i32, ptr %i, align 4, !dbg !5587
  %inc = add i32 %8, 1, !dbg !5587
  store i32 %inc, ptr %i, align 4, !dbg !5587
  br label %for.cond, !dbg !5588, !llvm.loop !5589

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !5593

cleanup18:                                        ; preds = %for.end, %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5594
  %9 = load i32, ptr %retval, align 4, !dbg !5594
  ret i32 %9, !dbg !5594
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5595 dso_local void @agp_put_bridge(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nforce3_agp_init(ptr noundef %pdev) #5 align 16 !dbg !5598 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %apbase = alloca i32, align 4
  %apbar = alloca i32, align 4
  %aplimit = alloca i32, align 4
  %dev1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5600, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5601, metadata !DIExpression()), !dbg !5612
  call void @llvm.lifetime.start.p0(i64 4, ptr %apbase) #10, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %apbase, metadata !5602, metadata !DIExpression()), !dbg !5613
  call void @llvm.lifetime.start.p0(i64 4, ptr %apbar) #10, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %apbar, metadata !5603, metadata !DIExpression()), !dbg !5614
  call void @llvm.lifetime.start.p0(i64 4, ptr %aplimit) #10, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %aplimit, metadata !5604, metadata !DIExpression()), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev1) #10, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %dev1, metadata !5605, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5606, metadata !DIExpression()), !dbg !5619
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5607, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #10, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5608, metadata !DIExpression()), !dbg !5622
  %call = call i32 @amd64_fetch_size() #11, !dbg !5623
  store i32 %call, ptr %size, align 4, !dbg !5622
  br label %do.body, !dbg !5624

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5626

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5626

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5624
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5624
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.24) #12, !dbg !5624
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5628
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !5629
  %2 = load ptr, ptr %bus, align 8, !dbg !5629
  %call1 = call ptr @pci_get_slot(ptr noundef %2, i32 noundef 88) #11, !dbg !5630
  store ptr %call1, ptr %dev1, align 8, !dbg !5631
  %3 = load ptr, ptr %dev1, align 8, !dbg !5632
  %cmp = icmp eq ptr %3, null, !dbg !5634
  br i1 %cmp, label %if.then, label %if.end, !dbg !5635

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !5636

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !5639

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5639

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5636
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 37, !dbg !5636
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef @.str.25) #12, !dbg !5636
  store i32 -19, ptr %retval, align 4, !dbg !5641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5641

if.end:                                           ; preds = %do.end
  store i32 0, ptr %i, align 4, !dbg !5642
  br label %for.cond, !dbg !5644

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !5645
  %conv = sext i32 %5 to i64, !dbg !5645
  %cmp6 = icmp ult i64 %conv, 5, !dbg !5647
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5648

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !5649
  %idxprom = sext i32 %6 to i64, !dbg !5651
  %arrayidx = getelementptr [5 x %struct.aper_size_info_32], ptr @nforce3_sizes, i64 0, i64 %idxprom, !dbg !5651
  %size8 = getelementptr inbounds %struct.aper_size_info_32, ptr %arrayidx, i32 0, i32 0, !dbg !5652
  %7 = load i32, ptr %size8, align 16, !dbg !5652
  %8 = load i32, ptr %size, align 4, !dbg !5653
  %cmp9 = icmp eq i32 %7, %8, !dbg !5654
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5655

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !5656

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !5653

for.inc:                                          ; preds = %if.end12
  %9 = load i32, ptr %i, align 4, !dbg !5657
  %inc = add i32 %9, 1, !dbg !5657
  store i32 %inc, ptr %i, align 4, !dbg !5657
  br label %for.cond, !dbg !5658, !llvm.loop !5659

for.end:                                          ; preds = %if.then11, %for.cond
  %10 = load i32, ptr %i, align 4, !dbg !5661
  %conv13 = sext i32 %10 to i64, !dbg !5661
  %cmp14 = icmp eq i64 %conv13, 5, !dbg !5663
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !5664

if.then16:                                        ; preds = %for.end
  br label %do.body17, !dbg !5665

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !5668

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5668

do.end19:                                         ; preds = %do.cond18
  %11 = load ptr, ptr %pdev.addr, align 8, !dbg !5665
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !5665
  %12 = load i32, ptr %size, align 4, !dbg !5665
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef @.str.26, i32 noundef %12) #12, !dbg !5665
  store i32 -19, ptr %ret, align 4, !dbg !5670
  br label %put, !dbg !5671

if.end21:                                         ; preds = %for.end
  %13 = load ptr, ptr %dev1, align 8, !dbg !5672
  %call22 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef 168, ptr noundef %tmp) #11, !dbg !5673
  %14 = load i32, ptr %tmp, align 4, !dbg !5674
  %and = and i32 %14, -16, !dbg !5674
  store i32 %and, ptr %tmp, align 4, !dbg !5674
  %15 = load i32, ptr %i, align 4, !dbg !5675
  %idxprom23 = sext i32 %15 to i64, !dbg !5676
  %arrayidx24 = getelementptr [5 x %struct.aper_size_info_32], ptr @nforce3_sizes, i64 0, i64 %idxprom23, !dbg !5676
  %size_value = getelementptr inbounds %struct.aper_size_info_32, ptr %arrayidx24, i32 0, i32 3, !dbg !5677
  %16 = load i32, ptr %size_value, align 4, !dbg !5677
  %17 = load i32, ptr %tmp, align 4, !dbg !5678
  %or = or i32 %17, %16, !dbg !5678
  store i32 %or, ptr %tmp, align 4, !dbg !5678
  %18 = load ptr, ptr %dev1, align 8, !dbg !5679
  %19 = load i32, ptr %tmp, align 4, !dbg !5680
  %call25 = call i32 @pci_write_config_dword(ptr noundef %18, i32 noundef 168, i32 noundef %19) #11, !dbg !5681
  %call26 = call ptr @node_to_amd_nb(i32 noundef 0) #11, !dbg !5682
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call26, i32 0, i32 1, !dbg !5683
  %20 = load ptr, ptr %misc, align 8, !dbg !5683
  %call27 = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef 148, ptr noundef %apbase) #11, !dbg !5684
  %21 = load i32, ptr %apbase, align 4, !dbg !5685
  %and28 = and i32 %21, 32767, !dbg !5687
  %shr = lshr i32 %and28, 7, !dbg !5688
  %tobool = icmp ne i32 %shr, 0, !dbg !5688
  br i1 %tobool, label %if.then29, label %if.end34, !dbg !5689

if.then29:                                        ; preds = %if.end21
  br label %do.body30, !dbg !5690

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !5693

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !5693

do.end32:                                         ; preds = %do.cond31
  %22 = load ptr, ptr %pdev.addr, align 8, !dbg !5690
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 37, !dbg !5690
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef @.str.27) #12, !dbg !5690
  store i32 -19, ptr %ret, align 4, !dbg !5695
  br label %put, !dbg !5696

if.end34:                                         ; preds = %if.end21
  %23 = load i32, ptr %apbase, align 4, !dbg !5697
  %and35 = and i32 %23, 32767, !dbg !5698
  %shl = shl i32 %and35, 25, !dbg !5699
  store i32 %shl, ptr %apbase, align 4, !dbg !5700
  %24 = load ptr, ptr %pdev.addr, align 8, !dbg !5701
  %call36 = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 16, ptr noundef %apbar) #11, !dbg !5702
  %25 = load i32, ptr %apbar, align 4, !dbg !5703
  %conv37 = zext i32 %25 to i64, !dbg !5703
  %and38 = and i64 %conv37, 15, !dbg !5703
  %conv39 = trunc i64 %and38 to i32, !dbg !5703
  store i32 %conv39, ptr %apbar, align 4, !dbg !5703
  %26 = load i32, ptr %apbase, align 4, !dbg !5704
  %27 = load i32, ptr %apbar, align 4, !dbg !5705
  %or40 = or i32 %27, %26, !dbg !5705
  store i32 %or40, ptr %apbar, align 4, !dbg !5705
  %28 = load ptr, ptr %pdev.addr, align 8, !dbg !5706
  %29 = load i32, ptr %apbar, align 4, !dbg !5707
  %call41 = call i32 @pci_write_config_dword(ptr noundef %28, i32 noundef 16, i32 noundef %29) #11, !dbg !5708
  %30 = load i32, ptr %apbase, align 4, !dbg !5709
  %31 = load i32, ptr %size, align 4, !dbg !5710
  %mul = mul i32 %31, 1024, !dbg !5711
  %mul42 = mul i32 %mul, 1024, !dbg !5712
  %add = add i32 %30, %mul42, !dbg !5713
  %sub = sub i32 %add, 1, !dbg !5714
  store i32 %sub, ptr %aplimit, align 4, !dbg !5715
  %32 = load ptr, ptr %dev1, align 8, !dbg !5716
  %33 = load i32, ptr %apbase, align 4, !dbg !5717
  %call43 = call i32 @pci_write_config_dword(ptr noundef %32, i32 noundef 80, i32 noundef %33) #11, !dbg !5718
  %34 = load ptr, ptr %dev1, align 8, !dbg !5719
  %35 = load i32, ptr %aplimit, align 4, !dbg !5720
  %call44 = call i32 @pci_write_config_dword(ptr noundef %34, i32 noundef 84, i32 noundef %35) #11, !dbg !5721
  %36 = load ptr, ptr %dev1, align 8, !dbg !5722
  %37 = load i32, ptr %apbase, align 4, !dbg !5723
  %call45 = call i32 @pci_write_config_dword(ptr noundef %36, i32 noundef 216, i32 noundef %37) #11, !dbg !5724
  %38 = load ptr, ptr %dev1, align 8, !dbg !5725
  %39 = load i32, ptr %aplimit, align 4, !dbg !5726
  %call46 = call i32 @pci_write_config_dword(ptr noundef %38, i32 noundef 220, i32 noundef %39) #11, !dbg !5727
  store i32 0, ptr %ret, align 4, !dbg !5728
  br label %put, !dbg !5729

put:                                              ; preds = %if.end34, %do.end32, %do.end19
  call void @llvm.dbg.label(metadata !5609), !dbg !5730
  %40 = load ptr, ptr %dev1, align 8, !dbg !5731
  call void @pci_dev_put(ptr noundef %40) #11, !dbg !5732
  %41 = load i32, ptr %ret, align 4, !dbg !5733
  store i32 %41, ptr %retval, align 4, !dbg !5734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5734

cleanup:                                          ; preds = %put, %do.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #10, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev1) #10, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 4, ptr %aplimit) #10, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 4, ptr %apbar) #10, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 4, ptr %apbase) #10, !dbg !5735
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10, !dbg !5735
  %42 = load i32, ptr %retval, align 4, !dbg !5735
  ret i32 %42, !dbg !5735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @uli_agp_init(ptr noundef %pdev) #5 align 16 !dbg !5736 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %httfea = alloca i32, align 4
  %baseaddr = alloca i32, align 4
  %enuscr = alloca i32, align 4
  %dev1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5738, metadata !DIExpression()), !dbg !5747
  call void @llvm.lifetime.start.p0(i64 4, ptr %httfea) #10, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %httfea, metadata !5739, metadata !DIExpression()), !dbg !5749
  call void @llvm.lifetime.start.p0(i64 4, ptr %baseaddr) #10, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %baseaddr, metadata !5740, metadata !DIExpression()), !dbg !5750
  call void @llvm.lifetime.start.p0(i64 4, ptr %enuscr) #10, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %enuscr, metadata !5741, metadata !DIExpression()), !dbg !5751
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev1) #10, !dbg !5752
  call void @llvm.dbg.declare(metadata ptr %dev1, metadata !5742, metadata !DIExpression()), !dbg !5753
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5743, metadata !DIExpression()), !dbg !5755
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5744, metadata !DIExpression()), !dbg !5756
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #10, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5745, metadata !DIExpression()), !dbg !5758
  %call = call i32 @amd64_fetch_size() #11, !dbg !5759
  store i32 %call, ptr %size, align 4, !dbg !5758
  br label %do.body, !dbg !5760

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5762

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5762

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5760
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5760
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.28) #12, !dbg !5760
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5764
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !5765
  %2 = load ptr, ptr %bus, align 8, !dbg !5765
  %call1 = call ptr @pci_get_slot(ptr noundef %2, i32 noundef 0) #11, !dbg !5766
  store ptr %call1, ptr %dev1, align 8, !dbg !5767
  %3 = load ptr, ptr %dev1, align 8, !dbg !5768
  %cmp = icmp eq ptr %3, null, !dbg !5770
  br i1 %cmp, label %if.then, label %if.end, !dbg !5771

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !5772

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !5775

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5775

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5772
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 37, !dbg !5772
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef @.str.29) #12, !dbg !5772
  store i32 -19, ptr %retval, align 4, !dbg !5777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5777

if.end:                                           ; preds = %do.end
  store i32 0, ptr %i, align 4, !dbg !5778
  br label %for.cond, !dbg !5780

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !5781
  %conv = sext i32 %5 to i64, !dbg !5781
  %cmp6 = icmp ult i64 %conv, 7, !dbg !5783
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5784

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !5785
  %idxprom = sext i32 %6 to i64, !dbg !5787
  %arrayidx = getelementptr [7 x %struct.aper_size_info_32], ptr @uli_sizes, i64 0, i64 %idxprom, !dbg !5787
  %size8 = getelementptr inbounds %struct.aper_size_info_32, ptr %arrayidx, i32 0, i32 0, !dbg !5788
  %7 = load i32, ptr %size8, align 16, !dbg !5788
  %8 = load i32, ptr %size, align 4, !dbg !5789
  %cmp9 = icmp eq i32 %7, %8, !dbg !5790
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5791

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !5792

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !5789

for.inc:                                          ; preds = %if.end12
  %9 = load i32, ptr %i, align 4, !dbg !5793
  %inc = add i32 %9, 1, !dbg !5793
  store i32 %inc, ptr %i, align 4, !dbg !5793
  br label %for.cond, !dbg !5794, !llvm.loop !5795

for.end:                                          ; preds = %if.then11, %for.cond
  %10 = load i32, ptr %i, align 4, !dbg !5797
  %conv13 = sext i32 %10 to i64, !dbg !5797
  %cmp14 = icmp eq i64 %conv13, 7, !dbg !5799
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !5800

if.then16:                                        ; preds = %for.end
  br label %do.body17, !dbg !5801

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !5804

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5804

do.end19:                                         ; preds = %do.cond18
  %11 = load ptr, ptr %pdev.addr, align 8, !dbg !5801
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !5801
  %12 = load i32, ptr %size, align 4, !dbg !5801
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef @.str.30, i32 noundef %12) #12, !dbg !5801
  store i32 -19, ptr %ret, align 4, !dbg !5806
  br label %put, !dbg !5807

if.end21:                                         ; preds = %for.end
  %call22 = call ptr @node_to_amd_nb(i32 noundef 0) #11, !dbg !5808
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call22, i32 0, i32 1, !dbg !5809
  %13 = load ptr, ptr %misc, align 8, !dbg !5809
  %call23 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef 148, ptr noundef %httfea) #11, !dbg !5810
  %14 = load i32, ptr %httfea, align 4, !dbg !5811
  %and = and i32 %14, 32767, !dbg !5813
  %shr = lshr i32 %and, 7, !dbg !5814
  %tobool = icmp ne i32 %shr, 0, !dbg !5814
  br i1 %tobool, label %if.then24, label %if.end25, !dbg !5815

if.then24:                                        ; preds = %if.end21
  store i32 -19, ptr %ret, align 4, !dbg !5816
  br label %put, !dbg !5818

if.end25:                                         ; preds = %if.end21
  %15 = load i32, ptr %httfea, align 4, !dbg !5819
  %and26 = and i32 %15, 32767, !dbg !5820
  %shl = shl i32 %and26, 25, !dbg !5821
  store i32 %shl, ptr %httfea, align 4, !dbg !5822
  %16 = load ptr, ptr %pdev.addr, align 8, !dbg !5823
  %call27 = call i32 @pci_read_config_dword(ptr noundef %16, i32 noundef 16, ptr noundef %baseaddr) #11, !dbg !5824
  %17 = load i32, ptr %baseaddr, align 4, !dbg !5825
  %conv28 = zext i32 %17 to i64, !dbg !5825
  %and29 = and i64 %conv28, 15, !dbg !5825
  %conv30 = trunc i64 %and29 to i32, !dbg !5825
  store i32 %conv30, ptr %baseaddr, align 4, !dbg !5825
  %18 = load i32, ptr %httfea, align 4, !dbg !5826
  %19 = load i32, ptr %baseaddr, align 4, !dbg !5827
  %or = or i32 %19, %18, !dbg !5827
  store i32 %or, ptr %baseaddr, align 4, !dbg !5827
  %20 = load ptr, ptr %pdev.addr, align 8, !dbg !5828
  %21 = load i32, ptr %baseaddr, align 4, !dbg !5829
  %call31 = call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef 16, i32 noundef %21) #11, !dbg !5830
  %22 = load i32, ptr %httfea, align 4, !dbg !5831
  %23 = load i32, ptr %size, align 4, !dbg !5832
  %mul = mul i32 %23, 1024, !dbg !5833
  %mul32 = mul i32 %mul, 1024, !dbg !5834
  %add = add i32 %22, %mul32, !dbg !5835
  %sub = sub i32 %add, 1, !dbg !5836
  store i32 %sub, ptr %enuscr, align 4, !dbg !5837
  %24 = load ptr, ptr %dev1, align 8, !dbg !5838
  %25 = load i32, ptr %httfea, align 4, !dbg !5839
  %call33 = call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef 80, i32 noundef %25) #11, !dbg !5840
  %26 = load ptr, ptr %dev1, align 8, !dbg !5841
  %27 = load i32, ptr %enuscr, align 4, !dbg !5842
  %call34 = call i32 @pci_write_config_dword(ptr noundef %26, i32 noundef 84, i32 noundef %27) #11, !dbg !5843
  store i32 0, ptr %ret, align 4, !dbg !5844
  br label %put, !dbg !5845

put:                                              ; preds = %if.end25, %if.then24, %do.end19
  call void @llvm.dbg.label(metadata !5746), !dbg !5846
  %28 = load ptr, ptr %dev1, align 8, !dbg !5847
  call void @pci_dev_put(ptr noundef %28) #11, !dbg !5848
  %29 = load i32, ptr %ret, align 4, !dbg !5849
  store i32 %29, ptr %retval, align 4, !dbg !5850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5850

cleanup:                                          ; preds = %put, %do.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #10, !dbg !5851
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5851
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5851
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev1) #10, !dbg !5851
  call void @llvm.lifetime.end.p0(i64 4, ptr %enuscr) #10, !dbg !5851
  call void @llvm.lifetime.end.p0(i64 4, ptr %baseaddr) #10, !dbg !5851
  call void @llvm.lifetime.end.p0(i64 4, ptr %httfea) #10, !dbg !5851
  %30 = load i32, ptr %retval, align 4, !dbg !5851
  ret i32 %30, !dbg !5851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_set_drvdata(ptr noundef %pdev, ptr noundef %data) #6 align 16 !dbg !5852 {
entry:
  %pdev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5856, metadata !DIExpression()), !dbg !5858
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5857, metadata !DIExpression()), !dbg !5859
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5860
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5861
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5862
  call void @dev_set_drvdata(ptr noundef %dev, ptr noundef %1) #11, !dbg !5863
  ret void, !dbg !5864
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5865 dso_local i32 @agp_add_bridge(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd64_fetch_size() #5 align 16 !dbg !5866 {
entry:
  %retval = alloca i32, align 4
  %dev = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %values = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5868, metadata !DIExpression()), !dbg !5873
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5869, metadata !DIExpression()), !dbg !5875
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #10, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !5870, metadata !DIExpression()), !dbg !5877
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #10, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %values, metadata !5871, metadata !DIExpression()), !dbg !5879
  %call = call ptr @node_to_amd_nb(i32 noundef 0) #11, !dbg !5880
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call, i32 0, i32 1, !dbg !5881
  %0 = load ptr, ptr %misc, align 8, !dbg !5881
  store ptr %0, ptr %dev, align 8, !dbg !5882
  %1 = load ptr, ptr %dev, align 8, !dbg !5883
  %cmp = icmp eq ptr %1, null, !dbg !5885
  br i1 %cmp, label %if.then, label %if.end, !dbg !5886

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5887

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev, align 8, !dbg !5888
  %call1 = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 144, ptr noundef %temp) #11, !dbg !5889
  %3 = load i32, ptr %temp, align 4, !dbg !5890
  %and = and i32 %3, 14, !dbg !5891
  store i32 %and, ptr %temp, align 4, !dbg !5892
  store ptr @amd64_aperture_sizes, ptr %values, align 8, !dbg !5893
  store i32 0, ptr %i, align 4, !dbg !5894
  br label %for.cond, !dbg !5896

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !5897
  %5 = load ptr, ptr @agp_bridge, align 8, !dbg !5899
  %driver = getelementptr inbounds %struct.agp_bridge_data, ptr %5, i32 0, i32 1, !dbg !5900
  %6 = load ptr, ptr %driver, align 8, !dbg !5900
  %num_aperture_sizes = getelementptr inbounds %struct.agp_bridge_driver, ptr %6, i32 0, i32 2, !dbg !5901
  %7 = load i32, ptr %num_aperture_sizes, align 8, !dbg !5901
  %cmp2 = icmp slt i32 %4, %7, !dbg !5902
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5903

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %temp, align 4, !dbg !5904
  %9 = load ptr, ptr %values, align 8, !dbg !5907
  %10 = load i32, ptr %i, align 4, !dbg !5908
  %idxprom = sext i32 %10 to i64, !dbg !5907
  %arrayidx = getelementptr %struct.aper_size_info_32, ptr %9, i64 %idxprom, !dbg !5907
  %size_value = getelementptr inbounds %struct.aper_size_info_32, ptr %arrayidx, i32 0, i32 3, !dbg !5909
  %11 = load i32, ptr %size_value, align 4, !dbg !5909
  %cmp3 = icmp eq i32 %8, %11, !dbg !5910
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !5911

if.then4:                                         ; preds = %for.body
  %12 = load ptr, ptr %values, align 8, !dbg !5912
  %13 = load i32, ptr %i, align 4, !dbg !5914
  %idx.ext = sext i32 %13 to i64, !dbg !5915
  %add.ptr = getelementptr %struct.aper_size_info_32, ptr %12, i64 %idx.ext, !dbg !5915
  %14 = load ptr, ptr @agp_bridge, align 8, !dbg !5916
  %current_size = getelementptr inbounds %struct.agp_bridge_data, ptr %14, i32 0, i32 4, !dbg !5917
  store ptr %add.ptr, ptr %current_size, align 8, !dbg !5918
  %15 = load ptr, ptr @agp_bridge, align 8, !dbg !5919
  %previous_size = getelementptr inbounds %struct.agp_bridge_data, ptr %15, i32 0, i32 3, !dbg !5920
  store ptr %add.ptr, ptr %previous_size, align 8, !dbg !5921
  %16 = load i32, ptr %i, align 4, !dbg !5922
  %17 = load ptr, ptr @agp_bridge, align 8, !dbg !5923
  %aperture_size_idx = getelementptr inbounds %struct.agp_bridge_data, ptr %17, i32 0, i32 20, !dbg !5924
  store i32 %16, ptr %aperture_size_idx, align 4, !dbg !5925
  %18 = load ptr, ptr %values, align 8, !dbg !5926
  %19 = load i32, ptr %i, align 4, !dbg !5927
  %idxprom5 = sext i32 %19 to i64, !dbg !5926
  %arrayidx6 = getelementptr %struct.aper_size_info_32, ptr %18, i64 %idxprom5, !dbg !5926
  %size = getelementptr inbounds %struct.aper_size_info_32, ptr %arrayidx6, i32 0, i32 0, !dbg !5928
  %20 = load i32, ptr %size, align 4, !dbg !5928
  store i32 %20, ptr %retval, align 4, !dbg !5929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5929

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !5930

for.inc:                                          ; preds = %if.end7
  %21 = load i32, ptr %i, align 4, !dbg !5931
  %inc = add i32 %21, 1, !dbg !5931
  store i32 %inc, ptr %i, align 4, !dbg !5931
  br label %for.cond, !dbg !5932, !llvm.loop !5933

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5935

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #10, !dbg !5936
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #10, !dbg !5936
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5936
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5936
  %22 = load i32, ptr %retval, align 4, !dbg !5936
  ret i32 %22, !dbg !5936
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_8151_configure() #5 align 16 !dbg !5937 {
entry:
  %retval = alloca i32, align 4
  %gatt_bus = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %gatt_bus) #10, !dbg !5941
  call void @llvm.dbg.declare(metadata ptr %gatt_bus, metadata !5939, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr @agp_bridge, align 8, !dbg !5943
  %gatt_table_real = getelementptr inbounds %struct.agp_bridge_data, ptr %0, i32 0, i32 8, !dbg !5944
  %1 = load ptr, ptr %gatt_table_real, align 8, !dbg !5944
  %call = call i64 @virt_to_phys(ptr noundef %1) #11, !dbg !5945
  store i64 %call, ptr %gatt_bus, align 8, !dbg !5942
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5940, metadata !DIExpression()), !dbg !5947
  %call1 = call zeroext i1 @amd_nb_has_feature(i32 noundef 1) #11, !dbg !5948
  br i1 %call1, label %if.end, label %if.then, !dbg !5950

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5951

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5952
  br label %for.cond, !dbg !5954

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !5955
  %call2 = call zeroext i16 @amd_nb_num() #11, !dbg !5957
  %conv = zext i16 %call2 to i32, !dbg !5957
  %cmp = icmp slt i32 %2, %conv, !dbg !5958
  br i1 %cmp, label %for.body, label %for.end, !dbg !5959

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !5960
  %call4 = call ptr @node_to_amd_nb(i32 noundef %3) #11, !dbg !5962
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call4, i32 0, i32 1, !dbg !5963
  %4 = load ptr, ptr %misc, align 8, !dbg !5963
  %5 = load i64, ptr %gatt_bus, align 8, !dbg !5964
  %call5 = call i64 @amd64_configure(ptr noundef %4, i64 noundef %5) #11, !dbg !5965
  %6 = load ptr, ptr @agp_bridge, align 8, !dbg !5966
  %gart_bus_addr = getelementptr inbounds %struct.agp_bridge_data, ptr %6, i32 0, i32 12, !dbg !5967
  store i64 %call5, ptr %gart_bus_addr, align 8, !dbg !5968
  br label %for.inc, !dbg !5969

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !5970
  %inc = add i32 %7, 1, !dbg !5970
  store i32 %inc, ptr %i, align 4, !dbg !5970
  br label %for.cond, !dbg !5971, !llvm.loop !5972

for.end:                                          ; preds = %for.cond
  call void @amd_flush_garts() #11, !dbg !5974
  store i32 0, ptr %retval, align 4, !dbg !5975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5975

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5976
  call void @llvm.lifetime.end.p0(i64 8, ptr %gatt_bus) #10, !dbg !5976
  %8 = load i32, ptr %retval, align 4, !dbg !5976
  ret i32 %8, !dbg !5976
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @agp_generic_enable(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd64_cleanup() #5 align 16 !dbg !5977 {
entry:
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %dev = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5979, metadata !DIExpression()), !dbg !5986
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5980, metadata !DIExpression()), !dbg !5988
  %call = call zeroext i1 @amd_nb_has_feature(i32 noundef 1) #11, !dbg !5989
  br i1 %call, label %if.end, label %if.then, !dbg !5991

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5992

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5993
  br label %for.cond, !dbg !5994

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !dbg !5995
  %call1 = call zeroext i16 @amd_nb_num() #11, !dbg !5996
  %conv = zext i16 %call1 to i32, !dbg !5996
  %cmp = icmp slt i32 %0, %conv, !dbg !5997
  br i1 %cmp, label %for.body, label %for.end, !dbg !5998

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5999
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5981, metadata !DIExpression()), !dbg !6000
  %1 = load i32, ptr %i, align 4, !dbg !6001
  %call3 = call ptr @node_to_amd_nb(i32 noundef %1) #11, !dbg !6002
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call3, i32 0, i32 1, !dbg !6003
  %2 = load ptr, ptr %misc, align 8, !dbg !6003
  store ptr %2, ptr %dev, align 8, !dbg !6000
  %3 = load ptr, ptr %dev, align 8, !dbg !6004
  %call4 = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef 144, ptr noundef %tmp) #11, !dbg !6005
  %4 = load i32, ptr %tmp, align 4, !dbg !6006
  %and = and i32 %4, -2, !dbg !6006
  store i32 %and, ptr %tmp, align 4, !dbg !6006
  %5 = load ptr, ptr %dev, align 8, !dbg !6007
  %6 = load i32, ptr %tmp, align 4, !dbg !6008
  %call5 = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 144, i32 noundef %6) #11, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !6010
  br label %for.inc, !dbg !6011

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !6012
  %inc = add i32 %7, 1, !dbg !6012
  store i32 %inc, ptr %i, align 4, !dbg !6012
  br label %for.cond, !dbg !6013, !llvm.loop !6014

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6016
  br label %cleanup, !dbg !6016

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6016
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10, !dbg !6016
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6016

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd64_tlbflush(ptr noundef %temp) #5 align 16 !dbg !6017 {
entry:
  %temp.addr = alloca ptr, align 8
  store ptr %temp, ptr %temp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !6019, metadata !DIExpression()), !dbg !6020
  call void @amd_flush_garts() #11, !dbg !6021
  ret void, !dbg !6022
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @agp_generic_mask_memory(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6023 dso_local void @global_cache_flush() #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @agp_generic_create_gatt_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @agp_generic_free_gatt_table(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd64_insert_memory(ptr noundef %mem, i64 noundef %pg_start, i32 noundef %type) #5 align 16 !dbg !6024 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca ptr, align 8
  %pg_start.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_entries = alloca i32, align 4
  %tmp = alloca i64, align 8
  %mask_type = alloca i32, align 4
  %bridge = alloca ptr, align 8
  %pte = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !6026, metadata !DIExpression()), !dbg !6036
  store i64 %pg_start, ptr %pg_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pg_start.addr, metadata !6027, metadata !DIExpression()), !dbg !6037
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6028, metadata !DIExpression()), !dbg !6038
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6029, metadata !DIExpression()), !dbg !6040
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %j, metadata !6030, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_entries) #10, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %num_entries, metadata !6031, metadata !DIExpression()), !dbg !6042
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10, !dbg !6043
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6032, metadata !DIExpression()), !dbg !6044
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_type) #10, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %mask_type, metadata !6033, metadata !DIExpression()), !dbg !6046
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #10, !dbg !6047
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !6034, metadata !DIExpression()), !dbg !6048
  %0 = load ptr, ptr %mem.addr, align 8, !dbg !6049
  %bridge1 = getelementptr inbounds %struct.agp_memory, ptr %0, i32 0, i32 2, !dbg !6050
  %1 = load ptr, ptr %bridge1, align 8, !dbg !6050
  store ptr %1, ptr %bridge, align 8, !dbg !6048
  call void @llvm.lifetime.start.p0(i64 4, ptr %pte) #10, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6035, metadata !DIExpression()), !dbg !6052
  %call = call i32 @agp_num_entries() #11, !dbg !6053
  store i32 %call, ptr %num_entries, align 4, !dbg !6054
  %2 = load i32, ptr %type.addr, align 4, !dbg !6055
  %3 = load ptr, ptr %mem.addr, align 8, !dbg !6057
  %type2 = getelementptr inbounds %struct.agp_memory, ptr %3, i32 0, i32 8, !dbg !6058
  %4 = load i32, ptr %type2, align 8, !dbg !6058
  %cmp = icmp ne i32 %2, %4, !dbg !6059
  br i1 %cmp, label %if.then, label %if.end, !dbg !6060

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6061

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %bridge, align 8, !dbg !6062
  %driver = getelementptr inbounds %struct.agp_bridge_data, ptr %5, i32 0, i32 1, !dbg !6063
  %6 = load ptr, ptr %driver, align 8, !dbg !6063
  %agp_type_to_mask_type = getelementptr inbounds %struct.agp_bridge_driver, ptr %6, i32 0, i32 24, !dbg !6064
  %7 = load ptr, ptr %agp_type_to_mask_type, align 8, !dbg !6064
  %8 = load ptr, ptr %bridge, align 8, !dbg !6065
  %9 = load i32, ptr %type.addr, align 4, !dbg !6066
  %call3 = call i32 %7(ptr noundef %8, i32 noundef %9) #11, !dbg !6062
  store i32 %call3, ptr %mask_type, align 4, !dbg !6067
  %10 = load i32, ptr %mask_type, align 4, !dbg !6068
  %cmp4 = icmp ne i32 %10, 0, !dbg !6070
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6071

if.then5:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6072

if.end6:                                          ; preds = %if.end
  %11 = load i64, ptr %pg_start.addr, align 8, !dbg !6073
  %12 = load ptr, ptr %mem.addr, align 8, !dbg !6075
  %page_count = getelementptr inbounds %struct.agp_memory, ptr %12, i32 0, i32 4, !dbg !6076
  %13 = load i64, ptr %page_count, align 8, !dbg !6076
  %add = add i64 %11, %13, !dbg !6077
  %14 = load i32, ptr %num_entries, align 4, !dbg !6078
  %conv = sext i32 %14 to i64, !dbg !6078
  %cmp7 = icmp ugt i64 %add, %conv, !dbg !6079
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6080

if.then9:                                         ; preds = %if.end6
  store i32 -22, ptr %retval, align 4, !dbg !6081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6081

if.end10:                                         ; preds = %if.end6
  %15 = load i64, ptr %pg_start.addr, align 8, !dbg !6082
  %conv11 = trunc i64 %15 to i32, !dbg !6082
  store i32 %conv11, ptr %j, align 4, !dbg !6083
  br label %while.cond, !dbg !6084

while.cond:                                       ; preds = %if.end26, %if.end10
  %16 = load i32, ptr %j, align 4, !dbg !6085
  %conv12 = sext i32 %16 to i64, !dbg !6085
  %17 = load i64, ptr %pg_start.addr, align 8, !dbg !6086
  %18 = load ptr, ptr %mem.addr, align 8, !dbg !6087
  %page_count13 = getelementptr inbounds %struct.agp_memory, ptr %18, i32 0, i32 4, !dbg !6088
  %19 = load i64, ptr %page_count13, align 8, !dbg !6088
  %add14 = add i64 %17, %19, !dbg !6089
  %cmp15 = icmp ult i64 %conv12, %add14, !dbg !6090
  br i1 %cmp15, label %while.body, label %while.end, !dbg !6084

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr @agp_bridge, align 8, !dbg !6091
  %gatt_table = getelementptr inbounds %struct.agp_bridge_data, ptr %20, i32 0, i32 7, !dbg !6091
  %21 = load ptr, ptr %gatt_table, align 8, !dbg !6091
  %22 = load i32, ptr %j, align 4, !dbg !6091
  %idx.ext = sext i32 %22 to i64, !dbg !6091
  %add.ptr = getelementptr i32, ptr %21, i64 %idx.ext, !dbg !6091
  %call17 = call i32 @readl(ptr noundef %add.ptr) #11, !dbg !6091
  %tobool = icmp ne i32 %call17, 0, !dbg !6091
  br i1 %tobool, label %lor.lhs.false, label %if.end26, !dbg !6091

lor.lhs.false:                                    ; preds = %while.body
  %23 = load ptr, ptr @agp_bridge, align 8, !dbg !6091
  %gatt_table18 = getelementptr inbounds %struct.agp_bridge_data, ptr %23, i32 0, i32 7, !dbg !6091
  %24 = load ptr, ptr %gatt_table18, align 8, !dbg !6091
  %25 = load i32, ptr %j, align 4, !dbg !6091
  %idx.ext19 = sext i32 %25 to i64, !dbg !6091
  %add.ptr20 = getelementptr i32, ptr %24, i64 %idx.ext19, !dbg !6091
  %call21 = call i32 @readl(ptr noundef %add.ptr20) #11, !dbg !6091
  %conv22 = zext i32 %call21 to i64, !dbg !6091
  %26 = load ptr, ptr @agp_bridge, align 8, !dbg !6091
  %scratch_page = getelementptr inbounds %struct.agp_bridge_data, ptr %26, i32 0, i32 9, !dbg !6091
  %27 = load i64, ptr %scratch_page, align 8, !dbg !6091
  %cmp23 = icmp eq i64 %conv22, %27, !dbg !6091
  br i1 %cmp23, label %if.end26, label %if.then25, !dbg !6094

if.then25:                                        ; preds = %lor.lhs.false
  store i32 -16, ptr %retval, align 4, !dbg !6095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6095

if.end26:                                         ; preds = %lor.lhs.false, %while.body
  %28 = load i32, ptr %j, align 4, !dbg !6096
  %inc = add i32 %28, 1, !dbg !6096
  store i32 %inc, ptr %j, align 4, !dbg !6096
  br label %while.cond, !dbg !6084, !llvm.loop !6097

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %mem.addr, align 8, !dbg !6099
  %is_flushed = getelementptr inbounds %struct.agp_memory, ptr %29, i32 0, i32 11, !dbg !6101
  %30 = load i8, ptr %is_flushed, align 1, !dbg !6101, !range !5243, !noundef !562
  %tobool27 = trunc i8 %30 to i1, !dbg !6101
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !6102

if.then28:                                        ; preds = %while.end
  call void @global_cache_flush() #11, !dbg !6103
  %31 = load ptr, ptr %mem.addr, align 8, !dbg !6105
  %is_flushed29 = getelementptr inbounds %struct.agp_memory, ptr %31, i32 0, i32 11, !dbg !6106
  store i8 1, ptr %is_flushed29, align 1, !dbg !6107
  br label %if.end30, !dbg !6108

if.end30:                                         ; preds = %if.then28, %while.end
  store i32 0, ptr %i, align 4, !dbg !6109
  %32 = load i64, ptr %pg_start.addr, align 8, !dbg !6111
  %conv31 = trunc i64 %32 to i32, !dbg !6111
  store i32 %conv31, ptr %j, align 4, !dbg !6112
  br label %for.cond, !dbg !6113

for.cond:                                         ; preds = %for.inc, %if.end30
  %33 = load i32, ptr %i, align 4, !dbg !6114
  %conv32 = sext i32 %33 to i64, !dbg !6114
  %34 = load ptr, ptr %mem.addr, align 8, !dbg !6116
  %page_count33 = getelementptr inbounds %struct.agp_memory, ptr %34, i32 0, i32 4, !dbg !6117
  %35 = load i64, ptr %page_count33, align 8, !dbg !6117
  %cmp34 = icmp ult i64 %conv32, %35, !dbg !6118
  br i1 %cmp34, label %for.body, label %for.end, !dbg !6119

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr @agp_bridge, align 8, !dbg !6120
  %driver36 = getelementptr inbounds %struct.agp_bridge_data, ptr %36, i32 0, i32 1, !dbg !6122
  %37 = load ptr, ptr %driver36, align 8, !dbg !6122
  %mask_memory = getelementptr inbounds %struct.agp_bridge_driver, ptr %37, i32 0, i32 12, !dbg !6123
  %38 = load ptr, ptr %mask_memory, align 8, !dbg !6123
  %39 = load ptr, ptr @agp_bridge, align 8, !dbg !6124
  %40 = load ptr, ptr %mem.addr, align 8, !dbg !6125
  %pages = getelementptr inbounds %struct.agp_memory, ptr %40, i32 0, i32 3, !dbg !6125
  %41 = load ptr, ptr %pages, align 8, !dbg !6125
  %42 = load i32, ptr %i, align 4, !dbg !6125
  %idxprom = sext i32 %42 to i64, !dbg !6125
  %arrayidx = getelementptr ptr, ptr %41, i64 %idxprom, !dbg !6125
  %43 = load ptr, ptr %arrayidx, align 8, !dbg !6125
  %44 = load i64, ptr @vmemmap_base, align 8, !dbg !6125
  %45 = inttoptr i64 %44 to ptr, !dbg !6125
  %sub.ptr.lhs.cast = ptrtoint ptr %43 to i64, !dbg !6125
  %sub.ptr.rhs.cast = ptrtoint ptr %45 to i64, !dbg !6125
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6125
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6125
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6125
  %46 = load i32, ptr %mask_type, align 4, !dbg !6126
  %call37 = call i64 %38(ptr noundef %39, i64 noundef %shl, i32 noundef %46) #11, !dbg !6120
  store i64 %call37, ptr %tmp, align 8, !dbg !6127
  br label %do.body, !dbg !6128

do.body:                                          ; preds = %for.body
  %47 = load i64, ptr %tmp, align 8, !dbg !6129
  %and = and i64 %47, -1099511623684, !dbg !6129
  %tobool38 = icmp ne i64 %and, 0, !dbg !6129
  %lnot = xor i1 %tobool38, true, !dbg !6129
  %lnot39 = xor i1 %lnot, true, !dbg !6129
  %lnot.ext = zext i1 %lnot39 to i32, !dbg !6129
  %conv40 = sext i32 %lnot.ext to i64, !dbg !6129
  %expval = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !6129
  %tobool41 = icmp ne i64 %expval, 0, !dbg !6129
  br i1 %tobool41, label %if.then42, label %if.end50, !dbg !6132

if.then42:                                        ; preds = %do.body
  br label %do.body43, !dbg !6129

do.body43:                                        ; preds = %if.then42
  br label %do.body44, !dbg !6133

do.body44:                                        ; preds = %do.body43
  br label %do.cond, !dbg !6135

do.cond:                                          ; preds = %do.body44
  br label %do.end, !dbg !6135

do.end:                                           ; preds = %do.cond
  br label %do.body45, !dbg !6133

do.body45:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, i32 86, i32 0, i64 12) #10, !dbg !6137, !srcloc !6139
  br label %do.cond46, !dbg !6137

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6137

do.end47:                                         ; preds = %do.cond46
  unreachable, !dbg !6133

do.cond48:                                        ; No predecessors!
  br label %do.end49, !dbg !6133

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !6133

if.end50:                                         ; preds = %do.end49, %do.body
  br label %do.cond51, !dbg !6132

do.cond51:                                        ; preds = %if.end50
  br label %do.end52, !dbg !6132

do.end52:                                         ; preds = %do.cond51
  %48 = load i64, ptr %tmp, align 8, !dbg !6140
  %and53 = and i64 %48, 1095216660480, !dbg !6141
  %shr = lshr i64 %and53, 28, !dbg !6142
  %conv54 = trunc i64 %shr to i32, !dbg !6143
  store i32 %conv54, ptr %pte, align 4, !dbg !6144
  %49 = load i64, ptr %tmp, align 8, !dbg !6145
  %and55 = and i64 %49, 4294963200, !dbg !6146
  %50 = load i32, ptr %pte, align 4, !dbg !6147
  %conv56 = zext i32 %50 to i64, !dbg !6147
  %or = or i64 %conv56, %and55, !dbg !6147
  %conv57 = trunc i64 %or to i32, !dbg !6147
  store i32 %conv57, ptr %pte, align 4, !dbg !6147
  %51 = load i32, ptr %pte, align 4, !dbg !6148
  %or58 = or i32 %51, 3, !dbg !6148
  store i32 %or58, ptr %pte, align 4, !dbg !6148
  %52 = load i32, ptr %pte, align 4, !dbg !6149
  %53 = load ptr, ptr @agp_bridge, align 8, !dbg !6150
  %gatt_table59 = getelementptr inbounds %struct.agp_bridge_data, ptr %53, i32 0, i32 7, !dbg !6151
  %54 = load ptr, ptr %gatt_table59, align 8, !dbg !6151
  %55 = load i32, ptr %j, align 4, !dbg !6152
  %idx.ext60 = sext i32 %55 to i64, !dbg !6153
  %add.ptr61 = getelementptr i32, ptr %54, i64 %idx.ext60, !dbg !6153
  call void @writel(i32 noundef %52, ptr noundef %add.ptr61) #11, !dbg !6154
  %56 = load ptr, ptr @agp_bridge, align 8, !dbg !6155
  %gatt_table62 = getelementptr inbounds %struct.agp_bridge_data, ptr %56, i32 0, i32 7, !dbg !6156
  %57 = load ptr, ptr %gatt_table62, align 8, !dbg !6156
  %58 = load i32, ptr %j, align 4, !dbg !6157
  %idx.ext63 = sext i32 %58 to i64, !dbg !6158
  %add.ptr64 = getelementptr i32, ptr %57, i64 %idx.ext63, !dbg !6158
  %call65 = call i32 @readl(ptr noundef %add.ptr64) #11, !dbg !6159
  br label %for.inc, !dbg !6160

for.inc:                                          ; preds = %do.end52
  %59 = load i32, ptr %i, align 4, !dbg !6161
  %inc66 = add i32 %59, 1, !dbg !6161
  store i32 %inc66, ptr %i, align 4, !dbg !6161
  %60 = load i32, ptr %j, align 4, !dbg !6162
  %inc67 = add i32 %60, 1, !dbg !6162
  store i32 %inc67, ptr %j, align 4, !dbg !6162
  br label %for.cond, !dbg !6163, !llvm.loop !6164

for.end:                                          ; preds = %for.cond
  %61 = load ptr, ptr %mem.addr, align 8, !dbg !6166
  call void @amd64_tlbflush(ptr noundef %61) #11, !dbg !6167
  store i32 0, ptr %retval, align 4, !dbg !6168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6168

cleanup:                                          ; preds = %for.end, %if.then25, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pte) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_type) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_entries) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6169
  %62 = load i32, ptr %retval, align 4, !dbg !6169
  ret i32 %62, !dbg !6169
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @agp_generic_remove_memory(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @agp_generic_alloc_by_type(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @agp_generic_free_by_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @agp_generic_alloc_page(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @agp_generic_alloc_pages(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @agp_generic_destroy_page(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @agp_generic_destroy_pages(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @agp_generic_type_to_mask_type(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6170 dso_local ptr @node_to_amd_nb(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_to_phys(ptr noundef %address) #6 align 16 !dbg !6205 {
entry:
  %address.addr = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  %0 = load ptr, ptr %address.addr, align 8, !dbg !6214
  %1 = ptrtoint ptr %0 to i64, !dbg !6214
  %call = call i64 @__phys_addr_nodebug(i64 noundef %1) #11, !dbg !6214
  ret i64 %call, !dbg !6215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6216 dso_local zeroext i1 @amd_nb_has_feature(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @amd64_configure(ptr noundef %hammer, i64 noundef %gatt_table) #5 align 16 !dbg !6219 {
entry:
  %hammer.addr = alloca ptr, align 8
  %gatt_table.addr = alloca i64, align 8
  %aperturebase = alloca i64, align 8
  %tmp = alloca i32, align 4
  %aper_base = alloca i64, align 8
  store ptr %hammer, ptr %hammer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hammer.addr, metadata !6223, metadata !DIExpression()), !dbg !6228
  store i64 %gatt_table, ptr %gatt_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gatt_table.addr, metadata !6224, metadata !DIExpression()), !dbg !6229
  call void @llvm.lifetime.start.p0(i64 8, ptr %aperturebase) #10, !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %aperturebase, metadata !6225, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6226, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 8, ptr %aper_base) #10, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %aper_base, metadata !6227, metadata !DIExpression()), !dbg !6235
  %0 = load ptr, ptr %hammer.addr, align 8, !dbg !6236
  %call = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 148, ptr noundef %tmp) #11, !dbg !6237
  %1 = load i32, ptr %tmp, align 4, !dbg !6238
  %conv = zext i32 %1 to i64, !dbg !6239
  %shl = shl i64 %conv, 25, !dbg !6240
  store i64 %shl, ptr %aperturebase, align 8, !dbg !6241
  %2 = load i64, ptr %aperturebase, align 8, !dbg !6242
  %and = and i64 %2, -16, !dbg !6243
  store i64 %and, ptr %aper_base, align 8, !dbg !6244
  %3 = load ptr, ptr %hammer.addr, align 8, !dbg !6245
  %4 = load i64, ptr %gatt_table.addr, align 8, !dbg !6246
  call void @enable_gart_translation(ptr noundef %3, i64 noundef %4) #11, !dbg !6247
  %5 = load i64, ptr %aper_base, align 8, !dbg !6248
  call void @llvm.lifetime.end.p0(i64 8, ptr %aper_base) #10, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %aperturebase) #10, !dbg !6249
  ret i64 %5, !dbg !6250
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6251 dso_local void @amd_flush_garts() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #7 align 16 !dbg !6252 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6257, metadata !DIExpression()), !dbg !6259
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #10, !dbg !6260
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6258, metadata !DIExpression()), !dbg !6261
  %0 = load i64, ptr %x.addr, align 8, !dbg !6262
  %sub = sub i64 %0, -2147483648, !dbg !6263
  store i64 %sub, ptr %y, align 8, !dbg !6261
  %1 = load i64, ptr %y, align 8, !dbg !6264
  %2 = load i64, ptr %x.addr, align 8, !dbg !6265
  %3 = load i64, ptr %y, align 8, !dbg !6266
  %cmp = icmp ugt i64 %2, %3, !dbg !6267
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6268

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6269
  br label %cond.end, !dbg !6268

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6270
  %sub1 = sub i64 -2147483648, %5, !dbg !6271
  br label %cond.end, !dbg !6268

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6268
  %add = add i64 %1, %cond, !dbg !6272
  store i64 %add, ptr %x.addr, align 8, !dbg !6273
  %6 = load i64, ptr %x.addr, align 8, !dbg !6274
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #10, !dbg !6275
  ret i64 %6, !dbg !6276
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @enable_gart_translation(ptr noundef %dev, i64 noundef %addr) #6 align 16 !dbg !6277 {
entry:
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  %ctl = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6281, metadata !DIExpression()), !dbg !6285
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6282, metadata !DIExpression()), !dbg !6286
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6283, metadata !DIExpression()), !dbg !6288
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctl) #10, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %ctl, metadata !6284, metadata !DIExpression()), !dbg !6289
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6290
  %shr = lshr i64 %0, 12, !dbg !6290
  store i64 %shr, ptr %addr.addr, align 8, !dbg !6290
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6291
  %conv = trunc i64 %1 to i32, !dbg !6292
  %shl = shl i32 %conv, 4, !dbg !6293
  store i32 %shl, ptr %tmp, align 4, !dbg !6294
  %2 = load i32, ptr %tmp, align 4, !dbg !6295
  %and = and i32 %2, -16, !dbg !6295
  store i32 %and, ptr %tmp, align 4, !dbg !6295
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6296
  %4 = load i32, ptr %tmp, align 4, !dbg !6297
  %call = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 152, i32 noundef %4) #11, !dbg !6298
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6299
  %call1 = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 144, ptr noundef %ctl) #11, !dbg !6300
  %6 = load i32, ptr %ctl, align 4, !dbg !6301
  %or = or i32 %6, 65, !dbg !6301
  store i32 %or, ptr %ctl, align 4, !dbg !6301
  %7 = load i32, ptr %ctl, align 4, !dbg !6302
  %and2 = and i32 %7, -49, !dbg !6302
  store i32 %and2, ptr %ctl, align 4, !dbg !6302
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6303
  %9 = load i32, ptr %ctl, align 4, !dbg !6304
  %call3 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef 144, i32 noundef %9) #11, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctl) #10, !dbg !6306
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10, !dbg !6306
  ret void, !dbg !6306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6307 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6310 dso_local i32 @agp_num_entries() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #6 align 16 !dbg !6311 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6317, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6318, metadata !DIExpression()), !dbg !6319
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6319
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #10, !dbg !6319, !srcloc !6320
  store i32 %1, ptr %ret, align 4, !dbg !6319
  %2 = load i32, ptr %ret, align 4, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6319
  ret i32 %2, !dbg !6319
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #6 align 16 !dbg !6321 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6325, metadata !DIExpression()), !dbg !6327
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load i32, ptr %val.addr, align 4, !dbg !6327
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6327
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #10, !dbg !6327, !srcloc !6328
  ret void, !dbg !6327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fix_northbridge(ptr noundef %nb, ptr noundef %agp, i16 noundef zeroext %cap) #5 align 16 !dbg !6329 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca ptr, align 8
  %agp.addr = alloca ptr, align 8
  %cap.addr = alloca i16, align 2
  %aper = alloca i64, align 8
  %nb_aper = alloca i64, align 8
  %order = alloca i32, align 4
  %nb_order = alloca i32, align 4
  %nb_base = alloca i32, align 4
  %apsize = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !6333, metadata !DIExpression()), !dbg !6342
  store ptr %agp, ptr %agp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %agp.addr, metadata !6334, metadata !DIExpression()), !dbg !6343
  store i16 %cap, ptr %cap.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6335, metadata !DIExpression()), !dbg !6344
  call void @llvm.lifetime.start.p0(i64 8, ptr %aper) #10, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %aper, metadata !6336, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 8, ptr %nb_aper) #10, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %nb_aper, metadata !6337, metadata !DIExpression()), !dbg !6347
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #10, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %order, metadata !6338, metadata !DIExpression()), !dbg !6349
  store i32 0, ptr %order, align 4, !dbg !6349
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb_order) #10, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %nb_order, metadata !6339, metadata !DIExpression()), !dbg !6351
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb_base) #10, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %nb_base, metadata !6340, metadata !DIExpression()), !dbg !6352
  call void @llvm.lifetime.start.p0(i64 2, ptr %apsize) #10, !dbg !6353
  call void @llvm.dbg.declare(metadata ptr %apsize, metadata !6341, metadata !DIExpression()), !dbg !6354
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !6355
  %call = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 144, ptr noundef %nb_order) #11, !dbg !6356
  %1 = load i32, ptr %nb_order, align 4, !dbg !6357
  %shr = lshr i32 %1, 1, !dbg !6358
  %and = and i32 %shr, 7, !dbg !6359
  store i32 %and, ptr %nb_order, align 4, !dbg !6360
  %2 = load ptr, ptr %nb.addr, align 8, !dbg !6361
  %call1 = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 148, ptr noundef %nb_base) #11, !dbg !6362
  %3 = load i32, ptr %nb_base, align 4, !dbg !6363
  %conv = zext i32 %3 to i64, !dbg !6364
  %shl = shl i64 %conv, 25, !dbg !6365
  store i64 %shl, ptr %nb_aper, align 8, !dbg !6366
  %4 = load ptr, ptr %agp.addr, align 8, !dbg !6367
  %5 = load i16, ptr %cap.addr, align 2, !dbg !6368
  %conv2 = zext i16 %5 to i32, !dbg !6368
  %add = add i32 %conv2, 20, !dbg !6369
  %call3 = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef %add, ptr noundef %apsize) #11, !dbg !6370
  %6 = load i16, ptr %apsize, align 2, !dbg !6371
  %conv4 = zext i16 %6 to i32, !dbg !6371
  %cmp = icmp eq i32 %conv4, 65535, !dbg !6373
  br i1 %cmp, label %if.then, label %if.end9, !dbg !6374

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %nb_aper, align 8, !dbg !6375
  %8 = load i32, ptr %nb_order, align 4, !dbg !6378
  %shl6 = shl i32 33554432, %8, !dbg !6379
  %call7 = call i32 @agp_aperture_valid(i64 noundef %7, i32 noundef %shl6) #11, !dbg !6380
  %tobool = icmp ne i32 %call7, 0, !dbg !6380
  br i1 %tobool, label %if.then8, label %if.end, !dbg !6381

if.then8:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !6382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6382

if.end:                                           ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

if.end9:                                          ; preds = %entry
  %9 = load i16, ptr %apsize, align 2, !dbg !6384
  %conv10 = zext i16 %9 to i32, !dbg !6384
  %and11 = and i32 %conv10, 4095, !dbg !6384
  %conv12 = trunc i32 %and11 to i16, !dbg !6384
  store i16 %conv12, ptr %apsize, align 2, !dbg !6384
  %10 = load i16, ptr %apsize, align 2, !dbg !6385
  %conv13 = zext i16 %10 to i32, !dbg !6385
  %and14 = and i32 %conv13, 255, !dbg !6387
  %tobool15 = icmp ne i32 %and14, 0, !dbg !6387
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !6388

if.then16:                                        ; preds = %if.end9
  %11 = load i16, ptr %apsize, align 2, !dbg !6389
  %conv17 = zext i16 %11 to i32, !dbg !6389
  %or = or i32 %conv17, 3840, !dbg !6389
  %conv18 = trunc i32 %or to i16, !dbg !6389
  store i16 %conv18, ptr %apsize, align 2, !dbg !6389
  br label %if.end19, !dbg !6390

if.end19:                                         ; preds = %if.then16, %if.end9
  %12 = load i16, ptr %apsize, align 2, !dbg !6391
  %13 = call i1 @llvm.is.constant.i16(i16 %12), !dbg !6391
  br i1 %13, label %cond.true, label %cond.false, !dbg !6391

cond.true:                                        ; preds = %if.end19
  %14 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv20 = zext i16 %14 to i64, !dbg !6391
  %and21 = and i64 %conv20, 1, !dbg !6391
  %tobool22 = icmp ne i64 %and21, 0, !dbg !6391
  %lnot = xor i1 %tobool22, true, !dbg !6391
  %lnot23 = xor i1 %lnot, true, !dbg !6391
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !6391
  %15 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv24 = zext i16 %15 to i64, !dbg !6391
  %and25 = and i64 %conv24, 2, !dbg !6391
  %tobool26 = icmp ne i64 %and25, 0, !dbg !6391
  %lnot27 = xor i1 %tobool26, true, !dbg !6391
  %lnot29 = xor i1 %lnot27, true, !dbg !6391
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6391
  %add31 = add i32 %lnot.ext, %lnot.ext30, !dbg !6391
  %16 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv32 = zext i16 %16 to i64, !dbg !6391
  %and33 = and i64 %conv32, 4, !dbg !6391
  %tobool34 = icmp ne i64 %and33, 0, !dbg !6391
  %lnot35 = xor i1 %tobool34, true, !dbg !6391
  %lnot37 = xor i1 %lnot35, true, !dbg !6391
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !6391
  %add39 = add i32 %add31, %lnot.ext38, !dbg !6391
  %17 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv40 = zext i16 %17 to i64, !dbg !6391
  %and41 = and i64 %conv40, 8, !dbg !6391
  %tobool42 = icmp ne i64 %and41, 0, !dbg !6391
  %lnot43 = xor i1 %tobool42, true, !dbg !6391
  %lnot45 = xor i1 %lnot43, true, !dbg !6391
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !6391
  %add47 = add i32 %add39, %lnot.ext46, !dbg !6391
  %18 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv48 = zext i16 %18 to i64, !dbg !6391
  %and49 = and i64 %conv48, 16, !dbg !6391
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6391
  %lnot51 = xor i1 %tobool50, true, !dbg !6391
  %lnot53 = xor i1 %lnot51, true, !dbg !6391
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !6391
  %add55 = add i32 %add47, %lnot.ext54, !dbg !6391
  %19 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv56 = zext i16 %19 to i64, !dbg !6391
  %and57 = and i64 %conv56, 32, !dbg !6391
  %tobool58 = icmp ne i64 %and57, 0, !dbg !6391
  %lnot59 = xor i1 %tobool58, true, !dbg !6391
  %lnot61 = xor i1 %lnot59, true, !dbg !6391
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6391
  %add63 = add i32 %add55, %lnot.ext62, !dbg !6391
  %20 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv64 = zext i16 %20 to i64, !dbg !6391
  %and65 = and i64 %conv64, 64, !dbg !6391
  %tobool66 = icmp ne i64 %and65, 0, !dbg !6391
  %lnot67 = xor i1 %tobool66, true, !dbg !6391
  %lnot69 = xor i1 %lnot67, true, !dbg !6391
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !6391
  %add71 = add i32 %add63, %lnot.ext70, !dbg !6391
  %21 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv72 = zext i16 %21 to i64, !dbg !6391
  %and73 = and i64 %conv72, 128, !dbg !6391
  %tobool74 = icmp ne i64 %and73, 0, !dbg !6391
  %lnot75 = xor i1 %tobool74, true, !dbg !6391
  %lnot77 = xor i1 %lnot75, true, !dbg !6391
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !6391
  %add79 = add i32 %add71, %lnot.ext78, !dbg !6391
  %22 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv80 = zext i16 %22 to i32, !dbg !6391
  %shr81 = ashr i32 %conv80, 8, !dbg !6391
  %conv82 = sext i32 %shr81 to i64, !dbg !6391
  %and83 = and i64 %conv82, 1, !dbg !6391
  %tobool84 = icmp ne i64 %and83, 0, !dbg !6391
  %lnot85 = xor i1 %tobool84, true, !dbg !6391
  %lnot87 = xor i1 %lnot85, true, !dbg !6391
  %lnot.ext88 = zext i1 %lnot87 to i32, !dbg !6391
  %23 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv89 = zext i16 %23 to i32, !dbg !6391
  %shr90 = ashr i32 %conv89, 8, !dbg !6391
  %conv91 = sext i32 %shr90 to i64, !dbg !6391
  %and92 = and i64 %conv91, 2, !dbg !6391
  %tobool93 = icmp ne i64 %and92, 0, !dbg !6391
  %lnot94 = xor i1 %tobool93, true, !dbg !6391
  %lnot96 = xor i1 %lnot94, true, !dbg !6391
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !6391
  %add98 = add i32 %lnot.ext88, %lnot.ext97, !dbg !6391
  %24 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv99 = zext i16 %24 to i32, !dbg !6391
  %shr100 = ashr i32 %conv99, 8, !dbg !6391
  %conv101 = sext i32 %shr100 to i64, !dbg !6391
  %and102 = and i64 %conv101, 4, !dbg !6391
  %tobool103 = icmp ne i64 %and102, 0, !dbg !6391
  %lnot104 = xor i1 %tobool103, true, !dbg !6391
  %lnot106 = xor i1 %lnot104, true, !dbg !6391
  %lnot.ext107 = zext i1 %lnot106 to i32, !dbg !6391
  %add108 = add i32 %add98, %lnot.ext107, !dbg !6391
  %25 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv109 = zext i16 %25 to i32, !dbg !6391
  %shr110 = ashr i32 %conv109, 8, !dbg !6391
  %conv111 = sext i32 %shr110 to i64, !dbg !6391
  %and112 = and i64 %conv111, 8, !dbg !6391
  %tobool113 = icmp ne i64 %and112, 0, !dbg !6391
  %lnot114 = xor i1 %tobool113, true, !dbg !6391
  %lnot116 = xor i1 %lnot114, true, !dbg !6391
  %lnot.ext117 = zext i1 %lnot116 to i32, !dbg !6391
  %add118 = add i32 %add108, %lnot.ext117, !dbg !6391
  %26 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv119 = zext i16 %26 to i32, !dbg !6391
  %shr120 = ashr i32 %conv119, 8, !dbg !6391
  %conv121 = sext i32 %shr120 to i64, !dbg !6391
  %and122 = and i64 %conv121, 16, !dbg !6391
  %tobool123 = icmp ne i64 %and122, 0, !dbg !6391
  %lnot124 = xor i1 %tobool123, true, !dbg !6391
  %lnot126 = xor i1 %lnot124, true, !dbg !6391
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !6391
  %add128 = add i32 %add118, %lnot.ext127, !dbg !6391
  %27 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv129 = zext i16 %27 to i32, !dbg !6391
  %shr130 = ashr i32 %conv129, 8, !dbg !6391
  %conv131 = sext i32 %shr130 to i64, !dbg !6391
  %and132 = and i64 %conv131, 32, !dbg !6391
  %tobool133 = icmp ne i64 %and132, 0, !dbg !6391
  %lnot134 = xor i1 %tobool133, true, !dbg !6391
  %lnot136 = xor i1 %lnot134, true, !dbg !6391
  %lnot.ext137 = zext i1 %lnot136 to i32, !dbg !6391
  %add138 = add i32 %add128, %lnot.ext137, !dbg !6391
  %28 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv139 = zext i16 %28 to i32, !dbg !6391
  %shr140 = ashr i32 %conv139, 8, !dbg !6391
  %conv141 = sext i32 %shr140 to i64, !dbg !6391
  %and142 = and i64 %conv141, 64, !dbg !6391
  %tobool143 = icmp ne i64 %and142, 0, !dbg !6391
  %lnot144 = xor i1 %tobool143, true, !dbg !6391
  %lnot146 = xor i1 %lnot144, true, !dbg !6391
  %lnot.ext147 = zext i1 %lnot146 to i32, !dbg !6391
  %add148 = add i32 %add138, %lnot.ext147, !dbg !6391
  %29 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv149 = zext i16 %29 to i32, !dbg !6391
  %shr150 = ashr i32 %conv149, 8, !dbg !6391
  %conv151 = sext i32 %shr150 to i64, !dbg !6391
  %and152 = and i64 %conv151, 128, !dbg !6391
  %tobool153 = icmp ne i64 %and152, 0, !dbg !6391
  %lnot154 = xor i1 %tobool153, true, !dbg !6391
  %lnot156 = xor i1 %lnot154, true, !dbg !6391
  %lnot.ext157 = zext i1 %lnot156 to i32, !dbg !6391
  %add158 = add i32 %add148, %lnot.ext157, !dbg !6391
  %add159 = add i32 %add79, %add158, !dbg !6391
  br label %cond.end, !dbg !6391

cond.false:                                       ; preds = %if.end19
  %30 = load i16, ptr %apsize, align 2, !dbg !6391
  %conv160 = zext i16 %30 to i32, !dbg !6391
  %call161 = call i32 @__arch_hweight16(i32 noundef %conv160) #11, !dbg !6391
  br label %cond.end, !dbg !6391

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add159, %cond.true ], [ %call161, %cond.false ], !dbg !6391
  %sub = sub i32 7, %cond, !dbg !6392
  store i32 %sub, ptr %order, align 4, !dbg !6393
  %31 = load ptr, ptr %agp.addr, align 8, !dbg !6394
  %call162 = call i64 @pci_bus_address(ptr noundef %31, i32 noundef 0) #11, !dbg !6395
  store i64 %call162, ptr %aper, align 8, !dbg !6396
  %32 = load i32, ptr %order, align 4, !dbg !6397
  %cmp163 = icmp sge i32 %32, 0, !dbg !6399
  br i1 %cmp163, label %land.lhs.true, label %if.end172, !dbg !6400

land.lhs.true:                                    ; preds = %cond.end
  %33 = load i64, ptr %aper, align 8, !dbg !6401
  %34 = load i32, ptr %order, align 4, !dbg !6402
  %add165 = add i32 20, %34, !dbg !6403
  %sh_prom = zext i32 %add165 to i64, !dbg !6404
  %shl166 = shl i64 32, %sh_prom, !dbg !6404
  %add167 = add i64 %33, %shl166, !dbg !6405
  %cmp168 = icmp ugt i64 %add167, 4294967296, !dbg !6406
  br i1 %cmp168, label %if.then170, label %if.end172, !dbg !6407

if.then170:                                       ; preds = %land.lhs.true
  br label %do.body, !dbg !6408

do.body:                                          ; preds = %if.then170
  br label %do.cond, !dbg !6411

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6411

do.end:                                           ; preds = %do.cond
  %35 = load ptr, ptr %agp.addr, align 8, !dbg !6408
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 37, !dbg !6408
  %36 = load i32, ptr %order, align 4, !dbg !6408
  %shl171 = shl i32 32, %36, !dbg !6408
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.17, i32 noundef %shl171) #12, !dbg !6408
  %37 = load i32, ptr %nb_order, align 4, !dbg !6413
  store i32 %37, ptr %order, align 4, !dbg !6414
  br label %if.end172, !dbg !6415

if.end172:                                        ; preds = %do.end, %land.lhs.true, %cond.end
  %38 = load i32, ptr %nb_order, align 4, !dbg !6416
  %39 = load i32, ptr %order, align 4, !dbg !6418
  %cmp173 = icmp uge i32 %38, %39, !dbg !6419
  br i1 %cmp173, label %if.then175, label %if.end181, !dbg !6420

if.then175:                                       ; preds = %if.end172
  %40 = load i64, ptr %nb_aper, align 8, !dbg !6421
  %41 = load i32, ptr %nb_order, align 4, !dbg !6424
  %shl176 = shl i32 33554432, %41, !dbg !6425
  %call177 = call i32 @agp_aperture_valid(i64 noundef %40, i32 noundef %shl176) #11, !dbg !6426
  %tobool178 = icmp ne i32 %call177, 0, !dbg !6426
  br i1 %tobool178, label %if.then179, label %if.end180, !dbg !6427

if.then179:                                       ; preds = %if.then175
  store i32 0, ptr %retval, align 4, !dbg !6428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

if.end180:                                        ; preds = %if.then175
  br label %if.end181, !dbg !6429

if.end181:                                        ; preds = %if.end180, %if.end172
  br label %do.body182, !dbg !6430

do.body182:                                       ; preds = %if.end181
  br label %do.cond183, !dbg !6432

do.cond183:                                       ; preds = %do.body182
  br label %do.end184, !dbg !6432

do.end184:                                        ; preds = %do.cond183
  %42 = load ptr, ptr %agp.addr, align 8, !dbg !6430
  %dev185 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 37, !dbg !6430
  %43 = load i64, ptr %aper, align 8, !dbg !6430
  %44 = load i32, ptr %order, align 4, !dbg !6430
  %shl186 = shl i32 32, %44, !dbg !6430
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev185, ptr noundef @.str.18, i64 noundef %43, i32 noundef %shl186) #12, !dbg !6430
  %45 = load i32, ptr %order, align 4, !dbg !6434
  %cmp187 = icmp slt i32 %45, 0, !dbg !6436
  br i1 %cmp187, label %if.then192, label %lor.lhs.false, !dbg !6437

lor.lhs.false:                                    ; preds = %do.end184
  %46 = load i64, ptr %aper, align 8, !dbg !6438
  %47 = load i32, ptr %order, align 4, !dbg !6439
  %shl189 = shl i32 33554432, %47, !dbg !6440
  %call190 = call i32 @agp_aperture_valid(i64 noundef %46, i32 noundef %shl189) #11, !dbg !6441
  %tobool191 = icmp ne i32 %call190, 0, !dbg !6441
  br i1 %tobool191, label %if.end193, label %if.then192, !dbg !6442

if.then192:                                       ; preds = %lor.lhs.false, %do.end184
  store i32 -1, ptr %retval, align 4, !dbg !6443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6443

if.end193:                                        ; preds = %lor.lhs.false
  %48 = load ptr, ptr %nb.addr, align 8, !dbg !6444
  %49 = load i32, ptr %order, align 4, !dbg !6445
  call void @gart_set_size_and_enable(ptr noundef %48, i32 noundef %49) #11, !dbg !6446
  %50 = load ptr, ptr %nb.addr, align 8, !dbg !6447
  %51 = load i64, ptr %aper, align 8, !dbg !6448
  %shr194 = lshr i64 %51, 25, !dbg !6449
  %conv195 = trunc i64 %shr194 to i32, !dbg !6448
  %call196 = call i32 @pci_write_config_dword(ptr noundef %50, i32 noundef 148, i32 noundef %conv195) #11, !dbg !6450
  store i32 0, ptr %retval, align 4, !dbg !6451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6451

cleanup:                                          ; preds = %if.end193, %if.then192, %if.then179, %if.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 2, ptr %apsize) #10, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb_base) #10, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb_order) #10, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #10, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %nb_aper) #10, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %aper) #10, !dbg !6452
  %52 = load i32, ptr %retval, align 4, !dbg !6452
  ret i32 %52, !dbg !6452
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6453 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6454 dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @agp_aperture_valid(i64 noundef %aper, i32 noundef %size) #5 align 16 !dbg !6458 {
entry:
  %retval = alloca i32, align 4
  %aper.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %aper, ptr %aper.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aper.addr, metadata !6462, metadata !DIExpression()), !dbg !6464
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6463, metadata !DIExpression()), !dbg !6465
  %0 = load i64, ptr %aper.addr, align 8, !dbg !6466
  %1 = load i32, ptr %size.addr, align 4, !dbg !6468
  %call = call i32 @aperture_valid(i64 noundef %0, i32 noundef %1, i32 noundef 33554432) #11, !dbg !6469
  %tobool = icmp ne i32 %call, 0, !dbg !6469
  br i1 %tobool, label %if.end, label %if.then, !dbg !6470

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6471
  br label %return, !dbg !6471

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @aperture_resource, align 8, !dbg !6472
  %tobool1 = icmp ne ptr %2, null, !dbg !6472
  br i1 %tobool1, label %if.end6, label %land.lhs.true, !dbg !6474

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, ptr %aper.addr, align 8, !dbg !6475
  %4 = load i32, ptr %size.addr, align 4, !dbg !6475
  %conv = zext i32 %4 to i64, !dbg !6475
  %call2 = call ptr @__request_region(ptr noundef @iomem_resource, i64 noundef %3, i64 noundef %conv, ptr noundef @.str.19, i32 noundef 0) #11, !dbg !6475
  store ptr %call2, ptr @aperture_resource, align 8, !dbg !6476
  %tobool3 = icmp ne ptr %call2, null, !dbg !6476
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !6477

if.then4:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !6478

do.body:                                          ; preds = %if.then4
  br label %do.end, !dbg !6481

do.end:                                           ; preds = %do.body
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #12, !dbg !6478
  store i32 %call5, ptr %tmp, align 4, !dbg !6481
  %5 = load i32, ptr %tmp, align 4, !dbg !6478
  store i32 0, ptr %retval, align 4, !dbg !6483
  br label %return, !dbg !6483

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4, !dbg !6484
  br label %return, !dbg !6484

return:                                           ; preds = %if.end6, %do.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !6485
  ret i32 %6, !dbg !6485
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i16(i16) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__arch_hweight16(i32 noundef %w) #6 align 16 !dbg !6486 {
entry:
  %w.addr = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !6491, metadata !DIExpression()), !dbg !6492
  %0 = load i32, ptr %w.addr, align 4, !dbg !6493
  %and = and i32 %0, 65535, !dbg !6494
  %call = call i32 @__arch_hweight32(i32 noundef %and) #11, !dbg !6495
  ret i32 %call, !dbg !6496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_bus_address(ptr noundef %pdev, i32 noundef %bar) #6 align 16 !dbg !6497 {
entry:
  %pdev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6502, metadata !DIExpression()), !dbg !6509
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !6503, metadata !DIExpression()), !dbg !6510
  call void @llvm.lifetime.start.p0(i64 16, ptr %region) #10, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %region, metadata !6504, metadata !DIExpression()), !dbg !6512
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6513
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !6514
  %1 = load ptr, ptr %bus, align 8, !dbg !6514
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6515
  %resource = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 40, !dbg !6516
  %3 = load i32, ptr %bar.addr, align 4, !dbg !6517
  %idxprom = sext i32 %3 to i64, !dbg !6515
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !6515
  call void @pcibios_resource_to_bus(ptr noundef %1, ptr noundef %region, ptr noundef %arrayidx) #11, !dbg !6518
  %start = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 0, !dbg !6519
  %4 = load i64, ptr %start, align 8, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 16, ptr %region) #10, !dbg !6520
  ret i64 %4, !dbg !6521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gart_set_size_and_enable(ptr noundef %dev, i32 noundef %order) #6 align 16 !dbg !6522 {
entry:
  %dev.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %ctl = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6526, metadata !DIExpression()), !dbg !6529
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6527, metadata !DIExpression()), !dbg !6530
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctl) #10, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %ctl, metadata !6528, metadata !DIExpression()), !dbg !6532
  %0 = load i32, ptr %order.addr, align 4, !dbg !6533
  %shl = shl i32 %0, 1, !dbg !6534
  store i32 %shl, ptr %ctl, align 4, !dbg !6535
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6536
  %2 = load i32, ptr %ctl, align 4, !dbg !6537
  %call = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 144, i32 noundef %2) #11, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctl) #10, !dbg !6539
  ret void, !dbg !6539
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @aperture_valid(i64 noundef %aper_base, i32 noundef %aper_size, i32 noundef %min_size) #6 align 16 !dbg !6540 {
entry:
  %retval = alloca i32, align 4
  %aper_base.addr = alloca i64, align 8
  %aper_size.addr = alloca i32, align 4
  %min_size.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  store i64 %aper_base, ptr %aper_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aper_base.addr, metadata !6544, metadata !DIExpression()), !dbg !6547
  store i32 %aper_size, ptr %aper_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %aper_size.addr, metadata !6545, metadata !DIExpression()), !dbg !6548
  store i32 %min_size, ptr %min_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_size.addr, metadata !6546, metadata !DIExpression()), !dbg !6549
  %0 = load i64, ptr %aper_base.addr, align 8, !dbg !6550
  %tobool = icmp ne i64 %0, 0, !dbg !6550
  br i1 %tobool, label %if.end, label %if.then, !dbg !6552

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6553
  br label %return, !dbg !6553

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %aper_base.addr, align 8, !dbg !6554
  %2 = load i32, ptr %aper_size.addr, align 4, !dbg !6556
  %conv = zext i32 %2 to i64, !dbg !6556
  %add = add i64 %1, %conv, !dbg !6557
  %cmp = icmp ugt i64 %add, 4294967296, !dbg !6558
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6559

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !6560

do.body:                                          ; preds = %if.then2
  br label %do.end, !dbg !6563

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.21) #12, !dbg !6560
  store i32 %call, ptr %tmp, align 4, !dbg !6563
  %3 = load i32, ptr %tmp, align 4, !dbg !6560
  store i32 0, ptr %retval, align 4, !dbg !6565
  br label %return, !dbg !6565

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %aper_base.addr, align 8, !dbg !6566
  %5 = load i64, ptr %aper_base.addr, align 8, !dbg !6568
  %6 = load i32, ptr %aper_size.addr, align 4, !dbg !6569
  %conv4 = zext i32 %6 to i64, !dbg !6569
  %add5 = add i64 %5, %conv4, !dbg !6570
  %call6 = call zeroext i1 @e820__mapped_any(i64 noundef %4, i64 noundef %add5, i32 noundef 1) #11, !dbg !6571
  br i1 %call6, label %if.then7, label %if.end12, !dbg !6572

if.then7:                                         ; preds = %if.end3
  br label %do.body8, !dbg !6573

do.body8:                                         ; preds = %if.then7
  br label %do.end9, !dbg !6576

do.end9:                                          ; preds = %do.body8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #12, !dbg !6573
  store i32 %call11, ptr %tmp10, align 4, !dbg !6576
  %7 = load i32, ptr %tmp10, align 4, !dbg !6573
  store i32 0, ptr %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

if.end12:                                         ; preds = %if.end3
  %8 = load i32, ptr %aper_size.addr, align 4, !dbg !6579
  %9 = load i32, ptr %min_size.addr, align 4, !dbg !6581
  %cmp13 = icmp ult i32 %8, %9, !dbg !6582
  br i1 %cmp13, label %if.then15, label %if.end21, !dbg !6583

if.then15:                                        ; preds = %if.end12
  br label %do.body16, !dbg !6584

do.body16:                                        ; preds = %if.then15
  br label %do.end17, !dbg !6587

do.end17:                                         ; preds = %do.body16
  %10 = load i32, ptr %aper_size.addr, align 4, !dbg !6584
  %shr = lshr i32 %10, 20, !dbg !6584
  %11 = load i32, ptr %min_size.addr, align 4, !dbg !6584
  %shr19 = lshr i32 %11, 20, !dbg !6584
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, i32 noundef %shr, i32 noundef %shr19) #12, !dbg !6584
  store i32 %call20, ptr %tmp18, align 4, !dbg !6587
  %12 = load i32, ptr %tmp18, align 4, !dbg !6584
  store i32 0, ptr %retval, align 4, !dbg !6589
  br label %return, !dbg !6589

if.end21:                                         ; preds = %if.end12
  store i32 1, ptr %retval, align 4, !dbg !6590
  br label %return, !dbg !6590

return:                                           ; preds = %if.end21, %do.end17, %do.end9, %do.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !6591
  ret i32 %13, !dbg !6591
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6592 dso_local ptr @__request_region(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6595 dso_local zeroext i1 @e820__mapped_any(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__arch_hweight32(i32 noundef %w) #7 align 16 !dbg !6599 {
entry:
  %w.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !6601, metadata !DIExpression()), !dbg !6603
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6602, metadata !DIExpression()), !dbg !6605
  %0 = load i32, ptr %w.addr, align 4, !dbg !6606
  %1 = call i32 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight32\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntl $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !6607, !srcloc !6608
  store i32 %1, ptr %res, align 4, !dbg !6607
  %2 = load i32, ptr %res, align 4, !dbg !6609
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10, !dbg !6610
  ret i32 %2, !dbg !6611
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6612 dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6616 dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6619 dso_local void @pci_dev_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #6 align 16 !dbg !6620 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6624, metadata !DIExpression()), !dbg !6626
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6625, metadata !DIExpression()), !dbg !6627
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6628
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6629
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !6630
  store ptr %0, ptr %driver_data, align 8, !dbg !6631
  ret void, !dbg !6632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_get_drvdata(ptr noundef %pdev) #6 align 16 !dbg !6633 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6637, metadata !DIExpression()), !dbg !6638
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6639
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6640
  %call = call ptr @dev_get_drvdata(ptr noundef %dev) #11, !dbg !6641
  ret ptr %call, !dbg !6642
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6643 dso_local void @__release_region(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6646 dso_local void @agp_remove_bridge(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #6 align 16 !dbg !6647 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6651, metadata !DIExpression()), !dbg !6652
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6653
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !6654
  %1 = load ptr, ptr %driver_data, align 8, !dbg !6654
  ret ptr %1, !dbg !6655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @agp_amd64_resume(ptr noundef %dev) #5 align 16 !dbg !6656 {
entry:
  %dev.addr = alloca ptr, align 8
  %pdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6658, metadata !DIExpression()), !dbg !6662
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #10, !dbg !6663
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !6659, metadata !DIExpression()), !dbg !6664
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6665
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6660, metadata !DIExpression()), !dbg !6665
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6665
  store ptr %0, ptr %__mptr, align 8, !dbg !6665
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6665
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6665
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6665
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6666
  %2 = load ptr, ptr %tmp, align 8, !dbg !6665
  store ptr %2, ptr %pdev, align 8, !dbg !6664
  %3 = load ptr, ptr %pdev, align 8, !dbg !6667
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7, !dbg !6669
  %4 = load i16, ptr %vendor, align 4, !dbg !6669
  %conv = zext i16 %4 to i32, !dbg !6667
  %cmp = icmp eq i32 %conv, 4318, !dbg !6670
  br i1 %cmp, label %if.then, label %if.end, !dbg !6671

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pdev, align 8, !dbg !6672
  %call = call i32 @nforce3_agp_init(ptr noundef %5) #11, !dbg !6673
  br label %if.end, !dbg !6673

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @amd_8151_configure() #11, !dbg !6674
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #10, !dbg !6675
  ret i32 %call2, !dbg !6676
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217}
!llvm.ident = !{!5218}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "agp_amd64_pci_driver", scope: !2, file: !3, line: 730, type: !4709, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/char/agp/.amd64-agp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/char/agp/amd64-agp\22 -D KBUILD_BASENAME=\22amd64_agp\22 -D KBUILD_MODNAME=\22amd64_agp\22 -D __KBUILD_MODNAME=kmod_amd64_agp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/char/agp/amd64-agp.ll drivers/char/agp/amd64-agp.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, globals: !4897, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/agp/amd64-agp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47836a2e2d8f4ddb8847d2953c5b89d9")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !149, !154, !159}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aper_size_type", file: !142, line: 45, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "drivers/char/agp/agp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "800c062457c8bfdfd4ad815562b2a511")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "U8_APER_SIZE", value: 0)
!145 = !DIEnumerator(name: "U16_APER_SIZE", value: 1)
!146 = !DIEnumerator(name: "U32_APER_SIZE", value: 2)
!147 = !DIEnumerator(name: "LVL2_APER_SIZE", value: 3)
!148 = !DIEnumerator(name: "FIXED_APER_SIZE", value: 4)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chipset_type", file: !150, line: 35, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/agp_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c30f66ee89c16f982581c9aa2ca6c9f")
!151 = !{!152, !153}
!152 = !DIEnumerator(name: "NOT_SUPPORTED", value: 0)
!153 = !DIEnumerator(name: "SUPPORTED", value: 1)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 10, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "false", value: 0)
!158 = !DIEnumerator(name: "true", value: 1)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !160, line: 10, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170}
!162 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!163 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!164 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!165 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!166 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!167 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!168 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!169 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!170 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!171 = !{!172, !349, !4119, !327, !431, !427, !4126, !1785, !4127, !7, !109, !4129}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !174)
!174 = !{!175, !176, !183, !188, !3795, !3821, !3822, !3823, !3824, !3828, !3831, !3832, !3833, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3900, !3904, !3922, !3939, !3940, !3941, !3942, !3951, !3974, !3975, !3978, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3992, !3993, !4079, !4087, !4088, !4089, !4091, !4095, !4096, !4100, !4101, !4102, !4103, !4105, !4106, !4107, !4114, !4115, !4116, !4118}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !173, file: !6, line: 403, baseType: !5, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !173, file: !6, line: 406, baseType: !177, size: 128, offset: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !178, line: 190, size: 128, elements: !179)
!178 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !178, line: 191, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !177, file: !178, line: 191, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !6, line: 409, baseType: !184, size: 448, offset: 192)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 448, elements: !186)
!185 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !{!187}
!187 = !DISubrange(count: 56)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !173, file: !6, line: 417, baseType: !189, size: 768, offset: 640)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !190)
!190 = !{!191, !3789, !3790, !3791, !3794}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !189, file: !6, line: 46, baseType: !192, size: 512)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !193, line: 64, size: 512, elements: !194)
!193 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!194 = !{!195, !198, !199, !201, !290, !3676, !3779, !3784, !3785, !3786, !3787, !3788}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !193, line: 65, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !192, file: !193, line: 66, baseType: !177, size: 128, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !193, line: 67, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !192, file: !193, line: 68, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !193, line: 168, size: 768, elements: !204)
!204 = !{!205, !206, !249, !250}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !203, file: !193, line: 169, baseType: !177, size: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !203, file: !193, line: 170, baseType: !207, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !208, line: 29, baseType: !209)
!208 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !208, line: 17, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !208, line: 18, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !208, line: 18, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !212, file: !208, line: 19, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !216, line: 14, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !215, file: !216, line: 15, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !220, line: 44, baseType: !221)
!220 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !220, line: 14, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !220, line: 15, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !220, line: 15, size: 32, elements: !225)
!225 = !{!226, !231, !241}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !224, file: !220, line: 16, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !178, line: 174, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 172, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !228, file: !178, line: 173, baseType: !109, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !220, line: 24, baseType: !232, size: 16)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !220, line: 24, size: 16, elements: !233)
!233 = !{!234, !240}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !232, file: !220, line: 25, baseType: !235, size: 8)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !236, line: 17, baseType: !237)
!236 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !238, line: 21, baseType: !239)
!238 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!239 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !232, file: !220, line: 26, baseType: !235, size: 8, offset: 8)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !220, line: 28, baseType: !242, size: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !220, line: 28, size: 32, elements: !243)
!243 = !{!244, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !242, file: !220, line: 29, baseType: !245, size: 16)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !236, line: 19, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !238, line: 24, baseType: !247)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !242, file: !220, line: 30, baseType: !245, size: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !203, file: !193, line: 171, baseType: !192, size: 512, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !203, file: !193, line: 172, baseType: !251, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !193, line: 133, size: 192, elements: !254)
!254 = !{!255, !262, !267}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !253, file: !193, line: 134, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!109, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !193, line: 135, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!196, !260}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !253, file: !193, line: 136, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!109, !260, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !193, line: 125, size: 20736, elements: !274)
!274 = !{!275, !280, !284, !285, !289}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !273, file: !193, line: 126, baseType: !276, size: 192)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 192, elements: !278)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!278 = !{!279}
!279 = !DISubrange(count: 3)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !273, file: !193, line: 127, baseType: !281, size: 4096, offset: 192)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 4096, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !273, file: !193, line: 128, baseType: !109, size: 32, offset: 4288)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !273, file: !193, line: 129, baseType: !286, size: 16384, offset: 4320)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 16384, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 2048)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !273, file: !193, line: 130, baseType: !109, size: 32, offset: 20704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !192, file: !193, line: 69, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !193, line: 116, size: 384, elements: !294)
!294 = !{!295, !299, !328, !3638, !3666, !3670}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !293, file: !193, line: 117, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !200}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !293, file: !193, line: 118, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !303, line: 254, size: 128, elements: !304)
!303 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!304 = !{!305, !320}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !302, file: !303, line: 255, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !200, !314, !277}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !178, line: 66, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !311, line: 73, baseType: !312)
!311 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !311, line: 15, baseType: !313)
!313 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !303, line: 30, size: 128, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !303, line: 31, baseType: !196, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !315, file: !303, line: 32, baseType: !319, size: 16, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !178, line: 24, baseType: !247)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !302, file: !303, line: 256, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!309, !200, !314, !196, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !178, line: 61, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !311, line: 72, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !311, line: 16, baseType: !327)
!327 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !293, file: !193, line: 119, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !303, line: 84, size: 320, elements: !333)
!333 = !{!334, !335, !339, !3634, !3636}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !303, line: 85, baseType: !196, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !332, file: !303, line: 86, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!319, !200, !314, !109}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !332, file: !303, line: 88, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!319, !200, !343, !109}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !303, line: 175, size: 512, elements: !345)
!345 = !{!346, !347, !348, !350, !3625, !3629, !3630}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !344, file: !303, line: 176, baseType: !315, size: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !344, file: !303, line: 177, baseType: !324, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !344, file: !303, line: 178, baseType: !349, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !344, file: !303, line: 179, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !356)
!356 = !{!357, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3619, !3620, !3621, !3622, !3623, !3624}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !355, file: !14, line: 473, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !360)
!360 = !{!361, !362, !363, !371, !372, !379, !380, !383, !384, !3398, !3399, !3400, !3401, !3402, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3442, !3445, !3446, !3447, !3456, !3457, !3458, !3459}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !359, file: !14, line: 642, baseType: !319, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !359, file: !14, line: 643, baseType: !247, size: 16, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !359, file: !14, line: 644, baseType: !364, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !365, line: 23, baseType: !366)
!365 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 21, size: 32, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !366, file: !365, line: 22, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !178, line: 37, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !311, line: 49, baseType: !7)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !359, file: !14, line: 645, baseType: !177, size: 128, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !359, file: !14, line: 646, baseType: !373, size: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !365, line: 28, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 26, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !374, file: !365, line: 27, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !178, line: 38, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !311, line: 50, baseType: !7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !359, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !359, file: !14, line: 650, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !359, file: !14, line: 651, baseType: !381, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !359, file: !14, line: 654, baseType: !385, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !388)
!388 = !{!389, !3223, !3236, !3240, !3244, !3248, !3252, !3256, !3260, !3264, !3268, !3269, !3273, !3277, !3314, !3343, !3347, !3353, !3357, !3361, !3365, !3369, !3373, !3379, !3383}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !387, file: !14, line: 1967, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !358, !393, !7}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !395, line: 82, size: 1536, elements: !396)
!395 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!396 = !{!397, !398, !408, !416, !417, !437, !438, !442, !455, !3206, !3207, !3208, !3209, !3215, !3216, !3217}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !394, file: !395, line: 84, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !394, file: !395, line: 85, baseType: !399, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !400, line: 275, baseType: !401)
!400 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !400, line: 275, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !401, file: !400, line: 275, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !400, line: 69, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !400, line: 64, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !405, file: !400, line: 65, baseType: !7, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !394, file: !395, line: 86, baseType: !409, size: 128, offset: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !410, line: 38, size: 128, elements: !411)
!410 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !410, line: 39, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !409, file: !410, line: 39, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !394, file: !395, line: 87, baseType: !393, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !394, file: !395, line: 88, baseType: !418, size: 128, offset: 256)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !395, line: 49, size: 128, elements: !419)
!419 = !{!420, !434}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !395, line: 50, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !395, line: 50, size: 64, elements: !422)
!422 = !{!423, !430}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !395, line: 51, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !395, line: 51, size: 64, elements: !425)
!425 = !{!426, !429}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !424, file: !395, line: 52, baseType: !427, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !236, line: 21, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !238, line: 27, baseType: !7)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !424, file: !395, line: 52, baseType: !427, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !421, file: !395, line: 54, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !236, line: 23, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !238, line: 31, baseType: !433)
!433 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !418, file: !395, line: 56, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !394, file: !395, line: 89, baseType: !358, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !394, file: !395, line: 91, baseType: !439, size: 256, offset: 448)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !394, file: !395, line: 94, baseType: !443, size: 64, offset: 704)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !444, line: 25, size: 64, elements: !445)
!444 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !444, line: 26, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !444, line: 26, size: 64, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !447, file: !444, line: 28, baseType: !432, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !444, line: 30, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !444, line: 30, size: 64, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !451, file: !444, line: 31, baseType: !207, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !451, file: !444, line: 32, baseType: !109, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !394, file: !395, line: 95, baseType: !456, size: 64, offset: 768)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !395, line: 128, size: 1024, align: 512, elements: !459)
!459 = !{!460, !464, !465, !472, !478, !482, !486, !490, !491, !495, !499, !3196, !3200}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !458, file: !395, line: 129, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!109, !393, !7}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !458, file: !395, line: 130, baseType: !461, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !458, file: !395, line: 131, baseType: !466, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!109, !469, !471}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !458, file: !395, line: 132, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!109, !469, !7, !196, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !458, file: !395, line: 134, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!109, !469}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !458, file: !395, line: 135, baseType: !483, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!109, !393}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !458, file: !395, line: 136, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !393}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !458, file: !395, line: 137, baseType: !487, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !458, file: !395, line: 138, baseType: !492, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !393, !358}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !458, file: !395, line: 139, baseType: !496, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!277, !393, !277, !109}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !458, file: !395, line: 140, baseType: !500, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !3195}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !505, line: 70, size: 256, elements: !506)
!505 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!506 = !{!507, !508, !3191, !3192}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !504, file: !505, line: 71, baseType: !393, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !504, file: !505, line: 72, baseType: !509, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !511)
!511 = !{!512, !513, !516, !517, !518, !522, !571, !732, !772, !862, !866, !867, !868, !869, !870, !879, !880, !881, !882, !887, !891, !892, !895, !898, !901, !904, !905, !906, !947, !3122, !3123, !3124, !3125, !3126, !3127, !3130, !3132, !3139, !3140, !3141, !3142, !3143, !3158, !3159, !3160, !3161, !3162, !3165, !3166, !3167, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !510, file: !14, line: 1191, baseType: !177, size: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !510, file: !14, line: 1192, baseType: !514, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !178, line: 21, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !178, line: 18, baseType: !427)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !510, file: !14, line: 1193, baseType: !239, size: 8, offset: 160)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !510, file: !14, line: 1194, baseType: !327, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !510, file: !14, line: 1195, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !178, line: 52, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !311, line: 88, baseType: !521)
!521 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !510, file: !14, line: 1196, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !525)
!525 = !{!526, !527, !528, !535, !539, !543, !547, !548, !549, !559, !563, !564, !565, !567, !568, !569, !570}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !524, file: !14, line: 2367, baseType: !196, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !524, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !524, file: !14, line: 2376, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!109, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !534, line: 32, flags: DIFlagFwdDecl)
!534 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !524, file: !14, line: 2377, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !524, file: !14, line: 2378, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!393, !523, !109, !196, !349}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !524, file: !14, line: 2380, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !509}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !524, file: !14, line: 2381, baseType: !172, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !14, line: 2382, baseType: !523, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !524, file: !14, line: 2383, baseType: !550, size: 64, offset: 512)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !178, line: 194, size: 64, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !550, file: !178, line: 195, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !178, line: 198, size: 128, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !178, line: 199, baseType: !553, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !554, file: !178, line: 199, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !524, file: !14, line: 2385, baseType: !560, offset: 576)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !561, line: 206, elements: !562)
!561 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!562 = !{}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !524, file: !14, line: 2386, baseType: !560, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !524, file: !14, line: 2387, baseType: !560, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !524, file: !14, line: 2388, baseType: !566, offset: 576)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, elements: !278)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !524, file: !14, line: 2390, baseType: !560, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !524, file: !14, line: 2391, baseType: !560, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !524, file: !14, line: 2392, baseType: !560, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !524, file: !14, line: 2393, baseType: !560, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !510, file: !14, line: 1197, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !575)
!575 = !{!576, !580, !584, !585, !589, !595, !599, !600, !601, !605, !609, !613, !614, !615, !621, !626, !627, !634, !635, !636, !637, !641, !645, !714, !730, !731}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !574, file: !14, line: 2058, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!358, !509}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !574, file: !14, line: 2059, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !358}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !574, file: !14, line: 2060, baseType: !581, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !574, file: !14, line: 2062, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !358, !109}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !574, file: !14, line: 2063, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!109, !358, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !574, file: !14, line: 2064, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!109, !358}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !574, file: !14, line: 2065, baseType: !581, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !574, file: !14, line: 2066, baseType: !544, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !574, file: !14, line: 2067, baseType: !602, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!109, !509, !109}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !574, file: !14, line: 2068, baseType: !606, size: 64, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!109, !509, !13}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !574, file: !14, line: 2069, baseType: !610, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!109, !509}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !574, file: !14, line: 2070, baseType: !606, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !574, file: !14, line: 2071, baseType: !610, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !574, file: !14, line: 2072, baseType: !616, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!109, !393, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !574, file: !14, line: 2073, baseType: !622, size: 64, offset: 896)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!109, !509, !625, !277}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !574, file: !14, line: 2074, baseType: !544, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !574, file: !14, line: 2076, baseType: !628, size: 64, offset: 1024)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!109, !631, !393}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !633, line: 66, flags: DIFlagFwdDecl)
!633 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !574, file: !14, line: 2077, baseType: !628, size: 64, offset: 1088)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !574, file: !14, line: 2078, baseType: !628, size: 64, offset: 1152)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !574, file: !14, line: 2079, baseType: !628, size: 64, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !574, file: !14, line: 2081, baseType: !638, size: 64, offset: 1280)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!309, !509, !109, !277, !324, !519}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !574, file: !14, line: 2082, baseType: !642, size: 64, offset: 1344)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!309, !509, !109, !196, !324, !519}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !574, file: !14, line: 2083, baseType: !646, size: 64, offset: 1408)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!649, !358}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !678, !679, !680, !681, !697, !698, !699}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !651, file: !19, line: 297, baseType: !554, size: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !651, file: !19, line: 298, baseType: !177, size: 128, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !651, file: !19, line: 299, baseType: !177, size: 128, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !651, file: !19, line: 300, baseType: !177, size: 128, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !651, file: !19, line: 301, baseType: !658, size: 256, offset: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !659, line: 66, size: 256, elements: !660)
!659 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!660 = !{!661, !670, !672, !677}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !658, file: !659, line: 67, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !663, line: 13, baseType: !664)
!663 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !178, line: 181, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 179, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !665, file: !178, line: 180, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !236, line: 22, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !238, line: 30, baseType: !521)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !658, file: !659, line: 68, baseType: !671, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !216, line: 23, baseType: !215)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !658, file: !659, line: 70, baseType: !673, size: 32, offset: 96)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !674, line: 15, size: 32, elements: !675)
!674 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !673, file: !674, line: 20, baseType: !227, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !658, file: !659, line: 72, baseType: !177, size: 128, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !651, file: !19, line: 302, baseType: !207, size: 32, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !651, file: !19, line: 303, baseType: !227, size: 32, offset: 800)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !651, file: !19, line: 304, baseType: !509, size: 64, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !651, file: !19, line: 305, baseType: !682, size: 64, offset: 896)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !683)
!683 = !{!684, !696}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !19, line: 69, baseType: !685, size: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !19, line: 69, size: 32, elements: !686)
!686 = !{!687, !688, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !685, file: !19, line: 70, baseType: !364, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !685, file: !19, line: 71, baseType: !373, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !685, file: !19, line: 72, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !691, line: 24, baseType: !692)
!691 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 22, size: 32, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !692, file: !691, line: 23, baseType: !695, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !691, line: 20, baseType: !370)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !651, file: !19, line: 306, baseType: !519, size: 64, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !651, file: !19, line: 307, baseType: !327, size: 64, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !651, file: !19, line: 308, baseType: !700, size: 576, offset: 1088)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !701)
!701 = !{!702, !704, !705, !706, !707, !708, !709, !710, !713}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !700, file: !19, line: 206, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !521)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !700, file: !19, line: 207, baseType: !703, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !700, file: !19, line: 208, baseType: !703, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !700, file: !19, line: 209, baseType: !703, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !700, file: !19, line: 210, baseType: !703, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !700, file: !19, line: 211, baseType: !703, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !700, file: !19, line: 212, baseType: !703, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !700, file: !19, line: 213, baseType: !711, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !712, line: 8, baseType: !669)
!712 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !700, file: !19, line: 214, baseType: !711, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !574, file: !14, line: 2085, baseType: !715, size: 64, offset: 1472)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!313, !509, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !720, line: 15, size: 256, elements: !721)
!720 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!721 = !{!722, !724, !725, !726, !727}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !719, file: !720, line: 16, baseType: !723, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !178, line: 154, baseType: !7)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !719, file: !720, line: 19, baseType: !109, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !719, file: !720, line: 26, baseType: !327, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !719, file: !720, line: 33, baseType: !327, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !719, file: !720, line: 36, baseType: !728, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !574, file: !14, line: 2087, baseType: !715, size: 64, offset: 1536)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !574, file: !14, line: 2089, baseType: !544, size: 64, offset: 1600)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !510, file: !14, line: 1198, baseType: !733, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !736)
!736 = !{!737, !741, !745, !749, !750, !751, !752, !753, !758, !763, !767}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !735, file: !19, line: 325, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!109, !650}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !735, file: !19, line: 326, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!650, !509, !109}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !735, file: !19, line: 327, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !650}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !735, file: !19, line: 328, baseType: !738, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !735, file: !19, line: 329, baseType: !738, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !735, file: !19, line: 330, baseType: !738, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !735, file: !19, line: 331, baseType: !602, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !735, file: !19, line: 334, baseType: !754, size: 64, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!757, !358}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !735, file: !19, line: 335, baseType: !759, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!109, !358, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !735, file: !19, line: 337, baseType: !764, size: 64, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!109, !358, !757}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !735, file: !19, line: 339, baseType: !768, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!109, !509, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !510, file: !14, line: 1199, baseType: !773, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !776)
!776 = !{!777, !788, !789, !793, !794, !795, !810, !833, !837, !838, !861}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !775, file: !19, line: 431, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!109, !509, !109, !109, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !784, line: 8, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !783, file: !784, line: 9, baseType: !503, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !783, file: !784, line: 10, baseType: !393, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !775, file: !19, line: 432, baseType: !602, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !775, file: !19, line: 433, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!109, !509, !7}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !775, file: !19, line: 434, baseType: !790, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !775, file: !19, line: 435, baseType: !602, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !775, file: !19, line: 436, baseType: !796, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!109, !509, !109, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !800, file: !19, line: 418, baseType: !109, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !800, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !800, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !800, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !800, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !800, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !800, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !800, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !775, file: !19, line: 437, baseType: !811, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!109, !509, !682, !814}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !815, file: !19, line: 346, baseType: !109, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !815, file: !19, line: 347, baseType: !431, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !815, file: !19, line: 348, baseType: !431, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !815, file: !19, line: 349, baseType: !431, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !815, file: !19, line: 350, baseType: !431, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !815, file: !19, line: 351, baseType: !431, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !815, file: !19, line: 352, baseType: !431, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !815, file: !19, line: 353, baseType: !668, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !815, file: !19, line: 355, baseType: !668, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !815, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !815, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !815, file: !19, line: 358, baseType: !431, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !815, file: !19, line: 359, baseType: !431, size: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !815, file: !19, line: 360, baseType: !431, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !815, file: !19, line: 361, baseType: !668, size: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !815, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !775, file: !19, line: 438, baseType: !834, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!109, !509, !771, !814}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !775, file: !19, line: 440, baseType: !811, size: 64, offset: 512)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !775, file: !19, line: 441, baseType: !839, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!109, !509, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !843, file: !19, line: 412, baseType: !7, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !843, file: !19, line: 413, baseType: !847, size: 1344, offset: 64)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 1344, elements: !278)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858, !860}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !19, line: 398, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !848, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !848, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !848, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !848, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !848, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !848, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !848, file: !19, line: 406, baseType: !433, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !848, file: !19, line: 407, baseType: !859, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !178, line: 132, baseType: !431)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !848, file: !19, line: 408, baseType: !859, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !775, file: !19, line: 442, baseType: !790, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !510, file: !14, line: 1200, baseType: !863, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !510, file: !14, line: 1201, baseType: !327, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !510, file: !14, line: 1202, baseType: !327, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !510, file: !14, line: 1203, baseType: !327, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !510, file: !14, line: 1204, baseType: !393, size: 64, offset: 832)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !510, file: !14, line: 1205, baseType: !871, size: 320, offset: 896)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !872, line: 48, size: 320, elements: !873)
!872 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!873 = !{!874, !875, !876, !877, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 49, baseType: !662, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !871, file: !872, line: 55, baseType: !662, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !871, file: !872, line: 57, baseType: !673, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !871, file: !872, line: 59, baseType: !671, size: 32, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !871, file: !872, line: 60, baseType: !177, size: 128, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !510, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !510, file: !14, line: 1207, baseType: !227, size: 32, offset: 1248)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !510, file: !14, line: 1209, baseType: !349, size: 64, offset: 1280)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !510, file: !14, line: 1211, baseType: !883, size: 64, offset: 1344)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !510, file: !14, line: 1223, baseType: !888, size: 64, offset: 1408)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !410, line: 34, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !888, file: !410, line: 35, baseType: !413, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !510, file: !14, line: 1224, baseType: !177, size: 128, offset: 1472)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !510, file: !14, line: 1225, baseType: !893, size: 64, offset: 1600)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !510, file: !14, line: 1226, baseType: !896, size: 64, offset: 1664)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !510, file: !14, line: 1227, baseType: !899, size: 64, offset: 1728)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !510, file: !14, line: 1228, baseType: !902, size: 64, offset: 1792)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !510, file: !14, line: 1229, baseType: !554, size: 128, offset: 1856)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !510, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !510, file: !14, line: 1231, baseType: !907, size: 2496, offset: 2048)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !908)
!908 = !{!909, !910, !911, !913, !945}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !907, file: !19, line: 522, baseType: !7, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !907, file: !19, line: 523, baseType: !871, size: 320, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !907, file: !19, line: 524, baseType: !912, size: 192, offset: 384)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 192, elements: !278)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !907, file: !19, line: 525, baseType: !914, size: 1728, offset: 576)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 1728, elements: !278)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !916)
!916 = !{!917, !937, !938, !939, !940, !941, !942, !943, !944}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !915, file: !19, line: 223, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !920)
!920 = !{!921, !922, !935, !936}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !919, file: !19, line: 446, baseType: !109, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !919, file: !19, line: 447, baseType: !923, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !926)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !925, file: !19, line: 313, baseType: !602, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !925, file: !19, line: 314, baseType: !602, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !925, file: !19, line: 315, baseType: !602, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !925, file: !19, line: 316, baseType: !602, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !925, file: !19, line: 317, baseType: !738, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !925, file: !19, line: 318, baseType: !738, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !925, file: !19, line: 319, baseType: !738, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !925, file: !19, line: 320, baseType: !768, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !919, file: !19, line: 448, baseType: !172, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !919, file: !19, line: 449, baseType: !918, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !915, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !915, file: !19, line: 226, baseType: !177, size: 128, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !915, file: !19, line: 227, baseType: !327, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !915, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !915, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !915, file: !19, line: 230, baseType: !703, size: 64, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !915, file: !19, line: 231, baseType: !703, size: 64, offset: 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !915, file: !19, line: 232, baseType: !349, size: 64, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !907, file: !19, line: 526, baseType: !946, size: 192, offset: 2304)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 192, elements: !278)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !510, file: !14, line: 1233, baseType: !948, size: 2368, offset: 4544)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !948, file: !14, line: 1185, baseType: !247, size: 16)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !948, file: !14, line: 1186, baseType: !247, size: 16, offset: 16)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !948, file: !14, line: 1187, baseType: !953, size: 2304, offset: 64)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 2304, elements: !278)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !955, line: 12, size: 768, elements: !956)
!955 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!956 = !{!957, !979, !981, !3120, !3121}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !954, file: !955, line: 13, baseType: !958, size: 384)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !959, line: 17, size: 384, elements: !960)
!959 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!960 = !{!961, !962, !963, !970}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !958, file: !959, line: 18, baseType: !109, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !958, file: !959, line: 19, baseType: !109, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !958, file: !959, line: 20, baseType: !964, size: 192, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !965, line: 41, baseType: !966)
!965 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !965, line: 37, size: 192, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !966, file: !965, line: 38, baseType: !207, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !966, file: !965, line: 39, baseType: !177, size: 128, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !958, file: !959, line: 22, baseType: !971, size: 128, align: 64, offset: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !178, line: 232, size: 128, align: 64, elements: !972)
!972 = !{!973, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !971, file: !178, line: 233, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !971, file: !178, line: 234, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !974}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !954, file: !955, line: 14, baseType: !980, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !954, file: !955, line: 15, baseType: !982, size: 64, offset: 448)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !983, line: 16, size: 64, elements: !984)
!983 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !982, file: !983, line: 17, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !633, line: 746, size: 58368, elements: !988)
!988 = !{!989, !997, !998, !999, !1005, !1006, !1007, !1008, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1086, !1097, !1192, !1196, !1199, !1230, !1231, !1232, !1233, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1262, !1263, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1280, !1281, !1288, !1289, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2278, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2293, !2294, !2295, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2327, !2333, !2334, !2335, !2336, !2337, !2341, !2344, !2351, !2356, !2359, !2362, !2365, !2369, !2509, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2549, !2550, !2551, !2560, !2568, !2569, !2570, !2571, !2572, !2577, !2578, !2579, !2582, !2583, !2586, !2589, !2592, !2600, !2603, !2604, !2690, !2691, !2692, !2693, !2694, !2700, !2701, !2702, !2703, !2706, !2707, !2710, !2713, !2714, !2717, !2718, !2719, !2722, !2723, !2724, !2725, !2726, !2727, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2759, !2760, !2766, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2778, !2850, !2852, !2853, !2854, !2855, !2856, !2868, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2897, !2898, !2899}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !987, file: !633, line: 752, baseType: !990, size: 192)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !991, line: 56, size: 192, elements: !992)
!991 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!992 = !{!993, !994, !995, !996}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !990, file: !991, line: 57, baseType: !327, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !990, file: !991, line: 58, baseType: !327, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !990, file: !991, line: 59, baseType: !427, size: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !990, file: !991, line: 61, baseType: !427, size: 32, offset: 160)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !987, file: !633, line: 754, baseType: !7, size: 32, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !987, file: !633, line: 767, baseType: !349, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !987, file: !633, line: 768, baseType: !1000, size: 32, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1001, line: 113, baseType: !1002)
!1001 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1001, line: 111, size: 32, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1002, file: !1001, line: 112, baseType: !227, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !633, line: 770, baseType: !7, size: 32, offset: 352)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !987, file: !633, line: 771, baseType: !7, size: 32, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !987, file: !633, line: 774, baseType: !109, size: 32, offset: 416)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !987, file: !633, line: 775, baseType: !1009, size: 128, offset: 448)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1010, line: 58, size: 128, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1011 = !{!1012, !1018, !1023, !1024}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1009, file: !1010, line: 59, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1014, line: 60, size: 64, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1013, file: !1014, line: 61, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1010, line: 60, baseType: !1019, size: 32, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 60, size: 32, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1019, file: !1010, line: 61, baseType: !7, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1019, file: !1010, line: 62, baseType: !227, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1009, file: !1010, line: 65, baseType: !245, size: 16, offset: 96)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1009, file: !1010, line: 65, baseType: !245, size: 16, offset: 112)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !987, file: !633, line: 776, baseType: !7, size: 32, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !987, file: !633, line: 777, baseType: !327, size: 64, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !987, file: !633, line: 778, baseType: !986, size: 64, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !987, file: !633, line: 787, baseType: !109, size: 32, offset: 768)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !987, file: !633, line: 788, baseType: !109, size: 32, offset: 800)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !987, file: !633, line: 790, baseType: !109, size: 32, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !987, file: !633, line: 792, baseType: !109, size: 32, offset: 864)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !987, file: !633, line: 793, baseType: !109, size: 32, offset: 896)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !987, file: !633, line: 794, baseType: !109, size: 32, offset: 928)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !987, file: !633, line: 795, baseType: !7, size: 32, offset: 960)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !987, file: !633, line: 797, baseType: !1036, size: 2048, offset: 1024)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !633, line: 551, size: 2048, elements: !1037)
!1037 = !{!1038, !1043, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1065, !1068, !1069, !1070}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1036, file: !633, line: 553, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !633, line: 411, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1039, file: !633, line: 412, baseType: !327, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1039, file: !633, line: 413, baseType: !427, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1036, file: !633, line: 554, baseType: !1044, size: 192, align: 64, offset: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1045, line: 5, size: 192, align: 64, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1046 = !{!1047, !1048, !1050}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1044, file: !1045, line: 6, baseType: !327, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1044, file: !1045, line: 7, baseType: !1049, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1044, file: !1045, line: 8, baseType: !1049, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1036, file: !633, line: 555, baseType: !431, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1036, file: !633, line: 556, baseType: !431, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1036, file: !633, line: 558, baseType: !177, size: 128, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1036, file: !633, line: 559, baseType: !7, size: 32, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1036, file: !633, line: 561, baseType: !431, size: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1036, file: !633, line: 562, baseType: !431, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1036, file: !633, line: 563, baseType: !431, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1036, file: !633, line: 564, baseType: !431, size: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1036, file: !633, line: 565, baseType: !668, size: 64, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1036, file: !633, line: 566, baseType: !431, size: 64, offset: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1036, file: !633, line: 568, baseType: !431, size: 64, offset: 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1036, file: !633, line: 571, baseType: !109, size: 32, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1036, file: !633, line: 572, baseType: !1064, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1036, file: !633, line: 574, baseType: !1066, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !633, line: 49, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1036, file: !633, line: 576, baseType: !1066, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1036, file: !633, line: 578, baseType: !327, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1036, file: !633, line: 588, baseType: !1071, size: 512, align: 512, offset: 1536)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !633, line: 497, size: 512, align: 512, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1071, file: !633, line: 498, baseType: !431, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1071, file: !633, line: 499, baseType: !431, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1071, file: !633, line: 500, baseType: !431, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1071, file: !633, line: 501, baseType: !427, size: 32, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1071, file: !633, line: 502, baseType: !427, size: 32, offset: 224)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1071, file: !633, line: 503, baseType: !327, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1071, file: !633, line: 504, baseType: !327, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1071, file: !633, line: 505, baseType: !327, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1071, file: !633, line: 506, baseType: !1082, size: 64, align: 64, offset: 448)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !633, line: 445, size: 64, align: 64, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1082, file: !633, line: 446, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1082, file: !633, line: 447, baseType: !7, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !987, file: !633, line: 798, baseType: !1087, size: 384, offset: 3072)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !633, line: 592, size: 384, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1087, file: !633, line: 593, baseType: !177, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1087, file: !633, line: 594, baseType: !327, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1087, file: !633, line: 595, baseType: !327, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1087, file: !633, line: 596, baseType: !7, size: 32, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1087, file: !633, line: 597, baseType: !247, size: 16, offset: 288)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1087, file: !633, line: 598, baseType: !247, size: 16, offset: 304)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1087, file: !633, line: 600, baseType: !1096, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !987, file: !633, line: 799, baseType: !1098, size: 1792, offset: 3456)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !633, line: 610, size: 1792, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1189, !1190}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1098, file: !633, line: 611, baseType: !1044, size: 192, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1098, file: !633, line: 618, baseType: !431, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1098, file: !633, line: 619, baseType: !431, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1098, file: !633, line: 620, baseType: !431, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1098, file: !633, line: 621, baseType: !431, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1098, file: !633, line: 622, baseType: !431, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1098, file: !633, line: 629, baseType: !668, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1098, file: !633, line: 630, baseType: !431, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1098, file: !633, line: 631, baseType: !7, size: 32, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1098, file: !633, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1098, file: !633, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1098, file: !633, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1098, file: !633, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1098, file: !633, line: 662, baseType: !1114, size: 512, offset: 704)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1115)
!1115 = !{!1116, !1124, !1125, !1130, !1185, !1186, !1187, !1188}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1114, file: !25, line: 119, baseType: !1117, size: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1118, line: 9, size: 256, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1117, file: !1118, line: 10, baseType: !1044, size: 192, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1117, file: !1118, line: 11, baseType: !1122, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1123, line: 29, baseType: !668)
!1123 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1114, file: !25, line: 120, baseType: !1122, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1114, file: !25, line: 121, baseType: !1126, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!24, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1114, file: !25, line: 122, baseType: !1131, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1133)
!1133 = !{!1134, !1159, !1160, !1163, !1168, !1169, !1180, !1184}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1132, file: !25, line: 160, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1136, file: !25, line: 216, baseType: !671, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1136, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1136, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1136, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1136, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1136, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1136, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1136, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1136, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1136, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1136, file: !25, line: 227, baseType: !247, size: 16, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1136, file: !25, line: 228, baseType: !247, size: 16, offset: 208)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1136, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1136, file: !25, line: 235, baseType: !1122, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1136, file: !25, line: 236, baseType: !1129, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1136, file: !25, line: 237, baseType: !1122, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1136, file: !25, line: 238, baseType: !1129, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1136, file: !25, line: 239, baseType: !1156, size: 4096, align: 512, offset: 512)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 4096, align: 512, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 8)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1132, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1132, file: !25, line: 162, baseType: !1161, size: 32, offset: 96)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !178, line: 32, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !311, line: 96, baseType: !109)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1132, file: !25, line: 163, baseType: !1164, size: 32, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !400, line: 274, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !400, line: 274, size: 32, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1165, file: !400, line: 274, baseType: !404, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1132, file: !25, line: 164, baseType: !1129, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1132, file: !25, line: 165, baseType: !1170, size: 128, offset: 256)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1118, line: 14, size: 128, elements: !1171)
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1170, file: !1118, line: 15, baseType: !1173, size: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1045, line: 26, size: 128, elements: !1174)
!1174 = !{!1175, !1179}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1173, file: !1045, line: 27, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1045, line: 12, size: 64, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1176, file: !1045, line: 13, baseType: !1049, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1173, file: !1045, line: 28, baseType: !1049, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1132, file: !25, line: 166, baseType: !1181, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1122}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1132, file: !25, line: 167, baseType: !1122, size: 64, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1114, file: !25, line: 123, baseType: !235, size: 8, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1114, file: !25, line: 124, baseType: !235, size: 8, offset: 456)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1114, file: !25, line: 125, baseType: !235, size: 8, offset: 464)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1114, file: !25, line: 126, baseType: !235, size: 8, offset: 472)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1098, file: !633, line: 671, baseType: !1114, size: 512, offset: 1216)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1098, file: !633, line: 679, baseType: !1191, size: 64, offset: 1728)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !987, file: !633, line: 800, baseType: !1193, size: 64, offset: 5248)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !633, line: 800, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !987, file: !633, line: 809, baseType: !1197, size: 64, offset: 5312)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !633, line: 70, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !987, file: !633, line: 825, baseType: !1200, size: 2048, align: 512, offset: 5632)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !633, line: 509, size: 2048, align: 512, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1200, file: !633, line: 511, baseType: !431, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1200, file: !633, line: 512, baseType: !431, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1200, file: !633, line: 513, baseType: !431, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1200, file: !633, line: 514, baseType: !431, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1200, file: !633, line: 515, baseType: !431, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1200, file: !633, line: 516, baseType: !431, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1200, file: !633, line: 518, baseType: !431, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1200, file: !633, line: 519, baseType: !431, size: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1200, file: !633, line: 520, baseType: !668, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1200, file: !633, line: 522, baseType: !431, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1200, file: !633, line: 523, baseType: !431, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1200, file: !633, line: 524, baseType: !668, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1200, file: !633, line: 526, baseType: !668, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1200, file: !633, line: 527, baseType: !431, size: 64, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1200, file: !633, line: 529, baseType: !431, size: 64, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1200, file: !633, line: 530, baseType: !431, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1200, file: !633, line: 531, baseType: !431, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1200, file: !633, line: 532, baseType: !431, size: 64, offset: 1088)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1200, file: !633, line: 533, baseType: !431, size: 64, offset: 1152)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1200, file: !633, line: 535, baseType: !431, size: 64, offset: 1216)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1200, file: !633, line: 536, baseType: !431, size: 64, offset: 1280)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1200, file: !633, line: 537, baseType: !431, size: 64, offset: 1344)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1200, file: !633, line: 538, baseType: !431, size: 64, offset: 1408)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1200, file: !633, line: 539, baseType: !431, size: 64, offset: 1472)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1200, file: !633, line: 540, baseType: !431, size: 64, offset: 1536)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1200, file: !633, line: 541, baseType: !431, size: 64, offset: 1600)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1200, file: !633, line: 542, baseType: !431, size: 64, offset: 1664)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1200, file: !633, line: 543, baseType: !431, size: 64, offset: 1728)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !987, file: !633, line: 833, baseType: !7, size: 32, offset: 7680)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !987, file: !633, line: 836, baseType: !7, size: 32, offset: 7712)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !987, file: !633, line: 837, baseType: !109, size: 32, offset: 7744)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !987, file: !633, line: 838, baseType: !1234, size: 64, offset: 7808)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1237, line: 19, baseType: !1238)
!1237 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1237, line: 19, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1238, file: !1237, line: 19, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: 1)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !987, file: !633, line: 839, baseType: !1245, size: 64, offset: 7872)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !987, file: !633, line: 840, baseType: !1236, size: 64, offset: 7936)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !987, file: !633, line: 841, baseType: !349, size: 64, offset: 8000)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !987, file: !633, line: 843, baseType: !247, size: 16, offset: 8064)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !987, file: !633, line: 845, baseType: !247, size: 16, offset: 8080)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !987, file: !633, line: 848, baseType: !109, size: 32, offset: 8096)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !987, file: !633, line: 849, baseType: !1252, size: 32, offset: 8128)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !633, line: 718, size: 32, elements: !1253)
!1253 = !{!1254, !1261}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1252, file: !633, line: 724, baseType: !1255, size: 32)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !633, line: 719, size: 32, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1255, file: !633, line: 720, baseType: !235, size: 8)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1255, file: !633, line: 721, baseType: !235, size: 8, offset: 8)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1255, file: !633, line: 722, baseType: !235, size: 8, offset: 16)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1255, file: !633, line: 723, baseType: !235, size: 8, offset: 24)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1252, file: !633, line: 725, baseType: !427, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !987, file: !633, line: 850, baseType: !177, size: 128, offset: 8192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !987, file: !633, line: 851, baseType: !1264, size: 64, offset: 8320)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !633, line: 60, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !987, file: !633, line: 855, baseType: !327, size: 64, offset: 8384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !987, file: !633, line: 856, baseType: !235, size: 8, offset: 8448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !987, file: !633, line: 857, baseType: !235, size: 8, offset: 8456)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !987, file: !633, line: 858, baseType: !109, size: 32, offset: 8480)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !987, file: !633, line: 859, baseType: !177, size: 128, offset: 8512)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !987, file: !633, line: 860, baseType: !109, size: 32, offset: 8640)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !987, file: !633, line: 861, baseType: !177, size: 128, offset: 8704)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !987, file: !633, line: 873, baseType: !1274, size: 256, offset: 8832)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !633, line: 376, size: 256, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1274, file: !633, line: 381, baseType: !327, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1274, file: !633, line: 384, baseType: !433, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1274, file: !633, line: 389, baseType: !433, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1274, file: !633, line: 392, baseType: !433, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !987, file: !633, line: 875, baseType: !177, size: 128, offset: 9088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !987, file: !633, line: 877, baseType: !1282, size: 320, offset: 9216)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1283, line: 86, size: 320, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1282, file: !1283, line: 87, baseType: !109, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1282, file: !1283, line: 88, baseType: !177, size: 128, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1282, file: !1283, line: 89, baseType: !177, size: 128, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !987, file: !633, line: 878, baseType: !1044, size: 192, align: 64, offset: 9536)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !987, file: !633, line: 881, baseType: !1290, size: 64, offset: 9728)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1292)
!1292 = !{!1293, !2197}
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !38, line: 734, baseType: !1294, size: 10240)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !38, line: 734, size: 10240, elements: !1295)
!1295 = !{!1296, !1300, !1313, !2061, !2062, !2063, !2064, !2065, !2066, !2073, !2074, !2075, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2114, !2116, !2119, !2166, !2167, !2168, !2171, !2172, !2173, !2176, !2177, !2178, !2184, !2185}
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !38, line: 739, baseType: !1297, size: 512, align: 512)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !38, line: 739, size: 512, align: 512, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1297, file: !38, line: 747, baseType: !227, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1294, file: !38, line: 750, baseType: !1301, size: 128, offset: 512)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1302, line: 218, size: 128, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1303 = !{!1304, !1311, !1312}
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1302, line: 219, baseType: !1305, size: 32)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !1302, line: 219, size: 32, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1305, file: !1302, line: 220, baseType: !207, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1305, file: !1302, line: 221, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1302, line: 197, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1302, line: 197, elements: !562)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1301, file: !1302, line: 223, baseType: !7, size: 32, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1301, file: !1302, line: 224, baseType: !349, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1294, file: !38, line: 752, baseType: !1314, size: 64, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!327, !1317, !327, !327, !327, !327}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1319)
!1319 = !{!1320, !1326, !1327, !1329, !1330, !1331, !1332, !1333, !1385, !1580, !1589, !1590, !1591, !2051, !2052, !2053, !2054, !2056, !2057, !2060}
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !14, line: 995, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !14, line: 995, size: 128, elements: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1321, file: !14, line: 996, baseType: !1013, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1321, file: !14, line: 997, baseType: !971, size: 128, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1321, file: !14, line: 998, baseType: !7, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1318, file: !14, line: 1005, baseType: !207, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1318, file: !14, line: 1006, baseType: !1328, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !178, line: 156, baseType: !7)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1318, file: !14, line: 1007, baseType: !662, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1318, file: !14, line: 1008, baseType: !658, size: 256, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1318, file: !14, line: 1009, baseType: !519, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1318, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1318, file: !14, line: 1011, baseType: !1334, size: 256, offset: 640)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1335)
!1335 = !{!1336, !1357, !1381, !1382, !1383, !1384}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !14, line: 949, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1338, line: 34, baseType: !1339)
!1338 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1338, line: 25, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1339, file: !1338, line: 26, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1343, line: 27, baseType: !1344)
!1343 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1343, line: 13, size: 64, elements: !1345)
!1345 = !{!1346, !1356}
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !1343, line: 14, baseType: !1347, size: 32)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !1343, line: 14, size: 32, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1347, file: !1343, line: 15, baseType: !227, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !1343, line: 16, baseType: !1351, size: 32)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !1343, line: 16, size: 32, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1351, file: !1343, line: 18, baseType: !235, size: 8)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1351, file: !1343, line: 19, baseType: !1355, size: 24, offset: 8)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 24, elements: !278)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1344, file: !1343, line: 26, baseType: !219, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1334, file: !14, line: 950, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1368, !1369, !1370, !1371}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1359, file: !30, line: 61, baseType: !1000, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1359, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !30, line: 63, baseType: !207, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1359, file: !30, line: 65, baseType: !1365, size: 256, offset: 128)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 256, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 4)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1359, file: !30, line: 66, baseType: !550, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1359, file: !30, line: 68, baseType: !964, size: 192, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1359, file: !30, line: 69, baseType: !971, size: 128, align: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1359, file: !30, line: 70, baseType: !1372, offset: 768)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, elements: !1379)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1373, file: !30, line: 55, baseType: !109, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1373, file: !30, line: 56, baseType: !1377, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1379 = !{!1380}
!1380 = !DISubrange(count: -1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1334, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1334, file: !14, line: 952, baseType: !364, size: 32, offset: 160)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1334, file: !14, line: 952, baseType: !364, size: 32, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1334, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1318, file: !14, line: 1012, baseType: !1386, size: 64, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1389, line: 110, size: 1472, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1407, !1408, !1409, !1410, !1411, !1412, !1525, !1526, !1527, !1528, !1529, !1560, !1563, !1567, !1575}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1388, file: !1389, line: 111, baseType: !662, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1388, file: !1389, line: 112, baseType: !364, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1388, file: !1389, line: 113, baseType: !373, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1388, file: !1389, line: 114, baseType: !364, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1388, file: !1389, line: 115, baseType: !373, size: 32, offset: 160)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1388, file: !1389, line: 116, baseType: !364, size: 32, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1388, file: !1389, line: 117, baseType: !373, size: 32, offset: 224)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1388, file: !1389, line: 118, baseType: !364, size: 32, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1388, file: !1389, line: 119, baseType: !373, size: 32, offset: 288)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1388, file: !1389, line: 120, baseType: !7, size: 32, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1388, file: !1389, line: 121, baseType: !1402, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1403, line: 24, baseType: !1404)
!1403 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1403, line: 24, size: 64, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1404, file: !1403, line: 24, baseType: !431, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1388, file: !1389, line: 122, baseType: !1402, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1388, file: !1389, line: 123, baseType: !1402, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1388, file: !1389, line: 124, baseType: !1402, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1388, file: !1389, line: 125, baseType: !1402, size: 64, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1388, file: !1389, line: 127, baseType: !239, size: 8, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1388, file: !1389, line: 129, baseType: !1413, size: 64, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1415, line: 195, size: 1728, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1416 = !{!1417, !1418, !1423, !1428, !1429, !1432, !1433, !1438, !1439, !1440, !1441, !1444, !1445, !1446, !1448, !1449, !1489, !1510}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1414, file: !1415, line: 196, baseType: !1000, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1414, file: !1415, line: 197, baseType: !1419, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1415, line: 28, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !178, line: 104, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !236, line: 20, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !238, line: 26, baseType: !109)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 198, baseType: !1424, size: 192, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 198, size: 192, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1424, file: !1415, line: 199, baseType: !177, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1424, file: !1415, line: 200, baseType: !1044, size: 192, align: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1414, file: !1415, line: 205, baseType: !871, size: 320, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1414, file: !1415, line: 206, baseType: !1430, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1415, line: 206, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1414, file: !1415, line: 207, baseType: !349, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 208, baseType: !1434, size: 64, offset: 704)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 208, size: 64, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1434, file: !1415, line: 209, baseType: !711, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1434, file: !1415, line: 210, baseType: !711, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1414, file: !1415, line: 212, baseType: !711, size: 64, offset: 768)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1414, file: !1415, line: 213, baseType: !364, size: 32, offset: 832)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1414, file: !1415, line: 214, baseType: !373, size: 32, offset: 864)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1414, file: !1415, line: 215, baseType: !1442, size: 32, offset: 896)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1415, line: 31, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !178, line: 110, baseType: !427)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1414, file: !1415, line: 216, baseType: !247, size: 16, offset: 928)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1414, file: !1415, line: 217, baseType: !247, size: 16, offset: 944)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1414, file: !1415, line: 221, baseType: !1447, size: 16, offset: 960)
!1447 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !1415, line: 228, baseType: !327, size: 64, offset: 1024)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 245, baseType: !1450, size: 320, offset: 1088)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 245, size: 320, elements: !1451)
!1451 = !{!1452, !1481}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1450, file: !1415, line: 246, baseType: !1453, size: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1415, line: 114, size: 320, elements: !1454)
!1454 = !{!1455, !1456, !1468, !1471, !1480}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1453, file: !1415, line: 116, baseType: !327, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1415, line: 117, baseType: !1457, size: 64, offset: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1415, line: 117, size: 64, elements: !1458)
!1458 = !{!1459, !1467}
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1415, line: 118, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !1415, line: 118, size: 64, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1460, file: !1415, line: 120, baseType: !245, size: 16)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1460, file: !1415, line: 121, baseType: !1464, size: 48, offset: 16)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 48, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 6)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1457, file: !1415, line: 127, baseType: !327, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1453, file: !1415, line: 129, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1415, line: 102, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1453, file: !1415, line: 130, baseType: !1472, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1415, line: 108, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1473, file: !1415, line: 109, baseType: !971, size: 128, align: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1473, file: !1415, line: 110, baseType: !1000, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1473, file: !1415, line: 111, baseType: !1478, size: 8, offset: 160)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !178, line: 35, baseType: !1479)
!1479 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1453, file: !1415, line: 131, baseType: !196, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1415, line: 247, baseType: !1482, size: 320)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !1415, line: 247, size: 320, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1482, file: !1415, line: 248, baseType: !327, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1482, file: !1415, line: 249, baseType: !327, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1482, file: !1415, line: 250, baseType: !1469, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1482, file: !1415, line: 251, baseType: !1472, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1482, file: !1415, line: 252, baseType: !277, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 260, baseType: !1490, size: 256, offset: 1408)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 260, size: 256, elements: !1491)
!1491 = !{!1492, !1498}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1490, file: !1415, line: 261, baseType: !1493, size: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1415, line: 134, size: 256, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1493, file: !1415, line: 135, baseType: !349, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1493, file: !1415, line: 136, baseType: !1497, size: 256)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !1366)
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !1415, line: 262, baseType: !1499, size: 256)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !1415, line: 262, size: 256, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1499, file: !1415, line: 264, baseType: !177, size: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1499, file: !1415, line: 265, baseType: !1503, size: 128, offset: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1504, line: 22, size: 128, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1505 = !{!1506, !1509}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1503, file: !1504, line: 23, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1504, line: 23, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1503, file: !1504, line: 24, baseType: !327, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1414, file: !1415, line: 280, baseType: !1511, size: 64, offset: 1664)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1415, line: 176, size: 192, elements: !1513)
!1513 = !{!1514, !1523, !1524}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1512, file: !1415, line: 177, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1415, line: 171, baseType: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!109, !1413, !1519, !1521, !1413}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1512, file: !1415, line: 178, baseType: !1413, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1512, file: !1415, line: 179, baseType: !1469, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1388, file: !1389, line: 130, baseType: !1413, size: 64, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1388, file: !1389, line: 131, baseType: !1413, size: 64, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1388, file: !1389, line: 132, baseType: !1413, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1388, file: !1389, line: 135, baseType: !349, size: 64, offset: 1024)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1388, file: !1389, line: 137, baseType: !1530, size: 64, offset: 1088)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1532, line: 14, size: 1088, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1533 = !{!1534, !1535, !1544, !1545, !1546, !1547, !1548, !1549}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1531, file: !1532, line: 15, baseType: !1000, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1531, file: !1532, line: 17, baseType: !1536, size: 320, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1537, line: 22, size: 320, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1538 = !{!1539, !1540, !1541, !1542}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !1537, line: 23, baseType: !671, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1536, file: !1537, line: 24, baseType: !668, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1536, file: !1537, line: 26, baseType: !177, size: 128, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1536, file: !1537, line: 28, baseType: !1543, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1531, file: !1532, line: 19, baseType: !327, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1531, file: !1532, line: 20, baseType: !662, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1531, file: !1532, line: 23, baseType: !554, size: 128, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1531, file: !1532, line: 24, baseType: !364, size: 32, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1531, file: !1532, line: 29, baseType: !662, size: 64, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1531, file: !1532, line: 36, baseType: !1550, size: 320, offset: 768)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1551, line: 15, size: 320, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !1551, line: 16, baseType: !671, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1550, file: !1551, line: 18, baseType: !109, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1550, file: !1551, line: 19, baseType: !109, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1550, file: !1551, line: 20, baseType: !109, size: 32, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1550, file: !1551, line: 21, baseType: !109, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1550, file: !1551, line: 22, baseType: !327, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !1551, line: 23, baseType: !327, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1388, file: !1389, line: 138, baseType: !1561, size: 64, offset: 1152)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !365, line: 18, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1388, file: !1389, line: 139, baseType: !1564, size: 64, offset: 1216)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1566, line: 16, flags: DIFlagFwdDecl)
!1566 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1388, file: !1389, line: 140, baseType: !1568, size: 64, offset: 1280)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1389, line: 25, size: 64, elements: !1570)
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1569, file: !1389, line: 26, baseType: !227, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1569, file: !1389, line: 27, baseType: !109, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1569, file: !1389, line: 28, baseType: !1574, offset: 64)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, elements: !1379)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 142, baseType: !1576, size: 128, offset: 1344)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 142, size: 128, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1576, file: !1389, line: 143, baseType: !109, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1576, file: !1389, line: 144, baseType: !971, size: 128, align: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1318, file: !14, line: 1013, baseType: !1581, size: 256, offset: 960)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1581, file: !14, line: 971, baseType: !327, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1581, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1581, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1581, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1581, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1581, file: !14, line: 976, baseType: !519, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1318, file: !14, line: 1014, baseType: !783, size: 128, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1318, file: !14, line: 1015, baseType: !358, size: 64, offset: 1344)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1318, file: !14, line: 1016, baseType: !1592, size: 64, offset: 1408)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1595)
!1595 = !{!1596, !1597, !1601, !1606, !1610, !1639, !1640, !1646, !1659, !1667, !1671, !1672, !1973, !1974, !1978, !1983, !1984, !1988, !1992, !1998, !1999, !2003, !2004, !2010, !2014, !2018, !2024, !2028, !2032, !2036, !2040, !2041, !2047}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1594, file: !14, line: 1915, baseType: !172, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1594, file: !14, line: 1916, baseType: !1598, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!519, !1317, !519, !109}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1594, file: !14, line: 1917, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!309, !1317, !277, !324, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1594, file: !14, line: 1918, baseType: !1607, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!309, !1317, !196, !324, !1605}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1594, file: !14, line: 1919, baseType: !1611, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!309, !1614, !1636}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1623, !1624, !1625, !1626}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1615, file: !14, line: 374, baseType: !1317, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1615, file: !14, line: 375, baseType: !519, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1615, file: !14, line: 376, baseType: !1620, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1614, !313}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1615, file: !14, line: 377, baseType: !349, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1615, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1615, file: !14, line: 379, baseType: !245, size: 16, offset: 288)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !14, line: 380, baseType: !1627, size: 64, offset: 320)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !14, line: 380, size: 64, elements: !1628)
!1628 = !{!1629, !1632}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1627, file: !14, line: 386, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1627, file: !14, line: 395, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!309, !349}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1638, line: 17, flags: DIFlagFwdDecl)
!1638 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1594, file: !14, line: 1920, baseType: !1611, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1594, file: !14, line: 1921, baseType: !1641, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!109, !1614, !1644, !7}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1594, file: !14, line: 1923, baseType: !1647, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!109, !1317, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1652)
!1652 = !{!1653, !1658}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1651, file: !14, line: 1859, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1478, !1650, !196, !109, !519, !431, !7}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1651, file: !14, line: 1860, baseType: !519, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1594, file: !14, line: 1924, baseType: !1660, size: 64, offset: 512)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1663, !1317, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1664, line: 59, baseType: !7)
!1664 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !534, line: 31, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1594, file: !14, line: 1925, baseType: !1668, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!313, !1317, !7, !327}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1594, file: !14, line: 1926, baseType: !1668, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1594, file: !14, line: 1927, baseType: !1673, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!109, !1317, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1678)
!1678 = !{!1679, !1688, !1689, !1697, !1704, !1705, !1710, !1711, !1716, !1717, !1720, !1966, !1967, !1968, !1969, !1970, !1971}
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !38, line: 628, baseType: !1680, size: 128)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !38, line: 628, size: 128, elements: !1681)
!1681 = !{!1682, !1687}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !38, line: 629, baseType: !1683, size: 128)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !38, line: 629, size: 128, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1683, file: !38, line: 631, baseType: !327, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1683, file: !38, line: 632, baseType: !327, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1680, file: !38, line: 635, baseType: !971, size: 128, align: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1677, file: !38, line: 639, baseType: !1290, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1677, file: !38, line: 640, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1691, line: 297, baseType: !1692)
!1691 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1691, line: 297, size: 64, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1692, file: !1691, line: 297, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1696, line: 19, baseType: !327)
!1696 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !38, line: 646, baseType: !1698, size: 64, offset: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !38, line: 646, size: 64, elements: !1699)
!1699 = !{!1700, !1703}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1698, file: !38, line: 647, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !327)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1698, file: !38, line: 648, baseType: !1702, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1677, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1677, file: !38, line: 667, baseType: !1706, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1707, file: !38, line: 580, baseType: !871, size: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1677, file: !38, line: 670, baseType: !1478, size: 8, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1677, file: !38, line: 681, baseType: !1712, size: 256, offset: 512)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !38, line: 678, size: 256, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1712, file: !38, line: 679, baseType: !1044, size: 192, align: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1712, file: !38, line: 680, baseType: !327, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1677, file: !38, line: 689, baseType: !177, size: 128, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1677, file: !38, line: 691, baseType: !1718, size: 64, offset: 896)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1677, file: !38, line: 694, baseType: !1721, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1724, line: 563, size: 1024, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1725 = !{!1726, !1730, !1731, !1735, !1739, !1743, !1930, !1934, !1938, !1942, !1943, !1944, !1948, !1952, !1958, !1962}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1723, file: !1724, line: 564, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1676}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1723, file: !1724, line: 569, baseType: !1727, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1723, file: !1724, line: 571, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!109, !1676, !327}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1723, file: !1724, line: 572, baseType: !1736, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!109, !1676}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1723, file: !1724, line: 578, baseType: !1740, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!109, !1676, !327, !327, !327}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1723, file: !1724, line: 580, baseType: !1744, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1724, line: 512, size: 896, elements: !1750)
!1750 = !{!1751, !1759, !1760, !1767, !1774, !1784, !1923, !1924, !1926, !1928}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !1724, line: 513, baseType: !1752, size: 320)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1724, line: 513, size: 320, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1752, file: !1724, line: 514, baseType: !1676, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1752, file: !1724, line: 515, baseType: !723, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1752, file: !1724, line: 516, baseType: !327, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1752, file: !1724, line: 517, baseType: !327, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1752, file: !1724, line: 518, baseType: !327, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !1724, line: 520, baseType: !37, size: 32, offset: 320)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1749, file: !1724, line: 522, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1696, line: 22, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 22, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1763, file: !1696, line: 22, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1696, line: 15, baseType: !327)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1749, file: !1724, line: 524, baseType: !1768, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1691, line: 372, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1691, line: 372, size: 64, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1770, file: !1691, line: 372, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1696, line: 16, baseType: !327)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !1724, line: 527, baseType: !1775, size: 64, offset: 512)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1749, file: !1724, line: 527, size: 64, elements: !1776)
!1776 = !{!1777, !1783}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1775, file: !1724, line: 528, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1696, line: 21, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 21, size: 64, elements: !1780)
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1779, file: !1696, line: 21, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1696, line: 14, baseType: !327)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1775, file: !1724, line: 529, baseType: !1762, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1749, file: !1724, line: 534, baseType: !1785, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1787)
!1787 = !{!1788, !1789, !1917, !1922}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !38, line: 75, baseType: !327, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !38, line: 83, baseType: !1790, size: 320, offset: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !38, line: 83, size: 320, elements: !1791)
!1791 = !{!1792, !1813, !1827, !1831, !1916}
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !38, line: 84, baseType: !1793, size: 320)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !38, line: 84, size: 320, elements: !1794)
!1794 = !{!1795, !1806, !1807, !1812}
!1795 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !38, line: 90, baseType: !1796, size: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1793, file: !38, line: 90, size: 128, elements: !1797)
!1797 = !{!1798, !1799, !1804, !1805}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1796, file: !38, line: 91, baseType: !177, size: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !38, line: 94, baseType: !1800, size: 128)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !38, line: 94, size: 128, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1800, file: !38, line: 96, baseType: !349, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1800, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1796, file: !38, line: 102, baseType: !177, size: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1796, file: !38, line: 103, baseType: !177, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1793, file: !38, line: 106, baseType: !354, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !38, line: 107, baseType: !1808, size: 64, offset: 192)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1793, file: !38, line: 107, size: 64, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1808, file: !38, line: 108, baseType: !327, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1808, file: !38, line: 109, baseType: !327, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1793, file: !38, line: 117, baseType: !327, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !38, line: 119, baseType: !1814, size: 320)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !38, line: 119, size: 320, elements: !1815)
!1815 = !{!1816, !1817, !1820, !1821, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1814, file: !38, line: 124, baseType: !327, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1814, file: !38, line: 125, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1814, file: !38, line: 126, baseType: !327, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1814, file: !38, line: 127, baseType: !327, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !38, line: 128, baseType: !1823, size: 64, offset: 256)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1814, file: !38, line: 128, size: 64, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1823, file: !38, line: 133, baseType: !327, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1823, file: !38, line: 138, baseType: !662, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !38, line: 141, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !38, line: 141, size: 64, elements: !1829)
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1828, file: !38, line: 142, baseType: !327, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !38, line: 144, baseType: !1832, size: 128)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !38, line: 144, size: 128, elements: !1833)
!1833 = !{!1834, !1915}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1832, file: !38, line: 146, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1837)
!1837 = !{!1838, !1848, !1869, !1880, !1881, !1882, !1883, !1897, !1898, !1899}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1836, file: !54, line: 127, baseType: !1839, size: 384)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1840)
!1840 = !{!1841, !1842, !1844, !1845, !1846, !1847}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1839, file: !54, line: 22, baseType: !327, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1839, file: !54, line: 23, baseType: !1843, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1839, file: !54, line: 24, baseType: !1843, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1839, file: !54, line: 25, baseType: !327, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1839, file: !54, line: 26, baseType: !327, size: 64, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1839, file: !54, line: 27, baseType: !327, size: 64, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1836, file: !54, line: 128, baseType: !1849, size: 128, offset: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1850, line: 105, size: 128, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1849, file: !1850, line: 110, baseType: !327, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1849, file: !1850, line: 118, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1850, line: 95, size: 448, elements: !1856)
!1856 = !{!1857, !1858, !1864, !1865, !1866, !1867, !1868}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1855, file: !1850, line: 96, baseType: !662, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1855, file: !1850, line: 97, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1850, line: 60, baseType: !1861)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1855, file: !1850, line: 98, baseType: !1859, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1855, file: !1850, line: 99, baseType: !1478, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1855, file: !1850, line: 100, baseType: !1478, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1855, file: !1850, line: 101, baseType: !971, size: 128, align: 64, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1855, file: !1850, line: 102, baseType: !1863, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1836, file: !54, line: 129, baseType: !1870, size: 256, offset: 512)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1871, line: 26, size: 256, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1870, file: !1871, line: 27, baseType: !7, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1870, file: !1871, line: 28, baseType: !1875, size: 192, offset: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1876, line: 43, size: 192, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !1876, line: 44, baseType: !671, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1875, file: !1876, line: 45, baseType: !177, size: 128, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1836, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1836, file: !54, line: 132, baseType: !327, size: 64, offset: 832)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1836, file: !54, line: 133, baseType: !1884, size: 64, offset: 896)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1887)
!1887 = !{!1888, !1892, !1893}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1886, file: !54, line: 83, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1785}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1886, file: !54, line: 89, baseType: !1744, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1886, file: !54, line: 100, baseType: !1894, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!109, !1835, !327, !327, !109}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1836, file: !54, line: 134, baseType: !349, size: 64, offset: 960)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1836, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !54, line: 136, baseType: !1900, size: 128, offset: 1088)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1836, file: !54, line: 136, size: 128, elements: !1901)
!1901 = !{!1902, !1908}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1900, file: !54, line: 137, baseType: !1903, size: 128)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1904, line: 6, size: 128, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1903, file: !1904, line: 7, baseType: !431, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1903, file: !1904, line: 8, baseType: !431, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !54, line: 138, baseType: !1909)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !54, line: 138, elements: !1910)
!1910 = !{!1911, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1909, file: !54, line: 138, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1909, file: !54, line: 138, elements: !562)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1909, file: !54, line: 138, baseType: !1914)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1903, elements: !1379)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1832, file: !38, line: 147, baseType: !349, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1790, file: !38, line: 161, baseType: !971, size: 128, align: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !38, line: 164, baseType: !1918, size: 32, offset: 384)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !38, line: 164, size: 32, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1918, file: !38, line: 169, baseType: !227, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1918, file: !38, line: 177, baseType: !7, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1786, file: !38, line: 181, baseType: !227, size: 32, offset: 416)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1749, file: !1724, line: 535, baseType: !1785, size: 64, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1749, file: !1724, line: 541, baseType: !1925, size: 64, offset: 704)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1749, file: !1724, line: 545, baseType: !1927, size: 64, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1749, file: !1724, line: 549, baseType: !1929, size: 64, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1691, line: 520, baseType: !1785)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1723, file: !1724, line: 581, baseType: !1931, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1747, !1748, !7}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1723, file: !1724, line: 582, baseType: !1935, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1747, !1748, !327, !327}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1723, file: !1724, line: 584, baseType: !1939, size: 64, offset: 512)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!327, !1676}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1723, file: !1724, line: 588, baseType: !1744, size: 64, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1723, file: !1724, line: 591, baseType: !1744, size: 64, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1723, file: !1724, line: 597, baseType: !1945, size: 64, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!109, !1676, !327, !349, !109, !109}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1723, file: !1724, line: 603, baseType: !1949, size: 64, offset: 768)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!196, !1676}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1723, file: !1724, line: 613, baseType: !1953, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!109, !1676, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1723, file: !1724, line: 625, baseType: !1959, size: 64, offset: 896)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1956, !1676, !327}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1723, file: !1724, line: 633, baseType: !1963, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1785, !1676, !327}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1677, file: !38, line: 697, baseType: !327, size: 64, offset: 1024)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1677, file: !38, line: 699, baseType: !1317, size: 64, offset: 1088)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1677, file: !38, line: 700, baseType: !349, size: 64, offset: 1152)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1677, file: !38, line: 711, baseType: !662, size: 64, offset: 1216)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1677, file: !38, line: 717, baseType: !1956, size: 64, offset: 1280)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1677, file: !38, line: 722, baseType: !1972, offset: 1344)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !562)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1594, file: !14, line: 1928, baseType: !327, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1594, file: !14, line: 1929, baseType: !1975, size: 64, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!109, !358, !1317}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1594, file: !14, line: 1930, baseType: !1979, size: 64, offset: 896)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!109, !1317, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !349)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1594, file: !14, line: 1931, baseType: !1975, size: 64, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1594, file: !14, line: 1932, baseType: !1985, size: 64, offset: 1024)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!109, !1317, !519, !519, !109}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1594, file: !14, line: 1933, baseType: !1989, size: 64, offset: 1088)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!109, !109, !1317, !109}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1594, file: !14, line: 1934, baseType: !1993, size: 64, offset: 1152)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!109, !1317, !109, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1594, file: !14, line: 1935, baseType: !1314, size: 64, offset: 1216)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1594, file: !14, line: 1936, baseType: !2000, size: 64, offset: 1280)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!109, !109}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1594, file: !14, line: 1937, baseType: !1993, size: 64, offset: 1344)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1594, file: !14, line: 1938, baseType: !2005, size: 64, offset: 1408)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!309, !2008, !1317, !1605, !324, !7}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !633, line: 59, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1594, file: !14, line: 1939, baseType: !2011, size: 64, offset: 1472)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!309, !1317, !1605, !2008, !324, !7}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1594, file: !14, line: 1940, baseType: !2015, size: 64, offset: 1536)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1317}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1594, file: !14, line: 1941, baseType: !2019, size: 64, offset: 1600)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!109, !1317, !109, !2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1594, file: !14, line: 1942, baseType: !2025, size: 64, offset: 1664)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!313, !1317, !109, !519, !519}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1594, file: !14, line: 1944, baseType: !2029, size: 64, offset: 1728)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !631, !1317}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1594, file: !14, line: 1948, baseType: !2033, size: 64, offset: 1792)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!309, !1317, !519, !1317, !519, !324, !7}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1594, file: !14, line: 1950, baseType: !2037, size: 64, offset: 1856)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!519, !1317, !519, !1317, !519, !519, !7}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1594, file: !14, line: 1953, baseType: !1985, size: 64, offset: 1920)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1594, file: !14, line: 1954, baseType: !2042, size: 64, offset: 1984)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!109, !2045, !7}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1594, file: !14, line: 1955, baseType: !2048, size: 64, offset: 2048)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!109, !2045, !1644, !7}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1318, file: !14, line: 1018, baseType: !431, size: 64, offset: 1472)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1318, file: !14, line: 1020, baseType: !349, size: 64, offset: 1536)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1318, file: !14, line: 1023, baseType: !349, size: 64, offset: 1600)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1318, file: !14, line: 1027, baseType: !2055, size: 64, offset: 1664)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1318, file: !14, line: 1029, baseType: !354, size: 64, offset: 1728)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1318, file: !14, line: 1030, baseType: !2058, size: 32, offset: 1792)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2059, line: 8, baseType: !427)
!2059 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1318, file: !14, line: 1031, baseType: !2058, size: 32, offset: 1824)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1294, file: !38, line: 756, baseType: !327, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1294, file: !38, line: 757, baseType: !327, size: 64, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1294, file: !38, line: 760, baseType: !327, size: 64, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1294, file: !38, line: 761, baseType: !327, size: 64, offset: 896)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1294, file: !38, line: 763, baseType: !327, size: 64, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1294, file: !38, line: 764, baseType: !2067, size: 64, offset: 1024)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1691, line: 299, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1691, line: 299, size: 64, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2069, file: !1691, line: 299, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1696, line: 18, baseType: !327)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1294, file: !38, line: 773, baseType: !227, size: 32, offset: 1088)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1294, file: !38, line: 785, baseType: !227, size: 32, offset: 1120)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1294, file: !38, line: 795, baseType: !2076, size: 64, offset: 1152)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2077, file: !38, line: 727, baseType: !431, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2077, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1294, file: !38, line: 801, baseType: !327, size: 64, offset: 1216)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1294, file: !38, line: 804, baseType: !662, size: 64, offset: 1280)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1294, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1294, file: !38, line: 808, baseType: !207, size: 32, offset: 1376)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1294, file: !38, line: 823, baseType: !871, size: 320, offset: 1408)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1294, file: !38, line: 825, baseType: !177, size: 128, offset: 1728)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1294, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1294, file: !38, line: 849, baseType: !327, size: 64, offset: 1920)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1294, file: !38, line: 850, baseType: !327, size: 64, offset: 1984)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1294, file: !38, line: 852, baseType: !327, size: 64, offset: 2048)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1294, file: !38, line: 853, baseType: !327, size: 64, offset: 2112)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1294, file: !38, line: 854, baseType: !664, size: 64, offset: 2176)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1294, file: !38, line: 855, baseType: !327, size: 64, offset: 2240)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1294, file: !38, line: 856, baseType: !327, size: 64, offset: 2304)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1294, file: !38, line: 857, baseType: !327, size: 64, offset: 2368)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1294, file: !38, line: 858, baseType: !327, size: 64, offset: 2432)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1294, file: !38, line: 865, baseType: !404, size: 32, offset: 2496)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1294, file: !38, line: 867, baseType: !207, size: 32, offset: 2528)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1294, file: !38, line: 869, baseType: !327, size: 64, offset: 2560)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1294, file: !38, line: 869, baseType: !327, size: 64, offset: 2624)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1294, file: !38, line: 869, baseType: !327, size: 64, offset: 2688)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1294, file: !38, line: 869, baseType: !327, size: 64, offset: 2752)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1294, file: !38, line: 870, baseType: !327, size: 64, offset: 2816)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1294, file: !38, line: 870, baseType: !327, size: 64, offset: 2880)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1294, file: !38, line: 870, baseType: !327, size: 64, offset: 2944)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1294, file: !38, line: 871, baseType: !327, size: 64, offset: 3008)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1294, file: !38, line: 871, baseType: !327, size: 64, offset: 3072)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1294, file: !38, line: 871, baseType: !327, size: 64, offset: 3136)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1294, file: !38, line: 871, baseType: !327, size: 64, offset: 3200)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1294, file: !38, line: 873, baseType: !2111, size: 3328, offset: 3264)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 3328, elements: !2112)
!2112 = !{!2113}
!2113 = !DISubrange(count: 52)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1294, file: !38, line: 875, baseType: !2115, size: 1280, offset: 6592)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 1280, elements: !1366)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1294, file: !38, line: 877, baseType: !2117, size: 64, offset: 7872)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1294, file: !38, line: 880, baseType: !2120, size: 1088, offset: 7936)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2121, line: 72, baseType: !2122)
!2121 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2121, line: 23, size: 1088, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2131, !2132, !2133, !2134, !2161, !2162, !2163}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2122, file: !2121, line: 28, baseType: !431, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2122, file: !2121, line: 38, baseType: !664, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2122, file: !2121, line: 40, baseType: !327, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2122, file: !2121, line: 43, baseType: !871, size: 320, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2122, file: !2121, line: 44, baseType: !2129, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2121, line: 44, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2122, file: !2121, line: 48, baseType: !327, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2122, file: !2121, line: 59, baseType: !658, size: 256, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2122, file: !2121, line: 60, baseType: !349, size: 64, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2122, file: !2121, line: 61, baseType: !2135, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2137)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2138, line: 13, size: 1216, elements: !2139)
!2138 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2137, file: !2138, line: 14, baseType: !349, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2137, file: !2138, line: 15, baseType: !327, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2137, file: !2138, line: 17, baseType: !327, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2137, file: !2138, line: 17, baseType: !327, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2137, file: !2138, line: 18, baseType: !327, size: 64, offset: 256)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2137, file: !2138, line: 18, baseType: !327, size: 64, offset: 320)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2137, file: !2138, line: 19, baseType: !2147, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2137, file: !2138, line: 21, baseType: !313, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2137, file: !2138, line: 23, baseType: !313, size: 64, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2137, file: !2138, line: 24, baseType: !313, size: 64, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2137, file: !2138, line: 25, baseType: !313, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2137, file: !2138, line: 26, baseType: !313, size: 64, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2137, file: !2138, line: 27, baseType: !313, size: 64, offset: 768)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2137, file: !2138, line: 28, baseType: !313, size: 64, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2137, file: !2138, line: 29, baseType: !313, size: 64, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2137, file: !2138, line: 30, baseType: !313, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2137, file: !2138, line: 31, baseType: !313, size: 64, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2137, file: !2138, line: 32, baseType: !313, size: 64, offset: 1088)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2137, file: !2138, line: 33, baseType: !313, size: 64, offset: 1152)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2122, file: !2121, line: 63, baseType: !227, size: 32, offset: 1024)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2122, file: !2121, line: 69, baseType: !245, size: 16, offset: 1056)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2122, file: !2121, line: 70, baseType: !2164, size: 16, offset: 1072)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !236, line: 18, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !238, line: 23, baseType: !1447)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !38, line: 882, baseType: !327, size: 64, offset: 9024)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1294, file: !38, line: 885, baseType: !207, size: 32, offset: 9088)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1294, file: !38, line: 886, baseType: !2169, size: 64, offset: 9152)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1294, file: !38, line: 901, baseType: !1561, size: 64, offset: 9216)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1294, file: !38, line: 904, baseType: !1317, size: 64, offset: 9280)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1294, file: !38, line: 906, baseType: !2174, size: 64, offset: 9344)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1294, file: !38, line: 930, baseType: !227, size: 32, offset: 9408)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1294, file: !38, line: 933, baseType: !227, size: 32, offset: 9440)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1294, file: !38, line: 935, baseType: !2179, size: 64, offset: 9472)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2180)
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2179, file: !68, line: 104, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1294, file: !38, line: 940, baseType: !662, size: 64, offset: 9536)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1294, file: !38, line: 942, baseType: !2186, size: 256, offset: 9600)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2187, line: 98, size: 256, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2188 = !{!2189, !2190, !2191}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2186, file: !2187, line: 99, baseType: !662, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2186, file: !2187, line: 100, baseType: !177, size: 128, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2186, file: !2187, line: 101, baseType: !2192, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2187, line: 21, baseType: !2193)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !2196}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1291, file: !38, line: 986, baseType: !2198, offset: 10240)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !1379)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !987, file: !633, line: 882, baseType: !1290, size: 64, offset: 9792)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !987, file: !633, line: 884, baseType: !109, size: 32, offset: 9856)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !987, file: !633, line: 885, baseType: !109, size: 32, offset: 9888)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !987, file: !633, line: 886, baseType: !109, size: 32, offset: 9920)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !987, file: !633, line: 888, baseType: !109, size: 32, offset: 9952)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !987, file: !633, line: 890, baseType: !327, size: 64, offset: 9984)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !987, file: !633, line: 893, baseType: !7, size: 32, offset: 10048)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !987, file: !633, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !987, file: !633, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !987, file: !633, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !987, file: !633, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !987, file: !633, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !987, file: !633, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !987, file: !633, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !987, file: !633, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !987, file: !633, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !987, file: !633, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !987, file: !633, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !987, file: !633, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !987, file: !633, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !987, file: !633, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !987, file: !633, line: 969, baseType: !327, size: 64, offset: 10176)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !987, file: !633, line: 971, baseType: !2222, size: 448, offset: 10240)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2223)
!2223 = !{!2224, !2225, !2230}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2222, file: !62, line: 26, baseType: !327, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2222, file: !62, line: 27, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!313, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !62, line: 28, baseType: !2231, size: 320, offset: 128)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !62, line: 28, size: 320, elements: !2232)
!2232 = !{!2233, !2243, !2268}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2231, file: !62, line: 37, baseType: !2234, size: 320)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !62, line: 30, size: 320, elements: !2235)
!2235 = !{!2236, !2238, !2239, !2240, !2241, !2242}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2234, file: !62, line: 31, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2234, file: !62, line: 32, baseType: !427, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2234, file: !62, line: 33, baseType: !427, size: 32, offset: 96)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2234, file: !62, line: 34, baseType: !427, size: 32, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2234, file: !62, line: 35, baseType: !431, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2234, file: !62, line: 36, baseType: !2237, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2231, file: !62, line: 47, baseType: !2244, size: 192)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !62, line: 39, size: 192, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2267}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2244, file: !62, line: 40, baseType: !1161, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2244, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !62, line: 42, baseType: !2249, size: 64, offset: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !62, line: 42, size: 64, elements: !2250)
!2250 = !{!2251, !2259}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2249, file: !62, line: 43, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2254, line: 7, size: 128, elements: !2255)
!2254 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2255 = !{!2256, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2253, file: !2254, line: 8, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !311, line: 93, baseType: !521)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2253, file: !2254, line: 9, baseType: !521, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2249, file: !62, line: 44, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2262, line: 7, size: 64, elements: !2263)
!2262 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2263 = !{!2264, !2266}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2261, file: !2262, line: 8, baseType: !2265, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2262, line: 5, baseType: !1421)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2261, file: !2262, line: 9, baseType: !1421, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2244, file: !62, line: 46, baseType: !431, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2231, file: !62, line: 55, baseType: !2269, size: 256)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !62, line: 49, size: 256, elements: !2270)
!2270 = !{!2271, !2274, !2275, !2276, !2277}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2269, file: !62, line: 50, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2269, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2269, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2269, file: !62, line: 53, baseType: !327, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2269, file: !62, line: 54, baseType: !327, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !987, file: !633, line: 973, baseType: !2279, size: 32, offset: 10688)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !178, line: 27, baseType: !2280)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !311, line: 28, baseType: !109)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !987, file: !633, line: 974, baseType: !2279, size: 32, offset: 10720)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !987, file: !633, line: 978, baseType: !327, size: 64, offset: 10752)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !987, file: !633, line: 987, baseType: !986, size: 64, offset: 10816)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !987, file: !633, line: 990, baseType: !986, size: 64, offset: 10880)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !987, file: !633, line: 995, baseType: !177, size: 128, offset: 10944)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !987, file: !633, line: 996, baseType: !177, size: 128, offset: 11072)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !987, file: !633, line: 997, baseType: !986, size: 64, offset: 11200)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !987, file: !633, line: 1005, baseType: !177, size: 128, offset: 11264)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !987, file: !633, line: 1006, baseType: !177, size: 128, offset: 11392)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !987, file: !633, line: 1009, baseType: !1358, size: 64, offset: 11520)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !987, file: !633, line: 1010, baseType: !2292, size: 512, offset: 11584)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 512, elements: !1366)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !987, file: !633, line: 1011, baseType: !177, size: 128, offset: 12096)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !987, file: !633, line: 1012, baseType: !177, size: 128, offset: 12224)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !987, file: !633, line: 1014, baseType: !2296, size: 64, offset: 12352)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !987, file: !633, line: 1017, baseType: !625, size: 64, offset: 12416)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !987, file: !633, line: 1020, baseType: !625, size: 64, offset: 12480)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !987, file: !633, line: 1023, baseType: !349, size: 64, offset: 12544)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !987, file: !633, line: 1025, baseType: !431, size: 64, offset: 12608)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !987, file: !633, line: 1026, baseType: !431, size: 64, offset: 12672)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !987, file: !633, line: 1031, baseType: !431, size: 64, offset: 12736)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !987, file: !633, line: 1032, baseType: !2304, size: 192, offset: 12800)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !633, line: 324, size: 192, elements: !2305)
!2305 = !{!2306, !2307, !2308}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2304, file: !633, line: 326, baseType: !431, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2304, file: !633, line: 327, baseType: !431, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2304, file: !633, line: 328, baseType: !671, size: 32, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !987, file: !633, line: 1041, baseType: !327, size: 64, offset: 12992)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !987, file: !633, line: 1042, baseType: !327, size: 64, offset: 13056)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !987, file: !633, line: 1045, baseType: !431, size: 64, offset: 13120)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !987, file: !633, line: 1048, baseType: !431, size: 64, offset: 13184)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !987, file: !633, line: 1051, baseType: !327, size: 64, offset: 13248)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !987, file: !633, line: 1052, baseType: !327, size: 64, offset: 13312)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !987, file: !633, line: 1055, baseType: !2316, size: 640, offset: 13376)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2317, line: 132, size: 640, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2318 = !{!2319, !2325, !2326}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2316, file: !2317, line: 133, baseType: !2320, size: 576)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2321, size: 576, elements: !278)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2317, line: 117, size: 192, elements: !2322)
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2321, file: !2317, line: 118, baseType: !431, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2321, file: !2317, line: 119, baseType: !1170, size: 128, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2316, file: !2317, line: 134, baseType: !7, size: 32, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2316, file: !2317, line: 135, baseType: !7, size: 32, offset: 608)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !987, file: !633, line: 1058, baseType: !2328, size: 448, offset: 14016)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2317, line: 144, size: 448, elements: !2329)
!2329 = !{!2330, !2331, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2328, file: !2317, line: 145, baseType: !971, size: 128, align: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2328, file: !2317, line: 146, baseType: !658, size: 256, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2328, file: !2317, line: 147, baseType: !7, size: 32, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !987, file: !633, line: 1064, baseType: !1386, size: 64, offset: 14464)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !987, file: !633, line: 1067, baseType: !1386, size: 64, offset: 14528)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !987, file: !633, line: 1070, baseType: !1386, size: 64, offset: 14592)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !987, file: !633, line: 1074, baseType: !1413, size: 64, offset: 14656)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !987, file: !633, line: 1084, baseType: !2338, size: 128, offset: 14720)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, elements: !2339)
!2339 = !{!2340}
!2340 = !DISubrange(count: 16)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !987, file: !633, line: 1086, baseType: !2342, size: 64, offset: 14848)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !633, line: 55, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !987, file: !633, line: 1089, baseType: !2345, size: 64, offset: 14912)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2346, line: 12, size: 64, elements: !2347)
!2346 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2347 = !{!2348}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2345, file: !2346, line: 13, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2346, line: 8, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !987, file: !633, line: 1090, baseType: !2352, size: 128, offset: 14976)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2353, line: 13, size: 128, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2352, file: !2353, line: 14, baseType: !177, size: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !987, file: !633, line: 1097, baseType: !2357, size: 64, offset: 15104)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !633, line: 50, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !987, file: !633, line: 1100, baseType: !2360, size: 64, offset: 15168)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !633, line: 1100, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !987, file: !633, line: 1103, baseType: !2363, size: 64, offset: 15232)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !633, line: 53, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !987, file: !633, line: 1107, baseType: !2366, size: 64, offset: 15296)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2368, line: 35, flags: DIFlagFwdDecl)
!2368 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !987, file: !633, line: 1110, baseType: !2370, size: 64, offset: 15360)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2372, line: 93, size: 8768, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2423, !2432, !2433, !2435, !2436, !2437, !2440, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2478, !2479, !2486, !2496, !2499, !2500, !2503, !2504, !2505, !2506, !2507, !2508}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2371, file: !2372, line: 94, baseType: !1000, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2371, file: !2372, line: 95, baseType: !227, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2371, file: !2372, line: 96, baseType: !109, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2371, file: !2372, line: 97, baseType: !109, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2371, file: !2372, line: 98, baseType: !177, size: 128, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2371, file: !2372, line: 100, baseType: !964, size: 192, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2371, file: !2372, line: 103, baseType: !986, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2371, file: !2372, line: 106, baseType: !2382, size: 192, offset: 512)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1566, line: 32, size: 192, elements: !2383)
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2382, file: !1566, line: 33, baseType: !177, size: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2382, file: !1566, line: 34, baseType: !2386, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2387, line: 25, baseType: !2388)
!2387 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2387, line: 23, size: 64, elements: !2389)
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2388, file: !2387, line: 24, baseType: !1241, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2371, file: !2372, line: 109, baseType: !550, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2371, file: !2372, line: 112, baseType: !109, size: 32, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2371, file: !2372, line: 114, baseType: !109, size: 32, offset: 800)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2371, file: !2372, line: 115, baseType: !986, size: 64, offset: 832)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2371, file: !2372, line: 118, baseType: !109, size: 32, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2371, file: !2372, line: 119, baseType: !7, size: 32, offset: 928)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2371, file: !2372, line: 121, baseType: !2398, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2372, line: 80, size: 448, elements: !2400)
!2400 = !{!2401, !2402, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2399, file: !2372, line: 81, baseType: !227, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2399, file: !2372, line: 82, baseType: !2403, size: 128, offset: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2372, line: 75, size: 128, elements: !2404)
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2403, file: !2372, line: 76, baseType: !986, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2403, file: !2372, line: 77, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2399, file: !2372, line: 83, baseType: !1870, size: 256, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2371, file: !2372, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2371, file: !2372, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2371, file: !2372, line: 138, baseType: !7, size: 32, offset: 1056)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2371, file: !2372, line: 139, baseType: !177, size: 128, offset: 1088)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2371, file: !2372, line: 142, baseType: !1114, size: 512, offset: 1216)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2371, file: !2372, line: 143, baseType: !1122, size: 64, offset: 1728)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2371, file: !2372, line: 150, baseType: !2416, size: 256, offset: 1792)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2417, size: 256, elements: !2421)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2372, line: 38, size: 128, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2417, file: !2372, line: 39, baseType: !431, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2417, file: !2372, line: 40, baseType: !431, size: 64, offset: 64)
!2421 = !{!2422}
!2422 = !DISubrange(count: 2)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2371, file: !2372, line: 156, baseType: !2424, size: 192, offset: 2048)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2372, line: 66, size: 192, elements: !2425)
!2425 = !{!2426}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2424, file: !2372, line: 67, baseType: !2427, size: 192)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2372, line: 47, size: 192, elements: !2428)
!2428 = !{!2429, !2430, !2431}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2427, file: !2372, line: 48, baseType: !664, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2427, file: !2372, line: 49, baseType: !664, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2427, file: !2372, line: 50, baseType: !664, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2371, file: !2372, line: 160, baseType: !2316, size: 640, offset: 2240)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2371, file: !2372, line: 163, baseType: !2434, size: 256, offset: 2880)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 256, elements: !1366)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2371, file: !2372, line: 169, baseType: !1358, size: 64, offset: 3136)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2371, file: !2372, line: 172, baseType: !109, size: 32, offset: 3200)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2371, file: !2372, line: 174, baseType: !2438, size: 64, offset: 3264)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2372, line: 174, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2371, file: !2372, line: 185, baseType: !2441, size: 64, offset: 3328)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !400, line: 860, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 853, size: 64, elements: !2443)
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2442, file: !400, line: 858, baseType: !399, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2442, file: !400, line: 859, baseType: !207, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2371, file: !2372, line: 186, baseType: !431, size: 64, offset: 3392)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2371, file: !2372, line: 186, baseType: !431, size: 64, offset: 3456)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2371, file: !2372, line: 186, baseType: !431, size: 64, offset: 3520)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2371, file: !2372, line: 186, baseType: !431, size: 64, offset: 3584)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2371, file: !2372, line: 187, baseType: !431, size: 64, offset: 3648)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2371, file: !2372, line: 188, baseType: !431, size: 64, offset: 3712)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2371, file: !2372, line: 189, baseType: !2304, size: 192, offset: 3776)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2371, file: !2372, line: 190, baseType: !327, size: 64, offset: 3968)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2371, file: !2372, line: 190, baseType: !327, size: 64, offset: 4032)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2371, file: !2372, line: 190, baseType: !327, size: 64, offset: 4096)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2371, file: !2372, line: 190, baseType: !327, size: 64, offset: 4160)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2371, file: !2372, line: 191, baseType: !327, size: 64, offset: 4224)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2371, file: !2372, line: 191, baseType: !327, size: 64, offset: 4288)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2371, file: !2372, line: 191, baseType: !327, size: 64, offset: 4352)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2371, file: !2372, line: 191, baseType: !327, size: 64, offset: 4416)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2371, file: !2372, line: 192, baseType: !327, size: 64, offset: 4480)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2371, file: !2372, line: 192, baseType: !327, size: 64, offset: 4544)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2371, file: !2372, line: 192, baseType: !327, size: 64, offset: 4608)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2371, file: !2372, line: 192, baseType: !327, size: 64, offset: 4672)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2371, file: !2372, line: 193, baseType: !327, size: 64, offset: 4736)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2371, file: !2372, line: 193, baseType: !327, size: 64, offset: 4800)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2371, file: !2372, line: 194, baseType: !2468, size: 448, offset: 4864)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2469, line: 12, size: 448, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2468, file: !2469, line: 15, baseType: !431, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2468, file: !2469, line: 17, baseType: !431, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2468, file: !2469, line: 19, baseType: !431, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2468, file: !2469, line: 21, baseType: !431, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2468, file: !2469, line: 29, baseType: !431, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2468, file: !2469, line: 35, baseType: !431, size: 64, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2468, file: !2469, line: 44, baseType: !431, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2371, file: !2372, line: 202, baseType: !433, size: 64, offset: 5312)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2371, file: !2372, line: 213, baseType: !2480, size: 2048, offset: 5376)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2481, size: 2048, elements: !2339)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2482, line: 43, size: 128, elements: !2483)
!2482 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2481, file: !2482, line: 44, baseType: !326, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2481, file: !2482, line: 45, baseType: !326, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2371, file: !2372, line: 216, baseType: !2487, size: 448, offset: 7424)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2372, line: 30, size: 448, elements: !2488)
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2487, file: !2372, line: 31, baseType: !109, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2487, file: !2372, line: 32, baseType: !313, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2487, file: !2372, line: 33, baseType: !327, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2487, file: !2372, line: 34, baseType: !431, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2487, file: !2372, line: 34, baseType: !431, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2487, file: !2372, line: 35, baseType: !327, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2487, file: !2372, line: 35, baseType: !327, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2371, file: !2372, line: 219, baseType: !2497, size: 64, offset: 7872)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2372, line: 219, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2371, file: !2372, line: 222, baseType: !7, size: 32, offset: 7936)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2371, file: !2372, line: 223, baseType: !2501, size: 64, offset: 8000)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2372, line: 223, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2371, file: !2372, line: 230, baseType: !1478, size: 8, offset: 8064)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2371, file: !2372, line: 231, baseType: !1447, size: 16, offset: 8080)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2371, file: !2372, line: 232, baseType: !1447, size: 16, offset: 8096)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2371, file: !2372, line: 234, baseType: !1290, size: 64, offset: 8128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2371, file: !2372, line: 237, baseType: !658, size: 256, offset: 8192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2371, file: !2372, line: 243, baseType: !871, size: 320, offset: 8448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !987, file: !633, line: 1111, baseType: !2510, size: 64, offset: 15424)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2372, line: 20, size: 16640, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2511, file: !2372, line: 21, baseType: !207, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2511, file: !2372, line: 22, baseType: !1000, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2511, file: !2372, line: 23, baseType: !964, size: 192, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2511, file: !2372, line: 24, baseType: !2517, size: 16384, offset: 256)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2518, size: 16384, elements: !282)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1566, line: 51, size: 256, elements: !2519)
!2519 = !{!2520}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2518, file: !1566, line: 52, baseType: !2521, size: 256)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1566, line: 37, size: 256, elements: !2522)
!2522 = !{!2523, !2530, !2531, !2537}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2521, file: !1566, line: 39, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2525, line: 83, baseType: !2526)
!2525 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2525, line: 82, baseType: !2528)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !109}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2521, file: !1566, line: 40, baseType: !327, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2521, file: !1566, line: 46, baseType: !2532, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2525, line: 86, baseType: !2533)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2525, line: 85, baseType: !2535)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2521, file: !1566, line: 48, baseType: !2386, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !987, file: !633, line: 1112, baseType: !2386, size: 64, offset: 15488)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !987, file: !633, line: 1113, baseType: !2386, size: 64, offset: 15552)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !987, file: !633, line: 1115, baseType: !2386, size: 64, offset: 15616)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !987, file: !633, line: 1116, baseType: !2382, size: 192, offset: 15680)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !987, file: !633, line: 1117, baseType: !327, size: 64, offset: 15872)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !987, file: !633, line: 1118, baseType: !324, size: 64, offset: 15936)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !987, file: !633, line: 1119, baseType: !7, size: 32, offset: 16000)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !987, file: !633, line: 1121, baseType: !974, size: 64, offset: 16064)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !987, file: !633, line: 1125, baseType: !2547, size: 64, offset: 16128)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !633, line: 43, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !987, file: !633, line: 1127, baseType: !364, size: 32, offset: 16192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !987, file: !633, line: 1128, baseType: !7, size: 32, offset: 16224)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !987, file: !633, line: 1130, baseType: !2552, size: 128, offset: 16256)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2553, line: 37, size: 128, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2554 = !{!2555, !2556, !2557}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2552, file: !2553, line: 38, baseType: !109, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2552, file: !2553, line: 39, baseType: !227, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2552, file: !2553, line: 40, baseType: !2558, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2553, line: 24, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !987, file: !633, line: 1131, baseType: !2561, size: 256, offset: 16384)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2562, line: 12, size: 256, elements: !2563)
!2562 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2563 = !{!2564, !2565, !2566, !2567}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2561, file: !2562, line: 13, baseType: !277, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2561, file: !2562, line: 14, baseType: !327, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2561, file: !2562, line: 15, baseType: !327, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2561, file: !2562, line: 16, baseType: !1478, size: 8, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !987, file: !633, line: 1134, baseType: !431, size: 64, offset: 16640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !987, file: !633, line: 1135, baseType: !431, size: 64, offset: 16704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !987, file: !633, line: 1138, baseType: !207, size: 32, offset: 16768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !987, file: !633, line: 1141, baseType: !671, size: 32, offset: 16800)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !987, file: !633, line: 1143, baseType: !2573, size: 64, offset: 16832)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !633, line: 735, size: 64, elements: !2574)
!2574 = !{!2575}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2573, file: !633, line: 736, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !987, file: !633, line: 1147, baseType: !1173, size: 128, offset: 16896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !987, file: !633, line: 1149, baseType: !986, size: 64, offset: 17024)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !987, file: !633, line: 1151, baseType: !2580, size: 64, offset: 17088)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !633, line: 1151, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !987, file: !633, line: 1188, baseType: !349, size: 64, offset: 17152)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !987, file: !633, line: 1191, baseType: !2584, size: 64, offset: 17216)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !633, line: 44, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !987, file: !633, line: 1194, baseType: !2587, size: 64, offset: 17280)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !633, line: 45, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !987, file: !633, line: 1197, baseType: !2590, size: 64, offset: 17344)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !633, line: 61, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !987, file: !633, line: 1199, baseType: !2593, size: 64, offset: 17408)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2595, line: 99, size: 128, elements: !2596)
!2595 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2596 = !{!2597, !2598, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2594, file: !2595, line: 100, baseType: !662, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2594, file: !2595, line: 101, baseType: !227, size: 32, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2594, file: !2595, line: 103, baseType: !247, size: 16, offset: 96)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !987, file: !633, line: 1202, baseType: !2601, size: 64, offset: 17472)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !633, line: 48, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !987, file: !633, line: 1205, baseType: !327, size: 64, offset: 17536)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !987, file: !633, line: 1206, baseType: !2605, size: 64, offset: 17600)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1566, line: 14, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1566, line: 12, size: 384, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, scope: !2607, file: !1566, line: 13, baseType: !2610, size: 384)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2607, file: !1566, line: 13, size: 384, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2610, file: !1566, line: 13, baseType: !109, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2610, file: !1566, line: 13, baseType: !109, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2610, file: !1566, line: 13, baseType: !109, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2610, file: !1566, line: 13, baseType: !2616, size: 256, offset: 128)
!2616 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2617, line: 37, size: 256, elements: !2618)
!2617 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2618 = !{!2619, !2624, !2637, !2643, !2652, !2679, !2684}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2616, file: !2617, line: 42, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2617, line: 39, size: 64, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2620, file: !2617, line: 40, baseType: !2280, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2620, file: !2617, line: 41, baseType: !370, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2616, file: !2617, line: 50, baseType: !2625, size: 192)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2617, line: 45, size: 192, elements: !2626)
!2626 = !{!2627, !2629, !2630, !2636}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2625, file: !2617, line: 46, baseType: !2628, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !311, line: 95, baseType: !109)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2625, file: !2617, line: 47, baseType: !109, size: 32, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2625, file: !2617, line: 48, baseType: !2631, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2617, line: 11, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2617, line: 8, size: 64, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2632, file: !2617, line: 9, baseType: !109, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2632, file: !2617, line: 10, baseType: !349, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2625, file: !2617, line: 49, baseType: !109, size: 32, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2616, file: !2617, line: 57, baseType: !2638, size: 128)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2617, line: 53, size: 128, elements: !2639)
!2639 = !{!2640, !2641, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2638, file: !2617, line: 54, baseType: !2280, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2638, file: !2617, line: 55, baseType: !370, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2638, file: !2617, line: 56, baseType: !2631, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2616, file: !2617, line: 66, baseType: !2644, size: 256)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2617, line: 60, size: 256, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2651}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2644, file: !2617, line: 61, baseType: !2280, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2644, file: !2617, line: 62, baseType: !370, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2644, file: !2617, line: 63, baseType: !109, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2644, file: !2617, line: 64, baseType: !2650, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !311, line: 94, baseType: !312)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2644, file: !2617, line: 65, baseType: !2650, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2616, file: !2617, line: 105, baseType: !2653, size: 256)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2617, line: 69, size: 256, elements: !2654)
!2654 = !{!2655, !2656}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2653, file: !2617, line: 70, baseType: !349, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !2653, file: !2617, line: 79, baseType: !2657, size: 192, offset: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2653, file: !2617, line: 79, size: 192, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2668, !2673}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2657, file: !2617, line: 81, baseType: !109, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2657, file: !2617, line: 86, baseType: !1447, size: 16)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2657, file: !2617, line: 92, baseType: !2662, size: 192)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2617, line: 88, size: 192, elements: !2663)
!2663 = !{!2664, !2666, !2667}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2662, file: !2617, line: 89, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 64, elements: !1157)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2662, file: !2617, line: 90, baseType: !349, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2662, file: !2617, line: 91, baseType: !349, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2657, file: !2617, line: 97, baseType: !2669, size: 96)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2617, line: 94, size: 96, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2669, file: !2617, line: 95, baseType: !2665, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2669, file: !2617, line: 96, baseType: !428, size: 32, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2657, file: !2617, line: 103, baseType: !2674, size: 128)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2617, line: 99, size: 128, elements: !2675)
!2675 = !{!2676, !2677, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2674, file: !2617, line: 100, baseType: !327, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2674, file: !2617, line: 101, baseType: !428, size: 32, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2674, file: !2617, line: 102, baseType: !428, size: 32, offset: 96)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2616, file: !2617, line: 111, baseType: !2680, size: 128)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2617, line: 108, size: 128, elements: !2681)
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2680, file: !2617, line: 109, baseType: !313, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2680, file: !2617, line: 110, baseType: !109, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2616, file: !2617, line: 118, baseType: !2685, size: 128)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2617, line: 114, size: 128, elements: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2685, file: !2617, line: 115, baseType: !349, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2685, file: !2617, line: 116, baseType: !109, size: 32, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2685, file: !2617, line: 117, baseType: !7, size: 32, offset: 96)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !987, file: !633, line: 1208, baseType: !2468, size: 448, offset: 17664)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !987, file: !633, line: 1215, baseType: !431, size: 64, offset: 18112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !987, file: !633, line: 1217, baseType: !431, size: 64, offset: 18176)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !987, file: !633, line: 1219, baseType: !431, size: 64, offset: 18240)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !987, file: !633, line: 1223, baseType: !2695, size: 64, offset: 18304)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2696, line: 99, baseType: !2697)
!2696 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2696, line: 99, size: 64, elements: !2698)
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2697, file: !2696, line: 99, baseType: !1241, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !987, file: !633, line: 1225, baseType: !399, size: 32, offset: 18368)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !987, file: !633, line: 1226, baseType: !109, size: 32, offset: 18400)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !987, file: !633, line: 1227, baseType: !109, size: 32, offset: 18432)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !987, file: !633, line: 1231, baseType: !2704, size: 64, offset: 18496)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !633, line: 1231, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !987, file: !633, line: 1233, baseType: !177, size: 128, offset: 18560)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !987, file: !633, line: 1240, baseType: !2708, size: 64, offset: 18688)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !633, line: 62, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !987, file: !633, line: 1242, baseType: !2711, size: 64, offset: 18752)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !633, line: 1242, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !987, file: !633, line: 1244, baseType: !177, size: 128, offset: 18816)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !987, file: !633, line: 1245, baseType: !2715, size: 64, offset: 18944)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !633, line: 51, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !987, file: !633, line: 1246, baseType: !658, size: 256, offset: 19008)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !987, file: !633, line: 1247, baseType: !7, size: 32, offset: 19264)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !987, file: !633, line: 1250, baseType: !2720, size: 64, offset: 19328)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !633, line: 57, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !987, file: !633, line: 1251, baseType: !658, size: 256, offset: 19392)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !987, file: !633, line: 1252, baseType: !177, size: 128, offset: 19648)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !987, file: !633, line: 1259, baseType: !1956, size: 64, offset: 19776)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !987, file: !633, line: 1260, baseType: !1447, size: 16, offset: 19840)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !987, file: !633, line: 1261, baseType: !1447, size: 16, offset: 19856)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !987, file: !633, line: 1314, baseType: !2728, size: 64, offset: 19904)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2730, line: 62, size: 256, align: 256, elements: !2731)
!2730 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2729, file: !2730, line: 75, baseType: !428, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2729, file: !2730, line: 90, baseType: !428, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2729, file: !2730, line: 112, baseType: !432, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2729, file: !2730, line: 132, baseType: !428, size: 32, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2729, file: !2730, line: 140, baseType: !428, size: 32, offset: 160)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2729, file: !2730, line: 149, baseType: !428, size: 32, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2729, file: !2730, line: 154, baseType: !2739, offset: 224)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, elements: !1379)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !987, file: !633, line: 1315, baseType: !427, size: 32, offset: 19968)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !987, file: !633, line: 1316, baseType: !427, size: 32, offset: 20000)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !987, file: !633, line: 1321, baseType: !327, size: 64, offset: 20032)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !987, file: !633, line: 1325, baseType: !109, size: 32, offset: 20096)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !987, file: !633, line: 1326, baseType: !109, size: 32, offset: 20128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !987, file: !633, line: 1327, baseType: !109, size: 32, offset: 20160)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !987, file: !633, line: 1328, baseType: !109, size: 32, offset: 20192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !987, file: !633, line: 1329, baseType: !971, size: 128, align: 64, offset: 20224)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !987, file: !633, line: 1332, baseType: !2749, size: 128, offset: 20352)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2750, line: 51, size: 128, elements: !2751)
!2750 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2751 = !{!2752, !2757, !2758}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2749, file: !2750, line: 60, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2754, line: 7, size: 64, elements: !2755)
!2754 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2753, file: !2754, line: 12, baseType: !1238, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2749, file: !2750, line: 63, baseType: !1478, size: 8, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2749, file: !2750, line: 70, baseType: !1478, size: 8, offset: 72)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !987, file: !633, line: 1335, baseType: !2008, size: 64, offset: 20480)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !987, file: !633, line: 1337, baseType: !2761, size: 128, offset: 20544)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2750, line: 39, size: 128, elements: !2762)
!2762 = !{!2763, !2764, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2761, file: !2750, line: 40, baseType: !1785, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2761, file: !2750, line: 42, baseType: !428, size: 32, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2761, file: !2750, line: 43, baseType: !428, size: 32, offset: 96)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !987, file: !633, line: 1340, baseType: !2767, size: 64, offset: 20672)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !633, line: 69, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !987, file: !633, line: 1351, baseType: !109, size: 32, offset: 20736)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !987, file: !633, line: 1352, baseType: !109, size: 32, offset: 20768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !987, file: !633, line: 1354, baseType: !327, size: 64, offset: 20800)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !987, file: !633, line: 1364, baseType: !431, size: 64, offset: 20864)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !987, file: !633, line: 1365, baseType: !431, size: 64, offset: 20928)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !987, file: !633, line: 1412, baseType: !327, size: 64, offset: 20992)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !987, file: !633, line: 1453, baseType: !2776, size: 64, offset: 21056)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !633, line: 1453, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !987, file: !633, line: 1457, baseType: !2779, size: 64, offset: 21120)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2781)
!2781 = !{!2782, !2783, !2802, !2805, !2806, !2839, !2849}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2780, file: !68, line: 62, baseType: !67, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2780, file: !68, line: 64, baseType: !2784, size: 192, offset: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2780, file: !68, line: 64, size: 192, elements: !2785)
!2785 = !{!2786, !2797}
!2786 = !DIDerivedType(tag: DW_TAG_member, scope: !2784, file: !68, line: 65, baseType: !2787, size: 192)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2784, file: !68, line: 65, size: 192, elements: !2788)
!2788 = !{!2789, !2796}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2787, file: !68, line: 66, baseType: !2790, size: 128)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2791, line: 50, size: 128, elements: !2792)
!2791 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2792 = !{!2793, !2794, !2795}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2790, file: !2791, line: 52, baseType: !327, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2790, file: !2791, line: 54, baseType: !7, size: 32, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2790, file: !2791, line: 55, baseType: !7, size: 32, offset: 96)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2787, file: !68, line: 67, baseType: !327, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, scope: !2784, file: !68, line: 70, baseType: !2798, size: 192)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2784, file: !68, line: 70, size: 192, elements: !2799)
!2799 = !{!2800, !2801}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2798, file: !68, line: 71, baseType: !971, size: 128, align: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2798, file: !68, line: 72, baseType: !327, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2780, file: !68, line: 76, baseType: !2803, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2780, file: !68, line: 77, baseType: !327, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2780, file: !68, line: 79, baseType: !2807, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2791, line: 25, size: 256, elements: !2809)
!2809 = !{!2810, !2816, !2820}
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2808, file: !2791, line: 26, baseType: !2811, size: 128)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2808, file: !2791, line: 26, size: 128, elements: !2812)
!2812 = !{!2813, !2815}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2811, file: !2791, line: 27, baseType: !2814, size: 128)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !2339)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2811, file: !2791, line: 28, baseType: !2814, size: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2808, file: !2791, line: 31, baseType: !2817, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2819)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2791, line: 23, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !2808, file: !2791, line: 33, baseType: !2821, size: 64, offset: 192)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2808, file: !2791, line: 33, size: 64, elements: !2822)
!2822 = !{!2823, !2829, !2834}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2821, file: !2791, line: 38, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2821, file: !2791, line: 34, size: 64, elements: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2824, file: !2791, line: 35, baseType: !1421, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2824, file: !2791, line: 36, baseType: !235, size: 8, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2824, file: !2791, line: 37, baseType: !235, size: 8, offset: 40)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2821, file: !2791, line: 42, baseType: !2830, size: 16)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2821, file: !2791, line: 39, size: 16, elements: !2831)
!2831 = !{!2832, !2833}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2830, file: !2791, line: 40, baseType: !235, size: 8)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2830, file: !2791, line: 41, baseType: !235, size: 8, offset: 8)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2821, file: !2791, line: 46, baseType: !2835, size: 16)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2821, file: !2791, line: 43, size: 16, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2835, file: !2791, line: 44, baseType: !235, size: 8)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2835, file: !2791, line: 45, baseType: !235, size: 8, offset: 8)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2780, file: !68, line: 81, baseType: !2840, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2841, file: !68, line: 86, baseType: !2803, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2841, file: !68, line: 87, baseType: !327, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2841, file: !68, line: 88, baseType: !327, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2841, file: !68, line: 89, baseType: !327, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2841, file: !68, line: 90, baseType: !1478, size: 8, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2841, file: !68, line: 92, baseType: !2840, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2780, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !987, file: !633, line: 1463, baseType: !2851, offset: 21184)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !633, line: 739, elements: !562)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !987, file: !633, line: 1470, baseType: !971, size: 128, align: 64, offset: 21184)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !987, file: !633, line: 1471, baseType: !1000, size: 32, offset: 21312)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !987, file: !633, line: 1472, baseType: !109, size: 32, offset: 21344)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !987, file: !633, line: 1474, baseType: !986, size: 64, offset: 21376)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !987, file: !633, line: 1475, baseType: !2857, size: 320, offset: 21440)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2858, line: 11, size: 320, elements: !2859)
!2858 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2859 = !{!2860, !2861, !2862, !2867}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2857, file: !2858, line: 16, baseType: !554, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2857, file: !2858, line: 17, baseType: !327, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2857, file: !2858, line: 18, baseType: !2863, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{null, !2866}
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2857, file: !2858, line: 19, baseType: !427, size: 32, offset: 256)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !987, file: !633, line: 1478, baseType: !2869, size: 64, offset: 21760)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1638, line: 49, size: 512, elements: !2871)
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2878, !2879, !2880, !2882}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2870, file: !1638, line: 50, baseType: !2869, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2870, file: !1638, line: 51, baseType: !349, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2870, file: !1638, line: 52, baseType: !327, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2870, file: !1638, line: 53, baseType: !327, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2870, file: !1638, line: 54, baseType: !2877, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2870, file: !1638, line: 56, baseType: !7, size: 32, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2870, file: !1638, line: 58, baseType: !7, size: 32, offset: 352)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2870, file: !1638, line: 59, baseType: !2881, size: 64, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !178, line: 159, baseType: !431)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2870, file: !1638, line: 60, baseType: !2147, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !987, file: !633, line: 1482, baseType: !1000, size: 32, offset: 21824)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !987, file: !633, line: 1489, baseType: !349, size: 64, offset: 21888)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !987, file: !633, line: 1504, baseType: !349, size: 64, offset: 21952)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !987, file: !633, line: 1505, baseType: !432, size: 64, offset: 22016)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !987, file: !633, line: 1506, baseType: !431, size: 64, offset: 22080)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !987, file: !633, line: 1507, baseType: !432, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !987, file: !633, line: 1508, baseType: !432, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !987, file: !633, line: 1509, baseType: !432, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !987, file: !633, line: 1510, baseType: !971, size: 128, align: 64, offset: 22208)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !987, file: !633, line: 1511, baseType: !109, size: 32, offset: 22336)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !987, file: !633, line: 1515, baseType: !2894, size: 64, offset: 22400)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1014, line: 56, size: 64, elements: !2895)
!2895 = !{!2896}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2894, file: !1014, line: 57, baseType: !1017, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !987, file: !633, line: 1518, baseType: !2894, size: 64, offset: 22464)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !987, file: !633, line: 1528, baseType: !971, size: 128, align: 64, offset: 22528)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !987, file: !633, line: 1552, baseType: !2900, size: 35328, offset: 23040)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2901, line: 430, size: 35328, elements: !2902)
!2901 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2902 = !{!2903, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2932, !2933, !2934, !2935, !2936, !2937, !2940, !2941, !2942, !2943}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2900, file: !2901, line: 432, baseType: !2904, size: 192)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2905, size: 192, elements: !278)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2906, line: 16, size: 64, elements: !2907)
!2906 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2905, file: !2906, line: 17, baseType: !245, size: 16)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2905, file: !2906, line: 18, baseType: !245, size: 16, offset: 16)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2905, file: !2906, line: 19, baseType: !245, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2905, file: !2906, line: 19, baseType: !245, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2905, file: !2906, line: 19, baseType: !245, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2905, file: !2906, line: 19, baseType: !245, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2905, file: !2906, line: 19, baseType: !245, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2905, file: !2906, line: 20, baseType: !245, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2905, file: !2906, line: 20, baseType: !245, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2905, file: !2906, line: 20, baseType: !245, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2905, file: !2906, line: 20, baseType: !245, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2905, file: !2906, line: 20, baseType: !245, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2905, file: !2906, line: 20, baseType: !245, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2900, file: !2901, line: 436, baseType: !327, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2900, file: !2901, line: 440, baseType: !247, size: 16, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2900, file: !2901, line: 441, baseType: !247, size: 16, offset: 272)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2900, file: !2901, line: 442, baseType: !247, size: 16, offset: 288)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2900, file: !2901, line: 443, baseType: !247, size: 16, offset: 304)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2900, file: !2901, line: 447, baseType: !327, size: 64, offset: 320)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2900, file: !2901, line: 448, baseType: !327, size: 64, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2900, file: !2901, line: 459, baseType: !2929, size: 256, offset: 448)
!2929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2930, size: 256, elements: !1366)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2901, line: 428, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2900, file: !2901, line: 461, baseType: !327, size: 64, offset: 704)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2900, file: !2901, line: 463, baseType: !327, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2900, file: !2901, line: 465, baseType: !327, size: 64, offset: 832)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2900, file: !2901, line: 466, baseType: !327, size: 64, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2900, file: !2901, line: 467, baseType: !327, size: 64, offset: 960)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2900, file: !2901, line: 473, baseType: !2938, size: 64, offset: 1024)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2901, line: 10, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2900, file: !2901, line: 480, baseType: !327, size: 64, offset: 1088)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2900, file: !2901, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2900, file: !2901, line: 491, baseType: !427, size: 32, offset: 1184)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2900, file: !2901, line: 501, baseType: !2944, size: 33792, offset: 1536)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2945, line: 448, size: 33792, elements: !2946)
!2945 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2946 = !{!2947, !2948, !2949, !3111, !3112, !3118, !3119}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2944, file: !2945, line: 461, baseType: !7, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2944, file: !2945, line: 468, baseType: !327, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2944, file: !2945, line: 476, baseType: !2950, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2945, line: 356, size: 33280, align: 512, elements: !2952)
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2951, file: !2945, line: 358, baseType: !7, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2951, file: !2945, line: 361, baseType: !7, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2951, file: !2945, line: 364, baseType: !431, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2951, file: !2945, line: 367, baseType: !431, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2951, file: !2945, line: 370, baseType: !431, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2951, file: !2945, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2951, file: !2945, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2951, file: !2945, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2951, file: !2945, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2951, file: !2945, line: 397, baseType: !2963, size: 32768, offset: 512)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2945, line: 348, size: 32768, elements: !2964)
!2964 = !{!2965, !2980, !3017, !3094, !3107}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2963, file: !2945, line: 349, baseType: !2966, size: 896)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2945, line: 12, size: 896, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2979}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2966, file: !2945, line: 13, baseType: !427, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2966, file: !2945, line: 14, baseType: !427, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2966, file: !2945, line: 15, baseType: !427, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2966, file: !2945, line: 16, baseType: !427, size: 32, offset: 96)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2966, file: !2945, line: 17, baseType: !427, size: 32, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2966, file: !2945, line: 18, baseType: !427, size: 32, offset: 160)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2966, file: !2945, line: 19, baseType: !427, size: 32, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2966, file: !2945, line: 22, baseType: !2976, size: 640, offset: 224)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 640, elements: !2977)
!2977 = !{!2978}
!2978 = !DISubrange(count: 20)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2966, file: !2945, line: 25, baseType: !427, size: 32, offset: 864)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2963, file: !2945, line: 350, baseType: !2981, size: 4096, align: 128)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2945, line: 34, size: 4096, align: 128, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !3002, !3003, !3004, !3006, !3008, !3012}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2981, file: !2945, line: 35, baseType: !245, size: 16)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2981, file: !2945, line: 36, baseType: !245, size: 16, offset: 16)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2981, file: !2945, line: 37, baseType: !245, size: 16, offset: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2981, file: !2945, line: 38, baseType: !245, size: 16, offset: 48)
!2987 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !2945, line: 39, baseType: !2988, size: 128, offset: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !2945, line: 39, size: 128, elements: !2989)
!2989 = !{!2990, !2995}
!2990 = !DIDerivedType(tag: DW_TAG_member, scope: !2988, file: !2945, line: 40, baseType: !2991, size: 128)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2988, file: !2945, line: 40, size: 128, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2991, file: !2945, line: 41, baseType: !431, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2991, file: !2945, line: 42, baseType: !431, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, scope: !2988, file: !2945, line: 44, baseType: !2996, size: 128)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2988, file: !2945, line: 44, size: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2996, file: !2945, line: 45, baseType: !427, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2996, file: !2945, line: 46, baseType: !427, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2996, file: !2945, line: 47, baseType: !427, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2996, file: !2945, line: 48, baseType: !427, size: 32, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2981, file: !2945, line: 51, baseType: !427, size: 32, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2981, file: !2945, line: 52, baseType: !427, size: 32, offset: 224)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2981, file: !2945, line: 55, baseType: !3005, size: 1024, offset: 256)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 1024, elements: !440)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2981, file: !2945, line: 58, baseType: !3007, size: 2048, offset: 1280)
!3007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 2048, elements: !282)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2981, file: !2945, line: 60, baseType: !3009, size: 384, offset: 3328)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 384, elements: !3010)
!3010 = !{!3011}
!3011 = !DISubrange(count: 12)
!3012 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !2945, line: 62, baseType: !3013, size: 384, offset: 3712)
!3013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !2945, line: 62, size: 384, elements: !3014)
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3013, file: !2945, line: 63, baseType: !3009, size: 384)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3013, file: !2945, line: 64, baseType: !3009, size: 384)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2963, file: !2945, line: 351, baseType: !3018, size: 1088)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2945, line: 79, size: 1088, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3093}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3018, file: !2945, line: 80, baseType: !427, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3018, file: !2945, line: 81, baseType: !427, size: 32, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3018, file: !2945, line: 82, baseType: !427, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3018, file: !2945, line: 83, baseType: !427, size: 32, offset: 96)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3018, file: !2945, line: 84, baseType: !427, size: 32, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3018, file: !2945, line: 85, baseType: !427, size: 32, offset: 160)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3018, file: !2945, line: 86, baseType: !427, size: 32, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3018, file: !2945, line: 88, baseType: !2976, size: 640, offset: 224)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3018, file: !2945, line: 89, baseType: !235, size: 8, offset: 864)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3018, file: !2945, line: 90, baseType: !235, size: 8, offset: 872)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3018, file: !2945, line: 91, baseType: !235, size: 8, offset: 880)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3018, file: !2945, line: 92, baseType: !235, size: 8, offset: 888)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3018, file: !2945, line: 93, baseType: !235, size: 8, offset: 896)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3018, file: !2945, line: 94, baseType: !235, size: 8, offset: 904)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3018, file: !2945, line: 95, baseType: !3035, size: 64, offset: 960)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3037, line: 11, size: 128, elements: !3038)
!3037 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3038 = !{!3039, !3040}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3036, file: !3037, line: 12, baseType: !313, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3036, file: !3037, line: 13, baseType: !3041, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3043, line: 103, size: 1344, elements: !3044)
!3043 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3073, !3074, !3075}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3042, file: !3043, line: 109, baseType: !327, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3042, file: !3043, line: 110, baseType: !327, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3042, file: !3043, line: 111, baseType: !327, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3042, file: !3043, line: 112, baseType: !327, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3042, file: !3043, line: 113, baseType: !327, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3042, file: !3043, line: 114, baseType: !327, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3042, file: !3043, line: 117, baseType: !327, size: 64, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3042, file: !3043, line: 118, baseType: !327, size: 64, offset: 448)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3042, file: !3043, line: 119, baseType: !327, size: 64, offset: 512)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3042, file: !3043, line: 120, baseType: !327, size: 64, offset: 576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3042, file: !3043, line: 121, baseType: !327, size: 64, offset: 640)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3042, file: !3043, line: 122, baseType: !327, size: 64, offset: 704)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3042, file: !3043, line: 123, baseType: !327, size: 64, offset: 768)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3042, file: !3043, line: 124, baseType: !327, size: 64, offset: 832)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3042, file: !3043, line: 125, baseType: !327, size: 64, offset: 896)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3042, file: !3043, line: 139, baseType: !327, size: 64, offset: 960)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3042, file: !3043, line: 142, baseType: !327, size: 64, offset: 1024)
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !3042, file: !3043, line: 144, baseType: !3063, size: 64, offset: 1088)
!3063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3042, file: !3043, line: 144, size: 64, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3063, file: !3043, line: 146, baseType: !245, size: 16)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3063, file: !3043, line: 148, baseType: !431, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3063, file: !3043, line: 150, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3043, line: 59, size: 64, elements: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3068, file: !3043, line: 61, baseType: !431, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3068, file: !3043, line: 63, baseType: !431, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3068, file: !3043, line: 65, baseType: !431, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3042, file: !3043, line: 153, baseType: !327, size: 64, offset: 1152)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3042, file: !3043, line: 154, baseType: !327, size: 64, offset: 1216)
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3042, file: !3043, line: 156, baseType: !3076, size: 64, offset: 1280)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3042, file: !3043, line: 156, size: 64, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3076, file: !3043, line: 158, baseType: !245, size: 16)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3076, file: !3043, line: 160, baseType: !431, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3076, file: !3043, line: 162, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3043, line: 69, size: 64, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3081, file: !3043, line: 71, baseType: !431, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3081, file: !3043, line: 73, baseType: !431, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3081, file: !3043, line: 75, baseType: !431, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3081, file: !3043, line: 77, baseType: !431, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3081, file: !3043, line: 80, baseType: !431, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3081, file: !3043, line: 83, baseType: !431, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3081, file: !3043, line: 86, baseType: !431, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3081, file: !3043, line: 88, baseType: !431, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3081, file: !3043, line: 93, baseType: !431, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3081, file: !3043, line: 100, baseType: !431, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3018, file: !2945, line: 96, baseType: !427, size: 32, offset: 1024)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2963, file: !2945, line: 352, baseType: !3095, size: 4608, align: 512)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2945, line: 333, size: 4608, align: 512, elements: !3096)
!3096 = !{!3097, !3098, !3105}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3095, file: !2945, line: 334, baseType: !2981, size: 4096, align: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3095, file: !2945, line: 335, baseType: !3099, size: 512, offset: 4096)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2945, line: 312, size: 512, elements: !3100)
!3100 = !{!3101, !3102, !3103}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3099, file: !2945, line: 313, baseType: !431, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3099, file: !2945, line: 314, baseType: !431, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3099, file: !2945, line: 315, baseType: !3104, size: 384, offset: 128)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 384, elements: !1465)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3095, file: !2945, line: 336, baseType: !3106, offset: 4608)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, elements: !1379)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2963, file: !2945, line: 353, baseType: !3108, size: 32768)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 32768, elements: !3109)
!3109 = !{!3110}
!3110 = !DISubrange(count: 4096)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2944, file: !2945, line: 484, baseType: !2950, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2944, file: !2945, line: 491, baseType: !3113, size: 128, offset: 256)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2945, line: 404, size: 128, elements: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3113, file: !2945, line: 424, baseType: !431, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3113, file: !2945, line: 432, baseType: !7, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3113, file: !2945, line: 440, baseType: !7, size: 32, offset: 96)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2944, file: !2945, line: 498, baseType: !3113, size: 128, offset: 384)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2944, file: !2945, line: 508, baseType: !2951, size: 33280, align: 512, offset: 512)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !954, file: !955, line: 16, baseType: !964, size: 192, offset: 512)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !954, file: !955, line: 17, baseType: !227, size: 32, offset: 704)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !510, file: !14, line: 1240, baseType: !349, size: 64, offset: 6912)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !510, file: !14, line: 1243, baseType: !427, size: 32, offset: 6976)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !510, file: !14, line: 1245, baseType: !711, size: 64, offset: 7040)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !510, file: !14, line: 1246, baseType: !711, size: 64, offset: 7104)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !510, file: !14, line: 1248, baseType: !428, size: 32, offset: 7168)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !510, file: !14, line: 1249, baseType: !3128, size: 64, offset: 7232)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !510, file: !14, line: 1252, baseType: !3131, size: 256, offset: 7296)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !440)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !510, file: !14, line: 1253, baseType: !3133, size: 128, offset: 7552)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3134, line: 21, baseType: !3135)
!3134 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3134, line: 19, size: 128, elements: !3136)
!3136 = !{!3137}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3135, file: !3134, line: 20, baseType: !3138, size: 128)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !2339)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !510, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !510, file: !14, line: 1261, baseType: !658, size: 256, offset: 7744)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !510, file: !14, line: 1267, baseType: !196, size: 64, offset: 8000)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !510, file: !14, line: 1269, baseType: !456, size: 64, offset: 8064)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !510, file: !14, line: 1271, baseType: !3144, size: 448, offset: 8128)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !720, line: 63, size: 448, elements: !3145)
!3145 = !{!3146, !3151, !3152, !3153, !3154, !3155, !3156}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3144, file: !720, line: 64, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!327, !3150, !718}
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3144, file: !720, line: 66, baseType: !3147, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3144, file: !720, line: 69, baseType: !313, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3144, file: !720, line: 70, baseType: !109, size: 32, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !720, line: 71, baseType: !7, size: 32, offset: 224)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3144, file: !720, line: 74, baseType: !177, size: 128, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3144, file: !720, line: 85, baseType: !3157, size: 64, offset: 384)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !510, file: !14, line: 1274, baseType: !662, size: 64, offset: 8576)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !510, file: !14, line: 1280, baseType: !662, size: 64, offset: 8640)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !510, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !510, file: !14, line: 1286, baseType: !2058, size: 32, offset: 8736)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !510, file: !14, line: 1289, baseType: !3163, size: 64, offset: 8768)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2187, line: 18, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !510, file: !14, line: 1290, baseType: !550, size: 64, offset: 8832)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !510, file: !14, line: 1297, baseType: !1561, size: 64, offset: 8896)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !510, file: !14, line: 1304, baseType: !3168, size: 64, offset: 8960)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3169, line: 49, size: 64, elements: !3170)
!3169 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3168, file: !3169, line: 50, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3169, line: 41, size: 512, align: 512, elements: !3174)
!3174 = !{!3175, !3176, !3181}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3173, file: !3169, line: 43, baseType: !207, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3173, file: !3169, line: 45, baseType: !3177, size: 192, offset: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3169, line: 29, size: 192, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3177, file: !3169, line: 30, baseType: !177, size: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3177, file: !3169, line: 32, baseType: !313, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3173, file: !3169, line: 46, baseType: !313, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !510, file: !14, line: 1305, baseType: !3168, size: 64, offset: 9024)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !510, file: !14, line: 1306, baseType: !971, size: 128, align: 64, offset: 9088)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !510, file: !14, line: 1307, baseType: !2186, size: 256, offset: 9216)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !510, file: !14, line: 1309, baseType: !658, size: 256, offset: 9472)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !510, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !510, file: !14, line: 1317, baseType: !207, size: 32, align: 512, offset: 10240)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !510, file: !14, line: 1318, baseType: !177, size: 128, offset: 10304)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !510, file: !14, line: 1320, baseType: !207, size: 32, offset: 10432)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !510, file: !14, line: 1321, baseType: !177, size: 128, offset: 10496)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !504, file: !505, line: 73, baseType: !109, size: 32, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !504, file: !505, line: 74, baseType: !3193, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1403, line: 42, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !458, file: !395, line: 141, baseType: !3197, size: 64, offset: 704)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!109, !781, !1478}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !458, file: !395, line: 142, baseType: !3201, size: 64, offset: 768)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!393, !393, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !394, file: !395, line: 96, baseType: !509, size: 64, offset: 832)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !394, file: !395, line: 97, baseType: !327, size: 64, offset: 896)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !394, file: !395, line: 98, baseType: !349, size: 64, offset: 960)
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !395, line: 100, baseType: !3210, size: 128, offset: 1024)
!3210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !395, line: 100, size: 128, elements: !3211)
!3211 = !{!3212, !3213}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3210, file: !395, line: 101, baseType: !177, size: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3210, file: !395, line: 102, baseType: !3214, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !394, file: !395, line: 104, baseType: !177, size: 128, offset: 1152)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !394, file: !395, line: 105, baseType: !177, size: 128, offset: 1280)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !394, file: !395, line: 113, baseType: !3218, size: 128, offset: 1408)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !395, line: 109, size: 128, elements: !3219)
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3218, file: !395, line: 110, baseType: !554, size: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3218, file: !395, line: 111, baseType: !409, size: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3218, file: !395, line: 112, baseType: !971, size: 128, align: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !387, file: !14, line: 1968, baseType: !3224, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!196, !393, !358, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3229, line: 10, size: 128, elements: !3230)
!3229 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3230 = !{!3231, !3235}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3228, file: !3229, line: 11, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !349}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3228, file: !3229, line: 12, baseType: !349, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !387, file: !14, line: 1969, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!109, !3193, !358, !109}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !387, file: !14, line: 1970, baseType: !3241, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!381, !358, !109, !1478}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !387, file: !14, line: 1972, baseType: !3245, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!109, !393, !277, !109}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !387, file: !14, line: 1974, baseType: !3249, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!109, !3193, !358, !393, !319, !1478}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !387, file: !14, line: 1976, baseType: !3253, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!109, !393, !358, !393}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !387, file: !14, line: 1977, baseType: !3257, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!109, !358, !393}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !387, file: !14, line: 1978, baseType: !3261, size: 64, offset: 512)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!109, !3193, !358, !393, !196}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !387, file: !14, line: 1980, baseType: !3265, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!109, !3193, !358, !393, !319}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !387, file: !14, line: 1982, baseType: !3257, size: 64, offset: 640)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !387, file: !14, line: 1983, baseType: !3270, size: 64, offset: 704)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!109, !3193, !358, !393, !319, !514}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !387, file: !14, line: 1985, baseType: !3274, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!109, !3193, !358, !393, !358, !393, !7}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !387, file: !14, line: 1987, baseType: !3278, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!109, !3193, !393, !3281}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3296, !3305, !3306, !3311, !3312, !3313}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3282, file: !14, line: 227, baseType: !7, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3282, file: !14, line: 228, baseType: !319, size: 16, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3282, file: !14, line: 241, baseType: !3287, size: 32, offset: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3282, file: !14, line: 241, size: 32, elements: !3288)
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3287, file: !14, line: 242, baseType: !364, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3287, file: !14, line: 243, baseType: !3291, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3292, line: 16, baseType: !3293)
!3292 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3292, line: 14, size: 32, elements: !3294)
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3293, file: !3292, line: 15, baseType: !369, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, scope: !3282, file: !14, line: 245, baseType: !3297, size: 32, offset: 96)
!3297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3282, file: !14, line: 245, size: 32, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3297, file: !14, line: 246, baseType: !373, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3297, file: !14, line: 247, baseType: !3301, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3292, line: 20, baseType: !3302)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3292, line: 18, size: 32, elements: !3303)
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3302, file: !3292, line: 19, baseType: !377, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3282, file: !14, line: 249, baseType: !519, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3282, file: !14, line: 250, baseType: !3307, size: 128, offset: 192)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !712, line: 13, size: 128, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3307, file: !712, line: 14, baseType: !711, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3307, file: !712, line: 15, baseType: !313, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3282, file: !14, line: 251, baseType: !3307, size: 128, offset: 320)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3282, file: !14, line: 252, baseType: !3307, size: 128, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3282, file: !14, line: 259, baseType: !1317, size: 64, offset: 576)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !387, file: !14, line: 1988, baseType: !3315, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!109, !3193, !781, !3318, !427, !7}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3320, line: 22, size: 1280, elements: !3321)
!3320 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3319, file: !3320, line: 23, baseType: !427, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3319, file: !3320, line: 24, baseType: !319, size: 16, offset: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3319, file: !3320, line: 25, baseType: !7, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3319, file: !3320, line: 26, baseType: !1443, size: 32, offset: 96)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3319, file: !3320, line: 27, baseType: !431, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3319, file: !3320, line: 28, baseType: !431, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3319, file: !3320, line: 41, baseType: !431, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3319, file: !3320, line: 42, baseType: !514, size: 32, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3319, file: !3320, line: 43, baseType: !514, size: 32, offset: 352)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3319, file: !3320, line: 44, baseType: !364, size: 32, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3319, file: !3320, line: 45, baseType: !373, size: 32, offset: 416)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3319, file: !3320, line: 46, baseType: !519, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3319, file: !3320, line: 47, baseType: !3307, size: 128, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3319, file: !3320, line: 48, baseType: !3307, size: 128, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3319, file: !3320, line: 49, baseType: !3307, size: 128, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3319, file: !3320, line: 50, baseType: !3307, size: 128, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3319, file: !3320, line: 51, baseType: !431, size: 64, offset: 1024)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3319, file: !3320, line: 52, baseType: !431, size: 64, offset: 1088)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3319, file: !3320, line: 53, baseType: !427, size: 32, offset: 1152)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3319, file: !3320, line: 54, baseType: !427, size: 32, offset: 1184)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3319, file: !3320, line: 55, baseType: !431, size: 64, offset: 1216)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !387, file: !14, line: 1990, baseType: !3344, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!309, !393, !277, !324}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !387, file: !14, line: 1991, baseType: !3348, size: 64, offset: 1024)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!109, !358, !3351, !431, !431}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !387, file: !14, line: 1993, baseType: !3354, size: 64, offset: 1088)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!109, !358, !109}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !387, file: !14, line: 1994, baseType: !3358, size: 64, offset: 1152)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!109, !358, !393, !1317, !7, !319}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !387, file: !14, line: 1997, baseType: !3362, size: 64, offset: 1216)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!109, !3193, !358, !1317, !319}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !387, file: !14, line: 1999, baseType: !3366, size: 64, offset: 1280)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!381, !3193, !393, !109}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !387, file: !14, line: 2001, baseType: !3370, size: 64, offset: 1344)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!109, !3193, !393, !381, !109}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !387, file: !14, line: 2003, baseType: !3374, size: 64, offset: 1408)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!109, !3193, !393, !3377}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !387, file: !14, line: 2005, baseType: !3380, size: 64, offset: 1472)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!109, !393, !3377}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !387, file: !14, line: 2006, baseType: !3384, size: 64, offset: 1536)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!3387, !358}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3389)
!3389 = !{!3390, !3397}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3388, file: !14, line: 3193, baseType: !3391, size: 128)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3392, line: 296, size: 128, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3391, file: !3392, line: 297, baseType: !207, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3391, file: !3392, line: 299, baseType: !723, size: 32, offset: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3391, file: !3392, line: 300, baseType: !349, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3388, file: !14, line: 3194, baseType: !427, size: 32, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !359, file: !14, line: 655, baseType: !509, size: 64, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !359, file: !14, line: 656, baseType: !354, size: 64, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !359, file: !14, line: 659, baseType: !349, size: 64, offset: 576)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !359, file: !14, line: 663, baseType: !327, size: 64, offset: 640)
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !14, line: 671, baseType: !3403, size: 32, offset: 704)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !14, line: 671, size: 32, elements: !3404)
!3404 = !{!3405, !3407}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3403, file: !14, line: 672, baseType: !3406, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3403, file: !14, line: 673, baseType: !7, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !359, file: !14, line: 675, baseType: !514, size: 32, offset: 736)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !359, file: !14, line: 676, baseType: !519, size: 64, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !359, file: !14, line: 677, baseType: !3307, size: 128, offset: 832)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !359, file: !14, line: 678, baseType: !3307, size: 128, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !359, file: !14, line: 679, baseType: !3307, size: 128, offset: 1088)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !359, file: !14, line: 680, baseType: !207, size: 32, offset: 1216)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !359, file: !14, line: 681, baseType: !247, size: 16, offset: 1248)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !359, file: !14, line: 682, baseType: !235, size: 8, offset: 1264)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !359, file: !14, line: 683, baseType: !235, size: 8, offset: 1272)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !359, file: !14, line: 684, baseType: !859, size: 64, offset: 1280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !359, file: !14, line: 691, baseType: !327, size: 64, offset: 1344)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !359, file: !14, line: 692, baseType: !871, size: 320, offset: 1408)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !359, file: !14, line: 694, baseType: !327, size: 64, offset: 1728)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !359, file: !14, line: 695, baseType: !327, size: 64, offset: 1792)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !359, file: !14, line: 697, baseType: !554, size: 128, offset: 1856)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !359, file: !14, line: 698, baseType: !177, size: 128, offset: 1984)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !359, file: !14, line: 707, baseType: !177, size: 128, offset: 2112)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !359, file: !14, line: 708, baseType: !177, size: 128, offset: 2240)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !14, line: 709, baseType: !3427, size: 128, offset: 2368)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !14, line: 709, size: 128, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3427, file: !14, line: 710, baseType: !550, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3427, file: !14, line: 711, baseType: !971, size: 128, align: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !359, file: !14, line: 713, baseType: !664, size: 64, offset: 2496)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !359, file: !14, line: 714, baseType: !664, size: 64, offset: 2560)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !359, file: !14, line: 715, baseType: !227, size: 32, offset: 2624)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !359, file: !14, line: 716, baseType: !227, size: 32, offset: 2656)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !359, file: !14, line: 717, baseType: !227, size: 32, offset: 2688)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !359, file: !14, line: 719, baseType: !227, size: 32, offset: 2720)
!3437 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !14, line: 721, baseType: !3438, size: 64, offset: 2752)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !14, line: 721, size: 64, elements: !3439)
!3439 = !{!3440, !3441}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3438, file: !14, line: 722, baseType: !1592, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3438, file: !14, line: 723, baseType: !581, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !359, file: !14, line: 725, baseType: !3443, size: 64, offset: 2816)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !359, file: !14, line: 726, baseType: !355, size: 1536, align: 64, offset: 2880)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !359, file: !14, line: 727, baseType: !177, size: 128, offset: 4416)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !14, line: 728, baseType: !3448, size: 64, offset: 4544)
!3448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !14, line: 728, size: 64, elements: !3449)
!3449 = !{!3450, !3451, !3454, !3455}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3448, file: !14, line: 729, baseType: !2008, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3448, file: !14, line: 730, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3448, file: !14, line: 731, baseType: !277, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3448, file: !14, line: 732, baseType: !7, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !359, file: !14, line: 735, baseType: !428, size: 32, offset: 4608)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !359, file: !14, line: 738, baseType: !428, size: 32, offset: 4640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !359, file: !14, line: 739, baseType: !3128, size: 64, offset: 4672)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !359, file: !14, line: 750, baseType: !349, size: 64, offset: 4736)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !355, file: !14, line: 474, baseType: !3391, size: 128, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !355, file: !14, line: 475, baseType: !871, size: 320, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !355, file: !14, line: 476, baseType: !723, size: 32, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !355, file: !14, line: 477, baseType: !227, size: 32, offset: 544)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !355, file: !14, line: 482, baseType: !1173, size: 128, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !355, file: !14, line: 483, baseType: !327, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !355, file: !14, line: 484, baseType: !327, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !355, file: !14, line: 485, baseType: !3468, size: 64, offset: 832)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3471)
!3471 = !{!3472, !3476, !3546, !3550, !3554, !3560, !3564, !3568, !3573, !3577, !3581, !3585, !3586, !3590, !3594, !3598, !3603, !3607, !3614, !3615}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3470, file: !14, line: 405, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!109, !1785, !593}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3470, file: !14, line: 406, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!109, !1317, !3480}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3482)
!3482 = !{!3483, !3513, !3527}
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !38, line: 295, baseType: !3484, size: 512)
!3484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !38, line: 295, size: 512, elements: !3485)
!3485 = !{!3486, !3512}
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3484, file: !38, line: 296, baseType: !3487, size: 448)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3484, file: !38, line: 296, size: 448, elements: !3488)
!3488 = !{!3489, !3490, !3499, !3500, !3501, !3510, !3511}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3487, file: !38, line: 298, baseType: !327, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !38, line: 299, baseType: !3491, size: 128, offset: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !38, line: 299, size: 128, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3491, file: !38, line: 300, baseType: !177, size: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3491, file: !38, line: 302, baseType: !3495, size: 128)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3491, file: !38, line: 302, size: 128, elements: !3496)
!3496 = !{!3497, !3498}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3495, file: !38, line: 303, baseType: !349, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3495, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3487, file: !38, line: 310, baseType: !354, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3487, file: !38, line: 311, baseType: !327, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !38, line: 312, baseType: !3502, size: 64, offset: 320)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !38, line: 312, size: 64, elements: !3503)
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3502, file: !38, line: 313, baseType: !349, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3502, file: !38, line: 314, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3508)
!3508 = !{!3509}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3507, file: !38, line: 256, baseType: !327, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3487, file: !38, line: 316, baseType: !227, size: 32, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3487, file: !38, line: 317, baseType: !227, size: 32, offset: 416)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3484, file: !38, line: 323, baseType: !1786, size: 512, align: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !38, line: 325, baseType: !3514, size: 512, offset: 512)
!3514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !38, line: 325, size: 512, elements: !3515)
!3515 = !{!3516, !3526}
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3514, file: !38, line: 326, baseType: !3517, size: 320)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3514, file: !38, line: 326, size: 320, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3517, file: !38, line: 327, baseType: !327, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3517, file: !38, line: 328, baseType: !327, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3517, file: !38, line: 329, baseType: !327, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3517, file: !38, line: 331, baseType: !227, size: 32, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3517, file: !38, line: 332, baseType: !227, size: 32, offset: 224)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3517, file: !38, line: 333, baseType: !227, size: 32, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3517, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3514, file: !38, line: 339, baseType: !1786, size: 512, align: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !38, line: 341, baseType: !3528, size: 512, offset: 1024)
!3528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !38, line: 341, size: 512, elements: !3529)
!3529 = !{!3530, !3539, !3545}
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3528, file: !38, line: 342, baseType: !3531, size: 384)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3528, file: !38, line: 342, size: 384, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3531, file: !38, line: 343, baseType: !327, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3531, file: !38, line: 344, baseType: !327, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3531, file: !38, line: 346, baseType: !349, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3531, file: !38, line: 347, baseType: !349, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3531, file: !38, line: 348, baseType: !349, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3531, file: !38, line: 349, baseType: !349, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !3528, file: !38, line: 352, baseType: !3540, size: 256)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3528, file: !38, line: 352, size: 256, elements: !3541)
!3541 = !{!3542, !3543, !3544}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3540, file: !38, line: 353, baseType: !327, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3540, file: !38, line: 354, baseType: !327, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3540, file: !38, line: 356, baseType: !177, size: 128, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3528, file: !38, line: 359, baseType: !1786, size: 512, align: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3470, file: !14, line: 409, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!109, !354, !593}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3470, file: !14, line: 412, baseType: !3551, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!1478, !354, !3480}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3470, file: !14, line: 414, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !3558}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3470, file: !14, line: 416, baseType: !3561, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!109, !1317, !354, !519, !7, !2877, !2023}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3470, file: !14, line: 419, baseType: !3565, size: 64, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!109, !1317, !354, !519, !7, !7, !1785, !349}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3470, file: !14, line: 424, baseType: !3569, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!3572, !354, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !178, line: 131, baseType: !431)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3470, file: !14, line: 425, baseType: !3574, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !3480, !324, !324}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3470, file: !14, line: 426, baseType: !3578, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!1478, !3480, !723}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3470, file: !14, line: 427, baseType: !3582, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{null, !3480}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3470, file: !14, line: 428, baseType: !1611, size: 64, offset: 704)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3470, file: !14, line: 433, baseType: !3587, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!109, !354, !3480, !3480, !74}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3470, file: !14, line: 435, baseType: !3591, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!109, !3480}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3470, file: !14, line: 436, baseType: !3595, size: 64, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!1478, !3480, !324, !324}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3470, file: !14, line: 438, baseType: !3599, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !3480, !3602, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3470, file: !14, line: 439, baseType: !3604, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!109, !354, !1785}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3470, file: !14, line: 442, baseType: !3608, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!109, !3611, !1317, !3613}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3470, file: !14, line: 444, baseType: !2015, size: 64, offset: 1152)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3470, file: !14, line: 445, baseType: !3616, size: 64, offset: 1216)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!109, !1614, !1636}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !14, line: 486, baseType: !327, size: 64, offset: 896)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !355, file: !14, line: 487, baseType: !871, size: 320, offset: 960)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !355, file: !14, line: 488, baseType: !2058, size: 32, offset: 1280)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !355, file: !14, line: 489, baseType: !207, size: 32, offset: 1312)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !355, file: !14, line: 490, baseType: !177, size: 128, offset: 1344)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !355, file: !14, line: 491, baseType: !349, size: 64, offset: 1472)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !344, file: !303, line: 180, baseType: !3626, size: 64, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!309, !1317, !200, !343, !277, !519, !324}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !344, file: !303, line: 182, baseType: !3626, size: 64, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !344, file: !303, line: 184, baseType: !3631, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!109, !1317, !200, !343, !1676}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !332, file: !303, line: 90, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !332, file: !303, line: 91, baseType: !3637, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !293, file: !193, line: 120, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!3642, !260}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3645)
!3645 = !{!3646, !3647, !3651, !3655, !3661, !3665}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3644, file: !82, line: 40, baseType: !81, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3644, file: !82, line: 41, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!1478}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3644, file: !82, line: 42, baseType: !3652, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!349}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3644, file: !82, line: 43, baseType: !3656, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!2147, !3659}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3644, file: !82, line: 44, baseType: !3662, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!2147}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3644, file: !82, line: 45, baseType: !3232, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !293, file: !193, line: 121, baseType: !3667, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!2147, !260}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !293, file: !193, line: 122, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{null, !260, !3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !192, file: !193, line: 70, baseType: !3677, size: 64, offset: 384)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !534, line: 190, size: 1152, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3771, !3772, !3773, !3774, !3775, !3778}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3678, file: !534, line: 191, baseType: !227, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3678, file: !534, line: 192, baseType: !227, size: 32, offset: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3678, file: !534, line: 202, baseType: !3677, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3678, file: !534, line: 203, baseType: !196, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3678, file: !534, line: 205, baseType: !1044, size: 192, align: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3678, file: !534, line: 207, baseType: !2147, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3678, file: !534, line: 208, baseType: !7, size: 32, offset: 448)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3678, file: !534, line: 209, baseType: !3688, size: 256, offset: 512)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3678, file: !534, line: 209, size: 256, elements: !3689)
!3689 = !{!3690, !3699, !3703}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3688, file: !534, line: 210, baseType: !3691, size: 256)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !534, line: 153, size: 256, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3698}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3691, file: !534, line: 154, baseType: !327, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3691, file: !534, line: 156, baseType: !1176, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3691, file: !534, line: 162, baseType: !3696, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !534, line: 162, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3691, file: !534, line: 167, baseType: !327, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3688, file: !534, line: 211, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !534, line: 170, size: 64, elements: !3701)
!3701 = !{!3702}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3700, file: !534, line: 171, baseType: !3677, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3688, file: !534, line: 212, baseType: !3704, size: 256)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !534, line: 174, size: 256, elements: !3705)
!3705 = !{!3706, !3766, !3769, !3770}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3704, file: !534, line: 175, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !534, line: 271, size: 768, elements: !3710)
!3710 = !{!3711, !3731, !3735, !3739, !3743, !3747, !3751, !3755, !3756, !3757, !3758, !3762}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3709, file: !534, line: 276, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!109, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !534, line: 251, size: 1216, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3716, file: !534, line: 253, baseType: !3677, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3716, file: !534, line: 254, baseType: !1317, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3716, file: !534, line: 255, baseType: !631, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3716, file: !534, line: 256, baseType: !349, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3716, file: !534, line: 259, baseType: !658, size: 256, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3716, file: !534, line: 260, baseType: !658, size: 256, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3716, file: !534, line: 261, baseType: !109, size: 32, offset: 768)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3716, file: !534, line: 262, baseType: !177, size: 128, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3716, file: !534, line: 263, baseType: !277, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3716, file: !534, line: 265, baseType: !324, size: 64, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3716, file: !534, line: 266, baseType: !1478, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3716, file: !534, line: 267, baseType: !1478, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3716, file: !534, line: 268, baseType: !1721, size: 64, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3709, file: !534, line: 277, baseType: !3732, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3715}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3709, file: !534, line: 290, baseType: !3736, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!109, !631, !349}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3709, file: !534, line: 292, baseType: !3740, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!349, !631, !1605}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3709, file: !534, line: 293, baseType: !3744, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!349, !631, !349, !1605}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3709, file: !534, line: 294, baseType: !3748, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{null, !631, !349}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3709, file: !534, line: 296, baseType: !3752, size: 64, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!309, !3715, !277, !324, !519}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3709, file: !534, line: 306, baseType: !324, size: 64, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3709, file: !534, line: 313, baseType: !1478, size: 8, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3709, file: !534, line: 314, baseType: !3752, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3709, file: !534, line: 317, baseType: !3759, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!1663, !3715, !1665}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3709, file: !534, line: 320, baseType: !3763, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!109, !3715, !1676}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3704, file: !534, line: 176, baseType: !3767, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !534, line: 35, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3704, file: !534, line: 177, baseType: !519, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3704, file: !534, line: 178, baseType: !3677, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3678, file: !534, line: 215, baseType: !349, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3678, file: !534, line: 221, baseType: !431, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3678, file: !534, line: 223, baseType: !247, size: 16, offset: 896)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3678, file: !534, line: 224, baseType: !319, size: 16, offset: 912)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3678, file: !534, line: 225, baseType: !3776, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !534, line: 36, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3678, file: !534, line: 227, baseType: !971, size: 128, align: 64, offset: 1024)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !192, file: !193, line: 71, baseType: !3780, size: 32, offset: 448)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3781, line: 19, size: 32, elements: !3782)
!3781 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3782 = !{!3783}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3780, file: !3781, line: 20, baseType: !1000, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !192, file: !193, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !192, file: !193, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !192, file: !193, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !192, file: !193, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !192, file: !193, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !189, file: !6, line: 47, baseType: !172, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !189, file: !6, line: 48, baseType: !200, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !189, file: !6, line: 49, baseType: !3792, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !189, file: !6, line: 50, baseType: !2296, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !173, file: !6, line: 418, baseType: !3796, size: 64, offset: 1408)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3798)
!3798 = !{!3799, !3800, !3805, !3809, !3813, !3817}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3797, file: !6, line: 54, baseType: !315, size: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3797, file: !6, line: 55, baseType: !3801, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!309, !3796, !3804, !277}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3797, file: !6, line: 57, baseType: !3806, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!309, !3796, !3804, !196, !324}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3797, file: !6, line: 59, baseType: !3810, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{null, !172, !196}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3797, file: !6, line: 60, baseType: !3814, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!109, !172}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3797, file: !6, line: 61, baseType: !3818, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !172}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !173, file: !6, line: 419, baseType: !196, size: 64, offset: 1472)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !173, file: !6, line: 420, baseType: !196, size: 64, offset: 1536)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !173, file: !6, line: 421, baseType: !200, size: 64, offset: 1600)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !173, file: !6, line: 424, baseType: !3825, size: 64, offset: 1664)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3827)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !173, file: !6, line: 425, baseType: !3829, size: 64, offset: 1728)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !173, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !173, file: !6, line: 435, baseType: !658, size: 256, offset: 1856)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !173, file: !6, line: 437, baseType: !3834, size: 64, offset: 2112)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3836, line: 69, size: 320, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3837 = !{!3838, !3839, !3840, !3857, !3859, !3863, !3864}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3835, file: !3836, line: 70, baseType: !196, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3835, file: !3836, line: 71, baseType: !172, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3835, file: !3836, line: 72, baseType: !3841, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3843)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3836, line: 47, size: 256, elements: !3844)
!3844 = !{!3845, !3846, !3852, !3856}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3843, file: !3836, line: 49, baseType: !7, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3843, file: !3836, line: 51, baseType: !3847, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!109, !196, !3850}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3835)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3843, file: !3836, line: 53, baseType: !3853, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!109, !277, !3850}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3843, file: !3836, line: 55, baseType: !3232, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3835, file: !3836, line: 73, baseType: !3858, size: 16, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3835, file: !3836, line: 74, baseType: !3860, size: 8, offset: 208)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !236, line: 16, baseType: !3861)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !238, line: 20, baseType: !3862)
!3862 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3835, file: !3836, line: 75, baseType: !235, size: 8, offset: 216)
!3864 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !3836, line: 76, baseType: !3865, size: 64, offset: 256)
!3865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3835, file: !3836, line: 76, size: 64, elements: !3866)
!3866 = !{!3867, !3868, !3875}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3865, file: !3836, line: 77, baseType: !349, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3865, file: !3836, line: 78, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3836, line: 86, size: 128, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3871, file: !3836, line: 87, baseType: !7, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3871, file: !3836, line: 88, baseType: !277, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3865, file: !3836, line: 79, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3836, line: 92, size: 256, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3878, file: !3836, line: 94, baseType: !7, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3878, file: !3836, line: 95, baseType: !7, size: 32, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3878, file: !3836, line: 96, baseType: !980, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3878, file: !3836, line: 97, baseType: !3841, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3878, file: !3836, line: 98, baseType: !349, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !173, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !173, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !173, file: !6, line: 442, baseType: !3825, size: 64, offset: 2240)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !173, file: !6, line: 443, baseType: !3829, size: 64, offset: 2304)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !173, file: !6, line: 444, baseType: !1478, size: 8, offset: 2368)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !173, file: !6, line: 451, baseType: !1478, size: 8, offset: 2376)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !173, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !173, file: !6, line: 455, baseType: !3893, size: 64, offset: 2432)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3895, line: 23, size: 96, elements: !3896)
!3895 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3894, file: !3895, line: 24, baseType: !109, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3894, file: !3895, line: 24, baseType: !109, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3894, file: !3895, line: 24, baseType: !109, size: 32, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !173, file: !6, line: 458, baseType: !3901, size: 64, offset: 2496)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!109}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !173, file: !6, line: 460, baseType: !3905, size: 4032, align: 512, offset: 2560)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3906, size: 4032, elements: !3920)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3907)
!3907 = !{!3908, !3909, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3906, file: !6, line: 363, baseType: !349, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3906, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3906, file: !6, line: 367, baseType: !3911, size: 448, offset: 128)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3911, file: !6, line: 320, baseType: !172, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3911, file: !6, line: 321, baseType: !3915, size: 384, offset: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3916, line: 40, size: 384, elements: !3917)
!3916 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3917 = !{!3918}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3915, file: !3916, line: 41, baseType: !3919, size: 384, align: 64)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, size: 384, align: 64, elements: !2421)
!3920 = !{!3921}
!3921 = !DISubrange(count: 7)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !173, file: !6, line: 463, baseType: !3923, size: 192, offset: 6592)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3924, line: 8, size: 192, elements: !3925)
!3924 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3923, file: !3924, line: 10, baseType: !7, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3923, file: !3924, line: 11, baseType: !625, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3923, file: !3924, line: 12, baseType: !3929, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3931, line: 59, size: 48, elements: !3932)
!3931 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3938}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3930, file: !3931, line: 60, baseType: !2164, size: 16)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3930, file: !3931, line: 61, baseType: !2164, size: 16, offset: 16)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3930, file: !3931, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3930, file: !3931, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3930, file: !3931, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3930, file: !3931, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !173, file: !6, line: 465, baseType: !327, size: 64, offset: 6784)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !173, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !173, file: !6, line: 470, baseType: !177, size: 128, offset: 6912)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !173, file: !6, line: 471, baseType: !3943, size: 64, offset: 7040)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3945, line: 33, size: 96, elements: !3946)
!3945 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3946 = !{!3947, !3948, !3949, !3950}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3944, file: !3945, line: 37, baseType: !109, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3944, file: !3945, line: 43, baseType: !109, size: 32, offset: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3944, file: !3945, line: 45, baseType: !247, size: 16, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3944, file: !3945, line: 47, baseType: !247, size: 16, offset: 80)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !173, file: !6, line: 476, baseType: !3952, size: 64, offset: 7104)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3954)
!3954 = !{!3955, !3971, !3972, !3973}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3953, file: !6, line: 379, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3958, line: 204, baseType: !3959)
!3958 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3958, line: 197, size: 192, elements: !3960)
!3960 = !{!3961, !3963, !3964, !3965, !3967, !3969}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3959, file: !3958, line: 198, baseType: !3962, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3958, line: 21, baseType: !428)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3959, file: !3958, line: 199, baseType: !239, size: 8, offset: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3959, file: !3958, line: 200, baseType: !239, size: 8, offset: 40)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3959, file: !3958, line: 201, baseType: !3966, size: 16, offset: 48)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3958, line: 17, baseType: !246)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3959, file: !3958, line: 202, baseType: !3968, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3958, line: 16, baseType: !432)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3959, file: !3958, line: 203, baseType: !3970, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3958, line: 22, baseType: !432)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3953, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3953, file: !6, line: 381, baseType: !277, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3953, file: !6, line: 382, baseType: !277, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !173, file: !6, line: 477, baseType: !3953, size: 256, offset: 7168)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !173, file: !6, line: 480, baseType: !3976, size: 64, offset: 7424)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !173, file: !6, line: 483, baseType: !3979, size: 64, offset: 7488)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !173, file: !6, line: 488, baseType: !277, size: 64, offset: 7552)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !173, file: !6, line: 492, baseType: !349, size: 64, offset: 7616)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !173, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !173, file: !6, line: 495, baseType: !349, size: 64, offset: 7744)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !173, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !173, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !173, file: !6, line: 500, baseType: !3988, size: 64, offset: 7872)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3990, line: 45, baseType: !3991)
!3990 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !173, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !173, file: !6, line: 504, baseType: !3994, size: 64, offset: 8000)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3997, line: 96, size: 192, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3998 = !{!3999, !4000, !4043, !4045}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3996, file: !3997, line: 97, baseType: !7, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3996, file: !3997, line: 98, baseType: !4001, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3997, line: 24, size: 3072, elements: !4003)
!4003 = !{!4004, !4006, !4007, !4008, !4009, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4040, !4041, !4042}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4002, file: !3997, line: 26, baseType: !4005, size: 128)
!4005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 128, elements: !2421)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4002, file: !3997, line: 27, baseType: !4005, size: 128, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4002, file: !3997, line: 28, baseType: !109, size: 32, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4002, file: !3997, line: 31, baseType: !207, size: 32, align: 512, offset: 512)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4002, file: !3997, line: 32, baseType: !4010, size: 960, offset: 576)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4011, line: 206, size: 960, elements: !4012)
!4011 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4012 = !{!4013, !4014, !4017, !4019, !4020, !4022}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4010, file: !4011, line: 207, baseType: !974, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4010, file: !4011, line: 208, baseType: !4015, size: 256, offset: 64)
!4015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4016, size: 256, elements: !1366)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4010, file: !4011, line: 209, baseType: !4018, size: 256, offset: 320)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !1366)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4010, file: !4011, line: 213, baseType: !313, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4010, file: !4011, line: 215, baseType: !4021, size: 256, offset: 640)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !1366)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4010, file: !4011, line: 216, baseType: !235, size: 8, offset: 896)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4002, file: !3997, line: 33, baseType: !327, size: 64, offset: 1536)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4002, file: !3997, line: 34, baseType: !327, size: 64, offset: 1600)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4002, file: !3997, line: 35, baseType: !1478, size: 8, offset: 1664)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4002, file: !3997, line: 36, baseType: !2857, size: 320, offset: 1728)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4002, file: !3997, line: 37, baseType: !2186, size: 256, offset: 2048)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4002, file: !3997, line: 38, baseType: !971, size: 128, align: 64, offset: 2304)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4002, file: !3997, line: 39, baseType: !4030, size: 64, offset: 2432)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3997, line: 49, size: 768, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038, !4039}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4031, file: !3997, line: 50, baseType: !207, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4031, file: !3997, line: 51, baseType: !4018, size: 256, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4031, file: !3997, line: 53, baseType: !4018, size: 256, offset: 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4031, file: !3997, line: 54, baseType: !327, size: 64, offset: 576)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4031, file: !3997, line: 55, baseType: !4030, size: 64, offset: 640)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4031, file: !3997, line: 56, baseType: !109, size: 32, offset: 704)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4031, file: !3997, line: 57, baseType: !109, size: 32, offset: 736)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4002, file: !3997, line: 40, baseType: !327, size: 64, offset: 2496)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4002, file: !3997, line: 42, baseType: !109, size: 32, offset: 2560)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4002, file: !3997, line: 43, baseType: !3995, size: 64, offset: 2624)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3996, file: !3997, line: 99, baseType: !4044, offset: 128)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !561, line: 211, elements: !562)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3996, file: !3997, line: 100, baseType: !4046, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3997, line: 63, size: 3008, elements: !4048)
!4048 = !{!4049, !4050, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4078}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4047, file: !3997, line: 64, baseType: !4030, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4047, file: !3997, line: 65, baseType: !4051, size: 192, offset: 64)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4030, size: 192, elements: !278)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4047, file: !3997, line: 67, baseType: !109, size: 32, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4047, file: !3997, line: 68, baseType: !658, size: 256, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4047, file: !3997, line: 69, baseType: !207, size: 32, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4047, file: !3997, line: 70, baseType: !658, size: 256, offset: 640)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4047, file: !3997, line: 71, baseType: !327, size: 64, offset: 896)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4047, file: !3997, line: 72, baseType: !327, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4047, file: !3997, line: 73, baseType: !327, size: 64, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4047, file: !3997, line: 74, baseType: !327, size: 64, offset: 1088)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4047, file: !3997, line: 75, baseType: !327, size: 64, offset: 1152)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4047, file: !3997, line: 76, baseType: !327, size: 64, offset: 1216)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4047, file: !3997, line: 77, baseType: !327, size: 64, offset: 1280)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4047, file: !3997, line: 78, baseType: !327, size: 64, offset: 1344)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4047, file: !3997, line: 79, baseType: !1478, size: 8, offset: 1408)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4047, file: !3997, line: 80, baseType: !327, size: 64, offset: 1472)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4047, file: !3997, line: 81, baseType: !658, size: 256, offset: 1536)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4047, file: !3997, line: 82, baseType: !1870, size: 256, offset: 1792)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4047, file: !3997, line: 84, baseType: !227, size: 32, offset: 2048)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4047, file: !3997, line: 87, baseType: !327, size: 64, offset: 2112)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4047, file: !3997, line: 88, baseType: !327, size: 64, offset: 2176)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4047, file: !3997, line: 89, baseType: !4072, size: 704, offset: 2240)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2187, line: 111, size: 704, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4072, file: !2187, line: 112, baseType: !2186, size: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4072, file: !2187, line: 113, baseType: !2857, size: 320, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4072, file: !2187, line: 116, baseType: !3163, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4072, file: !2187, line: 117, baseType: !109, size: 32, offset: 640)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4047, file: !3997, line: 90, baseType: !3995, size: 64, offset: 2944)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !173, file: !6, line: 515, baseType: !4080, size: 64, offset: 8064)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4082, line: 117, size: 128, elements: !4083)
!4082 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4081, file: !4082, line: 118, baseType: !1421, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4081, file: !4082, line: 119, baseType: !1421, size: 32, offset: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4081, file: !4082, line: 120, baseType: !313, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !173, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !173, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !173, file: !6, line: 520, baseType: !4090, size: 64, offset: 8192)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !173, file: !6, line: 523, baseType: !4092, size: 64, offset: 8256)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !173, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !173, file: !6, line: 525, baseType: !4097, size: 64, offset: 8384)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !173, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !173, file: !6, line: 533, baseType: !349, size: 64, offset: 8512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !173, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !173, file: !6, line: 535, baseType: !4104, size: 64, offset: 8640)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !173, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !173, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !173, file: !6, line: 540, baseType: !4108, size: 64, offset: 8768)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4110, line: 32, size: 64, elements: !4111)
!4110 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4111 = !{!4112, !4113}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4109, file: !4110, line: 33, baseType: !1421, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4109, file: !4110, line: 34, baseType: !1421, size: 32, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !173, file: !6, line: 563, baseType: !177, size: 128, offset: 8832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !173, file: !6, line: 565, baseType: !177, size: 128, offset: 8960)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !173, file: !6, line: 568, baseType: !4117, size: 64, offset: 9088)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !173, file: !6, line: 570, baseType: !227, size: 32, offset: 9152)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aper_size_info_32", file: !142, line: 78, size: 128, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4125}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4120, file: !142, line: 79, baseType: !109, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !4120, file: !142, line: 80, baseType: !109, size: 32, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4120, file: !142, line: 81, baseType: !109, size: 32, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "size_value", scope: !4120, file: !142, line: 82, baseType: !427, size: 32, offset: 96)
!4126 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !178, line: 149, baseType: !431)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4131, line: 322, size: 16640, elements: !4132)
!4131 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4132 = !{!4133, !4134, !4672, !4673, !4674, !4675, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4781, !4782, !4783, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4860, !4861, !4862, !4864, !4865, !4867, !4868, !4869, !4870, !4876, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4130, file: !4131, line: 323, baseType: !177, size: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4130, file: !4131, line: 324, baseType: !4135, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4131, line: 647, size: 8256, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4159, !4160, !4161, !4185, !4186, !4190, !4191, !4192, !4193, !4194, !4198, !4199, !4201, !4667, !4668, !4669, !4670, !4671}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4136, file: !4131, line: 648, baseType: !177, size: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4136, file: !4131, line: 649, baseType: !4135, size: 64, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4136, file: !4131, line: 650, baseType: !177, size: 128, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4136, file: !4131, line: 651, baseType: !177, size: 128, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4136, file: !4131, line: 652, baseType: !4129, size: 64, offset: 448)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4136, file: !4131, line: 653, baseType: !177, size: 128, offset: 512)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4136, file: !4131, line: 655, baseType: !4145, size: 256, offset: 640)
!4145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4146, size: 256, elements: !1366)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4148, line: 21, size: 512, elements: !4149)
!4148 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4149 = !{!4150, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4147, file: !4148, line: 22, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !178, line: 164, baseType: !2881)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4147, file: !4148, line: 23, baseType: !4151, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4147, file: !4148, line: 24, baseType: !196, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4147, file: !4148, line: 25, baseType: !327, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4147, file: !4148, line: 26, baseType: !327, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4147, file: !4148, line: 27, baseType: !4146, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4147, file: !4148, line: 27, baseType: !4146, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4147, file: !4148, line: 27, baseType: !4146, size: 64, offset: 448)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4136, file: !4131, line: 656, baseType: !177, size: 128, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4136, file: !4131, line: 657, baseType: !4147, size: 512, offset: 1024)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4136, file: !4131, line: 659, baseType: !4162, size: 64, offset: 1536)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4131, line: 773, size: 320, elements: !4164)
!4164 = !{!4165, !4169, !4173, !4177, !4181}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4163, file: !4131, line: 774, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!109, !4135}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4163, file: !4131, line: 775, baseType: !4170, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4135}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4163, file: !4131, line: 776, baseType: !4174, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!349, !4135, !7, !109}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4163, file: !4131, line: 777, baseType: !4178, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!109, !4135, !7, !109, !109, !2237}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4163, file: !4131, line: 778, baseType: !4182, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!109, !4135, !7, !109, !109, !427}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4136, file: !4131, line: 660, baseType: !349, size: 64, offset: 1600)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4136, file: !4131, line: 661, baseType: !4187, size: 64, offset: 1664)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4189, line: 131, flags: DIFlagFwdDecl)
!4189 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4136, file: !4131, line: 663, baseType: !239, size: 8, offset: 1728)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4136, file: !4131, line: 664, baseType: !239, size: 8, offset: 1736)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4136, file: !4131, line: 665, baseType: !239, size: 8, offset: 1744)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4136, file: !4131, line: 666, baseType: !239, size: 8, offset: 1752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4136, file: !4131, line: 671, baseType: !4195, size: 384, offset: 1760)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 384, elements: !4196)
!4196 = !{!4197}
!4197 = !DISubrange(count: 48)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4136, file: !4131, line: 673, baseType: !247, size: 16, offset: 2144)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4136, file: !4131, line: 674, baseType: !4200, size: 16, offset: 2160)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4131, line: 255, baseType: !247)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4136, file: !4131, line: 675, baseType: !4202, size: 64, offset: 2176)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4210, !4211, !4264, !4349, !4350, !4351, !4352, !4353, !4360, !4452, !4465, !4475, !4479, !4481, !4482, !4483, !4487, !4494, !4495, !4498, !4501, !4505, !4609, !4610, !4611, !4612, !4613, !4614, !4644, !4645, !4646, !4649, !4652, !4661, !4662, !4663, !4664, !4665, !4666}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4203, file: !94, line: 706, baseType: !192, size: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4203, file: !94, line: 707, baseType: !4202, size: 64, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4203, file: !94, line: 709, baseType: !4208, size: 64, offset: 576)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4203, file: !94, line: 711, baseType: !196, size: 64, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4203, file: !94, line: 712, baseType: !4212, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4224, !4229, !4233}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4214, file: !94, line: 90, baseType: !196, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4214, file: !94, line: 91, baseType: !329, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4214, file: !94, line: 92, baseType: !4219, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!109, !4222, !272}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4203)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4214, file: !94, line: 93, baseType: !4225, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!277, !4222, !4228, !3674, !3675}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4214, file: !94, line: 95, baseType: !4230, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !4202}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4214, file: !94, line: 97, baseType: !4234, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4236)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4237)
!4237 = !{!4238, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4236, file: !101, line: 287, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!109, !4202}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4236, file: !101, line: 288, baseType: !4230, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4236, file: !101, line: 289, baseType: !4239, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4236, file: !101, line: 290, baseType: !4239, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4236, file: !101, line: 291, baseType: !4239, size: 64, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4236, file: !101, line: 292, baseType: !4239, size: 64, offset: 320)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4236, file: !101, line: 293, baseType: !4239, size: 64, offset: 384)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4236, file: !101, line: 294, baseType: !4239, size: 64, offset: 448)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4236, file: !101, line: 295, baseType: !4239, size: 64, offset: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4236, file: !101, line: 296, baseType: !4239, size: 64, offset: 576)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4236, file: !101, line: 297, baseType: !4239, size: 64, offset: 640)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4236, file: !101, line: 298, baseType: !4239, size: 64, offset: 704)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4236, file: !101, line: 299, baseType: !4239, size: 64, offset: 768)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4236, file: !101, line: 300, baseType: !4239, size: 64, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4236, file: !101, line: 301, baseType: !4239, size: 64, offset: 896)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4236, file: !101, line: 302, baseType: !4239, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4236, file: !101, line: 303, baseType: !4239, size: 64, offset: 1024)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4236, file: !101, line: 304, baseType: !4239, size: 64, offset: 1088)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4236, file: !101, line: 305, baseType: !4239, size: 64, offset: 1152)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4236, file: !101, line: 306, baseType: !4239, size: 64, offset: 1216)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4236, file: !101, line: 307, baseType: !4239, size: 64, offset: 1280)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4236, file: !101, line: 308, baseType: !4239, size: 64, offset: 1344)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4236, file: !101, line: 309, baseType: !4239, size: 64, offset: 1408)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4203, file: !94, line: 714, baseType: !4265, size: 64, offset: 768)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4267)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4268, line: 80, size: 1344, elements: !4269)
!4268 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4269 = !{!4270, !4271, !4272, !4273, !4274, !4275, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4348}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4267, file: !4268, line: 81, baseType: !196, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4267, file: !4268, line: 82, baseType: !196, size: 64, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4267, file: !4268, line: 83, baseType: !329, size: 64, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4267, file: !4268, line: 84, baseType: !329, size: 64, offset: 192)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4267, file: !4268, line: 85, baseType: !329, size: 64, offset: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4267, file: !4268, line: 87, baseType: !4276, size: 64, offset: 320)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!109, !4202, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287, !4288, !4301, !4311, !4312, !4313, !4314, !4315, !4323, !4324, !4325, !4326, !4327, !4328}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4280, file: !88, line: 97, baseType: !196, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4280, file: !88, line: 98, baseType: !4265, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4280, file: !88, line: 100, baseType: !172, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4280, file: !88, line: 101, baseType: !196, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4280, file: !88, line: 103, baseType: !1478, size: 8, offset: 256)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4280, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4280, file: !88, line: 106, baseType: !4289, size: 64, offset: 320)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4291)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4292, line: 282, size: 1600, elements: !4293)
!4292 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4293 = !{!4294, !4295, !4296, !4300}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4291, file: !4292, line: 283, baseType: !3131, size: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4291, file: !4292, line: 284, baseType: !3131, size: 256, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4291, file: !4292, line: 285, baseType: !4297, size: 1024, offset: 512)
!4297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 1024, elements: !4298)
!4298 = !{!4299}
!4299 = !DISubrange(count: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4291, file: !4292, line: 286, baseType: !2147, size: 64, offset: 1536)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4280, file: !88, line: 107, baseType: !4302, size: 64, offset: 384)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4292, line: 217, size: 256, elements: !4305)
!4305 = !{!4306, !4307, !4309, !4310}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4304, file: !4292, line: 218, baseType: !3138, size: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4304, file: !4292, line: 219, baseType: !4308, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4292, line: 15, baseType: !327)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4304, file: !4292, line: 220, baseType: !428, size: 32, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4304, file: !4292, line: 221, baseType: !428, size: 32, offset: 224)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4280, file: !88, line: 109, baseType: !4239, size: 64, offset: 448)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4280, file: !88, line: 110, baseType: !4230, size: 64, offset: 512)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4280, file: !88, line: 111, baseType: !4239, size: 64, offset: 576)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4280, file: !88, line: 112, baseType: !4230, size: 64, offset: 640)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4280, file: !88, line: 113, baseType: !4316, size: 64, offset: 704)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!109, !4202, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4321)
!4321 = !{!4322}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4320, file: !101, line: 59, baseType: !109, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4280, file: !88, line: 114, baseType: !4239, size: 64, offset: 768)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4280, file: !88, line: 115, baseType: !329, size: 64, offset: 832)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4280, file: !88, line: 116, baseType: !329, size: 64, offset: 896)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4280, file: !88, line: 118, baseType: !4234, size: 64, offset: 960)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4280, file: !88, line: 119, baseType: !4230, size: 64, offset: 1024)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4280, file: !88, line: 121, baseType: !4329, size: 64, offset: 1088)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4267, file: !4268, line: 88, baseType: !4219, size: 64, offset: 384)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4267, file: !4268, line: 89, baseType: !4239, size: 64, offset: 448)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4267, file: !4268, line: 90, baseType: !4230, size: 64, offset: 512)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4267, file: !4268, line: 91, baseType: !4230, size: 64, offset: 576)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4267, file: !4268, line: 92, baseType: !4230, size: 64, offset: 640)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4267, file: !4268, line: 94, baseType: !4239, size: 64, offset: 704)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4267, file: !4268, line: 95, baseType: !4239, size: 64, offset: 768)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4267, file: !4268, line: 97, baseType: !4316, size: 64, offset: 832)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4267, file: !4268, line: 98, baseType: !4239, size: 64, offset: 896)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4267, file: !4268, line: 100, baseType: !4239, size: 64, offset: 960)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4267, file: !4268, line: 102, baseType: !4239, size: 64, offset: 1024)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4267, file: !4268, line: 103, baseType: !4230, size: 64, offset: 1088)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4267, file: !4268, line: 105, baseType: !4234, size: 64, offset: 1152)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4267, file: !4268, line: 107, baseType: !4345, size: 64, offset: 1216)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4347)
!4347 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4268, line: 107, flags: DIFlagFwdDecl)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4267, file: !4268, line: 109, baseType: !1478, size: 8, offset: 1280)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4203, file: !94, line: 715, baseType: !4279, size: 64, offset: 832)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4203, file: !94, line: 717, baseType: !349, size: 64, offset: 896)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4203, file: !94, line: 719, baseType: !349, size: 64, offset: 960)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4203, file: !94, line: 721, baseType: !658, size: 256, offset: 1024)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4203, file: !94, line: 725, baseType: !4354, size: 448, offset: 1280)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4359}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4354, file: !94, line: 518, baseType: !177, size: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4354, file: !94, line: 519, baseType: !177, size: 128, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4354, file: !94, line: 520, baseType: !177, size: 128, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4354, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4203, file: !94, line: 726, baseType: !4361, size: 2496, offset: 1728)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4362)
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4445, !4449}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4361, file: !101, line: 664, baseType: !4319, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4361, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4361, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4361, file: !101, line: 667, baseType: !1478, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4361, file: !101, line: 668, baseType: !1478, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4361, file: !101, line: 669, baseType: !1478, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4361, file: !101, line: 670, baseType: !1478, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4361, file: !101, line: 671, baseType: !1478, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4361, file: !101, line: 672, baseType: !1478, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4361, file: !101, line: 673, baseType: !1478, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4361, file: !101, line: 674, baseType: !1478, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4361, file: !101, line: 675, baseType: !427, size: 32, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4361, file: !101, line: 676, baseType: !207, size: 32, offset: 96)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4361, file: !101, line: 678, baseType: !177, size: 128, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4361, file: !101, line: 679, baseType: !1870, size: 256, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4361, file: !101, line: 680, baseType: !4379, size: 64, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4381, line: 43, size: 1536, elements: !4382)
!4381 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4380, file: !4381, line: 44, baseType: !196, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4380, file: !4381, line: 45, baseType: !109, size: 32, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4380, file: !4381, line: 46, baseType: !177, size: 128, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4380, file: !4381, line: 47, baseType: !207, size: 32, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4380, file: !4381, line: 48, baseType: !4388, size: 64, offset: 320)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4380, file: !4381, line: 49, baseType: !2857, size: 320, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4380, file: !4381, line: 50, baseType: !327, size: 64, offset: 704)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4380, file: !4381, line: 51, baseType: !1122, size: 64, offset: 768)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4380, file: !4381, line: 52, baseType: !1122, size: 64, offset: 832)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4380, file: !4381, line: 53, baseType: !1122, size: 64, offset: 896)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4380, file: !4381, line: 54, baseType: !1122, size: 64, offset: 960)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4380, file: !4381, line: 55, baseType: !1122, size: 64, offset: 1024)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4380, file: !4381, line: 56, baseType: !327, size: 64, offset: 1088)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4380, file: !4381, line: 57, baseType: !327, size: 64, offset: 1152)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4380, file: !4381, line: 58, baseType: !327, size: 64, offset: 1216)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4380, file: !4381, line: 59, baseType: !327, size: 64, offset: 1280)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4380, file: !4381, line: 60, baseType: !327, size: 64, offset: 1344)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4380, file: !4381, line: 61, baseType: !4202, size: 64, offset: 1408)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4380, file: !4381, line: 62, baseType: !1478, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4380, file: !4381, line: 63, baseType: !1478, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4361, file: !101, line: 681, baseType: !1478, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4361, file: !101, line: 682, baseType: !1478, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4361, file: !101, line: 683, baseType: !1478, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4361, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4361, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4361, file: !101, line: 690, baseType: !1114, size: 512, offset: 640)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4361, file: !101, line: 691, baseType: !431, size: 64, offset: 1152)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4361, file: !101, line: 692, baseType: !2186, size: 256, offset: 1216)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4361, file: !101, line: 693, baseType: !964, size: 192, offset: 1472)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4361, file: !101, line: 694, baseType: !4388, size: 64, offset: 1664)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4361, file: !101, line: 695, baseType: !227, size: 32, offset: 1728)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4361, file: !101, line: 696, baseType: !227, size: 32, offset: 1760)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4361, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4361, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4361, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4361, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4361, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4361, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4361, file: !101, line: 703, baseType: !1478, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4361, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4361, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4361, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4361, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4361, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4361, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4361, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4361, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4361, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4361, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4361, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4361, file: !101, line: 715, baseType: !431, size: 64, offset: 2048)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4361, file: !101, line: 716, baseType: !431, size: 64, offset: 2112)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4361, file: !101, line: 717, baseType: !431, size: 64, offset: 2176)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4361, file: !101, line: 718, baseType: !431, size: 64, offset: 2240)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4361, file: !101, line: 720, baseType: !4440, size: 64, offset: 2304)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4442)
!4442 = !{!4443, !4444}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4441, file: !101, line: 633, baseType: !207, size: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4441, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4361, file: !101, line: 721, baseType: !4446, size: 64, offset: 2368)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{null, !4202, !1421}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4361, file: !101, line: 722, baseType: !4450, size: 64, offset: 2432)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4203, file: !94, line: 727, baseType: !4453, size: 64, offset: 4224)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4462, !4463, !4464}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4454, file: !101, line: 743, baseType: !4236, size: 1472)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4454, file: !101, line: 744, baseType: !4239, size: 64, offset: 1472)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4454, file: !101, line: 745, baseType: !4459, size: 64, offset: 1536)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !4202, !1478}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4454, file: !101, line: 746, baseType: !4239, size: 64, offset: 1600)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4454, file: !101, line: 747, baseType: !4230, size: 64, offset: 1664)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4454, file: !101, line: 748, baseType: !4230, size: 64, offset: 1728)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4203, file: !94, line: 736, baseType: !4466, size: 128, offset: 4288)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4467)
!4467 = !{!4468, !4472}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4466, file: !94, line: 531, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4471, line: 13, flags: DIFlagFwdDecl)
!4471 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4466, file: !94, line: 532, baseType: !4473, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4203, file: !94, line: 738, baseType: !4476, size: 64, offset: 4416)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4478)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4203, file: !94, line: 740, baseType: !4480, size: 64, offset: 4480)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4203, file: !94, line: 741, baseType: !431, size: 64, offset: 4544)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4203, file: !94, line: 746, baseType: !431, size: 64, offset: 4608)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4203, file: !94, line: 747, baseType: !4484, size: 64, offset: 4672)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4486)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4203, file: !94, line: 749, baseType: !4488, size: 64, offset: 4736)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4490)
!4490 = !{!4491, !4492, !4493}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4489, file: !94, line: 433, baseType: !7, size: 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4489, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4489, file: !94, line: 435, baseType: !327, size: 64, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4203, file: !94, line: 751, baseType: !177, size: 128, offset: 4800)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4203, file: !94, line: 762, baseType: !4496, size: 64, offset: 4928)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4203, file: !94, line: 770, baseType: !4499, offset: 4992)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4500, line: 5, elements: !562)
!4500 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4203, file: !94, line: 772, baseType: !4502, size: 64, offset: 4992)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4504, line: 18, flags: DIFlagFwdDecl)
!4504 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4203, file: !94, line: 773, baseType: !4506, size: 64, offset: 5056)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4508, line: 41, size: 512, elements: !4509)
!4508 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4509 = !{!4510, !4511, !4605, !4606, !4607, !4608}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4507, file: !4508, line: 42, baseType: !4506, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4507, file: !4508, line: 43, baseType: !4512, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4514)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4508, line: 125, size: 1408, elements: !4515)
!4515 = !{!4516, !4520, !4524, !4530, !4534, !4535, !4540, !4544, !4548, !4552, !4556, !4557, !4561, !4565, !4569, !4580, !4581, !4582, !4583, !4593, !4597, !4601}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4514, file: !4508, line: 126, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!4506, !4506}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4514, file: !4508, line: 127, baseType: !4521, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !4506}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4514, file: !4508, line: 128, baseType: !4525, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!1478, !4528}
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4507)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4514, file: !4508, line: 129, baseType: !4531, size: 64, offset: 192)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!2147, !4528, !4222}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4514, file: !4508, line: 131, baseType: !4525, size: 64, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4514, file: !4508, line: 133, baseType: !4536, size: 64, offset: 320)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!4539, !4528}
!4539 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4508, line: 132, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4514, file: !4508, line: 134, baseType: !4541, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!1478, !4528, !196}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4514, file: !4508, line: 136, baseType: !4545, size: 64, offset: 448)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!109, !4528, !196, !7, !349, !324}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4514, file: !4508, line: 141, baseType: !4549, size: 64, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!109, !4528, !196, !4090, !324}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4514, file: !4508, line: 144, baseType: !4553, size: 64, offset: 576)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!196, !4528}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4514, file: !4508, line: 145, baseType: !4553, size: 64, offset: 640)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4514, file: !4508, line: 146, baseType: !4558, size: 64, offset: 704)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!4506, !4528}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4514, file: !4508, line: 148, baseType: !4562, size: 64, offset: 768)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!4506, !4528, !4506}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4514, file: !4508, line: 151, baseType: !4566, size: 64, offset: 832)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!4506, !4528, !196}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4514, file: !4508, line: 153, baseType: !4570, size: 64, offset: 896)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!109, !4528, !196, !196, !7, !7, !4573}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4508, line: 94, size: 640, elements: !4575)
!4575 = !{!4576, !4577, !4578}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4574, file: !4508, line: 95, baseType: !4506, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4574, file: !4508, line: 96, baseType: !7, size: 32, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4574, file: !4508, line: 97, baseType: !4579, size: 512, offset: 128)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 512, elements: !1157)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4514, file: !4508, line: 158, baseType: !4562, size: 64, offset: 960)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4514, file: !4508, line: 161, baseType: !4558, size: 64, offset: 1024)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4514, file: !4508, line: 163, baseType: !4517, size: 64, offset: 1088)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4514, file: !4508, line: 164, baseType: !4584, size: 64, offset: 1152)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!109, !4528, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4508, line: 73, size: 128, elements: !4589)
!4589 = !{!4590, !4591, !4592}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4588, file: !4508, line: 74, baseType: !7, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4588, file: !4508, line: 75, baseType: !7, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4588, file: !4508, line: 76, baseType: !4528, size: 64, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4514, file: !4508, line: 166, baseType: !4594, size: 64, offset: 1216)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!349, !4506, !109}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4514, file: !4508, line: 167, baseType: !4598, size: 64, offset: 1280)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!109, !4528, !7}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4514, file: !4508, line: 168, baseType: !4602, size: 64, offset: 1344)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!109, !4506}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4507, file: !4508, line: 44, baseType: !4202, size: 64, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4507, file: !4508, line: 45, baseType: !177, size: 128, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4507, file: !4508, line: 46, baseType: !177, size: 128, offset: 320)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4507, file: !4508, line: 47, baseType: !235, size: 8, offset: 448)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4203, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4203, file: !94, line: 778, baseType: !514, size: 32, offset: 5152)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4203, file: !94, line: 779, baseType: !427, size: 32, offset: 5184)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4203, file: !94, line: 781, baseType: !207, size: 32, offset: 5216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4203, file: !94, line: 782, baseType: !177, size: 128, offset: 5248)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4203, file: !94, line: 784, baseType: !4615, size: 64, offset: 5376)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4617)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4618, line: 52, size: 768, elements: !4619)
!4618 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4619 = !{!4620, !4621, !4622, !4623, !4624, !4628, !4632, !4633, !4634, !4635, !4639, !4643}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4617, file: !4618, line: 53, baseType: !196, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4617, file: !4618, line: 55, baseType: !329, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4617, file: !4618, line: 56, baseType: !329, size: 64, offset: 128)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4617, file: !4618, line: 58, baseType: !4219, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4617, file: !4618, line: 59, baseType: !4625, size: 64, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!277, !4222, !4228}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4617, file: !4618, line: 61, baseType: !4629, size: 64, offset: 320)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4615}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4617, file: !4618, line: 62, baseType: !4230, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4617, file: !4618, line: 64, baseType: !4239, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4617, file: !4618, line: 66, baseType: !3642, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4617, file: !4618, line: 67, baseType: !4636, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!2147, !4222}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4617, file: !4618, line: 69, baseType: !4640, size: 64, offset: 640)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !4222, !3674, !3675}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4617, file: !4618, line: 71, baseType: !4234, size: 64, offset: 704)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4203, file: !94, line: 785, baseType: !329, size: 64, offset: 5440)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4203, file: !94, line: 787, baseType: !4230, size: 64, offset: 5504)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4203, file: !94, line: 788, baseType: !4647, size: 64, offset: 5568)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4203, file: !94, line: 789, baseType: !4650, size: 64, offset: 5632)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4203, file: !94, line: 791, baseType: !4653, size: 64, offset: 5696)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659, !4660}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4654, file: !94, line: 598, baseType: !116, size: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4654, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4654, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4654, file: !94, line: 601, baseType: !1478, size: 8, offset: 96)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4654, file: !94, line: 602, baseType: !1478, size: 8, offset: 104)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4203, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4203, file: !94, line: 795, baseType: !1478, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4203, file: !94, line: 796, baseType: !1478, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4203, file: !94, line: 797, baseType: !1478, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4203, file: !94, line: 798, baseType: !1478, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4203, file: !94, line: 799, baseType: !1478, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4136, file: !4131, line: 676, baseType: !4203, size: 5824, offset: 2240)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4136, file: !4131, line: 677, baseType: !343, size: 64, offset: 8064)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4136, file: !4131, line: 678, baseType: !343, size: 64, offset: 8128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4136, file: !4131, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4136, file: !4131, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4130, file: !4131, line: 325, baseType: !4135, size: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4130, file: !4131, line: 327, baseType: !349, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4130, file: !4131, line: 328, baseType: !4187, size: 64, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4130, file: !4131, line: 329, baseType: !4676, size: 64, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4131, line: 76, size: 832, elements: !4678)
!4678 = !{!4679, !4680, !4681, !4684, !4685}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4677, file: !4131, line: 77, baseType: !4135, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4677, file: !4131, line: 78, baseType: !177, size: 128, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4677, file: !4131, line: 79, baseType: !4682, size: 64, offset: 192)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4131, line: 79, flags: DIFlagFwdDecl)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4677, file: !4131, line: 80, baseType: !239, size: 8, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4677, file: !4131, line: 81, baseType: !192, size: 512, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4130, file: !4131, line: 331, baseType: !7, size: 32, offset: 448)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4130, file: !4131, line: 332, baseType: !247, size: 16, offset: 480)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4130, file: !4131, line: 333, baseType: !247, size: 16, offset: 496)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4130, file: !4131, line: 334, baseType: !247, size: 16, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4130, file: !4131, line: 335, baseType: !247, size: 16, offset: 528)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4130, file: !4131, line: 336, baseType: !7, size: 32, offset: 544)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4130, file: !4131, line: 337, baseType: !235, size: 8, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4130, file: !4131, line: 338, baseType: !235, size: 8, offset: 584)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4130, file: !4131, line: 344, baseType: !4695, size: 64, offset: 640)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4131, line: 319, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4130, file: !4131, line: 345, baseType: !4129, size: 64, offset: 704)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4130, file: !4131, line: 347, baseType: !427, size: 32, offset: 768)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4130, file: !4131, line: 348, baseType: !235, size: 8, offset: 800)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4130, file: !4131, line: 349, baseType: !235, size: 8, offset: 808)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4130, file: !4131, line: 350, baseType: !235, size: 8, offset: 816)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4130, file: !4131, line: 351, baseType: !235, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4130, file: !4131, line: 352, baseType: !235, size: 8, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4130, file: !4131, line: 353, baseType: !235, size: 8, offset: 840)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4130, file: !4131, line: 354, baseType: !245, size: 16, offset: 848)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4130, file: !4131, line: 355, baseType: !4104, size: 64, offset: 896)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4130, file: !4131, line: 357, baseType: !4708, size: 64, offset: 960)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4131, line: 918, size: 2368, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4726, !4730, !4734, !4738, !4742, !4743, !4747, !4748, !4752, !4772, !4773, !4774, !4775, !4780}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4709, file: !4131, line: 919, baseType: !177, size: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4709, file: !4131, line: 920, baseType: !196, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4709, file: !4131, line: 921, baseType: !4714, size: 64, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4716)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4292, line: 44, size: 320, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4716, file: !4292, line: 45, baseType: !428, size: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4716, file: !4292, line: 45, baseType: !428, size: 32, offset: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4716, file: !4292, line: 46, baseType: !428, size: 32, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4716, file: !4292, line: 46, baseType: !428, size: 32, offset: 96)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4716, file: !4292, line: 47, baseType: !428, size: 32, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4716, file: !4292, line: 47, baseType: !428, size: 32, offset: 160)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4716, file: !4292, line: 48, baseType: !4308, size: 64, offset: 192)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4716, file: !4292, line: 49, baseType: !428, size: 32, offset: 256)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4709, file: !4131, line: 922, baseType: !4727, size: 64, offset: 256)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!109, !4129, !4714}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4709, file: !4131, line: 923, baseType: !4731, size: 64, offset: 320)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !4129}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4709, file: !4131, line: 924, baseType: !4735, size: 64, offset: 384)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!109, !4129, !4319}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4709, file: !4131, line: 925, baseType: !4739, size: 64, offset: 448)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!109, !4129}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4709, file: !4131, line: 926, baseType: !4731, size: 64, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4709, file: !4131, line: 927, baseType: !4744, size: 64, offset: 576)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!109, !4129, !109}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4709, file: !4131, line: 928, baseType: !4744, size: 64, offset: 640)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4709, file: !4131, line: 929, baseType: !4749, size: 64, offset: 704)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!427, !4129}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4709, file: !4131, line: 930, baseType: !4753, size: 64, offset: 768)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4755)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4131, line: 837, size: 448, elements: !4756)
!4756 = !{!4757, !4763, !4767, !4768, !4769, !4770, !4771}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4755, file: !4131, line: 839, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!4761, !4129, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4131, line: 814, baseType: !7)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4131, line: 196, baseType: !7)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4755, file: !4131, line: 843, baseType: !4764, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!4761, !4129}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4755, file: !4131, line: 846, baseType: !4764, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4755, file: !4131, line: 849, baseType: !4731, size: 64, offset: 192)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4755, file: !4131, line: 850, baseType: !4731, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4755, file: !4131, line: 853, baseType: !4731, size: 64, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4755, file: !4131, line: 856, baseType: !4731, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4709, file: !4131, line: 931, baseType: !329, size: 64, offset: 832)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4709, file: !4131, line: 932, baseType: !329, size: 64, offset: 896)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4709, file: !4131, line: 933, baseType: !4280, size: 1152, offset: 960)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4709, file: !4131, line: 934, baseType: !4776, size: 192, offset: 2112)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4131, line: 801, size: 192, elements: !4777)
!4777 = !{!4778, !4779}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4776, file: !4131, line: 802, baseType: !207, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4776, file: !4131, line: 803, baseType: !177, size: 128, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4709, file: !4131, line: 935, baseType: !1478, size: 8, offset: 2304)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4130, file: !4131, line: 358, baseType: !431, size: 64, offset: 1024)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4130, file: !4131, line: 364, baseType: !4489, size: 128, offset: 1088)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4130, file: !4131, line: 366, baseType: !4784, size: 32, offset: 1216)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4131, line: 171, baseType: !109)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4130, file: !4131, line: 369, baseType: !235, size: 8, offset: 1248)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4130, file: !4131, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4130, file: !4131, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4130, file: !4131, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4130, file: !4131, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4130, file: !4131, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4130, file: !4131, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4130, file: !4131, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4130, file: !4131, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4130, file: !4131, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4130, file: !4131, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4130, file: !4131, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4130, file: !4131, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4130, file: !4131, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4130, file: !4131, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4130, file: !4131, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4130, file: !4131, line: 390, baseType: !7, size: 32, offset: 1280)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4130, file: !4131, line: 391, baseType: !7, size: 32, offset: 1312)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4130, file: !4131, line: 394, baseType: !4804, size: 64, offset: 1344)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4131, line: 316, flags: DIFlagFwdDecl)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4130, file: !4131, line: 395, baseType: !245, size: 16, offset: 1408)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4130, file: !4131, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4130, file: !4131, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4130, file: !4131, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4130, file: !4131, line: 402, baseType: !4762, size: 32, offset: 1440)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4130, file: !4131, line: 403, baseType: !4203, size: 5824, offset: 1472)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4130, file: !4131, line: 405, baseType: !109, size: 32, offset: 7296)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4130, file: !4131, line: 411, baseType: !7, size: 32, offset: 7328)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4130, file: !4131, line: 412, baseType: !4815, size: 5632, offset: 7360)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4147, size: 5632, elements: !4816)
!4816 = !{!4817}
!4817 = !DISubrange(count: 11)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4130, file: !4131, line: 413, baseType: !4147, size: 512, offset: 12992)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4130, file: !4131, line: 415, baseType: !1478, size: 8, offset: 13504)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4130, file: !4131, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4130, file: !4131, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4130, file: !4131, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4130, file: !4131, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4130, file: !4131, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4130, file: !4131, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4130, file: !4131, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4130, file: !4131, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4130, file: !4131, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4130, file: !4131, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4130, file: !4131, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4130, file: !4131, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4130, file: !4131, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4130, file: !4131, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4130, file: !4131, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4130, file: !4131, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4130, file: !4131, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4130, file: !4131, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4130, file: !4131, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4130, file: !4131, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4130, file: !4131, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4130, file: !4131, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4130, file: !4131, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4130, file: !4131, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4130, file: !4131, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4130, file: !4131, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4130, file: !4131, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4130, file: !4131, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4130, file: !4131, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4130, file: !4131, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4130, file: !4131, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4130, file: !4131, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4130, file: !4131, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4130, file: !4131, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4130, file: !4131, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4130, file: !4131, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4130, file: !4131, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4130, file: !4131, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4130, file: !4131, line: 468, baseType: !4859, size: 16, offset: 13552)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4131, line: 222, baseType: !247)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4130, file: !4131, line: 469, baseType: !227, size: 32, offset: 13568)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4130, file: !4131, line: 471, baseType: !207, size: 32, offset: 13600)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4130, file: !4131, line: 472, baseType: !4863, size: 512, offset: 13632)
!4863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 512, elements: !2339)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4130, file: !4131, line: 473, baseType: !550, size: 64, offset: 14144)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4130, file: !4131, line: 474, baseType: !4866, size: 704, offset: 14208)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 704, elements: !4816)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4130, file: !4131, line: 475, baseType: !4866, size: 704, offset: 14912)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4130, file: !4131, line: 487, baseType: !349, size: 64, offset: 15616)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4130, file: !4131, line: 488, baseType: !671, size: 32, offset: 15680)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4130, file: !4131, line: 490, baseType: !4871, size: 320, offset: 15744)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4131, line: 309, size: 320, elements: !4872)
!4872 = !{!4873, !4874, !4875}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4871, file: !4131, line: 310, baseType: !658, size: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4871, file: !4131, line: 311, baseType: !7, size: 32, offset: 256)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4871, file: !4131, line: 312, baseType: !235, size: 8, offset: 288)
!4876 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !4131, line: 497, baseType: !4877, size: 64, offset: 16064)
!4877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !4131, line: 497, size: 64, elements: !4878)
!4878 = !{!4879, !4882}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4877, file: !4131, line: 498, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4131, line: 317, flags: DIFlagFwdDecl)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4877, file: !4131, line: 499, baseType: !4129, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4130, file: !4131, line: 501, baseType: !245, size: 16, offset: 16128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4130, file: !4131, line: 502, baseType: !235, size: 8, offset: 16144)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4130, file: !4131, line: 505, baseType: !245, size: 16, offset: 16160)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4130, file: !4131, line: 506, baseType: !427, size: 32, offset: 16192)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4130, file: !4131, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4130, file: !4131, line: 510, baseType: !245, size: 16, offset: 16240)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4130, file: !4131, line: 511, baseType: !245, size: 16, offset: 16256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4130, file: !4131, line: 519, baseType: !245, size: 16, offset: 16272)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4130, file: !4131, line: 520, baseType: !2881, size: 64, offset: 16320)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4130, file: !4131, line: 521, baseType: !324, size: 64, offset: 16384)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4130, file: !4131, line: 526, baseType: !196, size: 64, offset: 16448)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4130, file: !4131, line: 528, baseType: !327, size: 64, offset: 16512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4130, file: !4131, line: 531, baseType: !4896, size: 56, offset: 16576)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 56, elements: !3920)
!4897 = !{!4898, !4903, !4908, !4913, !4915, !4919, !4924, !4926, !4931, !4936, !4941, !4943, !4945, !0, !4950, !4953, !4958, !4961, !4963, !4965, !4967, !4969, !4971, !4973, !4978, !4983, !5118, !5122, !5125, !5130, !5135, !5138, !5143, !5148, !5153, !5158, !5164, !5167, !5169, !5171, !5176, !5181, !5184, !5189, !5191, !5196, !5198, !5200, !5202, !5204, !5207}
!4898 = !DIGlobalVariableExpression(var: !4899, expr: !DIExpression())
!4899 = distinct !DIGlobalVariable(scope: null, file: !3, line: 747, type: !4900, isLocal: true, isDefinition: true)
!4900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 80, elements: !4901)
!4901 = !{!4902}
!4902 = !DISubrange(count: 10)
!4903 = !DIGlobalVariableExpression(var: !4904, expr: !DIExpression())
!4904 = distinct !DIGlobalVariable(scope: null, file: !3, line: 753, type: !4905, isLocal: true, isDefinition: true)
!4905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 344, elements: !4906)
!4906 = !{!4907}
!4907 = !DISubrange(count: 43)
!4908 = !DIGlobalVariableExpression(var: !4909, expr: !DIExpression())
!4909 = distinct !DIGlobalVariable(scope: null, file: !3, line: 757, type: !4910, isLocal: true, isDefinition: true)
!4910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 400, elements: !4911)
!4911 = !{!4912}
!4912 = !DISubrange(count: 50)
!4913 = !DIGlobalVariableExpression(var: !4914, expr: !DIExpression())
!4914 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_amd64_agp__292_800_agp_amd64_mod_init6293", scope: !2, file: !3, line: 800, type: !349, isLocal: true, isDefinition: true)
!4915 = !DIGlobalVariableExpression(var: !4916, expr: !DIExpression())
!4916 = distinct !DIGlobalVariable(name: "__exitcall_agp_amd64_cleanup", scope: !2, file: !3, line: 801, type: !4917, isLocal: true, isDefinition: true)
!4917 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4918, line: 120, baseType: !4117)
!4918 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4919 = !DIGlobalVariableExpression(var: !4920, expr: !DIExpression())
!4920 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author294", scope: !2, file: !3, line: 803, type: !4921, isLocal: true, isDefinition: true, align: 8)
!4921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 320, elements: !4922)
!4922 = !{!4923}
!4923 = !DISubrange(count: 40)
!4924 = !DIGlobalVariableExpression(var: !4925, expr: !DIExpression())
!4925 = distinct !DIGlobalVariable(name: "__param_agp_try_unsupported", scope: !2, file: !3, line: 804, type: !3851, isLocal: true, isDefinition: true, align: 64)
!4926 = !DIGlobalVariableExpression(var: !4927, expr: !DIExpression())
!4927 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_agp_try_unsupportedtype295", scope: !2, file: !3, line: 804, type: !4928, isLocal: true, isDefinition: true, align: 8)
!4928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 352, elements: !4929)
!4929 = !{!4930}
!4930 = !DISubrange(count: 44)
!4931 = !DIGlobalVariableExpression(var: !4932, expr: !DIExpression())
!4932 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file296", scope: !2, file: !3, line: 805, type: !4933, isLocal: true, isDefinition: true, align: 8)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 336, elements: !4934)
!4934 = !{!4935}
!4935 = !DISubrange(count: 42)
!4936 = !DIGlobalVariableExpression(var: !4937, expr: !DIExpression())
!4937 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license297", scope: !2, file: !3, line: 805, type: !4938, isLocal: true, isDefinition: true, align: 8)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 176, elements: !4939)
!4939 = !{!4940}
!4940 = !DISubrange(count: 22)
!4941 = !DIGlobalVariableExpression(var: !4942, expr: !DIExpression())
!4942 = distinct !DIGlobalVariable(name: "aperture_resource", scope: !2, file: !3, line: 36, type: !4146, isLocal: true, isDefinition: true)
!4943 = !DIGlobalVariableExpression(var: !4944, expr: !DIExpression())
!4944 = distinct !DIGlobalVariable(name: "agp_bridges_found", scope: !2, file: !3, line: 38, type: !109, isLocal: true, isDefinition: true)
!4945 = !DIGlobalVariableExpression(var: !4946, expr: !DIExpression())
!4946 = distinct !DIGlobalVariable(scope: null, file: !3, line: 731, type: !4947, isLocal: true, isDefinition: true)
!4947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 112, elements: !4948)
!4948 = !{!4949}
!4949 = !DISubrange(count: 14)
!4950 = !DIGlobalVariableExpression(var: !4951, expr: !DIExpression())
!4951 = distinct !DIGlobalVariable(name: "agp_amd64_pci_table", scope: !2, file: !3, line: 601, type: !4952, isLocal: true, isDefinition: true)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4715, size: 4480, elements: !4948)
!4953 = !DIGlobalVariableExpression(var: !4954, expr: !DIExpression())
!4954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 538, type: !4955, isLocal: true, isDefinition: true)
!4955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 192, elements: !4956)
!4956 = !{!4957}
!4957 = !DISubrange(count: 24)
!4958 = !DIGlobalVariableExpression(var: !4959, expr: !DIExpression())
!4959 = distinct !DIGlobalVariable(scope: null, file: !3, line: 357, type: !4960, isLocal: true, isDefinition: true)
!4960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 24, elements: !278)
!4961 = !DIGlobalVariableExpression(var: !4962, expr: !DIExpression())
!4962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 358, type: !4960, isLocal: true, isDefinition: true)
!4963 = !DIGlobalVariableExpression(var: !4964, expr: !DIExpression())
!4964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !4960, isLocal: true, isDefinition: true)
!4965 = !DIGlobalVariableExpression(var: !4966, expr: !DIExpression())
!4966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 360, type: !4960, isLocal: true, isDefinition: true)
!4967 = !DIGlobalVariableExpression(var: !4968, expr: !DIExpression())
!4968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !4960, isLocal: true, isDefinition: true)
!4969 = !DIGlobalVariableExpression(var: !4970, expr: !DIExpression())
!4970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !4960, isLocal: true, isDefinition: true)
!4971 = !DIGlobalVariableExpression(var: !4972, expr: !DIExpression())
!4972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !4960, isLocal: true, isDefinition: true)
!4973 = !DIGlobalVariableExpression(var: !4974, expr: !DIExpression())
!4974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !4975, isLocal: true, isDefinition: true)
!4975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 224, elements: !4976)
!4976 = !{!4977}
!4977 = !DISubrange(count: 28)
!4978 = !DIGlobalVariableExpression(var: !4979, expr: !DIExpression())
!4979 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !4980, isLocal: true, isDefinition: true)
!4980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 432, elements: !4981)
!4981 = !{!4982}
!4982 = !DISubrange(count: 54)
!4983 = !DIGlobalVariableExpression(var: !4984, expr: !DIExpression())
!4984 = distinct !DIGlobalVariable(name: "amd_8151_driver", scope: !2, file: !3, line: 216, type: !4985, isLocal: true, isDefinition: true)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4986)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_driver", file: !142, line: 97, size: 1472, elements: !4987)
!4987 = !{!4988, !4989, !4990, !4991, !4992, !4993, !4994, !5001, !5002, !5003, !5046, !5047, !5081, !5085, !5086, !5090, !5091, !5095, !5096, !5100, !5101, !5105, !5109, !5113, !5114}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4986, file: !142, line: 98, baseType: !172, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_sizes", scope: !4986, file: !142, line: 99, baseType: !2147, size: 64, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "num_aperture_sizes", scope: !4986, file: !142, line: 100, baseType: !109, size: 32, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "size_type", scope: !4986, file: !142, line: 101, baseType: !141, size: 32, offset: 160)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "cant_use_aperture", scope: !4986, file: !142, line: 102, baseType: !1478, size: 8, offset: 192)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "needs_scratch_page", scope: !4986, file: !142, line: 103, baseType: !1478, size: 8, offset: 200)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !4986, file: !142, line: 104, baseType: !4995, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4997)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_mask", file: !142, line: 53, size: 128, elements: !4998)
!4998 = !{!4999, !5000}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4997, file: !142, line: 54, baseType: !327, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4997, file: !142, line: 55, baseType: !427, size: 32, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_size", scope: !4986, file: !142, line: 105, baseType: !3901, size: 64, offset: 320)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !4986, file: !142, line: 106, baseType: !3901, size: 64, offset: 384)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "agp_enable", scope: !4986, file: !142, line: 107, baseType: !5004, size: 64, offset: 448)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !5007, !427}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_data", file: !142, line: 125, size: 1664, elements: !5009)
!5009 = !{!5010, !5017, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5008, file: !142, line: 126, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5013)
!5013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_version", file: !150, line: 40, size: 32, elements: !5014)
!5014 = !{!5015, !5016}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !5013, file: !150, line: 41, baseType: !245, size: 16)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5013, file: !150, line: 42, baseType: !245, size: 16, offset: 16)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5008, file: !142, line: 127, baseType: !5018, size: 64, offset: 64)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5008, file: !142, line: 128, baseType: !1721, size: 64, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "previous_size", scope: !5008, file: !142, line: 129, baseType: !349, size: 64, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "current_size", scope: !5008, file: !142, line: 130, baseType: !349, size: 64, offset: 256)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private_data", scope: !5008, file: !142, line: 131, baseType: !349, size: 64, offset: 320)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5008, file: !142, line: 132, baseType: !4129, size: 64, offset: 384)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table", scope: !5008, file: !142, line: 133, baseType: !2237, size: 64, offset: 448)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table_real", scope: !5008, file: !142, line: 134, baseType: !2237, size: 64, offset: 512)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page", scope: !5008, file: !142, line: 135, baseType: !327, size: 64, offset: 576)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_page", scope: !5008, file: !142, line: 136, baseType: !1785, size: 64, offset: 640)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_dma", scope: !5008, file: !142, line: 137, baseType: !4126, size: 64, offset: 704)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "gart_bus_addr", scope: !5008, file: !142, line: 138, baseType: !327, size: 64, offset: 768)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_bus_addr", scope: !5008, file: !142, line: 139, baseType: !327, size: 64, offset: 832)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5008, file: !142, line: 140, baseType: !427, size: 32, offset: 896)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5008, file: !142, line: 141, baseType: !149, size: 32, offset: 928)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "key_list", scope: !5008, file: !142, line: 142, baseType: !4104, size: 64, offset: 960)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "current_memory_agp", scope: !5008, file: !142, line: 143, baseType: !227, size: 32, offset: 1024)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "agp_in_use", scope: !5008, file: !142, line: 144, baseType: !227, size: 32, offset: 1056)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_agp", scope: !5008, file: !142, line: 145, baseType: !109, size: 32, offset: 1088)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_size_idx", scope: !5008, file: !142, line: 146, baseType: !109, size: 32, offset: 1120)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "capndx", scope: !5008, file: !142, line: 147, baseType: !109, size: 32, offset: 1152)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5008, file: !142, line: 148, baseType: !109, size: 32, offset: 1184)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !5008, file: !142, line: 149, baseType: !185, size: 8, offset: 1216)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !5008, file: !142, line: 150, baseType: !185, size: 8, offset: 1224)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5008, file: !142, line: 151, baseType: !177, size: 128, offset: 1280)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "apbase_config", scope: !5008, file: !142, line: 152, baseType: !427, size: 32, offset: 1408)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !5008, file: !142, line: 154, baseType: !177, size: 128, offset: 1472)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_lock", scope: !5008, file: !142, line: 155, baseType: !207, size: 32, offset: 1600)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4986, file: !142, line: 108, baseType: !4117, size: 64, offset: 512)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush", scope: !4986, file: !142, line: 109, baseType: !5048, size: 64, offset: 576)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !5051}
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_memory", file: !150, line: 69, size: 832, elements: !5053)
!5053 = !{!5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5064, !5065, !5066, !5067, !5068, !5069, !5080}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5052, file: !150, line: 70, baseType: !5051, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5052, file: !150, line: 71, baseType: !5051, size: 64, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !5052, file: !150, line: 72, baseType: !5007, size: 64, offset: 128)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5052, file: !150, line: 73, baseType: !2877, size: 64, offset: 192)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !5052, file: !150, line: 74, baseType: !324, size: 64, offset: 256)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5052, file: !150, line: 75, baseType: !109, size: 32, offset: 320)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "num_scratch_pages", scope: !5052, file: !150, line: 76, baseType: !109, size: 32, offset: 352)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "pg_start", scope: !5052, file: !150, line: 77, baseType: !5062, size: 64, offset: 384)
!5062 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !178, line: 26, baseType: !5063)
!5063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !311, line: 87, baseType: !312)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5052, file: !150, line: 78, baseType: !427, size: 32, offset: 448)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !5052, file: !150, line: 79, baseType: !427, size: 32, offset: 480)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "is_bound", scope: !5052, file: !150, line: 80, baseType: !1478, size: 8, offset: 512)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !5052, file: !150, line: 81, baseType: !1478, size: 8, offset: 520)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !5052, file: !150, line: 83, baseType: !177, size: 128, offset: 576)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "sg_list", scope: !5052, file: !150, line: 85, baseType: !5070, size: 64, offset: 704)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5072, line: 11, size: 256, elements: !5073)
!5072 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5073 = !{!5074, !5075, !5076, !5077, !5078, !5079}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5071, file: !5072, line: 12, baseType: !327, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5071, file: !5072, line: 13, baseType: !7, size: 32, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5071, file: !5072, line: 14, baseType: !7, size: 32, offset: 96)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5071, file: !5072, line: 15, baseType: !4126, size: 64, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5071, file: !5072, line: 17, baseType: !7, size: 32, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5071, file: !5072, line: 20, baseType: !7, size: 32, offset: 224)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "num_sg", scope: !5052, file: !150, line: 86, baseType: !109, size: 32, offset: 768)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "mask_memory", scope: !4986, file: !142, line: 110, baseType: !5082, size: 64, offset: 640)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!327, !5007, !4126, !109}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "cache_flush", scope: !4986, file: !142, line: 111, baseType: !4117, size: 64, offset: 704)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "create_gatt_table", scope: !4986, file: !142, line: 112, baseType: !5087, size: 64, offset: 768)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!109, !5007}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "free_gatt_table", scope: !4986, file: !142, line: 113, baseType: !5087, size: 64, offset: 832)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "insert_memory", scope: !4986, file: !142, line: 114, baseType: !5092, size: 64, offset: 896)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!109, !5051, !5062, !109}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "remove_memory", scope: !4986, file: !142, line: 115, baseType: !5092, size: 64, offset: 960)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_by_type", scope: !4986, file: !142, line: 116, baseType: !5097, size: 64, offset: 1024)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!5051, !324, !109}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "free_by_type", scope: !4986, file: !142, line: 117, baseType: !5048, size: 64, offset: 1088)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_page", scope: !4986, file: !142, line: 118, baseType: !5102, size: 64, offset: 1152)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!1785, !5007}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_pages", scope: !4986, file: !142, line: 119, baseType: !5106, size: 64, offset: 1216)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!109, !5007, !5051, !324}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_page", scope: !4986, file: !142, line: 120, baseType: !5110, size: 64, offset: 1280)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{null, !1785, !109}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_pages", scope: !4986, file: !142, line: 121, baseType: !5048, size: 64, offset: 1344)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "agp_type_to_mask_type", scope: !4986, file: !142, line: 122, baseType: !5115, size: 64, offset: 1408)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!109, !5007, !109}
!5118 = !DIGlobalVariableExpression(var: !5119, expr: !DIExpression())
!5119 = distinct !DIGlobalVariable(name: "amd_8151_sizes", scope: !2, file: !3, line: 169, type: !5120, isLocal: true, isDefinition: true)
!5120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5121, size: 896, elements: !3920)
!5121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!5122 = !DIGlobalVariableExpression(var: !5123, expr: !DIExpression())
!5123 = distinct !DIGlobalVariable(name: "amd64_aperture_sizes", scope: !2, file: !3, line: 103, type: !5124, isLocal: true, isDefinition: true)
!5124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4120, size: 896, elements: !3920)
!5125 = !DIGlobalVariableExpression(var: !5126, expr: !DIExpression())
!5126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !5127, isLocal: true, isDefinition: true)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 232, elements: !5128)
!5128 = !{!5129}
!5129 = !DISubrange(count: 29)
!5130 = !DIGlobalVariableExpression(var: !5131, expr: !DIExpression())
!5131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !5132, isLocal: true, isDefinition: true)
!5132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 208, elements: !5133)
!5133 = !{!5134}
!5134 = !DISubrange(count: 26)
!5135 = !DIGlobalVariableExpression(var: !5136, expr: !DIExpression())
!5136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !5137, isLocal: true, isDefinition: true)
!5137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 512, elements: !282)
!5138 = !DIGlobalVariableExpression(var: !5139, expr: !DIExpression())
!5139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !5140, isLocal: true, isDefinition: true)
!5140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 464, elements: !5141)
!5141 = !{!5142}
!5142 = !DISubrange(count: 58)
!5143 = !DIGlobalVariableExpression(var: !5144, expr: !DIExpression())
!5144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 315, type: !5145, isLocal: true, isDefinition: true)
!5145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 288, elements: !5146)
!5146 = !{!5147}
!5147 = !DISubrange(count: 36)
!5148 = !DIGlobalVariableExpression(var: !5149, expr: !DIExpression())
!5149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !5150, isLocal: true, isDefinition: true)
!5150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 72, elements: !5151)
!5151 = !{!5152}
!5152 = !DISubrange(count: 9)
!5153 = !DIGlobalVariableExpression(var: !5154, expr: !DIExpression())
!5154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !5155, isLocal: true, isDefinition: true)
!5155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 392, elements: !5156)
!5156 = !{!5157}
!5157 = !DISubrange(count: 49)
!5158 = !DIGlobalVariableExpression(var: !5159, expr: !DIExpression())
!5159 = distinct !DIGlobalVariable(scope: null, file: !5160, line: 97, type: !5161, isLocal: true, isDefinition: true)
!5160 = !DIFile(filename: "./arch/x86/include/asm/gart.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dd59d0a2145069d88b0fbaeb10fe847")
!5161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 272, elements: !5162)
!5162 = !{!5163}
!5163 = !DISubrange(count: 34)
!5164 = !DIGlobalVariableExpression(var: !5165, expr: !DIExpression())
!5165 = distinct !DIGlobalVariable(scope: null, file: !5160, line: 101, type: !5166, isLocal: true, isDefinition: true)
!5166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 352, elements: !4929)
!5167 = !DIGlobalVariableExpression(var: !5168, expr: !DIExpression())
!5168 = distinct !DIGlobalVariable(scope: null, file: !5160, line: 105, type: !4905, isLocal: true, isDefinition: true)
!5169 = !DIGlobalVariableExpression(var: !5170, expr: !DIExpression())
!5170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !4955, isLocal: true, isDefinition: true)
!5171 = !DIGlobalVariableExpression(var: !5172, expr: !DIExpression())
!5172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !5173, isLocal: true, isDefinition: true)
!5173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 296, elements: !5174)
!5174 = !{!5175}
!5175 = !DISubrange(count: 37)
!5176 = !DIGlobalVariableExpression(var: !5177, expr: !DIExpression())
!5177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 472, type: !5178, isLocal: true, isDefinition: true)
!5178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 240, elements: !5179)
!5179 = !{!5180}
!5180 = !DISubrange(count: 30)
!5181 = !DIGlobalVariableExpression(var: !5182, expr: !DIExpression())
!5182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 488, type: !5183, isLocal: true, isDefinition: true)
!5183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 160, elements: !2977)
!5184 = !DIGlobalVariableExpression(var: !5185, expr: !DIExpression())
!5185 = distinct !DIGlobalVariable(name: "nforce3_sizes", scope: !2, file: !3, line: 441, type: !5186, isLocal: true, isDefinition: true)
!5186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5121, size: 640, elements: !5187)
!5187 = !{!5188}
!5188 = !DISubrange(count: 5)
!5189 = !DIGlobalVariableExpression(var: !5190, expr: !DIExpression())
!5190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !5183, isLocal: true, isDefinition: true)
!5191 = !DIGlobalVariableExpression(var: !5192, expr: !DIExpression())
!5192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !5193, isLocal: true, isDefinition: true)
!5193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 264, elements: !5194)
!5194 = !{!5195}
!5195 = !DISubrange(count: 33)
!5196 = !DIGlobalVariableExpression(var: !5197, expr: !DIExpression())
!5197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 409, type: !5132, isLocal: true, isDefinition: true)
!5198 = !DIGlobalVariableExpression(var: !5199, expr: !DIExpression())
!5199 = distinct !DIGlobalVariable(name: "uli_sizes", scope: !2, file: !3, line: 380, type: !5120, isLocal: true, isDefinition: true)
!5200 = !DIGlobalVariableExpression(var: !5201, expr: !DIExpression())
!5201 = distinct !DIGlobalVariable(name: "agp_amd64_pm_ops", scope: !2, file: !3, line: 728, type: !4235, isLocal: true, isDefinition: true)
!5202 = !DIGlobalVariableExpression(var: !5203, expr: !DIExpression())
!5203 = distinct !DIGlobalVariable(name: "agp_try_unsupported", scope: !2, file: !3, line: 37, type: !1478, isLocal: true, isDefinition: true)
!5204 = !DIGlobalVariableExpression(var: !5205, expr: !DIExpression())
!5205 = distinct !DIGlobalVariable(name: "agp_amd64_pci_promisc_table", scope: !2, file: !3, line: 723, type: !5206, isLocal: true, isDefinition: true)
!5206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4715, size: 640, elements: !2421)
!5207 = !DIGlobalVariableExpression(var: !5208, expr: !DIExpression())
!5208 = distinct !DIGlobalVariable(name: "__param_str_agp_try_unsupported", scope: !2, file: !3, line: 804, type: !5209, isLocal: true, isDefinition: true)
!5209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 240, elements: !5179)
!5210 = !{i32 7, !"Dwarf Version", i32 5}
!5211 = !{i32 2, !"Debug Info Version", i32 3}
!5212 = !{i32 1, !"wchar_size", i32 2}
!5213 = !{i32 8, !"cf-protection-branch", i32 1}
!5214 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5215 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5216 = !{i32 1, !"Code Model", i32 2}
!5217 = !{i32 1, !"override-stack-alignment", i32 8}
!5218 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5219 = distinct !DISubprogram(name: "agp_amd64_init", scope: !3, file: !3, line: 740, type: !3902, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5220)
!5220 = !{!5221}
!5221 = !DILocalVariable(name: "err", scope: !5219, file: !3, line: 742, type: !109)
!5222 = !DILocation(line: 742, column: 2, scope: !5219)
!5223 = !DILocation(line: 742, column: 6, scope: !5219)
!5224 = !DILocation(line: 744, column: 6, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 744, column: 6)
!5226 = !DILocation(line: 744, column: 6, scope: !5219)
!5227 = !DILocation(line: 745, column: 3, scope: !5225)
!5228 = !DILocation(line: 747, column: 8, scope: !5219)
!5229 = !DILocation(line: 747, column: 6, scope: !5219)
!5230 = !DILocation(line: 748, column: 6, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 748, column: 6)
!5232 = !DILocation(line: 748, column: 10, scope: !5231)
!5233 = !DILocation(line: 748, column: 6, scope: !5219)
!5234 = !DILocation(line: 749, column: 10, scope: !5231)
!5235 = !DILocation(line: 749, column: 3, scope: !5231)
!5236 = !DILocation(line: 751, column: 6, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 751, column: 6)
!5238 = !DILocation(line: 751, column: 24, scope: !5237)
!5239 = !DILocation(line: 751, column: 6, scope: !5219)
!5240 = !DILocation(line: 752, column: 8, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 752, column: 7)
!5242 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 751, column: 30)
!5243 = !{i8 0, i8 2}
!5244 = !DILocation(line: 752, column: 28, scope: !5241)
!5245 = !DILocation(line: 752, column: 32, scope: !5241)
!5246 = !DILocation(line: 752, column: 7, scope: !5242)
!5247 = !DILocation(line: 753, column: 4, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 753, column: 4)
!5249 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 752, column: 58)
!5250 = !DILocation(line: 753, column: 4, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 753, column: 4)
!5252 = !DILocation(line: 757, column: 4, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 757, column: 4)
!5254 = !DILocation(line: 757, column: 4, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 757, column: 4)
!5256 = !DILocation(line: 759, column: 4, scope: !5249)
!5257 = !DILocation(line: 760, column: 4, scope: !5249)
!5258 = !DILocation(line: 764, column: 8, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 764, column: 7)
!5260 = !DILocation(line: 764, column: 7, scope: !5242)
!5261 = !DILocation(line: 765, column: 4, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 764, column: 22)
!5263 = !DILocation(line: 766, column: 4, scope: !5262)
!5264 = !DILocation(line: 770, column: 33, scope: !5242)
!5265 = !DILocation(line: 771, column: 9, scope: !5242)
!5266 = !DILocation(line: 771, column: 7, scope: !5242)
!5267 = !DILocation(line: 772, column: 7, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 772, column: 7)
!5269 = !DILocation(line: 772, column: 11, scope: !5268)
!5270 = !DILocation(line: 772, column: 16, scope: !5268)
!5271 = !DILocation(line: 772, column: 19, scope: !5268)
!5272 = !DILocation(line: 772, column: 37, scope: !5268)
!5273 = !DILocation(line: 772, column: 7, scope: !5242)
!5274 = !DILocation(line: 773, column: 4, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 772, column: 43)
!5276 = !DILocation(line: 774, column: 8, scope: !5275)
!5277 = !DILocation(line: 775, column: 3, scope: !5275)
!5278 = !DILocation(line: 776, column: 2, scope: !5242)
!5279 = !DILocation(line: 777, column: 9, scope: !5219)
!5280 = !DILocation(line: 777, column: 2, scope: !5219)
!5281 = !DILocation(line: 778, column: 1, scope: !5219)
!5282 = !DISubprogram(name: "__pci_register_driver", scope: !4131, file: !4131, line: 1557, type: !5283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!109, !4708, !172, !196}
!5285 = !DISubprogram(name: "_printk", scope: !5286, file: !5286, line: 153, type: !5287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5286 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!109, !196, null}
!5289 = !DISubprogram(name: "pci_unregister_driver", scope: !4131, file: !4131, line: 1564, type: !5290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !4708}
!5292 = !DISubprogram(name: "amd_nb_num", scope: !5293, file: !5293, line: 81, type: !5294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5293 = !DIFile(filename: "./arch/x86/include/asm/amd_nb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0a32ff2229a1703a76a20aba8707eec")
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!245}
!5296 = !DISubprogram(name: "driver_attach", scope: !94, file: !94, line: 1171, type: !5297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!109, !4279}
!5299 = distinct !DISubprogram(name: "agp_amd64_cleanup", scope: !3, file: !3, line: 789, type: !2535, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5300 = !DILocation(line: 795, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 795, column: 6)
!5302 = !DILocation(line: 795, column: 6, scope: !5299)
!5303 = !DILocation(line: 796, column: 20, scope: !5301)
!5304 = !DILocation(line: 796, column: 3, scope: !5301)
!5305 = !DILocation(line: 797, column: 2, scope: !5299)
!5306 = !DILocation(line: 798, column: 1, scope: !5299)
!5307 = !DISubprogram(name: "release_resource", scope: !4148, file: !4148, line: 197, type: !5308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!109, !4146}
!5310 = distinct !DISubprogram(name: "__initstub__kmod_amd64_agp__292_800_agp_amd64_mod_init6", scope: !3, file: !3, line: 800, type: !3902, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5311 = !DILocation(line: 800, column: 1, scope: !5310)
!5312 = distinct !DISubprogram(name: "agp_amd64_mod_init", scope: !3, file: !3, line: 780, type: !3902, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5313 = !DILocation(line: 786, column: 9, scope: !5312)
!5314 = !DILocation(line: 786, column: 2, scope: !5312)
!5315 = distinct !DISubprogram(name: "agp_amd64_probe", scope: !3, file: !3, line: 513, type: !4728, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5316)
!5316 = !{!5317, !5318, !5319, !5320, !5321, !5322, !5325}
!5317 = !DILocalVariable(name: "pdev", arg: 1, scope: !5315, file: !3, line: 513, type: !4129)
!5318 = !DILocalVariable(name: "ent", arg: 2, scope: !5315, file: !3, line: 514, type: !4714)
!5319 = !DILocalVariable(name: "bridge", scope: !5315, file: !3, line: 516, type: !5007)
!5320 = !DILocalVariable(name: "cap_ptr", scope: !5315, file: !3, line: 517, type: !235)
!5321 = !DILocalVariable(name: "err", scope: !5315, file: !3, line: 518, type: !109)
!5322 = !DILocalVariable(name: "ret", scope: !5323, file: !3, line: 555, type: !109)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 554, column: 44)
!5324 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 554, column: 6)
!5325 = !DILocalVariable(name: "ret", scope: !5326, file: !3, line: 563, type: !109)
!5326 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 562, column: 40)
!5327 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 562, column: 6)
!5328 = !DILocation(line: 513, column: 44, scope: !5315)
!5329 = !DILocation(line: 514, column: 35, scope: !5315)
!5330 = !DILocation(line: 516, column: 2, scope: !5315)
!5331 = !DILocation(line: 516, column: 26, scope: !5315)
!5332 = !DILocation(line: 517, column: 2, scope: !5315)
!5333 = !DILocation(line: 517, column: 5, scope: !5315)
!5334 = !DILocation(line: 518, column: 2, scope: !5315)
!5335 = !DILocation(line: 518, column: 6, scope: !5315)
!5336 = !DILocation(line: 521, column: 6, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 521, column: 6)
!5338 = !DILocation(line: 521, column: 6, scope: !5315)
!5339 = !DILocation(line: 522, column: 3, scope: !5337)
!5340 = !DILocation(line: 524, column: 32, scope: !5315)
!5341 = !DILocation(line: 524, column: 12, scope: !5315)
!5342 = !DILocation(line: 524, column: 10, scope: !5315)
!5343 = !DILocation(line: 525, column: 7, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 525, column: 6)
!5345 = !DILocation(line: 525, column: 6, scope: !5315)
!5346 = !DILocation(line: 526, column: 3, scope: !5344)
!5347 = !DILocation(line: 530, column: 11, scope: !5315)
!5348 = !DILocation(line: 530, column: 9, scope: !5315)
!5349 = !DILocation(line: 531, column: 7, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 531, column: 6)
!5351 = !DILocation(line: 531, column: 6, scope: !5315)
!5352 = !DILocation(line: 532, column: 3, scope: !5350)
!5353 = !DILocation(line: 534, column: 6, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 534, column: 6)
!5355 = !DILocation(line: 534, column: 12, scope: !5354)
!5356 = !DILocation(line: 534, column: 19, scope: !5354)
!5357 = !DILocation(line: 534, column: 40, scope: !5354)
!5358 = !DILocation(line: 535, column: 6, scope: !5354)
!5359 = !DILocation(line: 535, column: 12, scope: !5354)
!5360 = !DILocation(line: 535, column: 19, scope: !5354)
!5361 = !DILocation(line: 534, column: 6, scope: !5315)
!5362 = !DILocation(line: 536, column: 16, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 535, column: 48)
!5364 = !DILocation(line: 536, column: 22, scope: !5363)
!5365 = !DILocation(line: 536, column: 3, scope: !5363)
!5366 = !DILocation(line: 537, column: 2, scope: !5363)
!5367 = !DILocation(line: 538, column: 3, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 538, column: 3)
!5369 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 537, column: 9)
!5370 = !DILocation(line: 538, column: 3, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 538, column: 3)
!5372 = !DILocation(line: 542, column: 2, scope: !5315)
!5373 = !DILocation(line: 542, column: 10, scope: !5315)
!5374 = !DILocation(line: 542, column: 17, scope: !5315)
!5375 = !DILocation(line: 543, column: 16, scope: !5315)
!5376 = !DILocation(line: 543, column: 2, scope: !5315)
!5377 = !DILocation(line: 543, column: 10, scope: !5315)
!5378 = !DILocation(line: 543, column: 14, scope: !5315)
!5379 = !DILocation(line: 544, column: 19, scope: !5315)
!5380 = !DILocation(line: 544, column: 2, scope: !5315)
!5381 = !DILocation(line: 544, column: 10, scope: !5315)
!5382 = !DILocation(line: 544, column: 17, scope: !5315)
!5383 = !DILocation(line: 547, column: 24, scope: !5315)
!5384 = !DILocation(line: 547, column: 30, scope: !5315)
!5385 = !DILocation(line: 547, column: 38, scope: !5315)
!5386 = !DILocation(line: 547, column: 44, scope: !5315)
!5387 = !DILocation(line: 547, column: 62, scope: !5315)
!5388 = !DILocation(line: 547, column: 70, scope: !5315)
!5389 = !DILocation(line: 547, column: 2, scope: !5315)
!5390 = !DILocation(line: 549, column: 16, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 549, column: 6)
!5392 = !DILocation(line: 549, column: 22, scope: !5391)
!5393 = !DILocation(line: 549, column: 6, scope: !5391)
!5394 = !DILocation(line: 549, column: 31, scope: !5391)
!5395 = !DILocation(line: 549, column: 6, scope: !5315)
!5396 = !DILocation(line: 550, column: 18, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 549, column: 38)
!5398 = !DILocation(line: 550, column: 3, scope: !5397)
!5399 = !DILocation(line: 551, column: 3, scope: !5397)
!5400 = !DILocation(line: 554, column: 6, scope: !5324)
!5401 = !DILocation(line: 554, column: 12, scope: !5324)
!5402 = !DILocation(line: 554, column: 19, scope: !5324)
!5403 = !DILocation(line: 554, column: 6, scope: !5315)
!5404 = !DILocation(line: 555, column: 3, scope: !5323)
!5405 = !DILocation(line: 555, column: 7, scope: !5323)
!5406 = !DILocation(line: 555, column: 30, scope: !5323)
!5407 = !DILocation(line: 555, column: 13, scope: !5323)
!5408 = !DILocation(line: 556, column: 7, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 556, column: 7)
!5410 = !DILocation(line: 556, column: 7, scope: !5323)
!5411 = !DILocation(line: 557, column: 19, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 556, column: 12)
!5413 = !DILocation(line: 557, column: 4, scope: !5412)
!5414 = !DILocation(line: 558, column: 11, scope: !5412)
!5415 = !DILocation(line: 558, column: 4, scope: !5412)
!5416 = !DILocation(line: 560, column: 2, scope: !5324)
!5417 = !DILocation(line: 560, column: 2, scope: !5323)
!5418 = !DILocation(line: 562, column: 6, scope: !5327)
!5419 = !DILocation(line: 562, column: 12, scope: !5327)
!5420 = !DILocation(line: 562, column: 19, scope: !5327)
!5421 = !DILocation(line: 562, column: 6, scope: !5315)
!5422 = !DILocation(line: 563, column: 3, scope: !5326)
!5423 = !DILocation(line: 563, column: 7, scope: !5326)
!5424 = !DILocation(line: 563, column: 26, scope: !5326)
!5425 = !DILocation(line: 563, column: 13, scope: !5326)
!5426 = !DILocation(line: 564, column: 7, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 564, column: 7)
!5428 = !DILocation(line: 564, column: 7, scope: !5326)
!5429 = !DILocation(line: 565, column: 19, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 564, column: 12)
!5431 = !DILocation(line: 565, column: 4, scope: !5430)
!5432 = !DILocation(line: 566, column: 11, scope: !5430)
!5433 = !DILocation(line: 566, column: 4, scope: !5430)
!5434 = !DILocation(line: 568, column: 2, scope: !5327)
!5435 = !DILocation(line: 568, column: 2, scope: !5326)
!5436 = !DILocation(line: 570, column: 18, scope: !5315)
!5437 = !DILocation(line: 570, column: 24, scope: !5315)
!5438 = !DILocation(line: 570, column: 2, scope: !5315)
!5439 = !DILocation(line: 571, column: 23, scope: !5315)
!5440 = !DILocation(line: 571, column: 8, scope: !5315)
!5441 = !DILocation(line: 571, column: 6, scope: !5315)
!5442 = !DILocation(line: 572, column: 6, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 572, column: 6)
!5444 = !DILocation(line: 572, column: 10, scope: !5443)
!5445 = !DILocation(line: 572, column: 6, scope: !5315)
!5446 = !DILocation(line: 573, column: 10, scope: !5443)
!5447 = !DILocation(line: 573, column: 3, scope: !5443)
!5448 = !DILocation(line: 575, column: 19, scope: !5315)
!5449 = !DILocation(line: 576, column: 2, scope: !5315)
!5450 = !DILocation(line: 577, column: 1, scope: !5315)
!5451 = distinct !DISubprogram(name: "agp_amd64_remove", scope: !3, file: !3, line: 579, type: !4732, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5452)
!5452 = !{!5453, !5454}
!5453 = !DILocalVariable(name: "pdev", arg: 1, scope: !5451, file: !3, line: 579, type: !4129)
!5454 = !DILocalVariable(name: "bridge", scope: !5451, file: !3, line: 581, type: !5007)
!5455 = !DILocation(line: 579, column: 46, scope: !5451)
!5456 = !DILocation(line: 581, column: 2, scope: !5451)
!5457 = !DILocation(line: 581, column: 26, scope: !5451)
!5458 = !DILocation(line: 581, column: 51, scope: !5451)
!5459 = !DILocation(line: 581, column: 35, scope: !5451)
!5460 = !DILocation(line: 583, column: 2, scope: !5451)
!5461 = !DILocation(line: 585, column: 20, scope: !5451)
!5462 = !DILocation(line: 585, column: 2, scope: !5451)
!5463 = !DILocation(line: 586, column: 17, scope: !5451)
!5464 = !DILocation(line: 586, column: 2, scope: !5451)
!5465 = !DILocation(line: 588, column: 19, scope: !5451)
!5466 = !DILocation(line: 589, column: 1, scope: !5451)
!5467 = !DISubprogram(name: "pci_find_capability", scope: !4131, file: !4131, line: 1164, type: !5468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!235, !4129, !109}
!5470 = !DISubprogram(name: "agp_alloc_bridge", scope: !142, file: !142, line: 183, type: !5471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!5007}
!5473 = distinct !DISubprogram(name: "amd8151_init", scope: !3, file: !3, line: 352, type: !5474, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5476)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{null, !4129, !5007}
!5476 = !{!5477, !5478, !5479}
!5477 = !DILocalVariable(name: "pdev", arg: 1, scope: !5473, file: !3, line: 352, type: !4129)
!5478 = !DILocalVariable(name: "bridge", arg: 2, scope: !5473, file: !3, line: 352, type: !5007)
!5479 = !DILocalVariable(name: "revstring", scope: !5473, file: !3, line: 354, type: !277)
!5480 = !DILocation(line: 352, column: 42, scope: !5473)
!5481 = !DILocation(line: 352, column: 72, scope: !5473)
!5482 = !DILocation(line: 354, column: 2, scope: !5473)
!5483 = !DILocation(line: 354, column: 8, scope: !5473)
!5484 = !DILocation(line: 356, column: 10, scope: !5473)
!5485 = !DILocation(line: 356, column: 16, scope: !5473)
!5486 = !DILocation(line: 356, column: 2, scope: !5473)
!5487 = !DILocation(line: 357, column: 22, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 356, column: 26)
!5489 = !DILocation(line: 357, column: 29, scope: !5488)
!5490 = !DILocation(line: 358, column: 22, scope: !5488)
!5491 = !DILocation(line: 358, column: 29, scope: !5488)
!5492 = !DILocation(line: 359, column: 22, scope: !5488)
!5493 = !DILocation(line: 359, column: 29, scope: !5488)
!5494 = !DILocation(line: 360, column: 22, scope: !5488)
!5495 = !DILocation(line: 360, column: 29, scope: !5488)
!5496 = !DILocation(line: 361, column: 22, scope: !5488)
!5497 = !DILocation(line: 361, column: 29, scope: !5488)
!5498 = !DILocation(line: 362, column: 22, scope: !5488)
!5499 = !DILocation(line: 362, column: 29, scope: !5488)
!5500 = !DILocation(line: 363, column: 22, scope: !5488)
!5501 = !DILocation(line: 363, column: 29, scope: !5488)
!5502 = !DILocation(line: 366, column: 2, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 366, column: 2)
!5504 = !DILocation(line: 366, column: 2, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 366, column: 2)
!5506 = !DILocation(line: 372, column: 6, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 372, column: 6)
!5508 = !DILocation(line: 372, column: 12, scope: !5507)
!5509 = !DILocation(line: 372, column: 21, scope: !5507)
!5510 = !DILocation(line: 372, column: 6, scope: !5473)
!5511 = !DILocation(line: 373, column: 3, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 373, column: 3)
!5513 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 372, column: 29)
!5514 = !DILocation(line: 373, column: 3, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 373, column: 3)
!5516 = !DILocation(line: 374, column: 3, scope: !5513)
!5517 = !DILocation(line: 374, column: 11, scope: !5513)
!5518 = !DILocation(line: 374, column: 25, scope: !5513)
!5519 = !DILocation(line: 375, column: 3, scope: !5513)
!5520 = !DILocation(line: 375, column: 11, scope: !5513)
!5521 = !DILocation(line: 375, column: 25, scope: !5513)
!5522 = !DILocation(line: 376, column: 2, scope: !5513)
!5523 = !DILocation(line: 377, column: 1, scope: !5473)
!5524 = !DISubprogram(name: "_dev_info", scope: !5525, file: !5525, line: 56, type: !5526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5525 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5526 = !DISubroutineType(types: !5527)
!5527 = !{null, !4222, !196, null}
!5528 = !DISubprogram(name: "pci_read_config_dword", scope: !4131, file: !4131, line: 1215, type: !5529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!109, !5531, !109, !2237}
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4130)
!5533 = distinct !DISubprogram(name: "cache_nbs", scope: !3, file: !3, line: 326, type: !5534, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5536)
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!109, !4129, !427}
!5536 = !{!5537, !5538, !5539, !5540}
!5537 = !DILocalVariable(name: "pdev", arg: 1, scope: !5533, file: !3, line: 326, type: !4129)
!5538 = !DILocalVariable(name: "cap_ptr", arg: 2, scope: !5533, file: !3, line: 326, type: !427)
!5539 = !DILocalVariable(name: "i", scope: !5533, file: !3, line: 328, type: !109)
!5540 = !DILocalVariable(name: "dev", scope: !5541, file: !3, line: 338, type: !4129)
!5541 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 337, column: 37)
!5542 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 337, column: 2)
!5543 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 337, column: 2)
!5544 = !DILocation(line: 326, column: 38, scope: !5533)
!5545 = !DILocation(line: 326, column: 48, scope: !5533)
!5546 = !DILocation(line: 328, column: 2, scope: !5533)
!5547 = !DILocation(line: 328, column: 6, scope: !5533)
!5548 = !DILocation(line: 330, column: 7, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 330, column: 6)
!5550 = !DILocation(line: 330, column: 6, scope: !5533)
!5551 = !DILocation(line: 331, column: 3, scope: !5549)
!5552 = !DILocation(line: 333, column: 7, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 333, column: 6)
!5554 = !DILocation(line: 333, column: 6, scope: !5533)
!5555 = !DILocation(line: 334, column: 3, scope: !5553)
!5556 = !DILocation(line: 336, column: 4, scope: !5533)
!5557 = !DILocation(line: 337, column: 9, scope: !5543)
!5558 = !DILocation(line: 337, column: 7, scope: !5543)
!5559 = !DILocation(line: 337, column: 14, scope: !5542)
!5560 = !DILocation(line: 337, column: 18, scope: !5542)
!5561 = !DILocation(line: 337, column: 16, scope: !5542)
!5562 = !DILocation(line: 337, column: 2, scope: !5543)
!5563 = !DILocation(line: 338, column: 3, scope: !5541)
!5564 = !DILocation(line: 338, column: 19, scope: !5541)
!5565 = !DILocation(line: 338, column: 40, scope: !5541)
!5566 = !DILocation(line: 338, column: 25, scope: !5541)
!5567 = !DILocation(line: 338, column: 44, scope: !5541)
!5568 = !DILocation(line: 339, column: 23, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 339, column: 7)
!5570 = !DILocation(line: 339, column: 28, scope: !5569)
!5571 = !DILocation(line: 339, column: 34, scope: !5569)
!5572 = !DILocation(line: 339, column: 7, scope: !5569)
!5573 = !DILocation(line: 339, column: 43, scope: !5569)
!5574 = !DILocation(line: 339, column: 7, scope: !5541)
!5575 = !DILocation(line: 340, column: 4, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 340, column: 4)
!5577 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 339, column: 48)
!5578 = !DILocation(line: 340, column: 4, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 340, column: 4)
!5580 = !DILocation(line: 343, column: 4, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 343, column: 4)
!5582 = !DILocation(line: 343, column: 4, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 343, column: 4)
!5584 = !DILocation(line: 345, column: 4, scope: !5577)
!5585 = !DILocation(line: 347, column: 2, scope: !5542)
!5586 = !DILocation(line: 347, column: 2, scope: !5541)
!5587 = !DILocation(line: 337, column: 33, scope: !5542)
!5588 = !DILocation(line: 337, column: 2, scope: !5542)
!5589 = distinct !{!5589, !5562, !5590, !5591, !5592}
!5590 = !DILocation(line: 347, column: 2, scope: !5543)
!5591 = !{!"llvm.loop.mustprogress"}
!5592 = !{!"llvm.loop.unroll.disable"}
!5593 = !DILocation(line: 348, column: 2, scope: !5533)
!5594 = !DILocation(line: 349, column: 1, scope: !5533)
!5595 = !DISubprogram(name: "agp_put_bridge", scope: !142, file: !142, line: 184, type: !5596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{null, !5007}
!5598 = distinct !DISubprogram(name: "nforce3_agp_init", scope: !3, file: !3, line: 452, type: !4740, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5599)
!5599 = !{!5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609}
!5600 = !DILocalVariable(name: "pdev", arg: 1, scope: !5598, file: !3, line: 452, type: !4129)
!5601 = !DILocalVariable(name: "tmp", scope: !5598, file: !3, line: 454, type: !427)
!5602 = !DILocalVariable(name: "apbase", scope: !5598, file: !3, line: 454, type: !427)
!5603 = !DILocalVariable(name: "apbar", scope: !5598, file: !3, line: 454, type: !427)
!5604 = !DILocalVariable(name: "aplimit", scope: !5598, file: !3, line: 454, type: !427)
!5605 = !DILocalVariable(name: "dev1", scope: !5598, file: !3, line: 455, type: !4129)
!5606 = !DILocalVariable(name: "i", scope: !5598, file: !3, line: 456, type: !109)
!5607 = !DILocalVariable(name: "ret", scope: !5598, file: !3, line: 456, type: !109)
!5608 = !DILocalVariable(name: "size", scope: !5598, file: !3, line: 457, type: !7)
!5609 = !DILabel(scope: !5598, name: "put", file: !3, line: 507)
!5610 = !DILocation(line: 452, column: 45, scope: !5598)
!5611 = !DILocation(line: 454, column: 2, scope: !5598)
!5612 = !DILocation(line: 454, column: 6, scope: !5598)
!5613 = !DILocation(line: 454, column: 11, scope: !5598)
!5614 = !DILocation(line: 454, column: 19, scope: !5598)
!5615 = !DILocation(line: 454, column: 26, scope: !5598)
!5616 = !DILocation(line: 455, column: 2, scope: !5598)
!5617 = !DILocation(line: 455, column: 18, scope: !5598)
!5618 = !DILocation(line: 456, column: 2, scope: !5598)
!5619 = !DILocation(line: 456, column: 6, scope: !5598)
!5620 = !DILocation(line: 456, column: 9, scope: !5598)
!5621 = !DILocation(line: 457, column: 2, scope: !5598)
!5622 = !DILocation(line: 457, column: 11, scope: !5598)
!5623 = !DILocation(line: 457, column: 18, scope: !5598)
!5624 = !DILocation(line: 459, column: 2, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 459, column: 2)
!5626 = !DILocation(line: 459, column: 2, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 459, column: 2)
!5628 = !DILocation(line: 461, column: 22, scope: !5598)
!5629 = !DILocation(line: 461, column: 28, scope: !5598)
!5630 = !DILocation(line: 461, column: 9, scope: !5598)
!5631 = !DILocation(line: 461, column: 7, scope: !5598)
!5632 = !DILocation(line: 462, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 462, column: 6)
!5634 = !DILocation(line: 462, column: 11, scope: !5633)
!5635 = !DILocation(line: 462, column: 6, scope: !5598)
!5636 = !DILocation(line: 463, column: 3, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 463, column: 3)
!5638 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 462, column: 20)
!5639 = !DILocation(line: 463, column: 3, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 463, column: 3)
!5641 = !DILocation(line: 464, column: 3, scope: !5638)
!5642 = !DILocation(line: 467, column: 9, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 467, column: 2)
!5644 = !DILocation(line: 467, column: 7, scope: !5643)
!5645 = !DILocation(line: 467, column: 14, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 467, column: 2)
!5647 = !DILocation(line: 467, column: 16, scope: !5646)
!5648 = !DILocation(line: 467, column: 2, scope: !5643)
!5649 = !DILocation(line: 468, column: 21, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 468, column: 7)
!5651 = !DILocation(line: 468, column: 7, scope: !5650)
!5652 = !DILocation(line: 468, column: 24, scope: !5650)
!5653 = !DILocation(line: 468, column: 32, scope: !5650)
!5654 = !DILocation(line: 468, column: 29, scope: !5650)
!5655 = !DILocation(line: 468, column: 7, scope: !5646)
!5656 = !DILocation(line: 469, column: 4, scope: !5650)
!5657 = !DILocation(line: 467, column: 46, scope: !5646)
!5658 = !DILocation(line: 467, column: 2, scope: !5646)
!5659 = distinct !{!5659, !5648, !5660, !5591, !5592}
!5660 = !DILocation(line: 469, column: 4, scope: !5643)
!5661 = !DILocation(line: 471, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 471, column: 6)
!5663 = !DILocation(line: 471, column: 8, scope: !5662)
!5664 = !DILocation(line: 471, column: 6, scope: !5598)
!5665 = !DILocation(line: 472, column: 3, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 472, column: 3)
!5667 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 471, column: 38)
!5668 = !DILocation(line: 472, column: 3, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 472, column: 3)
!5670 = !DILocation(line: 473, column: 7, scope: !5667)
!5671 = !DILocation(line: 474, column: 3, scope: !5667)
!5672 = !DILocation(line: 477, column: 24, scope: !5598)
!5673 = !DILocation(line: 477, column: 2, scope: !5598)
!5674 = !DILocation(line: 478, column: 6, scope: !5598)
!5675 = !DILocation(line: 479, column: 23, scope: !5598)
!5676 = !DILocation(line: 479, column: 9, scope: !5598)
!5677 = !DILocation(line: 479, column: 26, scope: !5598)
!5678 = !DILocation(line: 479, column: 6, scope: !5598)
!5679 = !DILocation(line: 480, column: 25, scope: !5598)
!5680 = !DILocation(line: 480, column: 55, scope: !5598)
!5681 = !DILocation(line: 480, column: 2, scope: !5598)
!5682 = !DILocation(line: 483, column: 25, scope: !5598)
!5683 = !DILocation(line: 483, column: 44, scope: !5598)
!5684 = !DILocation(line: 483, column: 2, scope: !5598)
!5685 = !DILocation(line: 487, column: 8, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 487, column: 7)
!5687 = !DILocation(line: 487, column: 15, scope: !5686)
!5688 = !DILocation(line: 487, column: 25, scope: !5686)
!5689 = !DILocation(line: 487, column: 7, scope: !5598)
!5690 = !DILocation(line: 488, column: 3, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 488, column: 3)
!5692 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 487, column: 40)
!5693 = !DILocation(line: 488, column: 3, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 488, column: 3)
!5695 = !DILocation(line: 489, column: 7, scope: !5692)
!5696 = !DILocation(line: 490, column: 3, scope: !5692)
!5697 = !DILocation(line: 493, column: 12, scope: !5598)
!5698 = !DILocation(line: 493, column: 19, scope: !5598)
!5699 = !DILocation(line: 493, column: 29, scope: !5598)
!5700 = !DILocation(line: 493, column: 9, scope: !5598)
!5701 = !DILocation(line: 495, column: 24, scope: !5598)
!5702 = !DILocation(line: 495, column: 2, scope: !5598)
!5703 = !DILocation(line: 496, column: 8, scope: !5598)
!5704 = !DILocation(line: 497, column: 11, scope: !5598)
!5705 = !DILocation(line: 497, column: 8, scope: !5598)
!5706 = !DILocation(line: 498, column: 25, scope: !5598)
!5707 = !DILocation(line: 498, column: 55, scope: !5598)
!5708 = !DILocation(line: 498, column: 2, scope: !5598)
!5709 = !DILocation(line: 500, column: 12, scope: !5598)
!5710 = !DILocation(line: 500, column: 22, scope: !5598)
!5711 = !DILocation(line: 500, column: 27, scope: !5598)
!5712 = !DILocation(line: 500, column: 34, scope: !5598)
!5713 = !DILocation(line: 500, column: 19, scope: !5598)
!5714 = !DILocation(line: 500, column: 42, scope: !5598)
!5715 = !DILocation(line: 500, column: 10, scope: !5598)
!5716 = !DILocation(line: 501, column: 25, scope: !5598)
!5717 = !DILocation(line: 501, column: 56, scope: !5598)
!5718 = !DILocation(line: 501, column: 2, scope: !5598)
!5719 = !DILocation(line: 502, column: 25, scope: !5598)
!5720 = !DILocation(line: 502, column: 57, scope: !5598)
!5721 = !DILocation(line: 502, column: 2, scope: !5598)
!5722 = !DILocation(line: 503, column: 25, scope: !5598)
!5723 = !DILocation(line: 503, column: 56, scope: !5598)
!5724 = !DILocation(line: 503, column: 2, scope: !5598)
!5725 = !DILocation(line: 504, column: 25, scope: !5598)
!5726 = !DILocation(line: 504, column: 57, scope: !5598)
!5727 = !DILocation(line: 504, column: 2, scope: !5598)
!5728 = !DILocation(line: 506, column: 6, scope: !5598)
!5729 = !DILocation(line: 506, column: 2, scope: !5598)
!5730 = !DILocation(line: 507, column: 1, scope: !5598)
!5731 = !DILocation(line: 508, column: 14, scope: !5598)
!5732 = !DILocation(line: 508, column: 2, scope: !5598)
!5733 = !DILocation(line: 510, column: 9, scope: !5598)
!5734 = !DILocation(line: 510, column: 2, scope: !5598)
!5735 = !DILocation(line: 511, column: 1, scope: !5598)
!5736 = distinct !DISubprogram(name: "uli_agp_init", scope: !3, file: !3, line: 390, type: !4740, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5737)
!5737 = !{!5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746}
!5738 = !DILocalVariable(name: "pdev", arg: 1, scope: !5736, file: !3, line: 390, type: !4129)
!5739 = !DILocalVariable(name: "httfea", scope: !5736, file: !3, line: 392, type: !427)
!5740 = !DILocalVariable(name: "baseaddr", scope: !5736, file: !3, line: 392, type: !427)
!5741 = !DILocalVariable(name: "enuscr", scope: !5736, file: !3, line: 392, type: !427)
!5742 = !DILocalVariable(name: "dev1", scope: !5736, file: !3, line: 393, type: !4129)
!5743 = !DILocalVariable(name: "i", scope: !5736, file: !3, line: 394, type: !109)
!5744 = !DILocalVariable(name: "ret", scope: !5736, file: !3, line: 394, type: !109)
!5745 = !DILocalVariable(name: "size", scope: !5736, file: !3, line: 395, type: !7)
!5746 = !DILabel(scope: !5736, name: "put", file: !3, line: 435)
!5747 = !DILocation(line: 390, column: 41, scope: !5736)
!5748 = !DILocation(line: 392, column: 2, scope: !5736)
!5749 = !DILocation(line: 392, column: 6, scope: !5736)
!5750 = !DILocation(line: 392, column: 13, scope: !5736)
!5751 = !DILocation(line: 392, column: 22, scope: !5736)
!5752 = !DILocation(line: 393, column: 2, scope: !5736)
!5753 = !DILocation(line: 393, column: 18, scope: !5736)
!5754 = !DILocation(line: 394, column: 2, scope: !5736)
!5755 = !DILocation(line: 394, column: 6, scope: !5736)
!5756 = !DILocation(line: 394, column: 9, scope: !5736)
!5757 = !DILocation(line: 395, column: 2, scope: !5736)
!5758 = !DILocation(line: 395, column: 11, scope: !5736)
!5759 = !DILocation(line: 395, column: 18, scope: !5736)
!5760 = !DILocation(line: 397, column: 2, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 397, column: 2)
!5762 = !DILocation(line: 397, column: 2, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 397, column: 2)
!5764 = !DILocation(line: 398, column: 23, scope: !5736)
!5765 = !DILocation(line: 398, column: 29, scope: !5736)
!5766 = !DILocation(line: 398, column: 9, scope: !5736)
!5767 = !DILocation(line: 398, column: 7, scope: !5736)
!5768 = !DILocation(line: 399, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 399, column: 6)
!5770 = !DILocation(line: 399, column: 11, scope: !5769)
!5771 = !DILocation(line: 399, column: 6, scope: !5736)
!5772 = !DILocation(line: 400, column: 3, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 400, column: 3)
!5774 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 399, column: 20)
!5775 = !DILocation(line: 400, column: 3, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 400, column: 3)
!5777 = !DILocation(line: 401, column: 3, scope: !5774)
!5778 = !DILocation(line: 404, column: 9, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 404, column: 2)
!5780 = !DILocation(line: 404, column: 7, scope: !5779)
!5781 = !DILocation(line: 404, column: 14, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5779, file: !3, line: 404, column: 2)
!5783 = !DILocation(line: 404, column: 16, scope: !5782)
!5784 = !DILocation(line: 404, column: 2, scope: !5779)
!5785 = !DILocation(line: 405, column: 17, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 405, column: 7)
!5787 = !DILocation(line: 405, column: 7, scope: !5786)
!5788 = !DILocation(line: 405, column: 20, scope: !5786)
!5789 = !DILocation(line: 405, column: 28, scope: !5786)
!5790 = !DILocation(line: 405, column: 25, scope: !5786)
!5791 = !DILocation(line: 405, column: 7, scope: !5782)
!5792 = !DILocation(line: 406, column: 4, scope: !5786)
!5793 = !DILocation(line: 404, column: 42, scope: !5782)
!5794 = !DILocation(line: 404, column: 2, scope: !5782)
!5795 = distinct !{!5795, !5784, !5796, !5591, !5592}
!5796 = !DILocation(line: 406, column: 4, scope: !5779)
!5797 = !DILocation(line: 408, column: 6, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 408, column: 6)
!5799 = !DILocation(line: 408, column: 8, scope: !5798)
!5800 = !DILocation(line: 408, column: 6, scope: !5736)
!5801 = !DILocation(line: 409, column: 3, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 409, column: 3)
!5803 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 408, column: 34)
!5804 = !DILocation(line: 409, column: 3, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 409, column: 3)
!5806 = !DILocation(line: 410, column: 7, scope: !5803)
!5807 = !DILocation(line: 411, column: 3, scope: !5803)
!5808 = !DILocation(line: 415, column: 25, scope: !5736)
!5809 = !DILocation(line: 415, column: 44, scope: !5736)
!5810 = !DILocation(line: 415, column: 2, scope: !5736)
!5811 = !DILocation(line: 419, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 419, column: 6)
!5813 = !DILocation(line: 419, column: 14, scope: !5812)
!5814 = !DILocation(line: 419, column: 24, scope: !5812)
!5815 = !DILocation(line: 419, column: 6, scope: !5736)
!5816 = !DILocation(line: 420, column: 7, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 419, column: 38)
!5818 = !DILocation(line: 421, column: 3, scope: !5817)
!5819 = !DILocation(line: 424, column: 12, scope: !5736)
!5820 = !DILocation(line: 424, column: 18, scope: !5736)
!5821 = !DILocation(line: 424, column: 28, scope: !5736)
!5822 = !DILocation(line: 424, column: 9, scope: !5736)
!5823 = !DILocation(line: 426, column: 24, scope: !5736)
!5824 = !DILocation(line: 426, column: 2, scope: !5736)
!5825 = !DILocation(line: 427, column: 10, scope: !5736)
!5826 = !DILocation(line: 428, column: 13, scope: !5736)
!5827 = !DILocation(line: 428, column: 10, scope: !5736)
!5828 = !DILocation(line: 429, column: 25, scope: !5736)
!5829 = !DILocation(line: 429, column: 53, scope: !5736)
!5830 = !DILocation(line: 429, column: 2, scope: !5736)
!5831 = !DILocation(line: 431, column: 10, scope: !5736)
!5832 = !DILocation(line: 431, column: 19, scope: !5736)
!5833 = !DILocation(line: 431, column: 24, scope: !5736)
!5834 = !DILocation(line: 431, column: 31, scope: !5736)
!5835 = !DILocation(line: 431, column: 16, scope: !5736)
!5836 = !DILocation(line: 431, column: 39, scope: !5736)
!5837 = !DILocation(line: 431, column: 8, scope: !5736)
!5838 = !DILocation(line: 432, column: 25, scope: !5736)
!5839 = !DILocation(line: 432, column: 55, scope: !5736)
!5840 = !DILocation(line: 432, column: 2, scope: !5736)
!5841 = !DILocation(line: 433, column: 25, scope: !5736)
!5842 = !DILocation(line: 433, column: 55, scope: !5736)
!5843 = !DILocation(line: 433, column: 2, scope: !5736)
!5844 = !DILocation(line: 434, column: 6, scope: !5736)
!5845 = !DILocation(line: 434, column: 2, scope: !5736)
!5846 = !DILocation(line: 435, column: 1, scope: !5736)
!5847 = !DILocation(line: 436, column: 14, scope: !5736)
!5848 = !DILocation(line: 436, column: 2, scope: !5736)
!5849 = !DILocation(line: 437, column: 9, scope: !5736)
!5850 = !DILocation(line: 437, column: 2, scope: !5736)
!5851 = !DILocation(line: 438, column: 1, scope: !5736)
!5852 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !4131, file: !4131, line: 2114, type: !5853, scopeLine: 2115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5855)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !4129, !349}
!5855 = !{!5856, !5857}
!5856 = !DILocalVariable(name: "pdev", arg: 1, scope: !5852, file: !4131, line: 2114, type: !4129)
!5857 = !DILocalVariable(name: "data", arg: 2, scope: !5852, file: !4131, line: 2114, type: !349)
!5858 = !DILocation(line: 2114, column: 52, scope: !5852)
!5859 = !DILocation(line: 2114, column: 64, scope: !5852)
!5860 = !DILocation(line: 2116, column: 19, scope: !5852)
!5861 = !DILocation(line: 2116, column: 25, scope: !5852)
!5862 = !DILocation(line: 2116, column: 30, scope: !5852)
!5863 = !DILocation(line: 2116, column: 2, scope: !5852)
!5864 = !DILocation(line: 2117, column: 1, scope: !5852)
!5865 = !DISubprogram(name: "agp_add_bridge", scope: !142, file: !142, line: 185, type: !5088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5866 = distinct !DISubprogram(name: "amd64_fetch_size", scope: !3, file: !3, line: 121, type: !3902, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5867)
!5867 = !{!5868, !5869, !5870, !5871}
!5868 = !DILocalVariable(name: "dev", scope: !5866, file: !3, line: 123, type: !4129)
!5869 = !DILocalVariable(name: "i", scope: !5866, file: !3, line: 124, type: !109)
!5870 = !DILocalVariable(name: "temp", scope: !5866, file: !3, line: 125, type: !427)
!5871 = !DILocalVariable(name: "values", scope: !5866, file: !3, line: 126, type: !4119)
!5872 = !DILocation(line: 123, column: 2, scope: !5866)
!5873 = !DILocation(line: 123, column: 18, scope: !5866)
!5874 = !DILocation(line: 124, column: 2, scope: !5866)
!5875 = !DILocation(line: 124, column: 6, scope: !5866)
!5876 = !DILocation(line: 125, column: 2, scope: !5866)
!5877 = !DILocation(line: 125, column: 6, scope: !5866)
!5878 = !DILocation(line: 126, column: 2, scope: !5866)
!5879 = !DILocation(line: 126, column: 28, scope: !5866)
!5880 = !DILocation(line: 128, column: 8, scope: !5866)
!5881 = !DILocation(line: 128, column: 27, scope: !5866)
!5882 = !DILocation(line: 128, column: 6, scope: !5866)
!5883 = !DILocation(line: 129, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 129, column: 6)
!5885 = !DILocation(line: 129, column: 9, scope: !5884)
!5886 = !DILocation(line: 129, column: 6, scope: !5866)
!5887 = !DILocation(line: 130, column: 3, scope: !5884)
!5888 = !DILocation(line: 132, column: 24, scope: !5866)
!5889 = !DILocation(line: 132, column: 2, scope: !5866)
!5890 = !DILocation(line: 133, column: 10, scope: !5866)
!5891 = !DILocation(line: 133, column: 15, scope: !5866)
!5892 = !DILocation(line: 133, column: 7, scope: !5866)
!5893 = !DILocation(line: 134, column: 9, scope: !5866)
!5894 = !DILocation(line: 136, column: 9, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 136, column: 2)
!5896 = !DILocation(line: 136, column: 7, scope: !5895)
!5897 = !DILocation(line: 136, column: 14, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 136, column: 2)
!5899 = !DILocation(line: 136, column: 18, scope: !5898)
!5900 = !DILocation(line: 136, column: 30, scope: !5898)
!5901 = !DILocation(line: 136, column: 38, scope: !5898)
!5902 = !DILocation(line: 136, column: 16, scope: !5898)
!5903 = !DILocation(line: 136, column: 2, scope: !5895)
!5904 = !DILocation(line: 137, column: 7, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 137, column: 7)
!5906 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 136, column: 63)
!5907 = !DILocation(line: 137, column: 15, scope: !5905)
!5908 = !DILocation(line: 137, column: 22, scope: !5905)
!5909 = !DILocation(line: 137, column: 25, scope: !5905)
!5910 = !DILocation(line: 137, column: 12, scope: !5905)
!5911 = !DILocation(line: 137, column: 7, scope: !5906)
!5912 = !DILocation(line: 139, column: 45, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 137, column: 37)
!5914 = !DILocation(line: 139, column: 54, scope: !5913)
!5915 = !DILocation(line: 139, column: 52, scope: !5913)
!5916 = !DILocation(line: 139, column: 8, scope: !5913)
!5917 = !DILocation(line: 139, column: 20, scope: !5913)
!5918 = !DILocation(line: 139, column: 33, scope: !5913)
!5919 = !DILocation(line: 138, column: 4, scope: !5913)
!5920 = !DILocation(line: 138, column: 16, scope: !5913)
!5921 = !DILocation(line: 138, column: 30, scope: !5913)
!5922 = !DILocation(line: 141, column: 36, scope: !5913)
!5923 = !DILocation(line: 141, column: 4, scope: !5913)
!5924 = !DILocation(line: 141, column: 16, scope: !5913)
!5925 = !DILocation(line: 141, column: 34, scope: !5913)
!5926 = !DILocation(line: 142, column: 11, scope: !5913)
!5927 = !DILocation(line: 142, column: 18, scope: !5913)
!5928 = !DILocation(line: 142, column: 21, scope: !5913)
!5929 = !DILocation(line: 142, column: 4, scope: !5913)
!5930 = !DILocation(line: 144, column: 2, scope: !5906)
!5931 = !DILocation(line: 136, column: 59, scope: !5898)
!5932 = !DILocation(line: 136, column: 2, scope: !5898)
!5933 = distinct !{!5933, !5903, !5934, !5591, !5592}
!5934 = !DILocation(line: 144, column: 2, scope: !5895)
!5935 = !DILocation(line: 145, column: 2, scope: !5866)
!5936 = !DILocation(line: 146, column: 1, scope: !5866)
!5937 = distinct !DISubprogram(name: "amd_8151_configure", scope: !3, file: !3, line: 180, type: !3902, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5938)
!5938 = !{!5939, !5940}
!5939 = !DILocalVariable(name: "gatt_bus", scope: !5937, file: !3, line: 182, type: !327)
!5940 = !DILocalVariable(name: "i", scope: !5937, file: !3, line: 183, type: !109)
!5941 = !DILocation(line: 182, column: 2, scope: !5937)
!5942 = !DILocation(line: 182, column: 16, scope: !5937)
!5943 = !DILocation(line: 182, column: 40, scope: !5937)
!5944 = !DILocation(line: 182, column: 52, scope: !5937)
!5945 = !DILocation(line: 182, column: 27, scope: !5937)
!5946 = !DILocation(line: 183, column: 2, scope: !5937)
!5947 = !DILocation(line: 183, column: 6, scope: !5937)
!5948 = !DILocation(line: 185, column: 7, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 185, column: 6)
!5950 = !DILocation(line: 185, column: 6, scope: !5937)
!5951 = !DILocation(line: 186, column: 3, scope: !5949)
!5952 = !DILocation(line: 189, column: 9, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 189, column: 2)
!5954 = !DILocation(line: 189, column: 7, scope: !5953)
!5955 = !DILocation(line: 189, column: 14, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 189, column: 2)
!5957 = !DILocation(line: 189, column: 18, scope: !5956)
!5958 = !DILocation(line: 189, column: 16, scope: !5956)
!5959 = !DILocation(line: 189, column: 2, scope: !5953)
!5960 = !DILocation(line: 191, column: 35, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 189, column: 37)
!5962 = !DILocation(line: 191, column: 20, scope: !5961)
!5963 = !DILocation(line: 191, column: 39, scope: !5961)
!5964 = !DILocation(line: 191, column: 45, scope: !5961)
!5965 = !DILocation(line: 191, column: 4, scope: !5961)
!5966 = !DILocation(line: 190, column: 3, scope: !5961)
!5967 = !DILocation(line: 190, column: 15, scope: !5961)
!5968 = !DILocation(line: 190, column: 29, scope: !5961)
!5969 = !DILocation(line: 192, column: 2, scope: !5961)
!5970 = !DILocation(line: 189, column: 33, scope: !5956)
!5971 = !DILocation(line: 189, column: 2, scope: !5956)
!5972 = distinct !{!5972, !5959, !5973, !5591, !5592}
!5973 = !DILocation(line: 192, column: 2, scope: !5953)
!5974 = !DILocation(line: 193, column: 2, scope: !5937)
!5975 = !DILocation(line: 194, column: 2, scope: !5937)
!5976 = !DILocation(line: 195, column: 1, scope: !5937)
!5977 = distinct !DISubprogram(name: "amd64_cleanup", scope: !3, file: !3, line: 198, type: !2535, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5978)
!5978 = !{!5979, !5980, !5981}
!5979 = !DILocalVariable(name: "tmp", scope: !5977, file: !3, line: 200, type: !427)
!5980 = !DILocalVariable(name: "i", scope: !5977, file: !3, line: 201, type: !109)
!5981 = !DILocalVariable(name: "dev", scope: !5982, file: !3, line: 207, type: !4129)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 206, column: 37)
!5983 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 206, column: 2)
!5984 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 206, column: 2)
!5985 = !DILocation(line: 200, column: 2, scope: !5977)
!5986 = !DILocation(line: 200, column: 6, scope: !5977)
!5987 = !DILocation(line: 201, column: 2, scope: !5977)
!5988 = !DILocation(line: 201, column: 6, scope: !5977)
!5989 = !DILocation(line: 203, column: 7, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 203, column: 6)
!5991 = !DILocation(line: 203, column: 6, scope: !5977)
!5992 = !DILocation(line: 204, column: 3, scope: !5990)
!5993 = !DILocation(line: 206, column: 9, scope: !5984)
!5994 = !DILocation(line: 206, column: 7, scope: !5984)
!5995 = !DILocation(line: 206, column: 14, scope: !5983)
!5996 = !DILocation(line: 206, column: 18, scope: !5983)
!5997 = !DILocation(line: 206, column: 16, scope: !5983)
!5998 = !DILocation(line: 206, column: 2, scope: !5984)
!5999 = !DILocation(line: 207, column: 3, scope: !5982)
!6000 = !DILocation(line: 207, column: 19, scope: !5982)
!6001 = !DILocation(line: 207, column: 40, scope: !5982)
!6002 = !DILocation(line: 207, column: 25, scope: !5982)
!6003 = !DILocation(line: 207, column: 44, scope: !5982)
!6004 = !DILocation(line: 209, column: 25, scope: !5982)
!6005 = !DILocation(line: 209, column: 3, scope: !5982)
!6006 = !DILocation(line: 210, column: 7, scope: !5982)
!6007 = !DILocation(line: 211, column: 26, scope: !5982)
!6008 = !DILocation(line: 211, column: 54, scope: !5982)
!6009 = !DILocation(line: 211, column: 3, scope: !5982)
!6010 = !DILocation(line: 212, column: 2, scope: !5983)
!6011 = !DILocation(line: 212, column: 2, scope: !5982)
!6012 = !DILocation(line: 206, column: 33, scope: !5983)
!6013 = !DILocation(line: 206, column: 2, scope: !5983)
!6014 = distinct !{!6014, !5998, !6015, !5591, !5592}
!6015 = !DILocation(line: 212, column: 2, scope: !5984)
!6016 = !DILocation(line: 213, column: 1, scope: !5977)
!6017 = distinct !DISubprogram(name: "amd64_tlbflush", scope: !3, file: !3, line: 40, type: !5049, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6018)
!6018 = !{!6019}
!6019 = !DILocalVariable(name: "temp", arg: 1, scope: !6017, file: !3, line: 40, type: !5051)
!6020 = !DILocation(line: 40, column: 47, scope: !6017)
!6021 = !DILocation(line: 42, column: 2, scope: !6017)
!6022 = !DILocation(line: 43, column: 1, scope: !6017)
!6023 = !DISubprogram(name: "global_cache_flush", scope: !142, file: !142, line: 216, type: !2535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = distinct !DISubprogram(name: "amd64_insert_memory", scope: !3, file: !3, line: 45, type: !5093, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6025 = !{!6026, !6027, !6028, !6029, !6030, !6031, !6032, !6033, !6034, !6035}
!6026 = !DILocalVariable(name: "mem", arg: 1, scope: !6024, file: !3, line: 45, type: !5051)
!6027 = !DILocalVariable(name: "pg_start", arg: 2, scope: !6024, file: !3, line: 45, type: !5062)
!6028 = !DILocalVariable(name: "type", arg: 3, scope: !6024, file: !3, line: 45, type: !109)
!6029 = !DILocalVariable(name: "i", scope: !6024, file: !3, line: 47, type: !109)
!6030 = !DILocalVariable(name: "j", scope: !6024, file: !3, line: 47, type: !109)
!6031 = !DILocalVariable(name: "num_entries", scope: !6024, file: !3, line: 47, type: !109)
!6032 = !DILocalVariable(name: "tmp", scope: !6024, file: !3, line: 48, type: !521)
!6033 = !DILocalVariable(name: "mask_type", scope: !6024, file: !3, line: 49, type: !109)
!6034 = !DILocalVariable(name: "bridge", scope: !6024, file: !3, line: 50, type: !5007)
!6035 = !DILocalVariable(name: "pte", scope: !6024, file: !3, line: 51, type: !427)
!6036 = !DILocation(line: 45, column: 51, scope: !6024)
!6037 = !DILocation(line: 45, column: 62, scope: !6024)
!6038 = !DILocation(line: 45, column: 76, scope: !6024)
!6039 = !DILocation(line: 47, column: 2, scope: !6024)
!6040 = !DILocation(line: 47, column: 6, scope: !6024)
!6041 = !DILocation(line: 47, column: 9, scope: !6024)
!6042 = !DILocation(line: 47, column: 12, scope: !6024)
!6043 = !DILocation(line: 48, column: 2, scope: !6024)
!6044 = !DILocation(line: 48, column: 12, scope: !6024)
!6045 = !DILocation(line: 49, column: 2, scope: !6024)
!6046 = !DILocation(line: 49, column: 6, scope: !6024)
!6047 = !DILocation(line: 50, column: 2, scope: !6024)
!6048 = !DILocation(line: 50, column: 26, scope: !6024)
!6049 = !DILocation(line: 50, column: 35, scope: !6024)
!6050 = !DILocation(line: 50, column: 40, scope: !6024)
!6051 = !DILocation(line: 51, column: 2, scope: !6024)
!6052 = !DILocation(line: 51, column: 6, scope: !6024)
!6053 = !DILocation(line: 53, column: 16, scope: !6024)
!6054 = !DILocation(line: 53, column: 14, scope: !6024)
!6055 = !DILocation(line: 55, column: 6, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 55, column: 6)
!6057 = !DILocation(line: 55, column: 14, scope: !6056)
!6058 = !DILocation(line: 55, column: 19, scope: !6056)
!6059 = !DILocation(line: 55, column: 11, scope: !6056)
!6060 = !DILocation(line: 55, column: 6, scope: !6024)
!6061 = !DILocation(line: 56, column: 3, scope: !6056)
!6062 = !DILocation(line: 57, column: 14, scope: !6024)
!6063 = !DILocation(line: 57, column: 22, scope: !6024)
!6064 = !DILocation(line: 57, column: 30, scope: !6024)
!6065 = !DILocation(line: 57, column: 52, scope: !6024)
!6066 = !DILocation(line: 57, column: 60, scope: !6024)
!6067 = !DILocation(line: 57, column: 12, scope: !6024)
!6068 = !DILocation(line: 58, column: 6, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 58, column: 6)
!6070 = !DILocation(line: 58, column: 16, scope: !6069)
!6071 = !DILocation(line: 58, column: 6, scope: !6024)
!6072 = !DILocation(line: 59, column: 3, scope: !6069)
!6073 = !DILocation(line: 64, column: 22, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 64, column: 6)
!6075 = !DILocation(line: 64, column: 33, scope: !6074)
!6076 = !DILocation(line: 64, column: 38, scope: !6074)
!6077 = !DILocation(line: 64, column: 31, scope: !6074)
!6078 = !DILocation(line: 64, column: 52, scope: !6074)
!6079 = !DILocation(line: 64, column: 50, scope: !6074)
!6080 = !DILocation(line: 64, column: 6, scope: !6024)
!6081 = !DILocation(line: 65, column: 3, scope: !6074)
!6082 = !DILocation(line: 67, column: 6, scope: !6024)
!6083 = !DILocation(line: 67, column: 4, scope: !6024)
!6084 = !DILocation(line: 70, column: 2, scope: !6024)
!6085 = !DILocation(line: 70, column: 9, scope: !6024)
!6086 = !DILocation(line: 70, column: 14, scope: !6024)
!6087 = !DILocation(line: 70, column: 25, scope: !6024)
!6088 = !DILocation(line: 70, column: 30, scope: !6024)
!6089 = !DILocation(line: 70, column: 23, scope: !6024)
!6090 = !DILocation(line: 70, column: 11, scope: !6024)
!6091 = !DILocation(line: 71, column: 8, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 71, column: 7)
!6093 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 70, column: 43)
!6094 = !DILocation(line: 71, column: 7, scope: !6093)
!6095 = !DILocation(line: 72, column: 4, scope: !6092)
!6096 = !DILocation(line: 73, column: 4, scope: !6093)
!6097 = distinct !{!6097, !6084, !6098, !5591, !5592}
!6098 = !DILocation(line: 74, column: 2, scope: !6024)
!6099 = !DILocation(line: 76, column: 7, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 76, column: 6)
!6101 = !DILocation(line: 76, column: 12, scope: !6100)
!6102 = !DILocation(line: 76, column: 6, scope: !6024)
!6103 = !DILocation(line: 77, column: 3, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 76, column: 24)
!6105 = !DILocation(line: 78, column: 3, scope: !6104)
!6106 = !DILocation(line: 78, column: 8, scope: !6104)
!6107 = !DILocation(line: 78, column: 19, scope: !6104)
!6108 = !DILocation(line: 79, column: 2, scope: !6104)
!6109 = !DILocation(line: 81, column: 9, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 81, column: 2)
!6111 = !DILocation(line: 81, column: 18, scope: !6110)
!6112 = !DILocation(line: 81, column: 16, scope: !6110)
!6113 = !DILocation(line: 81, column: 7, scope: !6110)
!6114 = !DILocation(line: 81, column: 28, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 81, column: 2)
!6116 = !DILocation(line: 81, column: 32, scope: !6115)
!6117 = !DILocation(line: 81, column: 37, scope: !6115)
!6118 = !DILocation(line: 81, column: 30, scope: !6115)
!6119 = !DILocation(line: 81, column: 2, scope: !6110)
!6120 = !DILocation(line: 82, column: 9, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6115, file: !3, line: 81, column: 59)
!6122 = !DILocation(line: 82, column: 21, scope: !6121)
!6123 = !DILocation(line: 82, column: 29, scope: !6121)
!6124 = !DILocation(line: 82, column: 41, scope: !6121)
!6125 = !DILocation(line: 83, column: 13, scope: !6121)
!6126 = !DILocation(line: 84, column: 13, scope: !6121)
!6127 = !DILocation(line: 82, column: 7, scope: !6121)
!6128 = !DILocation(line: 86, column: 3, scope: !6121)
!6129 = !DILocation(line: 86, column: 3, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 86, column: 3)
!6131 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 86, column: 3)
!6132 = !DILocation(line: 86, column: 3, scope: !6131)
!6133 = !DILocation(line: 86, column: 3, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 86, column: 3)
!6135 = !DILocation(line: 86, column: 3, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 86, column: 3)
!6137 = !DILocation(line: 86, column: 3, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 86, column: 3)
!6139 = !{i64 2155052806, i64 2155052835, i64 2155052881, i64 2155052939, i64 2155052993, i64 2155053047, i64 2155053102, i64 2155053133}
!6140 = !DILocation(line: 87, column: 10, scope: !6121)
!6141 = !DILocation(line: 87, column: 14, scope: !6121)
!6142 = !DILocation(line: 87, column: 39, scope: !6121)
!6143 = !DILocation(line: 87, column: 9, scope: !6121)
!6144 = !DILocation(line: 87, column: 7, scope: !6121)
!6145 = !DILocation(line: 88, column: 10, scope: !6121)
!6146 = !DILocation(line: 88, column: 14, scope: !6121)
!6147 = !DILocation(line: 88, column: 7, scope: !6121)
!6148 = !DILocation(line: 89, column: 7, scope: !6121)
!6149 = !DILocation(line: 91, column: 10, scope: !6121)
!6150 = !DILocation(line: 91, column: 15, scope: !6121)
!6151 = !DILocation(line: 91, column: 27, scope: !6121)
!6152 = !DILocation(line: 91, column: 38, scope: !6121)
!6153 = !DILocation(line: 91, column: 37, scope: !6121)
!6154 = !DILocation(line: 91, column: 3, scope: !6121)
!6155 = !DILocation(line: 92, column: 9, scope: !6121)
!6156 = !DILocation(line: 92, column: 21, scope: !6121)
!6157 = !DILocation(line: 92, column: 32, scope: !6121)
!6158 = !DILocation(line: 92, column: 31, scope: !6121)
!6159 = !DILocation(line: 92, column: 3, scope: !6121)
!6160 = !DILocation(line: 93, column: 2, scope: !6121)
!6161 = !DILocation(line: 81, column: 50, scope: !6115)
!6162 = !DILocation(line: 81, column: 55, scope: !6115)
!6163 = !DILocation(line: 81, column: 2, scope: !6115)
!6164 = distinct !{!6164, !6119, !6165, !5591, !5592}
!6165 = !DILocation(line: 93, column: 2, scope: !6110)
!6166 = !DILocation(line: 94, column: 17, scope: !6024)
!6167 = !DILocation(line: 94, column: 2, scope: !6024)
!6168 = !DILocation(line: 95, column: 2, scope: !6024)
!6169 = !DILocation(line: 96, column: 1, scope: !6024)
!6170 = !DISubprogram(name: "node_to_amd_nb", scope: !5293, file: !5293, line: 83, type: !6171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{!6173, !109}
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6174, size: 64)
!6174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_northbridge", file: !5293, line: 61, size: 320, elements: !6175)
!6175 = !{!6176, !6177, !6178, !6179, !6185}
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !6174, file: !5293, line: 62, baseType: !4129, size: 64)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !6174, file: !5293, line: 63, baseType: !4129, size: 64, offset: 64)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !6174, file: !5293, line: 64, baseType: !4129, size: 64, offset: 128)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "l3_cache", scope: !6174, file: !5293, line: 65, baseType: !6180, size: 64, offset: 192)
!6180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_l3_cache", file: !5293, line: 27, size: 64, elements: !6181)
!6181 = !{!6182, !6183}
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !6180, file: !5293, line: 28, baseType: !7, size: 32)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "subcaches", scope: !6180, file: !5293, line: 29, baseType: !6184, size: 32, offset: 32)
!6184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 32, elements: !1366)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "bank4", scope: !6174, file: !5293, line: 66, baseType: !6186, size: 64, offset: 256)
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6187, size: 64)
!6187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "threshold_bank", file: !5293, line: 52, size: 192, elements: !6188)
!6188 = !{!6189, !6190, !6203, !6204}
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !6187, file: !5293, line: 53, baseType: !200, size: 64)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !6187, file: !5293, line: 54, baseType: !6191, size: 64, offset: 64)
!6191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6192, size: 64)
!6192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "threshold_block", file: !5293, line: 32, size: 832, elements: !6193)
!6193 = !{!6194, !6195, !6196, !6197, !6198, !6199, !6200, !6201, !6202}
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !6192, file: !5293, line: 33, baseType: !7, size: 32)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "bank", scope: !6192, file: !5293, line: 34, baseType: !7, size: 32, offset: 32)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !6192, file: !5293, line: 35, baseType: !7, size: 32, offset: 64)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6192, file: !5293, line: 36, baseType: !427, size: 32, offset: 96)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_enable", scope: !6192, file: !5293, line: 37, baseType: !245, size: 16, offset: 128)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_capable", scope: !6192, file: !5293, line: 38, baseType: !1478, size: 8, offset: 144)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "threshold_limit", scope: !6192, file: !5293, line: 40, baseType: !245, size: 16, offset: 160)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !6192, file: !5293, line: 45, baseType: !192, size: 512, offset: 192)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "miscj", scope: !6192, file: !5293, line: 46, baseType: !177, size: 128, offset: 704)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !6187, file: !5293, line: 57, baseType: !1000, size: 32, offset: 128)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !6187, file: !5293, line: 58, baseType: !7, size: 32, offset: 160)
!6205 = distinct !DISubprogram(name: "virt_to_phys", scope: !6206, file: !6206, line: 128, type: !6207, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6211)
!6206 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6207 = !DISubroutineType(types: !6208)
!6208 = !{!2881, !6209}
!6209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6210, size: 64)
!6210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6211 = !{!6212}
!6212 = !DILocalVariable(name: "address", arg: 1, scope: !6205, file: !6206, line: 128, type: !6209)
!6213 = !DILocation(line: 128, column: 55, scope: !6205)
!6214 = !DILocation(line: 130, column: 9, scope: !6205)
!6215 = !DILocation(line: 130, column: 2, scope: !6205)
!6216 = !DISubprogram(name: "amd_nb_has_feature", scope: !5293, file: !5293, line: 82, type: !6217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!1478, !7}
!6219 = distinct !DISubprogram(name: "amd64_configure", scope: !3, file: !3, line: 152, type: !6220, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6222)
!6220 = !DISubroutineType(types: !6221)
!6221 = !{!431, !4129, !431}
!6222 = !{!6223, !6224, !6225, !6226, !6227}
!6223 = !DILocalVariable(name: "hammer", arg: 1, scope: !6219, file: !3, line: 152, type: !4129)
!6224 = !DILocalVariable(name: "gatt_table", arg: 2, scope: !6219, file: !3, line: 152, type: !431)
!6225 = !DILocalVariable(name: "aperturebase", scope: !6219, file: !3, line: 154, type: !431)
!6226 = !DILocalVariable(name: "tmp", scope: !6219, file: !3, line: 155, type: !427)
!6227 = !DILocalVariable(name: "aper_base", scope: !6219, file: !3, line: 156, type: !431)
!6228 = !DILocation(line: 152, column: 44, scope: !6219)
!6229 = !DILocation(line: 152, column: 56, scope: !6219)
!6230 = !DILocation(line: 154, column: 2, scope: !6219)
!6231 = !DILocation(line: 154, column: 6, scope: !6219)
!6232 = !DILocation(line: 155, column: 2, scope: !6219)
!6233 = !DILocation(line: 155, column: 6, scope: !6219)
!6234 = !DILocation(line: 156, column: 2, scope: !6219)
!6235 = !DILocation(line: 156, column: 6, scope: !6219)
!6236 = !DILocation(line: 159, column: 24, scope: !6219)
!6237 = !DILocation(line: 159, column: 2, scope: !6219)
!6238 = !DILocation(line: 160, column: 22, scope: !6219)
!6239 = !DILocation(line: 160, column: 17, scope: !6219)
!6240 = !DILocation(line: 160, column: 26, scope: !6219)
!6241 = !DILocation(line: 160, column: 15, scope: !6219)
!6242 = !DILocation(line: 161, column: 15, scope: !6219)
!6243 = !DILocation(line: 161, column: 28, scope: !6219)
!6244 = !DILocation(line: 161, column: 12, scope: !6219)
!6245 = !DILocation(line: 163, column: 26, scope: !6219)
!6246 = !DILocation(line: 163, column: 34, scope: !6219)
!6247 = !DILocation(line: 163, column: 2, scope: !6219)
!6248 = !DILocation(line: 165, column: 9, scope: !6219)
!6249 = !DILocation(line: 166, column: 1, scope: !6219)
!6250 = !DILocation(line: 165, column: 2, scope: !6219)
!6251 = !DISubprogram(name: "amd_flush_garts", scope: !5293, file: !5293, line: 19, type: !2535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6252 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6253, file: !6253, line: 22, type: !6254, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6256)
!6253 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!327, !327}
!6256 = !{!6257, !6258}
!6257 = !DILocalVariable(name: "x", arg: 1, scope: !6252, file: !6253, line: 22, type: !327)
!6258 = !DILocalVariable(name: "y", scope: !6252, file: !6253, line: 24, type: !327)
!6259 = !DILocation(line: 22, column: 72, scope: !6252)
!6260 = !DILocation(line: 24, column: 2, scope: !6252)
!6261 = !DILocation(line: 24, column: 16, scope: !6252)
!6262 = !DILocation(line: 24, column: 20, scope: !6252)
!6263 = !DILocation(line: 24, column: 22, scope: !6252)
!6264 = !DILocation(line: 27, column: 6, scope: !6252)
!6265 = !DILocation(line: 27, column: 12, scope: !6252)
!6266 = !DILocation(line: 27, column: 16, scope: !6252)
!6267 = !DILocation(line: 27, column: 14, scope: !6252)
!6268 = !DILocation(line: 27, column: 11, scope: !6252)
!6269 = !DILocation(line: 27, column: 21, scope: !6252)
!6270 = !DILocation(line: 27, column: 55, scope: !6252)
!6271 = !DILocation(line: 27, column: 53, scope: !6252)
!6272 = !DILocation(line: 27, column: 8, scope: !6252)
!6273 = !DILocation(line: 27, column: 4, scope: !6252)
!6274 = !DILocation(line: 29, column: 9, scope: !6252)
!6275 = !DILocation(line: 30, column: 1, scope: !6252)
!6276 = !DILocation(line: 29, column: 2, scope: !6252)
!6277 = distinct !DISubprogram(name: "enable_gart_translation", scope: !5160, file: !5160, line: 74, type: !6278, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6280)
!6278 = !DISubroutineType(types: !6279)
!6279 = !{null, !4129, !431}
!6280 = !{!6281, !6282, !6283, !6284}
!6281 = !DILocalVariable(name: "dev", arg: 1, scope: !6277, file: !5160, line: 74, type: !4129)
!6282 = !DILocalVariable(name: "addr", arg: 2, scope: !6277, file: !5160, line: 74, type: !431)
!6283 = !DILocalVariable(name: "tmp", scope: !6277, file: !5160, line: 76, type: !427)
!6284 = !DILocalVariable(name: "ctl", scope: !6277, file: !5160, line: 76, type: !427)
!6285 = !DILocation(line: 74, column: 60, scope: !6277)
!6286 = !DILocation(line: 74, column: 69, scope: !6277)
!6287 = !DILocation(line: 76, column: 2, scope: !6277)
!6288 = !DILocation(line: 76, column: 6, scope: !6277)
!6289 = !DILocation(line: 76, column: 11, scope: !6277)
!6290 = !DILocation(line: 79, column: 7, scope: !6277)
!6291 = !DILocation(line: 80, column: 14, scope: !6277)
!6292 = !DILocation(line: 80, column: 8, scope: !6277)
!6293 = !DILocation(line: 80, column: 18, scope: !6277)
!6294 = !DILocation(line: 80, column: 6, scope: !6277)
!6295 = !DILocation(line: 81, column: 6, scope: !6277)
!6296 = !DILocation(line: 82, column: 25, scope: !6277)
!6297 = !DILocation(line: 82, column: 51, scope: !6277)
!6298 = !DILocation(line: 82, column: 2, scope: !6277)
!6299 = !DILocation(line: 85, column: 24, scope: !6277)
!6300 = !DILocation(line: 85, column: 2, scope: !6277)
!6301 = !DILocation(line: 86, column: 6, scope: !6277)
!6302 = !DILocation(line: 87, column: 6, scope: !6277)
!6303 = !DILocation(line: 88, column: 25, scope: !6277)
!6304 = !DILocation(line: 88, column: 53, scope: !6277)
!6305 = !DILocation(line: 88, column: 2, scope: !6277)
!6306 = !DILocation(line: 89, column: 1, scope: !6277)
!6307 = !DISubprogram(name: "pci_write_config_dword", scope: !4131, file: !4131, line: 1218, type: !6308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6308 = !DISubroutineType(types: !6309)
!6309 = !{!109, !5531, !109, !427}
!6310 = !DISubprogram(name: "agp_num_entries", scope: !142, file: !142, line: 212, type: !3902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6311 = distinct !DISubprogram(name: "readl", scope: !6206, file: !6206, line: 58, type: !6312, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6316)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!7, !6314}
!6314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6315, size: 64)
!6315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6210)
!6316 = !{!6317, !6318}
!6317 = !DILocalVariable(name: "addr", arg: 1, scope: !6311, file: !6206, line: 58, type: !6314)
!6318 = !DILocalVariable(name: "ret", scope: !6311, file: !6206, line: 58, type: !7)
!6319 = !DILocation(line: 58, column: 1, scope: !6311)
!6320 = !{i64 2152793593}
!6321 = distinct !DISubprogram(name: "writel", scope: !6206, file: !6206, line: 66, type: !6322, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6324)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{null, !7, !6209}
!6324 = !{!6325, !6326}
!6325 = !DILocalVariable(name: "val", arg: 1, scope: !6321, file: !6206, line: 66, type: !7)
!6326 = !DILocalVariable(name: "addr", arg: 2, scope: !6321, file: !6206, line: 66, type: !6209)
!6327 = !DILocation(line: 66, column: 1, scope: !6321)
!6328 = !{i64 2152795986}
!6329 = distinct !DISubprogram(name: "fix_northbridge", scope: !3, file: !3, line: 271, type: !6330, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6332)
!6330 = !DISubroutineType(types: !6331)
!6331 = !{!109, !4129, !4129, !245}
!6332 = !{!6333, !6334, !6335, !6336, !6337, !6338, !6339, !6340, !6341}
!6333 = !DILocalVariable(name: "nb", arg: 1, scope: !6329, file: !3, line: 271, type: !4129)
!6334 = !DILocalVariable(name: "agp", arg: 2, scope: !6329, file: !3, line: 271, type: !4129)
!6335 = !DILocalVariable(name: "cap", arg: 3, scope: !6329, file: !3, line: 271, type: !245)
!6336 = !DILocalVariable(name: "aper", scope: !6329, file: !3, line: 273, type: !431)
!6337 = !DILocalVariable(name: "nb_aper", scope: !6329, file: !3, line: 273, type: !431)
!6338 = !DILocalVariable(name: "order", scope: !6329, file: !3, line: 274, type: !109)
!6339 = !DILocalVariable(name: "nb_order", scope: !6329, file: !3, line: 275, type: !427)
!6340 = !DILocalVariable(name: "nb_base", scope: !6329, file: !3, line: 275, type: !427)
!6341 = !DILocalVariable(name: "apsize", scope: !6329, file: !3, line: 276, type: !245)
!6342 = !DILocation(line: 271, column: 44, scope: !6329)
!6343 = !DILocation(line: 271, column: 64, scope: !6329)
!6344 = !DILocation(line: 271, column: 73, scope: !6329)
!6345 = !DILocation(line: 273, column: 2, scope: !6329)
!6346 = !DILocation(line: 273, column: 6, scope: !6329)
!6347 = !DILocation(line: 273, column: 12, scope: !6329)
!6348 = !DILocation(line: 274, column: 2, scope: !6329)
!6349 = !DILocation(line: 274, column: 6, scope: !6329)
!6350 = !DILocation(line: 275, column: 2, scope: !6329)
!6351 = !DILocation(line: 275, column: 6, scope: !6329)
!6352 = !DILocation(line: 275, column: 16, scope: !6329)
!6353 = !DILocation(line: 276, column: 2, scope: !6329)
!6354 = !DILocation(line: 276, column: 6, scope: !6329)
!6355 = !DILocation(line: 278, column: 24, scope: !6329)
!6356 = !DILocation(line: 278, column: 2, scope: !6329)
!6357 = !DILocation(line: 279, column: 14, scope: !6329)
!6358 = !DILocation(line: 279, column: 23, scope: !6329)
!6359 = !DILocation(line: 279, column: 29, scope: !6329)
!6360 = !DILocation(line: 279, column: 11, scope: !6329)
!6361 = !DILocation(line: 280, column: 24, scope: !6329)
!6362 = !DILocation(line: 280, column: 2, scope: !6329)
!6363 = !DILocation(line: 281, column: 17, scope: !6329)
!6364 = !DILocation(line: 281, column: 12, scope: !6329)
!6365 = !DILocation(line: 281, column: 25, scope: !6329)
!6366 = !DILocation(line: 281, column: 10, scope: !6329)
!6367 = !DILocation(line: 285, column: 23, scope: !6329)
!6368 = !DILocation(line: 285, column: 28, scope: !6329)
!6369 = !DILocation(line: 285, column: 31, scope: !6329)
!6370 = !DILocation(line: 285, column: 2, scope: !6329)
!6371 = !DILocation(line: 286, column: 6, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 286, column: 6)
!6373 = !DILocation(line: 286, column: 13, scope: !6372)
!6374 = !DILocation(line: 286, column: 6, scope: !6329)
!6375 = !DILocation(line: 287, column: 26, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 287, column: 7)
!6377 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 286, column: 24)
!6378 = !DILocation(line: 287, column: 51, scope: !6376)
!6379 = !DILocation(line: 287, column: 49, scope: !6376)
!6380 = !DILocation(line: 287, column: 7, scope: !6376)
!6381 = !DILocation(line: 287, column: 7, scope: !6377)
!6382 = !DILocation(line: 288, column: 4, scope: !6376)
!6383 = !DILocation(line: 289, column: 3, scope: !6377)
!6384 = !DILocation(line: 292, column: 9, scope: !6329)
!6385 = !DILocation(line: 294, column: 6, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 294, column: 6)
!6387 = !DILocation(line: 294, column: 13, scope: !6386)
!6388 = !DILocation(line: 294, column: 6, scope: !6329)
!6389 = !DILocation(line: 295, column: 10, scope: !6386)
!6390 = !DILocation(line: 295, column: 3, scope: !6386)
!6391 = !DILocation(line: 296, column: 14, scope: !6329)
!6392 = !DILocation(line: 296, column: 12, scope: !6329)
!6393 = !DILocation(line: 296, column: 8, scope: !6329)
!6394 = !DILocation(line: 298, column: 25, scope: !6329)
!6395 = !DILocation(line: 298, column: 9, scope: !6329)
!6396 = !DILocation(line: 298, column: 7, scope: !6329)
!6397 = !DILocation(line: 304, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 304, column: 6)
!6399 = !DILocation(line: 304, column: 12, scope: !6398)
!6400 = !DILocation(line: 304, column: 16, scope: !6398)
!6401 = !DILocation(line: 304, column: 19, scope: !6398)
!6402 = !DILocation(line: 304, column: 40, scope: !6398)
!6403 = !DILocation(line: 304, column: 38, scope: !6398)
!6404 = !DILocation(line: 304, column: 32, scope: !6398)
!6405 = !DILocation(line: 304, column: 24, scope: !6398)
!6406 = !DILocation(line: 304, column: 48, scope: !6398)
!6407 = !DILocation(line: 304, column: 6, scope: !6329)
!6408 = !DILocation(line: 305, column: 3, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 305, column: 3)
!6410 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 304, column: 66)
!6411 = !DILocation(line: 305, column: 3, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 305, column: 3)
!6413 = !DILocation(line: 307, column: 11, scope: !6410)
!6414 = !DILocation(line: 307, column: 9, scope: !6410)
!6415 = !DILocation(line: 308, column: 2, scope: !6410)
!6416 = !DILocation(line: 310, column: 6, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 310, column: 6)
!6418 = !DILocation(line: 310, column: 18, scope: !6417)
!6419 = !DILocation(line: 310, column: 15, scope: !6417)
!6420 = !DILocation(line: 310, column: 6, scope: !6329)
!6421 = !DILocation(line: 311, column: 26, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 311, column: 7)
!6423 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 310, column: 25)
!6424 = !DILocation(line: 311, column: 51, scope: !6422)
!6425 = !DILocation(line: 311, column: 49, scope: !6422)
!6426 = !DILocation(line: 311, column: 7, scope: !6422)
!6427 = !DILocation(line: 311, column: 7, scope: !6423)
!6428 = !DILocation(line: 312, column: 4, scope: !6422)
!6429 = !DILocation(line: 313, column: 2, scope: !6423)
!6430 = !DILocation(line: 315, column: 2, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 315, column: 2)
!6432 = !DILocation(line: 315, column: 2, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6431, file: !3, line: 315, column: 2)
!6434 = !DILocation(line: 317, column: 6, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 317, column: 6)
!6436 = !DILocation(line: 317, column: 12, scope: !6435)
!6437 = !DILocation(line: 317, column: 16, scope: !6435)
!6438 = !DILocation(line: 317, column: 39, scope: !6435)
!6439 = !DILocation(line: 317, column: 61, scope: !6435)
!6440 = !DILocation(line: 317, column: 59, scope: !6435)
!6441 = !DILocation(line: 317, column: 20, scope: !6435)
!6442 = !DILocation(line: 317, column: 6, scope: !6329)
!6443 = !DILocation(line: 318, column: 3, scope: !6435)
!6444 = !DILocation(line: 320, column: 27, scope: !6329)
!6445 = !DILocation(line: 320, column: 31, scope: !6329)
!6446 = !DILocation(line: 320, column: 2, scope: !6329)
!6447 = !DILocation(line: 321, column: 25, scope: !6329)
!6448 = !DILocation(line: 321, column: 53, scope: !6329)
!6449 = !DILocation(line: 321, column: 58, scope: !6329)
!6450 = !DILocation(line: 321, column: 2, scope: !6329)
!6451 = !DILocation(line: 323, column: 2, scope: !6329)
!6452 = !DILocation(line: 324, column: 1, scope: !6329)
!6453 = !DISubprogram(name: "_dev_err", scope: !5525, file: !5525, line: 50, type: !5526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6454 = !DISubprogram(name: "pci_read_config_word", scope: !4131, file: !4131, line: 1214, type: !6455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6455 = !DISubroutineType(types: !6456)
!6456 = !{!109, !5531, !109, !6457}
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!6458 = distinct !DISubprogram(name: "agp_aperture_valid", scope: !3, file: !3, line: 244, type: !6459, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6461)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!109, !431, !427}
!6461 = !{!6462, !6463}
!6462 = !DILocalVariable(name: "aper", arg: 1, scope: !6458, file: !3, line: 244, type: !431)
!6463 = !DILocalVariable(name: "size", arg: 2, scope: !6458, file: !3, line: 244, type: !427)
!6464 = !DILocation(line: 244, column: 35, scope: !6458)
!6465 = !DILocation(line: 244, column: 45, scope: !6458)
!6466 = !DILocation(line: 246, column: 22, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 246, column: 6)
!6468 = !DILocation(line: 246, column: 28, scope: !6467)
!6469 = !DILocation(line: 246, column: 7, scope: !6467)
!6470 = !DILocation(line: 246, column: 6, scope: !6458)
!6471 = !DILocation(line: 247, column: 3, scope: !6467)
!6472 = !DILocation(line: 254, column: 7, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 254, column: 6)
!6474 = !DILocation(line: 254, column: 25, scope: !6473)
!6475 = !DILocation(line: 255, column: 28, scope: !6473)
!6476 = !DILocation(line: 255, column: 26, scope: !6473)
!6477 = !DILocation(line: 254, column: 6, scope: !6458)
!6478 = !DILocation(line: 256, column: 3, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 256, column: 3)
!6480 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 255, column: 73)
!6481 = !DILocation(line: 256, column: 3, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 256, column: 3)
!6483 = !DILocation(line: 257, column: 3, scope: !6480)
!6484 = !DILocation(line: 259, column: 2, scope: !6458)
!6485 = !DILocation(line: 260, column: 1, scope: !6458)
!6486 = distinct !DISubprogram(name: "__arch_hweight16", scope: !6487, file: !6487, line: 26, type: !6488, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6490)
!6487 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!7, !7}
!6490 = !{!6491}
!6491 = !DILocalVariable(name: "w", arg: 1, scope: !6486, file: !6487, line: 26, type: !7)
!6492 = !DILocation(line: 26, column: 58, scope: !6486)
!6493 = !DILocation(line: 28, column: 26, scope: !6486)
!6494 = !DILocation(line: 28, column: 28, scope: !6486)
!6495 = !DILocation(line: 28, column: 9, scope: !6486)
!6496 = !DILocation(line: 28, column: 2, scope: !6486)
!6497 = distinct !DISubprogram(name: "pci_bus_address", scope: !4131, file: !4131, line: 1548, type: !6498, scopeLine: 1549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6501)
!6498 = !DISubroutineType(types: !6499)
!6499 = !{!6500, !4129, !109}
!6500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !4131, line: 791, baseType: !431)
!6501 = !{!6502, !6503, !6504}
!6502 = !DILocalVariable(name: "pdev", arg: 1, scope: !6497, file: !4131, line: 1548, type: !4129)
!6503 = !DILocalVariable(name: "bar", arg: 2, scope: !6497, file: !4131, line: 1548, type: !109)
!6504 = !DILocalVariable(name: "region", scope: !6497, file: !4131, line: 1550, type: !6505)
!6505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !4131, line: 796, size: 128, elements: !6506)
!6506 = !{!6507, !6508}
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6505, file: !4131, line: 797, baseType: !6500, size: 64)
!6508 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6505, file: !4131, line: 798, baseType: !6500, size: 64, offset: 64)
!6509 = !DILocation(line: 1548, column: 62, scope: !6497)
!6510 = !DILocation(line: 1548, column: 72, scope: !6497)
!6511 = !DILocation(line: 1550, column: 2, scope: !6497)
!6512 = !DILocation(line: 1550, column: 24, scope: !6497)
!6513 = !DILocation(line: 1552, column: 26, scope: !6497)
!6514 = !DILocation(line: 1552, column: 32, scope: !6497)
!6515 = !DILocation(line: 1552, column: 47, scope: !6497)
!6516 = !DILocation(line: 1552, column: 53, scope: !6497)
!6517 = !DILocation(line: 1552, column: 62, scope: !6497)
!6518 = !DILocation(line: 1552, column: 2, scope: !6497)
!6519 = !DILocation(line: 1553, column: 16, scope: !6497)
!6520 = !DILocation(line: 1554, column: 1, scope: !6497)
!6521 = !DILocation(line: 1553, column: 2, scope: !6497)
!6522 = distinct !DISubprogram(name: "gart_set_size_and_enable", scope: !5160, file: !5160, line: 61, type: !6523, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6525)
!6523 = !DISubroutineType(types: !6524)
!6524 = !{null, !4129, !427}
!6525 = !{!6526, !6527, !6528}
!6526 = !DILocalVariable(name: "dev", arg: 1, scope: !6522, file: !5160, line: 61, type: !4129)
!6527 = !DILocalVariable(name: "order", arg: 2, scope: !6522, file: !5160, line: 61, type: !427)
!6528 = !DILocalVariable(name: "ctl", scope: !6522, file: !5160, line: 63, type: !427)
!6529 = !DILocation(line: 61, column: 61, scope: !6522)
!6530 = !DILocation(line: 61, column: 70, scope: !6522)
!6531 = !DILocation(line: 63, column: 2, scope: !6522)
!6532 = !DILocation(line: 63, column: 6, scope: !6522)
!6533 = !DILocation(line: 69, column: 8, scope: !6522)
!6534 = !DILocation(line: 69, column: 14, scope: !6522)
!6535 = !DILocation(line: 69, column: 6, scope: !6522)
!6536 = !DILocation(line: 71, column: 25, scope: !6522)
!6537 = !DILocation(line: 71, column: 53, scope: !6522)
!6538 = !DILocation(line: 71, column: 2, scope: !6522)
!6539 = !DILocation(line: 72, column: 1, scope: !6522)
!6540 = distinct !DISubprogram(name: "aperture_valid", scope: !5160, file: !5160, line: 91, type: !6541, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6543)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{!109, !431, !427, !427}
!6543 = !{!6544, !6545, !6546}
!6544 = !DILocalVariable(name: "aper_base", arg: 1, scope: !6540, file: !5160, line: 91, type: !431)
!6545 = !DILocalVariable(name: "aper_size", arg: 2, scope: !6540, file: !5160, line: 91, type: !427)
!6546 = !DILocalVariable(name: "min_size", arg: 3, scope: !6540, file: !5160, line: 91, type: !427)
!6547 = !DILocation(line: 91, column: 38, scope: !6540)
!6548 = !DILocation(line: 91, column: 53, scope: !6540)
!6549 = !DILocation(line: 91, column: 68, scope: !6540)
!6550 = !DILocation(line: 93, column: 7, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6540, file: !5160, line: 93, column: 6)
!6552 = !DILocation(line: 93, column: 6, scope: !6540)
!6553 = !DILocation(line: 94, column: 3, scope: !6551)
!6554 = !DILocation(line: 96, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6540, file: !5160, line: 96, column: 6)
!6556 = !DILocation(line: 96, column: 18, scope: !6555)
!6557 = !DILocation(line: 96, column: 16, scope: !6555)
!6558 = !DILocation(line: 96, column: 28, scope: !6555)
!6559 = !DILocation(line: 96, column: 6, scope: !6540)
!6560 = !DILocation(line: 97, column: 3, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6562, file: !5160, line: 97, column: 3)
!6562 = distinct !DILexicalBlock(scope: !6555, file: !5160, line: 96, column: 46)
!6563 = !DILocation(line: 97, column: 3, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6561, file: !5160, line: 97, column: 3)
!6565 = !DILocation(line: 98, column: 3, scope: !6562)
!6566 = !DILocation(line: 100, column: 23, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6540, file: !5160, line: 100, column: 6)
!6568 = !DILocation(line: 100, column: 34, scope: !6567)
!6569 = !DILocation(line: 100, column: 46, scope: !6567)
!6570 = !DILocation(line: 100, column: 44, scope: !6567)
!6571 = !DILocation(line: 100, column: 6, scope: !6567)
!6572 = !DILocation(line: 100, column: 6, scope: !6540)
!6573 = !DILocation(line: 101, column: 3, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6575, file: !5160, line: 101, column: 3)
!6575 = distinct !DILexicalBlock(scope: !6567, file: !5160, line: 100, column: 73)
!6576 = !DILocation(line: 101, column: 3, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6574, file: !5160, line: 101, column: 3)
!6578 = !DILocation(line: 102, column: 3, scope: !6575)
!6579 = !DILocation(line: 104, column: 6, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6540, file: !5160, line: 104, column: 6)
!6581 = !DILocation(line: 104, column: 18, scope: !6580)
!6582 = !DILocation(line: 104, column: 16, scope: !6580)
!6583 = !DILocation(line: 104, column: 6, scope: !6540)
!6584 = !DILocation(line: 105, column: 3, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6586, file: !5160, line: 105, column: 3)
!6586 = distinct !DILexicalBlock(scope: !6580, file: !5160, line: 104, column: 28)
!6587 = !DILocation(line: 105, column: 3, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6585, file: !5160, line: 105, column: 3)
!6589 = !DILocation(line: 107, column: 3, scope: !6586)
!6590 = !DILocation(line: 110, column: 2, scope: !6540)
!6591 = !DILocation(line: 111, column: 1, scope: !6540)
!6592 = !DISubprogram(name: "__request_region", scope: !4148, file: !4148, line: 278, type: !6593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6593 = !DISubroutineType(types: !6594)
!6594 = !{!4146, !4146, !4151, !4151, !196, !109}
!6595 = !DISubprogram(name: "e820__mapped_any", scope: !6596, file: !6596, line: 14, type: !6597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6596 = !DIFile(filename: "./arch/x86/include/asm/e820/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65a6719b6cd64e8daf1f569367f0fcc3")
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!1478, !431, !431, !159}
!6599 = distinct !DISubprogram(name: "__arch_hweight32", scope: !6487, file: !6487, line: 15, type: !6488, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6600)
!6600 = !{!6601, !6602}
!6601 = !DILocalVariable(name: "w", arg: 1, scope: !6599, file: !6487, line: 15, type: !7)
!6602 = !DILocalVariable(name: "res", scope: !6599, file: !6487, line: 17, type: !7)
!6603 = !DILocation(line: 15, column: 67, scope: !6599)
!6604 = !DILocation(line: 17, column: 2, scope: !6599)
!6605 = !DILocation(line: 17, column: 15, scope: !6599)
!6606 = !DILocation(line: 21, column: 15, scope: !6599)
!6607 = !DILocation(line: 19, column: 2, scope: !6599)
!6608 = !{i64 2148365434, i64 2148365462, i64 2148365468, i64 2148365484, i64 2148365500, i64 2148365527, i64 2148365860, i64 2148365160, i64 2148365866, i64 2148365914, i64 2148365978, i64 2148366042, i64 2148366099, i64 2148365241, i64 2148365266, i64 2148366306, i64 2148366436, i64 2148366367, i64 2148366450, i64 2148365358}
!6609 = !DILocation(line: 23, column: 9, scope: !6599)
!6610 = !DILocation(line: 24, column: 1, scope: !6599)
!6611 = !DILocation(line: 23, column: 2, scope: !6599)
!6612 = !DISubprogram(name: "pcibios_resource_to_bus", scope: !4131, file: !4131, line: 1106, type: !6613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6613 = !DISubroutineType(types: !6614)
!6614 = !{null, !4135, !6615, !4146}
!6615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6505, size: 64)
!6616 = !DISubprogram(name: "pci_get_slot", scope: !4131, file: !4131, line: 1181, type: !6617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6617 = !DISubroutineType(types: !6618)
!6618 = !{!4129, !4135, !7}
!6619 = !DISubprogram(name: "pci_dev_put", scope: !4131, file: !4131, line: 1148, type: !4732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6620 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !94, file: !94, line: 921, type: !6621, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6623)
!6621 = !DISubroutineType(types: !6622)
!6622 = !{null, !4202, !349}
!6623 = !{!6624, !6625}
!6624 = !DILocalVariable(name: "dev", arg: 1, scope: !6620, file: !94, line: 921, type: !4202)
!6625 = !DILocalVariable(name: "data", arg: 2, scope: !6620, file: !94, line: 921, type: !349)
!6626 = !DILocation(line: 921, column: 51, scope: !6620)
!6627 = !DILocation(line: 921, column: 62, scope: !6620)
!6628 = !DILocation(line: 923, column: 21, scope: !6620)
!6629 = !DILocation(line: 923, column: 2, scope: !6620)
!6630 = !DILocation(line: 923, column: 7, scope: !6620)
!6631 = !DILocation(line: 923, column: 19, scope: !6620)
!6632 = !DILocation(line: 924, column: 1, scope: !6620)
!6633 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !4131, file: !4131, line: 2109, type: !6634, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6636)
!6634 = !DISubroutineType(types: !6635)
!6635 = !{!349, !4129}
!6636 = !{!6637}
!6637 = !DILocalVariable(name: "pdev", arg: 1, scope: !6633, file: !4131, line: 2109, type: !4129)
!6638 = !DILocation(line: 2109, column: 53, scope: !6633)
!6639 = !DILocation(line: 2111, column: 26, scope: !6633)
!6640 = !DILocation(line: 2111, column: 32, scope: !6633)
!6641 = !DILocation(line: 2111, column: 9, scope: !6633)
!6642 = !DILocation(line: 2111, column: 2, scope: !6633)
!6643 = !DISubprogram(name: "__release_region", scope: !4148, file: !4148, line: 287, type: !6644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6644 = !DISubroutineType(types: !6645)
!6645 = !{null, !4146, !4151, !4151}
!6646 = !DISubprogram(name: "agp_remove_bridge", scope: !142, file: !142, line: 186, type: !5596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6647 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !94, file: !94, line: 916, type: !6648, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6650)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!349, !4222}
!6650 = !{!6651}
!6651 = !DILocalVariable(name: "dev", arg: 1, scope: !6647, file: !94, line: 916, type: !4222)
!6652 = !DILocation(line: 916, column: 58, scope: !6647)
!6653 = !DILocation(line: 918, column: 9, scope: !6647)
!6654 = !DILocation(line: 918, column: 14, scope: !6647)
!6655 = !DILocation(line: 918, column: 2, scope: !6647)
!6656 = distinct !DISubprogram(name: "agp_amd64_resume", scope: !3, file: !3, line: 591, type: !4240, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6657)
!6657 = !{!6658, !6659, !6660}
!6658 = !DILocalVariable(name: "dev", arg: 1, scope: !6656, file: !3, line: 591, type: !4202)
!6659 = !DILocalVariable(name: "pdev", scope: !6656, file: !3, line: 593, type: !4129)
!6660 = !DILocalVariable(name: "__mptr", scope: !6661, file: !3, line: 593, type: !349)
!6661 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 593, column: 25)
!6662 = !DILocation(line: 591, column: 44, scope: !6656)
!6663 = !DILocation(line: 593, column: 2, scope: !6656)
!6664 = !DILocation(line: 593, column: 18, scope: !6656)
!6665 = !DILocation(line: 593, column: 25, scope: !6661)
!6666 = !DILocation(line: 593, column: 25, scope: !6656)
!6667 = !DILocation(line: 595, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 595, column: 6)
!6669 = !DILocation(line: 595, column: 12, scope: !6668)
!6670 = !DILocation(line: 595, column: 19, scope: !6668)
!6671 = !DILocation(line: 595, column: 6, scope: !6656)
!6672 = !DILocation(line: 596, column: 20, scope: !6668)
!6673 = !DILocation(line: 596, column: 3, scope: !6668)
!6674 = !DILocation(line: 598, column: 9, scope: !6656)
!6675 = !DILocation(line: 599, column: 1, scope: !6656)
!6676 = !DILocation(line: 598, column: 2, scope: !6656)
