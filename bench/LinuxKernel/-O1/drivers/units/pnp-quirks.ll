; ModuleID = 'drivers/pnp/quirks.c'
source_filename = "drivers/pnp/quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_fixup = type { [7 x i8], ptr }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.13 }
%union.anon.13 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.14, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.14 = type { ptr }
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.pci_bus_region = type { i64, i64 }

@pnp_fixups = internal global [19 x %struct.pnp_fixup] [%struct.pnp_fixup { [7 x i8] c"CTL0021", ptr @quirk_awe32_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0022", ptr @quirk_awe32_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0023", ptr @quirk_awe32_resources }, %struct.pnp_fixup { [7 x i8] c"@X@0001", ptr @quirk_cmi8330_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0001", ptr @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0031", ptr @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0041", ptr @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0042", ptr @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0043", ptr @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0044", ptr @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0045", ptr @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"ADS7151", ptr @quirk_ad1815_mpu_resources }, %struct.pnp_fixup { [7 x i8] c"ADS7181", ptr @quirk_add_irq_optional_dependent_sets }, %struct.pnp_fixup { [7 x i8] c"AZT0002", ptr @quirk_add_irq_optional_dependent_sets }, %struct.pnp_fixup { [7 x i8] c"PNP0c01", ptr @quirk_system_pci_resources }, %struct.pnp_fixup { [7 x i8] c"PNP0c02", ptr @quirk_system_pci_resources }, %struct.pnp_fixup { [7 x i8] c"PNP0c01", ptr @quirk_amd_mmconfig_area }, %struct.pnp_fixup { [7 x i8] c"PNP0c02", ptr @quirk_intel_mch }, %struct.pnp_fixup zeroinitializer], align 16, !dbg !0
@pnp_debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !257
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: calling %pS\0A\00", align 1, !dbg !262
@.str.2 = private unnamed_addr constant [45 x i8] c"couldn't add ioport region to option set %d\0A\00", align 1, !dbg !267
@.str.3 = private unnamed_addr constant [43 x i8] c"added ioport region %#llx-%#llx to set %d\0A\00", align 1, !dbg !272
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !277
@.str.5 = private unnamed_addr constant [48 x i8] c"set possible IRQs in option set %d to 5, 7, 10\0A\00", align 1, !dbg !282
@.str.6 = private unnamed_addr constant [79 x i8] c"changing possible DMA channel mask in option set %d from %#02x to 0x0A (1, 3)\0A\00", align 1, !dbg !287
@.str.7 = private unnamed_addr constant [61 x i8] c"increased option port range from %#llx-%#llx to %#llx-%#llx\0A\00", align 1, !dbg !292
@.str.8 = private unnamed_addr constant [31 x i8] c"made independent IRQ optional\0A\00", align 1, !dbg !297
@.str.9 = private unnamed_addr constant [68 x i8] c"added dependent option set %d (same as set %d except IRQ optional)\0A\00", align 1, !dbg !302
@.str.10 = private unnamed_addr constant [26 x i8] c"no dependent option sets\0A\00", align 1, !dbg !307
@.str.11 = private unnamed_addr constant [33 x i8] c"couldn't clone dependent set %d\0A\00", align 1, !dbg !312
@.str.12 = private unnamed_addr constant [51 x i8] c"invalid dependent option priority %d clipped to %d\00", align 1, !dbg !317
@.str.13 = private unnamed_addr constant [49 x i8] c"disabling %pR because it overlaps %s BAR %d %pR\0A\00", align 1, !dbg !322
@.str.14 = private unnamed_addr constant [89 x i8] c"[Firmware Bug]: %pR covers only part of AMD MMCONFIG area %pR; adding more reservations\0A\00", align 1, !dbg !327
@.str.15 = private unnamed_addr constant [85 x i8] c"[Firmware Bug]: PNP resource %pR covers only part of %s Intel MCH; extending to %pR\0A\00", align 1, !dbg !332
@mch_quirk_devices = internal constant [4 x i32] [i32 340, i32 2564, i32 3072, i32 5636], align 16, !dbg !337

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_fixup_device(ptr noundef %dev) #0 align 16 !dbg !4885 {
entry:
  %dev.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4887, metadata !DIExpression()), !dbg !4890
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #15, !dbg !4891
  call void @llvm.dbg.declare(metadata ptr %f, metadata !4888, metadata !DIExpression()), !dbg !4892
  store ptr @pnp_fixups, ptr %f, align 8, !dbg !4893
  br label %for.cond, !dbg !4895

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %f, align 8, !dbg !4896
  %id = getelementptr inbounds %struct.pnp_fixup, ptr %0, i32 0, i32 0, !dbg !4898
  %arraydecay = getelementptr inbounds [7 x i8], ptr %id, i64 0, i64 0, !dbg !4899
  %1 = load i8, ptr %arraydecay, align 8, !dbg !4899
  %tobool = icmp ne i8 %1, 0, !dbg !4900
  br i1 %tobool, label %for.body, label %for.end, !dbg !4900

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4901
  %id1 = getelementptr inbounds %struct.pnp_dev, ptr %2, i32 0, i32 12, !dbg !4904
  %3 = load ptr, ptr %id1, align 8, !dbg !4904
  %4 = load ptr, ptr %f, align 8, !dbg !4905
  %id2 = getelementptr inbounds %struct.pnp_fixup, ptr %4, i32 0, i32 0, !dbg !4906
  %arraydecay3 = getelementptr inbounds [7 x i8], ptr %id2, i64 0, i64 0, !dbg !4905
  %call = call i32 @compare_pnp_id(ptr noundef %3, ptr noundef %arraydecay3) #16, !dbg !4907
  %tobool4 = icmp ne i32 %call, 0, !dbg !4907
  br i1 %tobool4, label %if.end, label %if.then, !dbg !4908

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4909

if.end:                                           ; preds = %for.body
  %5 = load i32, ptr @pnp_debug, align 4, !dbg !4910
  %tobool5 = icmp ne i32 %5, 0, !dbg !4910
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !4913

if.then6:                                         ; preds = %if.end
  br label %do.body, !dbg !4914

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !4916

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4916

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !4914
  %dev7 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !4914
  %7 = load ptr, ptr %f, align 8, !dbg !4914
  %id8 = getelementptr inbounds %struct.pnp_fixup, ptr %7, i32 0, i32 0, !dbg !4914
  %arraydecay9 = getelementptr inbounds [7 x i8], ptr %id8, i64 0, i64 0, !dbg !4914
  %8 = load ptr, ptr %f, align 8, !dbg !4914
  %quirk_function = getelementptr inbounds %struct.pnp_fixup, ptr %8, i32 0, i32 1, !dbg !4914
  %9 = load ptr, ptr %quirk_function, align 8, !dbg !4914
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev7, ptr noundef @.str.1, ptr noundef %arraydecay9, ptr noundef %9) #17, !dbg !4914
  br label %if.end10, !dbg !4910

if.end10:                                         ; preds = %do.end, %if.end
  store i32 0, ptr %tmp, align 4, !dbg !4910
  %10 = load i32, ptr %tmp, align 4, !dbg !4913
  %11 = load ptr, ptr %f, align 8, !dbg !4918
  %quirk_function11 = getelementptr inbounds %struct.pnp_fixup, ptr %11, i32 0, i32 1, !dbg !4919
  %12 = load ptr, ptr %quirk_function11, align 8, !dbg !4919
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !4920
  call void %12(ptr noundef %13) #16, !dbg !4918
  br label %for.inc, !dbg !4921

for.inc:                                          ; preds = %if.end10, %if.then
  %14 = load ptr, ptr %f, align 8, !dbg !4922
  %incdec.ptr = getelementptr %struct.pnp_fixup, ptr %14, i32 1, !dbg !4922
  store ptr %incdec.ptr, ptr %f, align 8, !dbg !4922
  br label %for.cond, !dbg !4923, !llvm.loop !4924

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #15, !dbg !4928
  ret void, !dbg !4928
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4929 dso_local i32 @compare_pnp_id(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4932 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_awe32_resources(ptr noundef %dev) #0 align 16 !dbg !4936 {
entry:
  %dev.addr = alloca ptr, align 8
  %option = alloca ptr, align 8
  %set = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4938, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #15, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %option, metadata !4939, metadata !DIExpression()), !dbg !4949
  call void @llvm.lifetime.start.p0(i64 4, ptr %set) #15, !dbg !4950
  call void @llvm.dbg.declare(metadata ptr %set, metadata !4940, metadata !DIExpression()), !dbg !4951
  store i32 -1, ptr %set, align 4, !dbg !4951
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4941, metadata !DIExpression()), !dbg !4952
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4952
  %options = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 17, !dbg !4952
  %next = getelementptr inbounds %struct.list_head, ptr %options, i32 0, i32 0, !dbg !4952
  %1 = load ptr, ptr %next, align 8, !dbg !4952
  store ptr %1, ptr %__mptr, align 8, !dbg !4952
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4952
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !4952
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4953
  %3 = load ptr, ptr %tmp, align 8, !dbg !4952
  store ptr %3, ptr %option, align 8, !dbg !4953
  br label %for.cond, !dbg !4953

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %option, align 8, !dbg !4954
  %list = getelementptr inbounds %struct.pnp_option, ptr %4, i32 0, i32 0, !dbg !4954
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !4954
  %options1 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 17, !dbg !4954
  %cmp = icmp eq ptr %list, %options1, !dbg !4954
  %lnot = xor i1 %cmp, true, !dbg !4954
  br i1 %lnot, label %for.body, label %for.end, !dbg !4953

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %option, align 8, !dbg !4955
  %call = call i32 @pnp_option_is_dependent(ptr noundef %6) #16, !dbg !4958
  %tobool = icmp ne i32 %call, 0, !dbg !4958
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4959

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %option, align 8, !dbg !4960
  %call2 = call i32 @pnp_option_set(ptr noundef %7) #16, !dbg !4961
  %8 = load i32, ptr %set, align 4, !dbg !4962
  %cmp3 = icmp ne i32 %call2, %8, !dbg !4963
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4964

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %option, align 8, !dbg !4965
  %call4 = call i32 @pnp_option_set(ptr noundef %9) #16, !dbg !4967
  store i32 %call4, ptr %set, align 4, !dbg !4968
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !4969
  %11 = load ptr, ptr %option, align 8, !dbg !4970
  call void @quirk_awe32_add_ports(ptr noundef %10, ptr noundef %11, i32 noundef 2048) #16, !dbg !4971
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !4972
  %13 = load ptr, ptr %option, align 8, !dbg !4973
  call void @quirk_awe32_add_ports(ptr noundef %12, ptr noundef %13, i32 noundef 1024) #16, !dbg !4974
  br label %if.end, !dbg !4975

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4976

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #15, !dbg !4977
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !4944, metadata !DIExpression()), !dbg !4977
  %14 = load ptr, ptr %option, align 8, !dbg !4977
  %list6 = getelementptr inbounds %struct.pnp_option, ptr %14, i32 0, i32 0, !dbg !4977
  %next7 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !4977
  %15 = load ptr, ptr %next7, align 8, !dbg !4977
  store ptr %15, ptr %__mptr5, align 8, !dbg !4977
  %16 = load ptr, ptr %__mptr5, align 8, !dbg !4977
  %add.ptr9 = getelementptr i8, ptr %16, i64 0, !dbg !4977
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !4977
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #15, !dbg !4954
  %17 = load ptr, ptr %tmp8, align 8, !dbg !4977
  store ptr %17, ptr %option, align 8, !dbg !4954
  br label %for.cond, !dbg !4954, !llvm.loop !4978

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %set) #15, !dbg !4980
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #15, !dbg !4980
  ret void, !dbg !4980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_cmi8330_resources(ptr noundef %dev) #0 align 16 !dbg !4981 {
entry:
  %dev.addr = alloca ptr, align 8
  %option = alloca ptr, align 8
  %irq = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr98 = alloca ptr, align 8
  %tmp101 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4983, metadata !DIExpression()), !dbg !4995
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #15, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %option, metadata !4984, metadata !DIExpression()), !dbg !4997
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #15, !dbg !4998
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !4985, metadata !DIExpression()), !dbg !4999
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #15, !dbg !5000
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !4987, metadata !DIExpression()), !dbg !5001
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5002
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4989, metadata !DIExpression()), !dbg !5002
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5002
  %options = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 17, !dbg !5002
  %next = getelementptr inbounds %struct.list_head, ptr %options, i32 0, i32 0, !dbg !5002
  %1 = load ptr, ptr %next, align 8, !dbg !5002
  store ptr %1, ptr %__mptr, align 8, !dbg !5002
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5002
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5002
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5002
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5003
  %3 = load ptr, ptr %tmp, align 8, !dbg !5002
  store ptr %3, ptr %option, align 8, !dbg !5003
  br label %for.cond, !dbg !5003

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %option, align 8, !dbg !5004
  %list = getelementptr inbounds %struct.pnp_option, ptr %4, i32 0, i32 0, !dbg !5004
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5004
  %options1 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 17, !dbg !5004
  %cmp = icmp eq ptr %list, %options1, !dbg !5004
  %lnot = xor i1 %cmp, true, !dbg !5004
  br i1 %lnot, label %for.body, label %for.end, !dbg !5003

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %option, align 8, !dbg !5005
  %call = call i32 @pnp_option_is_dependent(ptr noundef %6) #16, !dbg !5008
  %tobool = icmp ne i32 %call, 0, !dbg !5008
  br i1 %tobool, label %if.end, label %if.then, !dbg !5009

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5010

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %option, align 8, !dbg !5011
  %type = getelementptr inbounds %struct.pnp_option, ptr %7, i32 0, i32 2, !dbg !5013
  %8 = load i64, ptr %type, align 8, !dbg !5013
  %cmp2 = icmp eq i64 %8, 1024, !dbg !5014
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5015

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %option, align 8, !dbg !5016
  %u = getelementptr inbounds %struct.pnp_option, ptr %9, i32 0, i32 3, !dbg !5018
  store ptr %u, ptr %irq, align 8, !dbg !5019
  %10 = load ptr, ptr %irq, align 8, !dbg !5020
  %map = getelementptr inbounds %struct.pnp_irq, ptr %10, i32 0, i32 0, !dbg !5021
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map, i32 0, i32 0, !dbg !5022
  %arraydecay = getelementptr inbounds [4 x i64], ptr %bits, i64 0, i64 0, !dbg !5020
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 256) #16, !dbg !5023
  %11 = load ptr, ptr %irq, align 8, !dbg !5024
  %map4 = getelementptr inbounds %struct.pnp_irq, ptr %11, i32 0, i32 0, !dbg !5024
  %bits5 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map4, i32 0, i32 0, !dbg !5024
  %arraydecay6 = getelementptr inbounds [4 x i64], ptr %bits5, i64 0, i64 0, !dbg !5024
  %12 = ptrtoint ptr %arraydecay6 to i64, !dbg !5024
  %cmp7 = icmp ne i64 %12, 0, !dbg !5024
  %conv = zext i1 %cmp7 to i32, !dbg !5024
  %13 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5024
  br i1 %13, label %land.lhs.true, label %cond.false, !dbg !5024

land.lhs.true:                                    ; preds = %if.then3
  %14 = load ptr, ptr %irq, align 8, !dbg !5024
  %map8 = getelementptr inbounds %struct.pnp_irq, ptr %14, i32 0, i32 0, !dbg !5024
  %bits9 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map8, i32 0, i32 0, !dbg !5024
  %arraydecay10 = getelementptr inbounds [4 x i64], ptr %bits9, i64 0, i64 0, !dbg !5024
  %15 = ptrtoint ptr %arraydecay10 to i64, !dbg !5024
  %cmp11 = icmp ne i64 %15, 0, !dbg !5024
  br i1 %cmp11, label %land.lhs.true13, label %cond.false, !dbg !5024

land.lhs.true13:                                  ; preds = %land.lhs.true
  %16 = load ptr, ptr %irq, align 8, !dbg !5024
  %map14 = getelementptr inbounds %struct.pnp_irq, ptr %16, i32 0, i32 0, !dbg !5024
  %bits15 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map14, i32 0, i32 0, !dbg !5024
  %arraydecay16 = getelementptr inbounds [4 x i64], ptr %bits15, i64 0, i64 0, !dbg !5024
  %17 = load i64, ptr %arraydecay16, align 8, !dbg !5024
  %18 = call i1 @llvm.is.constant.i64(i64 %17), !dbg !5024
  br i1 %18, label %cond.true, label %cond.false, !dbg !5024

cond.true:                                        ; preds = %land.lhs.true13
  %19 = load ptr, ptr %irq, align 8, !dbg !5024
  %map17 = getelementptr inbounds %struct.pnp_irq, ptr %19, i32 0, i32 0, !dbg !5024
  %bits18 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map17, i32 0, i32 0, !dbg !5024
  %arraydecay19 = getelementptr inbounds [4 x i64], ptr %bits18, i64 0, i64 0, !dbg !5024
  call void @generic___set_bit(i64 noundef 5, ptr noundef %arraydecay19) #16, !dbg !5024
  br label %cond.end, !dbg !5024

cond.false:                                       ; preds = %land.lhs.true13, %land.lhs.true, %if.then3
  %20 = load ptr, ptr %irq, align 8, !dbg !5024
  %map20 = getelementptr inbounds %struct.pnp_irq, ptr %20, i32 0, i32 0, !dbg !5024
  %bits21 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map20, i32 0, i32 0, !dbg !5024
  %arraydecay22 = getelementptr inbounds [4 x i64], ptr %bits21, i64 0, i64 0, !dbg !5024
  call void @___set_bit(i64 noundef 5, ptr noundef %arraydecay22) #16, !dbg !5024
  br label %cond.end, !dbg !5024

cond.end:                                         ; preds = %cond.false, %cond.true
  %21 = load ptr, ptr %irq, align 8, !dbg !5025
  %map23 = getelementptr inbounds %struct.pnp_irq, ptr %21, i32 0, i32 0, !dbg !5025
  %bits24 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map23, i32 0, i32 0, !dbg !5025
  %arraydecay25 = getelementptr inbounds [4 x i64], ptr %bits24, i64 0, i64 0, !dbg !5025
  %22 = ptrtoint ptr %arraydecay25 to i64, !dbg !5025
  %cmp26 = icmp ne i64 %22, 0, !dbg !5025
  %conv27 = zext i1 %cmp26 to i32, !dbg !5025
  %23 = call i1 @llvm.is.constant.i32(i32 %conv27), !dbg !5025
  br i1 %23, label %land.lhs.true28, label %cond.false42, !dbg !5025

land.lhs.true28:                                  ; preds = %cond.end
  %24 = load ptr, ptr %irq, align 8, !dbg !5025
  %map29 = getelementptr inbounds %struct.pnp_irq, ptr %24, i32 0, i32 0, !dbg !5025
  %bits30 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map29, i32 0, i32 0, !dbg !5025
  %arraydecay31 = getelementptr inbounds [4 x i64], ptr %bits30, i64 0, i64 0, !dbg !5025
  %25 = ptrtoint ptr %arraydecay31 to i64, !dbg !5025
  %cmp32 = icmp ne i64 %25, 0, !dbg !5025
  br i1 %cmp32, label %land.lhs.true34, label %cond.false42, !dbg !5025

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %26 = load ptr, ptr %irq, align 8, !dbg !5025
  %map35 = getelementptr inbounds %struct.pnp_irq, ptr %26, i32 0, i32 0, !dbg !5025
  %bits36 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map35, i32 0, i32 0, !dbg !5025
  %arraydecay37 = getelementptr inbounds [4 x i64], ptr %bits36, i64 0, i64 0, !dbg !5025
  %27 = load i64, ptr %arraydecay37, align 8, !dbg !5025
  %28 = call i1 @llvm.is.constant.i64(i64 %27), !dbg !5025
  br i1 %28, label %cond.true38, label %cond.false42, !dbg !5025

cond.true38:                                      ; preds = %land.lhs.true34
  %29 = load ptr, ptr %irq, align 8, !dbg !5025
  %map39 = getelementptr inbounds %struct.pnp_irq, ptr %29, i32 0, i32 0, !dbg !5025
  %bits40 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map39, i32 0, i32 0, !dbg !5025
  %arraydecay41 = getelementptr inbounds [4 x i64], ptr %bits40, i64 0, i64 0, !dbg !5025
  call void @generic___set_bit(i64 noundef 7, ptr noundef %arraydecay41) #16, !dbg !5025
  br label %cond.end46, !dbg !5025

cond.false42:                                     ; preds = %land.lhs.true34, %land.lhs.true28, %cond.end
  %30 = load ptr, ptr %irq, align 8, !dbg !5025
  %map43 = getelementptr inbounds %struct.pnp_irq, ptr %30, i32 0, i32 0, !dbg !5025
  %bits44 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map43, i32 0, i32 0, !dbg !5025
  %arraydecay45 = getelementptr inbounds [4 x i64], ptr %bits44, i64 0, i64 0, !dbg !5025
  call void @___set_bit(i64 noundef 7, ptr noundef %arraydecay45) #16, !dbg !5025
  br label %cond.end46, !dbg !5025

cond.end46:                                       ; preds = %cond.false42, %cond.true38
  %31 = load ptr, ptr %irq, align 8, !dbg !5026
  %map47 = getelementptr inbounds %struct.pnp_irq, ptr %31, i32 0, i32 0, !dbg !5026
  %bits48 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map47, i32 0, i32 0, !dbg !5026
  %arraydecay49 = getelementptr inbounds [4 x i64], ptr %bits48, i64 0, i64 0, !dbg !5026
  %32 = ptrtoint ptr %arraydecay49 to i64, !dbg !5026
  %cmp50 = icmp ne i64 %32, 0, !dbg !5026
  %conv51 = zext i1 %cmp50 to i32, !dbg !5026
  %33 = call i1 @llvm.is.constant.i32(i32 %conv51), !dbg !5026
  br i1 %33, label %land.lhs.true52, label %cond.false66, !dbg !5026

land.lhs.true52:                                  ; preds = %cond.end46
  %34 = load ptr, ptr %irq, align 8, !dbg !5026
  %map53 = getelementptr inbounds %struct.pnp_irq, ptr %34, i32 0, i32 0, !dbg !5026
  %bits54 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map53, i32 0, i32 0, !dbg !5026
  %arraydecay55 = getelementptr inbounds [4 x i64], ptr %bits54, i64 0, i64 0, !dbg !5026
  %35 = ptrtoint ptr %arraydecay55 to i64, !dbg !5026
  %cmp56 = icmp ne i64 %35, 0, !dbg !5026
  br i1 %cmp56, label %land.lhs.true58, label %cond.false66, !dbg !5026

land.lhs.true58:                                  ; preds = %land.lhs.true52
  %36 = load ptr, ptr %irq, align 8, !dbg !5026
  %map59 = getelementptr inbounds %struct.pnp_irq, ptr %36, i32 0, i32 0, !dbg !5026
  %bits60 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map59, i32 0, i32 0, !dbg !5026
  %arraydecay61 = getelementptr inbounds [4 x i64], ptr %bits60, i64 0, i64 0, !dbg !5026
  %37 = load i64, ptr %arraydecay61, align 8, !dbg !5026
  %38 = call i1 @llvm.is.constant.i64(i64 %37), !dbg !5026
  br i1 %38, label %cond.true62, label %cond.false66, !dbg !5026

cond.true62:                                      ; preds = %land.lhs.true58
  %39 = load ptr, ptr %irq, align 8, !dbg !5026
  %map63 = getelementptr inbounds %struct.pnp_irq, ptr %39, i32 0, i32 0, !dbg !5026
  %bits64 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map63, i32 0, i32 0, !dbg !5026
  %arraydecay65 = getelementptr inbounds [4 x i64], ptr %bits64, i64 0, i64 0, !dbg !5026
  call void @generic___set_bit(i64 noundef 10, ptr noundef %arraydecay65) #16, !dbg !5026
  br label %cond.end70, !dbg !5026

cond.false66:                                     ; preds = %land.lhs.true58, %land.lhs.true52, %cond.end46
  %40 = load ptr, ptr %irq, align 8, !dbg !5026
  %map67 = getelementptr inbounds %struct.pnp_irq, ptr %40, i32 0, i32 0, !dbg !5026
  %bits68 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map67, i32 0, i32 0, !dbg !5026
  %arraydecay69 = getelementptr inbounds [4 x i64], ptr %bits68, i64 0, i64 0, !dbg !5026
  call void @___set_bit(i64 noundef 10, ptr noundef %arraydecay69) #16, !dbg !5026
  br label %cond.end70, !dbg !5026

cond.end70:                                       ; preds = %cond.false66, %cond.true62
  br label %do.body, !dbg !5027

do.body:                                          ; preds = %cond.end70
  br label %do.cond, !dbg !5029

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5029

do.end:                                           ; preds = %do.cond
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !5027
  %dev71 = getelementptr inbounds %struct.pnp_dev, ptr %41, i32 0, i32 0, !dbg !5027
  %42 = load ptr, ptr %option, align 8, !dbg !5027
  %call72 = call i32 @pnp_option_set(ptr noundef %42) #16, !dbg !5027
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef @.str.5, i32 noundef %call72) #17, !dbg !5027
  br label %if.end97, !dbg !5031

if.else:                                          ; preds = %if.end
  %43 = load ptr, ptr %option, align 8, !dbg !5032
  %type73 = getelementptr inbounds %struct.pnp_option, ptr %43, i32 0, i32 2, !dbg !5034
  %44 = load i64, ptr %type73, align 8, !dbg !5034
  %cmp74 = icmp eq i64 %44, 2048, !dbg !5035
  br i1 %cmp74, label %if.then76, label %if.end96, !dbg !5036

if.then76:                                        ; preds = %if.else
  %45 = load ptr, ptr %option, align 8, !dbg !5037
  %u77 = getelementptr inbounds %struct.pnp_option, ptr %45, i32 0, i32 3, !dbg !5039
  store ptr %u77, ptr %dma, align 8, !dbg !5040
  %46 = load ptr, ptr %dma, align 8, !dbg !5041
  %flags = getelementptr inbounds %struct.pnp_dma, ptr %46, i32 0, i32 1, !dbg !5043
  %47 = load i8, ptr %flags, align 1, !dbg !5043
  %conv78 = zext i8 %47 to i32, !dbg !5041
  %and = and i32 %conv78, 3, !dbg !5044
  %cmp79 = icmp eq i32 %and, 0, !dbg !5045
  br i1 %cmp79, label %land.lhs.true81, label %if.end95, !dbg !5046

land.lhs.true81:                                  ; preds = %if.then76
  %48 = load ptr, ptr %dma, align 8, !dbg !5047
  %map82 = getelementptr inbounds %struct.pnp_dma, ptr %48, i32 0, i32 0, !dbg !5048
  %49 = load i8, ptr %map82, align 1, !dbg !5048
  %conv83 = zext i8 %49 to i32, !dbg !5047
  %cmp84 = icmp ne i32 %conv83, 10, !dbg !5049
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !5050

if.then86:                                        ; preds = %land.lhs.true81
  br label %do.body87, !dbg !5051

do.body87:                                        ; preds = %if.then86
  br label %do.cond88, !dbg !5054

do.cond88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !5054

do.end89:                                         ; preds = %do.cond88
  %50 = load ptr, ptr %dev.addr, align 8, !dbg !5051
  %dev90 = getelementptr inbounds %struct.pnp_dev, ptr %50, i32 0, i32 0, !dbg !5051
  %51 = load ptr, ptr %option, align 8, !dbg !5051
  %call91 = call i32 @pnp_option_set(ptr noundef %51) #16, !dbg !5051
  %52 = load ptr, ptr %dma, align 8, !dbg !5051
  %map92 = getelementptr inbounds %struct.pnp_dma, ptr %52, i32 0, i32 0, !dbg !5051
  %53 = load i8, ptr %map92, align 1, !dbg !5051
  %conv93 = zext i8 %53 to i32, !dbg !5051
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev90, ptr noundef @.str.6, i32 noundef %call91, i32 noundef %conv93) #17, !dbg !5051
  %54 = load ptr, ptr %dma, align 8, !dbg !5056
  %map94 = getelementptr inbounds %struct.pnp_dma, ptr %54, i32 0, i32 0, !dbg !5057
  store i8 10, ptr %map94, align 1, !dbg !5058
  br label %if.end95, !dbg !5059

if.end95:                                         ; preds = %do.end89, %land.lhs.true81, %if.then76
  br label %if.end96, !dbg !5060

if.end96:                                         ; preds = %if.end95, %if.else
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %do.end
  br label %for.inc, !dbg !5061

for.inc:                                          ; preds = %if.end97, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr98) #15, !dbg !5062
  call void @llvm.dbg.declare(metadata ptr %__mptr98, metadata !4992, metadata !DIExpression()), !dbg !5062
  %55 = load ptr, ptr %option, align 8, !dbg !5062
  %list99 = getelementptr inbounds %struct.pnp_option, ptr %55, i32 0, i32 0, !dbg !5062
  %next100 = getelementptr inbounds %struct.list_head, ptr %list99, i32 0, i32 0, !dbg !5062
  %56 = load ptr, ptr %next100, align 8, !dbg !5062
  store ptr %56, ptr %__mptr98, align 8, !dbg !5062
  %57 = load ptr, ptr %__mptr98, align 8, !dbg !5062
  %add.ptr102 = getelementptr i8, ptr %57, i64 0, !dbg !5062
  store ptr %add.ptr102, ptr %tmp101, align 8, !dbg !5062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr98) #15, !dbg !5004
  %58 = load ptr, ptr %tmp101, align 8, !dbg !5062
  store ptr %58, ptr %option, align 8, !dbg !5004
  br label %for.cond, !dbg !5004, !llvm.loop !5063

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #15, !dbg !5065
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #15, !dbg !5065
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #15, !dbg !5065
  ret void, !dbg !5065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_sb16audio_resources(ptr noundef %dev) #0 align 16 !dbg !5066 {
entry:
  %dev.addr = alloca ptr, align 8
  %option = alloca ptr, align 8
  %prev_option_flags = alloca i32, align 4
  %n = alloca i32, align 4
  %port = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5068, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #15, !dbg !5081
  call void @llvm.dbg.declare(metadata ptr %option, metadata !5069, metadata !DIExpression()), !dbg !5082
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_option_flags) #15, !dbg !5083
  call void @llvm.dbg.declare(metadata ptr %prev_option_flags, metadata !5070, metadata !DIExpression()), !dbg !5084
  store i32 -1, ptr %prev_option_flags, align 4, !dbg !5084
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #15, !dbg !5083
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5071, metadata !DIExpression()), !dbg !5085
  store i32 0, ptr %n, align 4, !dbg !5085
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !5086
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5072, metadata !DIExpression()), !dbg !5087
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5088
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5074, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5088
  %options = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 17, !dbg !5088
  %next = getelementptr inbounds %struct.list_head, ptr %options, i32 0, i32 0, !dbg !5088
  %1 = load ptr, ptr %next, align 8, !dbg !5088
  store ptr %1, ptr %__mptr, align 8, !dbg !5088
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5088
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5088
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5088
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5089
  %3 = load ptr, ptr %tmp, align 8, !dbg !5088
  store ptr %3, ptr %option, align 8, !dbg !5089
  br label %for.cond, !dbg !5089

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %option, align 8, !dbg !5090
  %list = getelementptr inbounds %struct.pnp_option, ptr %4, i32 0, i32 0, !dbg !5090
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5090
  %options1 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 17, !dbg !5090
  %cmp = icmp eq ptr %list, %options1, !dbg !5090
  %lnot = xor i1 %cmp, true, !dbg !5090
  br i1 %lnot, label %for.body, label %for.end, !dbg !5089

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %prev_option_flags, align 4, !dbg !5091
  %7 = load ptr, ptr %option, align 8, !dbg !5094
  %flags = getelementptr inbounds %struct.pnp_option, ptr %7, i32 0, i32 1, !dbg !5095
  %8 = load i32, ptr %flags, align 8, !dbg !5095
  %cmp2 = icmp ne i32 %6, %8, !dbg !5096
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5097

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %option, align 8, !dbg !5098
  %flags3 = getelementptr inbounds %struct.pnp_option, ptr %9, i32 0, i32 1, !dbg !5100
  %10 = load i32, ptr %flags3, align 8, !dbg !5100
  store i32 %10, ptr %prev_option_flags, align 4, !dbg !5101
  store i32 0, ptr %n, align 4, !dbg !5102
  br label %if.end, !dbg !5103

if.end:                                           ; preds = %if.then, %for.body
  %11 = load ptr, ptr %option, align 8, !dbg !5104
  %call = call i32 @pnp_option_is_dependent(ptr noundef %11) #16, !dbg !5106
  %tobool = icmp ne i32 %call, 0, !dbg !5106
  br i1 %tobool, label %land.lhs.true, label %if.end17, !dbg !5107

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %option, align 8, !dbg !5108
  %type = getelementptr inbounds %struct.pnp_option, ptr %12, i32 0, i32 2, !dbg !5109
  %13 = load i64, ptr %type, align 8, !dbg !5109
  %cmp4 = icmp eq i64 %13, 256, !dbg !5110
  br i1 %cmp4, label %if.then5, label %if.end17, !dbg !5111

if.then5:                                         ; preds = %land.lhs.true
  %14 = load i32, ptr %n, align 4, !dbg !5112
  %inc = add i32 %14, 1, !dbg !5112
  store i32 %inc, ptr %n, align 4, !dbg !5112
  %15 = load ptr, ptr %option, align 8, !dbg !5114
  %u = getelementptr inbounds %struct.pnp_option, ptr %15, i32 0, i32 3, !dbg !5115
  store ptr %u, ptr %port, align 8, !dbg !5116
  %16 = load i32, ptr %n, align 4, !dbg !5117
  %cmp6 = icmp eq i32 %16, 3, !dbg !5119
  br i1 %cmp6, label %land.lhs.true7, label %if.end16, !dbg !5120

land.lhs.true7:                                   ; preds = %if.then5
  %17 = load ptr, ptr %port, align 8, !dbg !5121
  %min = getelementptr inbounds %struct.pnp_port, ptr %17, i32 0, i32 0, !dbg !5122
  %18 = load i64, ptr %min, align 8, !dbg !5122
  %19 = load ptr, ptr %port, align 8, !dbg !5123
  %max = getelementptr inbounds %struct.pnp_port, ptr %19, i32 0, i32 1, !dbg !5124
  %20 = load i64, ptr %max, align 8, !dbg !5124
  %cmp8 = icmp eq i64 %18, %20, !dbg !5125
  br i1 %cmp8, label %if.then9, label %if.end16, !dbg !5126

if.then9:                                         ; preds = %land.lhs.true7
  %21 = load ptr, ptr %port, align 8, !dbg !5127
  %max10 = getelementptr inbounds %struct.pnp_port, ptr %21, i32 0, i32 1, !dbg !5129
  %22 = load i64, ptr %max10, align 8, !dbg !5130
  %add = add i64 %22, 112, !dbg !5130
  store i64 %add, ptr %max10, align 8, !dbg !5130
  br label %do.body, !dbg !5131

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !5133

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5133

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5131
  %dev11 = getelementptr inbounds %struct.pnp_dev, ptr %23, i32 0, i32 0, !dbg !5131
  %24 = load ptr, ptr %port, align 8, !dbg !5131
  %min12 = getelementptr inbounds %struct.pnp_port, ptr %24, i32 0, i32 0, !dbg !5131
  %25 = load i64, ptr %min12, align 8, !dbg !5131
  %26 = load ptr, ptr %port, align 8, !dbg !5131
  %min13 = getelementptr inbounds %struct.pnp_port, ptr %26, i32 0, i32 0, !dbg !5131
  %27 = load i64, ptr %min13, align 8, !dbg !5131
  %28 = load ptr, ptr %port, align 8, !dbg !5131
  %min14 = getelementptr inbounds %struct.pnp_port, ptr %28, i32 0, i32 0, !dbg !5131
  %29 = load i64, ptr %min14, align 8, !dbg !5131
  %30 = load ptr, ptr %port, align 8, !dbg !5131
  %max15 = getelementptr inbounds %struct.pnp_port, ptr %30, i32 0, i32 1, !dbg !5131
  %31 = load i64, ptr %max15, align 8, !dbg !5131
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef @.str.7, i64 noundef %25, i64 noundef %27, i64 noundef %29, i64 noundef %31) #17, !dbg !5131
  br label %if.end16, !dbg !5135

if.end16:                                         ; preds = %do.end, %land.lhs.true7, %if.then5
  br label %if.end17, !dbg !5136

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end
  br label %for.inc, !dbg !5137

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #15, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !5077, metadata !DIExpression()), !dbg !5138
  %32 = load ptr, ptr %option, align 8, !dbg !5138
  %list19 = getelementptr inbounds %struct.pnp_option, ptr %32, i32 0, i32 0, !dbg !5138
  %next20 = getelementptr inbounds %struct.list_head, ptr %list19, i32 0, i32 0, !dbg !5138
  %33 = load ptr, ptr %next20, align 8, !dbg !5138
  store ptr %33, ptr %__mptr18, align 8, !dbg !5138
  %34 = load ptr, ptr %__mptr18, align 8, !dbg !5138
  %add.ptr22 = getelementptr i8, ptr %34, i64 0, !dbg !5138
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !5138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #15, !dbg !5090
  %35 = load ptr, ptr %tmp21, align 8, !dbg !5138
  store ptr %35, ptr %option, align 8, !dbg !5090
  br label %for.cond, !dbg !5090, !llvm.loop !5139

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !5141
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #15, !dbg !5141
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_option_flags) #15, !dbg !5141
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #15, !dbg !5141
  ret void, !dbg !5141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_ad1815_mpu_resources(ptr noundef %dev) #0 align 16 !dbg !5142 {
entry:
  %dev.addr = alloca ptr, align 8
  %option = alloca ptr, align 8
  %irq = alloca ptr, align 8
  %independent_irqs = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5144, metadata !DIExpression()), !dbg !5154
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #15, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %option, metadata !5145, metadata !DIExpression()), !dbg !5156
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #15, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !5146, metadata !DIExpression()), !dbg !5158
  store ptr null, ptr %irq, align 8, !dbg !5158
  call void @llvm.lifetime.start.p0(i64 4, ptr %independent_irqs) #15, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %independent_irqs, metadata !5147, metadata !DIExpression()), !dbg !5160
  store i32 0, ptr %independent_irqs, align 4, !dbg !5160
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5161
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5148, metadata !DIExpression()), !dbg !5161
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5161
  %options = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 17, !dbg !5161
  %next = getelementptr inbounds %struct.list_head, ptr %options, i32 0, i32 0, !dbg !5161
  %1 = load ptr, ptr %next, align 8, !dbg !5161
  store ptr %1, ptr %__mptr, align 8, !dbg !5161
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5161
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5161
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5161
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5162
  %3 = load ptr, ptr %tmp, align 8, !dbg !5161
  store ptr %3, ptr %option, align 8, !dbg !5162
  br label %for.cond, !dbg !5162

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %option, align 8, !dbg !5163
  %list = getelementptr inbounds %struct.pnp_option, ptr %4, i32 0, i32 0, !dbg !5163
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5163
  %options1 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 17, !dbg !5163
  %cmp = icmp eq ptr %list, %options1, !dbg !5163
  %lnot = xor i1 %cmp, true, !dbg !5163
  br i1 %lnot, label %for.body, label %for.end, !dbg !5162

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %option, align 8, !dbg !5164
  %type = getelementptr inbounds %struct.pnp_option, ptr %6, i32 0, i32 2, !dbg !5167
  %7 = load i64, ptr %type, align 8, !dbg !5167
  %cmp2 = icmp eq i64 %7, 1024, !dbg !5168
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !5169

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %option, align 8, !dbg !5170
  %call = call i32 @pnp_option_is_dependent(ptr noundef %8) #16, !dbg !5171
  %tobool = icmp ne i32 %call, 0, !dbg !5171
  br i1 %tobool, label %if.end, label %if.then, !dbg !5172

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, ptr %independent_irqs, align 4, !dbg !5173
  %inc = add i32 %9, 1, !dbg !5173
  store i32 %inc, ptr %independent_irqs, align 4, !dbg !5173
  %10 = load ptr, ptr %option, align 8, !dbg !5175
  %u = getelementptr inbounds %struct.pnp_option, ptr %10, i32 0, i32 3, !dbg !5176
  store ptr %u, ptr %irq, align 8, !dbg !5177
  br label %if.end, !dbg !5178

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5179

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #15, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5151, metadata !DIExpression()), !dbg !5180
  %11 = load ptr, ptr %option, align 8, !dbg !5180
  %list4 = getelementptr inbounds %struct.pnp_option, ptr %11, i32 0, i32 0, !dbg !5180
  %next5 = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !5180
  %12 = load ptr, ptr %next5, align 8, !dbg !5180
  store ptr %12, ptr %__mptr3, align 8, !dbg !5180
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !5180
  %add.ptr7 = getelementptr i8, ptr %13, i64 0, !dbg !5180
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #15, !dbg !5163
  %14 = load ptr, ptr %tmp6, align 8, !dbg !5180
  store ptr %14, ptr %option, align 8, !dbg !5163
  br label %for.cond, !dbg !5163, !llvm.loop !5181

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %independent_irqs, align 4, !dbg !5183
  %cmp8 = icmp ne i32 %15, 1, !dbg !5185
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5186

if.then9:                                         ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5187

if.end10:                                         ; preds = %for.end
  %16 = load ptr, ptr %irq, align 8, !dbg !5188
  %flags = getelementptr inbounds %struct.pnp_irq, ptr %16, i32 0, i32 1, !dbg !5189
  %17 = load i8, ptr %flags, align 8, !dbg !5190
  %conv = zext i8 %17 to i32, !dbg !5190
  %or = or i32 %conv, 32, !dbg !5190
  %conv11 = trunc i32 %or to i8, !dbg !5190
  store i8 %conv11, ptr %flags, align 8, !dbg !5190
  br label %do.body, !dbg !5191

do.body:                                          ; preds = %if.end10
  br label %do.cond, !dbg !5193

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5193

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5191
  %dev12 = getelementptr inbounds %struct.pnp_dev, ptr %18, i32 0, i32 0, !dbg !5191
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef @.str.8) #17, !dbg !5191
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5195
  br label %cleanup, !dbg !5195

cleanup:                                          ; preds = %do.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %independent_irqs) #15, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #15, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #15, !dbg !5195
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5195

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_add_irq_optional_dependent_sets(ptr noundef %dev) #0 align 16 !dbg !5196 {
entry:
  %dev.addr = alloca ptr, align 8
  %new_option = alloca ptr, align 8
  %num_sets = alloca i32, align 4
  %i = alloca i32, align 4
  %set = alloca i32, align 4
  %irq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5198, metadata !DIExpression()), !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_option) #15, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %new_option, metadata !5199, metadata !DIExpression()), !dbg !5212
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sets) #15, !dbg !5213
  call void @llvm.dbg.declare(metadata ptr %num_sets, metadata !5200, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5213
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5201, metadata !DIExpression()), !dbg !5215
  call void @llvm.lifetime.start.p0(i64 4, ptr %set) #15, !dbg !5213
  call void @llvm.dbg.declare(metadata ptr %set, metadata !5202, metadata !DIExpression()), !dbg !5216
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #15, !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !5203, metadata !DIExpression()), !dbg !5218
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5219
  %num_dependent_sets = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 15, !dbg !5220
  %1 = load i32, ptr %num_dependent_sets, align 8, !dbg !5220
  store i32 %1, ptr %num_sets, align 4, !dbg !5221
  store i32 0, ptr %i, align 4, !dbg !5222
  br label %for.cond, !dbg !5223

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5224
  %3 = load i32, ptr %num_sets, align 4, !dbg !5225
  %cmp = icmp ult i32 %2, %3, !dbg !5226
  br i1 %cmp, label %for.body, label %for.end, !dbg !5227

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5228
  %5 = load i32, ptr %i, align 4, !dbg !5229
  %call = call ptr @pnp_clone_dependent_set(ptr noundef %4, i32 noundef %5) #16, !dbg !5230
  store ptr %call, ptr %new_option, align 8, !dbg !5231
  %6 = load ptr, ptr %new_option, align 8, !dbg !5232
  %tobool = icmp ne ptr %6, null, !dbg !5232
  br i1 %tobool, label %if.end, label %if.then, !dbg !5234

if.then:                                          ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5235

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %new_option, align 8, !dbg !5236
  %call1 = call i32 @pnp_option_set(ptr noundef %7) #16, !dbg !5237
  store i32 %call1, ptr %set, align 4, !dbg !5238
  br label %while.cond, !dbg !5239

while.cond:                                       ; preds = %if.end8, %if.end
  %8 = load ptr, ptr %new_option, align 8, !dbg !5240
  %tobool2 = icmp ne ptr %8, null, !dbg !5240
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !5241

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %new_option, align 8, !dbg !5242
  %call3 = call i32 @pnp_option_set(ptr noundef %9) #16, !dbg !5243
  %10 = load i32, ptr %set, align 4, !dbg !5244
  %cmp4 = icmp eq i32 %call3, %10, !dbg !5245
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !5246
  br i1 %11, label %while.body, label %while.end, !dbg !5239

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %new_option, align 8, !dbg !5247
  %type = getelementptr inbounds %struct.pnp_option, ptr %12, i32 0, i32 2, !dbg !5249
  %13 = load i64, ptr %type, align 8, !dbg !5249
  %cmp5 = icmp eq i64 %13, 1024, !dbg !5250
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !5251

if.then6:                                         ; preds = %while.body
  %14 = load ptr, ptr %new_option, align 8, !dbg !5252
  %u = getelementptr inbounds %struct.pnp_option, ptr %14, i32 0, i32 3, !dbg !5254
  store ptr %u, ptr %irq, align 8, !dbg !5255
  %15 = load ptr, ptr %irq, align 8, !dbg !5256
  %flags = getelementptr inbounds %struct.pnp_irq, ptr %15, i32 0, i32 1, !dbg !5257
  %16 = load i8, ptr %flags, align 8, !dbg !5258
  %conv = zext i8 %16 to i32, !dbg !5258
  %or = or i32 %conv, 32, !dbg !5258
  %conv7 = trunc i32 %or to i8, !dbg !5258
  store i8 %conv7, ptr %flags, align 8, !dbg !5258
  br label %if.end8, !dbg !5259

if.end8:                                          ; preds = %if.then6, %while.body
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5260
  %18 = load ptr, ptr %new_option, align 8, !dbg !5261
  call void @dbg_pnp_show_option(ptr noundef %17, ptr noundef %18) #16, !dbg !5262
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5204, metadata !DIExpression()), !dbg !5263
  %19 = load ptr, ptr %new_option, align 8, !dbg !5263
  %list = getelementptr inbounds %struct.pnp_option, ptr %19, i32 0, i32 0, !dbg !5263
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5263
  %20 = load ptr, ptr %next, align 8, !dbg !5263
  store ptr %20, ptr %__mptr, align 8, !dbg !5263
  %21 = load ptr, ptr %__mptr, align 8, !dbg !5263
  %add.ptr = getelementptr i8, ptr %21, i64 0, !dbg !5263
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5264
  %22 = load ptr, ptr %tmp, align 8, !dbg !5263
  store ptr %22, ptr %new_option, align 8, !dbg !5265
  br label %while.cond, !dbg !5239, !llvm.loop !5266

while.end:                                        ; preds = %land.end
  br label %do.body, !dbg !5268

do.body:                                          ; preds = %while.end
  br label %do.cond, !dbg !5270

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5270

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5268
  %dev9 = getelementptr inbounds %struct.pnp_dev, ptr %23, i32 0, i32 0, !dbg !5268
  %24 = load i32, ptr %set, align 4, !dbg !5268
  %25 = load i32, ptr %i, align 4, !dbg !5268
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef @.str.9, i32 noundef %24, i32 noundef %25) #17, !dbg !5268
  br label %for.inc, !dbg !5272

for.inc:                                          ; preds = %do.end
  %26 = load i32, ptr %i, align 4, !dbg !5273
  %inc = add i32 %26, 1, !dbg !5273
  store i32 %inc, ptr %i, align 4, !dbg !5273
  br label %for.cond, !dbg !5274, !llvm.loop !5275

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5277
  br label %cleanup, !dbg !5277

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #15, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 4, ptr %set) #15, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sets) #15, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_option) #15, !dbg !5277
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5277

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_system_pci_resources(ptr noundef %dev) #0 align 16 !dbg !5278 {
entry:
  %dev.addr = alloca ptr, align 8
  %pdev = alloca ptr, align 8
  %res = alloca ptr, align 8
  %r = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %type = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5280, metadata !DIExpression()), !dbg !5574
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #15, !dbg !5575
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !5281, metadata !DIExpression()), !dbg !5576
  store ptr null, ptr %pdev, align 8, !dbg !5576
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5565, metadata !DIExpression()), !dbg !5578
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5566, metadata !DIExpression()), !dbg !5579
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5567, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5568, metadata !DIExpression()), !dbg !5582
  br label %while.cond, !dbg !5583

while.cond:                                       ; preds = %for.end36, %entry
  %0 = load ptr, ptr %pdev, align 8, !dbg !5583
  %call = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %0) #16, !dbg !5583
  store ptr %call, ptr %pdev, align 8, !dbg !5583
  %cmp = icmp ne ptr %call, null, !dbg !5583
  br i1 %cmp, label %while.body, label %while.end, !dbg !5583

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !dbg !5584
  br label %for.cond, !dbg !5584

for.cond:                                         ; preds = %for.inc34, %while.body
  %1 = load i32, ptr %i, align 4, !dbg !5585
  %cmp1 = icmp slt i32 %1, 11, !dbg !5585
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5585

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pdev, align 8, !dbg !5585
  %resource = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 40, !dbg !5585
  %3 = load i32, ptr %i, align 4, !dbg !5585
  %idxprom = sext i32 %3 to i64, !dbg !5585
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5585
  store ptr %arrayidx, ptr %r, align 8, !dbg !5585
  %tobool = icmp ne ptr %arrayidx, null, !dbg !5585
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !5586
  br i1 %4, label %for.body, label %for.end36, !dbg !5584

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #15, !dbg !5587
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5569, metadata !DIExpression()), !dbg !5588
  %5 = load ptr, ptr %r, align 8, !dbg !5589
  %call2 = call i64 @resource_type(ptr noundef %5) #16, !dbg !5590
  store i64 %call2, ptr %type, align 8, !dbg !5588
  %6 = load i64, ptr %type, align 8, !dbg !5591
  %cmp3 = icmp eq i64 %6, 256, !dbg !5593
  br i1 %cmp3, label %lor.lhs.false5, label %lor.lhs.false, !dbg !5594

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i64, ptr %type, align 8, !dbg !5595
  %cmp4 = icmp eq i64 %7, 512, !dbg !5596
  br i1 %cmp4, label %lor.lhs.false5, label %if.then, !dbg !5597

lor.lhs.false5:                                   ; preds = %lor.lhs.false, %for.body
  %8 = load ptr, ptr %r, align 8, !dbg !5598
  %call6 = call i64 @resource_size(ptr noundef %8) #16, !dbg !5599
  %cmp7 = icmp eq i64 %call6, 0, !dbg !5600
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5601

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5602

if.end:                                           ; preds = %lor.lhs.false5
  %9 = load ptr, ptr %r, align 8, !dbg !5603
  %flags = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3, !dbg !5605
  %10 = load i64, ptr %flags, align 8, !dbg !5605
  %and = and i64 %10, 536870912, !dbg !5606
  %tobool8 = icmp ne i64 %and, 0, !dbg !5606
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5607

if.then9:                                         ; preds = %if.end
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5608

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %j, align 4, !dbg !5609
  br label %for.cond11, !dbg !5611

for.cond11:                                       ; preds = %for.inc, %if.end10
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5612
  %12 = load i64, ptr %type, align 8, !dbg !5614
  %13 = load i32, ptr %j, align 4, !dbg !5615
  %call12 = call ptr @pnp_get_resource(ptr noundef %11, i64 noundef %12, i32 noundef %13) #16, !dbg !5616
  store ptr %call12, ptr %res, align 8, !dbg !5617
  %tobool13 = icmp ne ptr %call12, null, !dbg !5618
  br i1 %tobool13, label %for.body14, label %for.end, !dbg !5618

for.body14:                                       ; preds = %for.cond11
  %14 = load ptr, ptr %res, align 8, !dbg !5619
  %start = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 0, !dbg !5622
  %15 = load i64, ptr %start, align 8, !dbg !5622
  %cmp15 = icmp eq i64 %15, 0, !dbg !5623
  br i1 %cmp15, label %land.lhs.true, label %if.end18, !dbg !5624

land.lhs.true:                                    ; preds = %for.body14
  %16 = load ptr, ptr %res, align 8, !dbg !5625
  %end = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1, !dbg !5626
  %17 = load i64, ptr %end, align 8, !dbg !5626
  %cmp16 = icmp eq i64 %17, 0, !dbg !5627
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !5628

if.then17:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !5629

if.end18:                                         ; preds = %land.lhs.true, %for.body14
  %18 = load ptr, ptr %res, align 8, !dbg !5630
  %19 = load ptr, ptr %r, align 8, !dbg !5632
  %call19 = call zeroext i1 @resource_overlaps(ptr noundef %18, ptr noundef %19) #16, !dbg !5633
  br i1 %call19, label %if.end21, label %if.then20, !dbg !5634

if.then20:                                        ; preds = %if.end18
  br label %for.inc, !dbg !5635

if.end21:                                         ; preds = %if.end18
  %20 = load ptr, ptr %res, align 8, !dbg !5636
  %start22 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 0, !dbg !5638
  %21 = load i64, ptr %start22, align 8, !dbg !5638
  %22 = load ptr, ptr %r, align 8, !dbg !5639
  %start23 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 0, !dbg !5640
  %23 = load i64, ptr %start23, align 8, !dbg !5640
  %cmp24 = icmp ule i64 %21, %23, !dbg !5641
  br i1 %cmp24, label %land.lhs.true25, label %if.end30, !dbg !5642

land.lhs.true25:                                  ; preds = %if.end21
  %24 = load ptr, ptr %res, align 8, !dbg !5643
  %end26 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 1, !dbg !5644
  %25 = load i64, ptr %end26, align 8, !dbg !5644
  %26 = load ptr, ptr %r, align 8, !dbg !5645
  %end27 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 1, !dbg !5646
  %27 = load i64, ptr %end27, align 8, !dbg !5646
  %cmp28 = icmp uge i64 %25, %27, !dbg !5647
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !5648

if.then29:                                        ; preds = %land.lhs.true25
  br label %for.inc, !dbg !5649

if.end30:                                         ; preds = %land.lhs.true25, %if.end21
  br label %do.body, !dbg !5650

do.body:                                          ; preds = %if.end30
  br label %do.cond, !dbg !5652

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5652

do.end:                                           ; preds = %do.cond
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5650
  %dev31 = getelementptr inbounds %struct.pnp_dev, ptr %28, i32 0, i32 0, !dbg !5650
  %29 = load ptr, ptr %res, align 8, !dbg !5650
  %30 = load ptr, ptr %pdev, align 8, !dbg !5650
  %call32 = call ptr @pci_name(ptr noundef %30) #16, !dbg !5650
  %31 = load i32, ptr %i, align 4, !dbg !5650
  %32 = load ptr, ptr %r, align 8, !dbg !5650
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef @.str.13, ptr noundef %29, ptr noundef %call32, i32 noundef %31, ptr noundef %32) #17, !dbg !5650
  %33 = load ptr, ptr %res, align 8, !dbg !5654
  %flags33 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 3, !dbg !5655
  %34 = load i64, ptr %flags33, align 8, !dbg !5656
  %or = or i64 %34, 268435456, !dbg !5656
  store i64 %or, ptr %flags33, align 8, !dbg !5656
  br label %for.inc, !dbg !5657

for.inc:                                          ; preds = %do.end, %if.then29, %if.then20, %if.then17
  %35 = load i32, ptr %j, align 4, !dbg !5658
  %inc = add i32 %35, 1, !dbg !5658
  store i32 %inc, ptr %j, align 4, !dbg !5658
  br label %for.cond11, !dbg !5659, !llvm.loop !5660

for.end:                                          ; preds = %for.cond11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5662
  br label %cleanup, !dbg !5662

cleanup:                                          ; preds = %for.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #15, !dbg !5662
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc34
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc34, !dbg !5663

for.inc34:                                        ; preds = %cleanup.cont, %cleanup
  %36 = load i32, ptr %i, align 4, !dbg !5585
  %inc35 = add i32 %36, 1, !dbg !5585
  store i32 %inc35, ptr %i, align 4, !dbg !5585
  br label %for.cond, !dbg !5585, !llvm.loop !5664

for.end36:                                        ; preds = %land.end
  br label %while.cond, !dbg !5583, !llvm.loop !5666

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #15, !dbg !5668
  ret void, !dbg !5668

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_amd_mmconfig_area(ptr noundef %dev) #0 align 16 !dbg !5669 {
entry:
  %dev.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %pnp_res = alloca ptr, align 8
  %res = alloca ptr, align 8
  %mmconfig_res = alloca %struct.resource, align 8
  %mmconfig = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr35 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5671, metadata !DIExpression()), !dbg !5684
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5672, metadata !DIExpression()), !dbg !5686
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5673, metadata !DIExpression()), !dbg !5687
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_res) #15, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %pnp_res, metadata !5674, metadata !DIExpression()), !dbg !5689
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5675, metadata !DIExpression()), !dbg !5691
  call void @llvm.lifetime.start.p0(i64 64, ptr %mmconfig_res) #15, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %mmconfig_res, metadata !5676, metadata !DIExpression()), !dbg !5693
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmconfig) #15, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %mmconfig, metadata !5677, metadata !DIExpression()), !dbg !5694
  %call = call ptr @amd_get_mmconfig_range(ptr noundef %mmconfig_res) #16, !dbg !5695
  store ptr %call, ptr %mmconfig, align 8, !dbg !5696
  %0 = load ptr, ptr %mmconfig, align 8, !dbg !5697
  %tobool = icmp ne ptr %0, null, !dbg !5697
  br i1 %tobool, label %if.end, label %if.then, !dbg !5699

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5700

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5678, metadata !DIExpression()), !dbg !5701
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5701
  %resources = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 16, !dbg !5701
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5701
  %2 = load ptr, ptr %next, align 8, !dbg !5701
  store ptr %2, ptr %__mptr, align 8, !dbg !5701
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5701
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5701
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5702
  %4 = load ptr, ptr %tmp, align 8, !dbg !5701
  store ptr %4, ptr %pnp_res, align 8, !dbg !5702
  br label %for.cond, !dbg !5702

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %pnp_res, align 8, !dbg !5703
  %list = getelementptr inbounds %struct.pnp_resource, ptr %5, i32 0, i32 0, !dbg !5703
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5703
  %resources1 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 16, !dbg !5703
  %cmp = icmp eq ptr %list, %resources1, !dbg !5703
  %lnot = xor i1 %cmp, true, !dbg !5703
  br i1 %lnot, label %for.body, label %for.end, !dbg !5702

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pnp_res, align 8, !dbg !5704
  %res2 = getelementptr inbounds %struct.pnp_resource, ptr %7, i32 0, i32 1, !dbg !5706
  store ptr %res2, ptr %res, align 8, !dbg !5707
  %8 = load ptr, ptr %res, align 8, !dbg !5708
  %end3 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1, !dbg !5710
  %9 = load i64, ptr %end3, align 8, !dbg !5710
  %10 = load ptr, ptr %mmconfig, align 8, !dbg !5711
  %start4 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 0, !dbg !5712
  %11 = load i64, ptr %start4, align 8, !dbg !5712
  %cmp5 = icmp ult i64 %9, %11, !dbg !5713
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !5714

lor.lhs.false:                                    ; preds = %for.body
  %12 = load ptr, ptr %res, align 8, !dbg !5715
  %start6 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 0, !dbg !5716
  %13 = load i64, ptr %start6, align 8, !dbg !5716
  %14 = load ptr, ptr %mmconfig, align 8, !dbg !5717
  %end7 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 1, !dbg !5718
  %15 = load i64, ptr %end7, align 8, !dbg !5718
  %cmp8 = icmp ugt i64 %13, %15, !dbg !5719
  br i1 %cmp8, label %if.then16, label %lor.lhs.false9, !dbg !5720

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %16 = load ptr, ptr %res, align 8, !dbg !5721
  %start10 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 0, !dbg !5722
  %17 = load i64, ptr %start10, align 8, !dbg !5722
  %18 = load ptr, ptr %mmconfig, align 8, !dbg !5723
  %start11 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 0, !dbg !5724
  %19 = load i64, ptr %start11, align 8, !dbg !5724
  %cmp12 = icmp eq i64 %17, %19, !dbg !5725
  br i1 %cmp12, label %land.lhs.true, label %if.end17, !dbg !5726

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %20 = load ptr, ptr %res, align 8, !dbg !5727
  %end13 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1, !dbg !5728
  %21 = load i64, ptr %end13, align 8, !dbg !5728
  %22 = load ptr, ptr %mmconfig, align 8, !dbg !5729
  %end14 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1, !dbg !5730
  %23 = load i64, ptr %end14, align 8, !dbg !5730
  %cmp15 = icmp eq i64 %21, %23, !dbg !5731
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5732

if.then16:                                        ; preds = %land.lhs.true, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5733

if.end17:                                         ; preds = %land.lhs.true, %lor.lhs.false9
  br label %do.body, !dbg !5734

do.body:                                          ; preds = %if.end17
  br label %do.cond, !dbg !5736

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5736

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5734
  %dev18 = getelementptr inbounds %struct.pnp_dev, ptr %24, i32 0, i32 0, !dbg !5734
  %25 = load ptr, ptr %res, align 8, !dbg !5734
  %26 = load ptr, ptr %mmconfig, align 8, !dbg !5734
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef @.str.14, ptr noundef %25, ptr noundef %26) #17, !dbg !5734
  %27 = load ptr, ptr %mmconfig, align 8, !dbg !5738
  %start19 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 0, !dbg !5740
  %28 = load i64, ptr %start19, align 8, !dbg !5740
  %29 = load ptr, ptr %res, align 8, !dbg !5741
  %start20 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 0, !dbg !5742
  %30 = load i64, ptr %start20, align 8, !dbg !5742
  %cmp21 = icmp ult i64 %28, %30, !dbg !5743
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !5744

if.then22:                                        ; preds = %do.end
  %31 = load ptr, ptr %mmconfig, align 8, !dbg !5745
  %start23 = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 0, !dbg !5747
  %32 = load i64, ptr %start23, align 8, !dbg !5747
  store i64 %32, ptr %start, align 8, !dbg !5748
  %33 = load ptr, ptr %res, align 8, !dbg !5749
  %start24 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 0, !dbg !5750
  %34 = load i64, ptr %start24, align 8, !dbg !5750
  %sub = sub i64 %34, 1, !dbg !5751
  store i64 %sub, ptr %end, align 8, !dbg !5752
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !5753
  %36 = load i64, ptr %start, align 8, !dbg !5754
  %37 = load i64, ptr %end, align 8, !dbg !5755
  %call25 = call ptr @pnp_add_mem_resource(ptr noundef %35, i64 noundef %36, i64 noundef %37, i32 noundef 0) #16, !dbg !5756
  br label %if.end26, !dbg !5757

if.end26:                                         ; preds = %if.then22, %do.end
  %38 = load ptr, ptr %mmconfig, align 8, !dbg !5758
  %end27 = getelementptr inbounds %struct.resource, ptr %38, i32 0, i32 1, !dbg !5760
  %39 = load i64, ptr %end27, align 8, !dbg !5760
  %40 = load ptr, ptr %res, align 8, !dbg !5761
  %end28 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 1, !dbg !5762
  %41 = load i64, ptr %end28, align 8, !dbg !5762
  %cmp29 = icmp ugt i64 %39, %41, !dbg !5763
  br i1 %cmp29, label %if.then30, label %if.end34, !dbg !5764

if.then30:                                        ; preds = %if.end26
  %42 = load ptr, ptr %res, align 8, !dbg !5765
  %end31 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 1, !dbg !5767
  %43 = load i64, ptr %end31, align 8, !dbg !5767
  %add = add i64 %43, 1, !dbg !5768
  store i64 %add, ptr %start, align 8, !dbg !5769
  %44 = load ptr, ptr %mmconfig, align 8, !dbg !5770
  %end32 = getelementptr inbounds %struct.resource, ptr %44, i32 0, i32 1, !dbg !5771
  %45 = load i64, ptr %end32, align 8, !dbg !5771
  store i64 %45, ptr %end, align 8, !dbg !5772
  %46 = load ptr, ptr %dev.addr, align 8, !dbg !5773
  %47 = load i64, ptr %start, align 8, !dbg !5774
  %48 = load i64, ptr %end, align 8, !dbg !5775
  %call33 = call ptr @pnp_add_mem_resource(ptr noundef %46, i64 noundef %47, i64 noundef %48, i32 noundef 0) #16, !dbg !5776
  br label %if.end34, !dbg !5777

if.end34:                                         ; preds = %if.then30, %if.end26
  br label %for.end, !dbg !5778

for.inc:                                          ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr35) #15, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %__mptr35, metadata !5681, metadata !DIExpression()), !dbg !5779
  %49 = load ptr, ptr %pnp_res, align 8, !dbg !5779
  %list36 = getelementptr inbounds %struct.pnp_resource, ptr %49, i32 0, i32 0, !dbg !5779
  %next37 = getelementptr inbounds %struct.list_head, ptr %list36, i32 0, i32 0, !dbg !5779
  %50 = load ptr, ptr %next37, align 8, !dbg !5779
  store ptr %50, ptr %__mptr35, align 8, !dbg !5779
  %51 = load ptr, ptr %__mptr35, align 8, !dbg !5779
  %add.ptr39 = getelementptr i8, ptr %51, i64 0, !dbg !5779
  store ptr %add.ptr39, ptr %tmp38, align 8, !dbg !5779
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr35) #15, !dbg !5703
  %52 = load ptr, ptr %tmp38, align 8, !dbg !5779
  store ptr %52, ptr %pnp_res, align 8, !dbg !5703
  br label %for.cond, !dbg !5703, !llvm.loop !5780

for.end:                                          ; preds = %if.end34, %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5782
  br label %cleanup, !dbg !5782

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmconfig) #15, !dbg !5782
  call void @llvm.lifetime.end.p0(i64 64, ptr %mmconfig_res) #15, !dbg !5782
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !5782
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_res) #15, !dbg !5782
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !5782
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !5782
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5782

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_intel_mch(ptr noundef %dev) #0 align 16 !dbg !5783 {
entry:
  %dev.addr = alloca ptr, align 8
  %host = alloca ptr, align 8
  %addr_lo = alloca i32, align 4
  %addr_hi = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  %mch = alloca %struct.resource, align 8
  %pnp_res = alloca ptr, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr35 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5785, metadata !DIExpression()), !dbg !5804
  call void @llvm.lifetime.start.p0(i64 8, ptr %host) #15, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %host, metadata !5786, metadata !DIExpression()), !dbg !5806
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr_lo) #15, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %addr_lo, metadata !5787, metadata !DIExpression()), !dbg !5808
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr_hi) #15, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %addr_hi, metadata !5788, metadata !DIExpression()), !dbg !5809
  call void @llvm.lifetime.start.p0(i64 16, ptr %region) #15, !dbg !5810
  call void @llvm.dbg.declare(metadata ptr %region, metadata !5789, metadata !DIExpression()), !dbg !5811
  call void @llvm.lifetime.start.p0(i64 64, ptr %mch) #15, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %mch, metadata !5795, metadata !DIExpression()), !dbg !5813
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_res) #15, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %pnp_res, metadata !5796, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5797, metadata !DIExpression()), !dbg !5817
  %call = call ptr @get_intel_host() #16, !dbg !5818
  store ptr %call, ptr %host, align 8, !dbg !5819
  %0 = load ptr, ptr %host, align 8, !dbg !5820
  %tobool = icmp ne ptr %0, null, !dbg !5820
  br i1 %tobool, label %if.end, label %if.then, !dbg !5822

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5823

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %host, align 8, !dbg !5824
  %call1 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 72, ptr noundef %addr_lo) #16, !dbg !5825
  %2 = load i32, ptr %addr_lo, align 4, !dbg !5826
  %and = and i32 %2, -32768, !dbg !5827
  %conv = zext i32 %and to i64, !dbg !5826
  %start = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 0, !dbg !5828
  store i64 %conv, ptr %start, align 8, !dbg !5829
  %3 = load ptr, ptr %host, align 8, !dbg !5830
  %call2 = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef 76, ptr noundef %addr_hi) #16, !dbg !5831
  %4 = load i32, ptr %addr_hi, align 4, !dbg !5832
  %conv3 = zext i32 %4 to i64, !dbg !5833
  %shl = shl i64 %conv3, 32, !dbg !5834
  %start4 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 0, !dbg !5835
  %5 = load i64, ptr %start4, align 8, !dbg !5836
  %or = or i64 %5, %shl, !dbg !5836
  store i64 %or, ptr %start4, align 8, !dbg !5836
  %start5 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 0, !dbg !5837
  %6 = load i64, ptr %start5, align 8, !dbg !5837
  %add = add i64 %6, 32768, !dbg !5838
  %sub = sub i64 %add, 1, !dbg !5839
  %end = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1, !dbg !5840
  store i64 %sub, ptr %end, align 8, !dbg !5841
  call void @llvm.memset.p0.i64(ptr align 8 %mch, i8 0, i64 64, i1 false), !dbg !5842
  %flags = getelementptr inbounds %struct.resource, ptr %mch, i32 0, i32 3, !dbg !5843
  store i64 512, ptr %flags, align 8, !dbg !5844
  %7 = load ptr, ptr %host, align 8, !dbg !5845
  %bus = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1, !dbg !5846
  %8 = load ptr, ptr %bus, align 8, !dbg !5846
  call void @pcibios_bus_to_resource(ptr noundef %8, ptr noundef %mch, ptr noundef %region) #16, !dbg !5847
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5848
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5798, metadata !DIExpression()), !dbg !5848
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5848
  %resources = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 16, !dbg !5848
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5848
  %10 = load ptr, ptr %next, align 8, !dbg !5848
  store ptr %10, ptr %__mptr, align 8, !dbg !5848
  %11 = load ptr, ptr %__mptr, align 8, !dbg !5848
  %add.ptr = getelementptr i8, ptr %11, i64 0, !dbg !5848
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5849
  %12 = load ptr, ptr %tmp, align 8, !dbg !5848
  store ptr %12, ptr %pnp_res, align 8, !dbg !5849
  br label %for.cond, !dbg !5849

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load ptr, ptr %pnp_res, align 8, !dbg !5850
  %list = getelementptr inbounds %struct.pnp_resource, ptr %13, i32 0, i32 0, !dbg !5850
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5850
  %resources6 = getelementptr inbounds %struct.pnp_dev, ptr %14, i32 0, i32 16, !dbg !5850
  %cmp = icmp eq ptr %list, %resources6, !dbg !5850
  %lnot = xor i1 %cmp, true, !dbg !5850
  br i1 %lnot, label %for.body, label %for.end, !dbg !5849

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pnp_res, align 8, !dbg !5851
  %res8 = getelementptr inbounds %struct.pnp_resource, ptr %15, i32 0, i32 1, !dbg !5853
  store ptr %res8, ptr %res, align 8, !dbg !5854
  %16 = load ptr, ptr %res, align 8, !dbg !5855
  %end9 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1, !dbg !5857
  %17 = load i64, ptr %end9, align 8, !dbg !5857
  %start10 = getelementptr inbounds %struct.resource, ptr %mch, i32 0, i32 0, !dbg !5858
  %18 = load i64, ptr %start10, align 8, !dbg !5858
  %cmp11 = icmp ult i64 %17, %18, !dbg !5859
  br i1 %cmp11, label %if.then17, label %lor.lhs.false, !dbg !5860

lor.lhs.false:                                    ; preds = %for.body
  %19 = load ptr, ptr %res, align 8, !dbg !5861
  %start13 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 0, !dbg !5862
  %20 = load i64, ptr %start13, align 8, !dbg !5862
  %end14 = getelementptr inbounds %struct.resource, ptr %mch, i32 0, i32 1, !dbg !5863
  %21 = load i64, ptr %end14, align 8, !dbg !5863
  %cmp15 = icmp ugt i64 %20, %21, !dbg !5864
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !5865

if.then17:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5866

if.end18:                                         ; preds = %lor.lhs.false
  %22 = load ptr, ptr %res, align 8, !dbg !5867
  %start19 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 0, !dbg !5869
  %23 = load i64, ptr %start19, align 8, !dbg !5869
  %start20 = getelementptr inbounds %struct.resource, ptr %mch, i32 0, i32 0, !dbg !5870
  %24 = load i64, ptr %start20, align 8, !dbg !5870
  %cmp21 = icmp eq i64 %23, %24, !dbg !5871
  br i1 %cmp21, label %land.lhs.true, label %if.end28, !dbg !5872

land.lhs.true:                                    ; preds = %if.end18
  %25 = load ptr, ptr %res, align 8, !dbg !5873
  %end23 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1, !dbg !5874
  %26 = load i64, ptr %end23, align 8, !dbg !5874
  %end24 = getelementptr inbounds %struct.resource, ptr %mch, i32 0, i32 1, !dbg !5875
  %27 = load i64, ptr %end24, align 8, !dbg !5875
  %cmp25 = icmp eq i64 %26, %27, !dbg !5876
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5877

if.then27:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !5878

if.end28:                                         ; preds = %land.lhs.true, %if.end18
  br label %do.body, !dbg !5879

do.body:                                          ; preds = %if.end28
  br label %do.cond, !dbg !5881

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5881

do.end:                                           ; preds = %do.cond
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5879
  %dev29 = getelementptr inbounds %struct.pnp_dev, ptr %28, i32 0, i32 0, !dbg !5879
  %29 = load ptr, ptr %res, align 8, !dbg !5879
  %30 = load ptr, ptr %host, align 8, !dbg !5879
  %call30 = call ptr @pci_name(ptr noundef %30) #16, !dbg !5879
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef @.str.15, ptr noundef %29, ptr noundef %call30, ptr noundef %mch) #17, !dbg !5879
  %start31 = getelementptr inbounds %struct.resource, ptr %mch, i32 0, i32 0, !dbg !5883
  %31 = load i64, ptr %start31, align 8, !dbg !5883
  %32 = load ptr, ptr %res, align 8, !dbg !5884
  %start32 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 0, !dbg !5885
  store i64 %31, ptr %start32, align 8, !dbg !5886
  %end33 = getelementptr inbounds %struct.resource, ptr %mch, i32 0, i32 1, !dbg !5887
  %33 = load i64, ptr %end33, align 8, !dbg !5887
  %34 = load ptr, ptr %res, align 8, !dbg !5888
  %end34 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 1, !dbg !5889
  store i64 %33, ptr %end34, align 8, !dbg !5890
  br label %for.end, !dbg !5891

for.inc:                                          ; preds = %if.then27, %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr35) #15, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %__mptr35, metadata !5801, metadata !DIExpression()), !dbg !5892
  %35 = load ptr, ptr %pnp_res, align 8, !dbg !5892
  %list36 = getelementptr inbounds %struct.pnp_resource, ptr %35, i32 0, i32 0, !dbg !5892
  %next37 = getelementptr inbounds %struct.list_head, ptr %list36, i32 0, i32 0, !dbg !5892
  %36 = load ptr, ptr %next37, align 8, !dbg !5892
  store ptr %36, ptr %__mptr35, align 8, !dbg !5892
  %37 = load ptr, ptr %__mptr35, align 8, !dbg !5892
  %add.ptr39 = getelementptr i8, ptr %37, i64 0, !dbg !5892
  store ptr %add.ptr39, ptr %tmp38, align 8, !dbg !5892
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr35) #15, !dbg !5850
  %38 = load ptr, ptr %tmp38, align 8, !dbg !5892
  store ptr %38, ptr %pnp_res, align 8, !dbg !5850
  br label %for.cond, !dbg !5850, !llvm.loop !5893

for.end:                                          ; preds = %do.end, %for.cond
  %39 = load ptr, ptr %host, align 8, !dbg !5895
  call void @pci_dev_put(ptr noundef %39) #16, !dbg !5896
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5897
  br label %cleanup, !dbg !5897

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_res) #15, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 64, ptr %mch) #15, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 16, ptr %region) #15, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr_hi) #15, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr_lo) #15, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 8, ptr %host) #15, !dbg !5897
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5897

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_is_dependent(ptr noundef %option) #5 align 16 !dbg !5898 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  %0 = load ptr, ptr %option.addr, align 8, !dbg !5904
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !5905
  %1 = load i32, ptr %flags, align 8, !dbg !5905
  %and = and i32 %1, -2147483648, !dbg !5906
  %tobool = icmp ne i32 %and, 0, !dbg !5904
  %2 = zext i1 %tobool to i64, !dbg !5904
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5904
  ret i32 %cond, !dbg !5907
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_set(ptr noundef %option) #5 align 16 !dbg !5908 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  %0 = load ptr, ptr %option.addr, align 8, !dbg !5914
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !5915
  %1 = load i32, ptr %flags, align 8, !dbg !5915
  %shr = lshr i32 %1, 12, !dbg !5916
  %and = and i32 %shr, 65535, !dbg !5917
  ret i32 %and, !dbg !5918
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_awe32_add_ports(ptr noundef %dev, ptr noundef %option, i32 noundef %offset) #0 align 16 !dbg !5919 {
entry:
  %dev.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %new_option = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5923, metadata !DIExpression()), !dbg !5927
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !5924, metadata !DIExpression()), !dbg !5928
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5925, metadata !DIExpression()), !dbg !5929
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_option) #15, !dbg !5930
  call void @llvm.dbg.declare(metadata ptr %new_option, metadata !5926, metadata !DIExpression()), !dbg !5931
  %call = call noalias ptr @kmalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !5932
  store ptr %call, ptr %new_option, align 8, !dbg !5933
  %0 = load ptr, ptr %new_option, align 8, !dbg !5934
  %tobool = icmp ne ptr %0, null, !dbg !5934
  br i1 %tobool, label %if.end, label %if.then, !dbg !5936

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5937

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5940

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5940

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5937
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 0, !dbg !5937
  %2 = load ptr, ptr %option.addr, align 8, !dbg !5937
  %call2 = call i32 @pnp_option_set(ptr noundef %2) #16, !dbg !5937
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef @.str.2, i32 noundef %call2) #17, !dbg !5937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5942

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new_option, align 8, !dbg !5943
  %4 = load ptr, ptr %option.addr, align 8, !dbg !5944
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 72, i1 false), !dbg !5945
  %5 = load i32, ptr %offset.addr, align 4, !dbg !5946
  %conv = zext i32 %5 to i64, !dbg !5946
  %6 = load ptr, ptr %new_option, align 8, !dbg !5947
  %u = getelementptr inbounds %struct.pnp_option, ptr %6, i32 0, i32 3, !dbg !5948
  %min = getelementptr inbounds %struct.pnp_port, ptr %u, i32 0, i32 0, !dbg !5949
  %7 = load i64, ptr %min, align 8, !dbg !5950
  %add = add i64 %7, %conv, !dbg !5950
  store i64 %add, ptr %min, align 8, !dbg !5950
  %8 = load i32, ptr %offset.addr, align 4, !dbg !5951
  %conv3 = zext i32 %8 to i64, !dbg !5951
  %9 = load ptr, ptr %new_option, align 8, !dbg !5952
  %u4 = getelementptr inbounds %struct.pnp_option, ptr %9, i32 0, i32 3, !dbg !5953
  %max = getelementptr inbounds %struct.pnp_port, ptr %u4, i32 0, i32 1, !dbg !5954
  %10 = load i64, ptr %max, align 8, !dbg !5955
  %add5 = add i64 %10, %conv3, !dbg !5955
  store i64 %add5, ptr %max, align 8, !dbg !5955
  %11 = load ptr, ptr %new_option, align 8, !dbg !5956
  %list = getelementptr inbounds %struct.pnp_option, ptr %11, i32 0, i32 0, !dbg !5957
  %12 = load ptr, ptr %option.addr, align 8, !dbg !5958
  %list6 = getelementptr inbounds %struct.pnp_option, ptr %12, i32 0, i32 0, !dbg !5959
  call void @list_add(ptr noundef %list, ptr noundef %list6) #16, !dbg !5960
  br label %do.body7, !dbg !5961

do.body7:                                         ; preds = %if.end
  br label %do.cond8, !dbg !5963

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5963

do.end9:                                          ; preds = %do.cond8
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5961
  %dev10 = getelementptr inbounds %struct.pnp_dev, ptr %13, i32 0, i32 0, !dbg !5961
  %14 = load ptr, ptr %new_option, align 8, !dbg !5961
  %u11 = getelementptr inbounds %struct.pnp_option, ptr %14, i32 0, i32 3, !dbg !5961
  %min12 = getelementptr inbounds %struct.pnp_port, ptr %u11, i32 0, i32 0, !dbg !5961
  %15 = load i64, ptr %min12, align 8, !dbg !5961
  %16 = load ptr, ptr %new_option, align 8, !dbg !5961
  %u13 = getelementptr inbounds %struct.pnp_option, ptr %16, i32 0, i32 3, !dbg !5961
  %max14 = getelementptr inbounds %struct.pnp_port, ptr %u13, i32 0, i32 1, !dbg !5961
  %17 = load i64, ptr %max14, align 8, !dbg !5961
  %18 = load ptr, ptr %option.addr, align 8, !dbg !5961
  %call15 = call i32 @pnp_option_set(ptr noundef %18) #16, !dbg !5961
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef @.str.3, i64 noundef %15, i64 noundef %17, i32 noundef %call15) #17, !dbg !5961
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5965
  br label %cleanup, !dbg !5965

cleanup:                                          ; preds = %do.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_option) #15, !dbg !5965
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5965

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5966 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5970, metadata !DIExpression()), !dbg !5975
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5971, metadata !DIExpression()), !dbg !5976
  %0 = load i64, ptr %size.addr, align 8, !dbg !5977
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5978
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5979

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5980
  %tobool = icmp ne i64 %2, 0, !dbg !5980
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5981

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5972, metadata !DIExpression()), !dbg !5983
  %3 = load i64, ptr %size.addr, align 8, !dbg !5984
  %cmp = icmp ugt i64 %3, 8192, !dbg !5986
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5987

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5988
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5989
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5990
  store ptr %call, ptr %retval, align 8, !dbg !5991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5991

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5992
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5992
  store i32 %call2, ptr %index, align 4, !dbg !5993
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5994
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5995
  %9 = ptrtoint ptr %8 to i64, !dbg !5995
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5996
  %idxprom = zext i32 %call3 to i64, !dbg !5997
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5997
  %10 = load i32, ptr %index, align 4, !dbg !5998
  %idxprom4 = zext i32 %10 to i64, !dbg !5997
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5997
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5997
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5999
  %13 = load i64, ptr %size.addr, align 8, !dbg !6000
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6001
  store ptr %call6, ptr %retval, align 8, !dbg !6002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6002

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6003
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6004
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6005
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6006
  store ptr %call8, ptr %retval, align 8, !dbg !6007
  br label %return, !dbg !6007

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6008
  ret ptr %16, !dbg !6008
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6009 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6012 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6017, metadata !DIExpression()), !dbg !6019
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6018, metadata !DIExpression()), !dbg !6020
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6021
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6022
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6023
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6024
  %3 = load ptr, ptr %next, align 8, !dbg !6024
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !6025
  ret void, !dbg !6026
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6027 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6028 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6029 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6033, metadata !DIExpression()), !dbg !6035
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6034, metadata !DIExpression()), !dbg !6036
  %0 = load i64, ptr %size.addr, align 8, !dbg !6037
  %tobool = icmp ne i64 %0, 0, !dbg !6037
  br i1 %tobool, label %if.end, label %if.then, !dbg !6039

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6040
  br label %return, !dbg !6040

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6041
  %cmp = icmp ule i64 %1, 8, !dbg !6043
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6044

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6045
  br label %return, !dbg !6045

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6046
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6048
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6049

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6050
  %cmp4 = icmp ule i64 %3, 96, !dbg !6051
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6052

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6053
  br label %return, !dbg !6053

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6054
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6056
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6057

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6058
  %cmp9 = icmp ule i64 %5, 192, !dbg !6059
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6060

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6061
  br label %return, !dbg !6061

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6062
  %cmp12 = icmp ule i64 %6, 8, !dbg !6064
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6065

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6066
  br label %return, !dbg !6066

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6067
  %cmp15 = icmp ule i64 %7, 16, !dbg !6069
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6070

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6072
  %cmp18 = icmp ule i64 %8, 32, !dbg !6074
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6075

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6076
  br label %return, !dbg !6076

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6077
  %cmp21 = icmp ule i64 %9, 64, !dbg !6079
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6080

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6081
  br label %return, !dbg !6081

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6082
  %cmp24 = icmp ule i64 %10, 128, !dbg !6084
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6085

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6086
  br label %return, !dbg !6086

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6087
  %cmp27 = icmp ule i64 %11, 256, !dbg !6089
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6090

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6091
  br label %return, !dbg !6091

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6092
  %cmp30 = icmp ule i64 %12, 512, !dbg !6094
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6095

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6096
  br label %return, !dbg !6096

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6097
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6099
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6100

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6101
  br label %return, !dbg !6101

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6102
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6104
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6105

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6106
  br label %return, !dbg !6106

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6107
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6109
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6110

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6112
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6114
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6115

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6116
  br label %return, !dbg !6116

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6117
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6119
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6120

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6121
  br label %return, !dbg !6121

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6122
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6124
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6125

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6127
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6129
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6130

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6131
  br label %return, !dbg !6131

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6132
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6134
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6135

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6136
  br label %return, !dbg !6136

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6137
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6139
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6140

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6141
  br label %return, !dbg !6141

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6142
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6144
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6145

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6146
  br label %return, !dbg !6146

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6147
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6149
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6150

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6151
  br label %return, !dbg !6151

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6152
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6154
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6155

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6156
  br label %return, !dbg !6156

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6157, !range !6159, !noundef !1058
  %tobool69 = trunc i8 %25 to i1, !dbg !6157
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6160

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6161

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !6162, !srcloc !6165
  unreachable, !dbg !6162

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6166

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6167

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6168

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6170

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6168

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #15, !dbg !6172, !srcloc !6174
  br label %do.end75, !dbg !6172

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6168

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6175
  br label %return, !dbg !6175

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6176
  ret i32 %26, !dbg !6176
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6177 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6183 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6187, metadata !DIExpression()), !dbg !6189
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6188, metadata !DIExpression()), !dbg !6190
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6191
  %and = and i32 %0, 17, !dbg !6191
  %cmp = icmp eq i32 %and, 0, !dbg !6191
  %lnot = xor i1 %cmp, true, !dbg !6191
  %lnot1 = xor i1 %lnot, true, !dbg !6191
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6191
  %conv = sext i32 %lnot.ext to i64, !dbg !6191
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6191
  %tobool = icmp ne i64 %expval, 0, !dbg !6191
  br i1 %tobool, label %if.then, label %if.end, !dbg !6193

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6194
  br label %return, !dbg !6194

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6195
  %and2 = and i32 %1, 1, !dbg !6197
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6197
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6198

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6199
  br label %return, !dbg !6199

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6200
  br label %return, !dbg !6200

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6202
  ret i32 %2, !dbg !6202
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6203 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6204 dso_local void @__compiletime_assert_204() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6205 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6209, metadata !DIExpression()), !dbg !6212
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6210, metadata !DIExpression()), !dbg !6213
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6211, metadata !DIExpression()), !dbg !6214
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6215
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6217
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6218
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !6219
  br i1 %call, label %if.end, label %if.then, !dbg !6220

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6221

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6222
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6223
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6224
  store ptr %3, ptr %prev1, align 8, !dbg !6225
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6226
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6227
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6228
  store ptr %5, ptr %next2, align 8, !dbg !6229
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6230
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6231
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6232
  store ptr %7, ptr %prev3, align 8, !dbg !6233
  br label %do.body, !dbg !6234

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6235

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6237

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6235

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6239
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6239
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6239
  store volatile ptr %9, ptr %next6, align 8, !dbg !6239
  br label %do.end7, !dbg !6239

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6235

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6242 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6246, metadata !DIExpression()), !dbg !6249
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6247, metadata !DIExpression()), !dbg !6250
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6248, metadata !DIExpression()), !dbg !6251
  ret i1 true, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #5 align 16 !dbg !6253 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6258, metadata !DIExpression()), !dbg !6261
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6259, metadata !DIExpression()), !dbg !6262
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6260, metadata !DIExpression()), !dbg !6264
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6265
  %add = add i32 %0, 63, !dbg !6265
  %and = and i32 %add, -64, !dbg !6265
  %div = udiv i32 %and, 8, !dbg !6265
  store i32 %div, ptr %len, align 4, !dbg !6264
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !6266
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !6266
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !6266

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !6266
  %cmp = icmp ule i32 %3, 64, !dbg !6266
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !6266

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !6266
  %cmp2 = icmp ugt i32 %4, 0, !dbg !6266
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6268

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !6269
  store i64 0, ptr %5, align 8, !dbg !6270
  br label %if.end, !dbg !6271

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !6272
  %7 = load i32, ptr %len, align 4, !dbg !6273
  %conv = zext i32 %7 to i64, !dbg !6273
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !6274
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !6275
  ret void, !dbg !6275
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6276 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6283, metadata !DIExpression()), !dbg !6287
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6284, metadata !DIExpression()), !dbg !6288
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !6289
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6285, metadata !DIExpression()), !dbg !6290
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6291
  %rem = urem i64 %0, 64, !dbg !6291
  %shl = shl i64 1, %rem, !dbg !6291
  store i64 %shl, ptr %mask, align 8, !dbg !6290
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6286, metadata !DIExpression()), !dbg !6293
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6294
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6295
  %div = udiv i64 %2, 64, !dbg !6295
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !6296
  store ptr %add.ptr, ptr %p, align 8, !dbg !6293
  %3 = load i64, ptr %mask, align 8, !dbg !6297
  %4 = load ptr, ptr %p, align 8, !dbg !6298
  %5 = load i64, ptr %4, align 8, !dbg !6299
  %or = or i64 %5, %3, !dbg !6299
  store i64 %or, ptr %4, align 8, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !6300
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !6300
  ret void, !dbg !6300
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6301 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6304, metadata !DIExpression()), !dbg !6306
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6305, metadata !DIExpression()), !dbg !6307
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6308
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6309
  %div = udiv i64 %1, 64, !dbg !6309
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6310
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !6311
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6312
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6313
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !6314
  ret void, !dbg !6315
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !6316 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6324, metadata !DIExpression()), !dbg !6326
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6325, metadata !DIExpression()), !dbg !6327
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6328
  %1 = load i64, ptr %size.addr, align 8, !dbg !6329
  %conv = trunc i64 %1 to i32, !dbg !6329
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6330
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6331
  %3 = load i64, ptr %size.addr, align 8, !dbg !6331
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #16, !dbg !6331
  ret void, !dbg !6332
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6333 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6336, metadata !DIExpression()), !dbg !6338
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6337, metadata !DIExpression()), !dbg !6339
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6340
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6341
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !6342, !srcloc !6343
  ret void, !dbg !6344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6345 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6350, metadata !DIExpression()), !dbg !6352
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6351, metadata !DIExpression()), !dbg !6353
  ret i1 true, !dbg !6354
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6355 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6360, metadata !DIExpression()), !dbg !6363
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6361, metadata !DIExpression()), !dbg !6364
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6362, metadata !DIExpression()), !dbg !6365
  ret void, !dbg !6366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pnp_clone_dependent_set(ptr noundef %dev, i32 noundef %set) #0 align 16 !dbg !6367 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %set.addr = alloca i32, align 4
  %tail = alloca ptr, align 8
  %first_new_option = alloca ptr, align 8
  %option = alloca ptr, align 8
  %new_option = alloca ptr, align 8
  %flags = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__mptr44 = alloca ptr, align 8
  %tmp47 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6371, metadata !DIExpression()), !dbg !6390
  store i32 %set, ptr %set.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6372, metadata !DIExpression()), !dbg !6391
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #15, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !6373, metadata !DIExpression()), !dbg !6393
  store ptr null, ptr %tail, align 8, !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_new_option) #15, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %first_new_option, metadata !6374, metadata !DIExpression()), !dbg !6394
  store ptr null, ptr %first_new_option, align 8, !dbg !6394
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #15, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %option, metadata !6375, metadata !DIExpression()), !dbg !6396
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_option) #15, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %new_option, metadata !6376, metadata !DIExpression()), !dbg !6397
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #15, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6377, metadata !DIExpression()), !dbg !6399
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6378, metadata !DIExpression()), !dbg !6400
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6400
  %options = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 17, !dbg !6400
  %next = getelementptr inbounds %struct.list_head, ptr %options, i32 0, i32 0, !dbg !6400
  %1 = load ptr, ptr %next, align 8, !dbg !6400
  store ptr %1, ptr %__mptr, align 8, !dbg !6400
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6400
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !6400
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6401
  %3 = load ptr, ptr %tmp, align 8, !dbg !6400
  store ptr %3, ptr %option, align 8, !dbg !6401
  br label %for.cond, !dbg !6401

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %option, align 8, !dbg !6402
  %list = getelementptr inbounds %struct.pnp_option, ptr %4, i32 0, i32 0, !dbg !6402
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6402
  %options1 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 17, !dbg !6402
  %cmp = icmp eq ptr %list, %options1, !dbg !6402
  %lnot = xor i1 %cmp, true, !dbg !6402
  br i1 %lnot, label %for.body, label %for.end, !dbg !6401

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %option, align 8, !dbg !6403
  %call = call i32 @pnp_option_is_dependent(ptr noundef %6) #16, !dbg !6406
  %tobool = icmp ne i32 %call, 0, !dbg !6406
  br i1 %tobool, label %if.then, label %if.end, !dbg !6407

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %option, align 8, !dbg !6408
  store ptr %7, ptr %tail, align 8, !dbg !6409
  br label %if.end, !dbg !6410

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6411

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #15, !dbg !6412
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6381, metadata !DIExpression()), !dbg !6412
  %8 = load ptr, ptr %option, align 8, !dbg !6412
  %list3 = getelementptr inbounds %struct.pnp_option, ptr %8, i32 0, i32 0, !dbg !6412
  %next4 = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 0, !dbg !6412
  %9 = load ptr, ptr %next4, align 8, !dbg !6412
  store ptr %9, ptr %__mptr2, align 8, !dbg !6412
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !6412
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !6412
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !6412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #15, !dbg !6402
  %11 = load ptr, ptr %tmp5, align 8, !dbg !6412
  store ptr %11, ptr %option, align 8, !dbg !6402
  br label %for.cond, !dbg !6402, !llvm.loop !6413

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %tail, align 8, !dbg !6415
  %tobool7 = icmp ne ptr %12, null, !dbg !6415
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !6417

if.then8:                                         ; preds = %for.end
  br label %do.body, !dbg !6418

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !6421

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6421

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !6418
  %dev9 = getelementptr inbounds %struct.pnp_dev, ptr %13, i32 0, i32 0, !dbg !6418
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef @.str.10) #17, !dbg !6418
  store ptr null, ptr %retval, align 8, !dbg !6423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6423

if.end10:                                         ; preds = %for.end
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6424
  %call11 = call i32 @pnp_new_dependent_set(ptr noundef %14, i32 noundef 2) #16, !dbg !6425
  store i32 %call11, ptr %flags, align 4, !dbg !6426
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #15, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !6384, metadata !DIExpression()), !dbg !6427
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6427
  %options13 = getelementptr inbounds %struct.pnp_dev, ptr %15, i32 0, i32 17, !dbg !6427
  %next14 = getelementptr inbounds %struct.list_head, ptr %options13, i32 0, i32 0, !dbg !6427
  %16 = load ptr, ptr %next14, align 8, !dbg !6427
  store ptr %16, ptr %__mptr12, align 8, !dbg !6427
  %17 = load ptr, ptr %__mptr12, align 8, !dbg !6427
  %add.ptr16 = getelementptr i8, ptr %17, i64 0, !dbg !6427
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !6427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #15, !dbg !6428
  %18 = load ptr, ptr %tmp15, align 8, !dbg !6427
  store ptr %18, ptr %option, align 8, !dbg !6428
  br label %for.cond17, !dbg !6428

for.cond17:                                       ; preds = %for.inc43, %if.end10
  %19 = load ptr, ptr %option, align 8, !dbg !6429
  %list18 = getelementptr inbounds %struct.pnp_option, ptr %19, i32 0, i32 0, !dbg !6429
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !6429
  %options19 = getelementptr inbounds %struct.pnp_dev, ptr %20, i32 0, i32 17, !dbg !6429
  %cmp20 = icmp eq ptr %list18, %options19, !dbg !6429
  %lnot21 = xor i1 %cmp20, true, !dbg !6429
  br i1 %lnot21, label %for.body22, label %for.end49, !dbg !6428

for.body22:                                       ; preds = %for.cond17
  %21 = load ptr, ptr %option, align 8, !dbg !6430
  %call23 = call i32 @pnp_option_is_dependent(ptr noundef %21) #16, !dbg !6433
  %tobool24 = icmp ne i32 %call23, 0, !dbg !6433
  br i1 %tobool24, label %land.lhs.true, label %if.end42, !dbg !6434

land.lhs.true:                                    ; preds = %for.body22
  %22 = load ptr, ptr %option, align 8, !dbg !6435
  %call25 = call i32 @pnp_option_set(ptr noundef %22) #16, !dbg !6436
  %23 = load i32, ptr %set.addr, align 4, !dbg !6437
  %cmp26 = icmp eq i32 %call25, %23, !dbg !6438
  br i1 %cmp26, label %if.then27, label %if.end42, !dbg !6439

if.then27:                                        ; preds = %land.lhs.true
  %call28 = call noalias ptr @kmalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !6440
  store ptr %call28, ptr %new_option, align 8, !dbg !6442
  %24 = load ptr, ptr %new_option, align 8, !dbg !6443
  %tobool29 = icmp ne ptr %24, null, !dbg !6443
  br i1 %tobool29, label %if.end35, label %if.then30, !dbg !6445

if.then30:                                        ; preds = %if.then27
  br label %do.body31, !dbg !6446

do.body31:                                        ; preds = %if.then30
  br label %do.cond32, !dbg !6449

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !6449

do.end33:                                         ; preds = %do.cond32
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !6446
  %dev34 = getelementptr inbounds %struct.pnp_dev, ptr %25, i32 0, i32 0, !dbg !6446
  %26 = load i32, ptr %set.addr, align 4, !dbg !6446
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef @.str.11, i32 noundef %26) #17, !dbg !6446
  store ptr null, ptr %retval, align 8, !dbg !6451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6451

if.end35:                                         ; preds = %if.then27
  %27 = load ptr, ptr %new_option, align 8, !dbg !6452
  %28 = load ptr, ptr %option, align 8, !dbg !6453
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %27, ptr align 8 %28, i64 72, i1 false), !dbg !6454
  %29 = load i32, ptr %flags, align 4, !dbg !6455
  %30 = load ptr, ptr %new_option, align 8, !dbg !6456
  %flags36 = getelementptr inbounds %struct.pnp_option, ptr %30, i32 0, i32 1, !dbg !6457
  store i32 %29, ptr %flags36, align 8, !dbg !6458
  %31 = load ptr, ptr %first_new_option, align 8, !dbg !6459
  %tobool37 = icmp ne ptr %31, null, !dbg !6459
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !6461

if.then38:                                        ; preds = %if.end35
  %32 = load ptr, ptr %new_option, align 8, !dbg !6462
  store ptr %32, ptr %first_new_option, align 8, !dbg !6463
  br label %if.end39, !dbg !6464

if.end39:                                         ; preds = %if.then38, %if.end35
  %33 = load ptr, ptr %new_option, align 8, !dbg !6465
  %list40 = getelementptr inbounds %struct.pnp_option, ptr %33, i32 0, i32 0, !dbg !6466
  %34 = load ptr, ptr %tail, align 8, !dbg !6467
  %list41 = getelementptr inbounds %struct.pnp_option, ptr %34, i32 0, i32 0, !dbg !6468
  call void @list_add(ptr noundef %list40, ptr noundef %list41) #16, !dbg !6469
  %35 = load ptr, ptr %new_option, align 8, !dbg !6470
  store ptr %35, ptr %tail, align 8, !dbg !6471
  br label %if.end42, !dbg !6472

if.end42:                                         ; preds = %if.end39, %land.lhs.true, %for.body22
  br label %for.inc43, !dbg !6473

for.inc43:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr44) #15, !dbg !6474
  call void @llvm.dbg.declare(metadata ptr %__mptr44, metadata !6387, metadata !DIExpression()), !dbg !6474
  %36 = load ptr, ptr %option, align 8, !dbg !6474
  %list45 = getelementptr inbounds %struct.pnp_option, ptr %36, i32 0, i32 0, !dbg !6474
  %next46 = getelementptr inbounds %struct.list_head, ptr %list45, i32 0, i32 0, !dbg !6474
  %37 = load ptr, ptr %next46, align 8, !dbg !6474
  store ptr %37, ptr %__mptr44, align 8, !dbg !6474
  %38 = load ptr, ptr %__mptr44, align 8, !dbg !6474
  %add.ptr48 = getelementptr i8, ptr %38, i64 0, !dbg !6474
  store ptr %add.ptr48, ptr %tmp47, align 8, !dbg !6474
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr44) #15, !dbg !6429
  %39 = load ptr, ptr %tmp47, align 8, !dbg !6474
  store ptr %39, ptr %option, align 8, !dbg !6429
  br label %for.cond17, !dbg !6429, !llvm.loop !6475

for.end49:                                        ; preds = %for.cond17
  %40 = load ptr, ptr %first_new_option, align 8, !dbg !6477
  store ptr %40, ptr %retval, align 8, !dbg !6478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6478

cleanup:                                          ; preds = %for.end49, %do.end33, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #15, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_option) #15, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #15, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_new_option) #15, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #15, !dbg !6479
  %41 = load ptr, ptr %retval, align 8, !dbg !6479
  ret ptr %41, !dbg !6479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local void @dbg_pnp_show_option(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_new_dependent_set(ptr noundef %dev, i32 noundef %priority) #5 align 16 !dbg !6483 {
entry:
  %dev.addr = alloca ptr, align 8
  %priority.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6487, metadata !DIExpression()), !dbg !6490
  store i32 %priority, ptr %priority.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %priority.addr, metadata !6488, metadata !DIExpression()), !dbg !6491
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #15, !dbg !6492
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6489, metadata !DIExpression()), !dbg !6493
  %0 = load i32, ptr %priority.addr, align 4, !dbg !6494
  %cmp = icmp sgt i32 %0, 2, !dbg !6496
  br i1 %cmp, label %if.then, label %if.end, !dbg !6497

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6498

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6501

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6501

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6498
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 0, !dbg !6498
  %2 = load i32, ptr %priority.addr, align 4, !dbg !6498
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef @.str.12, i32 noundef %2, i32 noundef 4095) #17, !dbg !6498
  store i32 4095, ptr %priority.addr, align 4, !dbg !6503
  br label %if.end, !dbg !6504

if.end:                                           ; preds = %do.end, %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6505
  %num_dependent_sets = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 15, !dbg !6506
  %4 = load i32, ptr %num_dependent_sets, align 8, !dbg !6506
  %and = and i32 %4, 65535, !dbg !6507
  %shl = shl i32 %and, 12, !dbg !6508
  %or = or i32 -2147483648, %shl, !dbg !6509
  %5 = load i32, ptr %priority.addr, align 4, !dbg !6510
  %and2 = and i32 %5, 4095, !dbg !6511
  %shl3 = shl i32 %and2, 0, !dbg !6512
  %or4 = or i32 %or, %shl3, !dbg !6513
  store i32 %or4, ptr %flags, align 4, !dbg !6514
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6515
  %num_dependent_sets5 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 15, !dbg !6516
  %7 = load i32, ptr %num_dependent_sets5, align 8, !dbg !6517
  %inc = add i32 %7, 1, !dbg !6517
  store i32 %inc, ptr %num_dependent_sets5, align 8, !dbg !6517
  %8 = load i32, ptr %flags, align 4, !dbg !6518
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #15, !dbg !6519
  ret i32 %8, !dbg !6520
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6521 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6522 dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_type(ptr noundef %res) #5 align 16 !dbg !6525 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6531, metadata !DIExpression()), !dbg !6532
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6533
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !6534
  %1 = load i64, ptr %flags, align 8, !dbg !6534
  %and = and i64 %1, 7936, !dbg !6535
  ret i64 %and, !dbg !6536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #5 align 16 !dbg !6537 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6541, metadata !DIExpression()), !dbg !6542
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6543
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !6544
  %1 = load i64, ptr %end, align 8, !dbg !6544
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6545
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !6546
  %3 = load i64, ptr %start, align 8, !dbg !6546
  %sub = sub i64 %1, %3, !dbg !6547
  %add = add i64 %sub, 1, !dbg !6548
  ret i64 %add, !dbg !6549
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6550 dso_local ptr @pnp_get_resource(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @resource_overlaps(ptr noundef %r1, ptr noundef %r2) #5 align 16 !dbg !6553 {
entry:
  %r1.addr = alloca ptr, align 8
  %r2.addr = alloca ptr, align 8
  store ptr %r1, ptr %r1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r1.addr, metadata !6557, metadata !DIExpression()), !dbg !6559
  store ptr %r2, ptr %r2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r2.addr, metadata !6558, metadata !DIExpression()), !dbg !6560
  %0 = load ptr, ptr %r1.addr, align 8, !dbg !6561
  %start = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 0, !dbg !6562
  %1 = load i64, ptr %start, align 8, !dbg !6562
  %2 = load ptr, ptr %r2.addr, align 8, !dbg !6563
  %end = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1, !dbg !6564
  %3 = load i64, ptr %end, align 8, !dbg !6564
  %cmp = icmp ule i64 %1, %3, !dbg !6565
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6566

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %r1.addr, align 8, !dbg !6567
  %end1 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1, !dbg !6568
  %5 = load i64, ptr %end1, align 8, !dbg !6568
  %6 = load ptr, ptr %r2.addr, align 8, !dbg !6569
  %start2 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 0, !dbg !6570
  %7 = load i64, ptr %start2, align 8, !dbg !6570
  %cmp3 = icmp uge i64 %5, %7, !dbg !6571
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6572
  ret i1 %8, !dbg !6573
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_name(ptr noundef %pdev) #5 align 16 !dbg !6574 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6580, metadata !DIExpression()), !dbg !6581
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6582
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6583
  %call = call ptr @dev_name(ptr noundef %dev) #16, !dbg !6584
  ret ptr %call, !dbg !6585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !6586 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6590, metadata !DIExpression()), !dbg !6591
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6592
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6594
  %1 = load ptr, ptr %init_name, align 8, !dbg !6594
  %tobool = icmp ne ptr %1, null, !dbg !6592
  br i1 %tobool, label %if.then, label %if.end, !dbg !6595

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6596
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6597
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6597
  store ptr %3, ptr %retval, align 8, !dbg !6598
  br label %return, !dbg !6598

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6599
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6600
  %call = call ptr @kobject_name(ptr noundef %kobj) #16, !dbg !6601
  store ptr %call, ptr %retval, align 8, !dbg !6602
  br label %return, !dbg !6602

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6603
  ret ptr %5, !dbg !6603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !6604 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6606, metadata !DIExpression()), !dbg !6607
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6608
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6609
  %1 = load ptr, ptr %name, align 8, !dbg !6609
  ret ptr %1, !dbg !6610
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6611 dso_local ptr @amd_get_mmconfig_range(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6615 dso_local ptr @pnp_add_mem_resource(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_intel_host() #0 align 16 !dbg !6618 {
entry:
  %retval = alloca ptr, align 8
  %i = alloca i32, align 4
  %host = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6624
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6622, metadata !DIExpression()), !dbg !6625
  call void @llvm.lifetime.start.p0(i64 8, ptr %host) #15, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %host, metadata !6623, metadata !DIExpression()), !dbg !6627
  store i32 0, ptr %i, align 4, !dbg !6628
  br label %for.cond, !dbg !6630

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6631
  %conv = sext i32 %0 to i64, !dbg !6631
  %cmp = icmp ult i64 %conv, 4, !dbg !6633
  br i1 %cmp, label %for.body, label %for.end, !dbg !6634

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6635
  %idxprom = sext i32 %1 to i64, !dbg !6637
  %arrayidx = getelementptr [4 x i32], ptr @mch_quirk_devices, i64 0, i64 %idxprom, !dbg !6637
  %2 = load i32, ptr %arrayidx, align 4, !dbg !6637
  %call = call ptr @pci_get_device(i32 noundef 32902, i32 noundef %2, ptr noundef null) #16, !dbg !6638
  store ptr %call, ptr %host, align 8, !dbg !6639
  %3 = load ptr, ptr %host, align 8, !dbg !6640
  %tobool = icmp ne ptr %3, null, !dbg !6640
  br i1 %tobool, label %if.then, label %if.end, !dbg !6642

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %host, align 8, !dbg !6643
  store ptr %4, ptr %retval, align 8, !dbg !6644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6644

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6645

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !6646
  %inc = add i32 %5, 1, !dbg !6646
  store i32 %inc, ptr %i, align 4, !dbg !6646
  br label %for.cond, !dbg !6647, !llvm.loop !6648

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6650

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %host) #15, !dbg !6651
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6651
  %6 = load ptr, ptr %retval, align 8, !dbg !6651
  ret ptr %6, !dbg !6651
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6652 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6655 dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6659 dso_local void @pci_dev_put(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883}
!llvm.ident = !{!4884}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_fixups", scope: !2, file: !3, line: 412, type: !341, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/.quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnp\22 -D KBUILD_BASENAME=\22quirks\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/quirks.ll drivers/pnp/quirks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !166, globals: !256, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f557475c61468d010d7524fa88f8cd2b")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !156}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !147, line: 364, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!150 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!151 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!152 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 96, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!158 = !{!159, !160, !161, !162, !163, !164, !165}
!159 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0)
!160 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5)
!161 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6)
!162 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 7)
!163 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 10)
!164 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 11)
!165 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 11)
!166 = !{!167, !168, !226, !195, !181, !227, !229, !230, !7, !232, !233, !236, !191, !109}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !170, line: 67, size: 576, elements: !171)
!170 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad88cd72d3973577aa1f5f71c7f3d528")
!171 = !{!172, !179, !180, !182}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !169, file: !170, line: 68, baseType: !173, size: 128)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 190, size: 128, elements: !175)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 191, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !174, line: 191, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !170, line: 69, baseType: !7, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !170, line: 71, baseType: !181, size: 64, offset: 192)
!181 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !169, file: !170, line: 77, baseType: !183, size: 320, offset: 256)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !170, line: 72, size: 320, elements: !184)
!184 = !{!185, !201, !213, !218}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !183, file: !170, line: 73, baseType: !186, size: 320)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !170, line: 27, size: 320, elements: !187)
!187 = !{!188, !196, !197, !198, !199}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !186, file: !170, line: 28, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !174, line: 164, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !174, line: 159, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !192, line: 23, baseType: !193)
!192 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !194, line: 31, baseType: !195)
!194 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!195 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !186, file: !170, line: 29, baseType: !189, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !186, file: !170, line: 30, baseType: !189, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !186, file: !170, line: 31, baseType: !189, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !170, line: 32, baseType: !200, size: 8, offset: 256)
!200 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !183, file: !170, line: 74, baseType: !202, size: 320)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !170, line: 38, size: 320, elements: !203)
!203 = !{!204, !212}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !202, file: !170, line: 39, baseType: !205, size: 256)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !170, line: 36, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 36, size: 256, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !206, file: !170, line: 36, baseType: !209, size: 256)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 4)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !170, line: 40, baseType: !200, size: 8, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !183, file: !170, line: 75, baseType: !214, size: 16)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !170, line: 43, size: 16, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !214, file: !170, line: 44, baseType: !200, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !170, line: 45, baseType: !200, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !183, file: !170, line: 76, baseType: !219, size: 320)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !170, line: 48, size: 320, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !219, file: !170, line: 49, baseType: !189, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !219, file: !170, line: 50, baseType: !189, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !219, file: !170, line: 51, baseType: !189, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !219, file: !170, line: 52, baseType: !189, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !170, line: 53, baseType: !200, size: 8, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 154, baseType: !7)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !177)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !174, line: 42, baseType: !181)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !235)
!235 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !170, line: 155, size: 640, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !170, line: 156, baseType: !173, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !237, file: !170, line: 157, baseType: !241, size: 512, offset: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !242, line: 21, size: 512, elements: !243)
!242 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!243 = !{!244, !245, !246, !250, !251, !252, !254, !255}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !241, file: !242, line: 22, baseType: !189, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !241, file: !242, line: 23, baseType: !189, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !242, line: 24, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !242, line: 25, baseType: !181, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !241, file: !242, line: 26, baseType: !181, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !242, line: 27, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !241, file: !242, line: 27, baseType: !253, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !241, file: !242, line: 27, baseType: !253, size: 64, offset: 448)
!256 = !{!257, !262, !0, !267, !272, !277, !282, !287, !292, !297, !302, !307, !312, !317, !322, !327, !332, !337}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 450, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 24, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 3)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 450, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 136, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 17)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 360, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 45)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 344, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 43)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 168, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 21)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 384, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 48)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 632, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 79)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 488, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 61)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 248, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 31)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 544, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 68)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 208, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 26)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 264, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 33)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !170, line: 115, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 408, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 51)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 392, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 49)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 712, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 89)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 680, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 85)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "mch_quirk_devices", scope: !2, file: !3, line: 332, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !210)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 2432, elements: !4874)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_fixup", file: !343, line: 292, size: 128, elements: !344)
!343 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!344 = !{!345, !349}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !342, file: !343, line: 293, baseType: !346, size: 56)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 56, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 7)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_function", scope: !342, file: !343, line: 294, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !343, line: 243, size: 7744, elements: !355)
!355 = !{!356, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4770, !4798, !4821, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !354, file: !343, line: 244, baseType: !357, size: 5824)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !358)
!358 = !{!359, !4276, !4278, !4281, !4282, !4335, !4420, !4421, !4422, !4423, !4424, !4431, !4523, !4536, !4546, !4550, !4552, !4553, !4554, !4558, !4565, !4566, !4569, !4572, !4576, !4680, !4681, !4682, !4683, !4684, !4685, !4715, !4716, !4717, !4720, !4723, !4732, !4733, !4734, !4735, !4736, !4737}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !357, file: !94, line: 706, baseType: !360, size: 512)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !361, line: 64, size: 512, elements: !362)
!361 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!362 = !{!363, !364, !365, !367, !451, !4163, !4266, !4271, !4272, !4273, !4274, !4275}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !360, file: !361, line: 65, baseType: !247, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !360, file: !361, line: 66, baseType: !173, size: 128, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !360, file: !361, line: 67, baseType: !366, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !360, file: !361, line: 68, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !361, line: 168, size: 768, elements: !370)
!370 = !{!371, !372, !412, !413}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !369, file: !361, line: 169, baseType: !173, size: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !369, file: !361, line: 170, baseType: !373, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !374, line: 29, baseType: !375)
!374 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !374, line: 17, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !374, line: 18, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !374, line: 18, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !378, file: !374, line: 19, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !382, line: 14, size: 32, elements: !383)
!382 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !381, file: !382, line: 15, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !386, line: 44, baseType: !387)
!386 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !386, line: 14, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !386, line: 15, baseType: !390, size: 32)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !386, line: 15, size: 32, elements: !391)
!391 = !{!392, !397, !404}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !390, file: !386, line: 16, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 174, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 172, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !394, file: !174, line: 173, baseType: !109, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !386, line: 24, baseType: !398, size: 16)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !386, line: 24, size: 16, elements: !399)
!399 = !{!400, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !398, file: !386, line: 25, baseType: !401, size: 8)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !192, line: 17, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !194, line: 21, baseType: !200)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !398, file: !386, line: 26, baseType: !401, size: 8, offset: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !386, line: 28, baseType: !405, size: 32)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !386, line: 28, size: 32, elements: !406)
!406 = !{!407, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !405, file: !386, line: 29, baseType: !408, size: 16)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !192, line: 19, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !194, line: 24, baseType: !410)
!410 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !405, file: !386, line: 30, baseType: !408, size: 16, offset: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !369, file: !361, line: 171, baseType: !360, size: 512, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !369, file: !361, line: 172, baseType: !414, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !361, line: 133, size: 192, elements: !417)
!417 = !{!418, !425, !430}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !416, file: !361, line: 134, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!109, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !361, line: 135, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!247, !423}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !416, file: !361, line: 136, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!109, !423, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !361, line: 125, size: 20736, elements: !437)
!437 = !{!438, !441, !445, !446, !450}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !436, file: !361, line: 126, baseType: !439, size: 192)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 192, elements: !260)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !436, file: !361, line: 127, baseType: !442, size: 4096, offset: 192)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 4096, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !436, file: !361, line: 128, baseType: !109, size: 32, offset: 4288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !436, file: !361, line: 129, baseType: !447, size: 16384, offset: 4320)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 16384, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 2048)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !436, file: !361, line: 130, baseType: !109, size: 32, offset: 20704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !360, file: !361, line: 69, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !361, line: 116, size: 384, elements: !455)
!455 = !{!456, !460, !487, !4125, !4153, !4157}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !454, file: !361, line: 117, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !366}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !454, file: !361, line: 118, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !464, line: 254, size: 128, elements: !465)
!464 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!465 = !{!466, !480}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !463, file: !464, line: 255, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !366, !474, !440}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 66, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !472, line: 73, baseType: !473)
!472 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !472, line: 15, baseType: !235)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !464, line: 30, size: 128, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !475, file: !464, line: 31, baseType: !247, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !475, file: !464, line: 32, baseType: !479, size: 16, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 24, baseType: !410)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !463, file: !464, line: 256, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!470, !366, !474, !247, !484}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 61, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !472, line: 72, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !472, line: 16, baseType: !181)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !454, file: !361, line: 119, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !464, line: 84, size: 320, elements: !492)
!492 = !{!493, !494, !498, !4121, !4123}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !491, file: !464, line: 85, baseType: !247, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !491, file: !464, line: 86, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!479, !366, !474, !109}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !491, file: !464, line: 88, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!479, !366, !502, !109}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !464, line: 175, size: 512, elements: !504)
!504 = !{!505, !506, !507, !508, !4112, !4116, !4117}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !503, file: !464, line: 176, baseType: !475, size: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !503, file: !464, line: 177, baseType: !484, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !503, file: !464, line: 178, baseType: !167, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !503, file: !464, line: 179, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !514)
!514 = !{!515, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !4106, !4107, !4108, !4109, !4110, !4111}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !513, file: !14, line: 473, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !518)
!518 = !{!519, !520, !521, !529, !530, !537, !538, !541, !542, !3886, !3887, !3888, !3889, !3890, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3929, !3932, !3933, !3934, !3943, !3944, !3945, !3946}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !517, file: !14, line: 642, baseType: !479, size: 16)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !517, file: !14, line: 643, baseType: !410, size: 16, offset: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !517, file: !14, line: 644, baseType: !522, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !523, line: 23, baseType: !524)
!523 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 21, size: 32, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !524, file: !523, line: 22, baseType: !527, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 37, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !472, line: 49, baseType: !7)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !517, file: !14, line: 645, baseType: !173, size: 128, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !517, file: !14, line: 646, baseType: !531, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !523, line: 28, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 26, size: 32, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !532, file: !523, line: 27, baseType: !535, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 38, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !472, line: 50, baseType: !7)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !517, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !517, file: !14, line: 650, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !517, file: !14, line: 651, baseType: !539, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !517, file: !14, line: 654, baseType: !543, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !546)
!546 = !{!547, !3714, !3724, !3728, !3732, !3736, !3740, !3744, !3748, !3752, !3756, !3757, !3761, !3765, !3802, !3831, !3835, !3841, !3845, !3849, !3853, !3857, !3861, !3867, !3871}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !545, file: !14, line: 1967, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !516, !551, !7}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !553, line: 82, size: 1536, elements: !554)
!553 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!554 = !{!555, !556, !566, !574, !575, !592, !593, !597, !610, !3697, !3698, !3699, !3700, !3706, !3707, !3708}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !552, file: !553, line: 84, baseType: !7, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !552, file: !553, line: 85, baseType: !557, size: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !558, line: 275, baseType: !559)
!558 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !558, line: 275, size: 32, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !559, file: !558, line: 275, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !558, line: 69, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !558, line: 64, size: 32, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !563, file: !558, line: 65, baseType: !7, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !552, file: !553, line: 86, baseType: !567, size: 128, offset: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !568, line: 38, size: 128, elements: !569)
!568 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!569 = !{!570, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !568, line: 39, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !567, file: !568, line: 39, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !552, file: !553, line: 87, baseType: !551, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !552, file: !553, line: 88, baseType: !576, size: 128, offset: 256)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !553, line: 49, size: 128, elements: !577)
!577 = !{!578, !589}
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !553, line: 50, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !553, line: 50, size: 64, elements: !580)
!580 = !{!581, !588}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !553, line: 51, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !579, file: !553, line: 51, size: 64, elements: !583)
!583 = !{!584, !587}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !582, file: !553, line: 52, baseType: !585, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !192, line: 21, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !194, line: 27, baseType: !7)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !582, file: !553, line: 52, baseType: !585, size: 32, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !579, file: !553, line: 54, baseType: !191, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !553, line: 56, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !552, file: !553, line: 89, baseType: !516, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !552, file: !553, line: 91, baseType: !594, size: 256, offset: 448)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !552, file: !553, line: 94, baseType: !598, size: 64, offset: 704)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !599, line: 25, size: 64, elements: !600)
!599 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !599, line: 26, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !599, line: 26, size: 64, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !602, file: !599, line: 28, baseType: !193, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !599, line: 30, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !602, file: !599, line: 30, size: 64, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !606, file: !599, line: 31, baseType: !373, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !606, file: !599, line: 32, baseType: !109, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !552, file: !553, line: 95, baseType: !611, size: 64, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !553, line: 128, size: 1024, align: 512, elements: !614)
!614 = !{!615, !619, !620, !627, !633, !637, !641, !645, !646, !650, !654, !3687, !3691}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !613, file: !553, line: 129, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!109, !551, !7}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !613, file: !553, line: 130, baseType: !616, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !613, file: !553, line: 131, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!109, !624, !626}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !613, file: !553, line: 132, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!109, !624, !7, !247, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !613, file: !553, line: 134, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!109, !624}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !613, file: !553, line: 135, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!109, !551}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !613, file: !553, line: 136, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !551}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !613, file: !553, line: 137, baseType: !642, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !613, file: !553, line: 138, baseType: !647, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !551, !516}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !613, file: !553, line: 139, baseType: !651, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!440, !551, !440, !109}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !613, file: !553, line: 140, baseType: !655, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!658, !3686}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !660, line: 70, size: 256, elements: !661)
!660 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!661 = !{!662, !663, !3682, !3683}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !659, file: !660, line: 71, baseType: !551, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !659, file: !660, line: 72, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !666)
!666 = !{!667, !668, !671, !672, !673, !677, !1151, !1290, !1330, !1420, !1424, !1425, !1426, !1427, !1428, !1437, !1438, !1439, !1440, !1445, !1449, !1450, !1453, !1456, !1459, !1462, !1463, !1464, !1505, !3615, !3616, !3617, !3618, !3619, !3620, !3623, !3625, !3632, !3633, !3634, !3635, !3636, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !665, file: !14, line: 1191, baseType: !173, size: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !665, file: !14, line: 1192, baseType: !669, size: 32, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 21, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 18, baseType: !585)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !665, file: !14, line: 1193, baseType: !200, size: 8, offset: 160)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !665, file: !14, line: 1194, baseType: !181, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !665, file: !14, line: 1195, baseType: !674, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 52, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !472, line: 88, baseType: !676)
!676 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !665, file: !14, line: 1196, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !680)
!680 = !{!681, !682, !683, !690, !694, !698, !702, !1136, !1137, !1141, !1143, !1144, !1145, !1147, !1148, !1149, !1150}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !679, file: !14, line: 2367, baseType: !247, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !679, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !679, file: !14, line: 2376, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!109, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !689, line: 32, flags: DIFlagFwdDecl)
!689 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !679, file: !14, line: 2377, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !679, file: !14, line: 2378, baseType: !695, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!551, !678, !109, !247, !167}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !679, file: !14, line: 2380, baseType: !699, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !664}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !679, file: !14, line: 2381, baseType: !703, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !705)
!705 = !{!706, !707, !708, !712, !734, !760, !761, !762, !763, !767, !772, !773, !793, !849, !850, !851, !852, !853, !856, !857, !858, !866, !870, !895, !916, !917, !918, !919, !928, !951, !952, !955, !958, !959, !960, !961, !962, !963, !964, !969, !970, !1095, !1103, !1104, !1105, !1107, !1111, !1112, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1129, !1130, !1131, !1135}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !704, file: !6, line: 403, baseType: !5, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !704, file: !6, line: 406, baseType: !173, size: 128, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !6, line: 409, baseType: !709, size: 448, offset: 192)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 448, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 56)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !704, file: !6, line: 417, baseType: !713, size: 768, offset: 640)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !714)
!714 = !{!715, !716, !717, !718, !721}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !713, file: !6, line: 46, baseType: !360, size: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !713, file: !6, line: 47, baseType: !703, size: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !713, file: !6, line: 48, baseType: !366, size: 64, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !713, file: !6, line: 49, baseType: !719, size: 64, offset: 640)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !713, file: !6, line: 50, baseType: !722, size: 64, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !724, line: 26, size: 256, elements: !725)
!724 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !723, file: !724, line: 27, baseType: !7, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !723, file: !724, line: 28, baseType: !728, size: 192, offset: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !729, line: 43, size: 192, elements: !730)
!729 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!730 = !{!731, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !729, line: 44, baseType: !732, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !382, line: 23, baseType: !381)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !728, file: !729, line: 45, baseType: !173, size: 128, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !704, file: !6, line: 418, baseType: !735, size: 64, offset: 1408)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !737)
!737 = !{!738, !739, !744, !748, !752, !756}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !736, file: !6, line: 54, baseType: !475, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !736, file: !6, line: 55, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!470, !735, !743, !440}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !736, file: !6, line: 57, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!470, !735, !743, !247, !484}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !736, file: !6, line: 59, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !703, !247}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !736, file: !6, line: 60, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!109, !703}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !736, file: !6, line: 61, baseType: !757, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !703}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !704, file: !6, line: 419, baseType: !247, size: 64, offset: 1472)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !704, file: !6, line: 420, baseType: !247, size: 64, offset: 1536)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !704, file: !6, line: 421, baseType: !366, size: 64, offset: 1600)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !704, file: !6, line: 424, baseType: !764, size: 64, offset: 1664)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !704, file: !6, line: 425, baseType: !768, size: 64, offset: 1728)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !192, line: 20, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !194, line: 26, baseType: !109)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !704, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !704, file: !6, line: 435, baseType: !774, size: 256, offset: 1856)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !775, line: 66, size: 256, elements: !776)
!775 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!776 = !{!777, !786, !787, !792}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !774, file: !775, line: 67, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !779, line: 13, baseType: !780)
!779 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 181, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 179, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !781, file: !174, line: 180, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !192, line: 22, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !194, line: 30, baseType: !676)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !774, file: !775, line: 68, baseType: !732, size: 32, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !774, file: !775, line: 70, baseType: !788, size: 32, offset: 96)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !789, line: 15, size: 32, elements: !790)
!789 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !788, file: !789, line: 20, baseType: !393, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !774, file: !775, line: 72, baseType: !173, size: 128, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !704, file: !6, line: 437, baseType: !794, size: 64, offset: 2112)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !796, line: 69, size: 320, elements: !797)
!796 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!797 = !{!798, !799, !800, !820, !822, !826, !827}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !795, file: !796, line: 70, baseType: !247, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !795, file: !796, line: 71, baseType: !703, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !795, file: !796, line: 72, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !796, line: 47, size: 256, elements: !804)
!804 = !{!805, !806, !812, !816}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !796, line: 49, baseType: !7, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !803, file: !796, line: 51, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!109, !247, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !803, file: !796, line: 53, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!109, !440, !810}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !803, file: !796, line: 55, baseType: !817, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !167}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !795, file: !796, line: 73, baseType: !821, size: 16, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !795, file: !796, line: 74, baseType: !823, size: 8, offset: 208)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !192, line: 16, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !194, line: 20, baseType: !825)
!825 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !796, line: 75, baseType: !401, size: 8, offset: 216)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !796, line: 76, baseType: !828, size: 64, offset: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !796, line: 76, size: 64, elements: !829)
!829 = !{!830, !831, !838}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !828, file: !796, line: 77, baseType: !167, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !828, file: !796, line: 78, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !796, line: 86, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !834, file: !796, line: 87, baseType: !7, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !834, file: !796, line: 88, baseType: !440, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !828, file: !796, line: 79, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !796, line: 92, size: 256, elements: !842)
!842 = !{!843, !844, !845, !847, !848}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !841, file: !796, line: 94, baseType: !7, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !841, file: !796, line: 95, baseType: !7, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !841, file: !796, line: 96, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !841, file: !796, line: 97, baseType: !801, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !841, file: !796, line: 98, baseType: !167, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !704, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !704, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !704, file: !6, line: 442, baseType: !764, size: 64, offset: 2240)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !704, file: !6, line: 443, baseType: !768, size: 64, offset: 2304)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !704, file: !6, line: 444, baseType: !854, size: 8, offset: 2368)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 35, baseType: !855)
!855 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !704, file: !6, line: 451, baseType: !854, size: 8, offset: 2376)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !704, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !704, file: !6, line: 455, baseType: !859, size: 64, offset: 2432)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !861, line: 23, size: 96, elements: !862)
!861 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!862 = !{!863, !864, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !860, file: !861, line: 24, baseType: !109, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !860, file: !861, line: 24, baseType: !109, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !860, file: !861, line: 24, baseType: !109, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !704, file: !6, line: 458, baseType: !867, size: 64, offset: 2496)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!109}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !704, file: !6, line: 460, baseType: !871, size: 4032, align: 512, offset: 2560)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 4032, elements: !347)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !872, file: !6, line: 363, baseType: !167, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !872, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !872, file: !6, line: 367, baseType: !877, size: 448, offset: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !877, file: !6, line: 320, baseType: !703, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !877, file: !6, line: 321, baseType: !881, size: 384, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !882, line: 40, size: 384, elements: !883)
!882 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!883 = !{!884}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !881, file: !882, line: 41, baseType: !885, size: 384, align: 64)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 384, align: 64, elements: !893)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !887, line: 5, size: 192, align: 64, elements: !888)
!887 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!888 = !{!889, !890, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !886, file: !887, line: 6, baseType: !181, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !886, file: !887, line: 7, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !886, file: !887, line: 8, baseType: !891, size: 64, offset: 128)
!893 = !{!894}
!894 = !DISubrange(count: 2)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !704, file: !6, line: 463, baseType: !896, size: 192, offset: 6592)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !897, line: 8, size: 192, elements: !898)
!897 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!898 = !{!899, !900, !902}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !896, file: !897, line: 10, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !896, file: !897, line: 11, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !896, file: !897, line: 12, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !905, line: 59, size: 48, elements: !906)
!905 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!906 = !{!907, !911, !912, !913, !914, !915}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !904, file: !905, line: 60, baseType: !908, size: 16)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !192, line: 18, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !194, line: 23, baseType: !910)
!910 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !904, file: !905, line: 61, baseType: !908, size: 16, offset: 16)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !904, file: !905, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !904, file: !905, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !904, file: !905, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !904, file: !905, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !704, file: !6, line: 465, baseType: !181, size: 64, offset: 6784)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !704, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !704, file: !6, line: 470, baseType: !173, size: 128, offset: 6912)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !704, file: !6, line: 471, baseType: !920, size: 64, offset: 7040)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !922, line: 33, size: 96, elements: !923)
!922 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!923 = !{!924, !925, !926, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !921, file: !922, line: 37, baseType: !109, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !921, file: !922, line: 43, baseType: !109, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !921, file: !922, line: 45, baseType: !410, size: 16, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !921, file: !922, line: 47, baseType: !410, size: 16, offset: 80)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !704, file: !6, line: 476, baseType: !929, size: 64, offset: 7104)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !931)
!931 = !{!932, !948, !949, !950}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !930, file: !6, line: 379, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !935, line: 204, baseType: !936)
!935 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !935, line: 197, size: 192, elements: !937)
!937 = !{!938, !940, !941, !942, !944, !946}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !936, file: !935, line: 198, baseType: !939, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !935, line: 21, baseType: !586)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !936, file: !935, line: 199, baseType: !200, size: 8, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !936, file: !935, line: 200, baseType: !200, size: 8, offset: 40)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !936, file: !935, line: 201, baseType: !943, size: 16, offset: 48)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !935, line: 17, baseType: !409)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !936, file: !935, line: 202, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !935, line: 16, baseType: !193)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !936, file: !935, line: 203, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !935, line: 22, baseType: !193)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !930, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !930, file: !6, line: 381, baseType: !440, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !930, file: !6, line: 382, baseType: !440, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !704, file: !6, line: 477, baseType: !930, size: 256, offset: 7168)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !704, file: !6, line: 480, baseType: !953, size: 64, offset: 7424)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !704, file: !6, line: 483, baseType: !956, size: 64, offset: 7488)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !704, file: !6, line: 488, baseType: !440, size: 64, offset: 7552)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !704, file: !6, line: 492, baseType: !167, size: 64, offset: 7616)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !704, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !704, file: !6, line: 495, baseType: !167, size: 64, offset: 7744)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !704, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !704, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !704, file: !6, line: 500, baseType: !965, size: 64, offset: 7872)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !967, line: 45, baseType: !968)
!967 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !704, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !704, file: !6, line: 504, baseType: !971, size: 64, offset: 8000)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !974, line: 96, size: 192, elements: !975)
!974 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!975 = !{!976, !977, !1055, !1059}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !973, file: !974, line: 97, baseType: !7, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !973, file: !974, line: 98, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !974, line: 24, size: 3072, elements: !980)
!980 = !{!981, !983, !984, !985, !986, !1007, !1008, !1009, !1010, !1028, !1040, !1041, !1052, !1053, !1054}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !979, file: !974, line: 26, baseType: !982, size: 128)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 128, elements: !893)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !979, file: !974, line: 27, baseType: !982, size: 128, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !979, file: !974, line: 28, baseType: !109, size: 32, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !979, file: !974, line: 31, baseType: !373, size: 32, align: 512, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !979, file: !974, line: 32, baseType: !987, size: 960, offset: 576)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !988, line: 206, size: 960, elements: !989)
!988 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!989 = !{!990, !999, !1002, !1003, !1004, !1006}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !987, file: !988, line: 207, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 232, size: 128, align: 64, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !174, line: 233, baseType: !991, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !992, file: !174, line: 234, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !991}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !987, file: !988, line: 208, baseType: !1000, size: 256, offset: 64)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 256, elements: !210)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !987, file: !988, line: 209, baseType: !209, size: 256, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !987, file: !988, line: 213, baseType: !235, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !987, file: !988, line: 215, baseType: !1005, size: 256, offset: 640)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !210)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !988, line: 216, baseType: !401, size: 8, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !979, file: !974, line: 33, baseType: !181, size: 64, offset: 1536)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !979, file: !974, line: 34, baseType: !181, size: 64, offset: 1600)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !979, file: !974, line: 35, baseType: !854, size: 8, offset: 1664)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !979, file: !974, line: 36, baseType: !1011, size: 320, offset: 1728)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1012, line: 11, size: 320, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1013 = !{!1014, !1021, !1022, !1027}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1011, file: !1012, line: 16, baseType: !1015, size: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 198, size: 128, elements: !1016)
!1016 = !{!1017, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1015, file: !174, line: 199, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1015, file: !174, line: 199, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1011, file: !1012, line: 17, baseType: !181, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1011, file: !1012, line: 18, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !1012, line: 19, baseType: !585, size: 32, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !979, file: !974, line: 37, baseType: !1029, size: 256, offset: 2048)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1030, line: 98, size: 256, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1029, file: !1030, line: 99, baseType: !778, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1029, file: !1030, line: 100, baseType: !173, size: 128, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1029, file: !1030, line: 101, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1030, line: 21, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !979, file: !974, line: 38, baseType: !992, size: 128, align: 64, offset: 2304)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !979, file: !974, line: 39, baseType: !1042, size: 64, offset: 2432)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !974, line: 49, size: 768, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1043, file: !974, line: 50, baseType: !373, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1043, file: !974, line: 51, baseType: !209, size: 256, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1043, file: !974, line: 53, baseType: !209, size: 256, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1043, file: !974, line: 54, baseType: !181, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1043, file: !974, line: 55, baseType: !1042, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1043, file: !974, line: 56, baseType: !109, size: 32, offset: 704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1043, file: !974, line: 57, baseType: !109, size: 32, offset: 736)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !979, file: !974, line: 40, baseType: !181, size: 64, offset: 2496)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !979, file: !974, line: 42, baseType: !109, size: 32, offset: 2560)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !979, file: !974, line: 43, baseType: !972, size: 64, offset: 2624)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !973, file: !974, line: 99, baseType: !1056, offset: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1057, line: 211, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1058 = !{}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !973, file: !974, line: 100, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !974, line: 63, size: 3008, elements: !1062)
!1062 = !{!1063, !1064, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1094}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1061, file: !974, line: 64, baseType: !1042, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1061, file: !974, line: 65, baseType: !1065, size: 192, offset: 64)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 192, elements: !260)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1061, file: !974, line: 67, baseType: !109, size: 32, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1061, file: !974, line: 68, baseType: !774, size: 256, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1061, file: !974, line: 69, baseType: !373, size: 32, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1061, file: !974, line: 70, baseType: !774, size: 256, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1061, file: !974, line: 71, baseType: !181, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1061, file: !974, line: 72, baseType: !181, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1061, file: !974, line: 73, baseType: !181, size: 64, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1061, file: !974, line: 74, baseType: !181, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1061, file: !974, line: 75, baseType: !181, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1061, file: !974, line: 76, baseType: !181, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1061, file: !974, line: 77, baseType: !181, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1061, file: !974, line: 78, baseType: !181, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1061, file: !974, line: 79, baseType: !854, size: 8, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1061, file: !974, line: 80, baseType: !181, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1061, file: !974, line: 81, baseType: !774, size: 256, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1061, file: !974, line: 82, baseType: !723, size: 256, offset: 1792)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1061, file: !974, line: 84, baseType: !393, size: 32, offset: 2048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1061, file: !974, line: 87, baseType: !181, size: 64, offset: 2112)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1061, file: !974, line: 88, baseType: !181, size: 64, offset: 2176)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1061, file: !974, line: 89, baseType: !1086, size: 704, offset: 2240)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1030, line: 111, size: 704, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1093}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1086, file: !1030, line: 112, baseType: !1029, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1086, file: !1030, line: 113, baseType: !1011, size: 320, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1086, file: !1030, line: 116, baseType: !1091, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1030, line: 18, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1086, file: !1030, line: 117, baseType: !109, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1061, file: !974, line: 90, baseType: !972, size: 64, offset: 2944)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !704, file: !6, line: 515, baseType: !1096, size: 64, offset: 8064)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1098, line: 117, size: 128, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1097, file: !1098, line: 118, baseType: !770, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1097, file: !1098, line: 119, baseType: !770, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1097, file: !1098, line: 120, baseType: !235, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !704, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !704, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !704, file: !6, line: 520, baseType: !1106, size: 64, offset: 8192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !704, file: !6, line: 523, baseType: !1108, size: 64, offset: 8256)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !704, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !704, file: !6, line: 525, baseType: !1113, size: 64, offset: 8384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !704, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !704, file: !6, line: 533, baseType: !167, size: 64, offset: 8512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !704, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !704, file: !6, line: 535, baseType: !232, size: 64, offset: 8640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !704, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !704, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !704, file: !6, line: 540, baseType: !1123, size: 64, offset: 8768)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1125, line: 32, size: 64, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1124, file: !1125, line: 33, baseType: !770, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1124, file: !1125, line: 34, baseType: !770, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !704, file: !6, line: 563, baseType: !173, size: 128, offset: 8832)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !704, file: !6, line: 565, baseType: !173, size: 128, offset: 8960)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !704, file: !6, line: 568, baseType: !1132, size: 64, offset: 9088)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !704, file: !6, line: 570, baseType: !393, size: 32, offset: 9152)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !14, line: 2382, baseType: !678, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !679, file: !14, line: 2383, baseType: !1138, size: 64, offset: 512)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 194, size: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1138, file: !174, line: 195, baseType: !1018, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !679, file: !14, line: 2385, baseType: !1142, offset: 576)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1057, line: 206, elements: !1058)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !679, file: !14, line: 2386, baseType: !1142, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !679, file: !14, line: 2387, baseType: !1142, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !679, file: !14, line: 2388, baseType: !1146, offset: 576)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, elements: !260)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !679, file: !14, line: 2390, baseType: !1142, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !679, file: !14, line: 2391, baseType: !1142, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !679, file: !14, line: 2392, baseType: !1142, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !679, file: !14, line: 2393, baseType: !1142, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !665, file: !14, line: 1197, baseType: !1152, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1155)
!1155 = !{!1156, !1160, !1164, !1165, !1169, !1175, !1179, !1180, !1181, !1185, !1189, !1193, !1194, !1195, !1201, !1205, !1206, !1213, !1214, !1215, !1216, !1220, !1224, !1273, !1288, !1289}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1154, file: !14, line: 2058, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!516, !664}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1154, file: !14, line: 2059, baseType: !1161, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !516}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1154, file: !14, line: 2060, baseType: !1161, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1154, file: !14, line: 2062, baseType: !1166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !516, !109}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1154, file: !14, line: 2063, baseType: !1170, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!109, !516, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1154, file: !14, line: 2064, baseType: !1176, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!109, !516}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1154, file: !14, line: 2065, baseType: !1161, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1154, file: !14, line: 2066, baseType: !699, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1154, file: !14, line: 2067, baseType: !1182, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!109, !664, !109}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1154, file: !14, line: 2068, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!109, !664, !13}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1154, file: !14, line: 2069, baseType: !1190, size: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!109, !664}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1154, file: !14, line: 2070, baseType: !1186, size: 64, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1154, file: !14, line: 2071, baseType: !1190, size: 64, offset: 768)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1154, file: !14, line: 2072, baseType: !1196, size: 64, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!109, !551, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1154, file: !14, line: 2073, baseType: !1202, size: 64, offset: 896)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!109, !664, !901, !440}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1154, file: !14, line: 2074, baseType: !699, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1154, file: !14, line: 2076, baseType: !1207, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!109, !1210, !551}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1212, line: 66, flags: DIFlagFwdDecl)
!1212 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1154, file: !14, line: 2077, baseType: !1207, size: 64, offset: 1088)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1154, file: !14, line: 2078, baseType: !1207, size: 64, offset: 1152)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1154, file: !14, line: 2079, baseType: !1207, size: 64, offset: 1216)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1154, file: !14, line: 2081, baseType: !1217, size: 64, offset: 1280)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!470, !664, !109, !440, !484, !674}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1154, file: !14, line: 2082, baseType: !1221, size: 64, offset: 1344)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!470, !664, !109, !247, !484, !674}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1154, file: !14, line: 2083, baseType: !1225, size: 64, offset: 1408)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1228, !516}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1256, !1257, !1258}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1230, file: !19, line: 297, baseType: !1015, size: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1230, file: !19, line: 298, baseType: !173, size: 128, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1230, file: !19, line: 299, baseType: !173, size: 128, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1230, file: !19, line: 300, baseType: !173, size: 128, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1230, file: !19, line: 301, baseType: !774, size: 256, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1230, file: !19, line: 302, baseType: !373, size: 32, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1230, file: !19, line: 303, baseType: !393, size: 32, offset: 800)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1230, file: !19, line: 304, baseType: !664, size: 64, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1230, file: !19, line: 305, baseType: !1241, size: 64, offset: 896)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1242)
!1242 = !{!1243, !1255}
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !19, line: 69, baseType: !1244, size: 32)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !19, line: 69, size: 32, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1244, file: !19, line: 70, baseType: !522, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1244, file: !19, line: 71, baseType: !531, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1244, file: !19, line: 72, baseType: !1249, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1250, line: 24, baseType: !1251)
!1250 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1250, line: 22, size: 32, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1251, file: !1250, line: 23, baseType: !1254, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1250, line: 20, baseType: !528)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1241, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1230, file: !19, line: 306, baseType: !674, size: 64, offset: 960)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1230, file: !19, line: 307, baseType: !181, size: 64, offset: 1024)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1230, file: !19, line: 308, baseType: !1259, size: 576, offset: 1088)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1260)
!1260 = !{!1261, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1272}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1259, file: !19, line: 206, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !676)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1259, file: !19, line: 207, baseType: !1262, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1259, file: !19, line: 208, baseType: !1262, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1259, file: !19, line: 209, baseType: !1262, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1259, file: !19, line: 210, baseType: !1262, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1259, file: !19, line: 211, baseType: !1262, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1259, file: !19, line: 212, baseType: !1262, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1259, file: !19, line: 213, baseType: !1270, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1271, line: 8, baseType: !785)
!1271 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1259, file: !19, line: 214, baseType: !1270, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1154, file: !14, line: 2085, baseType: !1274, size: 64, offset: 1472)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!235, !664, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1279, line: 15, size: 256, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1280 = !{!1281, !1282, !1283, !1284, !1285}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1278, file: !1279, line: 16, baseType: !226, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1278, file: !1279, line: 19, baseType: !109, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1278, file: !1279, line: 26, baseType: !181, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1278, file: !1279, line: 33, baseType: !181, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1278, file: !1279, line: 36, baseType: !1286, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1154, file: !14, line: 2087, baseType: !1274, size: 64, offset: 1536)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1154, file: !14, line: 2089, baseType: !699, size: 64, offset: 1600)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !665, file: !14, line: 1198, baseType: !1291, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1294)
!1294 = !{!1295, !1299, !1303, !1307, !1308, !1309, !1310, !1311, !1316, !1321, !1325}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1293, file: !19, line: 325, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!109, !1229}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1293, file: !19, line: 326, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1229, !664, !109}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1293, file: !19, line: 327, baseType: !1304, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !1229}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1293, file: !19, line: 328, baseType: !1296, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1293, file: !19, line: 329, baseType: !1296, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1293, file: !19, line: 330, baseType: !1296, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1293, file: !19, line: 331, baseType: !1182, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1293, file: !19, line: 334, baseType: !1312, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1315, !516}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1293, file: !19, line: 335, baseType: !1317, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!109, !516, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1293, file: !19, line: 337, baseType: !1322, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!109, !516, !1315}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1293, file: !19, line: 339, baseType: !1326, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!109, !664, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !665, file: !14, line: 1199, baseType: !1331, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1334)
!1334 = !{!1335, !1346, !1347, !1351, !1352, !1353, !1368, !1391, !1395, !1396, !1419}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1333, file: !19, line: 431, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!109, !664, !109, !109, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1342, line: 8, size: 128, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1341, file: !1342, line: 9, baseType: !658, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1341, file: !1342, line: 10, baseType: !551, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1333, file: !19, line: 432, baseType: !1182, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1333, file: !19, line: 433, baseType: !1348, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!109, !664, !7}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1333, file: !19, line: 434, baseType: !1348, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1333, file: !19, line: 435, baseType: !1182, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1333, file: !19, line: 436, baseType: !1354, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!109, !664, !109, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1358, file: !19, line: 418, baseType: !109, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1358, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1358, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1358, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1358, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1358, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1358, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1358, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1333, file: !19, line: 437, baseType: !1369, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!109, !664, !1241, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1373, file: !19, line: 346, baseType: !109, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1373, file: !19, line: 347, baseType: !191, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1373, file: !19, line: 348, baseType: !191, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1373, file: !19, line: 349, baseType: !191, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1373, file: !19, line: 350, baseType: !191, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1373, file: !19, line: 351, baseType: !191, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1373, file: !19, line: 352, baseType: !191, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1373, file: !19, line: 353, baseType: !784, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1373, file: !19, line: 355, baseType: !784, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1373, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1373, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1373, file: !19, line: 358, baseType: !191, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1373, file: !19, line: 359, baseType: !191, size: 64, offset: 704)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1373, file: !19, line: 360, baseType: !191, size: 64, offset: 768)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1373, file: !19, line: 361, baseType: !784, size: 64, offset: 832)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1373, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1333, file: !19, line: 438, baseType: !1392, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!109, !664, !1329, !1372}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1333, file: !19, line: 440, baseType: !1369, size: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1333, file: !19, line: 441, baseType: !1397, size: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!109, !664, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1401, file: !19, line: 412, baseType: !7, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1401, file: !19, line: 413, baseType: !1405, size: 1344, offset: 64)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1406, size: 1344, elements: !260)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1418}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !19, line: 398, baseType: !7, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1406, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1406, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1406, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1406, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1406, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1406, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1406, file: !19, line: 406, baseType: !195, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1406, file: !19, line: 407, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 132, baseType: !191)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1406, file: !19, line: 408, baseType: !1417, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1333, file: !19, line: 442, baseType: !1348, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !665, file: !14, line: 1200, baseType: !1421, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !665, file: !14, line: 1201, baseType: !181, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !665, file: !14, line: 1202, baseType: !181, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !665, file: !14, line: 1203, baseType: !181, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !665, file: !14, line: 1204, baseType: !551, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !665, file: !14, line: 1205, baseType: !1429, size: 320, offset: 896)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1430, line: 48, size: 320, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1431 = !{!1432, !1433, !1434, !1435, !1436}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1429, file: !1430, line: 49, baseType: !778, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1429, file: !1430, line: 55, baseType: !778, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1429, file: !1430, line: 57, baseType: !788, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1429, file: !1430, line: 59, baseType: !732, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1429, file: !1430, line: 60, baseType: !173, size: 128, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !665, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !665, file: !14, line: 1207, baseType: !393, size: 32, offset: 1248)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !665, file: !14, line: 1209, baseType: !167, size: 64, offset: 1280)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !665, file: !14, line: 1211, baseType: !1441, size: 64, offset: 1344)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !665, file: !14, line: 1223, baseType: !1446, size: 64, offset: 1408)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !568, line: 34, size: 64, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1446, file: !568, line: 35, baseType: !571, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !665, file: !14, line: 1224, baseType: !173, size: 128, offset: 1472)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !665, file: !14, line: 1225, baseType: !1451, size: 64, offset: 1600)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !665, file: !14, line: 1226, baseType: !1454, size: 64, offset: 1664)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !665, file: !14, line: 1227, baseType: !1457, size: 64, offset: 1728)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !665, file: !14, line: 1228, baseType: !1460, size: 64, offset: 1792)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !665, file: !14, line: 1229, baseType: !1015, size: 128, offset: 1856)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !665, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !665, file: !14, line: 1231, baseType: !1465, size: 2496, offset: 2048)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1471, !1503}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1465, file: !19, line: 522, baseType: !7, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1465, file: !19, line: 523, baseType: !1429, size: 320, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1465, file: !19, line: 524, baseType: !1470, size: 192, offset: 384)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 192, elements: !260)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1465, file: !19, line: 525, baseType: !1472, size: 1728, offset: 576)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 1728, elements: !260)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1474)
!1474 = !{!1475, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1473, file: !19, line: 223, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1478)
!1478 = !{!1479, !1480, !1493, !1494}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1477, file: !19, line: 446, baseType: !109, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1477, file: !19, line: 447, baseType: !1481, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1483, file: !19, line: 313, baseType: !1182, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1483, file: !19, line: 314, baseType: !1182, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1483, file: !19, line: 315, baseType: !1182, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1483, file: !19, line: 316, baseType: !1182, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1483, file: !19, line: 317, baseType: !1296, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1483, file: !19, line: 318, baseType: !1296, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1483, file: !19, line: 319, baseType: !1296, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1483, file: !19, line: 320, baseType: !1326, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1477, file: !19, line: 448, baseType: !703, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1477, file: !19, line: 449, baseType: !1476, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1473, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1473, file: !19, line: 226, baseType: !173, size: 128, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1473, file: !19, line: 227, baseType: !181, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1473, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1473, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1473, file: !19, line: 230, baseType: !1262, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1473, file: !19, line: 231, baseType: !1262, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1473, file: !19, line: 232, baseType: !167, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1465, file: !19, line: 526, baseType: !1504, size: 192, offset: 2304)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1481, size: 192, elements: !260)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !665, file: !14, line: 1233, baseType: !1506, size: 2368, offset: 4544)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1507)
!1507 = !{!1508, !1509, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1506, file: !14, line: 1185, baseType: !410, size: 16)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1506, file: !14, line: 1186, baseType: !410, size: 16, offset: 16)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1506, file: !14, line: 1187, baseType: !1511, size: 2304, offset: 64)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1512, size: 2304, elements: !260)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1513, line: 12, size: 768, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1514 = !{!1515, !1529, !1530, !3613, !3614}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1512, file: !1513, line: 13, baseType: !1516, size: 384)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1517, line: 17, size: 384, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1518 = !{!1519, !1520, !1521, !1528}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1516, file: !1517, line: 18, baseType: !109, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1516, file: !1517, line: 19, baseType: !109, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1516, file: !1517, line: 20, baseType: !1522, size: 192, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1523, line: 41, baseType: !1524)
!1523 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1523, line: 37, size: 192, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !1523, line: 38, baseType: !373, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1524, file: !1523, line: 39, baseType: !173, size: 128, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1516, file: !1517, line: 22, baseType: !992, size: 128, align: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1512, file: !1513, line: 14, baseType: !846, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1512, file: !1513, line: 15, baseType: !1531, size: 64, offset: 448)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1532, line: 16, size: 64, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1531, file: !1532, line: 17, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1212, line: 746, size: 58368, elements: !1537)
!1537 = !{!1538, !1546, !1547, !1548, !1554, !1555, !1556, !1557, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1628, !1639, !1734, !1738, !1741, !1772, !1773, !1774, !1775, !1786, !1788, !1789, !1790, !1791, !1792, !1793, !1804, !1805, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1822, !1823, !1830, !1831, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2789, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2837, !2843, !2844, !2845, !2846, !2847, !2851, !2854, !2861, !2866, !2869, !2872, !2875, !2878, !3016, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3054, !3055, !3056, !3065, !3073, !3074, !3075, !3076, !3077, !3082, !3083, !3084, !3087, !3088, !3091, !3094, !3097, !3105, !3108, !3109, !3195, !3196, !3197, !3198, !3199, !3205, !3206, !3207, !3208, !3211, !3212, !3215, !3218, !3219, !3222, !3223, !3224, !3227, !3228, !3229, !3230, !3231, !3232, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3264, !3265, !3271, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3283, !3355, !3357, !3358, !3359, !3360, !3361, !3362, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3390, !3391, !3392}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1536, file: !1212, line: 752, baseType: !1539, size: 192)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1540, line: 56, size: 192, elements: !1541)
!1540 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1541 = !{!1542, !1543, !1544, !1545}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !1540, line: 57, baseType: !181, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1539, file: !1540, line: 58, baseType: !181, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1539, file: !1540, line: 59, baseType: !585, size: 32, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1539, file: !1540, line: 61, baseType: !585, size: 32, offset: 160)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1536, file: !1212, line: 754, baseType: !7, size: 32, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1536, file: !1212, line: 767, baseType: !167, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1536, file: !1212, line: 768, baseType: !1549, size: 32, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1550, line: 113, baseType: !1551)
!1550 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1550, line: 111, size: 32, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1551, file: !1550, line: 112, baseType: !393, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1536, file: !1212, line: 770, baseType: !7, size: 32, offset: 352)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1536, file: !1212, line: 771, baseType: !7, size: 32, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1536, file: !1212, line: 774, baseType: !109, size: 32, offset: 416)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1536, file: !1212, line: 775, baseType: !1558, size: 128, offset: 448)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1559, line: 58, size: 128, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1560 = !{!1561, !1567, !1572, !1573}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1558, file: !1559, line: 59, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1563, line: 60, size: 64, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1562, file: !1563, line: 61, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !1559, line: 60, baseType: !1568, size: 32, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1558, file: !1559, line: 60, size: 32, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1568, file: !1559, line: 61, baseType: !7, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1568, file: !1559, line: 62, baseType: !393, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1558, file: !1559, line: 65, baseType: !408, size: 16, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1558, file: !1559, line: 65, baseType: !408, size: 16, offset: 112)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1536, file: !1212, line: 776, baseType: !7, size: 32, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1536, file: !1212, line: 777, baseType: !181, size: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1536, file: !1212, line: 778, baseType: !1535, size: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1536, file: !1212, line: 787, baseType: !109, size: 32, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1536, file: !1212, line: 788, baseType: !109, size: 32, offset: 800)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1536, file: !1212, line: 790, baseType: !109, size: 32, offset: 832)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1536, file: !1212, line: 792, baseType: !109, size: 32, offset: 864)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1536, file: !1212, line: 793, baseType: !109, size: 32, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1536, file: !1212, line: 794, baseType: !109, size: 32, offset: 928)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1536, file: !1212, line: 795, baseType: !7, size: 32, offset: 960)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1536, file: !1212, line: 797, baseType: !1585, size: 2048, offset: 1024)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1212, line: 551, size: 2048, elements: !1586)
!1586 = !{!1587, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1607, !1610, !1611, !1612}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1585, file: !1212, line: 553, baseType: !1588, size: 128)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1212, line: 411, size: 128, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1588, file: !1212, line: 412, baseType: !181, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1588, file: !1212, line: 413, baseType: !585, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1585, file: !1212, line: 554, baseType: !886, size: 192, align: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1585, file: !1212, line: 555, baseType: !191, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1585, file: !1212, line: 556, baseType: !191, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1585, file: !1212, line: 558, baseType: !173, size: 128, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1585, file: !1212, line: 559, baseType: !7, size: 32, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1585, file: !1212, line: 561, baseType: !191, size: 64, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1585, file: !1212, line: 562, baseType: !191, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1585, file: !1212, line: 563, baseType: !191, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1585, file: !1212, line: 564, baseType: !191, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1585, file: !1212, line: 565, baseType: !784, size: 64, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1585, file: !1212, line: 566, baseType: !191, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1585, file: !1212, line: 568, baseType: !191, size: 64, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1585, file: !1212, line: 571, baseType: !109, size: 32, offset: 1088)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1585, file: !1212, line: 572, baseType: !1606, size: 64, offset: 1152)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1585, file: !1212, line: 574, baseType: !1608, size: 64, offset: 1216)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1212, line: 49, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1585, file: !1212, line: 576, baseType: !1608, size: 64, offset: 1280)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1585, file: !1212, line: 578, baseType: !181, size: 64, offset: 1344)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1585, file: !1212, line: 588, baseType: !1613, size: 512, align: 512, offset: 1536)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1212, line: 497, size: 512, align: 512, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1613, file: !1212, line: 498, baseType: !191, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1613, file: !1212, line: 499, baseType: !191, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1613, file: !1212, line: 500, baseType: !191, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1613, file: !1212, line: 501, baseType: !585, size: 32, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1613, file: !1212, line: 502, baseType: !585, size: 32, offset: 224)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1613, file: !1212, line: 503, baseType: !181, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1613, file: !1212, line: 504, baseType: !181, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1613, file: !1212, line: 505, baseType: !181, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1613, file: !1212, line: 506, baseType: !1624, size: 64, align: 64, offset: 448)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1212, line: 445, size: 64, align: 64, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1624, file: !1212, line: 446, baseType: !7, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1624, file: !1212, line: 447, baseType: !7, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1536, file: !1212, line: 798, baseType: !1629, size: 384, offset: 3072)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1212, line: 592, size: 384, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1629, file: !1212, line: 593, baseType: !173, size: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1629, file: !1212, line: 594, baseType: !181, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1629, file: !1212, line: 595, baseType: !181, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1629, file: !1212, line: 596, baseType: !7, size: 32, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1629, file: !1212, line: 597, baseType: !410, size: 16, offset: 288)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1629, file: !1212, line: 598, baseType: !410, size: 16, offset: 304)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1629, file: !1212, line: 600, baseType: !1638, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1536, file: !1212, line: 799, baseType: !1640, size: 1792, offset: 3456)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1212, line: 610, size: 1792, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1731, !1732}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1640, file: !1212, line: 611, baseType: !886, size: 192, align: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1640, file: !1212, line: 618, baseType: !191, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1640, file: !1212, line: 619, baseType: !191, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1640, file: !1212, line: 620, baseType: !191, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1640, file: !1212, line: 621, baseType: !191, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1640, file: !1212, line: 622, baseType: !191, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1640, file: !1212, line: 629, baseType: !784, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1640, file: !1212, line: 630, baseType: !191, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1640, file: !1212, line: 631, baseType: !7, size: 32, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1640, file: !1212, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1640, file: !1212, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1640, file: !1212, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1640, file: !1212, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1640, file: !1212, line: 662, baseType: !1656, size: 512, offset: 704)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1657)
!1657 = !{!1658, !1666, !1667, !1672, !1727, !1728, !1729, !1730}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1656, file: !25, line: 119, baseType: !1659, size: 256)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1660, line: 9, size: 256, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1659, file: !1660, line: 10, baseType: !886, size: 192, align: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1659, file: !1660, line: 11, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1665, line: 29, baseType: !784)
!1665 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1656, file: !25, line: 120, baseType: !1664, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1656, file: !25, line: 121, baseType: !1668, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!24, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1656, file: !25, line: 122, baseType: !1673, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1675)
!1675 = !{!1676, !1701, !1702, !1705, !1710, !1711, !1722, !1726}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1674, file: !25, line: 160, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1678, file: !25, line: 216, baseType: !732, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1678, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1678, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1678, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1678, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1678, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1678, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1678, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1678, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1678, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1678, file: !25, line: 227, baseType: !410, size: 16, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1678, file: !25, line: 228, baseType: !410, size: 16, offset: 208)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1678, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1678, file: !25, line: 235, baseType: !1664, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1678, file: !25, line: 236, baseType: !1671, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1678, file: !25, line: 237, baseType: !1664, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1678, file: !25, line: 238, baseType: !1671, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1678, file: !25, line: 239, baseType: !1698, size: 4096, align: 512, offset: 512)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1674, size: 4096, align: 512, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 8)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1674, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1674, file: !25, line: 162, baseType: !1703, size: 32, offset: 96)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 32, baseType: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !472, line: 96, baseType: !109)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1674, file: !25, line: 163, baseType: !1706, size: 32, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !558, line: 274, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !558, line: 274, size: 32, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1707, file: !558, line: 274, baseType: !562, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1674, file: !25, line: 164, baseType: !1671, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1674, file: !25, line: 165, baseType: !1712, size: 128, offset: 256)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1660, line: 14, size: 128, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1712, file: !1660, line: 15, baseType: !1715, size: 128)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !887, line: 26, size: 128, elements: !1716)
!1716 = !{!1717, !1721}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1715, file: !887, line: 27, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !887, line: 12, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1718, file: !887, line: 13, baseType: !891, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1715, file: !887, line: 28, baseType: !891, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1674, file: !25, line: 166, baseType: !1723, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1664}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1674, file: !25, line: 167, baseType: !1664, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1656, file: !25, line: 123, baseType: !401, size: 8, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1656, file: !25, line: 124, baseType: !401, size: 8, offset: 456)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1656, file: !25, line: 125, baseType: !401, size: 8, offset: 464)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1656, file: !25, line: 126, baseType: !401, size: 8, offset: 472)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1640, file: !1212, line: 671, baseType: !1656, size: 512, offset: 1216)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1640, file: !1212, line: 679, baseType: !1733, size: 64, offset: 1728)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1536, file: !1212, line: 800, baseType: !1735, size: 64, offset: 5248)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1212, line: 800, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1536, file: !1212, line: 809, baseType: !1739, size: 64, offset: 5312)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1212, line: 70, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1536, file: !1212, line: 825, baseType: !1742, size: 2048, align: 512, offset: 5632)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1212, line: 509, size: 2048, align: 512, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1742, file: !1212, line: 511, baseType: !191, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1742, file: !1212, line: 512, baseType: !191, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1742, file: !1212, line: 513, baseType: !191, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1742, file: !1212, line: 514, baseType: !191, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1742, file: !1212, line: 515, baseType: !191, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1742, file: !1212, line: 516, baseType: !191, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1742, file: !1212, line: 518, baseType: !191, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1742, file: !1212, line: 519, baseType: !191, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1742, file: !1212, line: 520, baseType: !784, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1742, file: !1212, line: 522, baseType: !191, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1742, file: !1212, line: 523, baseType: !191, size: 64, offset: 640)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1742, file: !1212, line: 524, baseType: !784, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1742, file: !1212, line: 526, baseType: !784, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1742, file: !1212, line: 527, baseType: !191, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1742, file: !1212, line: 529, baseType: !191, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1742, file: !1212, line: 530, baseType: !191, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1742, file: !1212, line: 531, baseType: !191, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1742, file: !1212, line: 532, baseType: !191, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1742, file: !1212, line: 533, baseType: !191, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1742, file: !1212, line: 535, baseType: !191, size: 64, offset: 1216)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1742, file: !1212, line: 536, baseType: !191, size: 64, offset: 1280)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1742, file: !1212, line: 537, baseType: !191, size: 64, offset: 1344)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1742, file: !1212, line: 538, baseType: !191, size: 64, offset: 1408)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1742, file: !1212, line: 539, baseType: !191, size: 64, offset: 1472)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1742, file: !1212, line: 540, baseType: !191, size: 64, offset: 1536)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1742, file: !1212, line: 541, baseType: !191, size: 64, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1742, file: !1212, line: 542, baseType: !191, size: 64, offset: 1664)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1742, file: !1212, line: 543, baseType: !191, size: 64, offset: 1728)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1536, file: !1212, line: 833, baseType: !7, size: 32, offset: 7680)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1536, file: !1212, line: 836, baseType: !7, size: 32, offset: 7712)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1536, file: !1212, line: 837, baseType: !109, size: 32, offset: 7744)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1536, file: !1212, line: 838, baseType: !1776, size: 64, offset: 7808)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1779, line: 19, baseType: !1780)
!1779 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1779, line: 19, size: 64, elements: !1781)
!1781 = !{!1782}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1780, file: !1779, line: 19, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !1784)
!1784 = !{!1785}
!1785 = !DISubrange(count: 1)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1536, file: !1212, line: 839, baseType: !1787, size: 64, offset: 7872)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1536, file: !1212, line: 840, baseType: !1778, size: 64, offset: 7936)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1536, file: !1212, line: 841, baseType: !167, size: 64, offset: 8000)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1536, file: !1212, line: 843, baseType: !410, size: 16, offset: 8064)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1536, file: !1212, line: 845, baseType: !410, size: 16, offset: 8080)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1536, file: !1212, line: 848, baseType: !109, size: 32, offset: 8096)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1536, file: !1212, line: 849, baseType: !1794, size: 32, offset: 8128)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1212, line: 718, size: 32, elements: !1795)
!1795 = !{!1796, !1803}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1794, file: !1212, line: 724, baseType: !1797, size: 32)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1794, file: !1212, line: 719, size: 32, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1797, file: !1212, line: 720, baseType: !401, size: 8)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1797, file: !1212, line: 721, baseType: !401, size: 8, offset: 8)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1797, file: !1212, line: 722, baseType: !401, size: 8, offset: 16)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1797, file: !1212, line: 723, baseType: !401, size: 8, offset: 24)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1794, file: !1212, line: 725, baseType: !585, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1536, file: !1212, line: 850, baseType: !173, size: 128, offset: 8192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1536, file: !1212, line: 851, baseType: !1806, size: 64, offset: 8320)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1212, line: 60, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1536, file: !1212, line: 855, baseType: !181, size: 64, offset: 8384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1536, file: !1212, line: 856, baseType: !401, size: 8, offset: 8448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1536, file: !1212, line: 857, baseType: !401, size: 8, offset: 8456)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1536, file: !1212, line: 858, baseType: !109, size: 32, offset: 8480)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1536, file: !1212, line: 859, baseType: !173, size: 128, offset: 8512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1536, file: !1212, line: 860, baseType: !109, size: 32, offset: 8640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1536, file: !1212, line: 861, baseType: !173, size: 128, offset: 8704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1536, file: !1212, line: 873, baseType: !1816, size: 256, offset: 8832)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1212, line: 376, size: 256, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1816, file: !1212, line: 381, baseType: !181, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1816, file: !1212, line: 384, baseType: !195, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1816, file: !1212, line: 389, baseType: !195, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1816, file: !1212, line: 392, baseType: !195, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1536, file: !1212, line: 875, baseType: !173, size: 128, offset: 9088)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1536, file: !1212, line: 877, baseType: !1824, size: 320, offset: 9216)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1825, line: 86, size: 320, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1824, file: !1825, line: 87, baseType: !109, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1824, file: !1825, line: 88, baseType: !173, size: 128, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1824, file: !1825, line: 89, baseType: !173, size: 128, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1536, file: !1212, line: 878, baseType: !886, size: 192, align: 64, offset: 9536)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1536, file: !1212, line: 881, baseType: !1832, size: 64, offset: 9728)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1834)
!1834 = !{!1835, !2708}
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !38, line: 734, baseType: !1836, size: 10240)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1833, file: !38, line: 734, size: 10240, elements: !1837)
!1837 = !{!1838, !1842, !1855, !2585, !2586, !2587, !2588, !2589, !2590, !2597, !2598, !2599, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2638, !2640, !2643, !2688, !2689, !2690, !2693, !2694, !2695, !2698, !2699, !2700, !2706, !2707}
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !38, line: 739, baseType: !1839, size: 512, align: 512)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1836, file: !38, line: 739, size: 512, align: 512, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1839, file: !38, line: 747, baseType: !393, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1836, file: !38, line: 750, baseType: !1843, size: 128, offset: 512)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1844, line: 218, size: 128, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1845 = !{!1846, !1853, !1854}
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !1844, line: 219, baseType: !1847, size: 32)
!1847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1843, file: !1844, line: 219, size: 32, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1847, file: !1844, line: 220, baseType: !373, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1847, file: !1844, line: 221, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1844, line: 197, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1844, line: 197, elements: !1058)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1843, file: !1844, line: 223, baseType: !7, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1843, file: !1844, line: 224, baseType: !167, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1836, file: !38, line: 752, baseType: !1856, size: 64, offset: 640)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!181, !1859, !181, !181, !181, !181}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1861)
!1861 = !{!1862, !1868, !1869, !1871, !1872, !1873, !1874, !1875, !1925, !2115, !2124, !2125, !2126, !2575, !2576, !2577, !2578, !2580, !2581, !2584}
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !14, line: 995, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1860, file: !14, line: 995, size: 128, elements: !1864)
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1863, file: !14, line: 996, baseType: !1562, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1863, file: !14, line: 997, baseType: !992, size: 128, align: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1863, file: !14, line: 998, baseType: !7, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1860, file: !14, line: 1005, baseType: !373, size: 32, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1860, file: !14, line: 1006, baseType: !1870, size: 32, offset: 160)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 156, baseType: !7)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1860, file: !14, line: 1007, baseType: !778, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1860, file: !14, line: 1008, baseType: !774, size: 256, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1860, file: !14, line: 1009, baseType: !674, size: 64, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1860, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1860, file: !14, line: 1011, baseType: !1876, size: 256, offset: 640)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1877)
!1877 = !{!1878, !1899, !1921, !1922, !1923, !1924}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !14, line: 949, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1880, line: 34, baseType: !1881)
!1880 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1880, line: 25, size: 64, elements: !1882)
!1882 = !{!1883}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1881, file: !1880, line: 26, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1885, line: 27, baseType: !1886)
!1885 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1885, line: 13, size: 64, elements: !1887)
!1887 = !{!1888, !1898}
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !1885, line: 14, baseType: !1889, size: 32)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !1885, line: 14, size: 32, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1889, file: !1885, line: 15, baseType: !393, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !1885, line: 16, baseType: !1893, size: 32)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !1885, line: 16, size: 32, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1893, file: !1885, line: 18, baseType: !401, size: 8)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1893, file: !1885, line: 19, baseType: !1897, size: 24, offset: 8)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 24, elements: !260)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1886, file: !1885, line: 26, baseType: !385, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1876, file: !14, line: 950, baseType: !1900, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1908, !1909, !1910, !1911}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1901, file: !30, line: 61, baseType: !1549, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1901, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1901, file: !30, line: 63, baseType: !373, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1901, file: !30, line: 65, baseType: !1907, size: 256, offset: 128)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 256, elements: !210)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1901, file: !30, line: 66, baseType: !1138, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1901, file: !30, line: 68, baseType: !1522, size: 192, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1901, file: !30, line: 69, baseType: !992, size: 128, align: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1901, file: !30, line: 70, baseType: !1912, offset: 768)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, elements: !1919)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1913, file: !30, line: 55, baseType: !109, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1913, file: !30, line: 56, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1919 = !{!1920}
!1920 = !DISubrange(count: -1)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1876, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1876, file: !14, line: 952, baseType: !522, size: 32, offset: 160)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1876, file: !14, line: 952, baseType: !522, size: 32, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1876, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1860, file: !14, line: 1012, baseType: !1926, size: 64, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1929, line: 110, size: 1472, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1947, !1948, !1949, !1950, !1951, !1952, !2060, !2061, !2062, !2063, !2064, !2095, !2098, !2102, !2110}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1928, file: !1929, line: 111, baseType: !778, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1928, file: !1929, line: 112, baseType: !522, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1928, file: !1929, line: 113, baseType: !531, size: 32, offset: 96)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1928, file: !1929, line: 114, baseType: !522, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1928, file: !1929, line: 115, baseType: !531, size: 32, offset: 160)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1928, file: !1929, line: 116, baseType: !522, size: 32, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1928, file: !1929, line: 117, baseType: !531, size: 32, offset: 224)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1928, file: !1929, line: 118, baseType: !522, size: 32, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1928, file: !1929, line: 119, baseType: !531, size: 32, offset: 288)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1928, file: !1929, line: 120, baseType: !7, size: 32, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1928, file: !1929, line: 121, baseType: !1942, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1943, line: 24, baseType: !1944)
!1943 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1943, line: 24, size: 64, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1944, file: !1943, line: 24, baseType: !191, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1928, file: !1929, line: 122, baseType: !1942, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1928, file: !1929, line: 123, baseType: !1942, size: 64, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1928, file: !1929, line: 124, baseType: !1942, size: 64, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1928, file: !1929, line: 125, baseType: !1942, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1928, file: !1929, line: 127, baseType: !200, size: 8, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1928, file: !1929, line: 129, baseType: !1953, size: 64, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1955, line: 195, size: 1728, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1956 = !{!1957, !1958, !1961, !1966, !1967, !1970, !1971, !1976, !1977, !1978, !1979, !1982, !1983, !1984, !1985, !1986, !2024, !2045}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1954, file: !1955, line: 196, baseType: !1549, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1954, file: !1955, line: 197, baseType: !1959, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1955, line: 28, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 104, baseType: !770)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !1955, line: 198, baseType: !1962, size: 192, offset: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !1955, line: 198, size: 192, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1962, file: !1955, line: 199, baseType: !173, size: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1962, file: !1955, line: 200, baseType: !886, size: 192, align: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1954, file: !1955, line: 205, baseType: !1429, size: 320, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1954, file: !1955, line: 206, baseType: !1968, size: 64, offset: 576)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1955, line: 206, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1954, file: !1955, line: 207, baseType: !167, size: 64, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !1955, line: 208, baseType: !1972, size: 64, offset: 704)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !1955, line: 208, size: 64, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1972, file: !1955, line: 209, baseType: !1270, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1972, file: !1955, line: 210, baseType: !1270, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1954, file: !1955, line: 212, baseType: !1270, size: 64, offset: 768)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1954, file: !1955, line: 213, baseType: !522, size: 32, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1954, file: !1955, line: 214, baseType: !531, size: 32, offset: 864)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1954, file: !1955, line: 215, baseType: !1980, size: 32, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1955, line: 31, baseType: !1981)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 110, baseType: !585)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1954, file: !1955, line: 216, baseType: !410, size: 16, offset: 928)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1954, file: !1955, line: 217, baseType: !410, size: 16, offset: 944)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1954, file: !1955, line: 221, baseType: !910, size: 16, offset: 960)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !1955, line: 228, baseType: !181, size: 64, offset: 1024)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !1955, line: 245, baseType: !1987, size: 320, offset: 1088)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !1955, line: 245, size: 320, elements: !1988)
!1988 = !{!1989, !2016}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1987, file: !1955, line: 246, baseType: !1990, size: 320)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1955, line: 114, size: 320, elements: !1991)
!1991 = !{!1992, !1993, !2005, !2008, !2015}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1990, file: !1955, line: 116, baseType: !181, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1955, line: 117, baseType: !1994, size: 64, offset: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1955, line: 117, size: 64, elements: !1995)
!1995 = !{!1996, !2004}
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1994, file: !1955, line: 118, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1994, file: !1955, line: 118, size: 64, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1997, file: !1955, line: 120, baseType: !408, size: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1997, file: !1955, line: 121, baseType: !2001, size: 48, offset: 16)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 48, elements: !2002)
!2002 = !{!2003}
!2003 = !DISubrange(count: 6)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1994, file: !1955, line: 127, baseType: !181, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1990, file: !1955, line: 129, baseType: !2006, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1955, line: 102, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1990, file: !1955, line: 130, baseType: !2009, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1955, line: 108, size: 192, elements: !2011)
!2011 = !{!2012, !2013, !2014}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2010, file: !1955, line: 109, baseType: !992, size: 128, align: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2010, file: !1955, line: 110, baseType: !1549, size: 32, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2010, file: !1955, line: 111, baseType: !854, size: 8, offset: 160)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1990, file: !1955, line: 131, baseType: !247, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !1955, line: 247, baseType: !2017, size: 320)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1955, line: 247, size: 320, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022, !2023}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2017, file: !1955, line: 248, baseType: !181, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2017, file: !1955, line: 249, baseType: !181, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2017, file: !1955, line: 250, baseType: !2006, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2017, file: !1955, line: 251, baseType: !2009, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2017, file: !1955, line: 252, baseType: !440, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !1955, line: 260, baseType: !2025, size: 256, offset: 1408)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !1955, line: 260, size: 256, elements: !2026)
!2026 = !{!2027, !2033}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2025, file: !1955, line: 261, baseType: !2028, size: 256)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1955, line: 134, size: 256, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2028, file: !1955, line: 135, baseType: !167, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2028, file: !1955, line: 136, baseType: !2032, size: 256)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !210)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !1955, line: 262, baseType: !2034, size: 256)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2025, file: !1955, line: 262, size: 256, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2034, file: !1955, line: 264, baseType: !173, size: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2034, file: !1955, line: 265, baseType: !2038, size: 128, offset: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2039, line: 22, size: 128, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2040 = !{!2041, !2044}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2038, file: !2039, line: 23, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2039, line: 23, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2038, file: !2039, line: 24, baseType: !181, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1954, file: !1955, line: 280, baseType: !2046, size: 64, offset: 1664)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1955, line: 176, size: 192, elements: !2048)
!2048 = !{!2049, !2058, !2059}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2047, file: !1955, line: 177, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1955, line: 171, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!109, !1953, !2054, !2056, !1953}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2047, file: !1955, line: 178, baseType: !1953, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2047, file: !1955, line: 179, baseType: !2006, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1928, file: !1929, line: 130, baseType: !1953, size: 64, offset: 832)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1928, file: !1929, line: 131, baseType: !1953, size: 64, offset: 896)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1928, file: !1929, line: 132, baseType: !1953, size: 64, offset: 960)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1928, file: !1929, line: 135, baseType: !167, size: 64, offset: 1024)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1928, file: !1929, line: 137, baseType: !2065, size: 64, offset: 1088)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2067, line: 14, size: 1088, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2068 = !{!2069, !2070, !2079, !2080, !2081, !2082, !2083, !2084}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2066, file: !2067, line: 15, baseType: !1549, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2066, file: !2067, line: 17, baseType: !2071, size: 320, offset: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2072, line: 22, size: 320, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2073 = !{!2074, !2075, !2076, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2071, file: !2072, line: 23, baseType: !732, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2071, file: !2072, line: 24, baseType: !784, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2071, file: !2072, line: 26, baseType: !173, size: 128, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2071, file: !2072, line: 28, baseType: !2078, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2066, file: !2067, line: 19, baseType: !181, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2066, file: !2067, line: 20, baseType: !778, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2066, file: !2067, line: 23, baseType: !1015, size: 128, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2066, file: !2067, line: 24, baseType: !522, size: 32, offset: 640)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2066, file: !2067, line: 29, baseType: !778, size: 64, offset: 704)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2066, file: !2067, line: 36, baseType: !2085, size: 320, offset: 768)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2086, line: 15, size: 320, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2085, file: !2086, line: 16, baseType: !732, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2085, file: !2086, line: 18, baseType: !109, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2085, file: !2086, line: 19, baseType: !109, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2085, file: !2086, line: 20, baseType: !109, size: 32, offset: 96)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2085, file: !2086, line: 21, baseType: !109, size: 32, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2085, file: !2086, line: 22, baseType: !181, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 23, baseType: !181, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1928, file: !1929, line: 138, baseType: !2096, size: 64, offset: 1152)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1928, file: !1929, line: 139, baseType: !2099, size: 64, offset: 1216)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2101, line: 16, flags: DIFlagFwdDecl)
!2101 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1928, file: !1929, line: 140, baseType: !2103, size: 64, offset: 1280)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1929, line: 25, size: 64, elements: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2104, file: !1929, line: 26, baseType: !393, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2104, file: !1929, line: 27, baseType: !109, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2104, file: !1929, line: 28, baseType: !2109, offset: 64)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, elements: !1919)
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !1928, file: !1929, line: 142, baseType: !2111, size: 128, offset: 1344)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1928, file: !1929, line: 142, size: 128, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2111, file: !1929, line: 143, baseType: !109, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2111, file: !1929, line: 144, baseType: !992, size: 128, align: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1860, file: !14, line: 1013, baseType: !2116, size: 256, offset: 960)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2116, file: !14, line: 971, baseType: !181, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2116, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2116, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2116, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2116, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2116, file: !14, line: 976, baseType: !674, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1860, file: !14, line: 1014, baseType: !1341, size: 128, offset: 1216)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1860, file: !14, line: 1015, baseType: !516, size: 64, offset: 1344)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1860, file: !14, line: 1016, baseType: !2127, size: 64, offset: 1408)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2130)
!2130 = !{!2131, !2132, !2136, !2141, !2145, !2174, !2175, !2181, !2194, !2202, !2206, !2207, !2497, !2498, !2502, !2507, !2508, !2512, !2516, !2522, !2523, !2527, !2528, !2534, !2538, !2542, !2548, !2552, !2556, !2560, !2564, !2565, !2571}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2129, file: !14, line: 1915, baseType: !703, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2129, file: !14, line: 1916, baseType: !2133, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!674, !1859, !674, !109}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2129, file: !14, line: 1917, baseType: !2137, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!470, !1859, !440, !484, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2129, file: !14, line: 1918, baseType: !2142, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!470, !1859, !247, !484, !2140}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2129, file: !14, line: 1919, baseType: !2146, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!470, !2149, !2171}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2158, !2159, !2160, !2161}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2150, file: !14, line: 374, baseType: !1859, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2150, file: !14, line: 375, baseType: !674, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2150, file: !14, line: 376, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !2149, !235}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2150, file: !14, line: 377, baseType: !167, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2150, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2150, file: !14, line: 379, baseType: !408, size: 16, offset: 288)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !14, line: 380, baseType: !2162, size: 64, offset: 320)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !14, line: 380, size: 64, elements: !2163)
!2163 = !{!2164, !2167}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2162, file: !14, line: 386, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2162, file: !14, line: 395, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!470, !167}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2173, line: 17, flags: DIFlagFwdDecl)
!2173 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2129, file: !14, line: 1920, baseType: !2146, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2129, file: !14, line: 1921, baseType: !2176, size: 64, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!109, !2149, !2179, !7}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2129, file: !14, line: 1923, baseType: !2182, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!109, !1859, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2187)
!2187 = !{!2188, !2193}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2186, file: !14, line: 1859, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2190)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!854, !2185, !247, !109, !674, !191, !7}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2186, file: !14, line: 1860, baseType: !674, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2129, file: !14, line: 1924, baseType: !2195, size: 64, offset: 512)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2198, !1859, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2199, line: 59, baseType: !7)
!2199 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !689, line: 31, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2129, file: !14, line: 1925, baseType: !2203, size: 64, offset: 576)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!235, !1859, !7, !181}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2129, file: !14, line: 1926, baseType: !2203, size: 64, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2129, file: !14, line: 1927, baseType: !2208, size: 64, offset: 704)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!109, !1859, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2213)
!2213 = !{!2214, !2223, !2224, !2232, !2239, !2240, !2245, !2246, !2251, !2252, !2255, !2490, !2491, !2492, !2493, !2494, !2495}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !38, line: 628, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !38, line: 628, size: 128, elements: !2216)
!2216 = !{!2217, !2222}
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !38, line: 629, baseType: !2218, size: 128)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !38, line: 629, size: 128, elements: !2219)
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2218, file: !38, line: 631, baseType: !181, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2218, file: !38, line: 632, baseType: !181, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2215, file: !38, line: 635, baseType: !992, size: 128, align: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2212, file: !38, line: 639, baseType: !1832, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2212, file: !38, line: 640, baseType: !2225, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2226, line: 297, baseType: !2227)
!2226 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2226, line: 297, size: 64, elements: !2228)
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2227, file: !2226, line: 297, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2231, line: 19, baseType: !181)
!2231 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !38, line: 646, baseType: !2233, size: 64, offset: 256)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !38, line: 646, size: 64, elements: !2234)
!2234 = !{!2235, !2238}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2233, file: !38, line: 647, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2237)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !181)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2233, file: !38, line: 648, baseType: !2237, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2212, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2212, file: !38, line: 667, baseType: !2241, size: 64, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2243)
!2243 = !{!2244}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2242, file: !38, line: 580, baseType: !1429, size: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2212, file: !38, line: 670, baseType: !854, size: 8, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2212, file: !38, line: 681, baseType: !2247, size: 256, offset: 512)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !38, line: 678, size: 256, elements: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2247, file: !38, line: 679, baseType: !886, size: 192, align: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2247, file: !38, line: 680, baseType: !181, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2212, file: !38, line: 689, baseType: !173, size: 128, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2212, file: !38, line: 691, baseType: !2253, size: 64, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2212, file: !38, line: 694, baseType: !2256, size: 64, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2259, line: 563, size: 1024, elements: !2260)
!2259 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2260 = !{!2261, !2265, !2266, !2270, !2274, !2278, !2454, !2458, !2462, !2466, !2467, !2468, !2472, !2476, !2482, !2486}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2258, file: !2259, line: 564, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !2211}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2258, file: !2259, line: 569, baseType: !2262, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2258, file: !2259, line: 571, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!109, !2211, !181}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2258, file: !2259, line: 572, baseType: !2271, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!109, !2211}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2258, file: !2259, line: 578, baseType: !2275, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!109, !2211, !181, !181, !181}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2258, file: !2259, line: 580, baseType: !2279, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2259, line: 512, size: 896, elements: !2285)
!2285 = !{!2286, !2294, !2295, !2302, !2309, !2319, !2447, !2448, !2450, !2452}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !2259, line: 513, baseType: !2287, size: 320)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !2259, line: 513, size: 320, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2287, file: !2259, line: 514, baseType: !2211, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2287, file: !2259, line: 515, baseType: !226, size: 32, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2287, file: !2259, line: 516, baseType: !181, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2287, file: !2259, line: 517, baseType: !181, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2287, file: !2259, line: 518, baseType: !181, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !2259, line: 520, baseType: !37, size: 32, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2284, file: !2259, line: 522, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2231, line: 22, baseType: !2298)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2231, line: 22, size: 64, elements: !2299)
!2299 = !{!2300}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2298, file: !2231, line: 22, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2231, line: 15, baseType: !181)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2284, file: !2259, line: 524, baseType: !2303, size: 64, offset: 448)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2226, line: 372, baseType: !2305)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2226, line: 372, size: 64, elements: !2306)
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2305, file: !2226, line: 372, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2231, line: 16, baseType: !181)
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !2259, line: 527, baseType: !2310, size: 64, offset: 512)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !2259, line: 527, size: 64, elements: !2311)
!2311 = !{!2312, !2318}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2310, file: !2259, line: 528, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2231, line: 21, baseType: !2314)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2231, line: 21, size: 64, elements: !2315)
!2315 = !{!2316}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2314, file: !2231, line: 21, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2231, line: 14, baseType: !181)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2310, file: !2259, line: 529, baseType: !2297, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2284, file: !2259, line: 534, baseType: !2320, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2322)
!2322 = !{!2323, !2324, !2441, !2446}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !38, line: 75, baseType: !181, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2321, file: !38, line: 83, baseType: !2325, size: 320, offset: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2321, file: !38, line: 83, size: 320, elements: !2326)
!2326 = !{!2327, !2348, !2362, !2366, !2440}
!2327 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !38, line: 84, baseType: !2328, size: 320)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2325, file: !38, line: 84, size: 320, elements: !2329)
!2329 = !{!2330, !2341, !2342, !2347}
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !38, line: 90, baseType: !2331, size: 128)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !38, line: 90, size: 128, elements: !2332)
!2332 = !{!2333, !2334, !2339, !2340}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2331, file: !38, line: 91, baseType: !173, size: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2331, file: !38, line: 94, baseType: !2335, size: 128)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2331, file: !38, line: 94, size: 128, elements: !2336)
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2335, file: !38, line: 96, baseType: !167, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2335, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2331, file: !38, line: 102, baseType: !173, size: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2331, file: !38, line: 103, baseType: !173, size: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2328, file: !38, line: 106, baseType: !512, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !38, line: 107, baseType: !2343, size: 64, offset: 192)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !38, line: 107, size: 64, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2343, file: !38, line: 108, baseType: !181, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2343, file: !38, line: 109, baseType: !181, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2328, file: !38, line: 117, baseType: !181, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !38, line: 119, baseType: !2349, size: 320)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2325, file: !38, line: 119, size: 320, elements: !2350)
!2350 = !{!2351, !2352, !2355, !2356, !2357}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2349, file: !38, line: 124, baseType: !181, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2349, file: !38, line: 125, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2349, file: !38, line: 126, baseType: !181, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2349, file: !38, line: 127, baseType: !181, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !2349, file: !38, line: 128, baseType: !2358, size: 64, offset: 256)
!2358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2349, file: !38, line: 128, size: 64, elements: !2359)
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2358, file: !38, line: 133, baseType: !181, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2358, file: !38, line: 138, baseType: !778, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !38, line: 141, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2325, file: !38, line: 141, size: 64, elements: !2364)
!2364 = !{!2365}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2363, file: !38, line: 142, baseType: !181, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !38, line: 144, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2325, file: !38, line: 144, size: 128, elements: !2368)
!2368 = !{!2369, !2439}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2367, file: !38, line: 146, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2372)
!2372 = !{!2373, !2382, !2403, !2404, !2405, !2406, !2407, !2421, !2422, !2423}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2371, file: !54, line: 127, baseType: !2374, size: 384)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2374, file: !54, line: 22, baseType: !181, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2374, file: !54, line: 23, baseType: !231, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2374, file: !54, line: 24, baseType: !231, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2374, file: !54, line: 25, baseType: !181, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2374, file: !54, line: 26, baseType: !181, size: 64, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2374, file: !54, line: 27, baseType: !181, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2371, file: !54, line: 128, baseType: !2383, size: 128, offset: 384)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2384, line: 105, size: 128, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2383, file: !2384, line: 110, baseType: !181, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2383, file: !2384, line: 118, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2384, line: 95, size: 448, elements: !2390)
!2390 = !{!2391, !2392, !2398, !2399, !2400, !2401, !2402}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2389, file: !2384, line: 96, baseType: !778, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2389, file: !2384, line: 97, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2384, line: 60, baseType: !2395)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2389, file: !2384, line: 98, baseType: !2393, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2389, file: !2384, line: 99, baseType: !854, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2389, file: !2384, line: 100, baseType: !854, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2389, file: !2384, line: 101, baseType: !992, size: 128, align: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2389, file: !2384, line: 102, baseType: !2397, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2371, file: !54, line: 129, baseType: !723, size: 256, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2371, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2371, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2371, file: !54, line: 132, baseType: !181, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2371, file: !54, line: 133, baseType: !2408, size: 64, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2410)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2411)
!2411 = !{!2412, !2416, !2417}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2410, file: !54, line: 83, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2320}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2410, file: !54, line: 89, baseType: !2279, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2410, file: !54, line: 100, baseType: !2418, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!109, !2370, !181, !181, !109}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2371, file: !54, line: 134, baseType: !167, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2371, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !54, line: 136, baseType: !2424, size: 128, offset: 1088)
!2424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !54, line: 136, size: 128, elements: !2425)
!2425 = !{!2426, !2432}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2424, file: !54, line: 137, baseType: !2427, size: 128)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2428, line: 6, size: 128, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2427, file: !2428, line: 7, baseType: !191, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2427, file: !2428, line: 8, baseType: !191, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !2424, file: !54, line: 138, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2424, file: !54, line: 138, elements: !2434)
!2434 = !{!2435, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2433, file: !54, line: 138, baseType: !2436)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2433, file: !54, line: 138, elements: !1058)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2433, file: !54, line: 138, baseType: !2438)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2427, elements: !1919)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2367, file: !38, line: 147, baseType: !167, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2325, file: !38, line: 161, baseType: !992, size: 128, align: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2321, file: !38, line: 164, baseType: !2442, size: 32, offset: 384)
!2442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2321, file: !38, line: 164, size: 32, elements: !2443)
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2442, file: !38, line: 169, baseType: !393, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2442, file: !38, line: 177, baseType: !7, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2321, file: !38, line: 181, baseType: !393, size: 32, offset: 416)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2284, file: !2259, line: 535, baseType: !2320, size: 64, offset: 640)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2284, file: !2259, line: 541, baseType: !2449, size: 64, offset: 704)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2284, file: !2259, line: 545, baseType: !2451, size: 64, offset: 768)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2284, file: !2259, line: 549, baseType: !2453, size: 64, offset: 832)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2226, line: 520, baseType: !2320)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2258, file: !2259, line: 581, baseType: !2455, size: 64, offset: 384)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!2282, !2283, !7}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2258, file: !2259, line: 582, baseType: !2459, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!2282, !2283, !181, !181}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2258, file: !2259, line: 584, baseType: !2463, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!181, !2211}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2258, file: !2259, line: 588, baseType: !2279, size: 64, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2258, file: !2259, line: 591, baseType: !2279, size: 64, offset: 640)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2258, file: !2259, line: 597, baseType: !2469, size: 64, offset: 704)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!109, !2211, !181, !167, !109, !109}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2258, file: !2259, line: 603, baseType: !2473, size: 64, offset: 768)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!247, !2211}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2258, file: !2259, line: 613, baseType: !2477, size: 64, offset: 832)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!109, !2211, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2258, file: !2259, line: 625, baseType: !2483, size: 64, offset: 896)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!2480, !2211, !181}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2258, file: !2259, line: 633, baseType: !2487, size: 64, offset: 960)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!2320, !2211, !181}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2212, file: !38, line: 697, baseType: !181, size: 64, offset: 1024)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2212, file: !38, line: 699, baseType: !1859, size: 64, offset: 1088)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2212, file: !38, line: 700, baseType: !167, size: 64, offset: 1152)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2212, file: !38, line: 711, baseType: !778, size: 64, offset: 1216)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2212, file: !38, line: 717, baseType: !2480, size: 64, offset: 1280)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2212, file: !38, line: 722, baseType: !2496, offset: 1344)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1058)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2129, file: !14, line: 1928, baseType: !181, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2129, file: !14, line: 1929, baseType: !2499, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!109, !516, !1859}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2129, file: !14, line: 1930, baseType: !2503, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!109, !1859, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !167)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2129, file: !14, line: 1931, baseType: !2499, size: 64, offset: 960)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2129, file: !14, line: 1932, baseType: !2509, size: 64, offset: 1024)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!109, !1859, !674, !674, !109}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2129, file: !14, line: 1933, baseType: !2513, size: 64, offset: 1088)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!109, !109, !1859, !109}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2129, file: !14, line: 1934, baseType: !2517, size: 64, offset: 1152)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!109, !1859, !109, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2129, file: !14, line: 1935, baseType: !1856, size: 64, offset: 1216)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2129, file: !14, line: 1936, baseType: !2524, size: 64, offset: 1280)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!109, !109}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2129, file: !14, line: 1937, baseType: !2517, size: 64, offset: 1344)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2129, file: !14, line: 1938, baseType: !2529, size: 64, offset: 1408)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!470, !2532, !1859, !2140, !484, !7}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1212, line: 59, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2129, file: !14, line: 1939, baseType: !2535, size: 64, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!470, !1859, !2140, !2532, !484, !7}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2129, file: !14, line: 1940, baseType: !2539, size: 64, offset: 1536)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !1859}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2129, file: !14, line: 1941, baseType: !2543, size: 64, offset: 1600)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!109, !1859, !109, !2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2129, file: !14, line: 1942, baseType: !2549, size: 64, offset: 1664)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!235, !1859, !109, !674, !674}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2129, file: !14, line: 1944, baseType: !2553, size: 64, offset: 1728)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !1210, !1859}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2129, file: !14, line: 1948, baseType: !2557, size: 64, offset: 1792)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!470, !1859, !674, !1859, !674, !484, !7}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2129, file: !14, line: 1950, baseType: !2561, size: 64, offset: 1856)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!674, !1859, !674, !1859, !674, !674, !7}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2129, file: !14, line: 1953, baseType: !2509, size: 64, offset: 1920)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2129, file: !14, line: 1954, baseType: !2566, size: 64, offset: 1984)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!109, !2569, !7}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2129, file: !14, line: 1955, baseType: !2572, size: 64, offset: 2048)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!109, !2569, !2179, !7}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1860, file: !14, line: 1018, baseType: !191, size: 64, offset: 1472)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1860, file: !14, line: 1020, baseType: !167, size: 64, offset: 1536)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1860, file: !14, line: 1023, baseType: !167, size: 64, offset: 1600)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1860, file: !14, line: 1027, baseType: !2579, size: 64, offset: 1664)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1860, file: !14, line: 1029, baseType: !512, size: 64, offset: 1728)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1860, file: !14, line: 1030, baseType: !2582, size: 32, offset: 1792)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2583, line: 8, baseType: !585)
!2583 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1860, file: !14, line: 1031, baseType: !2582, size: 32, offset: 1824)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1836, file: !38, line: 756, baseType: !181, size: 64, offset: 704)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1836, file: !38, line: 757, baseType: !181, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1836, file: !38, line: 760, baseType: !181, size: 64, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1836, file: !38, line: 761, baseType: !181, size: 64, offset: 896)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1836, file: !38, line: 763, baseType: !181, size: 64, offset: 960)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1836, file: !38, line: 764, baseType: !2591, size: 64, offset: 1024)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2226, line: 299, baseType: !2593)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2226, line: 299, size: 64, elements: !2594)
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2593, file: !2226, line: 299, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2231, line: 18, baseType: !181)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1836, file: !38, line: 773, baseType: !393, size: 32, offset: 1088)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1836, file: !38, line: 785, baseType: !393, size: 32, offset: 1120)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1836, file: !38, line: 795, baseType: !2600, size: 64, offset: 1152)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2601, file: !38, line: 727, baseType: !191, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2601, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1836, file: !38, line: 801, baseType: !181, size: 64, offset: 1216)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1836, file: !38, line: 804, baseType: !778, size: 64, offset: 1280)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1836, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1836, file: !38, line: 808, baseType: !373, size: 32, offset: 1376)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1836, file: !38, line: 823, baseType: !1429, size: 320, offset: 1408)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1836, file: !38, line: 825, baseType: !173, size: 128, offset: 1728)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1836, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1836, file: !38, line: 849, baseType: !181, size: 64, offset: 1920)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1836, file: !38, line: 850, baseType: !181, size: 64, offset: 1984)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1836, file: !38, line: 852, baseType: !181, size: 64, offset: 2048)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1836, file: !38, line: 853, baseType: !181, size: 64, offset: 2112)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1836, file: !38, line: 854, baseType: !780, size: 64, offset: 2176)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1836, file: !38, line: 855, baseType: !181, size: 64, offset: 2240)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1836, file: !38, line: 856, baseType: !181, size: 64, offset: 2304)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1836, file: !38, line: 857, baseType: !181, size: 64, offset: 2368)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1836, file: !38, line: 858, baseType: !181, size: 64, offset: 2432)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1836, file: !38, line: 865, baseType: !562, size: 32, offset: 2496)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1836, file: !38, line: 867, baseType: !373, size: 32, offset: 2528)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1836, file: !38, line: 869, baseType: !181, size: 64, offset: 2560)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1836, file: !38, line: 869, baseType: !181, size: 64, offset: 2624)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1836, file: !38, line: 869, baseType: !181, size: 64, offset: 2688)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1836, file: !38, line: 869, baseType: !181, size: 64, offset: 2752)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1836, file: !38, line: 870, baseType: !181, size: 64, offset: 2816)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1836, file: !38, line: 870, baseType: !181, size: 64, offset: 2880)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1836, file: !38, line: 870, baseType: !181, size: 64, offset: 2944)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1836, file: !38, line: 871, baseType: !181, size: 64, offset: 3008)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1836, file: !38, line: 871, baseType: !181, size: 64, offset: 3072)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1836, file: !38, line: 871, baseType: !181, size: 64, offset: 3136)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1836, file: !38, line: 871, baseType: !181, size: 64, offset: 3200)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1836, file: !38, line: 873, baseType: !2635, size: 3328, offset: 3264)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 3328, elements: !2636)
!2636 = !{!2637}
!2637 = !DISubrange(count: 52)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1836, file: !38, line: 875, baseType: !2639, size: 1280, offset: 6592)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 1280, elements: !210)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1836, file: !38, line: 877, baseType: !2641, size: 64, offset: 7872)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1836, file: !38, line: 880, baseType: !2644, size: 1088, offset: 7936)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2645, line: 72, baseType: !2646)
!2645 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2645, line: 23, size: 1088, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2655, !2656, !2657, !2658, !2685, !2686, !2687}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2646, file: !2645, line: 28, baseType: !191, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2646, file: !2645, line: 38, baseType: !780, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2646, file: !2645, line: 40, baseType: !181, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2646, file: !2645, line: 43, baseType: !1429, size: 320, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2646, file: !2645, line: 44, baseType: !2653, size: 64, offset: 512)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2645, line: 44, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2646, file: !2645, line: 48, baseType: !181, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2646, file: !2645, line: 59, baseType: !774, size: 256, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2646, file: !2645, line: 60, baseType: !167, size: 64, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2646, file: !2645, line: 61, baseType: !2659, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2661)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2662, line: 13, size: 1216, elements: !2663)
!2662 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2661, file: !2662, line: 14, baseType: !167, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2661, file: !2662, line: 15, baseType: !181, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2661, file: !2662, line: 17, baseType: !181, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2661, file: !2662, line: 17, baseType: !181, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2661, file: !2662, line: 18, baseType: !181, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2661, file: !2662, line: 18, baseType: !181, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2661, file: !2662, line: 19, baseType: !2671, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2661, file: !2662, line: 21, baseType: !235, size: 64, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2661, file: !2662, line: 23, baseType: !235, size: 64, offset: 512)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2661, file: !2662, line: 24, baseType: !235, size: 64, offset: 576)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2661, file: !2662, line: 25, baseType: !235, size: 64, offset: 640)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2661, file: !2662, line: 26, baseType: !235, size: 64, offset: 704)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2661, file: !2662, line: 27, baseType: !235, size: 64, offset: 768)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2661, file: !2662, line: 28, baseType: !235, size: 64, offset: 832)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2661, file: !2662, line: 29, baseType: !235, size: 64, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2661, file: !2662, line: 30, baseType: !235, size: 64, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2661, file: !2662, line: 31, baseType: !235, size: 64, offset: 1024)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2661, file: !2662, line: 32, baseType: !235, size: 64, offset: 1088)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2661, file: !2662, line: 33, baseType: !235, size: 64, offset: 1152)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2646, file: !2645, line: 63, baseType: !393, size: 32, offset: 1024)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2646, file: !2645, line: 69, baseType: !408, size: 16, offset: 1056)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2646, file: !2645, line: 70, baseType: !908, size: 16, offset: 1072)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !38, line: 882, baseType: !181, size: 64, offset: 9024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1836, file: !38, line: 885, baseType: !373, size: 32, offset: 9088)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1836, file: !38, line: 886, baseType: !2691, size: 64, offset: 9152)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1836, file: !38, line: 901, baseType: !2096, size: 64, offset: 9216)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1836, file: !38, line: 904, baseType: !1859, size: 64, offset: 9280)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1836, file: !38, line: 906, baseType: !2696, size: 64, offset: 9344)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1836, file: !38, line: 930, baseType: !393, size: 32, offset: 9408)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1836, file: !38, line: 933, baseType: !393, size: 32, offset: 9440)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1836, file: !38, line: 935, baseType: !2701, size: 64, offset: 9472)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2701, file: !68, line: 104, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1836, file: !38, line: 940, baseType: !778, size: 64, offset: 9536)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1836, file: !38, line: 942, baseType: !1029, size: 256, offset: 9600)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1833, file: !38, line: 986, baseType: !2709, offset: 10240)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !1919)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1536, file: !1212, line: 882, baseType: !1832, size: 64, offset: 9792)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1536, file: !1212, line: 884, baseType: !109, size: 32, offset: 9856)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1536, file: !1212, line: 885, baseType: !109, size: 32, offset: 9888)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1536, file: !1212, line: 886, baseType: !109, size: 32, offset: 9920)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1536, file: !1212, line: 888, baseType: !109, size: 32, offset: 9952)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1536, file: !1212, line: 890, baseType: !181, size: 64, offset: 9984)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1536, file: !1212, line: 893, baseType: !7, size: 32, offset: 10048)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1536, file: !1212, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1536, file: !1212, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1536, file: !1212, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1536, file: !1212, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1536, file: !1212, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1536, file: !1212, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1536, file: !1212, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1536, file: !1212, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1536, file: !1212, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1536, file: !1212, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1536, file: !1212, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1536, file: !1212, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1536, file: !1212, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1536, file: !1212, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1536, file: !1212, line: 969, baseType: !181, size: 64, offset: 10176)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1536, file: !1212, line: 971, baseType: !2733, size: 448, offset: 10240)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2734)
!2734 = !{!2735, !2736, !2741}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2733, file: !62, line: 26, baseType: !181, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2733, file: !62, line: 27, baseType: !2737, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!235, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !62, line: 28, baseType: !2742, size: 320, offset: 128)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2733, file: !62, line: 28, size: 320, elements: !2743)
!2743 = !{!2744, !2754, !2779}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2742, file: !62, line: 37, baseType: !2745, size: 320)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !62, line: 30, size: 320, elements: !2746)
!2746 = !{!2747, !2749, !2750, !2751, !2752, !2753}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2745, file: !62, line: 31, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2745, file: !62, line: 32, baseType: !585, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2745, file: !62, line: 33, baseType: !585, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2745, file: !62, line: 34, baseType: !585, size: 32, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2745, file: !62, line: 35, baseType: !191, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2745, file: !62, line: 36, baseType: !2748, size: 64, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2742, file: !62, line: 47, baseType: !2755, size: 192)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !62, line: 39, size: 192, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2778}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2755, file: !62, line: 40, baseType: !1703, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2755, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !2755, file: !62, line: 42, baseType: !2760, size: 64, offset: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2755, file: !62, line: 42, size: 64, elements: !2761)
!2761 = !{!2762, !2770}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2760, file: !62, line: 43, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2765, line: 7, size: 128, elements: !2766)
!2765 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2766 = !{!2767, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2764, file: !2765, line: 8, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !472, line: 93, baseType: !676)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2764, file: !2765, line: 9, baseType: !676, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2760, file: !62, line: 44, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2773, line: 7, size: 64, elements: !2774)
!2773 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2774 = !{!2775, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2772, file: !2773, line: 8, baseType: !2776, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2773, line: 5, baseType: !770)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2772, file: !2773, line: 9, baseType: !770, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2755, file: !62, line: 46, baseType: !191, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2742, file: !62, line: 55, baseType: !2780, size: 256)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !62, line: 49, size: 256, elements: !2781)
!2781 = !{!2782, !2785, !2786, !2787, !2788}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2780, file: !62, line: 50, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2780, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2780, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2780, file: !62, line: 53, baseType: !181, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2780, file: !62, line: 54, baseType: !181, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1536, file: !1212, line: 973, baseType: !2790, size: 32, offset: 10688)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 27, baseType: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !472, line: 28, baseType: !109)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1536, file: !1212, line: 974, baseType: !2790, size: 32, offset: 10720)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1536, file: !1212, line: 978, baseType: !181, size: 64, offset: 10752)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1536, file: !1212, line: 987, baseType: !1535, size: 64, offset: 10816)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1536, file: !1212, line: 990, baseType: !1535, size: 64, offset: 10880)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1536, file: !1212, line: 995, baseType: !173, size: 128, offset: 10944)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1536, file: !1212, line: 996, baseType: !173, size: 128, offset: 11072)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1536, file: !1212, line: 997, baseType: !1535, size: 64, offset: 11200)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1536, file: !1212, line: 1005, baseType: !173, size: 128, offset: 11264)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1536, file: !1212, line: 1006, baseType: !173, size: 128, offset: 11392)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1536, file: !1212, line: 1009, baseType: !1900, size: 64, offset: 11520)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1536, file: !1212, line: 1010, baseType: !2803, size: 512, offset: 11584)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 512, elements: !210)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1536, file: !1212, line: 1011, baseType: !173, size: 128, offset: 12096)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1536, file: !1212, line: 1012, baseType: !173, size: 128, offset: 12224)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1536, file: !1212, line: 1014, baseType: !722, size: 64, offset: 12352)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1536, file: !1212, line: 1017, baseType: !901, size: 64, offset: 12416)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1536, file: !1212, line: 1020, baseType: !901, size: 64, offset: 12480)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1536, file: !1212, line: 1023, baseType: !167, size: 64, offset: 12544)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1536, file: !1212, line: 1025, baseType: !191, size: 64, offset: 12608)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1536, file: !1212, line: 1026, baseType: !191, size: 64, offset: 12672)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1536, file: !1212, line: 1031, baseType: !191, size: 64, offset: 12736)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1536, file: !1212, line: 1032, baseType: !2814, size: 192, offset: 12800)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1212, line: 324, size: 192, elements: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2814, file: !1212, line: 326, baseType: !191, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2814, file: !1212, line: 327, baseType: !191, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2814, file: !1212, line: 328, baseType: !732, size: 32, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1536, file: !1212, line: 1041, baseType: !181, size: 64, offset: 12992)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1536, file: !1212, line: 1042, baseType: !181, size: 64, offset: 13056)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1536, file: !1212, line: 1045, baseType: !191, size: 64, offset: 13120)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1536, file: !1212, line: 1048, baseType: !191, size: 64, offset: 13184)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1536, file: !1212, line: 1051, baseType: !181, size: 64, offset: 13248)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1536, file: !1212, line: 1052, baseType: !181, size: 64, offset: 13312)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1536, file: !1212, line: 1055, baseType: !2826, size: 640, offset: 13376)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2827, line: 132, size: 640, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2828 = !{!2829, !2835, !2836}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2826, file: !2827, line: 133, baseType: !2830, size: 576)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2831, size: 576, elements: !260)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2827, line: 117, size: 192, elements: !2832)
!2832 = !{!2833, !2834}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2831, file: !2827, line: 118, baseType: !191, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2831, file: !2827, line: 119, baseType: !1712, size: 128, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2826, file: !2827, line: 134, baseType: !7, size: 32, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2826, file: !2827, line: 135, baseType: !7, size: 32, offset: 608)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1536, file: !1212, line: 1058, baseType: !2838, size: 448, offset: 14016)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2827, line: 144, size: 448, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2838, file: !2827, line: 145, baseType: !992, size: 128, align: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2838, file: !2827, line: 146, baseType: !774, size: 256, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2838, file: !2827, line: 147, baseType: !7, size: 32, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1536, file: !1212, line: 1064, baseType: !1926, size: 64, offset: 14464)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1536, file: !1212, line: 1067, baseType: !1926, size: 64, offset: 14528)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1536, file: !1212, line: 1070, baseType: !1926, size: 64, offset: 14592)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1536, file: !1212, line: 1074, baseType: !1953, size: 64, offset: 14656)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1536, file: !1212, line: 1084, baseType: !2848, size: 128, offset: 14720)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !2849)
!2849 = !{!2850}
!2850 = !DISubrange(count: 16)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1536, file: !1212, line: 1086, baseType: !2852, size: 64, offset: 14848)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1212, line: 55, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1536, file: !1212, line: 1089, baseType: !2855, size: 64, offset: 14912)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2856, line: 12, size: 64, elements: !2857)
!2856 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2857 = !{!2858}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2855, file: !2856, line: 13, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2856, line: 8, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1536, file: !1212, line: 1090, baseType: !2862, size: 128, offset: 14976)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2863, line: 13, size: 128, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2862, file: !2863, line: 14, baseType: !173, size: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1536, file: !1212, line: 1097, baseType: !2867, size: 64, offset: 15104)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1212, line: 50, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1536, file: !1212, line: 1100, baseType: !2870, size: 64, offset: 15168)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1212, line: 1100, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1536, file: !1212, line: 1103, baseType: !2873, size: 64, offset: 15232)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1212, line: 53, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1536, file: !1212, line: 1107, baseType: !2876, size: 64, offset: 15296)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1212, line: 56, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1536, file: !1212, line: 1110, baseType: !2879, size: 64, offset: 15360)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2881, line: 93, size: 8768, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2930, !2939, !2940, !2942, !2943, !2944, !2947, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2985, !2986, !2993, !3003, !3006, !3007, !3010, !3011, !3012, !3013, !3014, !3015}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2880, file: !2881, line: 94, baseType: !1549, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2880, file: !2881, line: 95, baseType: !393, size: 32, offset: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2880, file: !2881, line: 96, baseType: !109, size: 32, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2880, file: !2881, line: 97, baseType: !109, size: 32, offset: 96)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2880, file: !2881, line: 98, baseType: !173, size: 128, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2880, file: !2881, line: 100, baseType: !1522, size: 192, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2880, file: !2881, line: 103, baseType: !1535, size: 64, offset: 448)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2880, file: !2881, line: 106, baseType: !2891, size: 192, offset: 512)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2101, line: 32, size: 192, elements: !2892)
!2892 = !{!2893, !2894}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2891, file: !2101, line: 33, baseType: !173, size: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2891, file: !2101, line: 34, baseType: !2895, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2896, line: 25, baseType: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2896, line: 23, size: 64, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2897, file: !2896, line: 24, baseType: !1783, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2880, file: !2881, line: 109, baseType: !1138, size: 64, offset: 704)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2880, file: !2881, line: 112, baseType: !109, size: 32, offset: 768)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2880, file: !2881, line: 114, baseType: !109, size: 32, offset: 800)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2880, file: !2881, line: 115, baseType: !1535, size: 64, offset: 832)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2880, file: !2881, line: 118, baseType: !109, size: 32, offset: 896)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2880, file: !2881, line: 119, baseType: !7, size: 32, offset: 928)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2880, file: !2881, line: 121, baseType: !2907, size: 64, offset: 960)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2881, line: 80, size: 448, elements: !2909)
!2909 = !{!2910, !2911, !2917}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2908, file: !2881, line: 81, baseType: !393, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2908, file: !2881, line: 82, baseType: !2912, size: 128, offset: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2881, line: 75, size: 128, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2912, file: !2881, line: 76, baseType: !1535, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2912, file: !2881, line: 77, baseType: !2916, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2908, file: !2881, line: 83, baseType: !723, size: 256, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2880, file: !2881, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2880, file: !2881, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2880, file: !2881, line: 138, baseType: !7, size: 32, offset: 1056)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2880, file: !2881, line: 139, baseType: !173, size: 128, offset: 1088)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2880, file: !2881, line: 142, baseType: !1656, size: 512, offset: 1216)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2880, file: !2881, line: 143, baseType: !1664, size: 64, offset: 1728)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2880, file: !2881, line: 150, baseType: !2925, size: 256, offset: 1792)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2926, size: 256, elements: !893)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2881, line: 38, size: 128, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2926, file: !2881, line: 39, baseType: !191, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2926, file: !2881, line: 40, baseType: !191, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2880, file: !2881, line: 156, baseType: !2931, size: 192, offset: 2048)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2881, line: 66, size: 192, elements: !2932)
!2932 = !{!2933}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2931, file: !2881, line: 67, baseType: !2934, size: 192)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2881, line: 47, size: 192, elements: !2935)
!2935 = !{!2936, !2937, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2934, file: !2881, line: 48, baseType: !780, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2934, file: !2881, line: 49, baseType: !780, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2934, file: !2881, line: 50, baseType: !780, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2880, file: !2881, line: 160, baseType: !2826, size: 640, offset: 2240)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2880, file: !2881, line: 163, baseType: !2941, size: 256, offset: 2880)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, size: 256, elements: !210)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2880, file: !2881, line: 169, baseType: !1900, size: 64, offset: 3136)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2880, file: !2881, line: 172, baseType: !109, size: 32, offset: 3200)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2880, file: !2881, line: 174, baseType: !2945, size: 64, offset: 3264)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2881, line: 174, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2880, file: !2881, line: 185, baseType: !2948, size: 64, offset: 3328)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !558, line: 860, baseType: !2949)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 853, size: 64, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2949, file: !558, line: 858, baseType: !557, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2949, file: !558, line: 859, baseType: !373, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2880, file: !2881, line: 186, baseType: !191, size: 64, offset: 3392)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2880, file: !2881, line: 186, baseType: !191, size: 64, offset: 3456)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2880, file: !2881, line: 186, baseType: !191, size: 64, offset: 3520)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2880, file: !2881, line: 186, baseType: !191, size: 64, offset: 3584)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2880, file: !2881, line: 187, baseType: !191, size: 64, offset: 3648)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2880, file: !2881, line: 188, baseType: !191, size: 64, offset: 3712)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2880, file: !2881, line: 189, baseType: !2814, size: 192, offset: 3776)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2880, file: !2881, line: 190, baseType: !181, size: 64, offset: 3968)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2880, file: !2881, line: 190, baseType: !181, size: 64, offset: 4032)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2880, file: !2881, line: 190, baseType: !181, size: 64, offset: 4096)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2880, file: !2881, line: 190, baseType: !181, size: 64, offset: 4160)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2880, file: !2881, line: 191, baseType: !181, size: 64, offset: 4224)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2880, file: !2881, line: 191, baseType: !181, size: 64, offset: 4288)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2880, file: !2881, line: 191, baseType: !181, size: 64, offset: 4352)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2880, file: !2881, line: 191, baseType: !181, size: 64, offset: 4416)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2880, file: !2881, line: 192, baseType: !181, size: 64, offset: 4480)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2880, file: !2881, line: 192, baseType: !181, size: 64, offset: 4544)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2880, file: !2881, line: 192, baseType: !181, size: 64, offset: 4608)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2880, file: !2881, line: 192, baseType: !181, size: 64, offset: 4672)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2880, file: !2881, line: 193, baseType: !181, size: 64, offset: 4736)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2880, file: !2881, line: 193, baseType: !181, size: 64, offset: 4800)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2880, file: !2881, line: 194, baseType: !2975, size: 448, offset: 4864)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2976, line: 12, size: 448, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2975, file: !2976, line: 15, baseType: !191, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2975, file: !2976, line: 17, baseType: !191, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2975, file: !2976, line: 19, baseType: !191, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2975, file: !2976, line: 21, baseType: !191, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2975, file: !2976, line: 29, baseType: !191, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2975, file: !2976, line: 35, baseType: !191, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2975, file: !2976, line: 44, baseType: !191, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2880, file: !2881, line: 202, baseType: !195, size: 64, offset: 5312)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2880, file: !2881, line: 213, baseType: !2987, size: 2048, offset: 5376)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2988, size: 2048, elements: !2849)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2989, line: 43, size: 128, elements: !2990)
!2989 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2988, file: !2989, line: 44, baseType: !486, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2988, file: !2989, line: 45, baseType: !486, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2880, file: !2881, line: 216, baseType: !2994, size: 448, offset: 7424)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2881, line: 30, size: 448, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2994, file: !2881, line: 31, baseType: !109, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2994, file: !2881, line: 32, baseType: !235, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2994, file: !2881, line: 33, baseType: !181, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2994, file: !2881, line: 34, baseType: !191, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2994, file: !2881, line: 34, baseType: !191, size: 64, offset: 256)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2994, file: !2881, line: 35, baseType: !181, size: 64, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2994, file: !2881, line: 35, baseType: !181, size: 64, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2880, file: !2881, line: 219, baseType: !3004, size: 64, offset: 7872)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2881, line: 219, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2880, file: !2881, line: 222, baseType: !7, size: 32, offset: 7936)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2880, file: !2881, line: 223, baseType: !3008, size: 64, offset: 8000)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2881, line: 223, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2880, file: !2881, line: 230, baseType: !854, size: 8, offset: 8064)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2880, file: !2881, line: 231, baseType: !910, size: 16, offset: 8080)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2880, file: !2881, line: 232, baseType: !910, size: 16, offset: 8096)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2880, file: !2881, line: 234, baseType: !1832, size: 64, offset: 8128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2880, file: !2881, line: 237, baseType: !774, size: 256, offset: 8192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2880, file: !2881, line: 243, baseType: !1429, size: 320, offset: 8448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1536, file: !1212, line: 1111, baseType: !3017, size: 64, offset: 15424)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2881, line: 20, size: 16640, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3018, file: !2881, line: 21, baseType: !373, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !2881, line: 22, baseType: !1549, size: 32, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3018, file: !2881, line: 23, baseType: !1522, size: 192, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3018, file: !2881, line: 24, baseType: !3024, size: 16384, offset: 256)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 16384, elements: !443)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2101, line: 51, size: 256, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3025, file: !2101, line: 52, baseType: !3028, size: 256)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2101, line: 37, size: 256, elements: !3029)
!3029 = !{!3030, !3037, !3038, !3042}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3028, file: !2101, line: 39, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3032, line: 83, baseType: !3033)
!3032 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3032, line: 82, baseType: !3035)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !109}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3028, file: !2101, line: 40, baseType: !181, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3028, file: !2101, line: 46, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3032, line: 86, baseType: !3040)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3032, line: 85, baseType: !1133)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3028, file: !2101, line: 48, baseType: !2895, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1536, file: !1212, line: 1112, baseType: !2895, size: 64, offset: 15488)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1536, file: !1212, line: 1113, baseType: !2895, size: 64, offset: 15552)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1536, file: !1212, line: 1115, baseType: !2895, size: 64, offset: 15616)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1536, file: !1212, line: 1116, baseType: !2891, size: 192, offset: 15680)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1536, file: !1212, line: 1117, baseType: !181, size: 64, offset: 15872)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1536, file: !1212, line: 1118, baseType: !484, size: 64, offset: 15936)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1536, file: !1212, line: 1119, baseType: !7, size: 32, offset: 16000)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1536, file: !1212, line: 1121, baseType: !991, size: 64, offset: 16064)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1536, file: !1212, line: 1125, baseType: !3052, size: 64, offset: 16128)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1212, line: 43, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1536, file: !1212, line: 1127, baseType: !522, size: 32, offset: 16192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1536, file: !1212, line: 1128, baseType: !7, size: 32, offset: 16224)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1536, file: !1212, line: 1130, baseType: !3057, size: 128, offset: 16256)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3058, line: 37, size: 128, elements: !3059)
!3058 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3057, file: !3058, line: 38, baseType: !109, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3057, file: !3058, line: 39, baseType: !393, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3057, file: !3058, line: 40, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3058, line: 24, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1536, file: !1212, line: 1131, baseType: !3066, size: 256, offset: 16384)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3067, line: 12, size: 256, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3068 = !{!3069, !3070, !3071, !3072}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3066, file: !3067, line: 13, baseType: !440, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3066, file: !3067, line: 14, baseType: !181, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3066, file: !3067, line: 15, baseType: !181, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3066, file: !3067, line: 16, baseType: !854, size: 8, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1536, file: !1212, line: 1134, baseType: !191, size: 64, offset: 16640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1536, file: !1212, line: 1135, baseType: !191, size: 64, offset: 16704)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1536, file: !1212, line: 1138, baseType: !373, size: 32, offset: 16768)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1536, file: !1212, line: 1141, baseType: !732, size: 32, offset: 16800)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1536, file: !1212, line: 1143, baseType: !3078, size: 64, offset: 16832)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1212, line: 735, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3078, file: !1212, line: 736, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1536, file: !1212, line: 1147, baseType: !1715, size: 128, offset: 16896)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1536, file: !1212, line: 1149, baseType: !1535, size: 64, offset: 17024)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1536, file: !1212, line: 1151, baseType: !3085, size: 64, offset: 17088)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1212, line: 1151, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1536, file: !1212, line: 1188, baseType: !167, size: 64, offset: 17152)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1536, file: !1212, line: 1191, baseType: !3089, size: 64, offset: 17216)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1212, line: 44, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1536, file: !1212, line: 1194, baseType: !3092, size: 64, offset: 17280)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1212, line: 45, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1536, file: !1212, line: 1197, baseType: !3095, size: 64, offset: 17344)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1212, line: 61, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1536, file: !1212, line: 1199, baseType: !3098, size: 64, offset: 17408)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3100, line: 99, size: 128, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3101 = !{!3102, !3103, !3104}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3099, file: !3100, line: 100, baseType: !778, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3099, file: !3100, line: 101, baseType: !393, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3099, file: !3100, line: 103, baseType: !410, size: 16, offset: 96)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1536, file: !1212, line: 1202, baseType: !3106, size: 64, offset: 17472)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1212, line: 48, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1536, file: !1212, line: 1205, baseType: !181, size: 64, offset: 17536)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1536, file: !1212, line: 1206, baseType: !3110, size: 64, offset: 17600)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2101, line: 14, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2101, line: 12, size: 384, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !2101, line: 13, baseType: !3115, size: 384)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !2101, line: 13, size: 384, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3115, file: !2101, line: 13, baseType: !109, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3115, file: !2101, line: 13, baseType: !109, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3115, file: !2101, line: 13, baseType: !109, size: 32, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3115, file: !2101, line: 13, baseType: !3121, size: 256, offset: 128)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3122, line: 37, size: 256, elements: !3123)
!3122 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3123 = !{!3124, !3129, !3142, !3148, !3157, !3184, !3189}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3121, file: !3122, line: 42, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 39, size: 64, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3125, file: !3122, line: 40, baseType: !2791, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3125, file: !3122, line: 41, baseType: !528, size: 32, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3121, file: !3122, line: 50, baseType: !3130, size: 192)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 45, size: 192, elements: !3131)
!3131 = !{!3132, !3134, !3135, !3141}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3130, file: !3122, line: 46, baseType: !3133, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !472, line: 95, baseType: !109)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3130, file: !3122, line: 47, baseType: !109, size: 32, offset: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3130, file: !3122, line: 48, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3122, line: 11, baseType: !3137)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3122, line: 8, size: 64, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3137, file: !3122, line: 9, baseType: !109, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3137, file: !3122, line: 10, baseType: !167, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3130, file: !3122, line: 49, baseType: !109, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3121, file: !3122, line: 57, baseType: !3143, size: 128)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 53, size: 128, elements: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3143, file: !3122, line: 54, baseType: !2791, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3143, file: !3122, line: 55, baseType: !528, size: 32, offset: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3143, file: !3122, line: 56, baseType: !3136, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3121, file: !3122, line: 66, baseType: !3149, size: 256)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 60, size: 256, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154, !3156}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3149, file: !3122, line: 61, baseType: !2791, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3149, file: !3122, line: 62, baseType: !528, size: 32, offset: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3149, file: !3122, line: 63, baseType: !109, size: 32, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3149, file: !3122, line: 64, baseType: !3155, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !472, line: 94, baseType: !473)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3149, file: !3122, line: 65, baseType: !3155, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3121, file: !3122, line: 105, baseType: !3158, size: 256)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 69, size: 256, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3158, file: !3122, line: 70, baseType: !167, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, scope: !3158, file: !3122, line: 79, baseType: !3162, size: 192, offset: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3158, file: !3122, line: 79, size: 192, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3173, !3178}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3162, file: !3122, line: 81, baseType: !109, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3162, file: !3122, line: 86, baseType: !910, size: 16)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3162, file: !3122, line: 92, baseType: !3167, size: 192)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3122, line: 88, size: 192, elements: !3168)
!3168 = !{!3169, !3171, !3172}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3167, file: !3122, line: 89, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !1699)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3167, file: !3122, line: 90, baseType: !167, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3167, file: !3122, line: 91, baseType: !167, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3162, file: !3122, line: 97, baseType: !3174, size: 96)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3122, line: 94, size: 96, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3174, file: !3122, line: 95, baseType: !3170, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3174, file: !3122, line: 96, baseType: !586, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3162, file: !3122, line: 103, baseType: !3179, size: 128)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3122, line: 99, size: 128, elements: !3180)
!3180 = !{!3181, !3182, !3183}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3179, file: !3122, line: 100, baseType: !181, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3179, file: !3122, line: 101, baseType: !586, size: 32, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3179, file: !3122, line: 102, baseType: !586, size: 32, offset: 96)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3121, file: !3122, line: 111, baseType: !3185, size: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 108, size: 128, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3185, file: !3122, line: 109, baseType: !235, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3185, file: !3122, line: 110, baseType: !109, size: 32, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3121, file: !3122, line: 118, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 114, size: 128, elements: !3191)
!3191 = !{!3192, !3193, !3194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3190, file: !3122, line: 115, baseType: !167, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3190, file: !3122, line: 116, baseType: !109, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3190, file: !3122, line: 117, baseType: !7, size: 32, offset: 96)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1536, file: !1212, line: 1208, baseType: !2975, size: 448, offset: 17664)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1536, file: !1212, line: 1215, baseType: !191, size: 64, offset: 18112)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1536, file: !1212, line: 1217, baseType: !191, size: 64, offset: 18176)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1536, file: !1212, line: 1219, baseType: !191, size: 64, offset: 18240)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1536, file: !1212, line: 1223, baseType: !3200, size: 64, offset: 18304)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3201, line: 99, baseType: !3202)
!3201 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3201, line: 99, size: 64, elements: !3203)
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3202, file: !3201, line: 99, baseType: !1783, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1536, file: !1212, line: 1225, baseType: !557, size: 32, offset: 18368)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1536, file: !1212, line: 1226, baseType: !109, size: 32, offset: 18400)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1536, file: !1212, line: 1227, baseType: !109, size: 32, offset: 18432)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1536, file: !1212, line: 1231, baseType: !3209, size: 64, offset: 18496)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1212, line: 1231, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1536, file: !1212, line: 1233, baseType: !173, size: 128, offset: 18560)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1536, file: !1212, line: 1240, baseType: !3213, size: 64, offset: 18688)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1212, line: 62, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1536, file: !1212, line: 1242, baseType: !3216, size: 64, offset: 18752)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1212, line: 1242, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1536, file: !1212, line: 1244, baseType: !173, size: 128, offset: 18816)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1536, file: !1212, line: 1245, baseType: !3220, size: 64, offset: 18944)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1212, line: 51, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1536, file: !1212, line: 1246, baseType: !774, size: 256, offset: 19008)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1536, file: !1212, line: 1247, baseType: !7, size: 32, offset: 19264)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1536, file: !1212, line: 1250, baseType: !3225, size: 64, offset: 19328)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1212, line: 57, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1536, file: !1212, line: 1251, baseType: !774, size: 256, offset: 19392)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1536, file: !1212, line: 1252, baseType: !173, size: 128, offset: 19648)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1536, file: !1212, line: 1259, baseType: !2480, size: 64, offset: 19776)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1536, file: !1212, line: 1260, baseType: !910, size: 16, offset: 19840)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1536, file: !1212, line: 1261, baseType: !910, size: 16, offset: 19856)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1536, file: !1212, line: 1314, baseType: !3233, size: 64, offset: 19904)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3235, line: 62, size: 256, align: 256, elements: !3236)
!3235 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3234, file: !3235, line: 75, baseType: !586, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3234, file: !3235, line: 90, baseType: !586, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3234, file: !3235, line: 112, baseType: !193, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3234, file: !3235, line: 132, baseType: !586, size: 32, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3234, file: !3235, line: 140, baseType: !586, size: 32, offset: 160)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3234, file: !3235, line: 149, baseType: !586, size: 32, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3234, file: !3235, line: 154, baseType: !3244, offset: 224)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, elements: !1919)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1536, file: !1212, line: 1315, baseType: !585, size: 32, offset: 19968)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1536, file: !1212, line: 1316, baseType: !585, size: 32, offset: 20000)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1536, file: !1212, line: 1321, baseType: !181, size: 64, offset: 20032)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1536, file: !1212, line: 1325, baseType: !109, size: 32, offset: 20096)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1536, file: !1212, line: 1326, baseType: !109, size: 32, offset: 20128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1536, file: !1212, line: 1327, baseType: !109, size: 32, offset: 20160)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1536, file: !1212, line: 1328, baseType: !109, size: 32, offset: 20192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1536, file: !1212, line: 1329, baseType: !992, size: 128, align: 64, offset: 20224)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1536, file: !1212, line: 1332, baseType: !3254, size: 128, offset: 20352)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3255, line: 51, size: 128, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3256 = !{!3257, !3262, !3263}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3254, file: !3255, line: 60, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3259, line: 7, size: 64, elements: !3260)
!3259 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3260 = !{!3261}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3258, file: !3259, line: 12, baseType: !1780, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3254, file: !3255, line: 63, baseType: !854, size: 8, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3254, file: !3255, line: 70, baseType: !854, size: 8, offset: 72)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1536, file: !1212, line: 1335, baseType: !2532, size: 64, offset: 20480)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1536, file: !1212, line: 1337, baseType: !3266, size: 128, offset: 20544)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3255, line: 39, size: 128, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3266, file: !3255, line: 40, baseType: !2320, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3266, file: !3255, line: 42, baseType: !586, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3266, file: !3255, line: 43, baseType: !586, size: 32, offset: 96)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1536, file: !1212, line: 1340, baseType: !3272, size: 64, offset: 20672)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1212, line: 69, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1536, file: !1212, line: 1351, baseType: !109, size: 32, offset: 20736)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1536, file: !1212, line: 1352, baseType: !109, size: 32, offset: 20768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1536, file: !1212, line: 1354, baseType: !181, size: 64, offset: 20800)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1536, file: !1212, line: 1364, baseType: !191, size: 64, offset: 20864)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1536, file: !1212, line: 1365, baseType: !191, size: 64, offset: 20928)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1536, file: !1212, line: 1412, baseType: !181, size: 64, offset: 20992)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1536, file: !1212, line: 1453, baseType: !3281, size: 64, offset: 21056)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1212, line: 1453, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1536, file: !1212, line: 1457, baseType: !3284, size: 64, offset: 21120)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3286)
!3286 = !{!3287, !3288, !3307, !3310, !3311, !3344, !3354}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3285, file: !68, line: 62, baseType: !67, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !68, line: 64, baseType: !3289, size: 192, offset: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3285, file: !68, line: 64, size: 192, elements: !3290)
!3290 = !{!3291, !3302}
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !68, line: 65, baseType: !3292, size: 192)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3289, file: !68, line: 65, size: 192, elements: !3293)
!3293 = !{!3294, !3301}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3292, file: !68, line: 66, baseType: !3295, size: 128)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3296, line: 50, size: 128, elements: !3297)
!3296 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3295, file: !3296, line: 52, baseType: !181, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3295, file: !3296, line: 54, baseType: !7, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3295, file: !3296, line: 55, baseType: !7, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3292, file: !68, line: 67, baseType: !181, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !68, line: 70, baseType: !3303, size: 192)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3289, file: !68, line: 70, size: 192, elements: !3304)
!3304 = !{!3305, !3306}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3303, file: !68, line: 71, baseType: !992, size: 128, align: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3303, file: !68, line: 72, baseType: !181, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3285, file: !68, line: 76, baseType: !3308, size: 64, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3285, file: !68, line: 77, baseType: !181, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3285, file: !68, line: 79, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3296, line: 25, size: 256, elements: !3314)
!3314 = !{!3315, !3321, !3325}
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3296, line: 26, baseType: !3316, size: 128)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3296, line: 26, size: 128, elements: !3317)
!3317 = !{!3318, !3320}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3316, file: !3296, line: 27, baseType: !3319, size: 128)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 128, elements: !2849)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3316, file: !3296, line: 28, baseType: !3319, size: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3313, file: !3296, line: 31, baseType: !3322, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3324)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3296, line: 23, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3296, line: 33, baseType: !3326, size: 64, offset: 192)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3296, line: 33, size: 64, elements: !3327)
!3327 = !{!3328, !3334, !3339}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3326, file: !3296, line: 38, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3296, line: 34, size: 64, elements: !3330)
!3330 = !{!3331, !3332, !3333}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3329, file: !3296, line: 35, baseType: !770, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3329, file: !3296, line: 36, baseType: !401, size: 8, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3329, file: !3296, line: 37, baseType: !401, size: 8, offset: 40)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3326, file: !3296, line: 42, baseType: !3335, size: 16)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3296, line: 39, size: 16, elements: !3336)
!3336 = !{!3337, !3338}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3335, file: !3296, line: 40, baseType: !401, size: 8)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3335, file: !3296, line: 41, baseType: !401, size: 8, offset: 8)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3326, file: !3296, line: 46, baseType: !3340, size: 16)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3296, line: 43, size: 16, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3340, file: !3296, line: 44, baseType: !401, size: 8)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3340, file: !3296, line: 45, baseType: !401, size: 8, offset: 8)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3285, file: !68, line: 81, baseType: !3345, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3346, file: !68, line: 86, baseType: !3308, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3346, file: !68, line: 87, baseType: !181, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3346, file: !68, line: 88, baseType: !181, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3346, file: !68, line: 89, baseType: !181, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3346, file: !68, line: 90, baseType: !854, size: 8, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3346, file: !68, line: 92, baseType: !3345, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3285, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1536, file: !1212, line: 1463, baseType: !3356, offset: 21184)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1212, line: 739, elements: !1058)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1536, file: !1212, line: 1470, baseType: !992, size: 128, align: 64, offset: 21184)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1536, file: !1212, line: 1471, baseType: !1549, size: 32, offset: 21312)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1536, file: !1212, line: 1472, baseType: !109, size: 32, offset: 21344)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1536, file: !1212, line: 1474, baseType: !1535, size: 64, offset: 21376)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1536, file: !1212, line: 1475, baseType: !1011, size: 320, offset: 21440)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1536, file: !1212, line: 1478, baseType: !3363, size: 64, offset: 21760)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2173, line: 49, size: 512, elements: !3365)
!3365 = !{!3366, !3367, !3368, !3369, !3370, !3372, !3373, !3374, !3375}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3364, file: !2173, line: 50, baseType: !3363, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3364, file: !2173, line: 51, baseType: !167, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3364, file: !2173, line: 52, baseType: !181, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3364, file: !2173, line: 53, baseType: !181, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3364, file: !2173, line: 54, baseType: !3371, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3364, file: !2173, line: 56, baseType: !7, size: 32, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3364, file: !2173, line: 58, baseType: !7, size: 32, offset: 352)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3364, file: !2173, line: 59, baseType: !190, size: 64, offset: 384)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3364, file: !2173, line: 60, baseType: !2671, size: 64, offset: 448)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1536, file: !1212, line: 1482, baseType: !1549, size: 32, offset: 21824)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1536, file: !1212, line: 1489, baseType: !167, size: 64, offset: 21888)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1536, file: !1212, line: 1504, baseType: !167, size: 64, offset: 21952)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1536, file: !1212, line: 1505, baseType: !193, size: 64, offset: 22016)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1536, file: !1212, line: 1506, baseType: !191, size: 64, offset: 22080)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1536, file: !1212, line: 1507, baseType: !193, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1536, file: !1212, line: 1508, baseType: !193, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1536, file: !1212, line: 1509, baseType: !193, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1536, file: !1212, line: 1510, baseType: !992, size: 128, align: 64, offset: 22208)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1536, file: !1212, line: 1511, baseType: !109, size: 32, offset: 22336)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1536, file: !1212, line: 1515, baseType: !3387, size: 64, offset: 22400)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1563, line: 56, size: 64, elements: !3388)
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3387, file: !1563, line: 57, baseType: !1566, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1536, file: !1212, line: 1518, baseType: !3387, size: 64, offset: 22464)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1536, file: !1212, line: 1528, baseType: !992, size: 128, align: 64, offset: 22528)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1536, file: !1212, line: 1552, baseType: !3393, size: 35328, offset: 23040)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3394, line: 430, size: 35328, elements: !3395)
!3394 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3395 = !{!3396, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3425, !3426, !3427, !3428, !3429, !3430, !3433, !3434, !3435, !3436}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3393, file: !3394, line: 432, baseType: !3397, size: 192)
!3397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3398, size: 192, elements: !260)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3399, line: 16, size: 64, elements: !3400)
!3399 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3398, file: !3399, line: 17, baseType: !408, size: 16)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3398, file: !3399, line: 18, baseType: !408, size: 16, offset: 16)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3398, file: !3399, line: 19, baseType: !408, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3398, file: !3399, line: 19, baseType: !408, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3398, file: !3399, line: 19, baseType: !408, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3398, file: !3399, line: 19, baseType: !408, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3398, file: !3399, line: 19, baseType: !408, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3398, file: !3399, line: 20, baseType: !408, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3398, file: !3399, line: 20, baseType: !408, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3398, file: !3399, line: 20, baseType: !408, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3398, file: !3399, line: 20, baseType: !408, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3398, file: !3399, line: 20, baseType: !408, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3398, file: !3399, line: 20, baseType: !408, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3393, file: !3394, line: 436, baseType: !181, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3393, file: !3394, line: 440, baseType: !410, size: 16, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3393, file: !3394, line: 441, baseType: !410, size: 16, offset: 272)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3393, file: !3394, line: 442, baseType: !410, size: 16, offset: 288)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3393, file: !3394, line: 443, baseType: !410, size: 16, offset: 304)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3393, file: !3394, line: 447, baseType: !181, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3393, file: !3394, line: 448, baseType: !181, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3393, file: !3394, line: 459, baseType: !3422, size: 256, offset: 448)
!3422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3423, size: 256, elements: !210)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3394, line: 428, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3393, file: !3394, line: 461, baseType: !181, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3393, file: !3394, line: 463, baseType: !181, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3393, file: !3394, line: 465, baseType: !181, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3393, file: !3394, line: 466, baseType: !181, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3393, file: !3394, line: 467, baseType: !181, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3393, file: !3394, line: 473, baseType: !3431, size: 64, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3394, line: 10, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3393, file: !3394, line: 480, baseType: !181, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3393, file: !3394, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3393, file: !3394, line: 491, baseType: !585, size: 32, offset: 1184)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3393, file: !3394, line: 501, baseType: !3437, size: 33792, offset: 1536)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3438, line: 448, size: 33792, elements: !3439)
!3438 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3439 = !{!3440, !3441, !3442, !3604, !3605, !3611, !3612}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3437, file: !3438, line: 461, baseType: !7, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3437, file: !3438, line: 468, baseType: !181, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3437, file: !3438, line: 476, baseType: !3443, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3438, line: 356, size: 33280, align: 512, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3444, file: !3438, line: 358, baseType: !7, size: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3444, file: !3438, line: 361, baseType: !7, size: 32, offset: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3444, file: !3438, line: 364, baseType: !191, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3444, file: !3438, line: 367, baseType: !191, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3444, file: !3438, line: 370, baseType: !191, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3444, file: !3438, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3444, file: !3438, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3444, file: !3438, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3444, file: !3438, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3444, file: !3438, line: 397, baseType: !3456, size: 32768, offset: 512)
!3456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3438, line: 348, size: 32768, elements: !3457)
!3457 = !{!3458, !3473, !3510, !3587, !3600}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3456, file: !3438, line: 349, baseType: !3459, size: 896)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3438, line: 12, size: 896, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3472}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3459, file: !3438, line: 13, baseType: !585, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3459, file: !3438, line: 14, baseType: !585, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3459, file: !3438, line: 15, baseType: !585, size: 32, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3459, file: !3438, line: 16, baseType: !585, size: 32, offset: 96)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3459, file: !3438, line: 17, baseType: !585, size: 32, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3459, file: !3438, line: 18, baseType: !585, size: 32, offset: 160)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3459, file: !3438, line: 19, baseType: !585, size: 32, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3459, file: !3438, line: 22, baseType: !3469, size: 640, offset: 224)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 640, elements: !3470)
!3470 = !{!3471}
!3471 = !DISubrange(count: 20)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3459, file: !3438, line: 25, baseType: !585, size: 32, offset: 864)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3456, file: !3438, line: 350, baseType: !3474, size: 4096, align: 128)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3438, line: 34, size: 4096, align: 128, elements: !3475)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3495, !3496, !3497, !3499, !3501, !3505}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3474, file: !3438, line: 35, baseType: !408, size: 16)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3474, file: !3438, line: 36, baseType: !408, size: 16, offset: 16)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3474, file: !3438, line: 37, baseType: !408, size: 16, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3474, file: !3438, line: 38, baseType: !408, size: 16, offset: 48)
!3480 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !3438, line: 39, baseType: !3481, size: 128, offset: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3474, file: !3438, line: 39, size: 128, elements: !3482)
!3482 = !{!3483, !3488}
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3438, line: 40, baseType: !3484, size: 128)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3481, file: !3438, line: 40, size: 128, elements: !3485)
!3485 = !{!3486, !3487}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3484, file: !3438, line: 41, baseType: !191, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3484, file: !3438, line: 42, baseType: !191, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3438, line: 44, baseType: !3489, size: 128)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3481, file: !3438, line: 44, size: 128, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3489, file: !3438, line: 45, baseType: !585, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3489, file: !3438, line: 46, baseType: !585, size: 32, offset: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3489, file: !3438, line: 47, baseType: !585, size: 32, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3489, file: !3438, line: 48, baseType: !585, size: 32, offset: 96)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3474, file: !3438, line: 51, baseType: !585, size: 32, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3474, file: !3438, line: 52, baseType: !585, size: 32, offset: 224)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3474, file: !3438, line: 55, baseType: !3498, size: 1024, offset: 256)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 1024, elements: !595)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3474, file: !3438, line: 58, baseType: !3500, size: 2048, offset: 1280)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 2048, elements: !443)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3474, file: !3438, line: 60, baseType: !3502, size: 384, offset: 3328)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 384, elements: !3503)
!3503 = !{!3504}
!3504 = !DISubrange(count: 12)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !3438, line: 62, baseType: !3506, size: 384, offset: 3712)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3474, file: !3438, line: 62, size: 384, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3506, file: !3438, line: 63, baseType: !3502, size: 384)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3506, file: !3438, line: 64, baseType: !3502, size: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3456, file: !3438, line: 351, baseType: !3511, size: 1088)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3438, line: 79, size: 1088, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3586}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3511, file: !3438, line: 80, baseType: !585, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3511, file: !3438, line: 81, baseType: !585, size: 32, offset: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3511, file: !3438, line: 82, baseType: !585, size: 32, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3511, file: !3438, line: 83, baseType: !585, size: 32, offset: 96)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3511, file: !3438, line: 84, baseType: !585, size: 32, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3511, file: !3438, line: 85, baseType: !585, size: 32, offset: 160)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3511, file: !3438, line: 86, baseType: !585, size: 32, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3511, file: !3438, line: 88, baseType: !3469, size: 640, offset: 224)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3511, file: !3438, line: 89, baseType: !401, size: 8, offset: 864)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3511, file: !3438, line: 90, baseType: !401, size: 8, offset: 872)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3511, file: !3438, line: 91, baseType: !401, size: 8, offset: 880)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3511, file: !3438, line: 92, baseType: !401, size: 8, offset: 888)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3511, file: !3438, line: 93, baseType: !401, size: 8, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3511, file: !3438, line: 94, baseType: !401, size: 8, offset: 904)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3511, file: !3438, line: 95, baseType: !3528, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3530, line: 11, size: 128, elements: !3531)
!3530 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3531 = !{!3532, !3533}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3529, file: !3530, line: 12, baseType: !235, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3529, file: !3530, line: 13, baseType: !3534, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3536, line: 103, size: 1344, elements: !3537)
!3536 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3566, !3567, !3568}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3535, file: !3536, line: 109, baseType: !181, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3535, file: !3536, line: 110, baseType: !181, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3535, file: !3536, line: 111, baseType: !181, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3535, file: !3536, line: 112, baseType: !181, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3535, file: !3536, line: 113, baseType: !181, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3535, file: !3536, line: 114, baseType: !181, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3535, file: !3536, line: 117, baseType: !181, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3535, file: !3536, line: 118, baseType: !181, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3535, file: !3536, line: 119, baseType: !181, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3535, file: !3536, line: 120, baseType: !181, size: 64, offset: 576)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3535, file: !3536, line: 121, baseType: !181, size: 64, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3535, file: !3536, line: 122, baseType: !181, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3535, file: !3536, line: 123, baseType: !181, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3535, file: !3536, line: 124, baseType: !181, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3535, file: !3536, line: 125, baseType: !181, size: 64, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3535, file: !3536, line: 139, baseType: !181, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3535, file: !3536, line: 142, baseType: !181, size: 64, offset: 1024)
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !3535, file: !3536, line: 144, baseType: !3556, size: 64, offset: 1088)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3535, file: !3536, line: 144, size: 64, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3556, file: !3536, line: 146, baseType: !408, size: 16)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3556, file: !3536, line: 148, baseType: !191, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3556, file: !3536, line: 150, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3536, line: 59, size: 64, elements: !3562)
!3562 = !{!3563, !3564, !3565}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3561, file: !3536, line: 61, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3561, file: !3536, line: 63, baseType: !191, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3561, file: !3536, line: 65, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3535, file: !3536, line: 153, baseType: !181, size: 64, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3535, file: !3536, line: 154, baseType: !181, size: 64, offset: 1216)
!3568 = !DIDerivedType(tag: DW_TAG_member, scope: !3535, file: !3536, line: 156, baseType: !3569, size: 64, offset: 1280)
!3569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3535, file: !3536, line: 156, size: 64, elements: !3570)
!3570 = !{!3571, !3572, !3573}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3569, file: !3536, line: 158, baseType: !408, size: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3569, file: !3536, line: 160, baseType: !191, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3569, file: !3536, line: 162, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3536, line: 69, size: 64, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3574, file: !3536, line: 71, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3574, file: !3536, line: 73, baseType: !191, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3574, file: !3536, line: 75, baseType: !191, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3574, file: !3536, line: 77, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3574, file: !3536, line: 80, baseType: !191, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3574, file: !3536, line: 83, baseType: !191, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3574, file: !3536, line: 86, baseType: !191, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3574, file: !3536, line: 88, baseType: !191, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3574, file: !3536, line: 93, baseType: !191, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3574, file: !3536, line: 100, baseType: !191, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3511, file: !3438, line: 96, baseType: !585, size: 32, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3456, file: !3438, line: 352, baseType: !3588, size: 4608, align: 512)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3438, line: 333, size: 4608, align: 512, elements: !3589)
!3589 = !{!3590, !3591, !3598}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3588, file: !3438, line: 334, baseType: !3474, size: 4096, align: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3588, file: !3438, line: 335, baseType: !3592, size: 512, offset: 4096)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3438, line: 312, size: 512, elements: !3593)
!3593 = !{!3594, !3595, !3596}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3592, file: !3438, line: 313, baseType: !191, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3592, file: !3438, line: 314, baseType: !191, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3592, file: !3438, line: 315, baseType: !3597, size: 384, offset: 128)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 384, elements: !2002)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3588, file: !3438, line: 336, baseType: !3599, offset: 4608)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, elements: !1919)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3456, file: !3438, line: 353, baseType: !3601, size: 32768)
!3601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 32768, elements: !3602)
!3602 = !{!3603}
!3603 = !DISubrange(count: 4096)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3437, file: !3438, line: 484, baseType: !3443, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3437, file: !3438, line: 491, baseType: !3606, size: 128, offset: 256)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3438, line: 404, size: 128, elements: !3607)
!3607 = !{!3608, !3609, !3610}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3606, file: !3438, line: 424, baseType: !191, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3606, file: !3438, line: 432, baseType: !7, size: 32, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3606, file: !3438, line: 440, baseType: !7, size: 32, offset: 96)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3437, file: !3438, line: 498, baseType: !3606, size: 128, offset: 384)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3437, file: !3438, line: 508, baseType: !3444, size: 33280, align: 512, offset: 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1512, file: !1513, line: 16, baseType: !1522, size: 192, offset: 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1512, file: !1513, line: 17, baseType: !393, size: 32, offset: 704)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !665, file: !14, line: 1240, baseType: !167, size: 64, offset: 6912)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !665, file: !14, line: 1243, baseType: !585, size: 32, offset: 6976)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !665, file: !14, line: 1245, baseType: !1270, size: 64, offset: 7040)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !665, file: !14, line: 1246, baseType: !1270, size: 64, offset: 7104)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !665, file: !14, line: 1248, baseType: !586, size: 32, offset: 7168)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !665, file: !14, line: 1249, baseType: !3621, size: 64, offset: 7232)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !665, file: !14, line: 1252, baseType: !3624, size: 256, offset: 7296)
!3624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !595)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !665, file: !14, line: 1253, baseType: !3626, size: 128, offset: 7552)
!3626 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3627, line: 21, baseType: !3628)
!3627 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3627, line: 19, size: 128, elements: !3629)
!3629 = !{!3630}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3628, file: !3627, line: 20, baseType: !3631, size: 128)
!3631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 128, elements: !2849)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !665, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !665, file: !14, line: 1261, baseType: !774, size: 256, offset: 7744)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !665, file: !14, line: 1267, baseType: !247, size: 64, offset: 8000)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !665, file: !14, line: 1269, baseType: !611, size: 64, offset: 8064)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !665, file: !14, line: 1271, baseType: !3637, size: 448, offset: 8128)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1279, line: 63, size: 448, elements: !3638)
!3638 = !{!3639, !3644, !3645, !3646, !3647, !3648, !3649}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3637, file: !1279, line: 64, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!181, !3643, !1277}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3637, file: !1279, line: 66, baseType: !3640, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3637, file: !1279, line: 69, baseType: !235, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3637, file: !1279, line: 70, baseType: !109, size: 32, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3637, file: !1279, line: 71, baseType: !7, size: 32, offset: 224)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3637, file: !1279, line: 74, baseType: !173, size: 128, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3637, file: !1279, line: 85, baseType: !3650, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !665, file: !14, line: 1274, baseType: !778, size: 64, offset: 8576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !665, file: !14, line: 1280, baseType: !778, size: 64, offset: 8640)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !665, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !665, file: !14, line: 1286, baseType: !2582, size: 32, offset: 8736)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !665, file: !14, line: 1289, baseType: !1091, size: 64, offset: 8768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !665, file: !14, line: 1290, baseType: !1138, size: 64, offset: 8832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !665, file: !14, line: 1297, baseType: !2096, size: 64, offset: 8896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !665, file: !14, line: 1304, baseType: !3659, size: 64, offset: 8960)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3660, line: 49, size: 64, elements: !3661)
!3660 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3661 = !{!3662}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3659, file: !3660, line: 50, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3660, line: 41, size: 512, align: 512, elements: !3665)
!3665 = !{!3666, !3667, !3672}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3664, file: !3660, line: 43, baseType: !373, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3664, file: !3660, line: 45, baseType: !3668, size: 192, offset: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3660, line: 29, size: 192, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3668, file: !3660, line: 30, baseType: !173, size: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3668, file: !3660, line: 32, baseType: !235, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3664, file: !3660, line: 46, baseType: !235, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !665, file: !14, line: 1305, baseType: !3659, size: 64, offset: 9024)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !665, file: !14, line: 1306, baseType: !992, size: 128, align: 64, offset: 9088)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !665, file: !14, line: 1307, baseType: !1029, size: 256, offset: 9216)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !665, file: !14, line: 1309, baseType: !774, size: 256, offset: 9472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !665, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !665, file: !14, line: 1317, baseType: !373, size: 32, align: 512, offset: 10240)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !665, file: !14, line: 1318, baseType: !173, size: 128, offset: 10304)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !665, file: !14, line: 1320, baseType: !373, size: 32, offset: 10432)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !665, file: !14, line: 1321, baseType: !173, size: 128, offset: 10496)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !659, file: !660, line: 73, baseType: !109, size: 32, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !659, file: !660, line: 74, baseType: !3684, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1943, line: 42, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !613, file: !553, line: 141, baseType: !3688, size: 64, offset: 704)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!109, !1339, !854}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !613, file: !553, line: 142, baseType: !3692, size: 64, offset: 768)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!551, !551, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !552, file: !553, line: 96, baseType: !664, size: 64, offset: 832)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !552, file: !553, line: 97, baseType: !181, size: 64, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !552, file: !553, line: 98, baseType: !167, size: 64, offset: 960)
!3700 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !553, line: 100, baseType: !3701, size: 128, offset: 1024)
!3701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 100, size: 128, elements: !3702)
!3702 = !{!3703, !3704}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3701, file: !553, line: 101, baseType: !173, size: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3701, file: !553, line: 102, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !552, file: !553, line: 104, baseType: !173, size: 128, offset: 1152)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !552, file: !553, line: 105, baseType: !173, size: 128, offset: 1280)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !552, file: !553, line: 113, baseType: !3709, size: 128, offset: 1408)
!3709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 109, size: 128, elements: !3710)
!3710 = !{!3711, !3712, !3713}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3709, file: !553, line: 110, baseType: !1015, size: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3709, file: !553, line: 111, baseType: !567, size: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3709, file: !553, line: 112, baseType: !992, size: 128, align: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !545, file: !14, line: 1968, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!247, !551, !516, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3720, line: 10, size: 128, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3721 = !{!3722, !3723}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3719, file: !3720, line: 11, baseType: !817, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3719, file: !3720, line: 12, baseType: !167, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !545, file: !14, line: 1969, baseType: !3725, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!109, !3684, !516, !109}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !545, file: !14, line: 1970, baseType: !3729, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!539, !516, !109, !854}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !545, file: !14, line: 1972, baseType: !3733, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!109, !551, !440, !109}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !545, file: !14, line: 1974, baseType: !3737, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!109, !3684, !516, !551, !479, !854}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !545, file: !14, line: 1976, baseType: !3741, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!109, !551, !516, !551}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !545, file: !14, line: 1977, baseType: !3745, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!109, !516, !551}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !545, file: !14, line: 1978, baseType: !3749, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!109, !3684, !516, !551, !247}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !545, file: !14, line: 1980, baseType: !3753, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!109, !3684, !516, !551, !479}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !545, file: !14, line: 1982, baseType: !3745, size: 64, offset: 640)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !545, file: !14, line: 1983, baseType: !3758, size: 64, offset: 704)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!109, !3684, !516, !551, !479, !669}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !545, file: !14, line: 1985, baseType: !3762, size: 64, offset: 768)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!109, !3684, !516, !551, !516, !551, !7}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !545, file: !14, line: 1987, baseType: !3766, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!109, !3684, !551, !3769}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3771)
!3771 = !{!3772, !3773, !3774, !3784, !3793, !3794, !3799, !3800, !3801}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3770, file: !14, line: 227, baseType: !7, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3770, file: !14, line: 228, baseType: !479, size: 16, offset: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3770, file: !14, line: 241, baseType: !3775, size: 32, offset: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3770, file: !14, line: 241, size: 32, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3775, file: !14, line: 242, baseType: !522, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3775, file: !14, line: 243, baseType: !3779, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3780, line: 16, baseType: !3781)
!3780 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3780, line: 14, size: 32, elements: !3782)
!3782 = !{!3783}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3781, file: !3780, line: 15, baseType: !527, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !3770, file: !14, line: 245, baseType: !3785, size: 32, offset: 96)
!3785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3770, file: !14, line: 245, size: 32, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3785, file: !14, line: 246, baseType: !531, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3785, file: !14, line: 247, baseType: !3789, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3780, line: 20, baseType: !3790)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3780, line: 18, size: 32, elements: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3790, file: !3780, line: 19, baseType: !535, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3770, file: !14, line: 249, baseType: !674, size: 64, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3770, file: !14, line: 250, baseType: !3795, size: 128, offset: 192)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1271, line: 13, size: 128, elements: !3796)
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3795, file: !1271, line: 14, baseType: !1270, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3795, file: !1271, line: 15, baseType: !235, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3770, file: !14, line: 251, baseType: !3795, size: 128, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3770, file: !14, line: 252, baseType: !3795, size: 128, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3770, file: !14, line: 259, baseType: !1859, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !545, file: !14, line: 1988, baseType: !3803, size: 64, offset: 896)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!109, !3684, !1339, !3806, !585, !7}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3808, line: 22, size: 1280, elements: !3809)
!3808 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3807, file: !3808, line: 23, baseType: !585, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3807, file: !3808, line: 24, baseType: !479, size: 16, offset: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3807, file: !3808, line: 25, baseType: !7, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3807, file: !3808, line: 26, baseType: !1981, size: 32, offset: 96)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3807, file: !3808, line: 27, baseType: !191, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3807, file: !3808, line: 28, baseType: !191, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3807, file: !3808, line: 41, baseType: !191, size: 64, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3807, file: !3808, line: 42, baseType: !669, size: 32, offset: 320)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3807, file: !3808, line: 43, baseType: !669, size: 32, offset: 352)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3807, file: !3808, line: 44, baseType: !522, size: 32, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3807, file: !3808, line: 45, baseType: !531, size: 32, offset: 416)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3807, file: !3808, line: 46, baseType: !674, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3807, file: !3808, line: 47, baseType: !3795, size: 128, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3807, file: !3808, line: 48, baseType: !3795, size: 128, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3807, file: !3808, line: 49, baseType: !3795, size: 128, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3807, file: !3808, line: 50, baseType: !3795, size: 128, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3807, file: !3808, line: 51, baseType: !191, size: 64, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3807, file: !3808, line: 52, baseType: !191, size: 64, offset: 1088)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3807, file: !3808, line: 53, baseType: !585, size: 32, offset: 1152)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3807, file: !3808, line: 54, baseType: !585, size: 32, offset: 1184)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3807, file: !3808, line: 55, baseType: !191, size: 64, offset: 1216)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !545, file: !14, line: 1990, baseType: !3832, size: 64, offset: 960)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!470, !551, !440, !484}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !545, file: !14, line: 1991, baseType: !3836, size: 64, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!109, !516, !3839, !191, !191}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !545, file: !14, line: 1993, baseType: !3842, size: 64, offset: 1088)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!109, !516, !109}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !545, file: !14, line: 1994, baseType: !3846, size: 64, offset: 1152)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!109, !516, !551, !1859, !7, !479}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !545, file: !14, line: 1997, baseType: !3850, size: 64, offset: 1216)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!109, !3684, !516, !1859, !479}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !545, file: !14, line: 1999, baseType: !3854, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!539, !3684, !551, !109}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !545, file: !14, line: 2001, baseType: !3858, size: 64, offset: 1344)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!109, !3684, !551, !539, !109}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !545, file: !14, line: 2003, baseType: !3862, size: 64, offset: 1408)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!109, !3684, !551, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !545, file: !14, line: 2005, baseType: !3868, size: 64, offset: 1472)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!109, !551, !3865}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !545, file: !14, line: 2006, baseType: !3872, size: 64, offset: 1536)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!3875, !516}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3877)
!3877 = !{!3878, !3885}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3876, file: !14, line: 3193, baseType: !3879, size: 128)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3880, line: 296, size: 128, elements: !3881)
!3880 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3881 = !{!3882, !3883, !3884}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3879, file: !3880, line: 297, baseType: !373, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3879, file: !3880, line: 299, baseType: !226, size: 32, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3879, file: !3880, line: 300, baseType: !167, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3876, file: !14, line: 3194, baseType: !585, size: 32, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !517, file: !14, line: 655, baseType: !664, size: 64, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !517, file: !14, line: 656, baseType: !512, size: 64, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !517, file: !14, line: 659, baseType: !167, size: 64, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !517, file: !14, line: 663, baseType: !181, size: 64, offset: 640)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !14, line: 671, baseType: !3891, size: 32, offset: 704)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !14, line: 671, size: 32, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3891, file: !14, line: 672, baseType: !340, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3891, file: !14, line: 673, baseType: !7, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !517, file: !14, line: 675, baseType: !669, size: 32, offset: 736)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !517, file: !14, line: 676, baseType: !674, size: 64, offset: 768)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !517, file: !14, line: 677, baseType: !3795, size: 128, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !517, file: !14, line: 678, baseType: !3795, size: 128, offset: 960)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !517, file: !14, line: 679, baseType: !3795, size: 128, offset: 1088)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !517, file: !14, line: 680, baseType: !373, size: 32, offset: 1216)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !517, file: !14, line: 681, baseType: !410, size: 16, offset: 1248)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !517, file: !14, line: 682, baseType: !401, size: 8, offset: 1264)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !517, file: !14, line: 683, baseType: !401, size: 8, offset: 1272)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !517, file: !14, line: 684, baseType: !1417, size: 64, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !517, file: !14, line: 691, baseType: !181, size: 64, offset: 1344)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !517, file: !14, line: 692, baseType: !1429, size: 320, offset: 1408)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !517, file: !14, line: 694, baseType: !181, size: 64, offset: 1728)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !517, file: !14, line: 695, baseType: !181, size: 64, offset: 1792)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !517, file: !14, line: 697, baseType: !1015, size: 128, offset: 1856)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !517, file: !14, line: 698, baseType: !173, size: 128, offset: 1984)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !517, file: !14, line: 707, baseType: !173, size: 128, offset: 2112)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !517, file: !14, line: 708, baseType: !173, size: 128, offset: 2240)
!3913 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !14, line: 709, baseType: !3914, size: 128, offset: 2368)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !14, line: 709, size: 128, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3914, file: !14, line: 710, baseType: !1138, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3914, file: !14, line: 711, baseType: !992, size: 128, align: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !517, file: !14, line: 713, baseType: !780, size: 64, offset: 2496)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !517, file: !14, line: 714, baseType: !780, size: 64, offset: 2560)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !517, file: !14, line: 715, baseType: !393, size: 32, offset: 2624)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !517, file: !14, line: 716, baseType: !393, size: 32, offset: 2656)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !517, file: !14, line: 717, baseType: !393, size: 32, offset: 2688)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !517, file: !14, line: 719, baseType: !393, size: 32, offset: 2720)
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !14, line: 721, baseType: !3925, size: 64, offset: 2752)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !14, line: 721, size: 64, elements: !3926)
!3926 = !{!3927, !3928}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3925, file: !14, line: 722, baseType: !2127, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3925, file: !14, line: 723, baseType: !1161, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !517, file: !14, line: 725, baseType: !3930, size: 64, offset: 2816)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !517, file: !14, line: 726, baseType: !513, size: 1536, align: 64, offset: 2880)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !517, file: !14, line: 727, baseType: !173, size: 128, offset: 4416)
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !14, line: 728, baseType: !3935, size: 64, offset: 4544)
!3935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !14, line: 728, size: 64, elements: !3936)
!3936 = !{!3937, !3938, !3941, !3942}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3935, file: !14, line: 729, baseType: !2532, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3935, file: !14, line: 730, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3935, file: !14, line: 731, baseType: !440, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3935, file: !14, line: 732, baseType: !7, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !517, file: !14, line: 735, baseType: !586, size: 32, offset: 4608)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !517, file: !14, line: 738, baseType: !586, size: 32, offset: 4640)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !517, file: !14, line: 739, baseType: !3621, size: 64, offset: 4672)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !517, file: !14, line: 750, baseType: !167, size: 64, offset: 4736)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !513, file: !14, line: 474, baseType: !3879, size: 128, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !513, file: !14, line: 475, baseType: !1429, size: 320, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !513, file: !14, line: 476, baseType: !226, size: 32, offset: 512)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !513, file: !14, line: 477, baseType: !393, size: 32, offset: 544)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !513, file: !14, line: 482, baseType: !1715, size: 128, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !513, file: !14, line: 483, baseType: !181, size: 64, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !513, file: !14, line: 484, baseType: !181, size: 64, offset: 768)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !513, file: !14, line: 485, baseType: !3955, size: 64, offset: 832)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3958)
!3958 = !{!3959, !3963, !4033, !4037, !4041, !4047, !4051, !4055, !4060, !4064, !4068, !4072, !4073, !4077, !4081, !4085, !4090, !4094, !4101, !4102}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3957, file: !14, line: 405, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!109, !2320, !1173}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3957, file: !14, line: 406, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!109, !1859, !3967}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3969)
!3969 = !{!3970, !4000, !4014}
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !38, line: 295, baseType: !3971, size: 512)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3968, file: !38, line: 295, size: 512, elements: !3972)
!3972 = !{!3973, !3999}
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !38, line: 296, baseType: !3974, size: 448)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3971, file: !38, line: 296, size: 448, elements: !3975)
!3975 = !{!3976, !3977, !3986, !3987, !3988, !3997, !3998}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3974, file: !38, line: 298, baseType: !181, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, scope: !3974, file: !38, line: 299, baseType: !3978, size: 128, offset: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3974, file: !38, line: 299, size: 128, elements: !3979)
!3979 = !{!3980, !3981}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3978, file: !38, line: 300, baseType: !173, size: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !38, line: 302, baseType: !3982, size: 128)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !38, line: 302, size: 128, elements: !3983)
!3983 = !{!3984, !3985}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3982, file: !38, line: 303, baseType: !167, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3982, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3974, file: !38, line: 310, baseType: !512, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3974, file: !38, line: 311, baseType: !181, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, scope: !3974, file: !38, line: 312, baseType: !3989, size: 64, offset: 320)
!3989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3974, file: !38, line: 312, size: 64, elements: !3990)
!3990 = !{!3991, !3992}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3989, file: !38, line: 313, baseType: !167, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3989, file: !38, line: 314, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3994)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3995)
!3995 = !{!3996}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3994, file: !38, line: 256, baseType: !181, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3974, file: !38, line: 316, baseType: !393, size: 32, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3974, file: !38, line: 317, baseType: !393, size: 32, offset: 416)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3971, file: !38, line: 323, baseType: !2321, size: 512, align: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !38, line: 325, baseType: !4001, size: 512, offset: 512)
!4001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3968, file: !38, line: 325, size: 512, elements: !4002)
!4002 = !{!4003, !4013}
!4003 = !DIDerivedType(tag: DW_TAG_member, scope: !4001, file: !38, line: 326, baseType: !4004, size: 320)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4001, file: !38, line: 326, size: 320, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4011, !4012}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4004, file: !38, line: 327, baseType: !181, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4004, file: !38, line: 328, baseType: !181, size: 64, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4004, file: !38, line: 329, baseType: !181, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4004, file: !38, line: 331, baseType: !393, size: 32, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4004, file: !38, line: 332, baseType: !393, size: 32, offset: 224)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4004, file: !38, line: 333, baseType: !393, size: 32, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4004, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4001, file: !38, line: 339, baseType: !2321, size: 512, align: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !38, line: 341, baseType: !4015, size: 512, offset: 1024)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3968, file: !38, line: 341, size: 512, elements: !4016)
!4016 = !{!4017, !4026, !4032}
!4017 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !38, line: 342, baseType: !4018, size: 384)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4015, file: !38, line: 342, size: 384, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024, !4025}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4018, file: !38, line: 343, baseType: !181, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4018, file: !38, line: 344, baseType: !181, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4018, file: !38, line: 346, baseType: !167, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4018, file: !38, line: 347, baseType: !167, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4018, file: !38, line: 348, baseType: !167, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4018, file: !38, line: 349, baseType: !167, size: 64, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !38, line: 352, baseType: !4027, size: 256)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4015, file: !38, line: 352, size: 256, elements: !4028)
!4028 = !{!4029, !4030, !4031}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4027, file: !38, line: 353, baseType: !181, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4027, file: !38, line: 354, baseType: !181, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4027, file: !38, line: 356, baseType: !173, size: 128, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4015, file: !38, line: 359, baseType: !2321, size: 512, align: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3957, file: !14, line: 409, baseType: !4034, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!109, !512, !1173}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3957, file: !14, line: 412, baseType: !4038, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!854, !512, !3967}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3957, file: !14, line: 414, baseType: !4042, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3957, file: !14, line: 416, baseType: !4048, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!109, !1859, !512, !674, !7, !3371, !2547}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3957, file: !14, line: 419, baseType: !4052, size: 64, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!109, !1859, !512, !674, !7, !7, !2320, !167}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3957, file: !14, line: 424, baseType: !4056, size: 64, offset: 448)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!4059, !512, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 131, baseType: !191)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3957, file: !14, line: 425, baseType: !4061, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !3967, !484, !484}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3957, file: !14, line: 426, baseType: !4065, size: 64, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!854, !3967, !226}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3957, file: !14, line: 427, baseType: !4069, size: 64, offset: 640)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !3967}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3957, file: !14, line: 428, baseType: !2146, size: 64, offset: 704)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3957, file: !14, line: 433, baseType: !4074, size: 64, offset: 768)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!109, !512, !3967, !3967, !74}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3957, file: !14, line: 435, baseType: !4078, size: 64, offset: 832)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!109, !3967}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3957, file: !14, line: 436, baseType: !4082, size: 64, offset: 896)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!854, !3967, !484, !484}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3957, file: !14, line: 438, baseType: !4086, size: 64, offset: 960)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !3967, !4089, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3957, file: !14, line: 439, baseType: !4091, size: 64, offset: 1024)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!109, !512, !2320}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3957, file: !14, line: 442, baseType: !4095, size: 64, offset: 1088)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!109, !4098, !1859, !4100}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3957, file: !14, line: 444, baseType: !2539, size: 64, offset: 1152)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3957, file: !14, line: 445, baseType: !4103, size: 64, offset: 1216)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!109, !2149, !2171}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !14, line: 486, baseType: !181, size: 64, offset: 896)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !513, file: !14, line: 487, baseType: !1429, size: 320, offset: 960)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !513, file: !14, line: 488, baseType: !2582, size: 32, offset: 1280)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !513, file: !14, line: 489, baseType: !373, size: 32, offset: 1312)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !513, file: !14, line: 490, baseType: !173, size: 128, offset: 1344)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !513, file: !14, line: 491, baseType: !167, size: 64, offset: 1472)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !503, file: !464, line: 180, baseType: !4113, size: 64, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!470, !1859, !366, !502, !440, !674, !484}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !503, file: !464, line: 182, baseType: !4113, size: 64, offset: 384)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !503, file: !464, line: 184, baseType: !4118, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!109, !1859, !366, !502, !2211}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !491, file: !464, line: 90, baseType: !4122, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !491, file: !464, line: 91, baseType: !4124, size: 64, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !454, file: !361, line: 120, baseType: !4126, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!4129, !423}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4131)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4132)
!4132 = !{!4133, !4134, !4138, !4142, !4148, !4152}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4131, file: !82, line: 40, baseType: !81, size: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4131, file: !82, line: 41, baseType: !4135, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!854}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4131, file: !82, line: 42, baseType: !4139, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!167}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4131, file: !82, line: 43, baseType: !4143, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!2671, !4146}
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4131, file: !82, line: 44, baseType: !4149, size: 64, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!2671}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4131, file: !82, line: 45, baseType: !817, size: 64, offset: 320)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !454, file: !361, line: 121, baseType: !4154, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!2671, !423}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !454, file: !361, line: 122, baseType: !4158, size: 64, offset: 320)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !423, !4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !360, file: !361, line: 70, baseType: !4164, size: 64, offset: 384)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !689, line: 190, size: 1152, elements: !4166)
!4166 = !{!4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4258, !4259, !4260, !4261, !4262, !4265}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4165, file: !689, line: 191, baseType: !393, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4165, file: !689, line: 192, baseType: !393, size: 32, offset: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4165, file: !689, line: 202, baseType: !4164, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4165, file: !689, line: 203, baseType: !247, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4165, file: !689, line: 205, baseType: !886, size: 192, align: 64, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4165, file: !689, line: 207, baseType: !2671, size: 64, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4165, file: !689, line: 208, baseType: !7, size: 32, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, scope: !4165, file: !689, line: 209, baseType: !4175, size: 256, offset: 512)
!4175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4165, file: !689, line: 209, size: 256, elements: !4176)
!4176 = !{!4177, !4186, !4190}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4175, file: !689, line: 210, baseType: !4178, size: 256)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !689, line: 153, size: 256, elements: !4179)
!4179 = !{!4180, !4181, !4182, !4185}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4178, file: !689, line: 154, baseType: !181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4178, file: !689, line: 156, baseType: !1718, size: 64, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4178, file: !689, line: 162, baseType: !4183, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !689, line: 162, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4178, file: !689, line: 167, baseType: !181, size: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4175, file: !689, line: 211, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !689, line: 170, size: 64, elements: !4188)
!4188 = !{!4189}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4187, file: !689, line: 171, baseType: !4164, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4175, file: !689, line: 212, baseType: !4191, size: 256)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !689, line: 174, size: 256, elements: !4192)
!4192 = !{!4193, !4253, !4256, !4257}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4191, file: !689, line: 175, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !689, line: 271, size: 768, elements: !4197)
!4197 = !{!4198, !4218, !4222, !4226, !4230, !4234, !4238, !4242, !4243, !4244, !4245, !4249}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4196, file: !689, line: 276, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!109, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !689, line: 251, size: 1216, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4203, file: !689, line: 253, baseType: !4164, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4203, file: !689, line: 254, baseType: !1859, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4203, file: !689, line: 255, baseType: !1210, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4203, file: !689, line: 256, baseType: !167, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4203, file: !689, line: 259, baseType: !774, size: 256, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4203, file: !689, line: 260, baseType: !774, size: 256, offset: 512)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4203, file: !689, line: 261, baseType: !109, size: 32, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4203, file: !689, line: 262, baseType: !173, size: 128, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4203, file: !689, line: 263, baseType: !440, size: 64, offset: 960)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4203, file: !689, line: 265, baseType: !484, size: 64, offset: 1024)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4203, file: !689, line: 266, baseType: !854, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4203, file: !689, line: 267, baseType: !854, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4203, file: !689, line: 268, baseType: !2256, size: 64, offset: 1152)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4196, file: !689, line: 277, baseType: !4219, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{null, !4202}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4196, file: !689, line: 290, baseType: !4223, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!109, !1210, !167}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4196, file: !689, line: 292, baseType: !4227, size: 64, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!167, !1210, !2140}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4196, file: !689, line: 293, baseType: !4231, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!167, !1210, !167, !2140}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4196, file: !689, line: 294, baseType: !4235, size: 64, offset: 320)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !1210, !167}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4196, file: !689, line: 296, baseType: !4239, size: 64, offset: 384)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!470, !4202, !440, !484, !674}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4196, file: !689, line: 306, baseType: !484, size: 64, offset: 448)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4196, file: !689, line: 313, baseType: !854, size: 8, offset: 512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4196, file: !689, line: 314, baseType: !4239, size: 64, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4196, file: !689, line: 317, baseType: !4246, size: 64, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!2198, !4202, !2200}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4196, file: !689, line: 320, baseType: !4250, size: 64, offset: 704)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!109, !4202, !2211}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4191, file: !689, line: 176, baseType: !4254, size: 64, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !689, line: 35, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4191, file: !689, line: 177, baseType: !674, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4191, file: !689, line: 178, baseType: !4164, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4165, file: !689, line: 215, baseType: !167, size: 64, offset: 768)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4165, file: !689, line: 221, baseType: !191, size: 64, offset: 832)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4165, file: !689, line: 223, baseType: !410, size: 16, offset: 896)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4165, file: !689, line: 224, baseType: !479, size: 16, offset: 912)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4165, file: !689, line: 225, baseType: !4263, size: 64, offset: 960)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !689, line: 36, flags: DIFlagFwdDecl)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4165, file: !689, line: 227, baseType: !992, size: 128, align: 64, offset: 1024)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !360, file: !361, line: 71, baseType: !4267, size: 32, offset: 448)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4268, line: 19, size: 32, elements: !4269)
!4268 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4269 = !{!4270}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4267, file: !4268, line: 20, baseType: !1549, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !360, file: !361, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !360, file: !361, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !360, file: !361, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !360, file: !361, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !360, file: !361, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !357, file: !94, line: 707, baseType: !4277, size: 64, offset: 512)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !357, file: !94, line: 709, baseType: !4279, size: 64, offset: 576)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !357, file: !94, line: 711, baseType: !247, size: 64, offset: 640)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !357, file: !94, line: 712, baseType: !4283, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4295, !4300, !4304}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4285, file: !94, line: 90, baseType: !247, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4285, file: !94, line: 91, baseType: !488, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4285, file: !94, line: 92, baseType: !4290, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!109, !4293, !435}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4285, file: !94, line: 93, baseType: !4296, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!440, !4293, !4299, !4161, !4162}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4285, file: !94, line: 95, baseType: !4301, size: 64, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !4277}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4285, file: !94, line: 97, baseType: !4305, size: 64, offset: 320)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4307)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4308)
!4308 = !{!4309, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4307, file: !101, line: 287, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!109, !4277}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4307, file: !101, line: 288, baseType: !4301, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4307, file: !101, line: 289, baseType: !4310, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4307, file: !101, line: 290, baseType: !4310, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4307, file: !101, line: 291, baseType: !4310, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4307, file: !101, line: 292, baseType: !4310, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4307, file: !101, line: 293, baseType: !4310, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4307, file: !101, line: 294, baseType: !4310, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4307, file: !101, line: 295, baseType: !4310, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4307, file: !101, line: 296, baseType: !4310, size: 64, offset: 576)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4307, file: !101, line: 297, baseType: !4310, size: 64, offset: 640)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4307, file: !101, line: 298, baseType: !4310, size: 64, offset: 704)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4307, file: !101, line: 299, baseType: !4310, size: 64, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4307, file: !101, line: 300, baseType: !4310, size: 64, offset: 832)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4307, file: !101, line: 301, baseType: !4310, size: 64, offset: 896)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4307, file: !101, line: 302, baseType: !4310, size: 64, offset: 960)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4307, file: !101, line: 303, baseType: !4310, size: 64, offset: 1024)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4307, file: !101, line: 304, baseType: !4310, size: 64, offset: 1088)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4307, file: !101, line: 305, baseType: !4310, size: 64, offset: 1152)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4307, file: !101, line: 306, baseType: !4310, size: 64, offset: 1216)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4307, file: !101, line: 307, baseType: !4310, size: 64, offset: 1280)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4307, file: !101, line: 308, baseType: !4310, size: 64, offset: 1344)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4307, file: !101, line: 309, baseType: !4310, size: 64, offset: 1408)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !357, file: !94, line: 714, baseType: !4336, size: 64, offset: 768)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4339, line: 80, size: 1344, elements: !4340)
!4339 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4419}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4338, file: !4339, line: 81, baseType: !247, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4338, file: !4339, line: 82, baseType: !247, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4338, file: !4339, line: 83, baseType: !488, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4338, file: !4339, line: 84, baseType: !488, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4338, file: !4339, line: 85, baseType: !488, size: 64, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4338, file: !4339, line: 87, baseType: !4347, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!109, !4277, !4350}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4372, !4382, !4383, !4384, !4385, !4386, !4394, !4395, !4396, !4397, !4398, !4399}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4351, file: !88, line: 97, baseType: !247, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4351, file: !88, line: 98, baseType: !4336, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4351, file: !88, line: 100, baseType: !703, size: 64, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4351, file: !88, line: 101, baseType: !247, size: 64, offset: 192)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4351, file: !88, line: 103, baseType: !854, size: 8, offset: 256)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4351, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4351, file: !88, line: 106, baseType: !4360, size: 64, offset: 320)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4363, line: 282, size: 1600, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4364 = !{!4365, !4366, !4367, !4371}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4362, file: !4363, line: 283, baseType: !3624, size: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4362, file: !4363, line: 284, baseType: !3624, size: 256, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4362, file: !4363, line: 285, baseType: !4368, size: 1024, offset: 512)
!4368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 1024, elements: !4369)
!4369 = !{!4370}
!4370 = !DISubrange(count: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4362, file: !4363, line: 286, baseType: !2671, size: 64, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4351, file: !88, line: 107, baseType: !4373, size: 64, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4375)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4363, line: 217, size: 256, elements: !4376)
!4376 = !{!4377, !4378, !4380, !4381}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4375, file: !4363, line: 218, baseType: !3631, size: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4375, file: !4363, line: 219, baseType: !4379, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4363, line: 15, baseType: !181)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4375, file: !4363, line: 220, baseType: !586, size: 32, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4375, file: !4363, line: 221, baseType: !586, size: 32, offset: 224)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4351, file: !88, line: 109, baseType: !4310, size: 64, offset: 448)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4351, file: !88, line: 110, baseType: !4301, size: 64, offset: 512)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4351, file: !88, line: 111, baseType: !4310, size: 64, offset: 576)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4351, file: !88, line: 112, baseType: !4301, size: 64, offset: 640)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4351, file: !88, line: 113, baseType: !4387, size: 64, offset: 704)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!109, !4277, !4390}
!4390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4391)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4392)
!4392 = !{!4393}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4391, file: !101, line: 59, baseType: !109, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4351, file: !88, line: 114, baseType: !4310, size: 64, offset: 768)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4351, file: !88, line: 115, baseType: !488, size: 64, offset: 832)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4351, file: !88, line: 116, baseType: !488, size: 64, offset: 896)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4351, file: !88, line: 118, baseType: !4305, size: 64, offset: 960)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4351, file: !88, line: 119, baseType: !4301, size: 64, offset: 1024)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4351, file: !88, line: 121, baseType: !4400, size: 64, offset: 1088)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4338, file: !4339, line: 88, baseType: !4290, size: 64, offset: 384)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4338, file: !4339, line: 89, baseType: !4310, size: 64, offset: 448)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4338, file: !4339, line: 90, baseType: !4301, size: 64, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4338, file: !4339, line: 91, baseType: !4301, size: 64, offset: 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4338, file: !4339, line: 92, baseType: !4301, size: 64, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4338, file: !4339, line: 94, baseType: !4310, size: 64, offset: 704)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4338, file: !4339, line: 95, baseType: !4310, size: 64, offset: 768)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4338, file: !4339, line: 97, baseType: !4387, size: 64, offset: 832)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4338, file: !4339, line: 98, baseType: !4310, size: 64, offset: 896)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4338, file: !4339, line: 100, baseType: !4310, size: 64, offset: 960)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4338, file: !4339, line: 102, baseType: !4310, size: 64, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4338, file: !4339, line: 103, baseType: !4301, size: 64, offset: 1088)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4338, file: !4339, line: 105, baseType: !4305, size: 64, offset: 1152)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4338, file: !4339, line: 107, baseType: !4416, size: 64, offset: 1216)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4418)
!4418 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4339, line: 107, flags: DIFlagFwdDecl)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4338, file: !4339, line: 109, baseType: !854, size: 8, offset: 1280)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !357, file: !94, line: 715, baseType: !4350, size: 64, offset: 832)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !357, file: !94, line: 717, baseType: !167, size: 64, offset: 896)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !357, file: !94, line: 719, baseType: !167, size: 64, offset: 960)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !357, file: !94, line: 721, baseType: !774, size: 256, offset: 1024)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !357, file: !94, line: 725, baseType: !4425, size: 448, offset: 1280)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4425, file: !94, line: 518, baseType: !173, size: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4425, file: !94, line: 519, baseType: !173, size: 128, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4425, file: !94, line: 520, baseType: !173, size: 128, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4425, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !357, file: !94, line: 726, baseType: !4432, size: 2496, offset: 1728)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4516, !4520}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4432, file: !101, line: 664, baseType: !4390, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4432, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4432, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4432, file: !101, line: 667, baseType: !854, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4432, file: !101, line: 668, baseType: !854, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4432, file: !101, line: 669, baseType: !854, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4432, file: !101, line: 670, baseType: !854, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4432, file: !101, line: 671, baseType: !854, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4432, file: !101, line: 672, baseType: !854, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4432, file: !101, line: 673, baseType: !854, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4432, file: !101, line: 674, baseType: !854, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4432, file: !101, line: 675, baseType: !585, size: 32, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4432, file: !101, line: 676, baseType: !373, size: 32, offset: 96)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4432, file: !101, line: 678, baseType: !173, size: 128, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4432, file: !101, line: 679, baseType: !723, size: 256, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4432, file: !101, line: 680, baseType: !4450, size: 64, offset: 512)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4452, line: 43, size: 1536, elements: !4453)
!4452 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4453 = !{!4454, !4455, !4456, !4457, !4458, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4451, file: !4452, line: 44, baseType: !247, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4451, file: !4452, line: 45, baseType: !109, size: 32, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4451, file: !4452, line: 46, baseType: !173, size: 128, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4451, file: !4452, line: 47, baseType: !373, size: 32, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4451, file: !4452, line: 48, baseType: !4459, size: 64, offset: 320)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4451, file: !4452, line: 49, baseType: !1011, size: 320, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4451, file: !4452, line: 50, baseType: !181, size: 64, offset: 704)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4451, file: !4452, line: 51, baseType: !1664, size: 64, offset: 768)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4451, file: !4452, line: 52, baseType: !1664, size: 64, offset: 832)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4451, file: !4452, line: 53, baseType: !1664, size: 64, offset: 896)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4451, file: !4452, line: 54, baseType: !1664, size: 64, offset: 960)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4451, file: !4452, line: 55, baseType: !1664, size: 64, offset: 1024)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4451, file: !4452, line: 56, baseType: !181, size: 64, offset: 1088)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4451, file: !4452, line: 57, baseType: !181, size: 64, offset: 1152)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4451, file: !4452, line: 58, baseType: !181, size: 64, offset: 1216)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4451, file: !4452, line: 59, baseType: !181, size: 64, offset: 1280)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4451, file: !4452, line: 60, baseType: !181, size: 64, offset: 1344)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4451, file: !4452, line: 61, baseType: !4277, size: 64, offset: 1408)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4451, file: !4452, line: 62, baseType: !854, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4451, file: !4452, line: 63, baseType: !854, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4432, file: !101, line: 681, baseType: !854, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4432, file: !101, line: 682, baseType: !854, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4432, file: !101, line: 683, baseType: !854, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4432, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4432, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4432, file: !101, line: 690, baseType: !1656, size: 512, offset: 640)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4432, file: !101, line: 691, baseType: !191, size: 64, offset: 1152)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4432, file: !101, line: 692, baseType: !1029, size: 256, offset: 1216)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4432, file: !101, line: 693, baseType: !1522, size: 192, offset: 1472)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4432, file: !101, line: 694, baseType: !4459, size: 64, offset: 1664)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4432, file: !101, line: 695, baseType: !393, size: 32, offset: 1728)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4432, file: !101, line: 696, baseType: !393, size: 32, offset: 1760)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4432, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4432, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4432, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4432, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4432, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4432, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4432, file: !101, line: 703, baseType: !854, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4432, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4432, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4432, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4432, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4432, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4432, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4432, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4432, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4432, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4432, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4432, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4432, file: !101, line: 715, baseType: !191, size: 64, offset: 2048)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4432, file: !101, line: 716, baseType: !191, size: 64, offset: 2112)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4432, file: !101, line: 717, baseType: !191, size: 64, offset: 2176)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4432, file: !101, line: 718, baseType: !191, size: 64, offset: 2240)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4432, file: !101, line: 720, baseType: !4511, size: 64, offset: 2304)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4513)
!4513 = !{!4514, !4515}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4512, file: !101, line: 633, baseType: !373, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4512, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4432, file: !101, line: 721, baseType: !4517, size: 64, offset: 2368)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !4277, !770}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4432, file: !101, line: 722, baseType: !4521, size: 64, offset: 2432)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !357, file: !94, line: 727, baseType: !4524, size: 64, offset: 4224)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4533, !4534, !4535}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4525, file: !101, line: 743, baseType: !4307, size: 1472)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4525, file: !101, line: 744, baseType: !4310, size: 64, offset: 1472)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4525, file: !101, line: 745, baseType: !4530, size: 64, offset: 1536)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{null, !4277, !854}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4525, file: !101, line: 746, baseType: !4310, size: 64, offset: 1600)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4525, file: !101, line: 747, baseType: !4301, size: 64, offset: 1664)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4525, file: !101, line: 748, baseType: !4301, size: 64, offset: 1728)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !357, file: !94, line: 736, baseType: !4537, size: 128, offset: 4288)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4538)
!4538 = !{!4539, !4543}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4537, file: !94, line: 531, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4542, line: 13, flags: DIFlagFwdDecl)
!4542 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4537, file: !94, line: 532, baseType: !4544, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !357, file: !94, line: 738, baseType: !4547, size: 64, offset: 4416)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4549)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !357, file: !94, line: 740, baseType: !4551, size: 64, offset: 4480)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !357, file: !94, line: 741, baseType: !191, size: 64, offset: 4544)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !357, file: !94, line: 746, baseType: !191, size: 64, offset: 4608)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !357, file: !94, line: 747, baseType: !4555, size: 64, offset: 4672)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4557)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !357, file: !94, line: 749, baseType: !4559, size: 64, offset: 4736)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4561)
!4561 = !{!4562, !4563, !4564}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4560, file: !94, line: 433, baseType: !7, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4560, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4560, file: !94, line: 435, baseType: !181, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !357, file: !94, line: 751, baseType: !173, size: 128, offset: 4800)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !357, file: !94, line: 762, baseType: !4567, size: 64, offset: 4928)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !357, file: !94, line: 770, baseType: !4570, offset: 4992)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4571, line: 5, elements: !1058)
!4571 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !357, file: !94, line: 772, baseType: !4573, size: 64, offset: 4992)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4575, line: 18, flags: DIFlagFwdDecl)
!4575 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !357, file: !94, line: 773, baseType: !4577, size: 64, offset: 5056)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4579, line: 41, size: 512, elements: !4580)
!4579 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4580 = !{!4581, !4582, !4676, !4677, !4678, !4679}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4578, file: !4579, line: 42, baseType: !4577, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4578, file: !4579, line: 43, baseType: !4583, size: 64, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4585)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4579, line: 125, size: 1408, elements: !4586)
!4586 = !{!4587, !4591, !4595, !4601, !4605, !4606, !4611, !4615, !4619, !4623, !4627, !4628, !4632, !4636, !4640, !4651, !4652, !4653, !4654, !4664, !4668, !4672}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4585, file: !4579, line: 126, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!4577, !4577}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4585, file: !4579, line: 127, baseType: !4592, size: 64, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4577}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4585, file: !4579, line: 128, baseType: !4596, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!854, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4578)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4585, file: !4579, line: 129, baseType: !4602, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!2671, !4599, !4293}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4585, file: !4579, line: 131, baseType: !4596, size: 64, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4585, file: !4579, line: 133, baseType: !4607, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4610, !4599}
!4610 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4579, line: 132, flags: DIFlagFwdDecl)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4585, file: !4579, line: 134, baseType: !4612, size: 64, offset: 384)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!854, !4599, !247}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4585, file: !4579, line: 136, baseType: !4616, size: 64, offset: 448)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!109, !4599, !247, !7, !167, !484}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4585, file: !4579, line: 141, baseType: !4620, size: 64, offset: 512)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!109, !4599, !247, !1106, !484}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4585, file: !4579, line: 144, baseType: !4624, size: 64, offset: 576)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!247, !4599}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4585, file: !4579, line: 145, baseType: !4624, size: 64, offset: 640)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4585, file: !4579, line: 146, baseType: !4629, size: 64, offset: 704)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!4577, !4599}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4585, file: !4579, line: 148, baseType: !4633, size: 64, offset: 768)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!4577, !4599, !4577}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4585, file: !4579, line: 151, baseType: !4637, size: 64, offset: 832)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!4577, !4599, !247}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4585, file: !4579, line: 153, baseType: !4641, size: 64, offset: 896)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!109, !4599, !247, !247, !7, !7, !4644}
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4579, line: 94, size: 640, elements: !4646)
!4646 = !{!4647, !4648, !4649}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4645, file: !4579, line: 95, baseType: !4577, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4645, file: !4579, line: 96, baseType: !7, size: 32, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4645, file: !4579, line: 97, baseType: !4650, size: 512, offset: 128)
!4650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 512, elements: !1699)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4585, file: !4579, line: 158, baseType: !4633, size: 64, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4585, file: !4579, line: 161, baseType: !4629, size: 64, offset: 1024)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4585, file: !4579, line: 163, baseType: !4588, size: 64, offset: 1088)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4585, file: !4579, line: 164, baseType: !4655, size: 64, offset: 1152)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!109, !4599, !4658}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4579, line: 73, size: 128, elements: !4660)
!4660 = !{!4661, !4662, !4663}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4659, file: !4579, line: 74, baseType: !7, size: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4659, file: !4579, line: 75, baseType: !7, size: 32, offset: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4659, file: !4579, line: 76, baseType: !4599, size: 64, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4585, file: !4579, line: 166, baseType: !4665, size: 64, offset: 1216)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!167, !4577, !109}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4585, file: !4579, line: 167, baseType: !4669, size: 64, offset: 1280)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!109, !4599, !7}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4585, file: !4579, line: 168, baseType: !4673, size: 64, offset: 1344)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!109, !4577}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4578, file: !4579, line: 44, baseType: !4277, size: 64, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4578, file: !4579, line: 45, baseType: !173, size: 128, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4578, file: !4579, line: 46, baseType: !173, size: 128, offset: 320)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4578, file: !4579, line: 47, baseType: !401, size: 8, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !357, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !357, file: !94, line: 778, baseType: !669, size: 32, offset: 5152)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !357, file: !94, line: 779, baseType: !585, size: 32, offset: 5184)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !357, file: !94, line: 781, baseType: !373, size: 32, offset: 5216)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !357, file: !94, line: 782, baseType: !173, size: 128, offset: 5248)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !357, file: !94, line: 784, baseType: !4686, size: 64, offset: 5376)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4688)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4689, line: 52, size: 768, elements: !4690)
!4689 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4699, !4703, !4704, !4705, !4706, !4710, !4714}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4688, file: !4689, line: 53, baseType: !247, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4688, file: !4689, line: 55, baseType: !488, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4688, file: !4689, line: 56, baseType: !488, size: 64, offset: 128)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4688, file: !4689, line: 58, baseType: !4290, size: 64, offset: 192)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4688, file: !4689, line: 59, baseType: !4696, size: 64, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!440, !4293, !4299}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4688, file: !4689, line: 61, baseType: !4700, size: 64, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{null, !4686}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4688, file: !4689, line: 62, baseType: !4301, size: 64, offset: 384)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4688, file: !4689, line: 64, baseType: !4310, size: 64, offset: 448)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4688, file: !4689, line: 66, baseType: !4129, size: 64, offset: 512)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4688, file: !4689, line: 67, baseType: !4707, size: 64, offset: 576)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!2671, !4293}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4688, file: !4689, line: 69, baseType: !4711, size: 64, offset: 640)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{null, !4293, !4161, !4162}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4688, file: !4689, line: 71, baseType: !4305, size: 64, offset: 704)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !357, file: !94, line: 785, baseType: !488, size: 64, offset: 5440)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !357, file: !94, line: 787, baseType: !4301, size: 64, offset: 5504)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !357, file: !94, line: 788, baseType: !4718, size: 64, offset: 5568)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !357, file: !94, line: 789, baseType: !4721, size: 64, offset: 5632)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !357, file: !94, line: 791, baseType: !4724, size: 64, offset: 5696)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4726)
!4726 = !{!4727, !4728, !4729, !4730, !4731}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4725, file: !94, line: 598, baseType: !116, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4725, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4725, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4725, file: !94, line: 601, baseType: !854, size: 8, offset: 96)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4725, file: !94, line: 602, baseType: !854, size: 8, offset: 104)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !357, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !357, file: !94, line: 795, baseType: !854, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !357, file: !94, line: 796, baseType: !854, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !357, file: !94, line: 797, baseType: !854, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !357, file: !94, line: 798, baseType: !854, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !357, file: !94, line: 799, baseType: !854, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !354, file: !343, line: 245, baseType: !191, size: 64, offset: 5824)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !354, file: !343, line: 246, baseType: !7, size: 32, offset: 5888)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !354, file: !343, line: 247, baseType: !109, size: 32, offset: 5920)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !354, file: !343, line: 249, baseType: !173, size: 128, offset: 5952)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !354, file: !343, line: 250, baseType: !173, size: 128, offset: 6080)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !354, file: !343, line: 251, baseType: !173, size: 128, offset: 6208)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !354, file: !343, line: 252, baseType: !173, size: 128, offset: 6336)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !354, file: !343, line: 254, baseType: !4746, size: 64, offset: 6464)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !343, line: 411, size: 6720, elements: !4748)
!4748 = !{!4749, !4750, !4751, !4755, !4756, !4757, !4761, !4765, !4766, !4767, !4768, !4769}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !4747, file: !343, line: 412, baseType: !173, size: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4747, file: !343, line: 413, baseType: !440, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4747, file: !343, line: 416, baseType: !4752, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!109, !353}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4747, file: !343, line: 417, baseType: !4752, size: 64, offset: 256)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4747, file: !343, line: 418, baseType: !4752, size: 64, offset: 320)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4747, file: !343, line: 421, baseType: !4758, size: 64, offset: 384)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!854, !353}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4747, file: !343, line: 422, baseType: !4762, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!109, !353, !4390}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4747, file: !343, line: 423, baseType: !4752, size: 64, offset: 512)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4747, file: !343, line: 426, baseType: !200, size: 8, offset: 576)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4747, file: !343, line: 427, baseType: !357, size: 5824, offset: 640)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !4747, file: !343, line: 428, baseType: !173, size: 128, offset: 6464)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4747, file: !343, line: 429, baseType: !173, size: 128, offset: 6592)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !354, file: !343, line: 255, baseType: !4771, size: 64, offset: 6528)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !343, line: 202, size: 6976, elements: !4773)
!4773 = !{!4774, !4775, !4776, !4777, !4778, !4779, !4780, !4786, !4790, !4791, !4792, !4793, !4794}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4772, file: !343, line: 203, baseType: !357, size: 5824)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4772, file: !343, line: 204, baseType: !200, size: 8, offset: 5824)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !4772, file: !343, line: 205, baseType: !173, size: 128, offset: 5888)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !4772, file: !343, line: 206, baseType: !173, size: 128, offset: 6016)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4772, file: !343, line: 207, baseType: !173, size: 128, offset: 6144)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4772, file: !343, line: 209, baseType: !4746, size: 64, offset: 6272)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4772, file: !343, line: 210, baseType: !4781, size: 64, offset: 6336)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !343, line: 369, size: 128, elements: !4783)
!4783 = !{!4784, !4785}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4782, file: !343, line: 370, baseType: !3170, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4782, file: !343, line: 371, baseType: !4781, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4772, file: !343, line: 212, baseType: !4787, size: 400, offset: 6400)
!4787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 400, elements: !4788)
!4788 = !{!4789}
!4789 = !DISubrange(count: 50)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !4772, file: !343, line: 213, baseType: !200, size: 8, offset: 6800)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !4772, file: !343, line: 214, baseType: !200, size: 8, offset: 6808)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4772, file: !343, line: 215, baseType: !7, size: 32, offset: 6816)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !4772, file: !343, line: 216, baseType: !200, size: 8, offset: 6848)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4772, file: !343, line: 217, baseType: !4795, size: 64, offset: 6912)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4797, line: 131, flags: DIFlagFwdDecl)
!4797 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !354, file: !343, line: 256, baseType: !4799, size: 64, offset: 6592)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !343, line: 374, size: 1664, elements: !4801)
!4801 = !{!4802, !4803, !4811, !4812, !4816, !4817, !4818, !4819, !4820}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4800, file: !343, line: 375, baseType: !247, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4800, file: !343, line: 376, baseType: !4804, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4806)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !4363, line: 240, size: 128, elements: !4807)
!4807 = !{!4808, !4810}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4806, file: !4363, line: 241, baseType: !4809, size: 64)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 64, elements: !1699)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4806, file: !4363, line: 242, baseType: !4379, size: 64, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4800, file: !343, line: 377, baseType: !7, size: 32, offset: 128)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4800, file: !343, line: 378, baseType: !4813, size: 64, offset: 192)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!109, !353, !4804}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4800, file: !343, line: 379, baseType: !350, size: 64, offset: 256)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4800, file: !343, line: 380, baseType: !350, size: 64, offset: 320)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4800, file: !343, line: 381, baseType: !4762, size: 64, offset: 384)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4800, file: !343, line: 382, baseType: !4752, size: 64, offset: 448)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4800, file: !343, line: 383, baseType: !4351, size: 1152, offset: 512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !354, file: !343, line: 257, baseType: !4822, size: 64, offset: 6656)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !343, line: 226, size: 256, elements: !4824)
!4824 = !{!4825, !4826, !4862, !4863}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4823, file: !343, line: 227, baseType: !4771, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4823, file: !343, line: 228, baseType: !4827, size: 64, offset: 64)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !343, line: 388, size: 2240, elements: !4829)
!4829 = !{!4830, !4831, !4832, !4844, !4845, !4849, !4853, !4857, !4861}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !4828, file: !343, line: 389, baseType: !173, size: 128)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4828, file: !343, line: 390, baseType: !440, size: 64, offset: 128)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4828, file: !343, line: 391, baseType: !4833, size: 64, offset: 192)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4835)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !4363, line: 245, size: 640, elements: !4836)
!4836 = !{!4837, !4838, !4839}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4835, file: !4363, line: 246, baseType: !4809, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4835, file: !4363, line: 247, baseType: !4379, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !4835, file: !4363, line: 250, baseType: !4840, size: 512, offset: 128)
!4840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4841, size: 512, elements: !1699)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4835, file: !4363, line: 248, size: 64, elements: !4842)
!4842 = !{!4843}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4841, file: !4363, line: 249, baseType: !4809, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4828, file: !343, line: 392, baseType: !7, size: 32, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4828, file: !343, line: 393, baseType: !4846, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!109, !4822, !4833}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4828, file: !343, line: 395, baseType: !4850, size: 64, offset: 384)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{null, !4822}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4828, file: !343, line: 396, baseType: !4854, size: 64, offset: 448)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!109, !4822, !4390}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4828, file: !343, line: 397, baseType: !4858, size: 64, offset: 512)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!109, !4822}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4828, file: !343, line: 398, baseType: !4800, size: 1664, offset: 576)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4823, file: !343, line: 229, baseType: !167, size: 64, offset: 128)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !4823, file: !343, line: 230, baseType: !4390, size: 32, offset: 192)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !354, file: !343, line: 259, baseType: !4781, size: 64, offset: 6720)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !354, file: !343, line: 261, baseType: !109, size: 32, offset: 6784)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !354, file: !343, line: 262, baseType: !109, size: 32, offset: 6816)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !354, file: !343, line: 263, baseType: !7, size: 32, offset: 6848)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !354, file: !343, line: 264, baseType: !173, size: 128, offset: 6912)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !354, file: !343, line: 265, baseType: !173, size: 128, offset: 7040)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !343, line: 267, baseType: !4787, size: 400, offset: 7168)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !343, line: 268, baseType: !109, size: 32, offset: 7584)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !354, file: !343, line: 269, baseType: !4795, size: 64, offset: 7616)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !354, file: !343, line: 270, baseType: !167, size: 64, offset: 7680)
!4874 = !{!4875}
!4875 = !DISubrange(count: 19)
!4876 = !{i32 7, !"Dwarf Version", i32 5}
!4877 = !{i32 2, !"Debug Info Version", i32 3}
!4878 = !{i32 1, !"wchar_size", i32 2}
!4879 = !{i32 8, !"cf-protection-branch", i32 1}
!4880 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4881 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4882 = !{i32 1, !"Code Model", i32 2}
!4883 = !{i32 1, !"override-stack-alignment", i32 8}
!4884 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4885 = distinct !DISubprogram(name: "pnp_fixup_device", scope: !3, file: !3, line: 443, type: !351, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4886)
!4886 = !{!4887, !4888}
!4887 = !DILocalVariable(name: "dev", arg: 1, scope: !4885, file: !3, line: 443, type: !353)
!4888 = !DILocalVariable(name: "f", scope: !4885, file: !3, line: 445, type: !4889)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4890 = !DILocation(line: 443, column: 39, scope: !4885)
!4891 = !DILocation(line: 445, column: 2, scope: !4885)
!4892 = !DILocation(line: 445, column: 20, scope: !4885)
!4893 = !DILocation(line: 447, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 447, column: 2)
!4895 = !DILocation(line: 447, column: 7, scope: !4894)
!4896 = !DILocation(line: 447, column: 24, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 447, column: 2)
!4898 = !DILocation(line: 447, column: 27, scope: !4897)
!4899 = !DILocation(line: 447, column: 23, scope: !4897)
!4900 = !DILocation(line: 447, column: 2, scope: !4894)
!4901 = !DILocation(line: 448, column: 23, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 448, column: 7)
!4903 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 447, column: 36)
!4904 = !DILocation(line: 448, column: 28, scope: !4902)
!4905 = !DILocation(line: 448, column: 32, scope: !4902)
!4906 = !DILocation(line: 448, column: 35, scope: !4902)
!4907 = !DILocation(line: 448, column: 8, scope: !4902)
!4908 = !DILocation(line: 448, column: 7, scope: !4903)
!4909 = !DILocation(line: 449, column: 4, scope: !4902)
!4910 = !DILocation(line: 450, column: 3, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 450, column: 3)
!4912 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 450, column: 3)
!4913 = !DILocation(line: 450, column: 3, scope: !4912)
!4914 = !DILocation(line: 450, column: 3, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 450, column: 3)
!4916 = !DILocation(line: 450, column: 3, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 450, column: 3)
!4918 = !DILocation(line: 452, column: 3, scope: !4903)
!4919 = !DILocation(line: 452, column: 6, scope: !4903)
!4920 = !DILocation(line: 452, column: 21, scope: !4903)
!4921 = !DILocation(line: 453, column: 2, scope: !4903)
!4922 = !DILocation(line: 447, column: 32, scope: !4897)
!4923 = !DILocation(line: 447, column: 2, scope: !4897)
!4924 = distinct !{!4924, !4900, !4925, !4926, !4927}
!4925 = !DILocation(line: 453, column: 2, scope: !4894)
!4926 = !{!"llvm.loop.mustprogress"}
!4927 = !{!"llvm.loop.unroll.disable"}
!4928 = !DILocation(line: 454, column: 1, scope: !4885)
!4929 = !DISubprogram(name: "compare_pnp_id", scope: !343, file: !343, line: 468, type: !4930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!109, !4781, !247}
!4932 = !DISubprogram(name: "_dev_printk", scope: !4933, file: !4933, line: 41, type: !4934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4933 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!4934 = !DISubroutineType(types: !4935)
!4935 = !{null, !247, !4293, !247, null}
!4936 = distinct !DISubprogram(name: "quirk_awe32_resources", scope: !3, file: !3, line: 50, type: !351, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4937)
!4937 = !{!4938, !4939, !4940, !4941, !4944}
!4938 = !DILocalVariable(name: "dev", arg: 1, scope: !4936, file: !3, line: 50, type: !353)
!4939 = !DILocalVariable(name: "option", scope: !4936, file: !3, line: 52, type: !168)
!4940 = !DILocalVariable(name: "set", scope: !4936, file: !3, line: 53, type: !7)
!4941 = !DILocalVariable(name: "__mptr", scope: !4942, file: !3, line: 59, type: !167)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 59, column: 2)
!4943 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 59, column: 2)
!4944 = !DILocalVariable(name: "__mptr", scope: !4945, file: !3, line: 59, type: !167)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 59, column: 2)
!4946 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 59, column: 2)
!4947 = !DILocation(line: 50, column: 51, scope: !4936)
!4948 = !DILocation(line: 52, column: 2, scope: !4936)
!4949 = !DILocation(line: 52, column: 21, scope: !4936)
!4950 = !DILocation(line: 53, column: 2, scope: !4936)
!4951 = !DILocation(line: 53, column: 15, scope: !4936)
!4952 = !DILocation(line: 59, column: 2, scope: !4942)
!4953 = !DILocation(line: 59, column: 2, scope: !4943)
!4954 = !DILocation(line: 59, column: 2, scope: !4946)
!4955 = !DILocation(line: 60, column: 31, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 60, column: 7)
!4957 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 59, column: 51)
!4958 = !DILocation(line: 60, column: 7, scope: !4956)
!4959 = !DILocation(line: 60, column: 39, scope: !4956)
!4960 = !DILocation(line: 61, column: 22, scope: !4956)
!4961 = !DILocation(line: 61, column: 7, scope: !4956)
!4962 = !DILocation(line: 61, column: 33, scope: !4956)
!4963 = !DILocation(line: 61, column: 30, scope: !4956)
!4964 = !DILocation(line: 60, column: 7, scope: !4957)
!4965 = !DILocation(line: 62, column: 25, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 61, column: 38)
!4967 = !DILocation(line: 62, column: 10, scope: !4966)
!4968 = !DILocation(line: 62, column: 8, scope: !4966)
!4969 = !DILocation(line: 63, column: 26, scope: !4966)
!4970 = !DILocation(line: 63, column: 31, scope: !4966)
!4971 = !DILocation(line: 63, column: 4, scope: !4966)
!4972 = !DILocation(line: 64, column: 26, scope: !4966)
!4973 = !DILocation(line: 64, column: 31, scope: !4966)
!4974 = !DILocation(line: 64, column: 4, scope: !4966)
!4975 = !DILocation(line: 65, column: 3, scope: !4966)
!4976 = !DILocation(line: 66, column: 2, scope: !4957)
!4977 = !DILocation(line: 59, column: 2, scope: !4945)
!4978 = distinct !{!4978, !4953, !4979, !4926, !4927}
!4979 = !DILocation(line: 66, column: 2, scope: !4943)
!4980 = !DILocation(line: 67, column: 1, scope: !4936)
!4981 = distinct !DISubprogram(name: "quirk_cmi8330_resources", scope: !3, file: !3, line: 69, type: !351, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4982)
!4982 = !{!4983, !4984, !4985, !4987, !4989, !4992}
!4983 = !DILocalVariable(name: "dev", arg: 1, scope: !4981, file: !3, line: 69, type: !353)
!4984 = !DILocalVariable(name: "option", scope: !4981, file: !3, line: 71, type: !168)
!4985 = !DILocalVariable(name: "irq", scope: !4981, file: !3, line: 72, type: !4986)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!4987 = !DILocalVariable(name: "dma", scope: !4981, file: !3, line: 73, type: !4988)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!4989 = !DILocalVariable(name: "__mptr", scope: !4990, file: !3, line: 75, type: !167)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 75, column: 2)
!4991 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 75, column: 2)
!4992 = !DILocalVariable(name: "__mptr", scope: !4993, file: !3, line: 75, type: !167)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 75, column: 2)
!4994 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 75, column: 2)
!4995 = !DILocation(line: 69, column: 53, scope: !4981)
!4996 = !DILocation(line: 71, column: 2, scope: !4981)
!4997 = !DILocation(line: 71, column: 21, scope: !4981)
!4998 = !DILocation(line: 72, column: 2, scope: !4981)
!4999 = !DILocation(line: 72, column: 18, scope: !4981)
!5000 = !DILocation(line: 73, column: 2, scope: !4981)
!5001 = !DILocation(line: 73, column: 18, scope: !4981)
!5002 = !DILocation(line: 75, column: 2, scope: !4990)
!5003 = !DILocation(line: 75, column: 2, scope: !4991)
!5004 = !DILocation(line: 75, column: 2, scope: !4994)
!5005 = !DILocation(line: 76, column: 32, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 76, column: 7)
!5007 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 75, column: 51)
!5008 = !DILocation(line: 76, column: 8, scope: !5006)
!5009 = !DILocation(line: 76, column: 7, scope: !5007)
!5010 = !DILocation(line: 77, column: 4, scope: !5006)
!5011 = !DILocation(line: 79, column: 7, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 79, column: 7)
!5013 = !DILocation(line: 79, column: 15, scope: !5012)
!5014 = !DILocation(line: 79, column: 20, scope: !5012)
!5015 = !DILocation(line: 79, column: 7, scope: !5007)
!5016 = !DILocation(line: 80, column: 11, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 79, column: 39)
!5018 = !DILocation(line: 80, column: 19, scope: !5017)
!5019 = !DILocation(line: 80, column: 8, scope: !5017)
!5020 = !DILocation(line: 81, column: 16, scope: !5017)
!5021 = !DILocation(line: 81, column: 21, scope: !5017)
!5022 = !DILocation(line: 81, column: 25, scope: !5017)
!5023 = !DILocation(line: 81, column: 4, scope: !5017)
!5024 = !DILocation(line: 82, column: 4, scope: !5017)
!5025 = !DILocation(line: 83, column: 4, scope: !5017)
!5026 = !DILocation(line: 84, column: 4, scope: !5017)
!5027 = !DILocation(line: 85, column: 4, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 85, column: 4)
!5029 = !DILocation(line: 85, column: 4, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 85, column: 4)
!5031 = !DILocation(line: 88, column: 3, scope: !5017)
!5032 = !DILocation(line: 88, column: 14, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 88, column: 14)
!5034 = !DILocation(line: 88, column: 22, scope: !5033)
!5035 = !DILocation(line: 88, column: 27, scope: !5033)
!5036 = !DILocation(line: 88, column: 14, scope: !5012)
!5037 = !DILocation(line: 89, column: 11, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 88, column: 46)
!5039 = !DILocation(line: 89, column: 19, scope: !5038)
!5040 = !DILocation(line: 89, column: 8, scope: !5038)
!5041 = !DILocation(line: 90, column: 9, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 90, column: 8)
!5043 = !DILocation(line: 90, column: 14, scope: !5042)
!5044 = !DILocation(line: 90, column: 20, scope: !5042)
!5045 = !DILocation(line: 90, column: 48, scope: !5042)
!5046 = !DILocation(line: 91, column: 27, scope: !5042)
!5047 = !DILocation(line: 92, column: 8, scope: !5042)
!5048 = !DILocation(line: 92, column: 13, scope: !5042)
!5049 = !DILocation(line: 92, column: 17, scope: !5042)
!5050 = !DILocation(line: 90, column: 8, scope: !5038)
!5051 = !DILocation(line: 93, column: 5, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 93, column: 5)
!5053 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 92, column: 26)
!5054 = !DILocation(line: 93, column: 5, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 93, column: 5)
!5056 = !DILocation(line: 97, column: 5, scope: !5053)
!5057 = !DILocation(line: 97, column: 10, scope: !5053)
!5058 = !DILocation(line: 97, column: 14, scope: !5053)
!5059 = !DILocation(line: 98, column: 4, scope: !5053)
!5060 = !DILocation(line: 99, column: 3, scope: !5038)
!5061 = !DILocation(line: 100, column: 2, scope: !5007)
!5062 = !DILocation(line: 75, column: 2, scope: !4993)
!5063 = distinct !{!5063, !5003, !5064, !4926, !4927}
!5064 = !DILocation(line: 100, column: 2, scope: !4991)
!5065 = !DILocation(line: 101, column: 1, scope: !4981)
!5066 = distinct !DISubprogram(name: "quirk_sb16audio_resources", scope: !3, file: !3, line: 103, type: !351, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5067)
!5067 = !{!5068, !5069, !5070, !5071, !5072, !5074, !5077}
!5068 = !DILocalVariable(name: "dev", arg: 1, scope: !5066, file: !3, line: 103, type: !353)
!5069 = !DILocalVariable(name: "option", scope: !5066, file: !3, line: 105, type: !168)
!5070 = !DILocalVariable(name: "prev_option_flags", scope: !5066, file: !3, line: 106, type: !7)
!5071 = !DILocalVariable(name: "n", scope: !5066, file: !3, line: 106, type: !7)
!5072 = !DILocalVariable(name: "port", scope: !5066, file: !3, line: 107, type: !5073)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!5074 = !DILocalVariable(name: "__mptr", scope: !5075, file: !3, line: 114, type: !167)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 114, column: 2)
!5076 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 114, column: 2)
!5077 = !DILocalVariable(name: "__mptr", scope: !5078, file: !3, line: 114, type: !167)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 114, column: 2)
!5079 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 114, column: 2)
!5080 = !DILocation(line: 103, column: 55, scope: !5066)
!5081 = !DILocation(line: 105, column: 2, scope: !5066)
!5082 = !DILocation(line: 105, column: 21, scope: !5066)
!5083 = !DILocation(line: 106, column: 2, scope: !5066)
!5084 = !DILocation(line: 106, column: 15, scope: !5066)
!5085 = !DILocation(line: 106, column: 39, scope: !5066)
!5086 = !DILocation(line: 107, column: 2, scope: !5066)
!5087 = !DILocation(line: 107, column: 19, scope: !5066)
!5088 = !DILocation(line: 114, column: 2, scope: !5075)
!5089 = !DILocation(line: 114, column: 2, scope: !5076)
!5090 = !DILocation(line: 114, column: 2, scope: !5079)
!5091 = !DILocation(line: 115, column: 7, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 115, column: 7)
!5093 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 114, column: 51)
!5094 = !DILocation(line: 115, column: 28, scope: !5092)
!5095 = !DILocation(line: 115, column: 36, scope: !5092)
!5096 = !DILocation(line: 115, column: 25, scope: !5092)
!5097 = !DILocation(line: 115, column: 7, scope: !5093)
!5098 = !DILocation(line: 116, column: 24, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 115, column: 43)
!5100 = !DILocation(line: 116, column: 32, scope: !5099)
!5101 = !DILocation(line: 116, column: 22, scope: !5099)
!5102 = !DILocation(line: 117, column: 6, scope: !5099)
!5103 = !DILocation(line: 118, column: 3, scope: !5099)
!5104 = !DILocation(line: 120, column: 31, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 120, column: 7)
!5106 = !DILocation(line: 120, column: 7, scope: !5105)
!5107 = !DILocation(line: 120, column: 39, scope: !5105)
!5108 = !DILocation(line: 121, column: 7, scope: !5105)
!5109 = !DILocation(line: 121, column: 15, scope: !5105)
!5110 = !DILocation(line: 121, column: 20, scope: !5105)
!5111 = !DILocation(line: 120, column: 7, scope: !5093)
!5112 = !DILocation(line: 122, column: 5, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 121, column: 38)
!5114 = !DILocation(line: 123, column: 12, scope: !5113)
!5115 = !DILocation(line: 123, column: 20, scope: !5113)
!5116 = !DILocation(line: 123, column: 9, scope: !5113)
!5117 = !DILocation(line: 124, column: 8, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 124, column: 8)
!5119 = !DILocation(line: 124, column: 10, scope: !5118)
!5120 = !DILocation(line: 124, column: 15, scope: !5118)
!5121 = !DILocation(line: 124, column: 18, scope: !5118)
!5122 = !DILocation(line: 124, column: 24, scope: !5118)
!5123 = !DILocation(line: 124, column: 31, scope: !5118)
!5124 = !DILocation(line: 124, column: 37, scope: !5118)
!5125 = !DILocation(line: 124, column: 28, scope: !5118)
!5126 = !DILocation(line: 124, column: 8, scope: !5113)
!5127 = !DILocation(line: 125, column: 5, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 124, column: 42)
!5129 = !DILocation(line: 125, column: 11, scope: !5128)
!5130 = !DILocation(line: 125, column: 15, scope: !5128)
!5131 = !DILocation(line: 126, column: 5, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 126, column: 5)
!5133 = !DILocation(line: 126, column: 5, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 126, column: 5)
!5135 = !DILocation(line: 133, column: 4, scope: !5128)
!5136 = !DILocation(line: 134, column: 3, scope: !5113)
!5137 = !DILocation(line: 135, column: 2, scope: !5093)
!5138 = !DILocation(line: 114, column: 2, scope: !5078)
!5139 = distinct !{!5139, !5089, !5140, !4926, !4927}
!5140 = !DILocation(line: 135, column: 2, scope: !5076)
!5141 = !DILocation(line: 136, column: 1, scope: !5066)
!5142 = distinct !DISubprogram(name: "quirk_ad1815_mpu_resources", scope: !3, file: !3, line: 208, type: !351, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5143)
!5143 = !{!5144, !5145, !5146, !5147, !5148, !5151}
!5144 = !DILocalVariable(name: "dev", arg: 1, scope: !5142, file: !3, line: 208, type: !353)
!5145 = !DILocalVariable(name: "option", scope: !5142, file: !3, line: 210, type: !168)
!5146 = !DILocalVariable(name: "irq", scope: !5142, file: !3, line: 211, type: !4986)
!5147 = !DILocalVariable(name: "independent_irqs", scope: !5142, file: !3, line: 212, type: !7)
!5148 = !DILocalVariable(name: "__mptr", scope: !5149, file: !3, line: 214, type: !167)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 214, column: 2)
!5150 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 214, column: 2)
!5151 = !DILocalVariable(name: "__mptr", scope: !5152, file: !3, line: 214, type: !167)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 214, column: 2)
!5153 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 214, column: 2)
!5154 = !DILocation(line: 208, column: 56, scope: !5142)
!5155 = !DILocation(line: 210, column: 2, scope: !5142)
!5156 = !DILocation(line: 210, column: 21, scope: !5142)
!5157 = !DILocation(line: 211, column: 2, scope: !5142)
!5158 = !DILocation(line: 211, column: 18, scope: !5142)
!5159 = !DILocation(line: 212, column: 2, scope: !5142)
!5160 = !DILocation(line: 212, column: 15, scope: !5142)
!5161 = !DILocation(line: 214, column: 2, scope: !5149)
!5162 = !DILocation(line: 214, column: 2, scope: !5150)
!5163 = !DILocation(line: 214, column: 2, scope: !5153)
!5164 = !DILocation(line: 215, column: 7, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 215, column: 7)
!5166 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 214, column: 51)
!5167 = !DILocation(line: 215, column: 15, scope: !5165)
!5168 = !DILocation(line: 215, column: 20, scope: !5165)
!5169 = !DILocation(line: 215, column: 38, scope: !5165)
!5170 = !DILocation(line: 216, column: 32, scope: !5165)
!5171 = !DILocation(line: 216, column: 8, scope: !5165)
!5172 = !DILocation(line: 215, column: 7, scope: !5166)
!5173 = !DILocation(line: 217, column: 20, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 216, column: 41)
!5175 = !DILocation(line: 218, column: 11, scope: !5174)
!5176 = !DILocation(line: 218, column: 19, scope: !5174)
!5177 = !DILocation(line: 218, column: 8, scope: !5174)
!5178 = !DILocation(line: 219, column: 3, scope: !5174)
!5179 = !DILocation(line: 220, column: 2, scope: !5166)
!5180 = !DILocation(line: 214, column: 2, scope: !5152)
!5181 = distinct !{!5181, !5162, !5182, !4926, !4927}
!5182 = !DILocation(line: 220, column: 2, scope: !5150)
!5183 = !DILocation(line: 222, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 222, column: 6)
!5185 = !DILocation(line: 222, column: 23, scope: !5184)
!5186 = !DILocation(line: 222, column: 6, scope: !5142)
!5187 = !DILocation(line: 223, column: 3, scope: !5184)
!5188 = !DILocation(line: 225, column: 2, scope: !5142)
!5189 = !DILocation(line: 225, column: 7, scope: !5142)
!5190 = !DILocation(line: 225, column: 13, scope: !5142)
!5191 = !DILocation(line: 226, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 226, column: 2)
!5193 = !DILocation(line: 226, column: 2, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 226, column: 2)
!5195 = !DILocation(line: 227, column: 1, scope: !5142)
!5196 = distinct !DISubprogram(name: "quirk_add_irq_optional_dependent_sets", scope: !3, file: !3, line: 180, type: !351, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5197)
!5197 = !{!5198, !5199, !5200, !5201, !5202, !5203, !5204}
!5198 = !DILocalVariable(name: "dev", arg: 1, scope: !5196, file: !3, line: 180, type: !353)
!5199 = !DILocalVariable(name: "new_option", scope: !5196, file: !3, line: 182, type: !168)
!5200 = !DILocalVariable(name: "num_sets", scope: !5196, file: !3, line: 183, type: !7)
!5201 = !DILocalVariable(name: "i", scope: !5196, file: !3, line: 183, type: !7)
!5202 = !DILocalVariable(name: "set", scope: !5196, file: !3, line: 183, type: !7)
!5203 = !DILocalVariable(name: "irq", scope: !5196, file: !3, line: 184, type: !4986)
!5204 = !DILocalVariable(name: "__mptr", scope: !5205, file: !3, line: 199, type: !167)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 199, column: 17)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 193, column: 59)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 187, column: 33)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 187, column: 2)
!5209 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 187, column: 2)
!5210 = !DILocation(line: 180, column: 67, scope: !5196)
!5211 = !DILocation(line: 182, column: 2, scope: !5196)
!5212 = !DILocation(line: 182, column: 21, scope: !5196)
!5213 = !DILocation(line: 183, column: 2, scope: !5196)
!5214 = !DILocation(line: 183, column: 15, scope: !5196)
!5215 = !DILocation(line: 183, column: 25, scope: !5196)
!5216 = !DILocation(line: 183, column: 28, scope: !5196)
!5217 = !DILocation(line: 184, column: 2, scope: !5196)
!5218 = !DILocation(line: 184, column: 18, scope: !5196)
!5219 = !DILocation(line: 186, column: 13, scope: !5196)
!5220 = !DILocation(line: 186, column: 18, scope: !5196)
!5221 = !DILocation(line: 186, column: 11, scope: !5196)
!5222 = !DILocation(line: 187, column: 9, scope: !5209)
!5223 = !DILocation(line: 187, column: 7, scope: !5209)
!5224 = !DILocation(line: 187, column: 14, scope: !5208)
!5225 = !DILocation(line: 187, column: 18, scope: !5208)
!5226 = !DILocation(line: 187, column: 16, scope: !5208)
!5227 = !DILocation(line: 187, column: 2, scope: !5209)
!5228 = !DILocation(line: 188, column: 40, scope: !5207)
!5229 = !DILocation(line: 188, column: 45, scope: !5207)
!5230 = !DILocation(line: 188, column: 16, scope: !5207)
!5231 = !DILocation(line: 188, column: 14, scope: !5207)
!5232 = !DILocation(line: 189, column: 8, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 189, column: 7)
!5234 = !DILocation(line: 189, column: 7, scope: !5207)
!5235 = !DILocation(line: 190, column: 4, scope: !5233)
!5236 = !DILocation(line: 192, column: 24, scope: !5207)
!5237 = !DILocation(line: 192, column: 9, scope: !5207)
!5238 = !DILocation(line: 192, column: 7, scope: !5207)
!5239 = !DILocation(line: 193, column: 3, scope: !5207)
!5240 = !DILocation(line: 193, column: 10, scope: !5207)
!5241 = !DILocation(line: 193, column: 21, scope: !5207)
!5242 = !DILocation(line: 193, column: 39, scope: !5207)
!5243 = !DILocation(line: 193, column: 24, scope: !5207)
!5244 = !DILocation(line: 193, column: 54, scope: !5207)
!5245 = !DILocation(line: 193, column: 51, scope: !5207)
!5246 = !DILocation(line: 0, scope: !5207)
!5247 = !DILocation(line: 194, column: 8, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 194, column: 8)
!5249 = !DILocation(line: 194, column: 20, scope: !5248)
!5250 = !DILocation(line: 194, column: 25, scope: !5248)
!5251 = !DILocation(line: 194, column: 8, scope: !5206)
!5252 = !DILocation(line: 195, column: 12, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 194, column: 44)
!5254 = !DILocation(line: 195, column: 24, scope: !5253)
!5255 = !DILocation(line: 195, column: 9, scope: !5253)
!5256 = !DILocation(line: 196, column: 5, scope: !5253)
!5257 = !DILocation(line: 196, column: 10, scope: !5253)
!5258 = !DILocation(line: 196, column: 16, scope: !5253)
!5259 = !DILocation(line: 197, column: 4, scope: !5253)
!5260 = !DILocation(line: 198, column: 24, scope: !5206)
!5261 = !DILocation(line: 198, column: 29, scope: !5206)
!5262 = !DILocation(line: 198, column: 4, scope: !5206)
!5263 = !DILocation(line: 199, column: 17, scope: !5205)
!5264 = !DILocation(line: 199, column: 17, scope: !5206)
!5265 = !DILocation(line: 199, column: 15, scope: !5206)
!5266 = distinct !{!5266, !5239, !5267, !4926, !4927}
!5267 = !DILocation(line: 201, column: 3, scope: !5207)
!5268 = !DILocation(line: 203, column: 3, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 203, column: 3)
!5270 = !DILocation(line: 203, column: 3, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 203, column: 3)
!5272 = !DILocation(line: 205, column: 2, scope: !5207)
!5273 = !DILocation(line: 187, column: 29, scope: !5208)
!5274 = !DILocation(line: 187, column: 2, scope: !5208)
!5275 = distinct !{!5275, !5227, !5276, !4926, !4927}
!5276 = !DILocation(line: 205, column: 2, scope: !5209)
!5277 = !DILocation(line: 206, column: 1, scope: !5196)
!5278 = distinct !DISubprogram(name: "quirk_system_pci_resources", scope: !3, file: !3, line: 229, type: !351, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5279)
!5279 = !{!5280, !5281, !5565, !5566, !5567, !5568, !5569}
!5280 = !DILocalVariable(name: "dev", arg: 1, scope: !5278, file: !3, line: 229, type: !353)
!5281 = !DILocalVariable(name: "pdev", scope: !5278, file: !3, line: 231, type: !5282)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !157, line: 322, size: 16640, elements: !5284)
!5284 = !{!5285, !5286, !5340, !5341, !5342, !5343, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5449, !5450, !5451, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5528, !5529, !5530, !5532, !5533, !5535, !5536, !5537, !5538, !5544, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !5283, file: !157, line: 323, baseType: !173, size: 128)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5283, file: !157, line: 324, baseType: !5287, size: 64, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !157, line: 647, size: 8256, elements: !5289)
!5289 = !{!5290, !5291, !5292, !5293, !5294, !5295, !5296, !5298, !5299, !5300, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5334, !5335, !5336, !5337, !5338, !5339}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5288, file: !157, line: 648, baseType: !173, size: 128)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5288, file: !157, line: 649, baseType: !5287, size: 64, offset: 128)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5288, file: !157, line: 650, baseType: !173, size: 128, offset: 192)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !5288, file: !157, line: 651, baseType: !173, size: 128, offset: 320)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5288, file: !157, line: 652, baseType: !5282, size: 64, offset: 448)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !5288, file: !157, line: 653, baseType: !173, size: 128, offset: 512)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5288, file: !157, line: 655, baseType: !5297, size: 256, offset: 640)
!5297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !210)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5288, file: !157, line: 656, baseType: !173, size: 128, offset: 896)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !5288, file: !157, line: 657, baseType: !241, size: 512, offset: 1024)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5288, file: !157, line: 659, baseType: !5301, size: 64, offset: 1536)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !157, line: 773, size: 320, elements: !5303)
!5303 = !{!5304, !5308, !5312, !5316, !5320}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !5302, file: !157, line: 774, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!109, !5287}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !5302, file: !157, line: 775, baseType: !5309, size: 64, offset: 64)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{null, !5287}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !5302, file: !157, line: 776, baseType: !5313, size: 64, offset: 128)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!167, !5287, !7, !109}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5302, file: !157, line: 777, baseType: !5317, size: 64, offset: 192)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!109, !5287, !7, !109, !109, !2748}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5302, file: !157, line: 778, baseType: !5321, size: 64, offset: 256)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!109, !5287, !7, !109, !109, !585}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5288, file: !157, line: 660, baseType: !167, size: 64, offset: 1600)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !5288, file: !157, line: 661, baseType: !4795, size: 64, offset: 1664)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5288, file: !157, line: 663, baseType: !200, size: 8, offset: 1728)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5288, file: !157, line: 664, baseType: !200, size: 8, offset: 1736)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !5288, file: !157, line: 665, baseType: !200, size: 8, offset: 1744)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !5288, file: !157, line: 666, baseType: !200, size: 8, offset: 1752)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5288, file: !157, line: 671, baseType: !284, size: 384, offset: 1760)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !5288, file: !157, line: 673, baseType: !410, size: 16, offset: 2144)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5288, file: !157, line: 674, baseType: !5333, size: 16, offset: 2160)
!5333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !157, line: 255, baseType: !410)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !5288, file: !157, line: 675, baseType: !4277, size: 64, offset: 2176)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5288, file: !157, line: 676, baseType: !357, size: 5824, offset: 2240)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !5288, file: !157, line: 677, baseType: !502, size: 64, offset: 8064)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !5288, file: !157, line: 678, baseType: !502, size: 64, offset: 8128)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !5288, file: !157, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !5288, file: !157, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !5283, file: !157, line: 325, baseType: !5287, size: 64, offset: 192)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5283, file: !157, line: 327, baseType: !167, size: 64, offset: 256)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !5283, file: !157, line: 328, baseType: !4795, size: 64, offset: 320)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5283, file: !157, line: 329, baseType: !5344, size: 64, offset: 384)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !157, line: 76, size: 832, elements: !5346)
!5346 = !{!5347, !5348, !5349, !5352, !5353}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5345, file: !157, line: 77, baseType: !5287, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5345, file: !157, line: 78, baseType: !173, size: 128, offset: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5345, file: !157, line: 79, baseType: !5350, size: 64, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !157, line: 79, flags: DIFlagFwdDecl)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5345, file: !157, line: 80, baseType: !200, size: 8, offset: 256)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5345, file: !157, line: 81, baseType: !360, size: 512, offset: 320)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !5283, file: !157, line: 331, baseType: !7, size: 32, offset: 448)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5283, file: !157, line: 332, baseType: !410, size: 16, offset: 480)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5283, file: !157, line: 333, baseType: !410, size: 16, offset: 496)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !5283, file: !157, line: 334, baseType: !410, size: 16, offset: 512)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !5283, file: !157, line: 335, baseType: !410, size: 16, offset: 528)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5283, file: !157, line: 336, baseType: !7, size: 32, offset: 544)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5283, file: !157, line: 337, baseType: !401, size: 8, offset: 576)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !5283, file: !157, line: 338, baseType: !401, size: 8, offset: 584)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !5283, file: !157, line: 344, baseType: !5363, size: 64, offset: 640)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !157, line: 319, flags: DIFlagFwdDecl)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !5283, file: !157, line: 345, baseType: !5282, size: 64, offset: 704)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !5283, file: !157, line: 347, baseType: !585, size: 32, offset: 768)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !5283, file: !157, line: 348, baseType: !401, size: 8, offset: 800)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !5283, file: !157, line: 349, baseType: !401, size: 8, offset: 808)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !5283, file: !157, line: 350, baseType: !401, size: 8, offset: 816)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !5283, file: !157, line: 351, baseType: !401, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !5283, file: !157, line: 352, baseType: !401, size: 8, offset: 832)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5283, file: !157, line: 353, baseType: !401, size: 8, offset: 840)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !5283, file: !157, line: 354, baseType: !408, size: 16, offset: 848)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !5283, file: !157, line: 355, baseType: !232, size: 64, offset: 896)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5283, file: !157, line: 357, baseType: !5376, size: 64, offset: 960)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !157, line: 918, size: 2368, elements: !5378)
!5378 = !{!5379, !5380, !5381, !5394, !5398, !5402, !5406, !5410, !5411, !5415, !5416, !5420, !5440, !5441, !5442, !5443, !5448}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5377, file: !157, line: 919, baseType: !173, size: 128)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5377, file: !157, line: 920, baseType: !247, size: 64, offset: 128)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5377, file: !157, line: 921, baseType: !5382, size: 64, offset: 192)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5384)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4363, line: 44, size: 320, elements: !5385)
!5385 = !{!5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5384, file: !4363, line: 45, baseType: !586, size: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5384, file: !4363, line: 45, baseType: !586, size: 32, offset: 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !5384, file: !4363, line: 46, baseType: !586, size: 32, offset: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !5384, file: !4363, line: 46, baseType: !586, size: 32, offset: 96)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5384, file: !4363, line: 47, baseType: !586, size: 32, offset: 128)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !5384, file: !4363, line: 47, baseType: !586, size: 32, offset: 160)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5384, file: !4363, line: 48, baseType: !4379, size: 64, offset: 192)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !5384, file: !4363, line: 49, baseType: !586, size: 32, offset: 256)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5377, file: !157, line: 922, baseType: !5395, size: 64, offset: 256)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!109, !5282, !5382}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5377, file: !157, line: 923, baseType: !5399, size: 64, offset: 320)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{null, !5282}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5377, file: !157, line: 924, baseType: !5403, size: 64, offset: 384)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!109, !5282, !4390}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5377, file: !157, line: 925, baseType: !5407, size: 64, offset: 448)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!109, !5282}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5377, file: !157, line: 926, baseType: !5399, size: 64, offset: 512)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !5377, file: !157, line: 927, baseType: !5412, size: 64, offset: 576)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!109, !5282, !109}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !5377, file: !157, line: 928, baseType: !5412, size: 64, offset: 640)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !5377, file: !157, line: 929, baseType: !5417, size: 64, offset: 704)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!585, !5282}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !5377, file: !157, line: 930, baseType: !5421, size: 64, offset: 768)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5423)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !157, line: 837, size: 448, elements: !5424)
!5424 = !{!5425, !5431, !5435, !5436, !5437, !5438, !5439}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5423, file: !157, line: 839, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!5429, !5282, !5430}
!5429 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !157, line: 814, baseType: !7)
!5430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !157, line: 196, baseType: !7)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5423, file: !157, line: 843, baseType: !5432, size: 64, offset: 64)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!5429, !5282}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5423, file: !157, line: 846, baseType: !5432, size: 64, offset: 128)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5423, file: !157, line: 849, baseType: !5399, size: 64, offset: 192)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5423, file: !157, line: 850, baseType: !5399, size: 64, offset: 256)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5423, file: !157, line: 853, baseType: !5399, size: 64, offset: 320)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !5423, file: !157, line: 856, baseType: !5399, size: 64, offset: 384)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5377, file: !157, line: 931, baseType: !488, size: 64, offset: 832)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5377, file: !157, line: 932, baseType: !488, size: 64, offset: 896)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5377, file: !157, line: 933, baseType: !4351, size: 1152, offset: 960)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5377, file: !157, line: 934, baseType: !5444, size: 192, offset: 2112)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !157, line: 801, size: 192, elements: !5445)
!5445 = !{!5446, !5447}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5444, file: !157, line: 802, baseType: !373, size: 32)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5444, file: !157, line: 803, baseType: !173, size: 128, offset: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !5377, file: !157, line: 935, baseType: !854, size: 8, offset: 2304)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5283, file: !157, line: 358, baseType: !191, size: 64, offset: 1024)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !5283, file: !157, line: 364, baseType: !4560, size: 128, offset: 1088)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !5283, file: !157, line: 366, baseType: !5452, size: 32, offset: 1216)
!5452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !157, line: 171, baseType: !109)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !5283, file: !157, line: 369, baseType: !401, size: 8, offset: 1248)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !5283, file: !157, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !5283, file: !157, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !5283, file: !157, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !5283, file: !157, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !5283, file: !157, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !5283, file: !157, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !5283, file: !157, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !5283, file: !157, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !5283, file: !157, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !5283, file: !157, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !5283, file: !157, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !5283, file: !157, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !5283, file: !157, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !5283, file: !157, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !5283, file: !157, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !5283, file: !157, line: 390, baseType: !7, size: 32, offset: 1280)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !5283, file: !157, line: 391, baseType: !7, size: 32, offset: 1312)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !5283, file: !157, line: 394, baseType: !5472, size: 64, offset: 1344)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !157, line: 316, flags: DIFlagFwdDecl)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !5283, file: !157, line: 395, baseType: !408, size: 16, offset: 1408)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !5283, file: !157, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !5283, file: !157, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !5283, file: !157, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !5283, file: !157, line: 402, baseType: !5430, size: 32, offset: 1440)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5283, file: !157, line: 403, baseType: !357, size: 5824, offset: 1472)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !5283, file: !157, line: 405, baseType: !109, size: 32, offset: 7296)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5283, file: !157, line: 411, baseType: !7, size: 32, offset: 7328)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5283, file: !157, line: 412, baseType: !5483, size: 5632, offset: 7360)
!5483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 5632, elements: !5484)
!5484 = !{!5485}
!5485 = !DISubrange(count: 11)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !5283, file: !157, line: 413, baseType: !241, size: 512, offset: 12992)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5283, file: !157, line: 415, baseType: !854, size: 8, offset: 13504)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !5283, file: !157, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !5283, file: !157, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !5283, file: !157, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !5283, file: !157, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !5283, file: !157, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !5283, file: !157, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !5283, file: !157, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !5283, file: !157, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !5283, file: !157, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !5283, file: !157, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !5283, file: !157, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !5283, file: !157, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !5283, file: !157, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !5283, file: !157, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !5283, file: !157, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !5283, file: !157, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !5283, file: !157, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !5283, file: !157, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !5283, file: !157, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !5283, file: !157, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !5283, file: !157, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !5283, file: !157, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !5283, file: !157, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !5283, file: !157, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !5283, file: !157, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !5283, file: !157, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !5283, file: !157, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !5283, file: !157, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !5283, file: !157, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !5283, file: !157, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !5283, file: !157, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !5283, file: !157, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !5283, file: !157, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !5283, file: !157, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !5283, file: !157, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !5283, file: !157, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !5283, file: !157, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !5283, file: !157, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !5283, file: !157, line: 468, baseType: !5527, size: 16, offset: 13552)
!5527 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !157, line: 222, baseType: !410)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !5283, file: !157, line: 469, baseType: !393, size: 32, offset: 13568)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !5283, file: !157, line: 471, baseType: !373, size: 32, offset: 13600)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !5283, file: !157, line: 472, baseType: !5531, size: 512, offset: 13632)
!5531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 512, elements: !2849)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !5283, file: !157, line: 473, baseType: !1138, size: 64, offset: 14144)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !5283, file: !157, line: 474, baseType: !5534, size: 704, offset: 14208)
!5534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 704, elements: !5484)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !5283, file: !157, line: 475, baseType: !5534, size: 704, offset: 14912)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !5283, file: !157, line: 487, baseType: !167, size: 64, offset: 15616)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !5283, file: !157, line: 488, baseType: !732, size: 32, offset: 15680)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !5283, file: !157, line: 490, baseType: !5539, size: 320, offset: 15744)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !157, line: 309, size: 320, elements: !5540)
!5540 = !{!5541, !5542, !5543}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5539, file: !157, line: 310, baseType: !774, size: 256)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5539, file: !157, line: 311, baseType: !7, size: 32, offset: 256)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5539, file: !157, line: 312, baseType: !401, size: 8, offset: 288)
!5544 = !DIDerivedType(tag: DW_TAG_member, scope: !5283, file: !157, line: 497, baseType: !5545, size: 64, offset: 16064)
!5545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5283, file: !157, line: 497, size: 64, elements: !5546)
!5546 = !{!5547, !5550}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5545, file: !157, line: 498, baseType: !5548, size: 64)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !157, line: 317, flags: DIFlagFwdDecl)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5545, file: !157, line: 499, baseType: !5282, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !5283, file: !157, line: 501, baseType: !408, size: 16, offset: 16128)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !5283, file: !157, line: 502, baseType: !401, size: 8, offset: 16144)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !5283, file: !157, line: 505, baseType: !408, size: 16, offset: 16160)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !5283, file: !157, line: 506, baseType: !585, size: 32, offset: 16192)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !5283, file: !157, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !5283, file: !157, line: 510, baseType: !408, size: 16, offset: 16240)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !5283, file: !157, line: 511, baseType: !408, size: 16, offset: 16256)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !5283, file: !157, line: 519, baseType: !408, size: 16, offset: 16272)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !5283, file: !157, line: 520, baseType: !190, size: 64, offset: 16320)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !5283, file: !157, line: 521, baseType: !484, size: 64, offset: 16384)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !5283, file: !157, line: 526, baseType: !247, size: 64, offset: 16448)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !5283, file: !157, line: 528, baseType: !181, size: 64, offset: 16512)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !5283, file: !157, line: 531, baseType: !5564, size: 56, offset: 16576)
!5564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 56, elements: !347)
!5565 = !DILocalVariable(name: "res", scope: !5278, file: !3, line: 232, type: !253)
!5566 = !DILocalVariable(name: "r", scope: !5278, file: !3, line: 232, type: !253)
!5567 = !DILocalVariable(name: "i", scope: !5278, file: !3, line: 233, type: !109)
!5568 = !DILocalVariable(name: "j", scope: !5278, file: !3, line: 233, type: !109)
!5569 = !DILocalVariable(name: "type", scope: !5570, file: !3, line: 246, type: !181)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 245, column: 41)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 245, column: 3)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 245, column: 3)
!5573 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 244, column: 25)
!5574 = !DILocation(line: 229, column: 56, scope: !5278)
!5575 = !DILocation(line: 231, column: 2, scope: !5278)
!5576 = !DILocation(line: 231, column: 18, scope: !5278)
!5577 = !DILocation(line: 232, column: 2, scope: !5278)
!5578 = !DILocation(line: 232, column: 19, scope: !5278)
!5579 = !DILocation(line: 232, column: 25, scope: !5278)
!5580 = !DILocation(line: 233, column: 2, scope: !5278)
!5581 = !DILocation(line: 233, column: 6, scope: !5278)
!5582 = !DILocation(line: 233, column: 9, scope: !5278)
!5583 = !DILocation(line: 244, column: 2, scope: !5278)
!5584 = !DILocation(line: 245, column: 3, scope: !5572)
!5585 = !DILocation(line: 245, column: 3, scope: !5571)
!5586 = !DILocation(line: 0, scope: !5571)
!5587 = !DILocation(line: 246, column: 4, scope: !5570)
!5588 = !DILocation(line: 246, column: 18, scope: !5570)
!5589 = !DILocation(line: 246, column: 39, scope: !5570)
!5590 = !DILocation(line: 246, column: 25, scope: !5570)
!5591 = !DILocation(line: 248, column: 10, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 248, column: 8)
!5593 = !DILocation(line: 248, column: 15, scope: !5592)
!5594 = !DILocation(line: 248, column: 32, scope: !5592)
!5595 = !DILocation(line: 248, column: 35, scope: !5592)
!5596 = !DILocation(line: 248, column: 40, scope: !5592)
!5597 = !DILocation(line: 248, column: 59, scope: !5592)
!5598 = !DILocation(line: 249, column: 22, scope: !5592)
!5599 = !DILocation(line: 249, column: 8, scope: !5592)
!5600 = !DILocation(line: 249, column: 25, scope: !5592)
!5601 = !DILocation(line: 248, column: 8, scope: !5570)
!5602 = !DILocation(line: 250, column: 5, scope: !5592)
!5603 = !DILocation(line: 252, column: 8, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 252, column: 8)
!5605 = !DILocation(line: 252, column: 11, scope: !5604)
!5606 = !DILocation(line: 252, column: 17, scope: !5604)
!5607 = !DILocation(line: 252, column: 8, scope: !5570)
!5608 = !DILocation(line: 253, column: 5, scope: !5604)
!5609 = !DILocation(line: 255, column: 11, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 255, column: 4)
!5611 = !DILocation(line: 255, column: 9, scope: !5610)
!5612 = !DILocation(line: 256, column: 33, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 255, column: 4)
!5614 = !DILocation(line: 256, column: 38, scope: !5613)
!5615 = !DILocation(line: 256, column: 44, scope: !5613)
!5616 = !DILocation(line: 256, column: 16, scope: !5613)
!5617 = !DILocation(line: 256, column: 14, scope: !5613)
!5618 = !DILocation(line: 255, column: 4, scope: !5610)
!5619 = !DILocation(line: 257, column: 9, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 257, column: 9)
!5621 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 256, column: 54)
!5622 = !DILocation(line: 257, column: 14, scope: !5620)
!5623 = !DILocation(line: 257, column: 20, scope: !5620)
!5624 = !DILocation(line: 257, column: 25, scope: !5620)
!5625 = !DILocation(line: 257, column: 28, scope: !5620)
!5626 = !DILocation(line: 257, column: 33, scope: !5620)
!5627 = !DILocation(line: 257, column: 37, scope: !5620)
!5628 = !DILocation(line: 257, column: 9, scope: !5621)
!5629 = !DILocation(line: 258, column: 6, scope: !5620)
!5630 = !DILocation(line: 264, column: 28, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 264, column: 9)
!5632 = !DILocation(line: 264, column: 33, scope: !5631)
!5633 = !DILocation(line: 264, column: 10, scope: !5631)
!5634 = !DILocation(line: 264, column: 9, scope: !5621)
!5635 = !DILocation(line: 265, column: 6, scope: !5631)
!5636 = !DILocation(line: 274, column: 9, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 274, column: 9)
!5638 = !DILocation(line: 274, column: 14, scope: !5637)
!5639 = !DILocation(line: 274, column: 23, scope: !5637)
!5640 = !DILocation(line: 274, column: 26, scope: !5637)
!5641 = !DILocation(line: 274, column: 20, scope: !5637)
!5642 = !DILocation(line: 274, column: 32, scope: !5637)
!5643 = !DILocation(line: 274, column: 35, scope: !5637)
!5644 = !DILocation(line: 274, column: 40, scope: !5637)
!5645 = !DILocation(line: 274, column: 47, scope: !5637)
!5646 = !DILocation(line: 274, column: 50, scope: !5637)
!5647 = !DILocation(line: 274, column: 44, scope: !5637)
!5648 = !DILocation(line: 274, column: 9, scope: !5621)
!5649 = !DILocation(line: 275, column: 6, scope: !5637)
!5650 = !DILocation(line: 282, column: 5, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 282, column: 5)
!5652 = !DILocation(line: 282, column: 5, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 282, column: 5)
!5654 = !DILocation(line: 285, column: 5, scope: !5621)
!5655 = !DILocation(line: 285, column: 10, scope: !5621)
!5656 = !DILocation(line: 285, column: 16, scope: !5621)
!5657 = !DILocation(line: 286, column: 4, scope: !5621)
!5658 = !DILocation(line: 256, column: 50, scope: !5613)
!5659 = !DILocation(line: 255, column: 4, scope: !5613)
!5660 = distinct !{!5660, !5618, !5661, !4926, !4927}
!5661 = !DILocation(line: 286, column: 4, scope: !5610)
!5662 = !DILocation(line: 287, column: 3, scope: !5571)
!5663 = !DILocation(line: 287, column: 3, scope: !5570)
!5664 = distinct !{!5664, !5584, !5665, !4926, !4927}
!5665 = !DILocation(line: 287, column: 3, scope: !5572)
!5666 = distinct !{!5666, !5583, !5667, !4926, !4927}
!5667 = !DILocation(line: 288, column: 2, scope: !5278)
!5668 = !DILocation(line: 289, column: 1, scope: !5278)
!5669 = distinct !DISubprogram(name: "quirk_amd_mmconfig_area", scope: !3, file: !3, line: 295, type: !351, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5670)
!5670 = !{!5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5681}
!5671 = !DILocalVariable(name: "dev", arg: 1, scope: !5669, file: !3, line: 295, type: !353)
!5672 = !DILocalVariable(name: "start", scope: !5669, file: !3, line: 297, type: !189)
!5673 = !DILocalVariable(name: "end", scope: !5669, file: !3, line: 297, type: !189)
!5674 = !DILocalVariable(name: "pnp_res", scope: !5669, file: !3, line: 298, type: !236)
!5675 = !DILocalVariable(name: "res", scope: !5669, file: !3, line: 299, type: !253)
!5676 = !DILocalVariable(name: "mmconfig_res", scope: !5669, file: !3, line: 300, type: !241)
!5677 = !DILocalVariable(name: "mmconfig", scope: !5669, file: !3, line: 300, type: !253)
!5678 = !DILocalVariable(name: "__mptr", scope: !5679, file: !3, line: 306, type: !167)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 306, column: 2)
!5680 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 306, column: 2)
!5681 = !DILocalVariable(name: "__mptr", scope: !5682, file: !3, line: 306, type: !167)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 306, column: 2)
!5683 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 306, column: 2)
!5684 = !DILocation(line: 295, column: 53, scope: !5669)
!5685 = !DILocation(line: 297, column: 2, scope: !5669)
!5686 = !DILocation(line: 297, column: 18, scope: !5669)
!5687 = !DILocation(line: 297, column: 25, scope: !5669)
!5688 = !DILocation(line: 298, column: 2, scope: !5669)
!5689 = !DILocation(line: 298, column: 23, scope: !5669)
!5690 = !DILocation(line: 299, column: 2, scope: !5669)
!5691 = !DILocation(line: 299, column: 19, scope: !5669)
!5692 = !DILocation(line: 300, column: 2, scope: !5669)
!5693 = !DILocation(line: 300, column: 18, scope: !5669)
!5694 = !DILocation(line: 300, column: 33, scope: !5669)
!5695 = !DILocation(line: 302, column: 13, scope: !5669)
!5696 = !DILocation(line: 302, column: 11, scope: !5669)
!5697 = !DILocation(line: 303, column: 7, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 303, column: 6)
!5699 = !DILocation(line: 303, column: 6, scope: !5669)
!5700 = !DILocation(line: 304, column: 3, scope: !5698)
!5701 = !DILocation(line: 306, column: 2, scope: !5679)
!5702 = !DILocation(line: 306, column: 2, scope: !5680)
!5703 = !DILocation(line: 306, column: 2, scope: !5683)
!5704 = !DILocation(line: 307, column: 10, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 306, column: 54)
!5706 = !DILocation(line: 307, column: 19, scope: !5705)
!5707 = !DILocation(line: 307, column: 7, scope: !5705)
!5708 = !DILocation(line: 308, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 308, column: 7)
!5710 = !DILocation(line: 308, column: 12, scope: !5709)
!5711 = !DILocation(line: 308, column: 18, scope: !5709)
!5712 = !DILocation(line: 308, column: 28, scope: !5709)
!5713 = !DILocation(line: 308, column: 16, scope: !5709)
!5714 = !DILocation(line: 308, column: 34, scope: !5709)
!5715 = !DILocation(line: 308, column: 37, scope: !5709)
!5716 = !DILocation(line: 308, column: 42, scope: !5709)
!5717 = !DILocation(line: 308, column: 50, scope: !5709)
!5718 = !DILocation(line: 308, column: 60, scope: !5709)
!5719 = !DILocation(line: 308, column: 48, scope: !5709)
!5720 = !DILocation(line: 308, column: 64, scope: !5709)
!5721 = !DILocation(line: 309, column: 8, scope: !5709)
!5722 = !DILocation(line: 309, column: 13, scope: !5709)
!5723 = !DILocation(line: 309, column: 22, scope: !5709)
!5724 = !DILocation(line: 309, column: 32, scope: !5709)
!5725 = !DILocation(line: 309, column: 19, scope: !5709)
!5726 = !DILocation(line: 309, column: 38, scope: !5709)
!5727 = !DILocation(line: 309, column: 41, scope: !5709)
!5728 = !DILocation(line: 309, column: 46, scope: !5709)
!5729 = !DILocation(line: 309, column: 53, scope: !5709)
!5730 = !DILocation(line: 309, column: 63, scope: !5709)
!5731 = !DILocation(line: 309, column: 50, scope: !5709)
!5732 = !DILocation(line: 308, column: 7, scope: !5705)
!5733 = !DILocation(line: 310, column: 4, scope: !5709)
!5734 = !DILocation(line: 312, column: 3, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 312, column: 3)
!5736 = !DILocation(line: 312, column: 3, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 312, column: 3)
!5738 = !DILocation(line: 315, column: 7, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 315, column: 7)
!5740 = !DILocation(line: 315, column: 17, scope: !5739)
!5741 = !DILocation(line: 315, column: 25, scope: !5739)
!5742 = !DILocation(line: 315, column: 30, scope: !5739)
!5743 = !DILocation(line: 315, column: 23, scope: !5739)
!5744 = !DILocation(line: 315, column: 7, scope: !5705)
!5745 = !DILocation(line: 316, column: 12, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 315, column: 37)
!5747 = !DILocation(line: 316, column: 22, scope: !5746)
!5748 = !DILocation(line: 316, column: 10, scope: !5746)
!5749 = !DILocation(line: 317, column: 10, scope: !5746)
!5750 = !DILocation(line: 317, column: 15, scope: !5746)
!5751 = !DILocation(line: 317, column: 21, scope: !5746)
!5752 = !DILocation(line: 317, column: 8, scope: !5746)
!5753 = !DILocation(line: 318, column: 25, scope: !5746)
!5754 = !DILocation(line: 318, column: 30, scope: !5746)
!5755 = !DILocation(line: 318, column: 37, scope: !5746)
!5756 = !DILocation(line: 318, column: 4, scope: !5746)
!5757 = !DILocation(line: 319, column: 3, scope: !5746)
!5758 = !DILocation(line: 320, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 320, column: 7)
!5760 = !DILocation(line: 320, column: 17, scope: !5759)
!5761 = !DILocation(line: 320, column: 23, scope: !5759)
!5762 = !DILocation(line: 320, column: 28, scope: !5759)
!5763 = !DILocation(line: 320, column: 21, scope: !5759)
!5764 = !DILocation(line: 320, column: 7, scope: !5705)
!5765 = !DILocation(line: 321, column: 12, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 320, column: 33)
!5767 = !DILocation(line: 321, column: 17, scope: !5766)
!5768 = !DILocation(line: 321, column: 21, scope: !5766)
!5769 = !DILocation(line: 321, column: 10, scope: !5766)
!5770 = !DILocation(line: 322, column: 10, scope: !5766)
!5771 = !DILocation(line: 322, column: 20, scope: !5766)
!5772 = !DILocation(line: 322, column: 8, scope: !5766)
!5773 = !DILocation(line: 323, column: 25, scope: !5766)
!5774 = !DILocation(line: 323, column: 30, scope: !5766)
!5775 = !DILocation(line: 323, column: 37, scope: !5766)
!5776 = !DILocation(line: 323, column: 4, scope: !5766)
!5777 = !DILocation(line: 324, column: 3, scope: !5766)
!5778 = !DILocation(line: 325, column: 3, scope: !5705)
!5779 = !DILocation(line: 306, column: 2, scope: !5682)
!5780 = distinct !{!5780, !5702, !5781, !4926, !4927}
!5781 = !DILocation(line: 326, column: 2, scope: !5680)
!5782 = !DILocation(line: 327, column: 1, scope: !5669)
!5783 = distinct !DISubprogram(name: "quirk_intel_mch", scope: !3, file: !3, line: 353, type: !351, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!5784 = !{!5785, !5786, !5787, !5788, !5789, !5795, !5796, !5797, !5798, !5801}
!5785 = !DILocalVariable(name: "dev", arg: 1, scope: !5783, file: !3, line: 353, type: !353)
!5786 = !DILocalVariable(name: "host", scope: !5783, file: !3, line: 355, type: !5282)
!5787 = !DILocalVariable(name: "addr_lo", scope: !5783, file: !3, line: 356, type: !585)
!5788 = !DILocalVariable(name: "addr_hi", scope: !5783, file: !3, line: 356, type: !585)
!5789 = !DILocalVariable(name: "region", scope: !5783, file: !3, line: 357, type: !5790)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !157, line: 796, size: 128, elements: !5791)
!5791 = !{!5792, !5794}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5790, file: !157, line: 797, baseType: !5793, size: 64)
!5793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !157, line: 791, baseType: !191)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5790, file: !157, line: 798, baseType: !5793, size: 64, offset: 64)
!5795 = !DILocalVariable(name: "mch", scope: !5783, file: !3, line: 358, type: !241)
!5796 = !DILocalVariable(name: "pnp_res", scope: !5783, file: !3, line: 359, type: !236)
!5797 = !DILocalVariable(name: "res", scope: !5783, file: !3, line: 360, type: !253)
!5798 = !DILocalVariable(name: "__mptr", scope: !5799, file: !3, line: 389, type: !167)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 389, column: 2)
!5800 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 389, column: 2)
!5801 = !DILocalVariable(name: "__mptr", scope: !5802, file: !3, line: 389, type: !167)
!5802 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 389, column: 2)
!5803 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 389, column: 2)
!5804 = !DILocation(line: 353, column: 45, scope: !5783)
!5805 = !DILocation(line: 355, column: 2, scope: !5783)
!5806 = !DILocation(line: 355, column: 18, scope: !5783)
!5807 = !DILocation(line: 356, column: 2, scope: !5783)
!5808 = !DILocation(line: 356, column: 6, scope: !5783)
!5809 = !DILocation(line: 356, column: 15, scope: !5783)
!5810 = !DILocation(line: 357, column: 2, scope: !5783)
!5811 = !DILocation(line: 357, column: 24, scope: !5783)
!5812 = !DILocation(line: 358, column: 2, scope: !5783)
!5813 = !DILocation(line: 358, column: 18, scope: !5783)
!5814 = !DILocation(line: 359, column: 2, scope: !5783)
!5815 = !DILocation(line: 359, column: 23, scope: !5783)
!5816 = !DILocation(line: 360, column: 2, scope: !5783)
!5817 = !DILocation(line: 360, column: 19, scope: !5783)
!5818 = !DILocation(line: 362, column: 9, scope: !5783)
!5819 = !DILocation(line: 362, column: 7, scope: !5783)
!5820 = !DILocation(line: 363, column: 7, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 363, column: 6)
!5822 = !DILocation(line: 363, column: 6, scope: !5783)
!5823 = !DILocation(line: 364, column: 3, scope: !5821)
!5824 = !DILocation(line: 379, column: 24, scope: !5783)
!5825 = !DILocation(line: 379, column: 2, scope: !5783)
!5826 = !DILocation(line: 380, column: 17, scope: !5783)
!5827 = !DILocation(line: 380, column: 25, scope: !5783)
!5828 = !DILocation(line: 380, column: 9, scope: !5783)
!5829 = !DILocation(line: 380, column: 15, scope: !5783)
!5830 = !DILocation(line: 381, column: 24, scope: !5783)
!5831 = !DILocation(line: 381, column: 2, scope: !5783)
!5832 = !DILocation(line: 382, column: 24, scope: !5783)
!5833 = !DILocation(line: 382, column: 18, scope: !5783)
!5834 = !DILocation(line: 382, column: 32, scope: !5783)
!5835 = !DILocation(line: 382, column: 9, scope: !5783)
!5836 = !DILocation(line: 382, column: 15, scope: !5783)
!5837 = !DILocation(line: 383, column: 22, scope: !5783)
!5838 = !DILocation(line: 383, column: 28, scope: !5783)
!5839 = !DILocation(line: 383, column: 38, scope: !5783)
!5840 = !DILocation(line: 383, column: 9, scope: !5783)
!5841 = !DILocation(line: 383, column: 13, scope: !5783)
!5842 = !DILocation(line: 385, column: 2, scope: !5783)
!5843 = !DILocation(line: 386, column: 6, scope: !5783)
!5844 = !DILocation(line: 386, column: 12, scope: !5783)
!5845 = !DILocation(line: 387, column: 26, scope: !5783)
!5846 = !DILocation(line: 387, column: 32, scope: !5783)
!5847 = !DILocation(line: 387, column: 2, scope: !5783)
!5848 = !DILocation(line: 389, column: 2, scope: !5799)
!5849 = !DILocation(line: 389, column: 2, scope: !5800)
!5850 = !DILocation(line: 389, column: 2, scope: !5803)
!5851 = !DILocation(line: 390, column: 10, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 389, column: 54)
!5853 = !DILocation(line: 390, column: 19, scope: !5852)
!5854 = !DILocation(line: 390, column: 7, scope: !5852)
!5855 = !DILocation(line: 391, column: 7, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 391, column: 7)
!5857 = !DILocation(line: 391, column: 12, scope: !5856)
!5858 = !DILocation(line: 391, column: 22, scope: !5856)
!5859 = !DILocation(line: 391, column: 16, scope: !5856)
!5860 = !DILocation(line: 391, column: 28, scope: !5856)
!5861 = !DILocation(line: 391, column: 31, scope: !5856)
!5862 = !DILocation(line: 391, column: 36, scope: !5856)
!5863 = !DILocation(line: 391, column: 48, scope: !5856)
!5864 = !DILocation(line: 391, column: 42, scope: !5856)
!5865 = !DILocation(line: 391, column: 7, scope: !5852)
!5866 = !DILocation(line: 392, column: 4, scope: !5856)
!5867 = !DILocation(line: 393, column: 7, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 393, column: 7)
!5869 = !DILocation(line: 393, column: 12, scope: !5868)
!5870 = !DILocation(line: 393, column: 25, scope: !5868)
!5871 = !DILocation(line: 393, column: 18, scope: !5868)
!5872 = !DILocation(line: 393, column: 31, scope: !5868)
!5873 = !DILocation(line: 393, column: 34, scope: !5868)
!5874 = !DILocation(line: 393, column: 39, scope: !5868)
!5875 = !DILocation(line: 393, column: 50, scope: !5868)
!5876 = !DILocation(line: 393, column: 43, scope: !5868)
!5877 = !DILocation(line: 393, column: 7, scope: !5852)
!5878 = !DILocation(line: 394, column: 4, scope: !5868)
!5879 = !DILocation(line: 396, column: 3, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 396, column: 3)
!5881 = !DILocation(line: 396, column: 3, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 396, column: 3)
!5883 = !DILocation(line: 398, column: 20, scope: !5852)
!5884 = !DILocation(line: 398, column: 3, scope: !5852)
!5885 = !DILocation(line: 398, column: 8, scope: !5852)
!5886 = !DILocation(line: 398, column: 14, scope: !5852)
!5887 = !DILocation(line: 399, column: 18, scope: !5852)
!5888 = !DILocation(line: 399, column: 3, scope: !5852)
!5889 = !DILocation(line: 399, column: 8, scope: !5852)
!5890 = !DILocation(line: 399, column: 12, scope: !5852)
!5891 = !DILocation(line: 400, column: 3, scope: !5852)
!5892 = !DILocation(line: 389, column: 2, scope: !5802)
!5893 = distinct !{!5893, !5849, !5894, !4926, !4927}
!5894 = !DILocation(line: 401, column: 2, scope: !5800)
!5895 = !DILocation(line: 403, column: 14, scope: !5783)
!5896 = !DILocation(line: 403, column: 2, scope: !5783)
!5897 = !DILocation(line: 404, column: 1, scope: !5783)
!5898 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !170, file: !170, line: 93, type: !5899, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5901)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!109, !168}
!5901 = !{!5902}
!5902 = !DILocalVariable(name: "option", arg: 1, scope: !5898, file: !170, line: 93, type: !168)
!5903 = !DILocation(line: 93, column: 62, scope: !5898)
!5904 = !DILocation(line: 95, column: 9, scope: !5898)
!5905 = !DILocation(line: 95, column: 17, scope: !5898)
!5906 = !DILocation(line: 95, column: 23, scope: !5898)
!5907 = !DILocation(line: 95, column: 2, scope: !5898)
!5908 = distinct !DISubprogram(name: "pnp_option_set", scope: !170, file: !170, line: 98, type: !5909, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5911)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{!7, !168}
!5911 = !{!5912}
!5912 = !DILocalVariable(name: "option", arg: 1, scope: !5908, file: !170, line: 98, type: !168)
!5913 = !DILocation(line: 98, column: 62, scope: !5908)
!5914 = !DILocation(line: 100, column: 10, scope: !5908)
!5915 = !DILocation(line: 100, column: 18, scope: !5908)
!5916 = !DILocation(line: 100, column: 24, scope: !5908)
!5917 = !DILocation(line: 100, column: 49, scope: !5908)
!5918 = !DILocation(line: 100, column: 2, scope: !5908)
!5919 = distinct !DISubprogram(name: "quirk_awe32_add_ports", scope: !3, file: !3, line: 26, type: !5920, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5922)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{null, !353, !168, !7}
!5922 = !{!5923, !5924, !5925, !5926}
!5923 = !DILocalVariable(name: "dev", arg: 1, scope: !5919, file: !3, line: 26, type: !353)
!5924 = !DILocalVariable(name: "option", arg: 2, scope: !5919, file: !3, line: 27, type: !168)
!5925 = !DILocalVariable(name: "offset", arg: 3, scope: !5919, file: !3, line: 28, type: !7)
!5926 = !DILocalVariable(name: "new_option", scope: !5919, file: !3, line: 30, type: !168)
!5927 = !DILocation(line: 26, column: 51, scope: !5919)
!5928 = !DILocation(line: 27, column: 26, scope: !5919)
!5929 = !DILocation(line: 28, column: 20, scope: !5919)
!5930 = !DILocation(line: 30, column: 2, scope: !5919)
!5931 = !DILocation(line: 30, column: 21, scope: !5919)
!5932 = !DILocation(line: 32, column: 15, scope: !5919)
!5933 = !DILocation(line: 32, column: 13, scope: !5919)
!5934 = !DILocation(line: 33, column: 7, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 33, column: 6)
!5936 = !DILocation(line: 33, column: 6, scope: !5919)
!5937 = !DILocation(line: 34, column: 3, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 34, column: 3)
!5939 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 33, column: 19)
!5940 = !DILocation(line: 34, column: 3, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 34, column: 3)
!5942 = !DILocation(line: 36, column: 3, scope: !5939)
!5943 = !DILocation(line: 39, column: 3, scope: !5919)
!5944 = !DILocation(line: 39, column: 17, scope: !5919)
!5945 = !DILocation(line: 39, column: 16, scope: !5919)
!5946 = !DILocation(line: 40, column: 28, scope: !5919)
!5947 = !DILocation(line: 40, column: 2, scope: !5919)
!5948 = !DILocation(line: 40, column: 14, scope: !5919)
!5949 = !DILocation(line: 40, column: 21, scope: !5919)
!5950 = !DILocation(line: 40, column: 25, scope: !5919)
!5951 = !DILocation(line: 41, column: 28, scope: !5919)
!5952 = !DILocation(line: 41, column: 2, scope: !5919)
!5953 = !DILocation(line: 41, column: 14, scope: !5919)
!5954 = !DILocation(line: 41, column: 21, scope: !5919)
!5955 = !DILocation(line: 41, column: 25, scope: !5919)
!5956 = !DILocation(line: 42, column: 12, scope: !5919)
!5957 = !DILocation(line: 42, column: 24, scope: !5919)
!5958 = !DILocation(line: 42, column: 31, scope: !5919)
!5959 = !DILocation(line: 42, column: 39, scope: !5919)
!5960 = !DILocation(line: 42, column: 2, scope: !5919)
!5961 = !DILocation(line: 44, column: 2, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 44, column: 2)
!5963 = !DILocation(line: 44, column: 2, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 44, column: 2)
!5965 = !DILocation(line: 48, column: 1, scope: !5919)
!5966 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !5967, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5969)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!167, !484, !226}
!5969 = !{!5970, !5971, !5972}
!5970 = !DILocalVariable(name: "size", arg: 1, scope: !5966, file: !147, line: 591, type: !484)
!5971 = !DILocalVariable(name: "flags", arg: 2, scope: !5966, file: !147, line: 591, type: !226)
!5972 = !DILocalVariable(name: "index", scope: !5973, file: !147, line: 594, type: !7)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !147, line: 593, column: 42)
!5974 = distinct !DILexicalBlock(scope: !5966, file: !147, line: 593, column: 6)
!5975 = !DILocation(line: 591, column: 61, scope: !5966)
!5976 = !DILocation(line: 591, column: 73, scope: !5966)
!5977 = !DILocation(line: 593, column: 27, scope: !5974)
!5978 = !DILocation(line: 593, column: 6, scope: !5974)
!5979 = !DILocation(line: 593, column: 33, scope: !5974)
!5980 = !DILocation(line: 593, column: 36, scope: !5974)
!5981 = !DILocation(line: 593, column: 6, scope: !5966)
!5982 = !DILocation(line: 594, column: 3, scope: !5973)
!5983 = !DILocation(line: 594, column: 16, scope: !5973)
!5984 = !DILocation(line: 596, column: 7, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5973, file: !147, line: 596, column: 7)
!5986 = !DILocation(line: 596, column: 12, scope: !5985)
!5987 = !DILocation(line: 596, column: 7, scope: !5973)
!5988 = !DILocation(line: 597, column: 25, scope: !5985)
!5989 = !DILocation(line: 597, column: 31, scope: !5985)
!5990 = !DILocation(line: 597, column: 11, scope: !5985)
!5991 = !DILocation(line: 597, column: 4, scope: !5985)
!5992 = !DILocation(line: 599, column: 11, scope: !5973)
!5993 = !DILocation(line: 599, column: 9, scope: !5973)
!5994 = !DILocation(line: 601, column: 33, scope: !5973)
!5995 = !DILocation(line: 601, column: 40, scope: !5973)
!5996 = !DILocation(line: 601, column: 20, scope: !5973)
!5997 = !DILocation(line: 601, column: 5, scope: !5973)
!5998 = !DILocation(line: 601, column: 51, scope: !5973)
!5999 = !DILocation(line: 602, column: 5, scope: !5973)
!6000 = !DILocation(line: 602, column: 12, scope: !5973)
!6001 = !DILocation(line: 600, column: 10, scope: !5973)
!6002 = !DILocation(line: 600, column: 3, scope: !5973)
!6003 = !DILocation(line: 603, column: 2, scope: !5974)
!6004 = !DILocation(line: 604, column: 19, scope: !5966)
!6005 = !DILocation(line: 604, column: 25, scope: !5966)
!6006 = !DILocation(line: 604, column: 9, scope: !5966)
!6007 = !DILocation(line: 604, column: 2, scope: !5966)
!6008 = !DILocation(line: 605, column: 1, scope: !5966)
!6009 = !DISubprogram(name: "_dev_err", scope: !4933, file: !4933, line: 50, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{null, !4293, !247, null}
!6012 = distinct !DISubprogram(name: "list_add", scope: !6013, file: !6013, line: 167, type: !6014, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6016)
!6013 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6014 = !DISubroutineType(types: !6015)
!6015 = !{null, !177, !177}
!6016 = !{!6017, !6018}
!6017 = !DILocalVariable(name: "new", arg: 1, scope: !6012, file: !6013, line: 167, type: !177)
!6018 = !DILocalVariable(name: "head", arg: 2, scope: !6012, file: !6013, line: 167, type: !177)
!6019 = !DILocation(line: 167, column: 47, scope: !6012)
!6020 = !DILocation(line: 167, column: 70, scope: !6012)
!6021 = !DILocation(line: 169, column: 13, scope: !6012)
!6022 = !DILocation(line: 169, column: 18, scope: !6012)
!6023 = !DILocation(line: 169, column: 24, scope: !6012)
!6024 = !DILocation(line: 169, column: 30, scope: !6012)
!6025 = !DILocation(line: 169, column: 2, scope: !6012)
!6026 = !DILocation(line: 170, column: 1, scope: !6012)
!6027 = !DISubprogram(name: "_dev_info", scope: !4933, file: !4933, line: 56, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6028 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !5967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6029 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !6030, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!7, !484, !854}
!6032 = !{!6033, !6034}
!6033 = !DILocalVariable(name: "size", arg: 1, scope: !6029, file: !147, line: 444, type: !484)
!6034 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6029, file: !147, line: 445, type: !854)
!6035 = !DILocation(line: 444, column: 60, scope: !6029)
!6036 = !DILocation(line: 445, column: 16, scope: !6029)
!6037 = !DILocation(line: 447, column: 7, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 447, column: 6)
!6039 = !DILocation(line: 447, column: 6, scope: !6029)
!6040 = !DILocation(line: 448, column: 3, scope: !6038)
!6041 = !DILocation(line: 450, column: 6, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 450, column: 6)
!6043 = !DILocation(line: 450, column: 11, scope: !6042)
!6044 = !DILocation(line: 450, column: 6, scope: !6029)
!6045 = !DILocation(line: 451, column: 3, scope: !6042)
!6046 = !DILocation(line: 453, column: 32, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 453, column: 6)
!6048 = !DILocation(line: 453, column: 37, scope: !6047)
!6049 = !DILocation(line: 453, column: 42, scope: !6047)
!6050 = !DILocation(line: 453, column: 45, scope: !6047)
!6051 = !DILocation(line: 453, column: 50, scope: !6047)
!6052 = !DILocation(line: 453, column: 6, scope: !6029)
!6053 = !DILocation(line: 454, column: 3, scope: !6047)
!6054 = !DILocation(line: 455, column: 32, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 455, column: 6)
!6056 = !DILocation(line: 455, column: 37, scope: !6055)
!6057 = !DILocation(line: 455, column: 43, scope: !6055)
!6058 = !DILocation(line: 455, column: 46, scope: !6055)
!6059 = !DILocation(line: 455, column: 51, scope: !6055)
!6060 = !DILocation(line: 455, column: 6, scope: !6029)
!6061 = !DILocation(line: 456, column: 3, scope: !6055)
!6062 = !DILocation(line: 457, column: 6, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 457, column: 6)
!6064 = !DILocation(line: 457, column: 11, scope: !6063)
!6065 = !DILocation(line: 457, column: 6, scope: !6029)
!6066 = !DILocation(line: 457, column: 26, scope: !6063)
!6067 = !DILocation(line: 458, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 458, column: 6)
!6069 = !DILocation(line: 458, column: 11, scope: !6068)
!6070 = !DILocation(line: 458, column: 6, scope: !6029)
!6071 = !DILocation(line: 458, column: 26, scope: !6068)
!6072 = !DILocation(line: 459, column: 6, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 459, column: 6)
!6074 = !DILocation(line: 459, column: 11, scope: !6073)
!6075 = !DILocation(line: 459, column: 6, scope: !6029)
!6076 = !DILocation(line: 459, column: 26, scope: !6073)
!6077 = !DILocation(line: 460, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 460, column: 6)
!6079 = !DILocation(line: 460, column: 11, scope: !6078)
!6080 = !DILocation(line: 460, column: 6, scope: !6029)
!6081 = !DILocation(line: 460, column: 26, scope: !6078)
!6082 = !DILocation(line: 461, column: 6, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 461, column: 6)
!6084 = !DILocation(line: 461, column: 11, scope: !6083)
!6085 = !DILocation(line: 461, column: 6, scope: !6029)
!6086 = !DILocation(line: 461, column: 26, scope: !6083)
!6087 = !DILocation(line: 462, column: 6, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 462, column: 6)
!6089 = !DILocation(line: 462, column: 11, scope: !6088)
!6090 = !DILocation(line: 462, column: 6, scope: !6029)
!6091 = !DILocation(line: 462, column: 26, scope: !6088)
!6092 = !DILocation(line: 463, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 463, column: 6)
!6094 = !DILocation(line: 463, column: 11, scope: !6093)
!6095 = !DILocation(line: 463, column: 6, scope: !6029)
!6096 = !DILocation(line: 463, column: 26, scope: !6093)
!6097 = !DILocation(line: 464, column: 6, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 464, column: 6)
!6099 = !DILocation(line: 464, column: 11, scope: !6098)
!6100 = !DILocation(line: 464, column: 6, scope: !6029)
!6101 = !DILocation(line: 464, column: 26, scope: !6098)
!6102 = !DILocation(line: 465, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 465, column: 6)
!6104 = !DILocation(line: 465, column: 11, scope: !6103)
!6105 = !DILocation(line: 465, column: 6, scope: !6029)
!6106 = !DILocation(line: 465, column: 26, scope: !6103)
!6107 = !DILocation(line: 466, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 466, column: 6)
!6109 = !DILocation(line: 466, column: 11, scope: !6108)
!6110 = !DILocation(line: 466, column: 6, scope: !6029)
!6111 = !DILocation(line: 466, column: 26, scope: !6108)
!6112 = !DILocation(line: 467, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 467, column: 6)
!6114 = !DILocation(line: 467, column: 11, scope: !6113)
!6115 = !DILocation(line: 467, column: 6, scope: !6029)
!6116 = !DILocation(line: 467, column: 26, scope: !6113)
!6117 = !DILocation(line: 468, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 468, column: 6)
!6119 = !DILocation(line: 468, column: 11, scope: !6118)
!6120 = !DILocation(line: 468, column: 6, scope: !6029)
!6121 = !DILocation(line: 468, column: 26, scope: !6118)
!6122 = !DILocation(line: 469, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 469, column: 6)
!6124 = !DILocation(line: 469, column: 11, scope: !6123)
!6125 = !DILocation(line: 469, column: 6, scope: !6029)
!6126 = !DILocation(line: 469, column: 26, scope: !6123)
!6127 = !DILocation(line: 470, column: 6, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 470, column: 6)
!6129 = !DILocation(line: 470, column: 11, scope: !6128)
!6130 = !DILocation(line: 470, column: 6, scope: !6029)
!6131 = !DILocation(line: 470, column: 26, scope: !6128)
!6132 = !DILocation(line: 471, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 471, column: 6)
!6134 = !DILocation(line: 471, column: 11, scope: !6133)
!6135 = !DILocation(line: 471, column: 6, scope: !6029)
!6136 = !DILocation(line: 471, column: 26, scope: !6133)
!6137 = !DILocation(line: 472, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 472, column: 6)
!6139 = !DILocation(line: 472, column: 11, scope: !6138)
!6140 = !DILocation(line: 472, column: 6, scope: !6029)
!6141 = !DILocation(line: 472, column: 26, scope: !6138)
!6142 = !DILocation(line: 473, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 473, column: 6)
!6144 = !DILocation(line: 473, column: 11, scope: !6143)
!6145 = !DILocation(line: 473, column: 6, scope: !6029)
!6146 = !DILocation(line: 473, column: 26, scope: !6143)
!6147 = !DILocation(line: 474, column: 6, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 474, column: 6)
!6149 = !DILocation(line: 474, column: 11, scope: !6148)
!6150 = !DILocation(line: 474, column: 6, scope: !6029)
!6151 = !DILocation(line: 474, column: 27, scope: !6148)
!6152 = !DILocation(line: 475, column: 6, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 475, column: 6)
!6154 = !DILocation(line: 475, column: 11, scope: !6153)
!6155 = !DILocation(line: 475, column: 6, scope: !6029)
!6156 = !DILocation(line: 475, column: 32, scope: !6153)
!6157 = !DILocation(line: 477, column: 50, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6029, file: !147, line: 477, column: 6)
!6159 = !{i8 0, i8 2}
!6160 = !DILocation(line: 477, column: 6, scope: !6029)
!6161 = !DILocation(line: 478, column: 3, scope: !6158)
!6162 = !DILocation(line: 478, column: 3, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6164, file: !147, line: 478, column: 3)
!6164 = distinct !DILexicalBlock(scope: !6158, file: !147, line: 478, column: 3)
!6165 = !{i32 -2141976547}
!6166 = !DILocation(line: 478, column: 3, scope: !6164)
!6167 = !DILocation(line: 480, column: 3, scope: !6158)
!6168 = !DILocation(line: 480, column: 3, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6158, file: !147, line: 480, column: 3)
!6170 = !DILocation(line: 480, column: 3, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6169, file: !147, line: 480, column: 3)
!6172 = !DILocation(line: 480, column: 3, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6169, file: !147, line: 480, column: 3)
!6174 = !{i64 2152990952, i64 2152990981, i64 2152991027, i64 2152991085, i64 2152991139, i64 2152991193, i64 2152991248, i64 2152991279}
!6175 = !DILocation(line: 483, column: 2, scope: !6029)
!6176 = !DILocation(line: 484, column: 1, scope: !6029)
!6177 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !6178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!167, !6180, !226, !484}
!6180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6181, size: 64)
!6181 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6182, line: 11, flags: DIFlagFwdDecl)
!6182 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6183 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !6184, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6186)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{!146, !226, !181}
!6186 = !{!6187, !6188}
!6187 = !DILocalVariable(name: "flags", arg: 1, scope: !6183, file: !147, line: 401, type: !226)
!6188 = !DILocalVariable(name: "caller", arg: 2, scope: !6183, file: !147, line: 401, type: !181)
!6189 = !DILocation(line: 401, column: 67, scope: !6183)
!6190 = !DILocation(line: 401, column: 88, scope: !6183)
!6191 = !DILocation(line: 407, column: 6, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6183, file: !147, line: 407, column: 6)
!6193 = !DILocation(line: 407, column: 6, scope: !6183)
!6194 = !DILocation(line: 413, column: 3, scope: !6192)
!6195 = !DILocation(line: 423, column: 38, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6183, file: !147, line: 423, column: 6)
!6197 = !DILocation(line: 423, column: 44, scope: !6196)
!6198 = !DILocation(line: 423, column: 6, scope: !6183)
!6199 = !DILocation(line: 424, column: 3, scope: !6196)
!6200 = !DILocation(line: 426, column: 3, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6183, file: !147, line: 425, column: 6)
!6202 = !DILocation(line: 429, column: 1, scope: !6183)
!6203 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !5967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DISubprogram(name: "__compiletime_assert_204", scope: !147, file: !147, line: 478, type: !1133, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6205 = distinct !DISubprogram(name: "__list_add", scope: !6013, file: !6013, line: 146, type: !6206, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6208)
!6206 = !DISubroutineType(types: !6207)
!6207 = !{null, !177, !177, !177}
!6208 = !{!6209, !6210, !6211}
!6209 = !DILocalVariable(name: "new", arg: 1, scope: !6205, file: !6013, line: 146, type: !177)
!6210 = !DILocalVariable(name: "prev", arg: 2, scope: !6205, file: !6013, line: 147, type: !177)
!6211 = !DILocalVariable(name: "next", arg: 3, scope: !6205, file: !6013, line: 148, type: !177)
!6212 = !DILocation(line: 146, column: 49, scope: !6205)
!6213 = !DILocation(line: 147, column: 28, scope: !6205)
!6214 = !DILocation(line: 148, column: 28, scope: !6205)
!6215 = !DILocation(line: 150, column: 24, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6205, file: !6013, line: 150, column: 6)
!6217 = !DILocation(line: 150, column: 29, scope: !6216)
!6218 = !DILocation(line: 150, column: 35, scope: !6216)
!6219 = !DILocation(line: 150, column: 7, scope: !6216)
!6220 = !DILocation(line: 150, column: 6, scope: !6205)
!6221 = !DILocation(line: 151, column: 3, scope: !6216)
!6222 = !DILocation(line: 153, column: 15, scope: !6205)
!6223 = !DILocation(line: 153, column: 2, scope: !6205)
!6224 = !DILocation(line: 153, column: 8, scope: !6205)
!6225 = !DILocation(line: 153, column: 13, scope: !6205)
!6226 = !DILocation(line: 154, column: 14, scope: !6205)
!6227 = !DILocation(line: 154, column: 2, scope: !6205)
!6228 = !DILocation(line: 154, column: 7, scope: !6205)
!6229 = !DILocation(line: 154, column: 12, scope: !6205)
!6230 = !DILocation(line: 155, column: 14, scope: !6205)
!6231 = !DILocation(line: 155, column: 2, scope: !6205)
!6232 = !DILocation(line: 155, column: 7, scope: !6205)
!6233 = !DILocation(line: 155, column: 12, scope: !6205)
!6234 = !DILocation(line: 156, column: 2, scope: !6205)
!6235 = !DILocation(line: 156, column: 2, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6205, file: !6013, line: 156, column: 2)
!6237 = !DILocation(line: 156, column: 2, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6236, file: !6013, line: 156, column: 2)
!6239 = !DILocation(line: 156, column: 2, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6236, file: !6013, line: 156, column: 2)
!6241 = !DILocation(line: 157, column: 1, scope: !6205)
!6242 = distinct !DISubprogram(name: "__list_add_valid", scope: !6013, file: !6013, line: 128, type: !6243, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6243 = !DISubroutineType(types: !6244)
!6244 = !{!854, !177, !177, !177}
!6245 = !{!6246, !6247, !6248}
!6246 = !DILocalVariable(name: "new", arg: 1, scope: !6242, file: !6013, line: 128, type: !177)
!6247 = !DILocalVariable(name: "prev", arg: 2, scope: !6242, file: !6013, line: 129, type: !177)
!6248 = !DILocalVariable(name: "next", arg: 3, scope: !6242, file: !6013, line: 130, type: !177)
!6249 = !DILocation(line: 128, column: 55, scope: !6242)
!6250 = !DILocation(line: 129, column: 23, scope: !6242)
!6251 = !DILocation(line: 130, column: 23, scope: !6242)
!6252 = !DILocation(line: 132, column: 2, scope: !6242)
!6253 = distinct !DISubprogram(name: "bitmap_zero", scope: !6254, file: !6254, line: 246, type: !6255, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6254 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6255 = !DISubroutineType(types: !6256)
!6256 = !{null, !232, !7}
!6257 = !{!6258, !6259, !6260}
!6258 = !DILocalVariable(name: "dst", arg: 1, scope: !6253, file: !6254, line: 246, type: !232)
!6259 = !DILocalVariable(name: "nbits", arg: 2, scope: !6253, file: !6254, line: 246, type: !7)
!6260 = !DILocalVariable(name: "len", scope: !6253, file: !6254, line: 248, type: !7)
!6261 = !DILocation(line: 246, column: 47, scope: !6253)
!6262 = !DILocation(line: 246, column: 65, scope: !6253)
!6263 = !DILocation(line: 248, column: 2, scope: !6253)
!6264 = !DILocation(line: 248, column: 15, scope: !6253)
!6265 = !DILocation(line: 248, column: 21, scope: !6253)
!6266 = !DILocation(line: 250, column: 6, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6253, file: !6254, line: 250, column: 6)
!6268 = !DILocation(line: 250, column: 6, scope: !6253)
!6269 = !DILocation(line: 251, column: 4, scope: !6267)
!6270 = !DILocation(line: 251, column: 8, scope: !6267)
!6271 = !DILocation(line: 251, column: 3, scope: !6267)
!6272 = !DILocation(line: 253, column: 10, scope: !6267)
!6273 = !DILocation(line: 253, column: 18, scope: !6267)
!6274 = !DILocation(line: 253, column: 3, scope: !6267)
!6275 = !DILocation(line: 254, column: 1, scope: !6253)
!6276 = distinct !DISubprogram(name: "generic___set_bit", scope: !6277, file: !6277, line: 28, type: !6278, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6282)
!6277 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6278 = !DISubroutineType(types: !6279)
!6279 = !{null, !181, !6280}
!6280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6281, size: 64)
!6281 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!6282 = !{!6283, !6284, !6285, !6286}
!6283 = !DILocalVariable(name: "nr", arg: 1, scope: !6276, file: !6277, line: 28, type: !181)
!6284 = !DILocalVariable(name: "addr", arg: 2, scope: !6276, file: !6277, line: 28, type: !6280)
!6285 = !DILocalVariable(name: "mask", scope: !6276, file: !6277, line: 30, type: !181)
!6286 = !DILocalVariable(name: "p", scope: !6276, file: !6277, line: 31, type: !232)
!6287 = !DILocation(line: 28, column: 33, scope: !6276)
!6288 = !DILocation(line: 28, column: 61, scope: !6276)
!6289 = !DILocation(line: 30, column: 2, scope: !6276)
!6290 = !DILocation(line: 30, column: 16, scope: !6276)
!6291 = !DILocation(line: 30, column: 23, scope: !6276)
!6292 = !DILocation(line: 31, column: 2, scope: !6276)
!6293 = !DILocation(line: 31, column: 17, scope: !6276)
!6294 = !DILocation(line: 31, column: 39, scope: !6276)
!6295 = !DILocation(line: 31, column: 47, scope: !6276)
!6296 = !DILocation(line: 31, column: 45, scope: !6276)
!6297 = !DILocation(line: 33, column: 9, scope: !6276)
!6298 = !DILocation(line: 33, column: 3, scope: !6276)
!6299 = !DILocation(line: 33, column: 6, scope: !6276)
!6300 = !DILocation(line: 34, column: 1, scope: !6276)
!6301 = distinct !DISubprogram(name: "___set_bit", scope: !6302, file: !6302, line: 26, type: !6278, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6303)
!6302 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6303 = !{!6304, !6305}
!6304 = !DILocalVariable(name: "nr", arg: 1, scope: !6301, file: !6302, line: 26, type: !181)
!6305 = !DILocalVariable(name: "addr", arg: 2, scope: !6301, file: !6302, line: 26, type: !6280)
!6306 = !DILocation(line: 26, column: 26, scope: !6301)
!6307 = !DILocation(line: 26, column: 54, scope: !6301)
!6308 = !DILocation(line: 28, column: 19, scope: !6301)
!6309 = !DILocation(line: 28, column: 26, scope: !6301)
!6310 = !DILocation(line: 28, column: 24, scope: !6301)
!6311 = !DILocation(line: 28, column: 2, scope: !6301)
!6312 = !DILocation(line: 29, column: 17, scope: !6301)
!6313 = !DILocation(line: 29, column: 21, scope: !6301)
!6314 = !DILocation(line: 29, column: 2, scope: !6301)
!6315 = !DILocation(line: 30, column: 1, scope: !6301)
!6316 = distinct !DISubprogram(name: "instrument_write", scope: !6317, file: !6317, line: 38, type: !6318, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6323)
!6317 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6318 = !DISubroutineType(types: !6319)
!6319 = !{null, !6320, !484}
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6321, size: 64)
!6321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6322)
!6322 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6323 = !{!6324, !6325}
!6324 = !DILocalVariable(name: "v", arg: 1, scope: !6316, file: !6317, line: 38, type: !6320)
!6325 = !DILocalVariable(name: "size", arg: 2, scope: !6316, file: !6317, line: 38, type: !484)
!6326 = !DILocation(line: 38, column: 67, scope: !6316)
!6327 = !DILocation(line: 38, column: 77, scope: !6316)
!6328 = !DILocation(line: 40, column: 20, scope: !6316)
!6329 = !DILocation(line: 40, column: 23, scope: !6316)
!6330 = !DILocation(line: 40, column: 2, scope: !6316)
!6331 = !DILocation(line: 41, column: 2, scope: !6316)
!6332 = !DILocation(line: 42, column: 1, scope: !6316)
!6333 = distinct !DISubprogram(name: "arch___set_bit", scope: !6334, file: !6334, line: 66, type: !6278, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6334 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6335 = !{!6336, !6337}
!6336 = !DILocalVariable(name: "nr", arg: 1, scope: !6333, file: !6334, line: 66, type: !181)
!6337 = !DILocalVariable(name: "addr", arg: 2, scope: !6333, file: !6334, line: 66, type: !6280)
!6338 = !DILocation(line: 66, column: 30, scope: !6333)
!6339 = !DILocation(line: 66, column: 58, scope: !6333)
!6340 = !DILocation(line: 68, column: 44, scope: !6333)
!6341 = !DILocation(line: 68, column: 56, scope: !6333)
!6342 = !DILocation(line: 68, column: 2, scope: !6333)
!6343 = !{i64 2147797460}
!6344 = !DILocation(line: 69, column: 1, scope: !6333)
!6345 = distinct !DISubprogram(name: "kasan_check_write", scope: !6346, file: !6346, line: 44, type: !6347, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6349)
!6346 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!854, !6320, !7}
!6349 = !{!6350, !6351}
!6350 = !DILocalVariable(name: "p", arg: 1, scope: !6345, file: !6346, line: 44, type: !6320)
!6351 = !DILocalVariable(name: "size", arg: 2, scope: !6345, file: !6346, line: 44, type: !7)
!6352 = !DILocation(line: 44, column: 59, scope: !6345)
!6353 = !DILocation(line: 44, column: 75, scope: !6345)
!6354 = !DILocation(line: 46, column: 2, scope: !6345)
!6355 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6356, file: !6356, line: 229, type: !6357, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6359)
!6356 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6357 = !DISubroutineType(types: !6358)
!6358 = !{null, !6320, !484, !109}
!6359 = !{!6360, !6361, !6362}
!6360 = !DILocalVariable(name: "ptr", arg: 1, scope: !6355, file: !6356, line: 229, type: !6320)
!6361 = !DILocalVariable(name: "size", arg: 2, scope: !6355, file: !6356, line: 229, type: !484)
!6362 = !DILocalVariable(name: "type", arg: 3, scope: !6355, file: !6356, line: 230, type: !109)
!6363 = !DILocation(line: 229, column: 60, scope: !6355)
!6364 = !DILocation(line: 229, column: 72, scope: !6355)
!6365 = !DILocation(line: 230, column: 15, scope: !6355)
!6366 = !DILocation(line: 230, column: 23, scope: !6355)
!6367 = distinct !DISubprogram(name: "pnp_clone_dependent_set", scope: !3, file: !3, line: 138, type: !6368, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6370)
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!168, !353, !7}
!6370 = !{!6371, !6372, !6373, !6374, !6375, !6376, !6377, !6378, !6381, !6384, !6387}
!6371 = !DILocalVariable(name: "dev", arg: 1, scope: !6367, file: !3, line: 138, type: !353)
!6372 = !DILocalVariable(name: "set", arg: 2, scope: !6367, file: !3, line: 139, type: !7)
!6373 = !DILocalVariable(name: "tail", scope: !6367, file: !3, line: 141, type: !168)
!6374 = !DILocalVariable(name: "first_new_option", scope: !6367, file: !3, line: 141, type: !168)
!6375 = !DILocalVariable(name: "option", scope: !6367, file: !3, line: 142, type: !168)
!6376 = !DILocalVariable(name: "new_option", scope: !6367, file: !3, line: 142, type: !168)
!6377 = !DILocalVariable(name: "flags", scope: !6367, file: !3, line: 143, type: !7)
!6378 = !DILocalVariable(name: "__mptr", scope: !6379, file: !3, line: 145, type: !167)
!6379 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 145, column: 2)
!6380 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 145, column: 2)
!6381 = !DILocalVariable(name: "__mptr", scope: !6382, file: !3, line: 145, type: !167)
!6382 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 145, column: 2)
!6383 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 145, column: 2)
!6384 = !DILocalVariable(name: "__mptr", scope: !6385, file: !3, line: 155, type: !167)
!6385 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 155, column: 2)
!6386 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 155, column: 2)
!6387 = !DILocalVariable(name: "__mptr", scope: !6388, file: !3, line: 155, type: !167)
!6388 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 155, column: 2)
!6389 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 155, column: 2)
!6390 = !DILocation(line: 138, column: 67, scope: !6367)
!6391 = !DILocation(line: 139, column: 22, scope: !6367)
!6392 = !DILocation(line: 141, column: 2, scope: !6367)
!6393 = !DILocation(line: 141, column: 21, scope: !6367)
!6394 = !DILocation(line: 141, column: 35, scope: !6367)
!6395 = !DILocation(line: 142, column: 2, scope: !6367)
!6396 = !DILocation(line: 142, column: 21, scope: !6367)
!6397 = !DILocation(line: 142, column: 30, scope: !6367)
!6398 = !DILocation(line: 143, column: 2, scope: !6367)
!6399 = !DILocation(line: 143, column: 15, scope: !6367)
!6400 = !DILocation(line: 145, column: 2, scope: !6379)
!6401 = !DILocation(line: 145, column: 2, scope: !6380)
!6402 = !DILocation(line: 145, column: 2, scope: !6383)
!6403 = !DILocation(line: 146, column: 31, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 146, column: 7)
!6405 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 145, column: 51)
!6406 = !DILocation(line: 146, column: 7, scope: !6404)
!6407 = !DILocation(line: 146, column: 7, scope: !6405)
!6408 = !DILocation(line: 147, column: 11, scope: !6404)
!6409 = !DILocation(line: 147, column: 9, scope: !6404)
!6410 = !DILocation(line: 147, column: 4, scope: !6404)
!6411 = !DILocation(line: 148, column: 2, scope: !6405)
!6412 = !DILocation(line: 145, column: 2, scope: !6382)
!6413 = distinct !{!6413, !6401, !6414, !4926, !4927}
!6414 = !DILocation(line: 148, column: 2, scope: !6380)
!6415 = !DILocation(line: 149, column: 7, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 149, column: 6)
!6417 = !DILocation(line: 149, column: 6, scope: !6367)
!6418 = !DILocation(line: 150, column: 3, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 150, column: 3)
!6420 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 149, column: 13)
!6421 = !DILocation(line: 150, column: 3, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 150, column: 3)
!6423 = !DILocation(line: 151, column: 3, scope: !6420)
!6424 = !DILocation(line: 154, column: 32, scope: !6367)
!6425 = !DILocation(line: 154, column: 10, scope: !6367)
!6426 = !DILocation(line: 154, column: 8, scope: !6367)
!6427 = !DILocation(line: 155, column: 2, scope: !6385)
!6428 = !DILocation(line: 155, column: 2, scope: !6386)
!6429 = !DILocation(line: 155, column: 2, scope: !6389)
!6430 = !DILocation(line: 156, column: 31, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 156, column: 7)
!6432 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 155, column: 51)
!6433 = !DILocation(line: 156, column: 7, scope: !6431)
!6434 = !DILocation(line: 156, column: 39, scope: !6431)
!6435 = !DILocation(line: 157, column: 22, scope: !6431)
!6436 = !DILocation(line: 157, column: 7, scope: !6431)
!6437 = !DILocation(line: 157, column: 33, scope: !6431)
!6438 = !DILocation(line: 157, column: 30, scope: !6431)
!6439 = !DILocation(line: 156, column: 7, scope: !6432)
!6440 = !DILocation(line: 158, column: 17, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6431, file: !3, line: 157, column: 38)
!6442 = !DILocation(line: 158, column: 15, scope: !6441)
!6443 = !DILocation(line: 160, column: 9, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 160, column: 8)
!6445 = !DILocation(line: 160, column: 8, scope: !6441)
!6446 = !DILocation(line: 161, column: 5, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 161, column: 5)
!6448 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 160, column: 21)
!6449 = !DILocation(line: 161, column: 5, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 161, column: 5)
!6451 = !DILocation(line: 163, column: 5, scope: !6448)
!6452 = !DILocation(line: 166, column: 5, scope: !6441)
!6453 = !DILocation(line: 166, column: 19, scope: !6441)
!6454 = !DILocation(line: 166, column: 18, scope: !6441)
!6455 = !DILocation(line: 167, column: 24, scope: !6441)
!6456 = !DILocation(line: 167, column: 4, scope: !6441)
!6457 = !DILocation(line: 167, column: 16, scope: !6441)
!6458 = !DILocation(line: 167, column: 22, scope: !6441)
!6459 = !DILocation(line: 168, column: 9, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 168, column: 8)
!6461 = !DILocation(line: 168, column: 8, scope: !6441)
!6462 = !DILocation(line: 169, column: 24, scope: !6460)
!6463 = !DILocation(line: 169, column: 22, scope: !6460)
!6464 = !DILocation(line: 169, column: 5, scope: !6460)
!6465 = !DILocation(line: 171, column: 14, scope: !6441)
!6466 = !DILocation(line: 171, column: 26, scope: !6441)
!6467 = !DILocation(line: 171, column: 33, scope: !6441)
!6468 = !DILocation(line: 171, column: 39, scope: !6441)
!6469 = !DILocation(line: 171, column: 4, scope: !6441)
!6470 = !DILocation(line: 172, column: 11, scope: !6441)
!6471 = !DILocation(line: 172, column: 9, scope: !6441)
!6472 = !DILocation(line: 173, column: 3, scope: !6441)
!6473 = !DILocation(line: 174, column: 2, scope: !6432)
!6474 = !DILocation(line: 155, column: 2, scope: !6388)
!6475 = distinct !{!6475, !6428, !6476, !4926, !4927}
!6476 = !DILocation(line: 174, column: 2, scope: !6386)
!6477 = !DILocation(line: 176, column: 9, scope: !6367)
!6478 = !DILocation(line: 176, column: 2, scope: !6367)
!6479 = !DILocation(line: 177, column: 1, scope: !6367)
!6480 = !DISubprogram(name: "dbg_pnp_show_option", scope: !170, file: !170, line: 133, type: !6481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{null, !353, !168}
!6483 = distinct !DISubprogram(name: "pnp_new_dependent_set", scope: !170, file: !170, line: 109, type: !6484, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6486)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!7, !353, !109}
!6486 = !{!6487, !6488, !6489}
!6487 = !DILocalVariable(name: "dev", arg: 1, scope: !6483, file: !170, line: 109, type: !353)
!6488 = !DILocalVariable(name: "priority", arg: 2, scope: !6483, file: !170, line: 110, type: !109)
!6489 = !DILocalVariable(name: "flags", scope: !6483, file: !170, line: 112, type: !7)
!6490 = !DILocation(line: 109, column: 66, scope: !6483)
!6491 = !DILocation(line: 110, column: 12, scope: !6483)
!6492 = !DILocation(line: 112, column: 2, scope: !6483)
!6493 = !DILocation(line: 112, column: 15, scope: !6483)
!6494 = !DILocation(line: 114, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6483, file: !170, line: 114, column: 6)
!6496 = !DILocation(line: 114, column: 15, scope: !6495)
!6497 = !DILocation(line: 114, column: 6, scope: !6483)
!6498 = !DILocation(line: 115, column: 3, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6500, file: !170, line: 115, column: 3)
!6500 = distinct !DILexicalBlock(scope: !6495, file: !170, line: 114, column: 46)
!6501 = !DILocation(line: 115, column: 3, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6499, file: !170, line: 115, column: 3)
!6503 = !DILocation(line: 118, column: 12, scope: !6500)
!6504 = !DILocation(line: 119, column: 2, scope: !6500)
!6505 = !DILocation(line: 122, column: 8, scope: !6483)
!6506 = !DILocation(line: 122, column: 13, scope: !6483)
!6507 = !DILocation(line: 122, column: 32, scope: !6483)
!6508 = !DILocation(line: 122, column: 55, scope: !6483)
!6509 = !DILocation(line: 121, column: 31, scope: !6483)
!6510 = !DILocation(line: 124, column: 8, scope: !6483)
!6511 = !DILocation(line: 124, column: 17, scope: !6483)
!6512 = !DILocation(line: 124, column: 45, scope: !6483)
!6513 = !DILocation(line: 123, column: 25, scope: !6483)
!6514 = !DILocation(line: 121, column: 8, scope: !6483)
!6515 = !DILocation(line: 127, column: 2, scope: !6483)
!6516 = !DILocation(line: 127, column: 7, scope: !6483)
!6517 = !DILocation(line: 127, column: 25, scope: !6483)
!6518 = !DILocation(line: 129, column: 9, scope: !6483)
!6519 = !DILocation(line: 130, column: 1, scope: !6483)
!6520 = !DILocation(line: 129, column: 2, scope: !6483)
!6521 = !DISubprogram(name: "_dev_warn", scope: !4933, file: !4933, line: 52, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6522 = !DISubprogram(name: "pci_get_device", scope: !157, file: !157, line: 1176, type: !6523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6523 = !DISubroutineType(types: !6524)
!6524 = !{!5282, !7, !7, !5282}
!6525 = distinct !DISubprogram(name: "resource_type", scope: !242, file: !242, line: 223, type: !6526, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6530)
!6526 = !DISubroutineType(types: !6527)
!6527 = !{!181, !6528}
!6528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6529, size: 64)
!6529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!6530 = !{!6531}
!6531 = !DILocalVariable(name: "res", arg: 1, scope: !6525, file: !242, line: 223, type: !6528)
!6532 = !DILocation(line: 223, column: 66, scope: !6525)
!6533 = !DILocation(line: 225, column: 9, scope: !6525)
!6534 = !DILocation(line: 225, column: 14, scope: !6525)
!6535 = !DILocation(line: 225, column: 20, scope: !6525)
!6536 = !DILocation(line: 225, column: 2, scope: !6525)
!6537 = distinct !DISubprogram(name: "resource_size", scope: !242, file: !242, line: 219, type: !6538, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6540)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!189, !6528}
!6540 = !{!6541}
!6541 = !DILocalVariable(name: "res", arg: 1, scope: !6537, file: !242, line: 219, type: !6528)
!6542 = !DILocation(line: 219, column: 68, scope: !6537)
!6543 = !DILocation(line: 221, column: 9, scope: !6537)
!6544 = !DILocation(line: 221, column: 14, scope: !6537)
!6545 = !DILocation(line: 221, column: 20, scope: !6537)
!6546 = !DILocation(line: 221, column: 25, scope: !6537)
!6547 = !DILocation(line: 221, column: 18, scope: !6537)
!6548 = !DILocation(line: 221, column: 31, scope: !6537)
!6549 = !DILocation(line: 221, column: 2, scope: !6537)
!6550 = !DISubprogram(name: "pnp_get_resource", scope: !343, file: !343, line: 27, type: !6551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6551 = !DISubroutineType(types: !6552)
!6552 = !{!253, !353, !181, !7}
!6553 = distinct !DISubprogram(name: "resource_overlaps", scope: !242, file: !242, line: 242, type: !6554, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6556)
!6554 = !DISubroutineType(types: !6555)
!6555 = !{!854, !253, !253}
!6556 = !{!6557, !6558}
!6557 = !DILocalVariable(name: "r1", arg: 1, scope: !6553, file: !242, line: 242, type: !253)
!6558 = !DILocalVariable(name: "r2", arg: 2, scope: !6553, file: !242, line: 242, type: !253)
!6559 = !DILocation(line: 242, column: 55, scope: !6553)
!6560 = !DILocation(line: 242, column: 76, scope: !6553)
!6561 = !DILocation(line: 244, column: 15, scope: !6553)
!6562 = !DILocation(line: 244, column: 19, scope: !6553)
!6563 = !DILocation(line: 244, column: 28, scope: !6553)
!6564 = !DILocation(line: 244, column: 32, scope: !6553)
!6565 = !DILocation(line: 244, column: 25, scope: !6553)
!6566 = !DILocation(line: 244, column: 36, scope: !6553)
!6567 = !DILocation(line: 244, column: 39, scope: !6553)
!6568 = !DILocation(line: 244, column: 43, scope: !6553)
!6569 = !DILocation(line: 244, column: 50, scope: !6553)
!6570 = !DILocation(line: 244, column: 54, scope: !6553)
!6571 = !DILocation(line: 244, column: 47, scope: !6553)
!6572 = !DILocation(line: 0, scope: !6553)
!6573 = !DILocation(line: 244, column: 8, scope: !6553)
!6574 = distinct !DISubprogram(name: "pci_name", scope: !157, file: !157, line: 2119, type: !6575, scopeLine: 2120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6579)
!6575 = !DISubroutineType(types: !6576)
!6576 = !{!247, !6577}
!6577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6578, size: 64)
!6578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5283)
!6579 = !{!6580}
!6580 = !DILocalVariable(name: "pdev", arg: 1, scope: !6574, file: !157, line: 2119, type: !6577)
!6581 = !DILocation(line: 2119, column: 58, scope: !6574)
!6582 = !DILocation(line: 2121, column: 19, scope: !6574)
!6583 = !DILocation(line: 2121, column: 25, scope: !6574)
!6584 = !DILocation(line: 2121, column: 9, scope: !6574)
!6585 = !DILocation(line: 2121, column: 2, scope: !6574)
!6586 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !6587, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6589)
!6587 = !DISubroutineType(types: !6588)
!6588 = !{!247, !4293}
!6589 = !{!6590}
!6590 = !DILocalVariable(name: "dev", arg: 1, scope: !6586, file: !94, line: 858, type: !4293)
!6591 = !DILocation(line: 858, column: 57, scope: !6586)
!6592 = !DILocation(line: 861, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6586, file: !94, line: 861, column: 6)
!6594 = !DILocation(line: 861, column: 11, scope: !6593)
!6595 = !DILocation(line: 861, column: 6, scope: !6586)
!6596 = !DILocation(line: 862, column: 10, scope: !6593)
!6597 = !DILocation(line: 862, column: 15, scope: !6593)
!6598 = !DILocation(line: 862, column: 3, scope: !6593)
!6599 = !DILocation(line: 864, column: 23, scope: !6586)
!6600 = !DILocation(line: 864, column: 28, scope: !6586)
!6601 = !DILocation(line: 864, column: 9, scope: !6586)
!6602 = !DILocation(line: 864, column: 2, scope: !6586)
!6603 = !DILocation(line: 865, column: 1, scope: !6586)
!6604 = distinct !DISubprogram(name: "kobject_name", scope: !361, file: !361, line: 87, type: !428, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6605)
!6605 = !{!6606}
!6606 = !DILocalVariable(name: "kobj", arg: 1, scope: !6604, file: !361, line: 87, type: !423)
!6607 = !DILocation(line: 87, column: 62, scope: !6604)
!6608 = !DILocation(line: 89, column: 9, scope: !6604)
!6609 = !DILocation(line: 89, column: 15, scope: !6604)
!6610 = !DILocation(line: 89, column: 2, scope: !6604)
!6611 = !DISubprogram(name: "amd_get_mmconfig_range", scope: !6612, file: !6612, line: 18, type: !6613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6612 = !DIFile(filename: "./arch/x86/include/asm/amd_nb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0a32ff2229a1703a76a20aba8707eec")
!6613 = !DISubroutineType(types: !6614)
!6614 = !{!253, !253}
!6615 = !DISubprogram(name: "pnp_add_mem_resource", scope: !170, file: !170, line: 171, type: !6616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6616 = !DISubroutineType(types: !6617)
!6617 = !{!236, !353, !189, !189, !109}
!6618 = distinct !DISubprogram(name: "get_intel_host", scope: !3, file: !3, line: 339, type: !6619, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6621)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{!5282}
!6621 = !{!6622, !6623}
!6622 = !DILocalVariable(name: "i", scope: !6618, file: !3, line: 341, type: !109)
!6623 = !DILocalVariable(name: "host", scope: !6618, file: !3, line: 342, type: !5282)
!6624 = !DILocation(line: 341, column: 2, scope: !6618)
!6625 = !DILocation(line: 341, column: 6, scope: !6618)
!6626 = !DILocation(line: 342, column: 2, scope: !6618)
!6627 = !DILocation(line: 342, column: 18, scope: !6618)
!6628 = !DILocation(line: 344, column: 9, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 344, column: 2)
!6630 = !DILocation(line: 344, column: 7, scope: !6629)
!6631 = !DILocation(line: 344, column: 14, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 344, column: 2)
!6633 = !DILocation(line: 344, column: 16, scope: !6632)
!6634 = !DILocation(line: 344, column: 2, scope: !6629)
!6635 = !DILocation(line: 345, column: 64, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 344, column: 54)
!6637 = !DILocation(line: 345, column: 46, scope: !6636)
!6638 = !DILocation(line: 345, column: 10, scope: !6636)
!6639 = !DILocation(line: 345, column: 8, scope: !6636)
!6640 = !DILocation(line: 347, column: 7, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6636, file: !3, line: 347, column: 7)
!6642 = !DILocation(line: 347, column: 7, scope: !6636)
!6643 = !DILocation(line: 348, column: 11, scope: !6641)
!6644 = !DILocation(line: 348, column: 4, scope: !6641)
!6645 = !DILocation(line: 349, column: 2, scope: !6636)
!6646 = !DILocation(line: 344, column: 50, scope: !6632)
!6647 = !DILocation(line: 344, column: 2, scope: !6632)
!6648 = distinct !{!6648, !6634, !6649, !4926, !4927}
!6649 = !DILocation(line: 349, column: 2, scope: !6629)
!6650 = !DILocation(line: 350, column: 2, scope: !6618)
!6651 = !DILocation(line: 351, column: 1, scope: !6618)
!6652 = !DISubprogram(name: "pci_read_config_dword", scope: !157, file: !157, line: 1215, type: !6653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6653 = !DISubroutineType(types: !6654)
!6654 = !{!109, !6577, !109, !2748}
!6655 = !DISubprogram(name: "pcibios_bus_to_resource", scope: !157, file: !157, line: 1108, type: !6656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6656 = !DISubroutineType(types: !6657)
!6657 = !{null, !5287, !253, !6658}
!6658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!6659 = !DISubprogram(name: "pci_dev_put", scope: !157, file: !157, line: 1148, type: !5400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
