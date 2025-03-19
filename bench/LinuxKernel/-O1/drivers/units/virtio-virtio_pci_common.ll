; ModuleID = 'drivers/virtio/virtio_pci_common.c'
source_filename = "drivers/virtio/virtio_pci_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_virtio_pci__324_647_virtio_pci_driver_init\22, \22a\22\09\09"
module asm "__initcall__kmod_virtio_pci__324_647_virtio_pci_driver_init6:\09\09\09"
module asm ".long\09__initstub__kmod_virtio_pci__324_647_virtio_pci_driver_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_pci_device = type { %struct.virtio_device, ptr, %union.anon.15, i8, ptr, %struct.spinlock, %struct.list_head, ptr, i32, i32, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
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
%struct.virtio_device_id = type { i32, i32 }
%union.anon.15 = type { %struct.virtio_pci_modern_device }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i64, ptr, i64, i64, i32, i32, i32, %struct.virtio_device_id, ptr, i64 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.14, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.14 = type { ptr }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i8, ptr }
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_legacy = internal constant [24 x i8] c"virtio_pci.force_legacy\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@force_legacy = internal global i8 0, align 1, !dbg !5171
@__param_force_legacy = internal constant %struct.kernel_param { ptr @__param_str_force_legacy, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @force_legacy } }, section "__param", align 8, !dbg !5115
@__UNIQUE_ID_force_legacytype322 = internal constant [38 x i8] c"virtio_pci.parmtype=force_legacy:bool\00", section ".modinfo", align 1, !dbg !5117
@__UNIQUE_ID_force_legacy323 = internal constant [81 x i8] c"virtio_pci.parm=force_legacy:Force legacy mode for transitional virtio 1 devices\00", section ".modinfo", align 1, !dbg !5122
@__UNIQUE_ID___addressable___initstub__kmod_virtio_pci__324_647_virtio_pci_driver_init6325 = internal global ptr @__initstub__kmod_virtio_pci__324_647_virtio_pci_driver_init6, section ".discard.addressable", align 8, !dbg !5127
@virtio_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.7, ptr @virtio_pci_id_table, ptr @virtio_pci_probe, ptr @virtio_pci_remove, ptr null, ptr null, ptr null, ptr @virtio_pci_sriov_configure, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtio_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer, i8 0 }, align 8, !dbg !5190
@__exitcall_virtio_pci_driver_exit = internal global ptr @virtio_pci_driver_exit, section ".exitcall.exit", align 8, !dbg !5129
@__UNIQUE_ID_author326 = internal constant [56 x i8] c"virtio_pci.author=Anthony Liguori <aliguori@us.ibm.com>\00", section ".modinfo", align 1, !dbg !5133
@__UNIQUE_ID_description327 = internal constant [34 x i8] c"virtio_pci.description=virtio-pci\00", section ".modinfo", align 1, !dbg !5136
@__UNIQUE_ID_file328 = internal constant [42 x i8] c"virtio_pci.file=drivers/virtio/virtio_pci\00", section ".modinfo", align 1, !dbg !5141
@__UNIQUE_ID_license329 = internal constant [23 x i8] c"virtio_pci.license=GPL\00", section ".modinfo", align 1, !dbg !5146
@__UNIQUE_ID_version330 = internal constant [21 x i8] c"virtio_pci.version=1\00", section ".modinfo", align 1, !dbg !5151
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !5156
@.str.1 = private unnamed_addr constant [11 x i8] c"virtio_pci\00", align 1, !dbg !5158
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !5161
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 8, !dbg !5164
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1, !dbg !5173
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5175
@.str.5 = private unnamed_addr constant [10 x i8] c"%s-config\00", align 1, !dbg !5178
@.str.6 = private unnamed_addr constant [14 x i8] c"%s-virtqueues\00", align 1, !dbg !5183
@.str.7 = private unnamed_addr constant [11 x i8] c"virtio-pci\00", align 1, !dbg !5188
@virtio_pci_id_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6900, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5192
@virtio_pci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5200
@.str.8 = private unnamed_addr constant [30 x i8] c"include/linux/virtio_config.h\00", align 1, !dbg !5195
@llvm.compiler.used = appending global [12 x ptr] [ptr @__param_force_legacy, ptr @__UNIQUE_ID_force_legacytype322, ptr @__UNIQUE_ID_force_legacy323, ptr @__UNIQUE_ID___addressable___initstub__kmod_virtio_pci__324_647_virtio_pci_driver_init6325, ptr @virtio_pci_driver_exit, ptr @__exitcall_virtio_pci_driver_exit, ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__UNIQUE_ID_version330, ptr @__modver_attr], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_synchronize_vectors(ptr noundef %vdev) #0 align 16 !dbg !5214 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5216, metadata !DIExpression()), !dbg !5219
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5217, metadata !DIExpression()), !dbg !5221
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5222
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !5223
  store ptr %call, ptr %vp_dev, align 8, !dbg !5221
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5218, metadata !DIExpression()), !dbg !5225
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5226
  %intx_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 9, !dbg !5228
  %2 = load i32, ptr %intx_enabled, align 4, !dbg !5228
  %tobool = icmp ne i32 %2, 0, !dbg !5226
  br i1 %tobool, label %if.then, label %if.end, !dbg !5229

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !5230
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 1, !dbg !5231
  %4 = load ptr, ptr %pci_dev, align 8, !dbg !5231
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 39, !dbg !5232
  %5 = load i32, ptr %irq, align 4, !dbg !5232
  call void @synchronize_irq(i32 noundef %5) #18, !dbg !5233
  br label %if.end, !dbg !5233

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !5234
  br label %for.cond, !dbg !5236

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !5237
  %7 = load ptr, ptr %vp_dev, align 8, !dbg !5239
  %msix_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %7, i32 0, i32 12, !dbg !5240
  %8 = load i32, ptr %msix_vectors, align 8, !dbg !5240
  %cmp = icmp ult i32 %6, %8, !dbg !5241
  br i1 %cmp, label %for.body, label %for.end, !dbg !5242

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %vp_dev, align 8, !dbg !5243
  %pci_dev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %9, i32 0, i32 1, !dbg !5244
  %10 = load ptr, ptr %pci_dev1, align 8, !dbg !5244
  %11 = load i32, ptr %i, align 4, !dbg !5245
  %call2 = call i32 @pci_irq_vector(ptr noundef %10, i32 noundef %11) #18, !dbg !5246
  call void @synchronize_irq(i32 noundef %call2) #18, !dbg !5247
  br label %for.inc, !dbg !5247

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !5248
  %inc = add i32 %12, 1, !dbg !5248
  store i32 %inc, ptr %i, align 4, !dbg !5248
  br label %for.cond, !dbg !5249, !llvm.loop !5250

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5254
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !5254
  ret void, !dbg !5254
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_vp_device(ptr noundef %vdev) #0 align 16 !dbg !5255 {
entry:
  %vdev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5259, metadata !DIExpression()), !dbg !5262
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5260, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5263
  store ptr %0, ptr %__mptr, align 8, !dbg !5263
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5263
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5263
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5264
  %2 = load ptr, ptr %tmp, align 8, !dbg !5263
  ret ptr %2, !dbg !5265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5266 dso_local void @synchronize_irq(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5270 dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @vp_notify(ptr noundef %vq) #0 align 16 !dbg !5273 {
entry:
  %vq.addr = alloca ptr, align 8
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !5279
  %index = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 4, !dbg !5280
  %1 = load i32, ptr %index, align 8, !dbg !5280
  %conv = trunc i32 %1 to i16, !dbg !5279
  %2 = load ptr, ptr %vq.addr, align 8, !dbg !5281
  %priv = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 8, !dbg !5282
  %3 = load ptr, ptr %priv, align 8, !dbg !5282
  call void @iowrite16(i16 noundef zeroext %conv, ptr noundef %3) #18, !dbg !5283
  ret i1 true, !dbg !5284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5285 dso_local void @iowrite16(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_del_vqs(ptr noundef %vdev) #0 align 16 !dbg !5289 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %vq = alloca ptr, align 8
  %n = alloca ptr, align 8
  %i = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %v = alloca i32, align 4
  %irq = alloca i32, align 4
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5291, metadata !DIExpression()), !dbg !5311
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !5312
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5292, metadata !DIExpression()), !dbg !5313
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5314
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !5315
  store ptr %call, ptr %vp_dev, align 8, !dbg !5313
  call void @llvm.lifetime.start.p0(i64 8, ptr %vq) #17, !dbg !5316
  call void @llvm.dbg.declare(metadata ptr %vq, metadata !5293, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #17, !dbg !5316
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5294, metadata !DIExpression()), !dbg !5318
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5319
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5295, metadata !DIExpression()), !dbg !5320
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5296, metadata !DIExpression()), !dbg !5321
  %1 = load ptr, ptr %vdev.addr, align 8, !dbg !5321
  %vqs = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 10, !dbg !5321
  %next = getelementptr inbounds %struct.list_head, ptr %vqs, i32 0, i32 0, !dbg !5321
  %2 = load ptr, ptr %next, align 8, !dbg !5321
  store ptr %2, ptr %__mptr, align 8, !dbg !5321
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5321
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5321
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5322
  %4 = load ptr, ptr %tmp, align 8, !dbg !5321
  store ptr %4, ptr %vq, align 8, !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #17, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5299, metadata !DIExpression()), !dbg !5323
  %5 = load ptr, ptr %vq, align 8, !dbg !5323
  %list = getelementptr inbounds %struct.virtqueue, ptr %5, i32 0, i32 0, !dbg !5323
  %next2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5323
  %6 = load ptr, ptr %next2, align 8, !dbg !5323
  store ptr %6, ptr %__mptr1, align 8, !dbg !5323
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !5323
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !5323
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5323
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #17, !dbg !5322
  %8 = load ptr, ptr %tmp3, align 8, !dbg !5323
  store ptr %8, ptr %n, align 8, !dbg !5322
  br label %for.cond, !dbg !5322

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %vq, align 8, !dbg !5324
  %list5 = getelementptr inbounds %struct.virtqueue, ptr %9, i32 0, i32 0, !dbg !5324
  %10 = load ptr, ptr %vdev.addr, align 8, !dbg !5324
  %vqs6 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 10, !dbg !5324
  %cmp = icmp eq ptr %list5, %vqs6, !dbg !5324
  %lnot = xor i1 %cmp, true, !dbg !5324
  br i1 %lnot, label %for.body, label %for.end, !dbg !5322

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %vp_dev, align 8, !dbg !5325
  %per_vq_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %11, i32 0, i32 14, !dbg !5326
  %12 = load i8, ptr %per_vq_vectors, align 8, !dbg !5326, !range !5327, !noundef !558
  %tobool = trunc i8 %12 to i1, !dbg !5326
  br i1 %tobool, label %if.then, label %if.end13, !dbg !5328

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #17, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %v, metadata !5301, metadata !DIExpression()), !dbg !5330
  %13 = load ptr, ptr %vp_dev, align 8, !dbg !5331
  %vqs7 = getelementptr inbounds %struct.virtio_pci_device, ptr %13, i32 0, i32 7, !dbg !5332
  %14 = load ptr, ptr %vqs7, align 8, !dbg !5332
  %15 = load ptr, ptr %vq, align 8, !dbg !5333
  %index = getelementptr inbounds %struct.virtqueue, ptr %15, i32 0, i32 4, !dbg !5334
  %16 = load i32, ptr %index, align 8, !dbg !5334
  %idxprom = zext i32 %16 to i64, !dbg !5331
  %arrayidx = getelementptr ptr, ptr %14, i64 %idxprom, !dbg !5331
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !5331
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %17, i32 0, i32 2, !dbg !5335
  %18 = load i32, ptr %msix_vector, align 8, !dbg !5335
  store i32 %18, ptr %v, align 4, !dbg !5330
  %19 = load i32, ptr %v, align 4, !dbg !5336
  %cmp8 = icmp ne i32 %19, 65535, !dbg !5337
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !5338

if.then9:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #17, !dbg !5339
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !5306, metadata !DIExpression()), !dbg !5340
  %20 = load ptr, ptr %vp_dev, align 8, !dbg !5341
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %20, i32 0, i32 1, !dbg !5342
  %21 = load ptr, ptr %pci_dev, align 8, !dbg !5342
  %22 = load i32, ptr %v, align 4, !dbg !5343
  %call10 = call i32 @pci_irq_vector(ptr noundef %21, i32 noundef %22) #18, !dbg !5344
  store i32 %call10, ptr %irq, align 4, !dbg !5340
  %23 = load i32, ptr %irq, align 4, !dbg !5345
  %call11 = call i32 @irq_set_affinity_hint(i32 noundef %23, ptr noundef null) #18, !dbg !5346
  %24 = load i32, ptr %irq, align 4, !dbg !5347
  %25 = load ptr, ptr %vq, align 8, !dbg !5348
  %call12 = call ptr @free_irq(i32 noundef %24, ptr noundef %25) #18, !dbg !5349
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #17, !dbg !5350
  br label %if.end, !dbg !5351

if.end:                                           ; preds = %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #17, !dbg !5352
  br label %if.end13, !dbg !5353

if.end13:                                         ; preds = %if.end, %for.body
  %26 = load ptr, ptr %vq, align 8, !dbg !5354
  call void @vp_del_vq(ptr noundef %26) #18, !dbg !5355
  br label %for.inc, !dbg !5356

for.inc:                                          ; preds = %if.end13
  %27 = load ptr, ptr %n, align 8, !dbg !5324
  store ptr %27, ptr %vq, align 8, !dbg !5324
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #17, !dbg !5357
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !5309, metadata !DIExpression()), !dbg !5357
  %28 = load ptr, ptr %n, align 8, !dbg !5357
  %list15 = getelementptr inbounds %struct.virtqueue, ptr %28, i32 0, i32 0, !dbg !5357
  %next16 = getelementptr inbounds %struct.list_head, ptr %list15, i32 0, i32 0, !dbg !5357
  %29 = load ptr, ptr %next16, align 8, !dbg !5357
  store ptr %29, ptr %__mptr14, align 8, !dbg !5357
  %30 = load ptr, ptr %__mptr14, align 8, !dbg !5357
  %add.ptr18 = getelementptr i8, ptr %30, i64 0, !dbg !5357
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !5357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #17, !dbg !5324
  %31 = load ptr, ptr %tmp17, align 8, !dbg !5357
  store ptr %31, ptr %n, align 8, !dbg !5324
  br label %for.cond, !dbg !5324, !llvm.loop !5358

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %vp_dev, align 8, !dbg !5360
  %per_vq_vectors19 = getelementptr inbounds %struct.virtio_pci_device, ptr %32, i32 0, i32 14, !dbg !5361
  store i8 0, ptr %per_vq_vectors19, align 8, !dbg !5362
  %33 = load ptr, ptr %vp_dev, align 8, !dbg !5363
  %intx_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %33, i32 0, i32 9, !dbg !5365
  %34 = load i32, ptr %intx_enabled, align 4, !dbg !5365
  %tobool20 = icmp ne i32 %34, 0, !dbg !5363
  br i1 %tobool20, label %if.then21, label %if.end26, !dbg !5366

if.then21:                                        ; preds = %for.end
  %35 = load ptr, ptr %vp_dev, align 8, !dbg !5367
  %pci_dev22 = getelementptr inbounds %struct.virtio_pci_device, ptr %35, i32 0, i32 1, !dbg !5369
  %36 = load ptr, ptr %pci_dev22, align 8, !dbg !5369
  %irq23 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 39, !dbg !5370
  %37 = load i32, ptr %irq23, align 4, !dbg !5370
  %38 = load ptr, ptr %vp_dev, align 8, !dbg !5371
  %call24 = call ptr @free_irq(i32 noundef %37, ptr noundef %38) #18, !dbg !5372
  %39 = load ptr, ptr %vp_dev, align 8, !dbg !5373
  %intx_enabled25 = getelementptr inbounds %struct.virtio_pci_device, ptr %39, i32 0, i32 9, !dbg !5374
  store i32 0, ptr %intx_enabled25, align 4, !dbg !5375
  br label %if.end26, !dbg !5376

if.end26:                                         ; preds = %if.then21, %for.end
  store i32 0, ptr %i, align 4, !dbg !5377
  br label %for.cond27, !dbg !5379

for.cond27:                                       ; preds = %for.inc33, %if.end26
  %40 = load i32, ptr %i, align 4, !dbg !5380
  %41 = load ptr, ptr %vp_dev, align 8, !dbg !5382
  %msix_used_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %41, i32 0, i32 13, !dbg !5383
  %42 = load i32, ptr %msix_used_vectors, align 4, !dbg !5383
  %cmp28 = icmp ult i32 %40, %42, !dbg !5384
  br i1 %cmp28, label %for.body29, label %for.end34, !dbg !5385

for.body29:                                       ; preds = %for.cond27
  %43 = load ptr, ptr %vp_dev, align 8, !dbg !5386
  %pci_dev30 = getelementptr inbounds %struct.virtio_pci_device, ptr %43, i32 0, i32 1, !dbg !5387
  %44 = load ptr, ptr %pci_dev30, align 8, !dbg !5387
  %45 = load i32, ptr %i, align 4, !dbg !5388
  %call31 = call i32 @pci_irq_vector(ptr noundef %44, i32 noundef %45) #18, !dbg !5389
  %46 = load ptr, ptr %vp_dev, align 8, !dbg !5390
  %call32 = call ptr @free_irq(i32 noundef %call31, ptr noundef %46) #18, !dbg !5391
  br label %for.inc33, !dbg !5391

for.inc33:                                        ; preds = %for.body29
  %47 = load i32, ptr %i, align 4, !dbg !5392
  %inc = add i32 %47, 1, !dbg !5392
  store i32 %inc, ptr %i, align 4, !dbg !5392
  br label %for.cond27, !dbg !5393, !llvm.loop !5394

for.end34:                                        ; preds = %for.cond27
  %48 = load ptr, ptr %vp_dev, align 8, !dbg !5396
  %msix_affinity_masks = getelementptr inbounds %struct.virtio_pci_device, ptr %48, i32 0, i32 10, !dbg !5398
  %49 = load ptr, ptr %msix_affinity_masks, align 8, !dbg !5398
  %tobool35 = icmp ne ptr %49, null, !dbg !5396
  br i1 %tobool35, label %if.then36, label %if.end46, !dbg !5399

if.then36:                                        ; preds = %for.end34
  store i32 0, ptr %i, align 4, !dbg !5400
  br label %for.cond37, !dbg !5403

for.cond37:                                       ; preds = %for.inc43, %if.then36
  %50 = load i32, ptr %i, align 4, !dbg !5404
  %51 = load ptr, ptr %vp_dev, align 8, !dbg !5406
  %msix_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %51, i32 0, i32 12, !dbg !5407
  %52 = load i32, ptr %msix_vectors, align 8, !dbg !5407
  %cmp38 = icmp ult i32 %50, %52, !dbg !5408
  br i1 %cmp38, label %for.body39, label %for.end45, !dbg !5409

for.body39:                                       ; preds = %for.cond37
  %53 = load ptr, ptr %vp_dev, align 8, !dbg !5410
  %msix_affinity_masks40 = getelementptr inbounds %struct.virtio_pci_device, ptr %53, i32 0, i32 10, !dbg !5411
  %54 = load ptr, ptr %msix_affinity_masks40, align 8, !dbg !5411
  %55 = load i32, ptr %i, align 4, !dbg !5412
  %idxprom41 = sext i32 %55 to i64, !dbg !5410
  %arrayidx42 = getelementptr [1 x %struct.cpumask], ptr %54, i64 %idxprom41, !dbg !5410
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx42, i64 0, i64 0, !dbg !5410
  call void @free_cpumask_var(ptr noundef %arraydecay) #18, !dbg !5413
  br label %for.inc43, !dbg !5413

for.inc43:                                        ; preds = %for.body39
  %56 = load i32, ptr %i, align 4, !dbg !5414
  %inc44 = add i32 %56, 1, !dbg !5414
  store i32 %inc44, ptr %i, align 4, !dbg !5414
  br label %for.cond37, !dbg !5415, !llvm.loop !5416

for.end45:                                        ; preds = %for.cond37
  br label %if.end46, !dbg !5418

if.end46:                                         ; preds = %for.end45, %for.end34
  %57 = load ptr, ptr %vp_dev, align 8, !dbg !5419
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %57, i32 0, i32 8, !dbg !5421
  %58 = load i32, ptr %msix_enabled, align 8, !dbg !5421
  %tobool47 = icmp ne i32 %58, 0, !dbg !5419
  br i1 %tobool47, label %if.then48, label %if.end52, !dbg !5422

if.then48:                                        ; preds = %if.end46
  %59 = load ptr, ptr %vp_dev, align 8, !dbg !5423
  %config_vector = getelementptr inbounds %struct.virtio_pci_device, ptr %59, i32 0, i32 17, !dbg !5425
  %60 = load ptr, ptr %config_vector, align 8, !dbg !5425
  %61 = load ptr, ptr %vp_dev, align 8, !dbg !5426
  %call49 = call zeroext i16 %60(ptr noundef %61, i16 noundef zeroext -1) #18, !dbg !5423
  %62 = load ptr, ptr %vp_dev, align 8, !dbg !5427
  %pci_dev50 = getelementptr inbounds %struct.virtio_pci_device, ptr %62, i32 0, i32 1, !dbg !5428
  %63 = load ptr, ptr %pci_dev50, align 8, !dbg !5428
  call void @pci_free_irq_vectors(ptr noundef %63) #18, !dbg !5429
  %64 = load ptr, ptr %vp_dev, align 8, !dbg !5430
  %msix_enabled51 = getelementptr inbounds %struct.virtio_pci_device, ptr %64, i32 0, i32 8, !dbg !5431
  store i32 0, ptr %msix_enabled51, align 8, !dbg !5432
  br label %if.end52, !dbg !5433

if.end52:                                         ; preds = %if.then48, %if.end46
  %65 = load ptr, ptr %vp_dev, align 8, !dbg !5434
  %msix_vectors53 = getelementptr inbounds %struct.virtio_pci_device, ptr %65, i32 0, i32 12, !dbg !5435
  store i32 0, ptr %msix_vectors53, align 8, !dbg !5436
  %66 = load ptr, ptr %vp_dev, align 8, !dbg !5437
  %msix_used_vectors54 = getelementptr inbounds %struct.virtio_pci_device, ptr %66, i32 0, i32 13, !dbg !5438
  store i32 0, ptr %msix_used_vectors54, align 4, !dbg !5439
  %67 = load ptr, ptr %vp_dev, align 8, !dbg !5440
  %msix_names = getelementptr inbounds %struct.virtio_pci_device, ptr %67, i32 0, i32 11, !dbg !5441
  %68 = load ptr, ptr %msix_names, align 8, !dbg !5441
  call void @kfree(ptr noundef %68) #18, !dbg !5442
  %69 = load ptr, ptr %vp_dev, align 8, !dbg !5443
  %msix_names55 = getelementptr inbounds %struct.virtio_pci_device, ptr %69, i32 0, i32 11, !dbg !5444
  store ptr null, ptr %msix_names55, align 8, !dbg !5445
  %70 = load ptr, ptr %vp_dev, align 8, !dbg !5446
  %msix_affinity_masks56 = getelementptr inbounds %struct.virtio_pci_device, ptr %70, i32 0, i32 10, !dbg !5447
  %71 = load ptr, ptr %msix_affinity_masks56, align 8, !dbg !5447
  call void @kfree(ptr noundef %71) #18, !dbg !5448
  %72 = load ptr, ptr %vp_dev, align 8, !dbg !5449
  %msix_affinity_masks57 = getelementptr inbounds %struct.virtio_pci_device, ptr %72, i32 0, i32 10, !dbg !5450
  store ptr null, ptr %msix_affinity_masks57, align 8, !dbg !5451
  %73 = load ptr, ptr %vp_dev, align 8, !dbg !5452
  %vqs58 = getelementptr inbounds %struct.virtio_pci_device, ptr %73, i32 0, i32 7, !dbg !5453
  %74 = load ptr, ptr %vqs58, align 8, !dbg !5453
  call void @kfree(ptr noundef %74) #18, !dbg !5454
  %75 = load ptr, ptr %vp_dev, align 8, !dbg !5455
  %vqs59 = getelementptr inbounds %struct.virtio_pci_device, ptr %75, i32 0, i32 7, !dbg !5456
  store ptr null, ptr %vqs59, align 8, !dbg !5457
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5458
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #17, !dbg !5458
  call void @llvm.lifetime.end.p0(i64 8, ptr %vq) #17, !dbg !5458
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !5458
  ret void, !dbg !5458
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_set_affinity_hint(i32 noundef %irq, ptr noundef %m) #4 align 16 !dbg !5459 {
entry:
  %irq.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5463, metadata !DIExpression()), !dbg !5465
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5464, metadata !DIExpression()), !dbg !5466
  %0 = load i32, ptr %irq.addr, align 4, !dbg !5467
  %1 = load ptr, ptr %m.addr, align 8, !dbg !5468
  %call = call i32 @irq_set_affinity_and_hint(i32 noundef %0, ptr noundef %1) #18, !dbg !5469
  ret i32 %call, !dbg !5470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5471 dso_local ptr @free_irq(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_del_vq(ptr noundef %vq) #0 align 16 !dbg !5474 {
entry:
  %vq.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %info = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !5476, metadata !DIExpression()), !dbg !5487
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5477, metadata !DIExpression()), !dbg !5489
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !5490
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3, !dbg !5491
  %1 = load ptr, ptr %vdev, align 8, !dbg !5491
  %call = call ptr @to_vp_device(ptr noundef %1) #18, !dbg !5492
  store ptr %call, ptr %vp_dev, align 8, !dbg !5489
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5478, metadata !DIExpression()), !dbg !5494
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !5495
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 7, !dbg !5496
  %3 = load ptr, ptr %vqs, align 8, !dbg !5496
  %4 = load ptr, ptr %vq.addr, align 8, !dbg !5497
  %index = getelementptr inbounds %struct.virtqueue, ptr %4, i32 0, i32 4, !dbg !5498
  %5 = load i32, ptr %index, align 8, !dbg !5498
  %idxprom = zext i32 %5 to i64, !dbg !5495
  %arrayidx = getelementptr ptr, ptr %3, i64 %idxprom, !dbg !5495
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !5495
  store ptr %6, ptr %info, align 8, !dbg !5494
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !5499
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5479, metadata !DIExpression()), !dbg !5500
  %7 = load ptr, ptr %vq.addr, align 8, !dbg !5501
  %reset = getelementptr inbounds %struct.virtqueue, ptr %7, i32 0, i32 7, !dbg !5502
  %8 = load i8, ptr %reset, align 4, !dbg !5502, !range !5327, !noundef !558
  %tobool = trunc i8 %8 to i1, !dbg !5502
  br i1 %tobool, label %if.end, label %if.then, !dbg !5503

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5504

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5505

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5480, metadata !DIExpression()), !dbg !5506
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5486, metadata !DIExpression()), !dbg !5506
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5506
  %conv = zext i1 %cmp to i32, !dbg !5506
  store i32 1, ptr %tmp, align 4, !dbg !5506
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !5507
  %9 = load i32, ptr %tmp, align 4, !dbg !5506
  %10 = load ptr, ptr %vp_dev, align 8, !dbg !5507
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %10, i32 0, i32 5, !dbg !5507
  %call2 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5507
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #18, !dbg !5507
  store i64 %call3, ptr %flags, align 8, !dbg !5507
  br label %do.cond, !dbg !5507

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5507

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5505

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5505

do.end5:                                          ; preds = %do.cond4
  %11 = load ptr, ptr %info, align 8, !dbg !5508
  %node = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %11, i32 0, i32 1, !dbg !5509
  call void @list_del(ptr noundef %node) #18, !dbg !5510
  %12 = load ptr, ptr %vp_dev, align 8, !dbg !5511
  %lock6 = getelementptr inbounds %struct.virtio_pci_device, ptr %12, i32 0, i32 5, !dbg !5512
  %13 = load i64, ptr %flags, align 8, !dbg !5513
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %13) #18, !dbg !5514
  br label %if.end, !dbg !5515

if.end:                                           ; preds = %do.end5, %entry
  %14 = load ptr, ptr %vp_dev, align 8, !dbg !5516
  %del_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %14, i32 0, i32 16, !dbg !5517
  %15 = load ptr, ptr %del_vq, align 8, !dbg !5517
  %16 = load ptr, ptr %info, align 8, !dbg !5518
  call void %15(ptr noundef %16) #18, !dbg !5516
  %17 = load ptr, ptr %info, align 8, !dbg !5519
  call void @kfree(ptr noundef %17) #18, !dbg !5520
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !5521
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !5521
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !5521
  ret void, !dbg !5521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #4 align 16 !dbg !5522 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  ret void, !dbg !5529
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5530 dso_local void @pci_free_irq_vectors(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5531 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vp_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, ptr noundef %ctx, ptr noundef %desc) #0 align 16 !dbg !5534 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %nvqs.addr = alloca i32, align 4
  %vqs.addr = alloca ptr, align 8
  %callbacks.addr = alloca ptr, align 8
  %names.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5536, metadata !DIExpression()), !dbg !5544
  store i32 %nvqs, ptr %nvqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvqs.addr, metadata !5537, metadata !DIExpression()), !dbg !5545
  store ptr %vqs, ptr %vqs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vqs.addr, metadata !5538, metadata !DIExpression()), !dbg !5546
  store ptr %callbacks, ptr %callbacks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callbacks.addr, metadata !5539, metadata !DIExpression()), !dbg !5547
  store ptr %names, ptr %names.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %names.addr, metadata !5540, metadata !DIExpression()), !dbg !5548
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5541, metadata !DIExpression()), !dbg !5549
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5542, metadata !DIExpression()), !dbg !5550
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5551
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5543, metadata !DIExpression()), !dbg !5552
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5553
  %1 = load i32, ptr %nvqs.addr, align 4, !dbg !5554
  %2 = load ptr, ptr %vqs.addr, align 8, !dbg !5555
  %3 = load ptr, ptr %callbacks.addr, align 8, !dbg !5556
  %4 = load ptr, ptr %names.addr, align 8, !dbg !5557
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !5558
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !5559
  %call = call i32 @vp_find_vqs_msix(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true, ptr noundef %5, ptr noundef %6) #18, !dbg !5560
  store i32 %call, ptr %err, align 4, !dbg !5561
  %7 = load i32, ptr %err, align 4, !dbg !5562
  %tobool = icmp ne i32 %7, 0, !dbg !5562
  br i1 %tobool, label %if.end, label %if.then, !dbg !5564

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5565

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %vdev.addr, align 8, !dbg !5566
  %9 = load i32, ptr %nvqs.addr, align 4, !dbg !5567
  %10 = load ptr, ptr %vqs.addr, align 8, !dbg !5568
  %11 = load ptr, ptr %callbacks.addr, align 8, !dbg !5569
  %12 = load ptr, ptr %names.addr, align 8, !dbg !5570
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !5571
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !5572
  %call1 = call i32 @vp_find_vqs_msix(ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i1 noundef zeroext false, ptr noundef %13, ptr noundef %14) #18, !dbg !5573
  store i32 %call1, ptr %err, align 4, !dbg !5574
  %15 = load i32, ptr %err, align 4, !dbg !5575
  %tobool2 = icmp ne i32 %15, 0, !dbg !5575
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5577

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5578

if.end4:                                          ; preds = %if.end
  %16 = load ptr, ptr %vdev.addr, align 8, !dbg !5579
  %call5 = call ptr @to_vp_device(ptr noundef %16) #18, !dbg !5581
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %call5, i32 0, i32 1, !dbg !5582
  %17 = load ptr, ptr %pci_dev, align 8, !dbg !5582
  %irq = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 39, !dbg !5583
  %18 = load i32, ptr %irq, align 4, !dbg !5583
  %tobool6 = icmp ne i32 %18, 0, !dbg !5584
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5585

if.then7:                                         ; preds = %if.end4
  %19 = load i32, ptr %err, align 4, !dbg !5586
  store i32 %19, ptr %retval, align 4, !dbg !5587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5587

if.end8:                                          ; preds = %if.end4
  %20 = load ptr, ptr %vdev.addr, align 8, !dbg !5588
  %21 = load i32, ptr %nvqs.addr, align 4, !dbg !5589
  %22 = load ptr, ptr %vqs.addr, align 8, !dbg !5590
  %23 = load ptr, ptr %callbacks.addr, align 8, !dbg !5591
  %24 = load ptr, ptr %names.addr, align 8, !dbg !5592
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !5593
  %call9 = call i32 @vp_find_vqs_intx(ptr noundef %20, i32 noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25) #18, !dbg !5594
  store i32 %call9, ptr %retval, align 4, !dbg !5595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5595

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5596
  %26 = load i32, ptr %retval, align 4, !dbg !5596
  ret i32 %26, !dbg !5596
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_find_vqs_msix(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, i1 noundef zeroext %per_vq_vectors, ptr noundef %ctx, ptr noundef %desc) #0 align 16 !dbg !5597 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %nvqs.addr = alloca i32, align 4
  %vqs.addr = alloca ptr, align 8
  %callbacks.addr = alloca ptr, align 8
  %names.addr = alloca ptr, align 8
  %per_vq_vectors.addr = alloca i8, align 1
  %ctx.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %msix_vec = alloca i16, align 2
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %nvectors = alloca i32, align 4
  %allocated_vectors = alloca i32, align 4
  %queue_idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5601, metadata !DIExpression()), !dbg !5617
  store i32 %nvqs, ptr %nvqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvqs.addr, metadata !5602, metadata !DIExpression()), !dbg !5618
  store ptr %vqs, ptr %vqs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vqs.addr, metadata !5603, metadata !DIExpression()), !dbg !5619
  store ptr %callbacks, ptr %callbacks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callbacks.addr, metadata !5604, metadata !DIExpression()), !dbg !5620
  store ptr %names, ptr %names.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %names.addr, metadata !5605, metadata !DIExpression()), !dbg !5621
  %frombool = zext i1 %per_vq_vectors to i8
  store i8 %frombool, ptr %per_vq_vectors.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %per_vq_vectors.addr, metadata !5606, metadata !DIExpression()), !dbg !5622
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5607, metadata !DIExpression()), !dbg !5623
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5608, metadata !DIExpression()), !dbg !5624
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !5625
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5609, metadata !DIExpression()), !dbg !5626
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5627
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !5628
  store ptr %call, ptr %vp_dev, align 8, !dbg !5626
  call void @llvm.lifetime.start.p0(i64 2, ptr %msix_vec) #17, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %msix_vec, metadata !5610, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5611, metadata !DIExpression()), !dbg !5632
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5612, metadata !DIExpression()), !dbg !5633
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvectors) #17, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %nvectors, metadata !5613, metadata !DIExpression()), !dbg !5634
  call void @llvm.lifetime.start.p0(i64 4, ptr %allocated_vectors) #17, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %allocated_vectors, metadata !5614, metadata !DIExpression()), !dbg !5635
  call void @llvm.lifetime.start.p0(i64 4, ptr %queue_idx) #17, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %queue_idx, metadata !5615, metadata !DIExpression()), !dbg !5636
  store i32 0, ptr %queue_idx, align 4, !dbg !5636
  %1 = load i32, ptr %nvqs.addr, align 4, !dbg !5637
  %conv = zext i32 %1 to i64, !dbg !5637
  %call1 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #19, !dbg !5638
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !5639
  %vqs2 = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 7, !dbg !5640
  store ptr %call1, ptr %vqs2, align 8, !dbg !5641
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !5642
  %vqs3 = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 7, !dbg !5644
  %4 = load ptr, ptr %vqs3, align 8, !dbg !5644
  %tobool = icmp ne ptr %4, null, !dbg !5642
  br i1 %tobool, label %if.end, label %if.then, !dbg !5645

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

if.end:                                           ; preds = %entry
  %5 = load i8, ptr %per_vq_vectors.addr, align 1, !dbg !5647, !range !5327, !noundef !558
  %tobool4 = trunc i8 %5 to i1, !dbg !5647
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5649

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %nvectors, align 4, !dbg !5650
  store i32 0, ptr %i, align 4, !dbg !5652
  br label %for.cond, !dbg !5654

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, ptr %i, align 4, !dbg !5655
  %7 = load i32, ptr %nvqs.addr, align 4, !dbg !5657
  %cmp = icmp ult i32 %6, %7, !dbg !5658
  br i1 %cmp, label %for.body, label %for.end, !dbg !5659

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %names.addr, align 8, !dbg !5660
  %9 = load i32, ptr %i, align 4, !dbg !5662
  %idxprom = sext i32 %9 to i64, !dbg !5660
  %arrayidx = getelementptr ptr, ptr %8, i64 %idxprom, !dbg !5660
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !5660
  %tobool7 = icmp ne ptr %10, null, !dbg !5660
  br i1 %tobool7, label %land.lhs.true, label %if.end12, !dbg !5663

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %callbacks.addr, align 8, !dbg !5664
  %12 = load i32, ptr %i, align 4, !dbg !5665
  %idxprom8 = sext i32 %12 to i64, !dbg !5664
  %arrayidx9 = getelementptr ptr, ptr %11, i64 %idxprom8, !dbg !5664
  %13 = load ptr, ptr %arrayidx9, align 8, !dbg !5664
  %tobool10 = icmp ne ptr %13, null, !dbg !5664
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5666

if.then11:                                        ; preds = %land.lhs.true
  %14 = load i32, ptr %nvectors, align 4, !dbg !5667
  %inc = add i32 %14, 1, !dbg !5667
  store i32 %inc, ptr %nvectors, align 4, !dbg !5667
  br label %if.end12, !dbg !5667

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5668

for.inc:                                          ; preds = %if.end12
  %15 = load i32, ptr %i, align 4, !dbg !5669
  %inc13 = add i32 %15, 1, !dbg !5669
  store i32 %inc13, ptr %i, align 4, !dbg !5669
  br label %for.cond, !dbg !5670, !llvm.loop !5671

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !5673

if.else:                                          ; preds = %if.end
  store i32 2, ptr %nvectors, align 4, !dbg !5674
  br label %if.end14

if.end14:                                         ; preds = %if.else, %for.end
  %16 = load ptr, ptr %vdev.addr, align 8, !dbg !5676
  %17 = load i32, ptr %nvectors, align 4, !dbg !5677
  %18 = load i8, ptr %per_vq_vectors.addr, align 1, !dbg !5678, !range !5327, !noundef !558
  %tobool15 = trunc i8 %18 to i1, !dbg !5678
  %19 = load i8, ptr %per_vq_vectors.addr, align 1, !dbg !5679, !range !5327, !noundef !558
  %tobool16 = trunc i8 %19 to i1, !dbg !5679
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !5679

cond.true:                                        ; preds = %if.end14
  %20 = load ptr, ptr %desc.addr, align 8, !dbg !5680
  br label %cond.end, !dbg !5679

cond.false:                                       ; preds = %if.end14
  br label %cond.end, !dbg !5679

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %20, %cond.true ], [ null, %cond.false ], !dbg !5679
  %call18 = call i32 @vp_request_msix_vectors(ptr noundef %16, i32 noundef %17, i1 noundef zeroext %tobool15, ptr noundef %cond) #18, !dbg !5681
  store i32 %call18, ptr %err, align 4, !dbg !5682
  %21 = load i32, ptr %err, align 4, !dbg !5683
  %tobool19 = icmp ne i32 %21, 0, !dbg !5683
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5685

if.then20:                                        ; preds = %cond.end
  br label %error_find, !dbg !5686

if.end21:                                         ; preds = %cond.end
  %22 = load i8, ptr %per_vq_vectors.addr, align 1, !dbg !5687, !range !5327, !noundef !558
  %tobool22 = trunc i8 %22 to i1, !dbg !5687
  %23 = load ptr, ptr %vp_dev, align 8, !dbg !5688
  %per_vq_vectors23 = getelementptr inbounds %struct.virtio_pci_device, ptr %23, i32 0, i32 14, !dbg !5689
  %frombool24 = zext i1 %tobool22 to i8, !dbg !5690
  store i8 %frombool24, ptr %per_vq_vectors23, align 8, !dbg !5690
  %24 = load ptr, ptr %vp_dev, align 8, !dbg !5691
  %msix_used_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %24, i32 0, i32 13, !dbg !5692
  %25 = load i32, ptr %msix_used_vectors, align 4, !dbg !5692
  store i32 %25, ptr %allocated_vectors, align 4, !dbg !5693
  store i32 0, ptr %i, align 4, !dbg !5694
  br label %for.cond25, !dbg !5696

for.cond25:                                       ; preds = %for.inc104, %if.end21
  %26 = load i32, ptr %i, align 4, !dbg !5697
  %27 = load i32, ptr %nvqs.addr, align 4, !dbg !5699
  %cmp26 = icmp ult i32 %26, %27, !dbg !5700
  br i1 %cmp26, label %for.body28, label %for.end106, !dbg !5701

for.body28:                                       ; preds = %for.cond25
  %28 = load ptr, ptr %names.addr, align 8, !dbg !5702
  %29 = load i32, ptr %i, align 4, !dbg !5705
  %idxprom29 = sext i32 %29 to i64, !dbg !5702
  %arrayidx30 = getelementptr ptr, ptr %28, i64 %idxprom29, !dbg !5702
  %30 = load ptr, ptr %arrayidx30, align 8, !dbg !5702
  %tobool31 = icmp ne ptr %30, null, !dbg !5702
  br i1 %tobool31, label %if.end35, label %if.then32, !dbg !5706

if.then32:                                        ; preds = %for.body28
  %31 = load ptr, ptr %vqs.addr, align 8, !dbg !5707
  %32 = load i32, ptr %i, align 4, !dbg !5709
  %idxprom33 = sext i32 %32 to i64, !dbg !5707
  %arrayidx34 = getelementptr ptr, ptr %31, i64 %idxprom33, !dbg !5707
  store ptr null, ptr %arrayidx34, align 8, !dbg !5710
  br label %for.inc104, !dbg !5711

if.end35:                                         ; preds = %for.body28
  %33 = load ptr, ptr %callbacks.addr, align 8, !dbg !5712
  %34 = load i32, ptr %i, align 4, !dbg !5714
  %idxprom36 = sext i32 %34 to i64, !dbg !5712
  %arrayidx37 = getelementptr ptr, ptr %33, i64 %idxprom36, !dbg !5712
  %35 = load ptr, ptr %arrayidx37, align 8, !dbg !5712
  %tobool38 = icmp ne ptr %35, null, !dbg !5712
  br i1 %tobool38, label %if.else40, label %if.then39, !dbg !5715

if.then39:                                        ; preds = %if.end35
  store i16 -1, ptr %msix_vec, align 2, !dbg !5716
  br label %if.end48, !dbg !5717

if.else40:                                        ; preds = %if.end35
  %36 = load ptr, ptr %vp_dev, align 8, !dbg !5718
  %per_vq_vectors41 = getelementptr inbounds %struct.virtio_pci_device, ptr %36, i32 0, i32 14, !dbg !5720
  %37 = load i8, ptr %per_vq_vectors41, align 8, !dbg !5720, !range !5327, !noundef !558
  %tobool42 = trunc i8 %37 to i1, !dbg !5720
  br i1 %tobool42, label %if.then43, label %if.else46, !dbg !5721

if.then43:                                        ; preds = %if.else40
  %38 = load i32, ptr %allocated_vectors, align 4, !dbg !5722
  %inc44 = add i32 %38, 1, !dbg !5722
  store i32 %inc44, ptr %allocated_vectors, align 4, !dbg !5722
  %conv45 = trunc i32 %38 to i16, !dbg !5723
  store i16 %conv45, ptr %msix_vec, align 2, !dbg !5724
  br label %if.end47, !dbg !5725

if.else46:                                        ; preds = %if.else40
  store i16 1, ptr %msix_vec, align 2, !dbg !5726
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then43
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then39
  %39 = load ptr, ptr %vdev.addr, align 8, !dbg !5727
  %40 = load i32, ptr %queue_idx, align 4, !dbg !5728
  %inc49 = add i32 %40, 1, !dbg !5728
  store i32 %inc49, ptr %queue_idx, align 4, !dbg !5728
  %41 = load ptr, ptr %callbacks.addr, align 8, !dbg !5729
  %42 = load i32, ptr %i, align 4, !dbg !5730
  %idxprom50 = sext i32 %42 to i64, !dbg !5729
  %arrayidx51 = getelementptr ptr, ptr %41, i64 %idxprom50, !dbg !5729
  %43 = load ptr, ptr %arrayidx51, align 8, !dbg !5729
  %44 = load ptr, ptr %names.addr, align 8, !dbg !5731
  %45 = load i32, ptr %i, align 4, !dbg !5732
  %idxprom52 = sext i32 %45 to i64, !dbg !5731
  %arrayidx53 = getelementptr ptr, ptr %44, i64 %idxprom52, !dbg !5731
  %46 = load ptr, ptr %arrayidx53, align 8, !dbg !5731
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !5733
  %tobool54 = icmp ne ptr %47, null, !dbg !5733
  br i1 %tobool54, label %cond.true55, label %cond.false60, !dbg !5733

cond.true55:                                      ; preds = %if.end48
  %48 = load ptr, ptr %ctx.addr, align 8, !dbg !5734
  %49 = load i32, ptr %i, align 4, !dbg !5735
  %idxprom56 = sext i32 %49 to i64, !dbg !5734
  %arrayidx57 = getelementptr i8, ptr %48, i64 %idxprom56, !dbg !5734
  %50 = load i8, ptr %arrayidx57, align 1, !dbg !5734, !range !5327, !noundef !558
  %tobool58 = trunc i8 %50 to i1, !dbg !5734
  %conv59 = zext i1 %tobool58 to i32, !dbg !5734
  br label %cond.end61, !dbg !5733

cond.false60:                                     ; preds = %if.end48
  br label %cond.end61, !dbg !5733

cond.end61:                                       ; preds = %cond.false60, %cond.true55
  %cond62 = phi i32 [ %conv59, %cond.true55 ], [ 0, %cond.false60 ], !dbg !5733
  %tobool63 = icmp ne i32 %cond62, 0, !dbg !5733
  %51 = load i16, ptr %msix_vec, align 2, !dbg !5736
  %call64 = call ptr @vp_setup_vq(ptr noundef %39, i32 noundef %40, ptr noundef %43, ptr noundef %46, i1 noundef zeroext %tobool63, i16 noundef zeroext %51) #18, !dbg !5737
  %52 = load ptr, ptr %vqs.addr, align 8, !dbg !5738
  %53 = load i32, ptr %i, align 4, !dbg !5739
  %idxprom65 = sext i32 %53 to i64, !dbg !5738
  %arrayidx66 = getelementptr ptr, ptr %52, i64 %idxprom65, !dbg !5738
  store ptr %call64, ptr %arrayidx66, align 8, !dbg !5740
  %54 = load ptr, ptr %vqs.addr, align 8, !dbg !5741
  %55 = load i32, ptr %i, align 4, !dbg !5743
  %idxprom67 = sext i32 %55 to i64, !dbg !5741
  %arrayidx68 = getelementptr ptr, ptr %54, i64 %idxprom67, !dbg !5741
  %56 = load ptr, ptr %arrayidx68, align 8, !dbg !5741
  %call69 = call zeroext i1 @IS_ERR(ptr noundef %56) #18, !dbg !5744
  br i1 %call69, label %if.then70, label %if.end75, !dbg !5745

if.then70:                                        ; preds = %cond.end61
  %57 = load ptr, ptr %vqs.addr, align 8, !dbg !5746
  %58 = load i32, ptr %i, align 4, !dbg !5748
  %idxprom71 = sext i32 %58 to i64, !dbg !5746
  %arrayidx72 = getelementptr ptr, ptr %57, i64 %idxprom71, !dbg !5746
  %59 = load ptr, ptr %arrayidx72, align 8, !dbg !5746
  %call73 = call i64 @PTR_ERR(ptr noundef %59) #18, !dbg !5749
  %conv74 = trunc i64 %call73 to i32, !dbg !5749
  store i32 %conv74, ptr %err, align 4, !dbg !5750
  br label %error_find, !dbg !5751

if.end75:                                         ; preds = %cond.end61
  %60 = load ptr, ptr %vp_dev, align 8, !dbg !5752
  %per_vq_vectors76 = getelementptr inbounds %struct.virtio_pci_device, ptr %60, i32 0, i32 14, !dbg !5754
  %61 = load i8, ptr %per_vq_vectors76, align 8, !dbg !5754, !range !5327, !noundef !558
  %tobool77 = trunc i8 %61 to i1, !dbg !5754
  br i1 %tobool77, label %lor.lhs.false, label %if.then81, !dbg !5755

lor.lhs.false:                                    ; preds = %if.end75
  %62 = load i16, ptr %msix_vec, align 2, !dbg !5756
  %conv78 = zext i16 %62 to i32, !dbg !5756
  %cmp79 = icmp eq i32 %conv78, 65535, !dbg !5757
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !5758

if.then81:                                        ; preds = %lor.lhs.false, %if.end75
  br label %for.inc104, !dbg !5759

if.end82:                                         ; preds = %lor.lhs.false
  %63 = load ptr, ptr %vp_dev, align 8, !dbg !5760
  %msix_names = getelementptr inbounds %struct.virtio_pci_device, ptr %63, i32 0, i32 11, !dbg !5761
  %64 = load ptr, ptr %msix_names, align 8, !dbg !5761
  %65 = load i16, ptr %msix_vec, align 2, !dbg !5762
  %idxprom83 = zext i16 %65 to i64, !dbg !5760
  %arrayidx84 = getelementptr [256 x i8], ptr %64, i64 %idxprom83, !dbg !5760
  %arraydecay = getelementptr inbounds [256 x i8], ptr %arrayidx84, i64 0, i64 0, !dbg !5760
  %66 = load ptr, ptr %vp_dev, align 8, !dbg !5763
  %vdev85 = getelementptr inbounds %struct.virtio_pci_device, ptr %66, i32 0, i32 0, !dbg !5764
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev85, i32 0, i32 6, !dbg !5765
  %call86 = call ptr @dev_name(ptr noundef %dev) #18, !dbg !5766
  %67 = load ptr, ptr %names.addr, align 8, !dbg !5767
  %68 = load i32, ptr %i, align 4, !dbg !5768
  %idxprom87 = sext i32 %68 to i64, !dbg !5767
  %arrayidx88 = getelementptr ptr, ptr %67, i64 %idxprom87, !dbg !5767
  %69 = load ptr, ptr %arrayidx88, align 8, !dbg !5767
  %call89 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.3, ptr noundef %call86, ptr noundef %69) #18, !dbg !5769
  %70 = load ptr, ptr %vp_dev, align 8, !dbg !5770
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %70, i32 0, i32 1, !dbg !5771
  %71 = load ptr, ptr %pci_dev, align 8, !dbg !5771
  %72 = load i16, ptr %msix_vec, align 2, !dbg !5772
  %conv90 = zext i16 %72 to i32, !dbg !5772
  %call91 = call i32 @pci_irq_vector(ptr noundef %71, i32 noundef %conv90) #18, !dbg !5773
  %73 = load ptr, ptr %vp_dev, align 8, !dbg !5774
  %msix_names92 = getelementptr inbounds %struct.virtio_pci_device, ptr %73, i32 0, i32 11, !dbg !5775
  %74 = load ptr, ptr %msix_names92, align 8, !dbg !5775
  %75 = load i16, ptr %msix_vec, align 2, !dbg !5776
  %idxprom93 = zext i16 %75 to i64, !dbg !5774
  %arrayidx94 = getelementptr [256 x i8], ptr %74, i64 %idxprom93, !dbg !5774
  %arraydecay95 = getelementptr inbounds [256 x i8], ptr %arrayidx94, i64 0, i64 0, !dbg !5774
  %76 = load ptr, ptr %vqs.addr, align 8, !dbg !5777
  %77 = load i32, ptr %i, align 4, !dbg !5778
  %idxprom96 = sext i32 %77 to i64, !dbg !5777
  %arrayidx97 = getelementptr ptr, ptr %76, i64 %idxprom96, !dbg !5777
  %78 = load ptr, ptr %arrayidx97, align 8, !dbg !5777
  %call98 = call i32 @request_irq(i32 noundef %call91, ptr noundef @vring_interrupt, i64 noundef 0, ptr noundef %arraydecay95, ptr noundef %78) #18, !dbg !5779
  store i32 %call98, ptr %err, align 4, !dbg !5780
  %79 = load i32, ptr %err, align 4, !dbg !5781
  %tobool99 = icmp ne i32 %79, 0, !dbg !5781
  br i1 %tobool99, label %if.then100, label %if.end103, !dbg !5783

if.then100:                                       ; preds = %if.end82
  %80 = load ptr, ptr %vqs.addr, align 8, !dbg !5784
  %81 = load i32, ptr %i, align 4, !dbg !5786
  %idxprom101 = sext i32 %81 to i64, !dbg !5784
  %arrayidx102 = getelementptr ptr, ptr %80, i64 %idxprom101, !dbg !5784
  %82 = load ptr, ptr %arrayidx102, align 8, !dbg !5784
  call void @vp_del_vq(ptr noundef %82) #18, !dbg !5787
  br label %error_find, !dbg !5788

if.end103:                                        ; preds = %if.end82
  br label %for.inc104, !dbg !5789

for.inc104:                                       ; preds = %if.end103, %if.then81, %if.then32
  %83 = load i32, ptr %i, align 4, !dbg !5790
  %inc105 = add i32 %83, 1, !dbg !5790
  store i32 %inc105, ptr %i, align 4, !dbg !5790
  br label %for.cond25, !dbg !5791, !llvm.loop !5792

for.end106:                                       ; preds = %for.cond25
  store i32 0, ptr %retval, align 4, !dbg !5794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5794

error_find:                                       ; preds = %if.then100, %if.then70, %if.then20
  call void @llvm.dbg.label(metadata !5616), !dbg !5795
  %84 = load ptr, ptr %vdev.addr, align 8, !dbg !5796
  call void @vp_del_vqs(ptr noundef %84) #18, !dbg !5797
  %85 = load i32, ptr %err, align 4, !dbg !5798
  store i32 %85, ptr %retval, align 4, !dbg !5799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5799

cleanup:                                          ; preds = %error_find, %for.end106, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %queue_idx) #17, !dbg !5800
  call void @llvm.lifetime.end.p0(i64 4, ptr %allocated_vectors) #17, !dbg !5800
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvectors) #17, !dbg !5800
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5800
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5800
  call void @llvm.lifetime.end.p0(i64 2, ptr %msix_vec) #17, !dbg !5800
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !5800
  %86 = load i32, ptr %retval, align 4, !dbg !5800
  ret i32 %86, !dbg !5800
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_find_vqs_intx(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, ptr noundef %ctx) #0 align 16 !dbg !5801 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %nvqs.addr = alloca i32, align 4
  %vqs.addr = alloca ptr, align 8
  %callbacks.addr = alloca ptr, align 8
  %names.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %queue_idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5805, metadata !DIExpression()), !dbg !5816
  store i32 %nvqs, ptr %nvqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvqs.addr, metadata !5806, metadata !DIExpression()), !dbg !5817
  store ptr %vqs, ptr %vqs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vqs.addr, metadata !5807, metadata !DIExpression()), !dbg !5818
  store ptr %callbacks, ptr %callbacks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callbacks.addr, metadata !5808, metadata !DIExpression()), !dbg !5819
  store ptr %names, ptr %names.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %names.addr, metadata !5809, metadata !DIExpression()), !dbg !5820
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5810, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !5822
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5811, metadata !DIExpression()), !dbg !5823
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5824
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !5825
  store ptr %call, ptr %vp_dev, align 8, !dbg !5823
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5812, metadata !DIExpression()), !dbg !5827
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5813, metadata !DIExpression()), !dbg !5828
  call void @llvm.lifetime.start.p0(i64 4, ptr %queue_idx) #17, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %queue_idx, metadata !5814, metadata !DIExpression()), !dbg !5829
  store i32 0, ptr %queue_idx, align 4, !dbg !5829
  %1 = load i32, ptr %nvqs.addr, align 4, !dbg !5830
  %conv = zext i32 %1 to i64, !dbg !5830
  %call1 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #19, !dbg !5831
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !5832
  %vqs2 = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 7, !dbg !5833
  store ptr %call1, ptr %vqs2, align 8, !dbg !5834
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !5835
  %vqs3 = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 7, !dbg !5837
  %4 = load ptr, ptr %vqs3, align 8, !dbg !5837
  %tobool = icmp ne ptr %4, null, !dbg !5835
  br i1 %tobool, label %if.end, label %if.then, !dbg !5838

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5839

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %vp_dev, align 8, !dbg !5840
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %5, i32 0, i32 1, !dbg !5841
  %6 = load ptr, ptr %pci_dev, align 8, !dbg !5841
  %irq = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 39, !dbg !5842
  %7 = load i32, ptr %irq, align 4, !dbg !5842
  %8 = load ptr, ptr %vdev.addr, align 8, !dbg !5843
  %dev = getelementptr inbounds %struct.virtio_device, ptr %8, i32 0, i32 6, !dbg !5844
  %call4 = call ptr @dev_name(ptr noundef %dev) #18, !dbg !5845
  %9 = load ptr, ptr %vp_dev, align 8, !dbg !5846
  %call5 = call i32 @request_irq(i32 noundef %7, ptr noundef @vp_interrupt, i64 noundef 128, ptr noundef %call4, ptr noundef %9) #18, !dbg !5847
  store i32 %call5, ptr %err, align 4, !dbg !5848
  %10 = load i32, ptr %err, align 4, !dbg !5849
  %tobool6 = icmp ne i32 %10, 0, !dbg !5849
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5851

if.then7:                                         ; preds = %if.end
  br label %out_del_vqs, !dbg !5852

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %vp_dev, align 8, !dbg !5853
  %intx_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %11, i32 0, i32 9, !dbg !5854
  store i32 1, ptr %intx_enabled, align 4, !dbg !5855
  %12 = load ptr, ptr %vp_dev, align 8, !dbg !5856
  %per_vq_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %12, i32 0, i32 14, !dbg !5857
  store i8 0, ptr %per_vq_vectors, align 8, !dbg !5858
  store i32 0, ptr %i, align 4, !dbg !5859
  br label %for.cond, !dbg !5861

for.cond:                                         ; preds = %for.inc, %if.end8
  %13 = load i32, ptr %i, align 4, !dbg !5862
  %14 = load i32, ptr %nvqs.addr, align 4, !dbg !5864
  %cmp = icmp ult i32 %13, %14, !dbg !5865
  br i1 %cmp, label %for.body, label %for.end, !dbg !5866

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %names.addr, align 8, !dbg !5867
  %16 = load i32, ptr %i, align 4, !dbg !5870
  %idxprom = sext i32 %16 to i64, !dbg !5867
  %arrayidx = getelementptr ptr, ptr %15, i64 %idxprom, !dbg !5867
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !5867
  %tobool10 = icmp ne ptr %17, null, !dbg !5867
  br i1 %tobool10, label %if.end14, label %if.then11, !dbg !5871

if.then11:                                        ; preds = %for.body
  %18 = load ptr, ptr %vqs.addr, align 8, !dbg !5872
  %19 = load i32, ptr %i, align 4, !dbg !5874
  %idxprom12 = sext i32 %19 to i64, !dbg !5872
  %arrayidx13 = getelementptr ptr, ptr %18, i64 %idxprom12, !dbg !5872
  store ptr null, ptr %arrayidx13, align 8, !dbg !5875
  br label %for.inc, !dbg !5876

if.end14:                                         ; preds = %for.body
  %20 = load ptr, ptr %vdev.addr, align 8, !dbg !5877
  %21 = load i32, ptr %queue_idx, align 4, !dbg !5878
  %inc = add i32 %21, 1, !dbg !5878
  store i32 %inc, ptr %queue_idx, align 4, !dbg !5878
  %22 = load ptr, ptr %callbacks.addr, align 8, !dbg !5879
  %23 = load i32, ptr %i, align 4, !dbg !5880
  %idxprom15 = sext i32 %23 to i64, !dbg !5879
  %arrayidx16 = getelementptr ptr, ptr %22, i64 %idxprom15, !dbg !5879
  %24 = load ptr, ptr %arrayidx16, align 8, !dbg !5879
  %25 = load ptr, ptr %names.addr, align 8, !dbg !5881
  %26 = load i32, ptr %i, align 4, !dbg !5882
  %idxprom17 = sext i32 %26 to i64, !dbg !5881
  %arrayidx18 = getelementptr ptr, ptr %25, i64 %idxprom17, !dbg !5881
  %27 = load ptr, ptr %arrayidx18, align 8, !dbg !5881
  %28 = load ptr, ptr %ctx.addr, align 8, !dbg !5883
  %tobool19 = icmp ne ptr %28, null, !dbg !5883
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !5883

cond.true:                                        ; preds = %if.end14
  %29 = load ptr, ptr %ctx.addr, align 8, !dbg !5884
  %30 = load i32, ptr %i, align 4, !dbg !5885
  %idxprom20 = sext i32 %30 to i64, !dbg !5884
  %arrayidx21 = getelementptr i8, ptr %29, i64 %idxprom20, !dbg !5884
  %31 = load i8, ptr %arrayidx21, align 1, !dbg !5884, !range !5327, !noundef !558
  %tobool22 = trunc i8 %31 to i1, !dbg !5884
  %conv23 = zext i1 %tobool22 to i32, !dbg !5884
  br label %cond.end, !dbg !5883

cond.false:                                       ; preds = %if.end14
  br label %cond.end, !dbg !5883

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ 0, %cond.false ], !dbg !5883
  %tobool24 = icmp ne i32 %cond, 0, !dbg !5883
  %call25 = call ptr @vp_setup_vq(ptr noundef %20, i32 noundef %21, ptr noundef %24, ptr noundef %27, i1 noundef zeroext %tobool24, i16 noundef zeroext -1) #18, !dbg !5886
  %32 = load ptr, ptr %vqs.addr, align 8, !dbg !5887
  %33 = load i32, ptr %i, align 4, !dbg !5888
  %idxprom26 = sext i32 %33 to i64, !dbg !5887
  %arrayidx27 = getelementptr ptr, ptr %32, i64 %idxprom26, !dbg !5887
  store ptr %call25, ptr %arrayidx27, align 8, !dbg !5889
  %34 = load ptr, ptr %vqs.addr, align 8, !dbg !5890
  %35 = load i32, ptr %i, align 4, !dbg !5892
  %idxprom28 = sext i32 %35 to i64, !dbg !5890
  %arrayidx29 = getelementptr ptr, ptr %34, i64 %idxprom28, !dbg !5890
  %36 = load ptr, ptr %arrayidx29, align 8, !dbg !5890
  %call30 = call zeroext i1 @IS_ERR(ptr noundef %36) #18, !dbg !5893
  br i1 %call30, label %if.then31, label %if.end36, !dbg !5894

if.then31:                                        ; preds = %cond.end
  %37 = load ptr, ptr %vqs.addr, align 8, !dbg !5895
  %38 = load i32, ptr %i, align 4, !dbg !5897
  %idxprom32 = sext i32 %38 to i64, !dbg !5895
  %arrayidx33 = getelementptr ptr, ptr %37, i64 %idxprom32, !dbg !5895
  %39 = load ptr, ptr %arrayidx33, align 8, !dbg !5895
  %call34 = call i64 @PTR_ERR(ptr noundef %39) #18, !dbg !5898
  %conv35 = trunc i64 %call34 to i32, !dbg !5898
  store i32 %conv35, ptr %err, align 4, !dbg !5899
  br label %out_del_vqs, !dbg !5900

if.end36:                                         ; preds = %cond.end
  br label %for.inc, !dbg !5901

for.inc:                                          ; preds = %if.end36, %if.then11
  %40 = load i32, ptr %i, align 4, !dbg !5902
  %inc37 = add i32 %40, 1, !dbg !5902
  store i32 %inc37, ptr %i, align 4, !dbg !5902
  br label %for.cond, !dbg !5903, !llvm.loop !5904

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5906

out_del_vqs:                                      ; preds = %if.then31, %if.then7
  call void @llvm.dbg.label(metadata !5815), !dbg !5907
  %41 = load ptr, ptr %vdev.addr, align 8, !dbg !5908
  call void @vp_del_vqs(ptr noundef %41) #18, !dbg !5909
  %42 = load i32, ptr %err, align 4, !dbg !5910
  store i32 %42, ptr %retval, align 4, !dbg !5911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5911

cleanup:                                          ; preds = %out_del_vqs, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %queue_idx) #17, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !5912
  %43 = load i32, ptr %retval, align 4, !dbg !5912
  ret i32 %43, !dbg !5912
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @vp_bus_name(ptr noundef %vdev) #0 align 16 !dbg !5913 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5915, metadata !DIExpression()), !dbg !5917
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5916, metadata !DIExpression()), !dbg !5919
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5920
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !5921
  store ptr %call, ptr %vp_dev, align 8, !dbg !5919
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5922
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 1, !dbg !5923
  %2 = load ptr, ptr %pci_dev, align 8, !dbg !5923
  %call1 = call ptr @pci_name(ptr noundef %2) #18, !dbg !5924
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !5925
  ret ptr %call1, !dbg !5926
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_name(ptr noundef %pdev) #4 align 16 !dbg !5927 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5935
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5936
  %call = call ptr @dev_name(ptr noundef %dev) #18, !dbg !5937
  ret ptr %call, !dbg !5938
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vp_set_vq_affinity(ptr noundef %vq, ptr noundef %cpu_mask) #0 align 16 !dbg !5939 {
entry:
  %retval = alloca i32, align 4
  %vq.addr = alloca ptr, align 8
  %cpu_mask.addr = alloca ptr, align 8
  %vdev = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %info = alloca ptr, align 8
  %mask = alloca ptr, align 8
  %irq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !5941, metadata !DIExpression()), !dbg !5948
  store ptr %cpu_mask, ptr %cpu_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_mask.addr, metadata !5942, metadata !DIExpression()), !dbg !5949
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdev) #17, !dbg !5950
  call void @llvm.dbg.declare(metadata ptr %vdev, metadata !5943, metadata !DIExpression()), !dbg !5951
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !5952
  %vdev1 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3, !dbg !5953
  %1 = load ptr, ptr %vdev1, align 8, !dbg !5953
  store ptr %1, ptr %vdev, align 8, !dbg !5951
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !5954
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5944, metadata !DIExpression()), !dbg !5955
  %2 = load ptr, ptr %vdev, align 8, !dbg !5956
  %call = call ptr @to_vp_device(ptr noundef %2) #18, !dbg !5957
  store ptr %call, ptr %vp_dev, align 8, !dbg !5955
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5945, metadata !DIExpression()), !dbg !5959
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !5960
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 7, !dbg !5961
  %4 = load ptr, ptr %vqs, align 8, !dbg !5961
  %5 = load ptr, ptr %vq.addr, align 8, !dbg !5962
  %index = getelementptr inbounds %struct.virtqueue, ptr %5, i32 0, i32 4, !dbg !5963
  %6 = load i32, ptr %index, align 8, !dbg !5963
  %idxprom = zext i32 %6 to i64, !dbg !5960
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !5960
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !5960
  store ptr %7, ptr %info, align 8, !dbg !5959
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5964
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5946, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #17, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !5947, metadata !DIExpression()), !dbg !5967
  %8 = load ptr, ptr %vq.addr, align 8, !dbg !5968
  %callback = getelementptr inbounds %struct.virtqueue, ptr %8, i32 0, i32 1, !dbg !5970
  %9 = load ptr, ptr %callback, align 8, !dbg !5970
  %tobool = icmp ne ptr %9, null, !dbg !5968
  br i1 %tobool, label %if.end, label %if.then, !dbg !5971

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5972

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %vp_dev, align 8, !dbg !5973
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %10, i32 0, i32 8, !dbg !5975
  %11 = load i32, ptr %msix_enabled, align 8, !dbg !5975
  %tobool2 = icmp ne i32 %11, 0, !dbg !5973
  br i1 %tobool2, label %if.then3, label %if.end13, !dbg !5976

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr %vp_dev, align 8, !dbg !5977
  %msix_affinity_masks = getelementptr inbounds %struct.virtio_pci_device, ptr %12, i32 0, i32 10, !dbg !5979
  %13 = load ptr, ptr %msix_affinity_masks, align 8, !dbg !5979
  %14 = load ptr, ptr %info, align 8, !dbg !5980
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %14, i32 0, i32 2, !dbg !5981
  %15 = load i32, ptr %msix_vector, align 8, !dbg !5981
  %idxprom4 = zext i32 %15 to i64, !dbg !5977
  %arrayidx5 = getelementptr [1 x %struct.cpumask], ptr %13, i64 %idxprom4, !dbg !5977
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx5, i64 0, i64 0, !dbg !5977
  store ptr %arraydecay, ptr %mask, align 8, !dbg !5982
  %16 = load ptr, ptr %vp_dev, align 8, !dbg !5983
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %16, i32 0, i32 1, !dbg !5984
  %17 = load ptr, ptr %pci_dev, align 8, !dbg !5984
  %18 = load ptr, ptr %info, align 8, !dbg !5985
  %msix_vector6 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %18, i32 0, i32 2, !dbg !5986
  %19 = load i32, ptr %msix_vector6, align 8, !dbg !5986
  %call7 = call i32 @pci_irq_vector(ptr noundef %17, i32 noundef %19) #18, !dbg !5987
  store i32 %call7, ptr %irq, align 4, !dbg !5988
  %20 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !5989
  %tobool8 = icmp ne ptr %20, null, !dbg !5989
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !5991

if.then9:                                         ; preds = %if.then3
  %21 = load i32, ptr %irq, align 4, !dbg !5992
  %call10 = call i32 @irq_set_affinity_hint(i32 noundef %21, ptr noundef null) #18, !dbg !5993
  br label %if.end12, !dbg !5993

if.else:                                          ; preds = %if.then3
  %22 = load ptr, ptr %mask, align 8, !dbg !5994
  %23 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !5996
  call void @cpumask_copy(ptr noundef %22, ptr noundef %23) #18, !dbg !5997
  %24 = load i32, ptr %irq, align 4, !dbg !5998
  %25 = load ptr, ptr %mask, align 8, !dbg !5999
  %call11 = call i32 @irq_set_affinity_hint(i32 noundef %24, ptr noundef %25) #18, !dbg !6000
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  br label %if.end13, !dbg !6001

if.end13:                                         ; preds = %if.end12, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6002

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #17, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdev) #17, !dbg !6003
  %26 = load i32, ptr %retval, align 4, !dbg !6003
  ret i32 %26, !dbg !6003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #4 align 16 !dbg !6004 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6008, metadata !DIExpression()), !dbg !6010
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !6009, metadata !DIExpression()), !dbg !6011
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !6012
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !6012
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6012
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !6013
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6013
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !6013
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #18, !dbg !6014
  ret void, !dbg !6015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @vp_get_vq_affinity(ptr noundef %vdev, i32 noundef %index) #0 align 16 !dbg !6016 {
entry:
  %retval = alloca ptr, align 8
  %vdev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %vp_dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6018, metadata !DIExpression()), !dbg !6021
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6019, metadata !DIExpression()), !dbg !6022
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6020, metadata !DIExpression()), !dbg !6024
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !6025
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !6026
  store ptr %call, ptr %vp_dev, align 8, !dbg !6024
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !6027
  %per_vq_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 14, !dbg !6029
  %2 = load i8, ptr %per_vq_vectors, align 8, !dbg !6029, !range !5327, !noundef !558
  %tobool = trunc i8 %2 to i1, !dbg !6029
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6030

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !6031
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 7, !dbg !6032
  %4 = load ptr, ptr %vqs, align 8, !dbg !6032
  %5 = load i32, ptr %index.addr, align 4, !dbg !6033
  %idxprom = sext i32 %5 to i64, !dbg !6031
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !6031
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !6031
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %6, i32 0, i32 2, !dbg !6034
  %7 = load i32, ptr %msix_vector, align 8, !dbg !6034
  %cmp = icmp eq i32 %7, 65535, !dbg !6035
  br i1 %cmp, label %if.then, label %if.end, !dbg !6036

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !6037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6037

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %vp_dev, align 8, !dbg !6038
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %8, i32 0, i32 1, !dbg !6039
  %9 = load ptr, ptr %pci_dev, align 8, !dbg !6039
  %10 = load ptr, ptr %vp_dev, align 8, !dbg !6040
  %vqs1 = getelementptr inbounds %struct.virtio_pci_device, ptr %10, i32 0, i32 7, !dbg !6041
  %11 = load ptr, ptr %vqs1, align 8, !dbg !6041
  %12 = load i32, ptr %index.addr, align 4, !dbg !6042
  %idxprom2 = sext i32 %12 to i64, !dbg !6040
  %arrayidx3 = getelementptr ptr, ptr %11, i64 %idxprom2, !dbg !6040
  %13 = load ptr, ptr %arrayidx3, align 8, !dbg !6040
  %msix_vector4 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %13, i32 0, i32 2, !dbg !6043
  %14 = load i32, ptr %msix_vector4, align 8, !dbg !6043
  %call5 = call ptr @pci_irq_get_affinity(ptr noundef %9, i32 noundef %14) #18, !dbg !6044
  store ptr %call5, ptr %retval, align 8, !dbg !6045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6045

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !6046
  %15 = load ptr, ptr %retval, align 8, !dbg !6046
  ret ptr %15, !dbg !6046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6047 dso_local ptr @pci_irq_get_affinity(ptr noundef, i32 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_virtio_pci__324_647_virtio_pci_driver_init6() #5 section ".init.text" align 16 !dbg !6050 {
entry:
  %call = call i32 @virtio_pci_driver_init() #20, !dbg !6051
  ret i32 %call, !dbg !6051
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @virtio_pci_driver_init() #5 section ".init.text" align 16 !dbg !6052 {
entry:
  %call = call i32 @__pci_register_driver(ptr noundef @virtio_pci_driver, ptr noundef null, ptr noundef @.str.1) #18, !dbg !6053
  ret i32 %call, !dbg !6053
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @virtio_pci_driver_exit() #5 section ".exit.text" align 16 !dbg !6054 {
entry:
  call void @pci_unregister_driver(ptr noundef @virtio_pci_driver) #18, !dbg !6055
  ret void, !dbg !6055
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6056 dso_local void @pci_unregister_driver(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_set_affinity_and_hint(i32 noundef %irq, ptr noundef %m) #4 align 16 !dbg !6059 {
entry:
  %irq.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6061, metadata !DIExpression()), !dbg !6063
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6062, metadata !DIExpression()), !dbg !6064
  %0 = load i32, ptr %irq.addr, align 4, !dbg !6065
  %1 = load ptr, ptr %m.addr, align 8, !dbg !6066
  %call = call i32 @__irq_apply_affinity_hint(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true) #18, !dbg !6067
  ret i32 %call, !dbg !6068
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6069 dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6072 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !6077 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6082, metadata !DIExpression()), !dbg !6083
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6084
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6085
  ret ptr %1, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !6087 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6094
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6095
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6096
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6097
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6098
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6099
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6100
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6101
  ret void, !dbg !6102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !6103 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6107, metadata !DIExpression()), !dbg !6113
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6108, metadata !DIExpression()), !dbg !6114
  br label %do.body, !dbg !6115

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6116
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6109, metadata !DIExpression()), !dbg !6116
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6116
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6112, metadata !DIExpression()), !dbg !6116
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6116
  %conv = zext i1 %cmp to i32, !dbg !6116
  store i32 1, ptr %tmp, align 4, !dbg !6116
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6117
  %0 = load i32, ptr %tmp, align 4, !dbg !6116
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6117
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6117
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6117
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !6117
  br label %do.end, !dbg !6117

do.end:                                           ; preds = %do.body
  ret void, !dbg !6118
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6119 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6121, metadata !DIExpression()), !dbg !6122
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6123
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6125
  br i1 %call, label %if.end, label %if.then, !dbg !6126

if.then:                                          ; preds = %entry
  br label %return, !dbg !6127

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6128
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6129
  %2 = load ptr, ptr %prev, align 8, !dbg !6129
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6130
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6131
  %4 = load ptr, ptr %next, align 8, !dbg !6131
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6132
  br label %return, !dbg !6133

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6133
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6134 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6138, metadata !DIExpression()), !dbg !6139
  ret i1 true, !dbg !6140
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6141 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6145, metadata !DIExpression()), !dbg !6147
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6146, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6149
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6150
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6151
  store ptr %0, ptr %prev1, align 8, !dbg !6152
  br label %do.body, !dbg !6153

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6154

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6156

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6154

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6158
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6158
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6158
  store volatile ptr %2, ptr %next4, align 8, !dbg !6158
  br label %do.end5, !dbg !6158

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6154

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6160
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6161 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6164 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6168, metadata !DIExpression()), !dbg !6171
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6169, metadata !DIExpression()), !dbg !6172
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6170, metadata !DIExpression()), !dbg !6173
  %0 = load i64, ptr %n.addr, align 8, !dbg !6174
  %1 = load i64, ptr %size.addr, align 8, !dbg !6175
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6176
  %or = or i32 %2, 256, !dbg !6177
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !6178
  ret ptr %call, !dbg !6179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_request_msix_vectors(ptr noundef %vdev, i32 noundef %nvectors, i1 noundef zeroext %per_vq_vectors, ptr noundef %desc) #0 align 16 !dbg !6180 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %nvectors.addr = alloca i32, align 4
  %per_vq_vectors.addr = alloca i8, align 1
  %desc.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %name = alloca ptr, align 8
  %flags = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6184, metadata !DIExpression()), !dbg !6195
  store i32 %nvectors, ptr %nvectors.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvectors.addr, metadata !6185, metadata !DIExpression()), !dbg !6196
  %frombool = zext i1 %per_vq_vectors to i8
  store i8 %frombool, ptr %per_vq_vectors.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %per_vq_vectors.addr, metadata !6186, metadata !DIExpression()), !dbg !6197
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6187, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6188, metadata !DIExpression()), !dbg !6200
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !6201
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !6202
  store ptr %call, ptr %vp_dev, align 8, !dbg !6200
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #17, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6189, metadata !DIExpression()), !dbg !6204
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !6205
  %vdev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 0, !dbg !6206
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev1, i32 0, i32 6, !dbg !6207
  %call2 = call ptr @dev_name(ptr noundef %dev) #18, !dbg !6208
  store ptr %call2, ptr %name, align 8, !dbg !6204
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #17, !dbg !6209
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6190, metadata !DIExpression()), !dbg !6210
  store i32 4, ptr %flags, align 4, !dbg !6210
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6211
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6191, metadata !DIExpression()), !dbg !6212
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #17, !dbg !6211
  call void @llvm.dbg.declare(metadata ptr %v, metadata !6192, metadata !DIExpression()), !dbg !6213
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6193, metadata !DIExpression()), !dbg !6215
  store i32 -12, ptr %err, align 4, !dbg !6215
  %2 = load i32, ptr %nvectors.addr, align 4, !dbg !6216
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !6217
  %msix_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 12, !dbg !6218
  store i32 %2, ptr %msix_vectors, align 8, !dbg !6219
  %4 = load i32, ptr %nvectors.addr, align 4, !dbg !6220
  %conv = sext i32 %4 to i64, !dbg !6220
  %call3 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 256, i32 noundef 3264) #19, !dbg !6221
  %5 = load ptr, ptr %vp_dev, align 8, !dbg !6222
  %msix_names = getelementptr inbounds %struct.virtio_pci_device, ptr %5, i32 0, i32 11, !dbg !6223
  store ptr %call3, ptr %msix_names, align 8, !dbg !6224
  %6 = load ptr, ptr %vp_dev, align 8, !dbg !6225
  %msix_names4 = getelementptr inbounds %struct.virtio_pci_device, ptr %6, i32 0, i32 11, !dbg !6227
  %7 = load ptr, ptr %msix_names4, align 8, !dbg !6227
  %tobool = icmp ne ptr %7, null, !dbg !6225
  br i1 %tobool, label %if.end, label %if.then, !dbg !6228

if.then:                                          ; preds = %entry
  br label %error, !dbg !6229

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %nvectors.addr, align 4, !dbg !6230
  %conv5 = sext i32 %8 to i64, !dbg !6230
  %call6 = call noalias ptr @kcalloc(i64 noundef %conv5, i64 noundef 8, i32 noundef 3264) #19, !dbg !6231
  %9 = load ptr, ptr %vp_dev, align 8, !dbg !6232
  %msix_affinity_masks = getelementptr inbounds %struct.virtio_pci_device, ptr %9, i32 0, i32 10, !dbg !6233
  store ptr %call6, ptr %msix_affinity_masks, align 8, !dbg !6234
  %10 = load ptr, ptr %vp_dev, align 8, !dbg !6235
  %msix_affinity_masks7 = getelementptr inbounds %struct.virtio_pci_device, ptr %10, i32 0, i32 10, !dbg !6237
  %11 = load ptr, ptr %msix_affinity_masks7, align 8, !dbg !6237
  %tobool8 = icmp ne ptr %11, null, !dbg !6235
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6238

if.then9:                                         ; preds = %if.end
  br label %error, !dbg !6239

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !6240
  br label %for.cond, !dbg !6242

for.cond:                                         ; preds = %for.inc, %if.end10
  %12 = load i32, ptr %i, align 4, !dbg !6243
  %13 = load i32, ptr %nvectors.addr, align 4, !dbg !6245
  %cmp = icmp ult i32 %12, %13, !dbg !6246
  br i1 %cmp, label %for.body, label %for.end, !dbg !6247

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %vp_dev, align 8, !dbg !6248
  %msix_affinity_masks12 = getelementptr inbounds %struct.virtio_pci_device, ptr %14, i32 0, i32 10, !dbg !6250
  %15 = load ptr, ptr %msix_affinity_masks12, align 8, !dbg !6250
  %16 = load i32, ptr %i, align 4, !dbg !6251
  %idxprom = zext i32 %16 to i64, !dbg !6248
  %arrayidx = getelementptr [1 x %struct.cpumask], ptr %15, i64 %idxprom, !dbg !6248
  %call13 = call zeroext i1 @alloc_cpumask_var(ptr noundef %arrayidx, i32 noundef 3264) #18, !dbg !6252
  br i1 %call13, label %if.end15, label %if.then14, !dbg !6253

if.then14:                                        ; preds = %for.body
  br label %error, !dbg !6254

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !6255

for.inc:                                          ; preds = %if.end15
  %17 = load i32, ptr %i, align 4, !dbg !6256
  %inc = add i32 %17, 1, !dbg !6256
  store i32 %inc, ptr %i, align 4, !dbg !6256
  br label %for.cond, !dbg !6257, !llvm.loop !6258

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %desc.addr, align 8, !dbg !6260
  %tobool16 = icmp ne ptr %18, null, !dbg !6260
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !6262

if.then17:                                        ; preds = %for.end
  %19 = load i32, ptr %flags, align 4, !dbg !6263
  %or = or i32 %19, 8, !dbg !6263
  store i32 %or, ptr %flags, align 4, !dbg !6263
  %20 = load ptr, ptr %desc.addr, align 8, !dbg !6265
  %pre_vectors = getelementptr inbounds %struct.irq_affinity, ptr %20, i32 0, i32 0, !dbg !6266
  %21 = load i32, ptr %pre_vectors, align 8, !dbg !6267
  %inc18 = add i32 %21, 1, !dbg !6267
  store i32 %inc18, ptr %pre_vectors, align 8, !dbg !6267
  br label %if.end19, !dbg !6268

if.end19:                                         ; preds = %if.then17, %for.end
  %22 = load ptr, ptr %vp_dev, align 8, !dbg !6269
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %22, i32 0, i32 1, !dbg !6270
  %23 = load ptr, ptr %pci_dev, align 8, !dbg !6270
  %24 = load i32, ptr %nvectors.addr, align 4, !dbg !6271
  %25 = load i32, ptr %nvectors.addr, align 4, !dbg !6272
  %26 = load i32, ptr %flags, align 4, !dbg !6273
  %27 = load ptr, ptr %desc.addr, align 8, !dbg !6274
  %call20 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %27) #18, !dbg !6275
  store i32 %call20, ptr %err, align 4, !dbg !6276
  %28 = load i32, ptr %err, align 4, !dbg !6277
  %cmp21 = icmp slt i32 %28, 0, !dbg !6279
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !6280

if.then23:                                        ; preds = %if.end19
  br label %error, !dbg !6281

if.end24:                                         ; preds = %if.end19
  %29 = load ptr, ptr %vp_dev, align 8, !dbg !6282
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %29, i32 0, i32 8, !dbg !6283
  store i32 1, ptr %msix_enabled, align 8, !dbg !6284
  %30 = load ptr, ptr %vp_dev, align 8, !dbg !6285
  %msix_used_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %30, i32 0, i32 13, !dbg !6286
  %31 = load i32, ptr %msix_used_vectors, align 4, !dbg !6286
  store i32 %31, ptr %v, align 4, !dbg !6287
  %32 = load ptr, ptr %vp_dev, align 8, !dbg !6288
  %msix_names25 = getelementptr inbounds %struct.virtio_pci_device, ptr %32, i32 0, i32 11, !dbg !6289
  %33 = load ptr, ptr %msix_names25, align 8, !dbg !6289
  %34 = load i32, ptr %v, align 4, !dbg !6290
  %idxprom26 = zext i32 %34 to i64, !dbg !6288
  %arrayidx27 = getelementptr [256 x i8], ptr %33, i64 %idxprom26, !dbg !6288
  %arraydecay = getelementptr inbounds [256 x i8], ptr %arrayidx27, i64 0, i64 0, !dbg !6288
  %35 = load ptr, ptr %name, align 8, !dbg !6291
  %call28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.5, ptr noundef %35) #18, !dbg !6292
  %36 = load ptr, ptr %vp_dev, align 8, !dbg !6293
  %pci_dev29 = getelementptr inbounds %struct.virtio_pci_device, ptr %36, i32 0, i32 1, !dbg !6294
  %37 = load ptr, ptr %pci_dev29, align 8, !dbg !6294
  %38 = load i32, ptr %v, align 4, !dbg !6295
  %call30 = call i32 @pci_irq_vector(ptr noundef %37, i32 noundef %38) #18, !dbg !6296
  %39 = load ptr, ptr %vp_dev, align 8, !dbg !6297
  %msix_names31 = getelementptr inbounds %struct.virtio_pci_device, ptr %39, i32 0, i32 11, !dbg !6298
  %40 = load ptr, ptr %msix_names31, align 8, !dbg !6298
  %41 = load i32, ptr %v, align 4, !dbg !6299
  %idxprom32 = zext i32 %41 to i64, !dbg !6297
  %arrayidx33 = getelementptr [256 x i8], ptr %40, i64 %idxprom32, !dbg !6297
  %arraydecay34 = getelementptr inbounds [256 x i8], ptr %arrayidx33, i64 0, i64 0, !dbg !6297
  %42 = load ptr, ptr %vp_dev, align 8, !dbg !6300
  %call35 = call i32 @request_irq(i32 noundef %call30, ptr noundef @vp_config_changed, i64 noundef 0, ptr noundef %arraydecay34, ptr noundef %42) #18, !dbg !6301
  store i32 %call35, ptr %err, align 4, !dbg !6302
  %43 = load i32, ptr %err, align 4, !dbg !6303
  %tobool36 = icmp ne i32 %43, 0, !dbg !6303
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !6305

if.then37:                                        ; preds = %if.end24
  br label %error, !dbg !6306

if.end38:                                         ; preds = %if.end24
  %44 = load ptr, ptr %vp_dev, align 8, !dbg !6307
  %msix_used_vectors39 = getelementptr inbounds %struct.virtio_pci_device, ptr %44, i32 0, i32 13, !dbg !6308
  %45 = load i32, ptr %msix_used_vectors39, align 4, !dbg !6309
  %inc40 = add i32 %45, 1, !dbg !6309
  store i32 %inc40, ptr %msix_used_vectors39, align 4, !dbg !6309
  %46 = load ptr, ptr %vp_dev, align 8, !dbg !6310
  %config_vector = getelementptr inbounds %struct.virtio_pci_device, ptr %46, i32 0, i32 17, !dbg !6311
  %47 = load ptr, ptr %config_vector, align 8, !dbg !6311
  %48 = load ptr, ptr %vp_dev, align 8, !dbg !6312
  %49 = load i32, ptr %v, align 4, !dbg !6313
  %conv41 = trunc i32 %49 to i16, !dbg !6313
  %call42 = call zeroext i16 %47(ptr noundef %48, i16 noundef zeroext %conv41) #18, !dbg !6310
  %conv43 = zext i16 %call42 to i32, !dbg !6310
  store i32 %conv43, ptr %v, align 4, !dbg !6314
  %50 = load i32, ptr %v, align 4, !dbg !6315
  %cmp44 = icmp eq i32 %50, 65535, !dbg !6317
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !6318

if.then46:                                        ; preds = %if.end38
  store i32 -16, ptr %err, align 4, !dbg !6319
  br label %error, !dbg !6321

if.end47:                                         ; preds = %if.end38
  %51 = load i8, ptr %per_vq_vectors.addr, align 1, !dbg !6322, !range !5327, !noundef !558
  %tobool48 = trunc i8 %51 to i1, !dbg !6322
  br i1 %tobool48, label %if.end68, label %if.then49, !dbg !6324

if.then49:                                        ; preds = %if.end47
  %52 = load ptr, ptr %vp_dev, align 8, !dbg !6325
  %msix_used_vectors50 = getelementptr inbounds %struct.virtio_pci_device, ptr %52, i32 0, i32 13, !dbg !6327
  %53 = load i32, ptr %msix_used_vectors50, align 4, !dbg !6327
  store i32 %53, ptr %v, align 4, !dbg !6328
  %54 = load ptr, ptr %vp_dev, align 8, !dbg !6329
  %msix_names51 = getelementptr inbounds %struct.virtio_pci_device, ptr %54, i32 0, i32 11, !dbg !6330
  %55 = load ptr, ptr %msix_names51, align 8, !dbg !6330
  %56 = load i32, ptr %v, align 4, !dbg !6331
  %idxprom52 = zext i32 %56 to i64, !dbg !6329
  %arrayidx53 = getelementptr [256 x i8], ptr %55, i64 %idxprom52, !dbg !6329
  %arraydecay54 = getelementptr inbounds [256 x i8], ptr %arrayidx53, i64 0, i64 0, !dbg !6329
  %57 = load ptr, ptr %name, align 8, !dbg !6332
  %call55 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay54, i64 noundef 256, ptr noundef @.str.6, ptr noundef %57) #18, !dbg !6333
  %58 = load ptr, ptr %vp_dev, align 8, !dbg !6334
  %pci_dev56 = getelementptr inbounds %struct.virtio_pci_device, ptr %58, i32 0, i32 1, !dbg !6335
  %59 = load ptr, ptr %pci_dev56, align 8, !dbg !6335
  %60 = load i32, ptr %v, align 4, !dbg !6336
  %call57 = call i32 @pci_irq_vector(ptr noundef %59, i32 noundef %60) #18, !dbg !6337
  %61 = load ptr, ptr %vp_dev, align 8, !dbg !6338
  %msix_names58 = getelementptr inbounds %struct.virtio_pci_device, ptr %61, i32 0, i32 11, !dbg !6339
  %62 = load ptr, ptr %msix_names58, align 8, !dbg !6339
  %63 = load i32, ptr %v, align 4, !dbg !6340
  %idxprom59 = zext i32 %63 to i64, !dbg !6338
  %arrayidx60 = getelementptr [256 x i8], ptr %62, i64 %idxprom59, !dbg !6338
  %arraydecay61 = getelementptr inbounds [256 x i8], ptr %arrayidx60, i64 0, i64 0, !dbg !6338
  %64 = load ptr, ptr %vp_dev, align 8, !dbg !6341
  %call62 = call i32 @request_irq(i32 noundef %call57, ptr noundef @vp_vring_interrupt, i64 noundef 0, ptr noundef %arraydecay61, ptr noundef %64) #18, !dbg !6342
  store i32 %call62, ptr %err, align 4, !dbg !6343
  %65 = load i32, ptr %err, align 4, !dbg !6344
  %tobool63 = icmp ne i32 %65, 0, !dbg !6344
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !6346

if.then64:                                        ; preds = %if.then49
  br label %error, !dbg !6347

if.end65:                                         ; preds = %if.then49
  %66 = load ptr, ptr %vp_dev, align 8, !dbg !6348
  %msix_used_vectors66 = getelementptr inbounds %struct.virtio_pci_device, ptr %66, i32 0, i32 13, !dbg !6349
  %67 = load i32, ptr %msix_used_vectors66, align 4, !dbg !6350
  %inc67 = add i32 %67, 1, !dbg !6350
  store i32 %inc67, ptr %msix_used_vectors66, align 4, !dbg !6350
  br label %if.end68, !dbg !6351

if.end68:                                         ; preds = %if.end65, %if.end47
  store i32 0, ptr %retval, align 4, !dbg !6352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6352

error:                                            ; preds = %if.then64, %if.then46, %if.then37, %if.then23, %if.then14, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !6194), !dbg !6353
  %68 = load i32, ptr %err, align 4, !dbg !6354
  store i32 %68, ptr %retval, align 4, !dbg !6355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6355

cleanup:                                          ; preds = %error, %if.end68
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #17, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #17, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #17, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !6356
  %69 = load i32, ptr %retval, align 4, !dbg !6356
  ret i32 %69, !dbg !6356
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vp_setup_vq(ptr noundef %vdev, i32 noundef %index, ptr noundef %callback, ptr noundef %name, i1 noundef zeroext %ctx, i16 noundef zeroext %msix_vec) #0 align 16 !dbg !6357 {
entry:
  %retval = alloca ptr, align 8
  %vdev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %callback.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ctx.addr = alloca i8, align 1
  %msix_vec.addr = alloca i16, align 2
  %vp_dev = alloca ptr, align 8
  %info = alloca ptr, align 8
  %vq = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6361, metadata !DIExpression()), !dbg !6379
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6362, metadata !DIExpression()), !dbg !6380
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !6363, metadata !DIExpression()), !dbg !6381
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6364, metadata !DIExpression()), !dbg !6382
  %frombool = zext i1 %ctx to i8
  store i8 %frombool, ptr %ctx.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6365, metadata !DIExpression()), !dbg !6383
  store i16 %msix_vec, ptr %msix_vec.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %msix_vec.addr, metadata !6366, metadata !DIExpression()), !dbg !6384
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6367, metadata !DIExpression()), !dbg !6386
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !6387
  %call = call ptr @to_vp_device(ptr noundef %0) #18, !dbg !6388
  store ptr %call, ptr %vp_dev, align 8, !dbg !6386
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6368, metadata !DIExpression()), !dbg !6390
  %call1 = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef 3264) #21, !dbg !6391
  store ptr %call1, ptr %info, align 8, !dbg !6390
  call void @llvm.lifetime.start.p0(i64 8, ptr %vq) #17, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %vq, metadata !6369, metadata !DIExpression()), !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6370, metadata !DIExpression()), !dbg !6395
  %1 = load ptr, ptr %info, align 8, !dbg !6396
  %tobool = icmp ne ptr %1, null, !dbg !6396
  br i1 %tobool, label %if.end, label %if.then, !dbg !6398

if.then:                                          ; preds = %entry
  %call2 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !6399
  store ptr %call2, ptr %retval, align 8, !dbg !6400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6400

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !6401
  %setup_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 15, !dbg !6402
  %3 = load ptr, ptr %setup_vq, align 8, !dbg !6402
  %4 = load ptr, ptr %vp_dev, align 8, !dbg !6403
  %5 = load ptr, ptr %info, align 8, !dbg !6404
  %6 = load i32, ptr %index.addr, align 4, !dbg !6405
  %7 = load ptr, ptr %callback.addr, align 8, !dbg !6406
  %8 = load ptr, ptr %name.addr, align 8, !dbg !6407
  %9 = load i8, ptr %ctx.addr, align 1, !dbg !6408, !range !5327, !noundef !558
  %tobool3 = trunc i8 %9 to i1, !dbg !6408
  %10 = load i16, ptr %msix_vec.addr, align 2, !dbg !6409
  %call4 = call ptr %3(ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %tobool3, i16 noundef zeroext %10) #18, !dbg !6401
  store ptr %call4, ptr %vq, align 8, !dbg !6410
  %11 = load ptr, ptr %vq, align 8, !dbg !6411
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %11) #18, !dbg !6413
  br i1 %call5, label %if.then6, label %if.end7, !dbg !6414

if.then6:                                         ; preds = %if.end
  br label %out_info, !dbg !6415

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %vq, align 8, !dbg !6416
  %13 = load ptr, ptr %info, align 8, !dbg !6417
  %vq8 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %13, i32 0, i32 0, !dbg !6418
  store ptr %12, ptr %vq8, align 8, !dbg !6419
  %14 = load ptr, ptr %callback.addr, align 8, !dbg !6420
  %tobool9 = icmp ne ptr %14, null, !dbg !6420
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !6421

if.then10:                                        ; preds = %if.end7
  br label %do.body, !dbg !6422

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !6423

do.body11:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6371, metadata !DIExpression()), !dbg !6424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6377, metadata !DIExpression()), !dbg !6424
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6424
  %conv = zext i1 %cmp to i32, !dbg !6424
  store i32 1, ptr %tmp, align 4, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6425
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6425
  %15 = load i32, ptr %tmp, align 4, !dbg !6424
  %16 = load ptr, ptr %vp_dev, align 8, !dbg !6425
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %16, i32 0, i32 5, !dbg !6425
  %call12 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6425
  %call13 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call12) #18, !dbg !6425
  store i64 %call13, ptr %flags, align 8, !dbg !6425
  br label %do.cond, !dbg !6425

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !6425

do.end:                                           ; preds = %do.cond
  br label %do.cond14, !dbg !6423

do.cond14:                                        ; preds = %do.end
  br label %do.end15, !dbg !6423

do.end15:                                         ; preds = %do.cond14
  %17 = load ptr, ptr %info, align 8, !dbg !6426
  %node = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %17, i32 0, i32 1, !dbg !6427
  %18 = load ptr, ptr %vp_dev, align 8, !dbg !6428
  %virtqueues = getelementptr inbounds %struct.virtio_pci_device, ptr %18, i32 0, i32 6, !dbg !6429
  call void @list_add(ptr noundef %node, ptr noundef %virtqueues) #18, !dbg !6430
  %19 = load ptr, ptr %vp_dev, align 8, !dbg !6431
  %lock16 = getelementptr inbounds %struct.virtio_pci_device, ptr %19, i32 0, i32 5, !dbg !6432
  %20 = load i64, ptr %flags, align 8, !dbg !6433
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %20) #18, !dbg !6434
  br label %if.end18, !dbg !6435

if.else:                                          ; preds = %if.end7
  %21 = load ptr, ptr %info, align 8, !dbg !6436
  %node17 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %21, i32 0, i32 1, !dbg !6438
  call void @INIT_LIST_HEAD(ptr noundef %node17) #18, !dbg !6439
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end15
  %22 = load ptr, ptr %info, align 8, !dbg !6440
  %23 = load ptr, ptr %vp_dev, align 8, !dbg !6441
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %23, i32 0, i32 7, !dbg !6442
  %24 = load ptr, ptr %vqs, align 8, !dbg !6442
  %25 = load i32, ptr %index.addr, align 4, !dbg !6443
  %idxprom = zext i32 %25 to i64, !dbg !6441
  %arrayidx = getelementptr ptr, ptr %24, i64 %idxprom, !dbg !6441
  store ptr %22, ptr %arrayidx, align 8, !dbg !6444
  %26 = load ptr, ptr %vq, align 8, !dbg !6445
  store ptr %26, ptr %retval, align 8, !dbg !6446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6446

out_info:                                         ; preds = %if.then6
  call void @llvm.dbg.label(metadata !6378), !dbg !6447
  %27 = load ptr, ptr %info, align 8, !dbg !6448
  call void @kfree(ptr noundef %27) #18, !dbg !6449
  %28 = load ptr, ptr %vq, align 8, !dbg !6450
  store ptr %28, ptr %retval, align 8, !dbg !6451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6451

cleanup:                                          ; preds = %out_info, %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %vq) #17, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !6452
  %29 = load ptr, ptr %retval, align 8, !dbg !6452
  ret ptr %29, !dbg !6452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6453 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6458, metadata !DIExpression()), !dbg !6459
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6460
  %1 = ptrtoint ptr %0 to i64, !dbg !6460
  %2 = inttoptr i64 %1 to ptr, !dbg !6460
  %3 = ptrtoint ptr %2 to i64, !dbg !6460
  %cmp = icmp uge i64 %3, -4095, !dbg !6460
  %lnot = xor i1 %cmp, true, !dbg !6460
  %lnot1 = xor i1 %lnot, true, !dbg !6460
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6460
  %conv = sext i32 %lnot.ext to i64, !dbg !6460
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6460
  %tobool = icmp ne i64 %expval, 0, !dbg !6460
  ret i1 %tobool, !dbg !6461
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !6462 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6468
  %1 = ptrtoint ptr %0 to i64, !dbg !6469
  ret i64 %1, !dbg !6470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6471 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !6475 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6479, metadata !DIExpression()), !dbg !6480
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6481
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6483
  %1 = load ptr, ptr %init_name, align 8, !dbg !6483
  %tobool = icmp ne ptr %1, null, !dbg !6481
  br i1 %tobool, label %if.then, label %if.end, !dbg !6484

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6485
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6486
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6486
  store ptr %3, ptr %retval, align 8, !dbg !6487
  br label %return, !dbg !6487

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6488
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6489
  %call = call ptr @kobject_name(ptr noundef %kobj) #18, !dbg !6490
  store ptr %call, ptr %retval, align 8, !dbg !6491
  br label %return, !dbg !6491

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6492
  ret ptr %5, !dbg !6492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @request_irq(i32 noundef %irq, ptr noundef %handler, i64 noundef %flags, ptr noundef %name, ptr noundef %dev) #4 align 16 !dbg !6493 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6502, metadata !DIExpression()), !dbg !6507
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !6503, metadata !DIExpression()), !dbg !6508
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6504, metadata !DIExpression()), !dbg !6509
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6505, metadata !DIExpression()), !dbg !6510
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6506, metadata !DIExpression()), !dbg !6511
  %0 = load i32, ptr %irq.addr, align 4, !dbg !6512
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !6513
  %2 = load i64, ptr %flags.addr, align 8, !dbg !6514
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6515
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6516
  %call = call i32 @request_threaded_irq(i32 noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %2, ptr noundef %3, ptr noundef %4) #18, !dbg !6517
  ret i32 %call, !dbg !6518
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6519 dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6521 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6523, metadata !DIExpression()), !dbg !6527
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6524, metadata !DIExpression()), !dbg !6528
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6525, metadata !DIExpression()), !dbg !6529
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !6530
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6526, metadata !DIExpression()), !dbg !6531
  %0 = load i64, ptr %n.addr, align 8, !dbg !6532
  %1 = load i64, ptr %size.addr, align 8, !dbg !6532
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6532
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6532
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6532
  store i64 %4, ptr %bytes, align 8, !dbg !6532
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6532
  %lnot = xor i1 %call, true, !dbg !6532
  %lnot1 = xor i1 %lnot, true, !dbg !6532
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6532
  %conv = sext i32 %lnot.ext to i64, !dbg !6532
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6532
  %tobool = icmp ne i64 %expval, 0, !dbg !6532
  br i1 %tobool, label %if.then, label %if.end, !dbg !6534

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6535

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6536
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6538
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6539

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6540
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6541
  br i1 %8, label %if.then2, label %if.end4, !dbg !6542

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6543
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6544
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #21, !dbg !6545
  store ptr %call3, ptr %retval, align 8, !dbg !6546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6546

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6547
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6548
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #21, !dbg !6549
  store ptr %call5, ptr %retval, align 8, !dbg !6550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6550

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !6551
  %13 = load ptr, ptr %retval, align 8, !dbg !6551
  ret ptr %13, !dbg !6551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6552 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6557, metadata !DIExpression()), !dbg !6558
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6559, !range !5327, !noundef !558
  %tobool = trunc i8 %0 to i1, !dbg !6559
  %lnot = xor i1 %tobool, true, !dbg !6559
  %lnot1 = xor i1 %lnot, true, !dbg !6559
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6559
  %conv = sext i32 %lnot.ext to i64, !dbg !6559
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6559
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6559
  ret i1 %tobool2, !dbg !6560
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6561 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6565, metadata !DIExpression()), !dbg !6570
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6566, metadata !DIExpression()), !dbg !6571
  %0 = load i64, ptr %size.addr, align 8, !dbg !6572
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6573
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6574

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6575
  %tobool = icmp ne i64 %2, 0, !dbg !6575
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6576

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6567, metadata !DIExpression()), !dbg !6578
  %3 = load i64, ptr %size.addr, align 8, !dbg !6579
  %cmp = icmp ugt i64 %3, 8192, !dbg !6581
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6582

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6583
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6584
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !6585
  store ptr %call, ptr %retval, align 8, !dbg !6586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6586

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6587
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6587
  store i32 %call2, ptr %index, align 4, !dbg !6588
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6589
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6590
  %9 = ptrtoint ptr %8 to i64, !dbg !6590
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6591
  %idxprom = zext i32 %call3 to i64, !dbg !6592
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6592
  %10 = load i32, ptr %index, align 4, !dbg !6593
  %idxprom4 = zext i32 %10 to i64, !dbg !6592
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6592
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6592
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6594
  %13 = load i64, ptr %size.addr, align 8, !dbg !6595
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6596
  store ptr %call6, ptr %retval, align 8, !dbg !6597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6597

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6598
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6599
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6600
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !6601
  store ptr %call8, ptr %retval, align 8, !dbg !6602
  br label %return, !dbg !6602

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6603
  ret ptr %16, !dbg !6603
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6604 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6605 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !6606 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6610, metadata !DIExpression()), !dbg !6612
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6611, metadata !DIExpression()), !dbg !6613
  %0 = load i64, ptr %size.addr, align 8, !dbg !6614
  %tobool = icmp ne i64 %0, 0, !dbg !6614
  br i1 %tobool, label %if.end, label %if.then, !dbg !6616

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6617
  br label %return, !dbg !6617

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6618
  %cmp = icmp ule i64 %1, 8, !dbg !6620
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6621

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6622
  br label %return, !dbg !6622

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6623
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6625
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6626

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6627
  %cmp4 = icmp ule i64 %3, 96, !dbg !6628
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6629

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6630
  br label %return, !dbg !6630

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6631
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6633
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6634

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6635
  %cmp9 = icmp ule i64 %5, 192, !dbg !6636
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6637

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6638
  br label %return, !dbg !6638

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6639
  %cmp12 = icmp ule i64 %6, 8, !dbg !6641
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6642

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6643
  br label %return, !dbg !6643

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6644
  %cmp15 = icmp ule i64 %7, 16, !dbg !6646
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6647

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6648
  br label %return, !dbg !6648

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6649
  %cmp18 = icmp ule i64 %8, 32, !dbg !6651
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6652

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6653
  br label %return, !dbg !6653

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6654
  %cmp21 = icmp ule i64 %9, 64, !dbg !6656
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6657

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6658
  br label %return, !dbg !6658

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6659
  %cmp24 = icmp ule i64 %10, 128, !dbg !6661
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6662

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6663
  br label %return, !dbg !6663

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6664
  %cmp27 = icmp ule i64 %11, 256, !dbg !6666
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6667

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6668
  br label %return, !dbg !6668

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6669
  %cmp30 = icmp ule i64 %12, 512, !dbg !6671
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6672

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6673
  br label %return, !dbg !6673

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6674
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6676
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6677

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6678
  br label %return, !dbg !6678

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6679
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6681
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6682

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6683
  br label %return, !dbg !6683

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6684
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6686
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6687

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6688
  br label %return, !dbg !6688

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6689
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6691
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6692

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6693
  br label %return, !dbg !6693

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6694
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6696
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6697

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6698
  br label %return, !dbg !6698

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6699
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6701
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6702

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6703
  br label %return, !dbg !6703

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6704
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6706
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6707

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6708
  br label %return, !dbg !6708

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6709
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6711
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6712

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6713
  br label %return, !dbg !6713

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6714
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6716
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6717

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6718
  br label %return, !dbg !6718

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6719
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6721
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6722

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6723
  br label %return, !dbg !6723

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6724
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6726
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6727

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6728
  br label %return, !dbg !6728

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6729
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6731
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6732

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6733
  br label %return, !dbg !6733

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6734, !range !5327, !noundef !558
  %tobool69 = trunc i8 %25 to i1, !dbg !6734
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6736

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6737

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #23, !dbg !6738, !srcloc !6741
  unreachable, !dbg !6738

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6742

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6743

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6744

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6746

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6744

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #17, !dbg !6748, !srcloc !6750
  br label %do.end75, !dbg !6748

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6744

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6751
  br label %return, !dbg !6751

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6752
  ret i32 %26, !dbg !6752
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6753 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !6759 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6763, metadata !DIExpression()), !dbg !6765
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6764, metadata !DIExpression()), !dbg !6766
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6767
  %and = and i32 %0, 17, !dbg !6767
  %cmp = icmp eq i32 %and, 0, !dbg !6767
  %lnot = xor i1 %cmp, true, !dbg !6767
  %lnot1 = xor i1 %lnot, true, !dbg !6767
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6767
  %conv = sext i32 %lnot.ext to i64, !dbg !6767
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6767
  %tobool = icmp ne i64 %expval, 0, !dbg !6767
  br i1 %tobool, label %if.then, label %if.end, !dbg !6769

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6770
  br label %return, !dbg !6770

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6771
  %and2 = and i32 %1, 1, !dbg !6773
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6773
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6774

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6775
  br label %return, !dbg !6775

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6776
  br label %return, !dbg !6776

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6778
  ret i32 %2, !dbg !6778
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6779 dso_local void @__compiletime_assert_204() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !6780 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6784, metadata !DIExpression()), !dbg !6786
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6785, metadata !DIExpression()), !dbg !6787
  ret i1 true, !dbg !6788
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6789 dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_config_changed(i32 noundef %irq, ptr noundef %opaque) #0 align 16 !dbg !6792 {
entry:
  %irq.addr = alloca i32, align 4
  %opaque.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6794, metadata !DIExpression()), !dbg !6797
  store ptr %opaque, ptr %opaque.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opaque.addr, metadata !6795, metadata !DIExpression()), !dbg !6798
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6796, metadata !DIExpression()), !dbg !6800
  %0 = load ptr, ptr %opaque.addr, align 8, !dbg !6801
  store ptr %0, ptr %vp_dev, align 8, !dbg !6800
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !6802
  %vdev = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 0, !dbg !6803
  call void @virtio_config_changed(ptr noundef %vdev) #18, !dbg !6804
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !6805
  ret i32 1, !dbg !6806
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_vring_interrupt(i32 noundef %irq, ptr noundef %opaque) #0 align 16 !dbg !6807 {
entry:
  %irq.addr = alloca i32, align 4
  %opaque.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %info = alloca ptr, align 8
  %ret = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6809, metadata !DIExpression()), !dbg !6826
  store ptr %opaque, ptr %opaque.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opaque.addr, metadata !6810, metadata !DIExpression()), !dbg !6827
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !6828
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6811, metadata !DIExpression()), !dbg !6829
  %0 = load ptr, ptr %opaque.addr, align 8, !dbg !6830
  store ptr %0, ptr %vp_dev, align 8, !dbg !6829
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !6831
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6812, metadata !DIExpression()), !dbg !6832
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6833
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6813, metadata !DIExpression()), !dbg !6834
  store i32 0, ptr %ret, align 4, !dbg !6834
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6835
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6814, metadata !DIExpression()), !dbg !6836
  br label %do.body, !dbg !6837

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6838

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6839
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6815, metadata !DIExpression()), !dbg !6839
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6839
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6819, metadata !DIExpression()), !dbg !6839
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6839
  %conv = zext i1 %cmp to i32, !dbg !6839
  store i32 1, ptr %tmp, align 4, !dbg !6839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6840
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6840
  %1 = load i32, ptr %tmp, align 4, !dbg !6839
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !6840
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 5, !dbg !6840
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6840
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !6840
  store i64 %call2, ptr %flags, align 8, !dbg !6840
  br label %do.cond, !dbg !6840

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6840

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6838

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6838

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6841
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6820, metadata !DIExpression()), !dbg !6841
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !6841
  %virtqueues = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 6, !dbg !6841
  %next = getelementptr inbounds %struct.list_head, ptr %virtqueues, i32 0, i32 0, !dbg !6841
  %4 = load ptr, ptr %next, align 8, !dbg !6841
  store ptr %4, ptr %__mptr, align 8, !dbg !6841
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6841
  %add.ptr = getelementptr i8, ptr %5, i64 -8, !dbg !6841
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !6841
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6842
  %6 = load ptr, ptr %tmp5, align 8, !dbg !6841
  store ptr %6, ptr %info, align 8, !dbg !6842
  br label %for.cond, !dbg !6842

for.cond:                                         ; preds = %for.inc, %do.end4
  %7 = load ptr, ptr %info, align 8, !dbg !6843
  %node = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %7, i32 0, i32 1, !dbg !6843
  %8 = load ptr, ptr %vp_dev, align 8, !dbg !6843
  %virtqueues6 = getelementptr inbounds %struct.virtio_pci_device, ptr %8, i32 0, i32 6, !dbg !6843
  %cmp7 = icmp eq ptr %node, %virtqueues6, !dbg !6843
  %lnot = xor i1 %cmp7, true, !dbg !6843
  br i1 %lnot, label %for.body, label %for.end, !dbg !6842

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %irq.addr, align 4, !dbg !6844
  %10 = load ptr, ptr %info, align 8, !dbg !6847
  %vq = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %10, i32 0, i32 0, !dbg !6848
  %11 = load ptr, ptr %vq, align 8, !dbg !6848
  %call9 = call i32 @vring_interrupt(i32 noundef %9, ptr noundef %11) #18, !dbg !6849
  %cmp10 = icmp eq i32 %call9, 1, !dbg !6850
  br i1 %cmp10, label %if.then, label %if.end, !dbg !6851

if.then:                                          ; preds = %for.body
  store i32 1, ptr %ret, align 4, !dbg !6852
  br label %if.end, !dbg !6853

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6854

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #17, !dbg !6855
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !6823, metadata !DIExpression()), !dbg !6855
  %12 = load ptr, ptr %info, align 8, !dbg !6855
  %node13 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %12, i32 0, i32 1, !dbg !6855
  %next14 = getelementptr inbounds %struct.list_head, ptr %node13, i32 0, i32 0, !dbg !6855
  %13 = load ptr, ptr %next14, align 8, !dbg !6855
  store ptr %13, ptr %__mptr12, align 8, !dbg !6855
  %14 = load ptr, ptr %__mptr12, align 8, !dbg !6855
  %add.ptr16 = getelementptr i8, ptr %14, i64 -8, !dbg !6855
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !6855
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #17, !dbg !6843
  %15 = load ptr, ptr %tmp15, align 8, !dbg !6855
  store ptr %15, ptr %info, align 8, !dbg !6843
  br label %for.cond, !dbg !6843, !llvm.loop !6856

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %vp_dev, align 8, !dbg !6858
  %lock17 = getelementptr inbounds %struct.virtio_pci_device, ptr %16, i32 0, i32 5, !dbg !6859
  %17 = load i64, ptr %flags, align 8, !dbg !6860
  call void @spin_unlock_irqrestore(ptr noundef %lock17, i64 noundef %17) #18, !dbg !6861
  %18 = load i32, ptr %ret, align 4, !dbg !6862
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6863
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6863
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !6863
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !6863
  ret i32 %18, !dbg !6864
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6865 dso_local void @virtio_config_changed(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6866 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6870, metadata !DIExpression()), !dbg !6871
  %0 = load i64, ptr %error.addr, align 8, !dbg !6872
  %1 = inttoptr i64 %0 to ptr, !dbg !6873
  ret ptr %1, !dbg !6874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6875 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6877, metadata !DIExpression()), !dbg !6879
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6878, metadata !DIExpression()), !dbg !6880
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6881
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6882
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6883
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6884
  %3 = load ptr, ptr %next, align 8, !dbg !6884
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !6885
  ret void, !dbg !6886
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !6887 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6889, metadata !DIExpression()), !dbg !6890
  br label %do.body, !dbg !6891

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6892

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6894

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6892

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6896
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6896
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6896
  store volatile ptr %0, ptr %next, align 8, !dbg !6896
  br label %do.end3, !dbg !6896

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6892

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6898

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6899

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6901

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6899

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6903
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6903
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6903
  store volatile ptr %2, ptr %prev, align 8, !dbg !6903
  br label %do.end9, !dbg !6903

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6899

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6906 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6910, metadata !DIExpression()), !dbg !6913
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6911, metadata !DIExpression()), !dbg !6914
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6912, metadata !DIExpression()), !dbg !6915
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6916
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6918
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6919
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !6920
  br i1 %call, label %if.end, label %if.then, !dbg !6921

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6922

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6923
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6924
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6925
  store ptr %3, ptr %prev1, align 8, !dbg !6926
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6927
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6928
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6929
  store ptr %5, ptr %next2, align 8, !dbg !6930
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6931
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6932
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6933
  store ptr %7, ptr %prev3, align 8, !dbg !6934
  br label %do.body, !dbg !6935

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6936

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6938

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6936

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6940
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6940
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6940
  store volatile ptr %9, ptr %next6, align 8, !dbg !6940
  br label %do.end7, !dbg !6940

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6936

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6942
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6943 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6947, metadata !DIExpression()), !dbg !6950
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6948, metadata !DIExpression()), !dbg !6951
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6949, metadata !DIExpression()), !dbg !6952
  ret i1 true, !dbg !6953
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !6954 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6956, metadata !DIExpression()), !dbg !6957
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6958
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6959
  %1 = load ptr, ptr %name, align 8, !dbg !6959
  ret ptr %1, !dbg !6960
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6961 dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_interrupt(i32 noundef %irq, ptr noundef %opaque) #0 align 16 !dbg !6964 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %opaque.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %isr = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6966, metadata !DIExpression()), !dbg !6970
  store ptr %opaque, ptr %opaque.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opaque.addr, metadata !6967, metadata !DIExpression()), !dbg !6971
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6968, metadata !DIExpression()), !dbg !6973
  %0 = load ptr, ptr %opaque.addr, align 8, !dbg !6974
  store ptr %0, ptr %vp_dev, align 8, !dbg !6973
  call void @llvm.lifetime.start.p0(i64 1, ptr %isr) #17, !dbg !6975
  call void @llvm.dbg.declare(metadata ptr %isr, metadata !6969, metadata !DIExpression()), !dbg !6976
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !6977
  %isr1 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 4, !dbg !6978
  %2 = load ptr, ptr %isr1, align 8, !dbg !6978
  %call = call i32 @ioread8(ptr noundef %2) #18, !dbg !6979
  %conv = trunc i32 %call to i8, !dbg !6979
  store i8 %conv, ptr %isr, align 1, !dbg !6980
  %3 = load i8, ptr %isr, align 1, !dbg !6981
  %tobool = icmp ne i8 %3, 0, !dbg !6981
  br i1 %tobool, label %if.end, label %if.then, !dbg !6983

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6984

if.end:                                           ; preds = %entry
  %4 = load i8, ptr %isr, align 1, !dbg !6985
  %conv2 = zext i8 %4 to i32, !dbg !6985
  %and = and i32 %conv2, 2, !dbg !6987
  %tobool3 = icmp ne i32 %and, 0, !dbg !6987
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6988

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %irq.addr, align 4, !dbg !6989
  %6 = load ptr, ptr %opaque.addr, align 8, !dbg !6990
  %call5 = call i32 @vp_config_changed(i32 noundef %5, ptr noundef %6) #18, !dbg !6991
  br label %if.end6, !dbg !6991

if.end6:                                          ; preds = %if.then4, %if.end
  %7 = load i32, ptr %irq.addr, align 4, !dbg !6992
  %8 = load ptr, ptr %opaque.addr, align 8, !dbg !6993
  %call7 = call i32 @vp_vring_interrupt(i32 noundef %7, ptr noundef %8) #18, !dbg !6994
  store i32 %call7, ptr %retval, align 4, !dbg !6995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6995

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %isr) #17, !dbg !6996
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !6996
  %9 = load i32, ptr %retval, align 4, !dbg !6996
  ret i32 %9, !dbg !6996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6997 dso_local i32 @ioread8(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !7000 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7006, metadata !DIExpression()), !dbg !7010
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !7007, metadata !DIExpression()), !dbg !7011
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !7008, metadata !DIExpression()), !dbg !7012
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !7013
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7009, metadata !DIExpression()), !dbg !7014
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !7015
  %add = add i32 %0, 63, !dbg !7015
  %and = and i32 %add, -64, !dbg !7015
  %div = udiv i32 %and, 8, !dbg !7015
  store i32 %div, ptr %len, align 4, !dbg !7014
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !7016
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !7016
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !7016

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !7016
  %cmp = icmp ule i32 %3, 64, !dbg !7016
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !7016

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !7016
  %cmp2 = icmp ugt i32 %4, 0, !dbg !7016
  br i1 %cmp2, label %if.then, label %if.else, !dbg !7018

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !7019
  %6 = load i64, ptr %5, align 8, !dbg !7020
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !7021
  store i64 %6, ptr %7, align 8, !dbg !7022
  br label %if.end, !dbg !7023

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !7024
  %9 = load ptr, ptr %src.addr, align 8, !dbg !7025
  %10 = load i32, ptr %len, align 4, !dbg !7026
  %conv = zext i32 %10 to i64, !dbg !7026
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !7027
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !7028
  ret void, !dbg !7028
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7029 dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_pci_probe(ptr noundef %pci_dev, ptr noundef %id) #0 align 16 !dbg !7032 {
entry:
  %retval = alloca i32, align 4
  %pci_dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %reg_dev = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %pci_dev, ptr %pci_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_dev.addr, metadata !7034, metadata !DIExpression()), !dbg !7042
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !7035, metadata !DIExpression()), !dbg !7043
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !7044
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !7036, metadata !DIExpression()), !dbg !7045
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg_dev) #17, !dbg !7044
  call void @llvm.dbg.declare(metadata ptr %reg_dev, metadata !7037, metadata !DIExpression()), !dbg !7046
  store ptr null, ptr %reg_dev, align 8, !dbg !7046
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !7047
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !7038, metadata !DIExpression()), !dbg !7048
  %call = call noalias ptr @kzalloc(i64 noundef 1024, i32 noundef 3264) #21, !dbg !7049
  store ptr %call, ptr %vp_dev, align 8, !dbg !7050
  %0 = load ptr, ptr %vp_dev, align 8, !dbg !7051
  %tobool = icmp ne ptr %0, null, !dbg !7051
  br i1 %tobool, label %if.end, label %if.then, !dbg !7053

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !7054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7054

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7055
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !7056
  call void @pci_set_drvdata(ptr noundef %1, ptr noundef %2) #18, !dbg !7057
  %3 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7058
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !7059
  %4 = load ptr, ptr %vp_dev, align 8, !dbg !7060
  %vdev = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 0, !dbg !7061
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, !dbg !7062
  %parent = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 1, !dbg !7063
  store ptr %dev, ptr %parent, align 8, !dbg !7064
  %5 = load ptr, ptr %vp_dev, align 8, !dbg !7065
  %vdev2 = getelementptr inbounds %struct.virtio_pci_device, ptr %5, i32 0, i32 0, !dbg !7066
  %dev3 = getelementptr inbounds %struct.virtio_device, ptr %vdev2, i32 0, i32 6, !dbg !7067
  %release = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 32, !dbg !7068
  store ptr @virtio_pci_release_dev, ptr %release, align 8, !dbg !7069
  %6 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7070
  %7 = load ptr, ptr %vp_dev, align 8, !dbg !7071
  %pci_dev4 = getelementptr inbounds %struct.virtio_pci_device, ptr %7, i32 0, i32 1, !dbg !7072
  store ptr %6, ptr %pci_dev4, align 8, !dbg !7073
  %8 = load ptr, ptr %vp_dev, align 8, !dbg !7074
  %virtqueues = getelementptr inbounds %struct.virtio_pci_device, ptr %8, i32 0, i32 6, !dbg !7075
  call void @INIT_LIST_HEAD(ptr noundef %virtqueues) #18, !dbg !7076
  br label %do.body, !dbg !7077

do.body:                                          ; preds = %if.end
  %9 = load ptr, ptr %vp_dev, align 8, !dbg !7078
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %9, i32 0, i32 5, !dbg !7078
  %call5 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !7078
  %10 = load ptr, ptr %vp_dev, align 8, !dbg !7078
  %lock6 = getelementptr inbounds %struct.virtio_pci_device, ptr %10, i32 0, i32 5, !dbg !7078
  %11 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !7078
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %11, i32 0, i32 0, !dbg !7078
  %12 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !7078
  %counter = getelementptr inbounds %struct.atomic_t, ptr %12, i32 0, i32 0, !dbg !7078
  store i32 0, ptr %counter, align 4, !dbg !7078
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock6, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !7078
  br label %do.cond, !dbg !7078

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7078

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7080
  %call7 = call i32 @pci_enable_device(ptr noundef %13) #18, !dbg !7081
  store i32 %call7, ptr %rc, align 4, !dbg !7082
  %14 = load i32, ptr %rc, align 4, !dbg !7083
  %tobool8 = icmp ne i32 %14, 0, !dbg !7083
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !7085

if.then9:                                         ; preds = %do.end
  br label %err_enable_device, !dbg !7086

if.end10:                                         ; preds = %do.end
  %15 = load i8, ptr @force_legacy, align 1, !dbg !7087, !range !5327, !noundef !558
  %tobool11 = trunc i8 %15 to i1, !dbg !7087
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !7089

if.then12:                                        ; preds = %if.end10
  %16 = load ptr, ptr %vp_dev, align 8, !dbg !7090
  %call13 = call i32 @virtio_pci_legacy_probe(ptr noundef %16) #18, !dbg !7092
  store i32 %call13, ptr %rc, align 4, !dbg !7093
  %17 = load i32, ptr %rc, align 4, !dbg !7094
  %cmp = icmp eq i32 %17, -19, !dbg !7096
  br i1 %cmp, label %if.then15, label %lor.lhs.false, !dbg !7097

lor.lhs.false:                                    ; preds = %if.then12
  %18 = load i32, ptr %rc, align 4, !dbg !7098
  %cmp14 = icmp eq i32 %18, -12, !dbg !7099
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !7100

if.then15:                                        ; preds = %lor.lhs.false, %if.then12
  %19 = load ptr, ptr %vp_dev, align 8, !dbg !7101
  %call16 = call i32 @virtio_pci_modern_probe(ptr noundef %19) #18, !dbg !7102
  store i32 %call16, ptr %rc, align 4, !dbg !7103
  br label %if.end17, !dbg !7104

if.end17:                                         ; preds = %if.then15, %lor.lhs.false
  %20 = load i32, ptr %rc, align 4, !dbg !7105
  %tobool18 = icmp ne i32 %20, 0, !dbg !7105
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !7107

if.then19:                                        ; preds = %if.end17
  br label %err_probe, !dbg !7108

if.end20:                                         ; preds = %if.end17
  br label %if.end29, !dbg !7109

if.else:                                          ; preds = %if.end10
  %21 = load ptr, ptr %vp_dev, align 8, !dbg !7110
  %call21 = call i32 @virtio_pci_modern_probe(ptr noundef %21) #18, !dbg !7112
  store i32 %call21, ptr %rc, align 4, !dbg !7113
  %22 = load i32, ptr %rc, align 4, !dbg !7114
  %cmp22 = icmp eq i32 %22, -19, !dbg !7116
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !7117

if.then23:                                        ; preds = %if.else
  %23 = load ptr, ptr %vp_dev, align 8, !dbg !7118
  %call24 = call i32 @virtio_pci_legacy_probe(ptr noundef %23) #18, !dbg !7119
  store i32 %call24, ptr %rc, align 4, !dbg !7120
  br label %if.end25, !dbg !7121

if.end25:                                         ; preds = %if.then23, %if.else
  %24 = load i32, ptr %rc, align 4, !dbg !7122
  %tobool26 = icmp ne i32 %24, 0, !dbg !7122
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !7124

if.then27:                                        ; preds = %if.end25
  br label %err_probe, !dbg !7125

if.end28:                                         ; preds = %if.end25
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end20
  %25 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7126
  call void @pci_set_master(ptr noundef %25) #18, !dbg !7127
  %26 = load ptr, ptr %vp_dev, align 8, !dbg !7128
  %vdev30 = getelementptr inbounds %struct.virtio_pci_device, ptr %26, i32 0, i32 0, !dbg !7129
  %call31 = call i32 @register_virtio_device(ptr noundef %vdev30) #18, !dbg !7130
  store i32 %call31, ptr %rc, align 4, !dbg !7131
  %27 = load ptr, ptr %vp_dev, align 8, !dbg !7132
  store ptr %27, ptr %reg_dev, align 8, !dbg !7133
  %28 = load i32, ptr %rc, align 4, !dbg !7134
  %tobool32 = icmp ne i32 %28, 0, !dbg !7134
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !7136

if.then33:                                        ; preds = %if.end29
  br label %err_register, !dbg !7137

if.end34:                                         ; preds = %if.end29
  store i32 0, ptr %retval, align 4, !dbg !7138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7138

err_register:                                     ; preds = %if.then33
  call void @llvm.dbg.label(metadata !7039), !dbg !7139
  %29 = load ptr, ptr %vp_dev, align 8, !dbg !7140
  %is_legacy = getelementptr inbounds %struct.virtio_pci_device, ptr %29, i32 0, i32 3, !dbg !7142
  %30 = load i8, ptr %is_legacy, align 8, !dbg !7142, !range !5327, !noundef !558
  %tobool35 = trunc i8 %30 to i1, !dbg !7142
  br i1 %tobool35, label %if.then36, label %if.else37, !dbg !7143

if.then36:                                        ; preds = %err_register
  %31 = load ptr, ptr %vp_dev, align 8, !dbg !7144
  call void @virtio_pci_legacy_remove(ptr noundef %31) #18, !dbg !7145
  br label %if.end38, !dbg !7145

if.else37:                                        ; preds = %err_register
  %32 = load ptr, ptr %vp_dev, align 8, !dbg !7146
  call void @virtio_pci_modern_remove(ptr noundef %32) #18, !dbg !7147
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then36
  br label %err_probe, !dbg !7142

err_probe:                                        ; preds = %if.end38, %if.then27, %if.then19
  call void @llvm.dbg.label(metadata !7040), !dbg !7148
  %33 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7149
  call void @pci_disable_device(ptr noundef %33) #18, !dbg !7150
  br label %err_enable_device, !dbg !7150

err_enable_device:                                ; preds = %err_probe, %if.then9
  call void @llvm.dbg.label(metadata !7041), !dbg !7151
  %34 = load ptr, ptr %reg_dev, align 8, !dbg !7152
  %tobool39 = icmp ne ptr %34, null, !dbg !7152
  br i1 %tobool39, label %if.then40, label %if.else43, !dbg !7154

if.then40:                                        ; preds = %err_enable_device
  %35 = load ptr, ptr %vp_dev, align 8, !dbg !7155
  %vdev41 = getelementptr inbounds %struct.virtio_pci_device, ptr %35, i32 0, i32 0, !dbg !7156
  %dev42 = getelementptr inbounds %struct.virtio_device, ptr %vdev41, i32 0, i32 6, !dbg !7157
  call void @put_device(ptr noundef %dev42) #18, !dbg !7158
  br label %if.end44, !dbg !7158

if.else43:                                        ; preds = %err_enable_device
  %36 = load ptr, ptr %vp_dev, align 8, !dbg !7159
  call void @kfree(ptr noundef %36) #18, !dbg !7160
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then40
  %37 = load i32, ptr %rc, align 4, !dbg !7161
  store i32 %37, ptr %retval, align 4, !dbg !7162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7162

cleanup:                                          ; preds = %if.end44, %if.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !7163
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg_dev) #17, !dbg !7163
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !7163
  %38 = load i32, ptr %retval, align 4, !dbg !7163
  ret i32 %38, !dbg !7163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_pci_remove(ptr noundef %pci_dev) #0 align 16 !dbg !7164 {
entry:
  %pci_dev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %pci_dev, ptr %pci_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_dev.addr, metadata !7166, metadata !DIExpression()), !dbg !7169
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !7170
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !7167, metadata !DIExpression()), !dbg !7171
  %0 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7172
  %call = call ptr @pci_get_drvdata(ptr noundef %0) #18, !dbg !7173
  store ptr %call, ptr %vp_dev, align 8, !dbg !7171
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !7174
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !7168, metadata !DIExpression()), !dbg !7175
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !7176
  %vdev = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 0, !dbg !7177
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, !dbg !7178
  %call2 = call ptr @get_device(ptr noundef %dev1) #18, !dbg !7179
  store ptr %call2, ptr %dev, align 8, !dbg !7175
  %2 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7180
  %call3 = call zeroext i1 @pci_device_is_present(ptr noundef %2) #18, !dbg !7182
  br i1 %call3, label %if.end, label %if.then, !dbg !7183

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %vp_dev, align 8, !dbg !7184
  %vdev4 = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 0, !dbg !7185
  call void @virtio_break_device(ptr noundef %vdev4) #18, !dbg !7186
  br label %if.end, !dbg !7186

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7187
  call void @pci_disable_sriov(ptr noundef %4) #18, !dbg !7188
  %5 = load ptr, ptr %vp_dev, align 8, !dbg !7189
  %vdev5 = getelementptr inbounds %struct.virtio_pci_device, ptr %5, i32 0, i32 0, !dbg !7190
  call void @unregister_virtio_device(ptr noundef %vdev5) #18, !dbg !7191
  %6 = load ptr, ptr %vp_dev, align 8, !dbg !7192
  %is_legacy = getelementptr inbounds %struct.virtio_pci_device, ptr %6, i32 0, i32 3, !dbg !7194
  %7 = load i8, ptr %is_legacy, align 8, !dbg !7194, !range !5327, !noundef !558
  %tobool = trunc i8 %7 to i1, !dbg !7194
  br i1 %tobool, label %if.then6, label %if.else, !dbg !7195

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %vp_dev, align 8, !dbg !7196
  call void @virtio_pci_legacy_remove(ptr noundef %8) #18, !dbg !7197
  br label %if.end7, !dbg !7197

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %vp_dev, align 8, !dbg !7198
  call void @virtio_pci_modern_remove(ptr noundef %9) #18, !dbg !7199
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %10 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7200
  call void @pci_disable_device(ptr noundef %10) #18, !dbg !7201
  %11 = load ptr, ptr %dev, align 8, !dbg !7202
  call void @put_device(ptr noundef %11) #18, !dbg !7203
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !7204
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !7204
  ret void, !dbg !7204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_pci_sriov_configure(ptr noundef %pci_dev, i32 noundef %num_vfs) #0 align 16 !dbg !7205 {
entry:
  %retval = alloca i32, align 4
  %pci_dev.addr = alloca ptr, align 8
  %num_vfs.addr = alloca i32, align 4
  %vp_dev = alloca ptr, align 8
  %vdev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_dev, ptr %pci_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_dev.addr, metadata !7207, metadata !DIExpression()), !dbg !7212
  store i32 %num_vfs, ptr %num_vfs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_vfs.addr, metadata !7208, metadata !DIExpression()), !dbg !7213
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !7214
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !7209, metadata !DIExpression()), !dbg !7215
  %0 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7216
  %call = call ptr @pci_get_drvdata(ptr noundef %0) #18, !dbg !7217
  store ptr %call, ptr %vp_dev, align 8, !dbg !7215
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdev) #17, !dbg !7218
  call void @llvm.dbg.declare(metadata ptr %vdev, metadata !7210, metadata !DIExpression()), !dbg !7219
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !7220
  %vdev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 0, !dbg !7221
  store ptr %vdev1, ptr %vdev, align 8, !dbg !7219
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7222
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7211, metadata !DIExpression()), !dbg !7223
  %2 = load ptr, ptr %vdev, align 8, !dbg !7224
  %config = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 8, !dbg !7226
  %3 = load ptr, ptr %config, align 8, !dbg !7226
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 3, !dbg !7227
  %4 = load ptr, ptr %get_status, align 8, !dbg !7227
  %5 = load ptr, ptr %vdev, align 8, !dbg !7228
  %call2 = call zeroext i8 %4(ptr noundef %5) #18, !dbg !7224
  %conv = zext i8 %call2 to i32, !dbg !7224
  %and = and i32 %conv, 4, !dbg !7229
  %tobool = icmp ne i32 %and, 0, !dbg !7229
  br i1 %tobool, label %if.end, label %if.then, !dbg !7230

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !7231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7231

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %vdev, align 8, !dbg !7232
  %call3 = call zeroext i1 @__virtio_test_bit(ptr noundef %6, i32 noundef 37) #18, !dbg !7234
  br i1 %call3, label %if.end5, label %if.then4, !dbg !7235

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !7236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7236

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7237
  %call6 = call i32 @pci_vfs_assigned(ptr noundef %7) #18, !dbg !7239
  %tobool7 = icmp ne i32 %call6, 0, !dbg !7239
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !7240

if.then8:                                         ; preds = %if.end5
  store i32 -1, ptr %retval, align 4, !dbg !7241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7241

if.end9:                                          ; preds = %if.end5
  %8 = load i32, ptr %num_vfs.addr, align 4, !dbg !7242
  %cmp = icmp eq i32 %8, 0, !dbg !7244
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !7245

if.then11:                                        ; preds = %if.end9
  %9 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7246
  call void @pci_disable_sriov(ptr noundef %9) #18, !dbg !7248
  store i32 0, ptr %retval, align 4, !dbg !7249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7249

if.end12:                                         ; preds = %if.end9
  %10 = load ptr, ptr %pci_dev.addr, align 8, !dbg !7250
  %11 = load i32, ptr %num_vfs.addr, align 4, !dbg !7251
  %call13 = call i32 @pci_enable_sriov(ptr noundef %10, i32 noundef %11) #18, !dbg !7252
  store i32 %call13, ptr %ret, align 4, !dbg !7253
  %12 = load i32, ptr %ret, align 4, !dbg !7254
  %cmp14 = icmp slt i32 %12, 0, !dbg !7256
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !7257

if.then16:                                        ; preds = %if.end12
  %13 = load i32, ptr %ret, align 4, !dbg !7258
  store i32 %13, ptr %retval, align 4, !dbg !7259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7259

if.end17:                                         ; preds = %if.end12
  %14 = load i32, ptr %num_vfs.addr, align 4, !dbg !7260
  store i32 %14, ptr %retval, align 4, !dbg !7261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7261

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then11, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7262
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdev) #17, !dbg !7262
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !7262
  %15 = load i32, ptr %retval, align 4, !dbg !7262
  ret i32 %15, !dbg !7262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !7263 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7265, metadata !DIExpression()), !dbg !7267
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7266, metadata !DIExpression()), !dbg !7268
  %0 = load i64, ptr %size.addr, align 8, !dbg !7269
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7270
  %or = or i32 %1, 256, !dbg !7271
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !7272
  ret ptr %call, !dbg !7273
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_set_drvdata(ptr noundef %pdev, ptr noundef %data) #4 align 16 !dbg !7274 {
entry:
  %pdev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !7278, metadata !DIExpression()), !dbg !7280
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7279, metadata !DIExpression()), !dbg !7281
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !7282
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !7283
  %1 = load ptr, ptr %data.addr, align 8, !dbg !7284
  call void @dev_set_drvdata(ptr noundef %dev, ptr noundef %1) #18, !dbg !7285
  ret void, !dbg !7286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_pci_release_dev(ptr noundef %_d) #0 align 16 !dbg !7287 {
entry:
  %_d.addr = alloca ptr, align 8
  %vdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !7289, metadata !DIExpression()), !dbg !7294
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdev) #17, !dbg !7295
  call void @llvm.dbg.declare(metadata ptr %vdev, metadata !7290, metadata !DIExpression()), !dbg !7296
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !7297
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7291, metadata !DIExpression()), !dbg !7297
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !7297
  store ptr %0, ptr %__mptr, align 8, !dbg !7297
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7297
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !7297
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7297
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !7298
  %2 = load ptr, ptr %tmp, align 8, !dbg !7297
  store ptr %2, ptr %vdev, align 8, !dbg !7296
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !7299
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !7293, metadata !DIExpression()), !dbg !7300
  %3 = load ptr, ptr %vdev, align 8, !dbg !7301
  %call = call ptr @to_vp_device(ptr noundef %3) #18, !dbg !7302
  store ptr %call, ptr %vp_dev, align 8, !dbg !7300
  %4 = load ptr, ptr %vp_dev, align 8, !dbg !7303
  call void @kfree(ptr noundef %4) #18, !dbg !7304
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !7305
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdev) #17, !dbg !7305
  ret void, !dbg !7305
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7306 dso_local i32 @pci_enable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7307 dso_local i32 @virtio_pci_legacy_probe(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7310 dso_local i32 @virtio_pci_modern_probe(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7311 dso_local void @pci_set_master(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7312 dso_local i32 @register_virtio_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7313 dso_local void @virtio_pci_legacy_remove(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7316 dso_local void @virtio_pci_modern_remove(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7317 dso_local void @pci_disable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7318 dso_local void @put_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #4 align 16 !dbg !7319 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7323, metadata !DIExpression()), !dbg !7325
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7324, metadata !DIExpression()), !dbg !7326
  %0 = load ptr, ptr %data.addr, align 8, !dbg !7327
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7328
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !7329
  store ptr %0, ptr %driver_data, align 8, !dbg !7330
  ret void, !dbg !7331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_get_drvdata(ptr noundef %pdev) #4 align 16 !dbg !7332 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !7336, metadata !DIExpression()), !dbg !7337
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !7338
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !7339
  %call = call ptr @dev_get_drvdata(ptr noundef %dev) #18, !dbg !7340
  ret ptr %call, !dbg !7341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7342 dso_local ptr @get_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7345 dso_local zeroext i1 @pci_device_is_present(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7348 dso_local void @virtio_break_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_disable_sriov(ptr noundef %dev) #4 align 16 !dbg !7349 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7351, metadata !DIExpression()), !dbg !7352
  ret void, !dbg !7353
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7354 dso_local void @unregister_virtio_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #4 align 16 !dbg !7355 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7359, metadata !DIExpression()), !dbg !7360
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7361
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !7362
  %1 = load ptr, ptr %driver_data, align 8, !dbg !7362
  ret ptr %1, !dbg !7363
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__virtio_test_bit(ptr noundef %vdev, i32 noundef %fbit) #4 align 16 !dbg !7364 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !7370, metadata !DIExpression()), !dbg !7372
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !7371, metadata !DIExpression()), !dbg !7373
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !7374
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7376
  br i1 %1, label %if.then, label %if.else, !dbg !7377

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7378

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !7379
  %cmp = icmp uge i32 %2, 64, !dbg !7379
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7382

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_292() #23, !dbg !7379, !srcloc !7383
  unreachable, !dbg !7379

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !7382

do.end:                                           ; preds = %if.end
  br label %if.end14, !dbg !7382

if.else:                                          ; preds = %entry
  br label %do.body2, !dbg !7384

do.body2:                                         ; preds = %if.else
  %3 = load i32, ptr %fbit.addr, align 4, !dbg !7385
  %cmp3 = icmp uge i32 %3, 64, !dbg !7385
  %lnot = xor i1 %cmp3, true, !dbg !7385
  %lnot4 = xor i1 %lnot, true, !dbg !7385
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !7385
  %conv = sext i32 %lnot.ext to i64, !dbg !7385
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7385
  %tobool = icmp ne i64 %expval, 0, !dbg !7385
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !7388

if.then5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !7385

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !7389

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !7391

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !7389

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 143, i32 0, i64 12) #17, !dbg !7393, !srcloc !7395
  br label %do.end10, !dbg !7393

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !7389

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !7389

if.end12:                                         ; preds = %do.end11, %do.body2
  br label %do.end13, !dbg !7388

do.end13:                                         ; preds = %if.end12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end
  %4 = load ptr, ptr %vdev.addr, align 8, !dbg !7396
  %features = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11, !dbg !7397
  %5 = load i64, ptr %features, align 8, !dbg !7397
  %6 = load i32, ptr %fbit.addr, align 4, !dbg !7398
  %sh_prom = zext i32 %6 to i64, !dbg !7398
  %shl = shl i64 1, %sh_prom, !dbg !7398
  %and = and i64 %5, %shl, !dbg !7399
  %tobool15 = icmp ne i64 %and, 0, !dbg !7396
  ret i1 %tobool15, !dbg !7400
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_vfs_assigned(ptr noundef %dev) #4 align 16 !dbg !7401 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7403, metadata !DIExpression()), !dbg !7404
  ret i32 0, !dbg !7405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_enable_sriov(ptr noundef %dev, i32 noundef %nr_virtfn) #4 align 16 !dbg !7406 {
entry:
  %dev.addr = alloca ptr, align 8
  %nr_virtfn.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7408, metadata !DIExpression()), !dbg !7410
  store i32 %nr_virtfn, ptr %nr_virtfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_virtfn.addr, metadata !7409, metadata !DIExpression()), !dbg !7411
  ret i32 -19, !dbg !7412
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7413 dso_local void @__compiletime_assert_292() #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_pci_freeze(ptr noundef %dev) #0 align 16 !dbg !7414 {
entry:
  %dev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7416, metadata !DIExpression()), !dbg !7422
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #17, !dbg !7423
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !7417, metadata !DIExpression()), !dbg !7424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !7425
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7418, metadata !DIExpression()), !dbg !7425
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7425
  store ptr %0, ptr %__mptr, align 8, !dbg !7425
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7425
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !7425
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !7426
  %2 = load ptr, ptr %tmp, align 8, !dbg !7425
  store ptr %2, ptr %pci_dev, align 8, !dbg !7424
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !7427
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !7420, metadata !DIExpression()), !dbg !7428
  %3 = load ptr, ptr %pci_dev, align 8, !dbg !7429
  %call = call ptr @pci_get_drvdata(ptr noundef %3) #18, !dbg !7430
  store ptr %call, ptr %vp_dev, align 8, !dbg !7428
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7431
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7421, metadata !DIExpression()), !dbg !7432
  %4 = load ptr, ptr %vp_dev, align 8, !dbg !7433
  %vdev = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 0, !dbg !7434
  %call1 = call i32 @virtio_device_freeze(ptr noundef %vdev) #18, !dbg !7435
  store i32 %call1, ptr %ret, align 4, !dbg !7436
  %5 = load i32, ptr %ret, align 4, !dbg !7437
  %tobool = icmp ne i32 %5, 0, !dbg !7437
  br i1 %tobool, label %if.end, label %if.then, !dbg !7439

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pci_dev, align 8, !dbg !7440
  call void @pci_disable_device(ptr noundef %6) #18, !dbg !7441
  br label %if.end, !dbg !7441

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !7442
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7443
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !7443
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #17, !dbg !7443
  ret i32 %7, !dbg !7444
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_pci_restore(ptr noundef %dev) #0 align 16 !dbg !7445 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7447, metadata !DIExpression()), !dbg !7453
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #17, !dbg !7454
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !7448, metadata !DIExpression()), !dbg !7455
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7449, metadata !DIExpression()), !dbg !7456
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7456
  store ptr %0, ptr %__mptr, align 8, !dbg !7456
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7456
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !7456
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !7457
  %2 = load ptr, ptr %tmp, align 8, !dbg !7456
  store ptr %2, ptr %pci_dev, align 8, !dbg !7455
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #17, !dbg !7458
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !7451, metadata !DIExpression()), !dbg !7459
  %3 = load ptr, ptr %pci_dev, align 8, !dbg !7460
  %call = call ptr @pci_get_drvdata(ptr noundef %3) #18, !dbg !7461
  store ptr %call, ptr %vp_dev, align 8, !dbg !7459
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7462
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7452, metadata !DIExpression()), !dbg !7463
  %4 = load ptr, ptr %pci_dev, align 8, !dbg !7464
  %call1 = call i32 @pci_enable_device(ptr noundef %4) #18, !dbg !7465
  store i32 %call1, ptr %ret, align 4, !dbg !7466
  %5 = load i32, ptr %ret, align 4, !dbg !7467
  %tobool = icmp ne i32 %5, 0, !dbg !7467
  br i1 %tobool, label %if.then, label %if.end, !dbg !7469

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %ret, align 4, !dbg !7470
  store i32 %6, ptr %retval, align 4, !dbg !7471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7471

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pci_dev, align 8, !dbg !7472
  call void @pci_set_master(ptr noundef %7) #18, !dbg !7473
  %8 = load ptr, ptr %vp_dev, align 8, !dbg !7474
  %vdev = getelementptr inbounds %struct.virtio_pci_device, ptr %8, i32 0, i32 0, !dbg !7475
  %call2 = call i32 @virtio_device_restore(ptr noundef %vdev) #18, !dbg !7476
  store i32 %call2, ptr %retval, align 4, !dbg !7477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7477

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7478
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #17, !dbg !7478
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #17, !dbg !7478
  %9 = load i32, ptr %retval, align 4, !dbg !7478
  ret i32 %9, !dbg !7478
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7479 dso_local i32 @virtio_device_freeze(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7480 dso_local i32 @virtio_device_restore(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: fbit >= 64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212}
!llvm.ident = !{!5213}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force_legacy", scope: !2, file: !3, line: 22, type: !5202, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/virtio/.virtio_pci_common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/virtio/virtio_pci\22 -D KBUILD_BASENAME=\22virtio_pci_common\22 -D KBUILD_MODNAME=\22virtio_pci\22 -D __KBUILD_MODNAME=kmod_virtio_pci -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/virtio/virtio_pci_common.ll drivers/virtio/virtio_pci_common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !167, globals: !5114, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/virtio/virtio_pci_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33e159ef1428f5b090ea6ce51acfb691")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !151, !161}
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
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 94, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "drivers/virtio/virtio_pci_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a8a7cf4aa5bce87d24389029ddf10b2")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "VP_MSIX_CONFIG_VECTOR", value: 0)
!150 = !DIEnumerator(name: "VP_MSIX_VQ_VECTOR", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !152, line: 364, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!153 = !{!154, !155, !156, !157, !158, !159, !160}
!154 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!155 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!159 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!160 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !162, line: 11, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!163 = !{!164, !165, !166}
!164 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!165 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!166 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!167 = !{!168, !345, !4115, !4712, !5112, !719, !323, !5080, !309, !7, !4126, !4717}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !170)
!170 = !{!171, !172, !179, !184, !3791, !3817, !3818, !3819, !3820, !3824, !3827, !3828, !3829, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3896, !3900, !3918, !3935, !3936, !3937, !3938, !3947, !3970, !3971, !3974, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3988, !3989, !4075, !4083, !4084, !4085, !4087, !4091, !4092, !4096, !4097, !4098, !4099, !4101, !4102, !4103, !4110, !4111, !4112, !4114}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !169, file: !6, line: 403, baseType: !5, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !169, file: !6, line: 406, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 190, size: 128, elements: !175)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 191, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !174, line: 191, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !6, line: 409, baseType: !180, size: 448, offset: 192)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 448, elements: !182)
!181 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!182 = !{!183}
!183 = !DISubrange(count: 56)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !169, file: !6, line: 417, baseType: !185, size: 768, offset: 640)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !186)
!186 = !{!187, !3785, !3786, !3787, !3790}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !185, file: !6, line: 46, baseType: !188, size: 512)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !189, line: 64, size: 512, elements: !190)
!189 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!190 = !{!191, !194, !195, !197, !286, !3672, !3775, !3780, !3781, !3782, !3783, !3784}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !189, line: 65, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !188, file: !189, line: 66, baseType: !173, size: 128, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !189, line: 67, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !188, file: !189, line: 68, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !189, line: 168, size: 768, elements: !200)
!200 = !{!201, !202, !245, !246}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !199, file: !189, line: 169, baseType: !173, size: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !199, file: !189, line: 170, baseType: !203, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !204, line: 29, baseType: !205)
!204 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !204, line: 17, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 18, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 18, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !208, file: !204, line: 19, baseType: !211, size: 32)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !212, line: 14, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !211, file: !212, line: 15, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !216, line: 44, baseType: !217)
!216 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !216, line: 14, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !216, line: 15, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 15, size: 32, elements: !221)
!221 = !{!222, !227, !237}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !220, file: !216, line: 16, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 174, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 172, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !224, file: !174, line: 173, baseType: !109, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !216, line: 24, baseType: !228, size: 16)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !216, line: 24, size: 16, elements: !229)
!229 = !{!230, !236}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !228, file: !216, line: 25, baseType: !231, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !232, line: 17, baseType: !233)
!232 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !234, line: 21, baseType: !235)
!234 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!235 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !228, file: !216, line: 26, baseType: !231, size: 8, offset: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !216, line: 28, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !216, line: 28, size: 32, elements: !239)
!239 = !{!240, !244}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !238, file: !216, line: 29, baseType: !241, size: 16)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !232, line: 19, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !234, line: 24, baseType: !243)
!243 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !238, file: !216, line: 30, baseType: !241, size: 16, offset: 16)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !199, file: !189, line: 171, baseType: !188, size: 512, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !199, file: !189, line: 172, baseType: !247, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !189, line: 133, size: 192, elements: !250)
!250 = !{!251, !258, !263}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !249, file: !189, line: 134, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!109, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !189, line: 135, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!192, !256}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !249, file: !189, line: 136, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!109, !256, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !189, line: 125, size: 20736, elements: !270)
!270 = !{!271, !276, !280, !281, !285}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !269, file: !189, line: 126, baseType: !272, size: 192)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 192, elements: !274)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!274 = !{!275}
!275 = !DISubrange(count: 3)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !269, file: !189, line: 127, baseType: !277, size: 4096, offset: 192)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 4096, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !269, file: !189, line: 128, baseType: !109, size: 32, offset: 4288)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !269, file: !189, line: 129, baseType: !282, size: 16384, offset: 4320)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 16384, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 2048)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !269, file: !189, line: 130, baseType: !109, size: 32, offset: 20704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !188, file: !189, line: 69, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !189, line: 116, size: 384, elements: !290)
!290 = !{!291, !295, !324, !3634, !3662, !3666}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !289, file: !189, line: 117, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !196}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !289, file: !189, line: 118, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !299, line: 254, size: 128, elements: !300)
!299 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!300 = !{!301, !316}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !298, file: !299, line: 255, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !196, !310, !273}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 66, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !307, line: 73, baseType: !308)
!307 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !307, line: 15, baseType: !309)
!309 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !299, line: 30, size: 128, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !299, line: 31, baseType: !192, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !311, file: !299, line: 32, baseType: !315, size: 16, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 24, baseType: !243)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !298, file: !299, line: 256, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!305, !196, !310, !192, !320}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 61, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !307, line: 72, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !307, line: 16, baseType: !323)
!323 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !289, file: !189, line: 119, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !299, line: 84, size: 320, elements: !329)
!329 = !{!330, !331, !335, !3630, !3632}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !299, line: 85, baseType: !192, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !328, file: !299, line: 86, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!315, !196, !310, !109}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !328, file: !299, line: 88, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!315, !196, !339, !109}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !299, line: 175, size: 512, elements: !341)
!341 = !{!342, !343, !344, !346, !3621, !3625, !3626}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !340, file: !299, line: 176, baseType: !311, size: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !299, line: 177, baseType: !320, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !340, file: !299, line: 178, baseType: !345, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !340, file: !299, line: 179, baseType: !347, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !352)
!352 = !{!353, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3615, !3616, !3617, !3618, !3619, !3620}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !351, file: !14, line: 473, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !356)
!356 = !{!357, !358, !359, !367, !368, !375, !376, !379, !380, !3394, !3395, !3396, !3397, !3398, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3438, !3441, !3442, !3443, !3452, !3453, !3454, !3455}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !355, file: !14, line: 642, baseType: !315, size: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !355, file: !14, line: 643, baseType: !243, size: 16, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !355, file: !14, line: 644, baseType: !360, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !361, line: 23, baseType: !362)
!361 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 21, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !362, file: !361, line: 22, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 37, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !307, line: 49, baseType: !7)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !355, file: !14, line: 645, baseType: !173, size: 128, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !355, file: !14, line: 646, baseType: !369, size: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !361, line: 28, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 26, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !361, line: 27, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 38, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !307, line: 50, baseType: !7)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !355, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !355, file: !14, line: 650, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !355, file: !14, line: 651, baseType: !377, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !355, file: !14, line: 654, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !384)
!384 = !{!385, !3219, !3232, !3236, !3240, !3244, !3248, !3252, !3256, !3260, !3264, !3265, !3269, !3273, !3310, !3339, !3343, !3349, !3353, !3357, !3361, !3365, !3369, !3375, !3379}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !383, file: !14, line: 1967, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !354, !389, !7}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !391, line: 82, size: 1536, elements: !392)
!391 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!392 = !{!393, !394, !404, !412, !413, !433, !434, !438, !451, !3202, !3203, !3204, !3205, !3211, !3212, !3213}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !390, file: !391, line: 84, baseType: !7, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !390, file: !391, line: 85, baseType: !395, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !396, line: 275, baseType: !397)
!396 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !396, line: 275, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !397, file: !396, line: 275, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !396, line: 69, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !396, line: 64, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !401, file: !396, line: 65, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !390, file: !391, line: 86, baseType: !405, size: 128, offset: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !406, line: 38, size: 128, elements: !407)
!406 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!407 = !{!408, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !406, line: 39, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !405, file: !406, line: 39, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !390, file: !391, line: 87, baseType: !389, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !390, file: !391, line: 88, baseType: !414, size: 128, offset: 256)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !391, line: 49, size: 128, elements: !415)
!415 = !{!416, !430}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !391, line: 50, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !391, line: 50, size: 64, elements: !418)
!418 = !{!419, !426}
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !391, line: 51, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !391, line: 51, size: 64, elements: !421)
!421 = !{!422, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !420, file: !391, line: 52, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !232, line: 21, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !234, line: 27, baseType: !7)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !420, file: !391, line: 52, baseType: !423, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !417, file: !391, line: 54, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !232, line: 23, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !234, line: 31, baseType: !429)
!429 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !391, line: 56, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !390, file: !391, line: 89, baseType: !354, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !390, file: !391, line: 91, baseType: !435, size: 256, offset: 448)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !390, file: !391, line: 94, baseType: !439, size: 64, offset: 704)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !440, line: 25, size: 64, elements: !441)
!440 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !440, line: 26, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !440, line: 26, size: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !443, file: !440, line: 28, baseType: !428, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !440, line: 30, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !440, line: 30, size: 64, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !447, file: !440, line: 31, baseType: !203, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !447, file: !440, line: 32, baseType: !109, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !390, file: !391, line: 95, baseType: !452, size: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !391, line: 128, size: 1024, align: 512, elements: !455)
!455 = !{!456, !460, !461, !468, !474, !478, !482, !486, !487, !491, !495, !3192, !3196}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !454, file: !391, line: 129, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!109, !389, !7}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !454, file: !391, line: 130, baseType: !457, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !454, file: !391, line: 131, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!109, !465, !467}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !454, file: !391, line: 132, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!109, !465, !7, !192, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !454, file: !391, line: 134, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!109, !465}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !454, file: !391, line: 135, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!109, !389}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !454, file: !391, line: 136, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !389}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !454, file: !391, line: 137, baseType: !483, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !454, file: !391, line: 138, baseType: !488, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !389, !354}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !454, file: !391, line: 139, baseType: !492, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!273, !389, !273, !109}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !454, file: !391, line: 140, baseType: !496, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !3191}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !501, line: 70, size: 256, elements: !502)
!501 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!502 = !{!503, !504, !3187, !3188}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !500, file: !501, line: 71, baseType: !389, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !500, file: !501, line: 72, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !507)
!507 = !{!508, !509, !512, !513, !514, !518, !567, !728, !768, !858, !862, !863, !864, !865, !866, !875, !876, !877, !878, !883, !887, !888, !891, !894, !897, !900, !901, !902, !943, !3118, !3119, !3120, !3121, !3122, !3123, !3126, !3128, !3135, !3136, !3137, !3138, !3139, !3154, !3155, !3156, !3157, !3158, !3161, !3162, !3163, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !506, file: !14, line: 1191, baseType: !173, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !506, file: !14, line: 1192, baseType: !510, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 21, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 18, baseType: !423)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !506, file: !14, line: 1193, baseType: !235, size: 8, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !506, file: !14, line: 1194, baseType: !323, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !506, file: !14, line: 1195, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 52, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !307, line: 88, baseType: !517)
!517 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !506, file: !14, line: 1196, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !521)
!521 = !{!522, !523, !524, !531, !535, !539, !543, !544, !545, !555, !559, !560, !561, !563, !564, !565, !566}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !520, file: !14, line: 2367, baseType: !192, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !520, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !520, file: !14, line: 2376, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!109, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !530, line: 32, flags: DIFlagFwdDecl)
!530 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !520, file: !14, line: 2377, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !520, file: !14, line: 2378, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!389, !519, !109, !192, !345}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !520, file: !14, line: 2380, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !505}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !520, file: !14, line: 2381, baseType: !168, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !14, line: 2382, baseType: !519, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !520, file: !14, line: 2383, baseType: !546, size: 64, offset: 512)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 194, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !546, file: !174, line: 195, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 198, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !174, line: 199, baseType: !549, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !550, file: !174, line: 199, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !520, file: !14, line: 2385, baseType: !556, offset: 576)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !557, line: 206, elements: !558)
!557 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!558 = !{}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !520, file: !14, line: 2386, baseType: !556, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !520, file: !14, line: 2387, baseType: !556, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !520, file: !14, line: 2388, baseType: !562, offset: 576)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, elements: !274)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !520, file: !14, line: 2390, baseType: !556, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !520, file: !14, line: 2391, baseType: !556, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !520, file: !14, line: 2392, baseType: !556, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !520, file: !14, line: 2393, baseType: !556, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !506, file: !14, line: 1197, baseType: !568, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !571)
!571 = !{!572, !576, !580, !581, !585, !591, !595, !596, !597, !601, !605, !609, !610, !611, !617, !622, !623, !630, !631, !632, !633, !637, !641, !710, !726, !727}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !570, file: !14, line: 2058, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!354, !505}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !570, file: !14, line: 2059, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !354}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !570, file: !14, line: 2060, baseType: !577, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !570, file: !14, line: 2062, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !354, !109}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !570, file: !14, line: 2063, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!109, !354, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !570, file: !14, line: 2064, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!109, !354}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !570, file: !14, line: 2065, baseType: !577, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !570, file: !14, line: 2066, baseType: !540, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !570, file: !14, line: 2067, baseType: !598, size: 64, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!109, !505, !109}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !570, file: !14, line: 2068, baseType: !602, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!109, !505, !13}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !570, file: !14, line: 2069, baseType: !606, size: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!109, !505}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !570, file: !14, line: 2070, baseType: !602, size: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !570, file: !14, line: 2071, baseType: !606, size: 64, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !570, file: !14, line: 2072, baseType: !612, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!109, !389, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !570, file: !14, line: 2073, baseType: !618, size: 64, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!109, !505, !621, !273}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !570, file: !14, line: 2074, baseType: !540, size: 64, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !570, file: !14, line: 2076, baseType: !624, size: 64, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!109, !627, !389}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !629, line: 66, flags: DIFlagFwdDecl)
!629 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !570, file: !14, line: 2077, baseType: !624, size: 64, offset: 1088)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !570, file: !14, line: 2078, baseType: !624, size: 64, offset: 1152)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !570, file: !14, line: 2079, baseType: !624, size: 64, offset: 1216)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !570, file: !14, line: 2081, baseType: !634, size: 64, offset: 1280)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!305, !505, !109, !273, !320, !515}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !570, file: !14, line: 2082, baseType: !638, size: 64, offset: 1344)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!305, !505, !109, !192, !320, !515}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !570, file: !14, line: 2083, baseType: !642, size: 64, offset: 1408)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !354}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !674, !675, !676, !677, !693, !694, !695}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !647, file: !19, line: 297, baseType: !550, size: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !647, file: !19, line: 298, baseType: !173, size: 128, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !647, file: !19, line: 299, baseType: !173, size: 128, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !647, file: !19, line: 300, baseType: !173, size: 128, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !647, file: !19, line: 301, baseType: !654, size: 256, offset: 512)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !655, line: 66, size: 256, elements: !656)
!655 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!656 = !{!657, !666, !668, !673}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !654, file: !655, line: 67, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !659, line: 13, baseType: !660)
!659 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 181, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 179, size: 64, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !661, file: !174, line: 180, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !232, line: 22, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !234, line: 30, baseType: !517)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !654, file: !655, line: 68, baseType: !667, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !212, line: 23, baseType: !211)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !654, file: !655, line: 70, baseType: !669, size: 32, offset: 96)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !670, line: 15, size: 32, elements: !671)
!670 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !669, file: !670, line: 20, baseType: !223, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !654, file: !655, line: 72, baseType: !173, size: 128, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !647, file: !19, line: 302, baseType: !203, size: 32, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !647, file: !19, line: 303, baseType: !223, size: 32, offset: 800)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !647, file: !19, line: 304, baseType: !505, size: 64, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !647, file: !19, line: 305, baseType: !678, size: 64, offset: 896)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !679)
!679 = !{!680, !692}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !19, line: 69, baseType: !681, size: 32)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !19, line: 69, size: 32, elements: !682)
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !681, file: !19, line: 70, baseType: !360, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !681, file: !19, line: 71, baseType: !369, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !681, file: !19, line: 72, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !687, line: 24, baseType: !688)
!687 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !687, line: 22, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !688, file: !687, line: 23, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !687, line: 20, baseType: !366)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !647, file: !19, line: 306, baseType: !515, size: 64, offset: 960)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !647, file: !19, line: 307, baseType: !323, size: 64, offset: 1024)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !647, file: !19, line: 308, baseType: !696, size: 576, offset: 1088)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !697)
!697 = !{!698, !700, !701, !702, !703, !704, !705, !706, !709}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !696, file: !19, line: 206, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !517)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !696, file: !19, line: 207, baseType: !699, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !696, file: !19, line: 208, baseType: !699, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !696, file: !19, line: 209, baseType: !699, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !696, file: !19, line: 210, baseType: !699, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !696, file: !19, line: 211, baseType: !699, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !696, file: !19, line: 212, baseType: !699, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !696, file: !19, line: 213, baseType: !707, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !708, line: 8, baseType: !665)
!708 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !696, file: !19, line: 214, baseType: !707, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !570, file: !14, line: 2085, baseType: !711, size: 64, offset: 1472)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!309, !505, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !716, line: 15, size: 256, elements: !717)
!716 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!717 = !{!718, !720, !721, !722, !723}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !715, file: !716, line: 16, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 154, baseType: !7)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !715, file: !716, line: 19, baseType: !109, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !715, file: !716, line: 26, baseType: !323, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !715, file: !716, line: 33, baseType: !323, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !715, file: !716, line: 36, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !570, file: !14, line: 2087, baseType: !711, size: 64, offset: 1536)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !570, file: !14, line: 2089, baseType: !540, size: 64, offset: 1600)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !506, file: !14, line: 1198, baseType: !729, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !732)
!732 = !{!733, !737, !741, !745, !746, !747, !748, !749, !754, !759, !763}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !731, file: !19, line: 325, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!109, !646}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !731, file: !19, line: 326, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!646, !505, !109}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !731, file: !19, line: 327, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !646}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !731, file: !19, line: 328, baseType: !734, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !731, file: !19, line: 329, baseType: !734, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !731, file: !19, line: 330, baseType: !734, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !731, file: !19, line: 331, baseType: !598, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !731, file: !19, line: 334, baseType: !750, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!753, !354}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !731, file: !19, line: 335, baseType: !755, size: 64, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!109, !354, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !731, file: !19, line: 337, baseType: !760, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!109, !354, !753}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !731, file: !19, line: 339, baseType: !764, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!109, !505, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !506, file: !14, line: 1199, baseType: !769, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !772)
!772 = !{!773, !784, !785, !789, !790, !791, !806, !829, !833, !834, !857}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !771, file: !19, line: 431, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!109, !505, !109, !109, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !780, line: 8, size: 128, elements: !781)
!780 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !779, file: !780, line: 9, baseType: !499, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !779, file: !780, line: 10, baseType: !389, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !771, file: !19, line: 432, baseType: !598, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !771, file: !19, line: 433, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!109, !505, !7}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !771, file: !19, line: 434, baseType: !786, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !771, file: !19, line: 435, baseType: !598, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !771, file: !19, line: 436, baseType: !792, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!109, !505, !109, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !796, file: !19, line: 418, baseType: !109, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !796, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !796, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !796, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !796, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !796, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !796, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !796, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !771, file: !19, line: 437, baseType: !807, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!109, !505, !678, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !811, file: !19, line: 346, baseType: !109, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !811, file: !19, line: 347, baseType: !427, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !811, file: !19, line: 348, baseType: !427, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !811, file: !19, line: 349, baseType: !427, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !811, file: !19, line: 350, baseType: !427, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !811, file: !19, line: 351, baseType: !427, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !811, file: !19, line: 352, baseType: !427, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !811, file: !19, line: 353, baseType: !664, size: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !811, file: !19, line: 355, baseType: !664, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !811, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !811, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !811, file: !19, line: 358, baseType: !427, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !811, file: !19, line: 359, baseType: !427, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !811, file: !19, line: 360, baseType: !427, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !811, file: !19, line: 361, baseType: !664, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !811, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !771, file: !19, line: 438, baseType: !830, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!109, !505, !767, !810}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !771, file: !19, line: 440, baseType: !807, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !771, file: !19, line: 441, baseType: !835, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!109, !505, !838}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !839, file: !19, line: 412, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !839, file: !19, line: 413, baseType: !843, size: 1344, offset: 64)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 1344, elements: !274)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !856}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !19, line: 398, baseType: !7, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !844, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !844, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !844, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !844, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !844, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !844, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !844, file: !19, line: 406, baseType: !429, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !844, file: !19, line: 407, baseType: !855, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 132, baseType: !427)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !844, file: !19, line: 408, baseType: !855, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !771, file: !19, line: 442, baseType: !786, size: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !506, file: !14, line: 1200, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !506, file: !14, line: 1201, baseType: !323, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !506, file: !14, line: 1202, baseType: !323, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !506, file: !14, line: 1203, baseType: !323, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !506, file: !14, line: 1204, baseType: !389, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !506, file: !14, line: 1205, baseType: !867, size: 320, offset: 896)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !868, line: 48, size: 320, elements: !869)
!868 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!869 = !{!870, !871, !872, !873, !874}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !867, file: !868, line: 49, baseType: !658, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !867, file: !868, line: 55, baseType: !658, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !867, file: !868, line: 57, baseType: !669, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !867, file: !868, line: 59, baseType: !667, size: 32, offset: 160)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !867, file: !868, line: 60, baseType: !173, size: 128, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !506, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !506, file: !14, line: 1207, baseType: !223, size: 32, offset: 1248)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !506, file: !14, line: 1209, baseType: !345, size: 64, offset: 1280)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !506, file: !14, line: 1211, baseType: !879, size: 64, offset: 1344)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !506, file: !14, line: 1223, baseType: !884, size: 64, offset: 1408)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !406, line: 34, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !884, file: !406, line: 35, baseType: !409, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !506, file: !14, line: 1224, baseType: !173, size: 128, offset: 1472)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !506, file: !14, line: 1225, baseType: !889, size: 64, offset: 1600)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !506, file: !14, line: 1226, baseType: !892, size: 64, offset: 1664)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !506, file: !14, line: 1227, baseType: !895, size: 64, offset: 1728)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !506, file: !14, line: 1228, baseType: !898, size: 64, offset: 1792)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !506, file: !14, line: 1229, baseType: !550, size: 128, offset: 1856)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !506, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !506, file: !14, line: 1231, baseType: !903, size: 2496, offset: 2048)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !904)
!904 = !{!905, !906, !907, !909, !941}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !19, line: 522, baseType: !7, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !903, file: !19, line: 523, baseType: !867, size: 320, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !903, file: !19, line: 524, baseType: !908, size: 192, offset: 384)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, elements: !274)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !903, file: !19, line: 525, baseType: !910, size: 1728, offset: 576)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 1728, elements: !274)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !912)
!912 = !{!913, !933, !934, !935, !936, !937, !938, !939, !940}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !911, file: !19, line: 223, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !916)
!916 = !{!917, !918, !931, !932}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !915, file: !19, line: 446, baseType: !109, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !915, file: !19, line: 447, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !921, file: !19, line: 313, baseType: !598, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !921, file: !19, line: 314, baseType: !598, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !921, file: !19, line: 315, baseType: !598, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !921, file: !19, line: 316, baseType: !598, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !921, file: !19, line: 317, baseType: !734, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !921, file: !19, line: 318, baseType: !734, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !921, file: !19, line: 319, baseType: !734, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !921, file: !19, line: 320, baseType: !764, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !915, file: !19, line: 448, baseType: !168, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !915, file: !19, line: 449, baseType: !914, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !911, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !911, file: !19, line: 226, baseType: !173, size: 128, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !911, file: !19, line: 227, baseType: !323, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !911, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !911, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !911, file: !19, line: 230, baseType: !699, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !911, file: !19, line: 231, baseType: !699, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !911, file: !19, line: 232, baseType: !345, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !903, file: !19, line: 526, baseType: !942, size: 192, offset: 2304)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 192, elements: !274)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !506, file: !14, line: 1233, baseType: !944, size: 2368, offset: 4544)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !944, file: !14, line: 1185, baseType: !243, size: 16)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !944, file: !14, line: 1186, baseType: !243, size: 16, offset: 16)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !944, file: !14, line: 1187, baseType: !949, size: 2304, offset: 64)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 2304, elements: !274)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !951, line: 12, size: 768, elements: !952)
!951 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!952 = !{!953, !975, !977, !3116, !3117}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !950, file: !951, line: 13, baseType: !954, size: 384)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !955, line: 17, size: 384, elements: !956)
!955 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!956 = !{!957, !958, !959, !966}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !954, file: !955, line: 18, baseType: !109, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !954, file: !955, line: 19, baseType: !109, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !954, file: !955, line: 20, baseType: !960, size: 192, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !961, line: 41, baseType: !962)
!961 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !961, line: 37, size: 192, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !962, file: !961, line: 38, baseType: !203, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !962, file: !961, line: 39, baseType: !173, size: 128, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !954, file: !955, line: 22, baseType: !967, size: 128, align: 64, offset: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 232, size: 128, align: 64, elements: !968)
!968 = !{!969, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !174, line: 233, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !967, file: !174, line: 234, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !970}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !950, file: !951, line: 14, baseType: !976, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !950, file: !951, line: 15, baseType: !978, size: 64, offset: 448)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !979, line: 16, size: 64, elements: !980)
!979 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !978, file: !979, line: 17, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !629, line: 746, size: 58368, elements: !984)
!984 = !{!985, !993, !994, !995, !1001, !1002, !1003, !1004, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1082, !1093, !1188, !1192, !1195, !1226, !1227, !1228, !1229, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1258, !1259, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1276, !1277, !1284, !1285, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2274, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2289, !2290, !2291, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2323, !2329, !2330, !2331, !2332, !2333, !2337, !2340, !2347, !2352, !2355, !2358, !2361, !2365, !2505, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2545, !2546, !2547, !2556, !2564, !2565, !2566, !2567, !2568, !2573, !2574, !2575, !2578, !2579, !2582, !2585, !2588, !2596, !2599, !2600, !2686, !2687, !2688, !2689, !2690, !2696, !2697, !2698, !2699, !2702, !2703, !2706, !2709, !2710, !2713, !2714, !2715, !2718, !2719, !2720, !2721, !2722, !2723, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2755, !2756, !2762, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2774, !2846, !2848, !2849, !2850, !2851, !2852, !2864, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2893, !2894, !2895}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !983, file: !629, line: 752, baseType: !986, size: 192)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !987, line: 56, size: 192, elements: !988)
!987 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!988 = !{!989, !990, !991, !992}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !987, line: 57, baseType: !323, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !986, file: !987, line: 58, baseType: !323, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !986, file: !987, line: 59, baseType: !423, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !986, file: !987, line: 61, baseType: !423, size: 32, offset: 160)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !983, file: !629, line: 754, baseType: !7, size: 32, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !983, file: !629, line: 767, baseType: !345, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !983, file: !629, line: 768, baseType: !996, size: 32, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !997, line: 113, baseType: !998)
!997 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !997, line: 111, size: 32, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !998, file: !997, line: 112, baseType: !223, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !983, file: !629, line: 770, baseType: !7, size: 32, offset: 352)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !983, file: !629, line: 771, baseType: !7, size: 32, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !983, file: !629, line: 774, baseType: !109, size: 32, offset: 416)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !983, file: !629, line: 775, baseType: !1005, size: 128, offset: 448)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1006, line: 58, size: 128, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1007 = !{!1008, !1014, !1019, !1020}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1005, file: !1006, line: 59, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1010, line: 60, size: 64, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !1010, line: 61, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !1006, line: 60, baseType: !1015, size: 32, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !1006, line: 60, size: 32, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1015, file: !1006, line: 61, baseType: !7, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1015, file: !1006, line: 62, baseType: !223, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1005, file: !1006, line: 65, baseType: !241, size: 16, offset: 96)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1005, file: !1006, line: 65, baseType: !241, size: 16, offset: 112)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !983, file: !629, line: 776, baseType: !7, size: 32, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !983, file: !629, line: 777, baseType: !323, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !983, file: !629, line: 778, baseType: !982, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !983, file: !629, line: 787, baseType: !109, size: 32, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !983, file: !629, line: 788, baseType: !109, size: 32, offset: 800)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !983, file: !629, line: 790, baseType: !109, size: 32, offset: 832)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !983, file: !629, line: 792, baseType: !109, size: 32, offset: 864)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !983, file: !629, line: 793, baseType: !109, size: 32, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !983, file: !629, line: 794, baseType: !109, size: 32, offset: 928)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !983, file: !629, line: 795, baseType: !7, size: 32, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !983, file: !629, line: 797, baseType: !1032, size: 2048, offset: 1024)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !629, line: 551, size: 2048, elements: !1033)
!1033 = !{!1034, !1039, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1061, !1064, !1065, !1066}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1032, file: !629, line: 553, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !629, line: 411, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1035, file: !629, line: 412, baseType: !323, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1035, file: !629, line: 413, baseType: !423, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1032, file: !629, line: 554, baseType: !1040, size: 192, align: 64, offset: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1041, line: 5, size: 192, align: 64, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1042 = !{!1043, !1044, !1046}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1040, file: !1041, line: 6, baseType: !323, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1040, file: !1041, line: 7, baseType: !1045, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1040, file: !1041, line: 8, baseType: !1045, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1032, file: !629, line: 555, baseType: !427, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1032, file: !629, line: 556, baseType: !427, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1032, file: !629, line: 558, baseType: !173, size: 128, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1032, file: !629, line: 559, baseType: !7, size: 32, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1032, file: !629, line: 561, baseType: !427, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1032, file: !629, line: 562, baseType: !427, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1032, file: !629, line: 563, baseType: !427, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1032, file: !629, line: 564, baseType: !427, size: 64, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1032, file: !629, line: 565, baseType: !664, size: 64, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1032, file: !629, line: 566, baseType: !427, size: 64, offset: 960)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1032, file: !629, line: 568, baseType: !427, size: 64, offset: 1024)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1032, file: !629, line: 571, baseType: !109, size: 32, offset: 1088)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1032, file: !629, line: 572, baseType: !1060, size: 64, offset: 1152)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1032, file: !629, line: 574, baseType: !1062, size: 64, offset: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !629, line: 49, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1032, file: !629, line: 576, baseType: !1062, size: 64, offset: 1280)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1032, file: !629, line: 578, baseType: !323, size: 64, offset: 1344)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1032, file: !629, line: 588, baseType: !1067, size: 512, align: 512, offset: 1536)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !629, line: 497, size: 512, align: 512, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1067, file: !629, line: 498, baseType: !427, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1067, file: !629, line: 499, baseType: !427, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1067, file: !629, line: 500, baseType: !427, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1067, file: !629, line: 501, baseType: !423, size: 32, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1067, file: !629, line: 502, baseType: !423, size: 32, offset: 224)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1067, file: !629, line: 503, baseType: !323, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1067, file: !629, line: 504, baseType: !323, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1067, file: !629, line: 505, baseType: !323, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1067, file: !629, line: 506, baseType: !1078, size: 64, align: 64, offset: 448)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !629, line: 445, size: 64, align: 64, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1078, file: !629, line: 446, baseType: !7, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1078, file: !629, line: 447, baseType: !7, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !983, file: !629, line: 798, baseType: !1083, size: 384, offset: 3072)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !629, line: 592, size: 384, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1083, file: !629, line: 593, baseType: !173, size: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1083, file: !629, line: 594, baseType: !323, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1083, file: !629, line: 595, baseType: !323, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1083, file: !629, line: 596, baseType: !7, size: 32, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1083, file: !629, line: 597, baseType: !243, size: 16, offset: 288)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1083, file: !629, line: 598, baseType: !243, size: 16, offset: 304)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1083, file: !629, line: 600, baseType: !1092, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !983, file: !629, line: 799, baseType: !1094, size: 1792, offset: 3456)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !629, line: 610, size: 1792, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1185, !1186}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1094, file: !629, line: 611, baseType: !1040, size: 192, align: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1094, file: !629, line: 618, baseType: !427, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1094, file: !629, line: 619, baseType: !427, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1094, file: !629, line: 620, baseType: !427, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1094, file: !629, line: 621, baseType: !427, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1094, file: !629, line: 622, baseType: !427, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1094, file: !629, line: 629, baseType: !664, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1094, file: !629, line: 630, baseType: !427, size: 64, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !629, line: 631, baseType: !7, size: 32, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1094, file: !629, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1094, file: !629, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1094, file: !629, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1094, file: !629, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1094, file: !629, line: 662, baseType: !1110, size: 512, offset: 704)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1111)
!1111 = !{!1112, !1120, !1121, !1126, !1181, !1182, !1183, !1184}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1110, file: !25, line: 119, baseType: !1113, size: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1114, line: 9, size: 256, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1113, file: !1114, line: 10, baseType: !1040, size: 192, align: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1113, file: !1114, line: 11, baseType: !1118, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1119, line: 29, baseType: !664)
!1119 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1110, file: !25, line: 120, baseType: !1118, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1110, file: !25, line: 121, baseType: !1122, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!24, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1110, file: !25, line: 122, baseType: !1127, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1129)
!1129 = !{!1130, !1155, !1156, !1159, !1164, !1165, !1176, !1180}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1128, file: !25, line: 160, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1132, file: !25, line: 216, baseType: !667, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1132, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1132, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1132, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1132, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1132, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1132, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1132, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1132, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1132, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1132, file: !25, line: 227, baseType: !243, size: 16, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1132, file: !25, line: 228, baseType: !243, size: 16, offset: 208)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1132, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1132, file: !25, line: 235, baseType: !1118, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1132, file: !25, line: 236, baseType: !1125, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1132, file: !25, line: 237, baseType: !1118, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1132, file: !25, line: 238, baseType: !1125, size: 64, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1132, file: !25, line: 239, baseType: !1152, size: 4096, align: 512, offset: 512)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 4096, align: 512, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 8)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1128, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1128, file: !25, line: 162, baseType: !1157, size: 32, offset: 96)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 32, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !307, line: 96, baseType: !109)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1128, file: !25, line: 163, baseType: !1160, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !396, line: 274, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !396, line: 274, size: 32, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1161, file: !396, line: 274, baseType: !400, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1128, file: !25, line: 164, baseType: !1125, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1128, file: !25, line: 165, baseType: !1166, size: 128, offset: 256)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1114, line: 14, size: 128, elements: !1167)
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1166, file: !1114, line: 15, baseType: !1169, size: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1041, line: 26, size: 128, elements: !1170)
!1170 = !{!1171, !1175}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1169, file: !1041, line: 27, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1041, line: 12, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1172, file: !1041, line: 13, baseType: !1045, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1169, file: !1041, line: 28, baseType: !1045, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1128, file: !25, line: 166, baseType: !1177, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1118}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1128, file: !25, line: 167, baseType: !1118, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1110, file: !25, line: 123, baseType: !231, size: 8, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1110, file: !25, line: 124, baseType: !231, size: 8, offset: 456)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1110, file: !25, line: 125, baseType: !231, size: 8, offset: 464)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1110, file: !25, line: 126, baseType: !231, size: 8, offset: 472)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1094, file: !629, line: 671, baseType: !1110, size: 512, offset: 1216)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1094, file: !629, line: 679, baseType: !1187, size: 64, offset: 1728)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !983, file: !629, line: 800, baseType: !1189, size: 64, offset: 5248)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !629, line: 800, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !983, file: !629, line: 809, baseType: !1193, size: 64, offset: 5312)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !629, line: 70, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !983, file: !629, line: 825, baseType: !1196, size: 2048, align: 512, offset: 5632)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !629, line: 509, size: 2048, align: 512, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1196, file: !629, line: 511, baseType: !427, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1196, file: !629, line: 512, baseType: !427, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1196, file: !629, line: 513, baseType: !427, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1196, file: !629, line: 514, baseType: !427, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1196, file: !629, line: 515, baseType: !427, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1196, file: !629, line: 516, baseType: !427, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1196, file: !629, line: 518, baseType: !427, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1196, file: !629, line: 519, baseType: !427, size: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1196, file: !629, line: 520, baseType: !664, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1196, file: !629, line: 522, baseType: !427, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1196, file: !629, line: 523, baseType: !427, size: 64, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1196, file: !629, line: 524, baseType: !664, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1196, file: !629, line: 526, baseType: !664, size: 64, offset: 768)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1196, file: !629, line: 527, baseType: !427, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1196, file: !629, line: 529, baseType: !427, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1196, file: !629, line: 530, baseType: !427, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1196, file: !629, line: 531, baseType: !427, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1196, file: !629, line: 532, baseType: !427, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1196, file: !629, line: 533, baseType: !427, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1196, file: !629, line: 535, baseType: !427, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1196, file: !629, line: 536, baseType: !427, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1196, file: !629, line: 537, baseType: !427, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1196, file: !629, line: 538, baseType: !427, size: 64, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1196, file: !629, line: 539, baseType: !427, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1196, file: !629, line: 540, baseType: !427, size: 64, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1196, file: !629, line: 541, baseType: !427, size: 64, offset: 1600)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1196, file: !629, line: 542, baseType: !427, size: 64, offset: 1664)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1196, file: !629, line: 543, baseType: !427, size: 64, offset: 1728)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !983, file: !629, line: 833, baseType: !7, size: 32, offset: 7680)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !983, file: !629, line: 836, baseType: !7, size: 32, offset: 7712)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !983, file: !629, line: 837, baseType: !109, size: 32, offset: 7744)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !983, file: !629, line: 838, baseType: !1230, size: 64, offset: 7808)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1233, line: 19, baseType: !1234)
!1233 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1233, line: 19, size: 64, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1234, file: !1233, line: 19, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 1)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !983, file: !629, line: 839, baseType: !1241, size: 64, offset: 7872)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !983, file: !629, line: 840, baseType: !1232, size: 64, offset: 7936)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !983, file: !629, line: 841, baseType: !345, size: 64, offset: 8000)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !983, file: !629, line: 843, baseType: !243, size: 16, offset: 8064)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !983, file: !629, line: 845, baseType: !243, size: 16, offset: 8080)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !983, file: !629, line: 848, baseType: !109, size: 32, offset: 8096)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !983, file: !629, line: 849, baseType: !1248, size: 32, offset: 8128)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !629, line: 718, size: 32, elements: !1249)
!1249 = !{!1250, !1257}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1248, file: !629, line: 724, baseType: !1251, size: 32)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !629, line: 719, size: 32, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1251, file: !629, line: 720, baseType: !231, size: 8)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1251, file: !629, line: 721, baseType: !231, size: 8, offset: 8)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1251, file: !629, line: 722, baseType: !231, size: 8, offset: 16)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1251, file: !629, line: 723, baseType: !231, size: 8, offset: 24)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1248, file: !629, line: 725, baseType: !423, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !983, file: !629, line: 850, baseType: !173, size: 128, offset: 8192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !983, file: !629, line: 851, baseType: !1260, size: 64, offset: 8320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !629, line: 60, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !983, file: !629, line: 855, baseType: !323, size: 64, offset: 8384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !983, file: !629, line: 856, baseType: !231, size: 8, offset: 8448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !983, file: !629, line: 857, baseType: !231, size: 8, offset: 8456)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !983, file: !629, line: 858, baseType: !109, size: 32, offset: 8480)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !983, file: !629, line: 859, baseType: !173, size: 128, offset: 8512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !983, file: !629, line: 860, baseType: !109, size: 32, offset: 8640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !983, file: !629, line: 861, baseType: !173, size: 128, offset: 8704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !983, file: !629, line: 873, baseType: !1270, size: 256, offset: 8832)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !629, line: 376, size: 256, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1270, file: !629, line: 381, baseType: !323, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1270, file: !629, line: 384, baseType: !429, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1270, file: !629, line: 389, baseType: !429, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1270, file: !629, line: 392, baseType: !429, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !983, file: !629, line: 875, baseType: !173, size: 128, offset: 9088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !983, file: !629, line: 877, baseType: !1278, size: 320, offset: 9216)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1279, line: 86, size: 320, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1278, file: !1279, line: 87, baseType: !109, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1278, file: !1279, line: 88, baseType: !173, size: 128, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1278, file: !1279, line: 89, baseType: !173, size: 128, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !983, file: !629, line: 878, baseType: !1040, size: 192, align: 64, offset: 9536)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !983, file: !629, line: 881, baseType: !1286, size: 64, offset: 9728)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1288)
!1288 = !{!1289, !2193}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !38, line: 734, baseType: !1290, size: 10240)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !38, line: 734, size: 10240, elements: !1291)
!1291 = !{!1292, !1296, !1309, !2057, !2058, !2059, !2060, !2061, !2062, !2069, !2070, !2071, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2110, !2112, !2115, !2162, !2163, !2164, !2167, !2168, !2169, !2172, !2173, !2174, !2180, !2181}
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !38, line: 739, baseType: !1293, size: 512, align: 512)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !38, line: 739, size: 512, align: 512, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1293, file: !38, line: 747, baseType: !223, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1290, file: !38, line: 750, baseType: !1297, size: 128, offset: 512)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1298, line: 218, size: 128, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1299 = !{!1300, !1307, !1308}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !1298, line: 219, baseType: !1301, size: 32)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !1298, line: 219, size: 32, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1301, file: !1298, line: 220, baseType: !203, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1301, file: !1298, line: 221, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1298, line: 197, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1298, line: 197, elements: !558)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1297, file: !1298, line: 223, baseType: !7, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1297, file: !1298, line: 224, baseType: !345, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1290, file: !38, line: 752, baseType: !1310, size: 64, offset: 640)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!323, !1313, !323, !323, !323, !323}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1315)
!1315 = !{!1316, !1322, !1323, !1325, !1326, !1327, !1328, !1329, !1381, !1576, !1585, !1586, !1587, !2047, !2048, !2049, !2050, !2052, !2053, !2056}
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !14, line: 995, baseType: !1317, size: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1314, file: !14, line: 995, size: 128, elements: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1317, file: !14, line: 996, baseType: !1009, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1317, file: !14, line: 997, baseType: !967, size: 128, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1317, file: !14, line: 998, baseType: !7, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1314, file: !14, line: 1005, baseType: !203, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1314, file: !14, line: 1006, baseType: !1324, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 156, baseType: !7)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1314, file: !14, line: 1007, baseType: !658, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1314, file: !14, line: 1008, baseType: !654, size: 256, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1314, file: !14, line: 1009, baseType: !515, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1314, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1314, file: !14, line: 1011, baseType: !1330, size: 256, offset: 640)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1331)
!1331 = !{!1332, !1353, !1377, !1378, !1379, !1380}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1330, file: !14, line: 949, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1334, line: 34, baseType: !1335)
!1334 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1334, line: 25, size: 64, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1335, file: !1334, line: 26, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1339, line: 27, baseType: !1340)
!1339 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1339, line: 13, size: 64, elements: !1341)
!1341 = !{!1342, !1352}
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1339, line: 14, baseType: !1343, size: 32)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !1339, line: 14, size: 32, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1343, file: !1339, line: 15, baseType: !223, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1339, line: 16, baseType: !1347, size: 32)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !1339, line: 16, size: 32, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1347, file: !1339, line: 18, baseType: !231, size: 8)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1347, file: !1339, line: 19, baseType: !1351, size: 24, offset: 8)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 24, elements: !274)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1340, file: !1339, line: 26, baseType: !215, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1330, file: !14, line: 950, baseType: !1354, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1364, !1365, !1366, !1367}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1355, file: !30, line: 61, baseType: !996, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1355, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !30, line: 63, baseType: !203, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1355, file: !30, line: 65, baseType: !1361, size: 256, offset: 128)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 256, elements: !1362)
!1362 = !{!1363}
!1363 = !DISubrange(count: 4)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1355, file: !30, line: 66, baseType: !546, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1355, file: !30, line: 68, baseType: !960, size: 192, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1355, file: !30, line: 69, baseType: !967, size: 128, align: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1355, file: !30, line: 70, baseType: !1368, offset: 768)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1369, elements: !1375)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1369, file: !30, line: 55, baseType: !109, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1369, file: !30, line: 56, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1375 = !{!1376}
!1376 = !DISubrange(count: -1)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1330, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1330, file: !14, line: 952, baseType: !360, size: 32, offset: 160)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1330, file: !14, line: 952, baseType: !360, size: 32, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1330, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1314, file: !14, line: 1012, baseType: !1382, size: 64, offset: 896)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1385, line: 110, size: 1472, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1403, !1404, !1405, !1406, !1407, !1408, !1521, !1522, !1523, !1524, !1525, !1556, !1559, !1563, !1571}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1384, file: !1385, line: 111, baseType: !658, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1384, file: !1385, line: 112, baseType: !360, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1384, file: !1385, line: 113, baseType: !369, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1384, file: !1385, line: 114, baseType: !360, size: 32, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1384, file: !1385, line: 115, baseType: !369, size: 32, offset: 160)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1384, file: !1385, line: 116, baseType: !360, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1384, file: !1385, line: 117, baseType: !369, size: 32, offset: 224)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1384, file: !1385, line: 118, baseType: !360, size: 32, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1384, file: !1385, line: 119, baseType: !369, size: 32, offset: 288)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1384, file: !1385, line: 120, baseType: !7, size: 32, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1384, file: !1385, line: 121, baseType: !1398, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1399, line: 24, baseType: !1400)
!1399 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1399, line: 24, size: 64, elements: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1400, file: !1399, line: 24, baseType: !427, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1384, file: !1385, line: 122, baseType: !1398, size: 64, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1384, file: !1385, line: 123, baseType: !1398, size: 64, offset: 512)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1384, file: !1385, line: 124, baseType: !1398, size: 64, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1384, file: !1385, line: 125, baseType: !1398, size: 64, offset: 640)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1384, file: !1385, line: 127, baseType: !235, size: 8, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1384, file: !1385, line: 129, baseType: !1409, size: 64, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1411, line: 195, size: 1728, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1412 = !{!1413, !1414, !1419, !1424, !1425, !1428, !1429, !1434, !1435, !1436, !1437, !1440, !1441, !1442, !1444, !1445, !1485, !1506}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1410, file: !1411, line: 196, baseType: !996, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1410, file: !1411, line: 197, baseType: !1415, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1411, line: 28, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 104, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !232, line: 20, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !234, line: 26, baseType: !109)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 198, baseType: !1420, size: 192, offset: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 198, size: 192, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1420, file: !1411, line: 199, baseType: !173, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1420, file: !1411, line: 200, baseType: !1040, size: 192, align: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1410, file: !1411, line: 205, baseType: !867, size: 320, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1410, file: !1411, line: 206, baseType: !1426, size: 64, offset: 576)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1411, line: 206, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1410, file: !1411, line: 207, baseType: !345, size: 64, offset: 640)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 208, baseType: !1430, size: 64, offset: 704)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 208, size: 64, elements: !1431)
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1430, file: !1411, line: 209, baseType: !707, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1430, file: !1411, line: 210, baseType: !707, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1410, file: !1411, line: 212, baseType: !707, size: 64, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1410, file: !1411, line: 213, baseType: !360, size: 32, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1410, file: !1411, line: 214, baseType: !369, size: 32, offset: 864)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1410, file: !1411, line: 215, baseType: !1438, size: 32, offset: 896)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1411, line: 31, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 110, baseType: !423)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1410, file: !1411, line: 216, baseType: !243, size: 16, offset: 928)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1410, file: !1411, line: 217, baseType: !243, size: 16, offset: 944)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1410, file: !1411, line: 221, baseType: !1443, size: 16, offset: 960)
!1443 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !1411, line: 228, baseType: !323, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 245, baseType: !1446, size: 320, offset: 1088)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 245, size: 320, elements: !1447)
!1447 = !{!1448, !1477}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1446, file: !1411, line: 246, baseType: !1449, size: 320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1411, line: 114, size: 320, elements: !1450)
!1450 = !{!1451, !1452, !1464, !1467, !1476}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1449, file: !1411, line: 116, baseType: !323, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1411, line: 117, baseType: !1453, size: 64, offset: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1411, line: 117, size: 64, elements: !1454)
!1454 = !{!1455, !1463}
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1411, line: 118, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1453, file: !1411, line: 118, size: 64, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1456, file: !1411, line: 120, baseType: !241, size: 16)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1456, file: !1411, line: 121, baseType: !1460, size: 48, offset: 16)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 48, elements: !1461)
!1461 = !{!1462}
!1462 = !DISubrange(count: 6)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1453, file: !1411, line: 127, baseType: !323, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !1411, line: 129, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1411, line: 102, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1449, file: !1411, line: 130, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1411, line: 108, size: 192, elements: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1469, file: !1411, line: 109, baseType: !967, size: 128, align: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1469, file: !1411, line: 110, baseType: !996, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1469, file: !1411, line: 111, baseType: !1474, size: 8, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 35, baseType: !1475)
!1475 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1449, file: !1411, line: 131, baseType: !192, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1411, line: 247, baseType: !1478, size: 320)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1446, file: !1411, line: 247, size: 320, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1478, file: !1411, line: 248, baseType: !323, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1478, file: !1411, line: 249, baseType: !323, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1478, file: !1411, line: 250, baseType: !1465, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1478, file: !1411, line: 251, baseType: !1468, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1478, file: !1411, line: 252, baseType: !273, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 260, baseType: !1486, size: 256, offset: 1408)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 260, size: 256, elements: !1487)
!1487 = !{!1488, !1494}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1486, file: !1411, line: 261, baseType: !1489, size: 256)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1411, line: 134, size: 256, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1489, file: !1411, line: 135, baseType: !345, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1489, file: !1411, line: 136, baseType: !1493, size: 256)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !1362)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1411, line: 262, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1486, file: !1411, line: 262, size: 256, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1495, file: !1411, line: 264, baseType: !173, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1495, file: !1411, line: 265, baseType: !1499, size: 128, offset: 128)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1500, line: 22, size: 128, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1501 = !{!1502, !1505}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1499, file: !1500, line: 23, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1500, line: 23, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1499, file: !1500, line: 24, baseType: !323, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1410, file: !1411, line: 280, baseType: !1507, size: 64, offset: 1664)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1411, line: 176, size: 192, elements: !1509)
!1509 = !{!1510, !1519, !1520}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1508, file: !1411, line: 177, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1411, line: 171, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!109, !1409, !1515, !1517, !1409}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1508, file: !1411, line: 178, baseType: !1409, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1508, file: !1411, line: 179, baseType: !1465, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1384, file: !1385, line: 130, baseType: !1409, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1384, file: !1385, line: 131, baseType: !1409, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1384, file: !1385, line: 132, baseType: !1409, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1384, file: !1385, line: 135, baseType: !345, size: 64, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1384, file: !1385, line: 137, baseType: !1526, size: 64, offset: 1088)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1528, line: 14, size: 1088, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1529 = !{!1530, !1531, !1540, !1541, !1542, !1543, !1544, !1545}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1527, file: !1528, line: 15, baseType: !996, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1527, file: !1528, line: 17, baseType: !1532, size: 320, offset: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1533, line: 22, size: 320, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1534 = !{!1535, !1536, !1537, !1538}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !1533, line: 23, baseType: !667, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1532, file: !1533, line: 24, baseType: !664, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1532, file: !1533, line: 26, baseType: !173, size: 128, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1532, file: !1533, line: 28, baseType: !1539, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1527, file: !1528, line: 19, baseType: !323, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1527, file: !1528, line: 20, baseType: !658, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1527, file: !1528, line: 23, baseType: !550, size: 128, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1527, file: !1528, line: 24, baseType: !360, size: 32, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1527, file: !1528, line: 29, baseType: !658, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1527, file: !1528, line: 36, baseType: !1546, size: 320, offset: 768)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1547, line: 15, size: 320, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1546, file: !1547, line: 16, baseType: !667, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1546, file: !1547, line: 18, baseType: !109, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1546, file: !1547, line: 19, baseType: !109, size: 32, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1546, file: !1547, line: 20, baseType: !109, size: 32, offset: 96)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1546, file: !1547, line: 21, baseType: !109, size: 32, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1546, file: !1547, line: 22, baseType: !323, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !1547, line: 23, baseType: !323, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1384, file: !1385, line: 138, baseType: !1557, size: 64, offset: 1152)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !361, line: 18, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1384, file: !1385, line: 139, baseType: !1560, size: 64, offset: 1216)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1562, line: 16, flags: DIFlagFwdDecl)
!1562 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1384, file: !1385, line: 140, baseType: !1564, size: 64, offset: 1280)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1385, line: 25, size: 64, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1565, file: !1385, line: 26, baseType: !223, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1565, file: !1385, line: 27, baseType: !109, size: 32, offset: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1565, file: !1385, line: 28, baseType: !1570, offset: 64)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, elements: !1375)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !1385, line: 142, baseType: !1572, size: 128, offset: 1344)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !1385, line: 142, size: 128, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1572, file: !1385, line: 143, baseType: !109, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1572, file: !1385, line: 144, baseType: !967, size: 128, align: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1314, file: !14, line: 1013, baseType: !1577, size: 256, offset: 960)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1577, file: !14, line: 971, baseType: !323, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1577, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1577, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1577, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1577, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1577, file: !14, line: 976, baseType: !515, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1314, file: !14, line: 1014, baseType: !779, size: 128, offset: 1216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1314, file: !14, line: 1015, baseType: !354, size: 64, offset: 1344)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1314, file: !14, line: 1016, baseType: !1588, size: 64, offset: 1408)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1591)
!1591 = !{!1592, !1593, !1597, !1602, !1606, !1635, !1636, !1642, !1655, !1663, !1667, !1668, !1969, !1970, !1974, !1979, !1980, !1984, !1988, !1994, !1995, !1999, !2000, !2006, !2010, !2014, !2020, !2024, !2028, !2032, !2036, !2037, !2043}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1590, file: !14, line: 1915, baseType: !168, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1590, file: !14, line: 1916, baseType: !1594, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!515, !1313, !515, !109}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1590, file: !14, line: 1917, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!305, !1313, !273, !320, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1590, file: !14, line: 1918, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!305, !1313, !192, !320, !1601}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1590, file: !14, line: 1919, baseType: !1607, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!305, !1610, !1632}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1619, !1620, !1621, !1622}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1611, file: !14, line: 374, baseType: !1313, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1611, file: !14, line: 375, baseType: !515, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1611, file: !14, line: 376, baseType: !1616, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1610, !309}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1611, file: !14, line: 377, baseType: !345, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1611, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1611, file: !14, line: 379, baseType: !241, size: 16, offset: 288)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !14, line: 380, baseType: !1623, size: 64, offset: 320)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !14, line: 380, size: 64, elements: !1624)
!1624 = !{!1625, !1628}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1623, file: !14, line: 386, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1623, file: !14, line: 395, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!305, !345}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1634, line: 17, flags: DIFlagFwdDecl)
!1634 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1590, file: !14, line: 1920, baseType: !1607, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1590, file: !14, line: 1921, baseType: !1637, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!109, !1610, !1640, !7}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1590, file: !14, line: 1923, baseType: !1643, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!109, !1313, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1648)
!1648 = !{!1649, !1654}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1647, file: !14, line: 1859, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1474, !1646, !192, !109, !515, !427, !7}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1647, file: !14, line: 1860, baseType: !515, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1590, file: !14, line: 1924, baseType: !1656, size: 64, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1659, !1313, !1661}
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1660, line: 59, baseType: !7)
!1660 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !530, line: 31, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1590, file: !14, line: 1925, baseType: !1664, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!309, !1313, !7, !323}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1590, file: !14, line: 1926, baseType: !1664, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1590, file: !14, line: 1927, baseType: !1669, size: 64, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!109, !1313, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1674)
!1674 = !{!1675, !1684, !1685, !1693, !1700, !1701, !1706, !1707, !1712, !1713, !1716, !1962, !1963, !1964, !1965, !1966, !1967}
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !38, line: 628, baseType: !1676, size: 128)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !38, line: 628, size: 128, elements: !1677)
!1677 = !{!1678, !1683}
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !38, line: 629, baseType: !1679, size: 128)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !38, line: 629, size: 128, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1679, file: !38, line: 631, baseType: !323, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1679, file: !38, line: 632, baseType: !323, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1676, file: !38, line: 635, baseType: !967, size: 128, align: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1673, file: !38, line: 639, baseType: !1286, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1673, file: !38, line: 640, baseType: !1686, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1687, line: 297, baseType: !1688)
!1687 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1687, line: 297, size: 64, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1688, file: !1687, line: 297, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1692, line: 19, baseType: !323)
!1692 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !38, line: 646, baseType: !1694, size: 64, offset: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !38, line: 646, size: 64, elements: !1695)
!1695 = !{!1696, !1699}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1694, file: !38, line: 647, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !323)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1694, file: !38, line: 648, baseType: !1698, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1673, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1673, file: !38, line: 667, baseType: !1702, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1704)
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1703, file: !38, line: 580, baseType: !867, size: 320)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1673, file: !38, line: 670, baseType: !1474, size: 8, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1673, file: !38, line: 681, baseType: !1708, size: 256, offset: 512)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1673, file: !38, line: 678, size: 256, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1708, file: !38, line: 679, baseType: !1040, size: 192, align: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1708, file: !38, line: 680, baseType: !323, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1673, file: !38, line: 689, baseType: !173, size: 128, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1673, file: !38, line: 691, baseType: !1714, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1673, file: !38, line: 694, baseType: !1717, size: 64, offset: 960)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1720, line: 563, size: 1024, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1721 = !{!1722, !1726, !1727, !1731, !1735, !1739, !1926, !1930, !1934, !1938, !1939, !1940, !1944, !1948, !1954, !1958}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1719, file: !1720, line: 564, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1672}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1719, file: !1720, line: 569, baseType: !1723, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1719, file: !1720, line: 571, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!109, !1672, !323}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1719, file: !1720, line: 572, baseType: !1732, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!109, !1672}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1719, file: !1720, line: 578, baseType: !1736, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!109, !1672, !323, !323, !323}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1719, file: !1720, line: 580, baseType: !1740, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1720, line: 512, size: 896, elements: !1746)
!1746 = !{!1747, !1755, !1756, !1763, !1770, !1780, !1919, !1920, !1922, !1924}
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1720, line: 513, baseType: !1748, size: 320)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1745, file: !1720, line: 513, size: 320, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1748, file: !1720, line: 514, baseType: !1672, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1748, file: !1720, line: 515, baseType: !719, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1748, file: !1720, line: 516, baseType: !323, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1748, file: !1720, line: 517, baseType: !323, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1748, file: !1720, line: 518, baseType: !323, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1720, line: 520, baseType: !37, size: 32, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1745, file: !1720, line: 522, baseType: !1757, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1692, line: 22, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1692, line: 22, size: 64, elements: !1760)
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1759, file: !1692, line: 22, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1692, line: 15, baseType: !323)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1745, file: !1720, line: 524, baseType: !1764, size: 64, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1687, line: 372, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1687, line: 372, size: 64, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1766, file: !1687, line: 372, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1692, line: 16, baseType: !323)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1720, line: 527, baseType: !1771, size: 64, offset: 512)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !1720, line: 527, size: 64, elements: !1772)
!1772 = !{!1773, !1779}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1771, file: !1720, line: 528, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1692, line: 21, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1692, line: 21, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1775, file: !1692, line: 21, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1692, line: 14, baseType: !323)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1771, file: !1720, line: 529, baseType: !1758, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1745, file: !1720, line: 534, baseType: !1781, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1783)
!1783 = !{!1784, !1785, !1913, !1918}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !38, line: 75, baseType: !323, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !38, line: 83, baseType: !1786, size: 320, offset: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !38, line: 83, size: 320, elements: !1787)
!1787 = !{!1788, !1809, !1823, !1827, !1912}
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !38, line: 84, baseType: !1789, size: 320)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !38, line: 84, size: 320, elements: !1790)
!1790 = !{!1791, !1802, !1803, !1808}
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !38, line: 90, baseType: !1792, size: 128)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !38, line: 90, size: 128, elements: !1793)
!1793 = !{!1794, !1795, !1800, !1801}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1792, file: !38, line: 91, baseType: !173, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !38, line: 94, baseType: !1796, size: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1792, file: !38, line: 94, size: 128, elements: !1797)
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1796, file: !38, line: 96, baseType: !345, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1796, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1792, file: !38, line: 102, baseType: !173, size: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1792, file: !38, line: 103, baseType: !173, size: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1789, file: !38, line: 106, baseType: !350, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !38, line: 107, baseType: !1804, size: 64, offset: 192)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !38, line: 107, size: 64, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1804, file: !38, line: 108, baseType: !323, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1804, file: !38, line: 109, baseType: !323, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1789, file: !38, line: 117, baseType: !323, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !38, line: 119, baseType: !1810, size: 320)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !38, line: 119, size: 320, elements: !1811)
!1811 = !{!1812, !1813, !1816, !1817, !1818}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1810, file: !38, line: 124, baseType: !323, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1810, file: !38, line: 125, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1810, file: !38, line: 126, baseType: !323, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1810, file: !38, line: 127, baseType: !323, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !38, line: 128, baseType: !1819, size: 64, offset: 256)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1810, file: !38, line: 128, size: 64, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1819, file: !38, line: 133, baseType: !323, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1819, file: !38, line: 138, baseType: !658, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !38, line: 141, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !38, line: 141, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1824, file: !38, line: 142, baseType: !323, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !38, line: 144, baseType: !1828, size: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !38, line: 144, size: 128, elements: !1829)
!1829 = !{!1830, !1911}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1828, file: !38, line: 146, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1833)
!1833 = !{!1834, !1844, !1865, !1876, !1877, !1878, !1879, !1893, !1894, !1895}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1832, file: !54, line: 127, baseType: !1835, size: 384)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1836)
!1836 = !{!1837, !1838, !1840, !1841, !1842, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1835, file: !54, line: 22, baseType: !323, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1835, file: !54, line: 23, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1835, file: !54, line: 24, baseType: !1839, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1835, file: !54, line: 25, baseType: !323, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1835, file: !54, line: 26, baseType: !323, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1835, file: !54, line: 27, baseType: !323, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1832, file: !54, line: 128, baseType: !1845, size: 128, offset: 384)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1846, line: 105, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1845, file: !1846, line: 110, baseType: !323, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1845, file: !1846, line: 118, baseType: !1850, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1846, line: 95, size: 448, elements: !1852)
!1852 = !{!1853, !1854, !1860, !1861, !1862, !1863, !1864}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1851, file: !1846, line: 96, baseType: !658, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1851, file: !1846, line: 97, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1846, line: 60, baseType: !1857)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1851, file: !1846, line: 98, baseType: !1855, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1851, file: !1846, line: 99, baseType: !1474, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1851, file: !1846, line: 100, baseType: !1474, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1851, file: !1846, line: 101, baseType: !967, size: 128, align: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1851, file: !1846, line: 102, baseType: !1859, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1832, file: !54, line: 129, baseType: !1866, size: 256, offset: 512)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1867, line: 26, size: 256, elements: !1868)
!1867 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1866, file: !1867, line: 27, baseType: !7, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1866, file: !1867, line: 28, baseType: !1871, size: 192, offset: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1872, line: 43, size: 192, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1871, file: !1872, line: 44, baseType: !667, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1871, file: !1872, line: 45, baseType: !173, size: 128, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1832, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1832, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1832, file: !54, line: 132, baseType: !323, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1832, file: !54, line: 133, baseType: !1880, size: 64, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1883)
!1883 = !{!1884, !1888, !1889}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1882, file: !54, line: 83, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1781}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1882, file: !54, line: 89, baseType: !1740, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1882, file: !54, line: 100, baseType: !1890, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!109, !1831, !323, !323, !109}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1832, file: !54, line: 134, baseType: !345, size: 64, offset: 960)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1832, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !54, line: 136, baseType: !1896, size: 128, offset: 1088)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !54, line: 136, size: 128, elements: !1897)
!1897 = !{!1898, !1904}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1896, file: !54, line: 137, baseType: !1899, size: 128)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1900, line: 6, size: 128, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1899, file: !1900, line: 7, baseType: !427, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1899, file: !1900, line: 8, baseType: !427, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !54, line: 138, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !54, line: 138, elements: !1906)
!1906 = !{!1907, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1905, file: !54, line: 138, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !54, line: 138, elements: !558)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1905, file: !54, line: 138, baseType: !1910)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, elements: !1375)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1828, file: !38, line: 147, baseType: !345, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1786, file: !38, line: 161, baseType: !967, size: 128, align: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !38, line: 164, baseType: !1914, size: 32, offset: 384)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !38, line: 164, size: 32, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1914, file: !38, line: 169, baseType: !223, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1914, file: !38, line: 177, baseType: !7, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1782, file: !38, line: 181, baseType: !223, size: 32, offset: 416)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1745, file: !1720, line: 535, baseType: !1781, size: 64, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1745, file: !1720, line: 541, baseType: !1921, size: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1745, file: !1720, line: 545, baseType: !1923, size: 64, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1745, file: !1720, line: 549, baseType: !1925, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1687, line: 520, baseType: !1781)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1719, file: !1720, line: 581, baseType: !1927, size: 64, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1743, !1744, !7}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1719, file: !1720, line: 582, baseType: !1931, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1743, !1744, !323, !323}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1719, file: !1720, line: 584, baseType: !1935, size: 64, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!323, !1672}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1719, file: !1720, line: 588, baseType: !1740, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1719, file: !1720, line: 591, baseType: !1740, size: 64, offset: 640)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1719, file: !1720, line: 597, baseType: !1941, size: 64, offset: 704)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!109, !1672, !323, !345, !109, !109}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1719, file: !1720, line: 603, baseType: !1945, size: 64, offset: 768)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!192, !1672}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1719, file: !1720, line: 613, baseType: !1949, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!109, !1672, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1719, file: !1720, line: 625, baseType: !1955, size: 64, offset: 896)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1952, !1672, !323}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1719, file: !1720, line: 633, baseType: !1959, size: 64, offset: 960)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1781, !1672, !323}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1673, file: !38, line: 697, baseType: !323, size: 64, offset: 1024)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1673, file: !38, line: 699, baseType: !1313, size: 64, offset: 1088)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1673, file: !38, line: 700, baseType: !345, size: 64, offset: 1152)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1673, file: !38, line: 711, baseType: !658, size: 64, offset: 1216)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1673, file: !38, line: 717, baseType: !1952, size: 64, offset: 1280)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1673, file: !38, line: 722, baseType: !1968, offset: 1344)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !558)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1590, file: !14, line: 1928, baseType: !323, size: 64, offset: 768)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1590, file: !14, line: 1929, baseType: !1971, size: 64, offset: 832)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!109, !354, !1313}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1590, file: !14, line: 1930, baseType: !1975, size: 64, offset: 896)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!109, !1313, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !345)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1590, file: !14, line: 1931, baseType: !1971, size: 64, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1590, file: !14, line: 1932, baseType: !1981, size: 64, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!109, !1313, !515, !515, !109}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1590, file: !14, line: 1933, baseType: !1985, size: 64, offset: 1088)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!109, !109, !1313, !109}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !14, line: 1934, baseType: !1989, size: 64, offset: 1152)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!109, !1313, !109, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1590, file: !14, line: 1935, baseType: !1310, size: 64, offset: 1216)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1590, file: !14, line: 1936, baseType: !1996, size: 64, offset: 1280)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!109, !109}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1590, file: !14, line: 1937, baseType: !1989, size: 64, offset: 1344)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1590, file: !14, line: 1938, baseType: !2001, size: 64, offset: 1408)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!305, !2004, !1313, !1601, !320, !7}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !629, line: 59, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1590, file: !14, line: 1939, baseType: !2007, size: 64, offset: 1472)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!305, !1313, !1601, !2004, !320, !7}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1590, file: !14, line: 1940, baseType: !2011, size: 64, offset: 1536)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !1313}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1590, file: !14, line: 1941, baseType: !2015, size: 64, offset: 1600)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!109, !1313, !109, !2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1590, file: !14, line: 1942, baseType: !2021, size: 64, offset: 1664)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!309, !1313, !109, !515, !515}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1590, file: !14, line: 1944, baseType: !2025, size: 64, offset: 1728)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !627, !1313}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1590, file: !14, line: 1948, baseType: !2029, size: 64, offset: 1792)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!305, !1313, !515, !1313, !515, !320, !7}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1590, file: !14, line: 1950, baseType: !2033, size: 64, offset: 1856)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!515, !1313, !515, !1313, !515, !515, !7}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1590, file: !14, line: 1953, baseType: !1981, size: 64, offset: 1920)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1590, file: !14, line: 1954, baseType: !2038, size: 64, offset: 1984)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!109, !2041, !7}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1590, file: !14, line: 1955, baseType: !2044, size: 64, offset: 2048)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!109, !2041, !1640, !7}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1314, file: !14, line: 1018, baseType: !427, size: 64, offset: 1472)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1314, file: !14, line: 1020, baseType: !345, size: 64, offset: 1536)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1314, file: !14, line: 1023, baseType: !345, size: 64, offset: 1600)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1314, file: !14, line: 1027, baseType: !2051, size: 64, offset: 1664)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1314, file: !14, line: 1029, baseType: !350, size: 64, offset: 1728)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1314, file: !14, line: 1030, baseType: !2054, size: 32, offset: 1792)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2055, line: 8, baseType: !423)
!2055 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1314, file: !14, line: 1031, baseType: !2054, size: 32, offset: 1824)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1290, file: !38, line: 756, baseType: !323, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1290, file: !38, line: 757, baseType: !323, size: 64, offset: 768)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1290, file: !38, line: 760, baseType: !323, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1290, file: !38, line: 761, baseType: !323, size: 64, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1290, file: !38, line: 763, baseType: !323, size: 64, offset: 960)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1290, file: !38, line: 764, baseType: !2063, size: 64, offset: 1024)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1687, line: 299, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1687, line: 299, size: 64, elements: !2066)
!2066 = !{!2067}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2065, file: !1687, line: 299, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1692, line: 18, baseType: !323)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1290, file: !38, line: 773, baseType: !223, size: 32, offset: 1088)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1290, file: !38, line: 785, baseType: !223, size: 32, offset: 1120)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1290, file: !38, line: 795, baseType: !2072, size: 64, offset: 1152)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2073, file: !38, line: 727, baseType: !427, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2073, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1290, file: !38, line: 801, baseType: !323, size: 64, offset: 1216)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1290, file: !38, line: 804, baseType: !658, size: 64, offset: 1280)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1290, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1290, file: !38, line: 808, baseType: !203, size: 32, offset: 1376)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1290, file: !38, line: 823, baseType: !867, size: 320, offset: 1408)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1290, file: !38, line: 825, baseType: !173, size: 128, offset: 1728)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1290, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1290, file: !38, line: 849, baseType: !323, size: 64, offset: 1920)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1290, file: !38, line: 850, baseType: !323, size: 64, offset: 1984)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1290, file: !38, line: 852, baseType: !323, size: 64, offset: 2048)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1290, file: !38, line: 853, baseType: !323, size: 64, offset: 2112)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1290, file: !38, line: 854, baseType: !660, size: 64, offset: 2176)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1290, file: !38, line: 855, baseType: !323, size: 64, offset: 2240)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1290, file: !38, line: 856, baseType: !323, size: 64, offset: 2304)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1290, file: !38, line: 857, baseType: !323, size: 64, offset: 2368)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1290, file: !38, line: 858, baseType: !323, size: 64, offset: 2432)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1290, file: !38, line: 865, baseType: !400, size: 32, offset: 2496)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1290, file: !38, line: 867, baseType: !203, size: 32, offset: 2528)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1290, file: !38, line: 869, baseType: !323, size: 64, offset: 2560)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1290, file: !38, line: 869, baseType: !323, size: 64, offset: 2624)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1290, file: !38, line: 869, baseType: !323, size: 64, offset: 2688)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1290, file: !38, line: 869, baseType: !323, size: 64, offset: 2752)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1290, file: !38, line: 870, baseType: !323, size: 64, offset: 2816)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1290, file: !38, line: 870, baseType: !323, size: 64, offset: 2880)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1290, file: !38, line: 870, baseType: !323, size: 64, offset: 2944)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1290, file: !38, line: 871, baseType: !323, size: 64, offset: 3008)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1290, file: !38, line: 871, baseType: !323, size: 64, offset: 3072)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1290, file: !38, line: 871, baseType: !323, size: 64, offset: 3136)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1290, file: !38, line: 871, baseType: !323, size: 64, offset: 3200)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1290, file: !38, line: 873, baseType: !2107, size: 3328, offset: 3264)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 3328, elements: !2108)
!2108 = !{!2109}
!2109 = !DISubrange(count: 52)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1290, file: !38, line: 875, baseType: !2111, size: 1280, offset: 6592)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1532, size: 1280, elements: !1362)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1290, file: !38, line: 877, baseType: !2113, size: 64, offset: 7872)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1290, file: !38, line: 880, baseType: !2116, size: 1088, offset: 7936)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2117, line: 72, baseType: !2118)
!2117 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2117, line: 23, size: 1088, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2127, !2128, !2129, !2130, !2157, !2158, !2159}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2118, file: !2117, line: 28, baseType: !427, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2118, file: !2117, line: 38, baseType: !660, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2118, file: !2117, line: 40, baseType: !323, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2118, file: !2117, line: 43, baseType: !867, size: 320, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2118, file: !2117, line: 44, baseType: !2125, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2117, line: 44, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !2117, line: 48, baseType: !323, size: 64, offset: 576)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2118, file: !2117, line: 59, baseType: !654, size: 256, offset: 640)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2118, file: !2117, line: 60, baseType: !345, size: 64, offset: 896)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2118, file: !2117, line: 61, baseType: !2131, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2133)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2134, line: 13, size: 1216, elements: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2133, file: !2134, line: 14, baseType: !345, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !2134, line: 15, baseType: !323, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2133, file: !2134, line: 17, baseType: !323, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2133, file: !2134, line: 17, baseType: !323, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2133, file: !2134, line: 18, baseType: !323, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2133, file: !2134, line: 18, baseType: !323, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2133, file: !2134, line: 19, baseType: !2143, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2133, file: !2134, line: 21, baseType: !309, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2133, file: !2134, line: 23, baseType: !309, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2133, file: !2134, line: 24, baseType: !309, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2133, file: !2134, line: 25, baseType: !309, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2133, file: !2134, line: 26, baseType: !309, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2133, file: !2134, line: 27, baseType: !309, size: 64, offset: 768)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2133, file: !2134, line: 28, baseType: !309, size: 64, offset: 832)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2133, file: !2134, line: 29, baseType: !309, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2133, file: !2134, line: 30, baseType: !309, size: 64, offset: 960)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2133, file: !2134, line: 31, baseType: !309, size: 64, offset: 1024)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2133, file: !2134, line: 32, baseType: !309, size: 64, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2133, file: !2134, line: 33, baseType: !309, size: 64, offset: 1152)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2118, file: !2117, line: 63, baseType: !223, size: 32, offset: 1024)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2118, file: !2117, line: 69, baseType: !241, size: 16, offset: 1056)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2118, file: !2117, line: 70, baseType: !2160, size: 16, offset: 1072)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !232, line: 18, baseType: !2161)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !234, line: 23, baseType: !1443)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !38, line: 882, baseType: !323, size: 64, offset: 9024)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1290, file: !38, line: 885, baseType: !203, size: 32, offset: 9088)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1290, file: !38, line: 886, baseType: !2165, size: 64, offset: 9152)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1290, file: !38, line: 901, baseType: !1557, size: 64, offset: 9216)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1290, file: !38, line: 904, baseType: !1313, size: 64, offset: 9280)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1290, file: !38, line: 906, baseType: !2170, size: 64, offset: 9344)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1290, file: !38, line: 930, baseType: !223, size: 32, offset: 9408)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1290, file: !38, line: 933, baseType: !223, size: 32, offset: 9440)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1290, file: !38, line: 935, baseType: !2175, size: 64, offset: 9472)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2176)
!2176 = !{!2177}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2175, file: !68, line: 104, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1290, file: !38, line: 940, baseType: !658, size: 64, offset: 9536)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1290, file: !38, line: 942, baseType: !2182, size: 256, offset: 9600)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2183, line: 98, size: 256, elements: !2184)
!2183 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2184 = !{!2185, !2186, !2187}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2182, file: !2183, line: 99, baseType: !658, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2182, file: !2183, line: 100, baseType: !173, size: 128, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2182, file: !2183, line: 101, baseType: !2188, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2183, line: 21, baseType: !2189)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1287, file: !38, line: 986, baseType: !2194, offset: 10240)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !1375)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !983, file: !629, line: 882, baseType: !1286, size: 64, offset: 9792)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !983, file: !629, line: 884, baseType: !109, size: 32, offset: 9856)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !983, file: !629, line: 885, baseType: !109, size: 32, offset: 9888)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !983, file: !629, line: 886, baseType: !109, size: 32, offset: 9920)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !983, file: !629, line: 888, baseType: !109, size: 32, offset: 9952)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !983, file: !629, line: 890, baseType: !323, size: 64, offset: 9984)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !983, file: !629, line: 893, baseType: !7, size: 32, offset: 10048)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !983, file: !629, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !983, file: !629, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !983, file: !629, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !983, file: !629, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !983, file: !629, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !983, file: !629, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !983, file: !629, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !983, file: !629, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !983, file: !629, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !983, file: !629, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !983, file: !629, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !983, file: !629, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !983, file: !629, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !983, file: !629, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !983, file: !629, line: 969, baseType: !323, size: 64, offset: 10176)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !983, file: !629, line: 971, baseType: !2218, size: 448, offset: 10240)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2219)
!2219 = !{!2220, !2221, !2226}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2218, file: !62, line: 26, baseType: !323, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2218, file: !62, line: 27, baseType: !2222, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!309, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !62, line: 28, baseType: !2227, size: 320, offset: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !62, line: 28, size: 320, elements: !2228)
!2228 = !{!2229, !2239, !2264}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2227, file: !62, line: 37, baseType: !2230, size: 320)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2227, file: !62, line: 30, size: 320, elements: !2231)
!2231 = !{!2232, !2234, !2235, !2236, !2237, !2238}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2230, file: !62, line: 31, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2230, file: !62, line: 32, baseType: !423, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2230, file: !62, line: 33, baseType: !423, size: 32, offset: 96)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2230, file: !62, line: 34, baseType: !423, size: 32, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2230, file: !62, line: 35, baseType: !427, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2230, file: !62, line: 36, baseType: !2233, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2227, file: !62, line: 47, baseType: !2240, size: 192)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2227, file: !62, line: 39, size: 192, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2263}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2240, file: !62, line: 40, baseType: !1157, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !62, line: 42, baseType: !2245, size: 64, offset: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2240, file: !62, line: 42, size: 64, elements: !2246)
!2246 = !{!2247, !2255}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2245, file: !62, line: 43, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2250, line: 7, size: 128, elements: !2251)
!2250 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2251 = !{!2252, !2254}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2249, file: !2250, line: 8, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !307, line: 93, baseType: !517)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2249, file: !2250, line: 9, baseType: !517, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2245, file: !62, line: 44, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2258, line: 7, size: 64, elements: !2259)
!2258 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2259 = !{!2260, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2257, file: !2258, line: 8, baseType: !2261, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2258, line: 5, baseType: !1417)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2257, file: !2258, line: 9, baseType: !1417, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2240, file: !62, line: 46, baseType: !427, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2227, file: !62, line: 55, baseType: !2265, size: 256)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2227, file: !62, line: 49, size: 256, elements: !2266)
!2266 = !{!2267, !2270, !2271, !2272, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2265, file: !62, line: 50, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2265, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2265, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2265, file: !62, line: 53, baseType: !323, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2265, file: !62, line: 54, baseType: !323, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !983, file: !629, line: 973, baseType: !2275, size: 32, offset: 10688)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 27, baseType: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !307, line: 28, baseType: !109)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !983, file: !629, line: 974, baseType: !2275, size: 32, offset: 10720)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !983, file: !629, line: 978, baseType: !323, size: 64, offset: 10752)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !983, file: !629, line: 987, baseType: !982, size: 64, offset: 10816)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !983, file: !629, line: 990, baseType: !982, size: 64, offset: 10880)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !983, file: !629, line: 995, baseType: !173, size: 128, offset: 10944)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !983, file: !629, line: 996, baseType: !173, size: 128, offset: 11072)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !983, file: !629, line: 997, baseType: !982, size: 64, offset: 11200)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !983, file: !629, line: 1005, baseType: !173, size: 128, offset: 11264)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !983, file: !629, line: 1006, baseType: !173, size: 128, offset: 11392)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !983, file: !629, line: 1009, baseType: !1354, size: 64, offset: 11520)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !983, file: !629, line: 1010, baseType: !2288, size: 512, offset: 11584)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 512, elements: !1362)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !983, file: !629, line: 1011, baseType: !173, size: 128, offset: 12096)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !983, file: !629, line: 1012, baseType: !173, size: 128, offset: 12224)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !983, file: !629, line: 1014, baseType: !2292, size: 64, offset: 12352)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !983, file: !629, line: 1017, baseType: !621, size: 64, offset: 12416)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !983, file: !629, line: 1020, baseType: !621, size: 64, offset: 12480)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !983, file: !629, line: 1023, baseType: !345, size: 64, offset: 12544)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !983, file: !629, line: 1025, baseType: !427, size: 64, offset: 12608)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !983, file: !629, line: 1026, baseType: !427, size: 64, offset: 12672)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !983, file: !629, line: 1031, baseType: !427, size: 64, offset: 12736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !983, file: !629, line: 1032, baseType: !2300, size: 192, offset: 12800)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !629, line: 324, size: 192, elements: !2301)
!2301 = !{!2302, !2303, !2304}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2300, file: !629, line: 326, baseType: !427, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2300, file: !629, line: 327, baseType: !427, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2300, file: !629, line: 328, baseType: !667, size: 32, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !983, file: !629, line: 1041, baseType: !323, size: 64, offset: 12992)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !983, file: !629, line: 1042, baseType: !323, size: 64, offset: 13056)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !983, file: !629, line: 1045, baseType: !427, size: 64, offset: 13120)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !983, file: !629, line: 1048, baseType: !427, size: 64, offset: 13184)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !983, file: !629, line: 1051, baseType: !323, size: 64, offset: 13248)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !983, file: !629, line: 1052, baseType: !323, size: 64, offset: 13312)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !983, file: !629, line: 1055, baseType: !2312, size: 640, offset: 13376)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2313, line: 132, size: 640, elements: !2314)
!2313 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2314 = !{!2315, !2321, !2322}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2312, file: !2313, line: 133, baseType: !2316, size: 576)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2317, size: 576, elements: !274)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2313, line: 117, size: 192, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2317, file: !2313, line: 118, baseType: !427, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2317, file: !2313, line: 119, baseType: !1166, size: 128, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2312, file: !2313, line: 134, baseType: !7, size: 32, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2312, file: !2313, line: 135, baseType: !7, size: 32, offset: 608)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !983, file: !629, line: 1058, baseType: !2324, size: 448, offset: 14016)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2313, line: 144, size: 448, elements: !2325)
!2325 = !{!2326, !2327, !2328}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2324, file: !2313, line: 145, baseType: !967, size: 128, align: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2324, file: !2313, line: 146, baseType: !654, size: 256, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2324, file: !2313, line: 147, baseType: !7, size: 32, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !983, file: !629, line: 1064, baseType: !1382, size: 64, offset: 14464)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !983, file: !629, line: 1067, baseType: !1382, size: 64, offset: 14528)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !983, file: !629, line: 1070, baseType: !1382, size: 64, offset: 14592)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !983, file: !629, line: 1074, baseType: !1409, size: 64, offset: 14656)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !983, file: !629, line: 1084, baseType: !2334, size: 128, offset: 14720)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !2335)
!2335 = !{!2336}
!2336 = !DISubrange(count: 16)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !983, file: !629, line: 1086, baseType: !2338, size: 64, offset: 14848)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !629, line: 55, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !983, file: !629, line: 1089, baseType: !2341, size: 64, offset: 14912)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2342, line: 12, size: 64, elements: !2343)
!2342 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2341, file: !2342, line: 13, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2342, line: 8, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !983, file: !629, line: 1090, baseType: !2348, size: 128, offset: 14976)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2349, line: 13, size: 128, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2348, file: !2349, line: 14, baseType: !173, size: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !983, file: !629, line: 1097, baseType: !2353, size: 64, offset: 15104)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !629, line: 50, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !983, file: !629, line: 1100, baseType: !2356, size: 64, offset: 15168)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !629, line: 1100, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !983, file: !629, line: 1103, baseType: !2359, size: 64, offset: 15232)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !629, line: 53, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !983, file: !629, line: 1107, baseType: !2362, size: 64, offset: 15296)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2364, line: 35, flags: DIFlagFwdDecl)
!2364 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !983, file: !629, line: 1110, baseType: !2366, size: 64, offset: 15360)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2368, line: 93, size: 8768, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2369 = !{!2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2419, !2428, !2429, !2431, !2432, !2433, !2436, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2474, !2475, !2482, !2492, !2495, !2496, !2499, !2500, !2501, !2502, !2503, !2504}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2367, file: !2368, line: 94, baseType: !996, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2367, file: !2368, line: 95, baseType: !223, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2367, file: !2368, line: 96, baseType: !109, size: 32, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2367, file: !2368, line: 97, baseType: !109, size: 32, offset: 96)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2367, file: !2368, line: 98, baseType: !173, size: 128, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2367, file: !2368, line: 100, baseType: !960, size: 192, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2367, file: !2368, line: 103, baseType: !982, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2367, file: !2368, line: 106, baseType: !2378, size: 192, offset: 512)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1562, line: 32, size: 192, elements: !2379)
!2379 = !{!2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2378, file: !1562, line: 33, baseType: !173, size: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2378, file: !1562, line: 34, baseType: !2382, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2383, line: 25, baseType: !2384)
!2383 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2383, line: 23, size: 64, elements: !2385)
!2385 = !{!2386}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2384, file: !2383, line: 24, baseType: !1237, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2367, file: !2368, line: 109, baseType: !546, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2367, file: !2368, line: 112, baseType: !109, size: 32, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2367, file: !2368, line: 114, baseType: !109, size: 32, offset: 800)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2367, file: !2368, line: 115, baseType: !982, size: 64, offset: 832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2367, file: !2368, line: 118, baseType: !109, size: 32, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !2368, line: 119, baseType: !7, size: 32, offset: 928)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2367, file: !2368, line: 121, baseType: !2394, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2368, line: 80, size: 448, elements: !2396)
!2396 = !{!2397, !2398, !2404}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2395, file: !2368, line: 81, baseType: !223, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2395, file: !2368, line: 82, baseType: !2399, size: 128, offset: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2368, line: 75, size: 128, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2399, file: !2368, line: 76, baseType: !982, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2399, file: !2368, line: 77, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2395, file: !2368, line: 83, baseType: !1866, size: 256, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2367, file: !2368, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2367, file: !2368, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2367, file: !2368, line: 138, baseType: !7, size: 32, offset: 1056)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2367, file: !2368, line: 139, baseType: !173, size: 128, offset: 1088)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2367, file: !2368, line: 142, baseType: !1110, size: 512, offset: 1216)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2367, file: !2368, line: 143, baseType: !1118, size: 64, offset: 1728)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2367, file: !2368, line: 150, baseType: !2412, size: 256, offset: 1792)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2413, size: 256, elements: !2417)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2368, line: 38, size: 128, elements: !2414)
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2413, file: !2368, line: 39, baseType: !427, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2413, file: !2368, line: 40, baseType: !427, size: 64, offset: 64)
!2417 = !{!2418}
!2418 = !DISubrange(count: 2)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2367, file: !2368, line: 156, baseType: !2420, size: 192, offset: 2048)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2368, line: 66, size: 192, elements: !2421)
!2421 = !{!2422}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2420, file: !2368, line: 67, baseType: !2423, size: 192)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2368, line: 47, size: 192, elements: !2424)
!2424 = !{!2425, !2426, !2427}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2423, file: !2368, line: 48, baseType: !660, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2423, file: !2368, line: 49, baseType: !660, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2423, file: !2368, line: 50, baseType: !660, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2367, file: !2368, line: 160, baseType: !2312, size: 640, offset: 2240)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2367, file: !2368, line: 163, baseType: !2430, size: 256, offset: 2880)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 256, elements: !1362)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2367, file: !2368, line: 169, baseType: !1354, size: 64, offset: 3136)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2367, file: !2368, line: 172, baseType: !109, size: 32, offset: 3200)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2367, file: !2368, line: 174, baseType: !2434, size: 64, offset: 3264)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2368, line: 174, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2367, file: !2368, line: 185, baseType: !2437, size: 64, offset: 3328)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !396, line: 860, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 853, size: 64, elements: !2439)
!2439 = !{!2440, !2441}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2438, file: !396, line: 858, baseType: !395, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2438, file: !396, line: 859, baseType: !203, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2367, file: !2368, line: 186, baseType: !427, size: 64, offset: 3392)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2367, file: !2368, line: 186, baseType: !427, size: 64, offset: 3456)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2367, file: !2368, line: 186, baseType: !427, size: 64, offset: 3520)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2367, file: !2368, line: 186, baseType: !427, size: 64, offset: 3584)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2367, file: !2368, line: 187, baseType: !427, size: 64, offset: 3648)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2367, file: !2368, line: 188, baseType: !427, size: 64, offset: 3712)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2367, file: !2368, line: 189, baseType: !2300, size: 192, offset: 3776)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2367, file: !2368, line: 190, baseType: !323, size: 64, offset: 3968)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2367, file: !2368, line: 190, baseType: !323, size: 64, offset: 4032)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2367, file: !2368, line: 190, baseType: !323, size: 64, offset: 4096)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2367, file: !2368, line: 190, baseType: !323, size: 64, offset: 4160)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2367, file: !2368, line: 191, baseType: !323, size: 64, offset: 4224)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2367, file: !2368, line: 191, baseType: !323, size: 64, offset: 4288)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2367, file: !2368, line: 191, baseType: !323, size: 64, offset: 4352)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2367, file: !2368, line: 191, baseType: !323, size: 64, offset: 4416)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2367, file: !2368, line: 192, baseType: !323, size: 64, offset: 4480)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2367, file: !2368, line: 192, baseType: !323, size: 64, offset: 4544)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2367, file: !2368, line: 192, baseType: !323, size: 64, offset: 4608)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2367, file: !2368, line: 192, baseType: !323, size: 64, offset: 4672)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2367, file: !2368, line: 193, baseType: !323, size: 64, offset: 4736)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2367, file: !2368, line: 193, baseType: !323, size: 64, offset: 4800)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2367, file: !2368, line: 194, baseType: !2464, size: 448, offset: 4864)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2465, line: 12, size: 448, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2464, file: !2465, line: 15, baseType: !427, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2464, file: !2465, line: 17, baseType: !427, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2464, file: !2465, line: 19, baseType: !427, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2464, file: !2465, line: 21, baseType: !427, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2464, file: !2465, line: 29, baseType: !427, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2464, file: !2465, line: 35, baseType: !427, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2464, file: !2465, line: 44, baseType: !427, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2367, file: !2368, line: 202, baseType: !429, size: 64, offset: 5312)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2367, file: !2368, line: 213, baseType: !2476, size: 2048, offset: 5376)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2477, size: 2048, elements: !2335)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2478, line: 43, size: 128, elements: !2479)
!2478 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2479 = !{!2480, !2481}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2477, file: !2478, line: 44, baseType: !322, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2477, file: !2478, line: 45, baseType: !322, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2367, file: !2368, line: 216, baseType: !2483, size: 448, offset: 7424)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2368, line: 30, size: 448, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2483, file: !2368, line: 31, baseType: !109, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2483, file: !2368, line: 32, baseType: !309, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2483, file: !2368, line: 33, baseType: !323, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2483, file: !2368, line: 34, baseType: !427, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2483, file: !2368, line: 34, baseType: !427, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2483, file: !2368, line: 35, baseType: !323, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2483, file: !2368, line: 35, baseType: !323, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2367, file: !2368, line: 219, baseType: !2493, size: 64, offset: 7872)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2368, line: 219, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2367, file: !2368, line: 222, baseType: !7, size: 32, offset: 7936)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2367, file: !2368, line: 223, baseType: !2497, size: 64, offset: 8000)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2368, line: 223, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2367, file: !2368, line: 230, baseType: !1474, size: 8, offset: 8064)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2367, file: !2368, line: 231, baseType: !1443, size: 16, offset: 8080)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2367, file: !2368, line: 232, baseType: !1443, size: 16, offset: 8096)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2367, file: !2368, line: 234, baseType: !1286, size: 64, offset: 8128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2367, file: !2368, line: 237, baseType: !654, size: 256, offset: 8192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2367, file: !2368, line: 243, baseType: !867, size: 320, offset: 8448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !983, file: !629, line: 1111, baseType: !2506, size: 64, offset: 15424)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2368, line: 20, size: 16640, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2507, file: !2368, line: 21, baseType: !203, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2507, file: !2368, line: 22, baseType: !996, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2507, file: !2368, line: 23, baseType: !960, size: 192, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2507, file: !2368, line: 24, baseType: !2513, size: 16384, offset: 256)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2514, size: 16384, elements: !278)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1562, line: 51, size: 256, elements: !2515)
!2515 = !{!2516}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2514, file: !1562, line: 52, baseType: !2517, size: 256)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1562, line: 37, size: 256, elements: !2518)
!2518 = !{!2519, !2526, !2527, !2533}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2517, file: !1562, line: 39, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2521, line: 83, baseType: !2522)
!2521 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2521, line: 82, baseType: !2524)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !109}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2517, file: !1562, line: 40, baseType: !323, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2517, file: !1562, line: 46, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2521, line: 86, baseType: !2529)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2521, line: 85, baseType: !2531)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2517, file: !1562, line: 48, baseType: !2382, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !983, file: !629, line: 1112, baseType: !2382, size: 64, offset: 15488)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !983, file: !629, line: 1113, baseType: !2382, size: 64, offset: 15552)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !983, file: !629, line: 1115, baseType: !2382, size: 64, offset: 15616)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !983, file: !629, line: 1116, baseType: !2378, size: 192, offset: 15680)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !983, file: !629, line: 1117, baseType: !323, size: 64, offset: 15872)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !983, file: !629, line: 1118, baseType: !320, size: 64, offset: 15936)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !983, file: !629, line: 1119, baseType: !7, size: 32, offset: 16000)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !983, file: !629, line: 1121, baseType: !970, size: 64, offset: 16064)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !983, file: !629, line: 1125, baseType: !2543, size: 64, offset: 16128)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !629, line: 43, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !983, file: !629, line: 1127, baseType: !360, size: 32, offset: 16192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !983, file: !629, line: 1128, baseType: !7, size: 32, offset: 16224)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !983, file: !629, line: 1130, baseType: !2548, size: 128, offset: 16256)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2549, line: 37, size: 128, elements: !2550)
!2549 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2550 = !{!2551, !2552, !2553}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2548, file: !2549, line: 38, baseType: !109, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2548, file: !2549, line: 39, baseType: !223, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2548, file: !2549, line: 40, baseType: !2554, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2549, line: 24, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !983, file: !629, line: 1131, baseType: !2557, size: 256, offset: 16384)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2558, line: 12, size: 256, elements: !2559)
!2558 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2559 = !{!2560, !2561, !2562, !2563}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2557, file: !2558, line: 13, baseType: !273, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2557, file: !2558, line: 14, baseType: !323, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2557, file: !2558, line: 15, baseType: !323, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2557, file: !2558, line: 16, baseType: !1474, size: 8, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !983, file: !629, line: 1134, baseType: !427, size: 64, offset: 16640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !983, file: !629, line: 1135, baseType: !427, size: 64, offset: 16704)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !983, file: !629, line: 1138, baseType: !203, size: 32, offset: 16768)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !983, file: !629, line: 1141, baseType: !667, size: 32, offset: 16800)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !983, file: !629, line: 1143, baseType: !2569, size: 64, offset: 16832)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !629, line: 735, size: 64, elements: !2570)
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2569, file: !629, line: 736, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !983, file: !629, line: 1147, baseType: !1169, size: 128, offset: 16896)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !983, file: !629, line: 1149, baseType: !982, size: 64, offset: 17024)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !983, file: !629, line: 1151, baseType: !2576, size: 64, offset: 17088)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !629, line: 1151, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !983, file: !629, line: 1188, baseType: !345, size: 64, offset: 17152)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !983, file: !629, line: 1191, baseType: !2580, size: 64, offset: 17216)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !629, line: 44, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !983, file: !629, line: 1194, baseType: !2583, size: 64, offset: 17280)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !629, line: 45, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !983, file: !629, line: 1197, baseType: !2586, size: 64, offset: 17344)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !629, line: 61, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !983, file: !629, line: 1199, baseType: !2589, size: 64, offset: 17408)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2591, line: 99, size: 128, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2592 = !{!2593, !2594, !2595}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2590, file: !2591, line: 100, baseType: !658, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2590, file: !2591, line: 101, baseType: !223, size: 32, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2590, file: !2591, line: 103, baseType: !243, size: 16, offset: 96)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !983, file: !629, line: 1202, baseType: !2597, size: 64, offset: 17472)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !629, line: 48, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !983, file: !629, line: 1205, baseType: !323, size: 64, offset: 17536)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !983, file: !629, line: 1206, baseType: !2601, size: 64, offset: 17600)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1562, line: 14, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1562, line: 12, size: 384, elements: !2604)
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !1562, line: 13, baseType: !2606, size: 384)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2603, file: !1562, line: 13, size: 384, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2606, file: !1562, line: 13, baseType: !109, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2606, file: !1562, line: 13, baseType: !109, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2606, file: !1562, line: 13, baseType: !109, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2606, file: !1562, line: 13, baseType: !2612, size: 256, offset: 128)
!2612 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2613, line: 37, size: 256, elements: !2614)
!2613 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2614 = !{!2615, !2620, !2633, !2639, !2648, !2675, !2680}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2612, file: !2613, line: 42, baseType: !2616, size: 64)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2613, line: 39, size: 64, elements: !2617)
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2616, file: !2613, line: 40, baseType: !2276, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2616, file: !2613, line: 41, baseType: !366, size: 32, offset: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2612, file: !2613, line: 50, baseType: !2621, size: 192)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2613, line: 45, size: 192, elements: !2622)
!2622 = !{!2623, !2625, !2626, !2632}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2621, file: !2613, line: 46, baseType: !2624, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !307, line: 95, baseType: !109)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2621, file: !2613, line: 47, baseType: !109, size: 32, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2621, file: !2613, line: 48, baseType: !2627, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2613, line: 11, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2613, line: 8, size: 64, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2628, file: !2613, line: 9, baseType: !109, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2628, file: !2613, line: 10, baseType: !345, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2621, file: !2613, line: 49, baseType: !109, size: 32, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2612, file: !2613, line: 57, baseType: !2634, size: 128)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2613, line: 53, size: 128, elements: !2635)
!2635 = !{!2636, !2637, !2638}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2634, file: !2613, line: 54, baseType: !2276, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2634, file: !2613, line: 55, baseType: !366, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2634, file: !2613, line: 56, baseType: !2627, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2612, file: !2613, line: 66, baseType: !2640, size: 256)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2613, line: 60, size: 256, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645, !2647}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2640, file: !2613, line: 61, baseType: !2276, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2640, file: !2613, line: 62, baseType: !366, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2640, file: !2613, line: 63, baseType: !109, size: 32, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2640, file: !2613, line: 64, baseType: !2646, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !307, line: 94, baseType: !308)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2640, file: !2613, line: 65, baseType: !2646, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2612, file: !2613, line: 105, baseType: !2649, size: 256)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2613, line: 69, size: 256, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2649, file: !2613, line: 70, baseType: !345, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !2649, file: !2613, line: 79, baseType: !2653, size: 192, offset: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2649, file: !2613, line: 79, size: 192, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2664, !2669}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2653, file: !2613, line: 81, baseType: !109, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2653, file: !2613, line: 86, baseType: !1443, size: 16)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2653, file: !2613, line: 92, baseType: !2658, size: 192)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2653, file: !2613, line: 88, size: 192, elements: !2659)
!2659 = !{!2660, !2662, !2663}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2658, file: !2613, line: 89, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !1153)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2658, file: !2613, line: 90, baseType: !345, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2658, file: !2613, line: 91, baseType: !345, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2653, file: !2613, line: 97, baseType: !2665, size: 96)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2653, file: !2613, line: 94, size: 96, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2665, file: !2613, line: 95, baseType: !2661, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2665, file: !2613, line: 96, baseType: !424, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2653, file: !2613, line: 103, baseType: !2670, size: 128)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2653, file: !2613, line: 99, size: 128, elements: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2670, file: !2613, line: 100, baseType: !323, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2670, file: !2613, line: 101, baseType: !424, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2670, file: !2613, line: 102, baseType: !424, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2612, file: !2613, line: 111, baseType: !2676, size: 128)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2613, line: 108, size: 128, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2676, file: !2613, line: 109, baseType: !309, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2676, file: !2613, line: 110, baseType: !109, size: 32, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2612, file: !2613, line: 118, baseType: !2681, size: 128)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2613, line: 114, size: 128, elements: !2682)
!2682 = !{!2683, !2684, !2685}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2681, file: !2613, line: 115, baseType: !345, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2681, file: !2613, line: 116, baseType: !109, size: 32, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2681, file: !2613, line: 117, baseType: !7, size: 32, offset: 96)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !983, file: !629, line: 1208, baseType: !2464, size: 448, offset: 17664)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !983, file: !629, line: 1215, baseType: !427, size: 64, offset: 18112)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !983, file: !629, line: 1217, baseType: !427, size: 64, offset: 18176)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !983, file: !629, line: 1219, baseType: !427, size: 64, offset: 18240)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !983, file: !629, line: 1223, baseType: !2691, size: 64, offset: 18304)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2692, line: 99, baseType: !2693)
!2692 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2692, line: 99, size: 64, elements: !2694)
!2694 = !{!2695}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2693, file: !2692, line: 99, baseType: !1237, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !983, file: !629, line: 1225, baseType: !395, size: 32, offset: 18368)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !983, file: !629, line: 1226, baseType: !109, size: 32, offset: 18400)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !983, file: !629, line: 1227, baseType: !109, size: 32, offset: 18432)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !983, file: !629, line: 1231, baseType: !2700, size: 64, offset: 18496)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !629, line: 1231, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !983, file: !629, line: 1233, baseType: !173, size: 128, offset: 18560)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !983, file: !629, line: 1240, baseType: !2704, size: 64, offset: 18688)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !629, line: 62, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !983, file: !629, line: 1242, baseType: !2707, size: 64, offset: 18752)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !629, line: 1242, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !983, file: !629, line: 1244, baseType: !173, size: 128, offset: 18816)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !983, file: !629, line: 1245, baseType: !2711, size: 64, offset: 18944)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !629, line: 51, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !983, file: !629, line: 1246, baseType: !654, size: 256, offset: 19008)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !983, file: !629, line: 1247, baseType: !7, size: 32, offset: 19264)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !983, file: !629, line: 1250, baseType: !2716, size: 64, offset: 19328)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !629, line: 57, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !983, file: !629, line: 1251, baseType: !654, size: 256, offset: 19392)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !983, file: !629, line: 1252, baseType: !173, size: 128, offset: 19648)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !983, file: !629, line: 1259, baseType: !1952, size: 64, offset: 19776)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !983, file: !629, line: 1260, baseType: !1443, size: 16, offset: 19840)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !983, file: !629, line: 1261, baseType: !1443, size: 16, offset: 19856)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !983, file: !629, line: 1314, baseType: !2724, size: 64, offset: 19904)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2726, line: 62, size: 256, align: 256, elements: !2727)
!2726 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2725, file: !2726, line: 75, baseType: !424, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2725, file: !2726, line: 90, baseType: !424, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2725, file: !2726, line: 112, baseType: !428, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2725, file: !2726, line: 132, baseType: !424, size: 32, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2725, file: !2726, line: 140, baseType: !424, size: 32, offset: 160)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2725, file: !2726, line: 149, baseType: !424, size: 32, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2725, file: !2726, line: 154, baseType: !2735, offset: 224)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !1375)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !983, file: !629, line: 1315, baseType: !423, size: 32, offset: 19968)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !983, file: !629, line: 1316, baseType: !423, size: 32, offset: 20000)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !983, file: !629, line: 1321, baseType: !323, size: 64, offset: 20032)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !983, file: !629, line: 1325, baseType: !109, size: 32, offset: 20096)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !983, file: !629, line: 1326, baseType: !109, size: 32, offset: 20128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !983, file: !629, line: 1327, baseType: !109, size: 32, offset: 20160)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !983, file: !629, line: 1328, baseType: !109, size: 32, offset: 20192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !983, file: !629, line: 1329, baseType: !967, size: 128, align: 64, offset: 20224)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !983, file: !629, line: 1332, baseType: !2745, size: 128, offset: 20352)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2746, line: 51, size: 128, elements: !2747)
!2746 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2747 = !{!2748, !2753, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2745, file: !2746, line: 60, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2750, line: 7, size: 64, elements: !2751)
!2750 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2751 = !{!2752}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2749, file: !2750, line: 12, baseType: !1234, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2745, file: !2746, line: 63, baseType: !1474, size: 8, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2745, file: !2746, line: 70, baseType: !1474, size: 8, offset: 72)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !983, file: !629, line: 1335, baseType: !2004, size: 64, offset: 20480)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !983, file: !629, line: 1337, baseType: !2757, size: 128, offset: 20544)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2746, line: 39, size: 128, elements: !2758)
!2758 = !{!2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2757, file: !2746, line: 40, baseType: !1781, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2757, file: !2746, line: 42, baseType: !424, size: 32, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2757, file: !2746, line: 43, baseType: !424, size: 32, offset: 96)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !983, file: !629, line: 1340, baseType: !2763, size: 64, offset: 20672)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !629, line: 69, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !983, file: !629, line: 1351, baseType: !109, size: 32, offset: 20736)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !983, file: !629, line: 1352, baseType: !109, size: 32, offset: 20768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !983, file: !629, line: 1354, baseType: !323, size: 64, offset: 20800)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !983, file: !629, line: 1364, baseType: !427, size: 64, offset: 20864)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !983, file: !629, line: 1365, baseType: !427, size: 64, offset: 20928)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !983, file: !629, line: 1412, baseType: !323, size: 64, offset: 20992)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !983, file: !629, line: 1453, baseType: !2772, size: 64, offset: 21056)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !629, line: 1453, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !983, file: !629, line: 1457, baseType: !2775, size: 64, offset: 21120)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2777)
!2777 = !{!2778, !2779, !2798, !2801, !2802, !2835, !2845}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2776, file: !68, line: 62, baseType: !67, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, scope: !2776, file: !68, line: 64, baseType: !2780, size: 192, offset: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2776, file: !68, line: 64, size: 192, elements: !2781)
!2781 = !{!2782, !2793}
!2782 = !DIDerivedType(tag: DW_TAG_member, scope: !2780, file: !68, line: 65, baseType: !2783, size: 192)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2780, file: !68, line: 65, size: 192, elements: !2784)
!2784 = !{!2785, !2792}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2783, file: !68, line: 66, baseType: !2786, size: 128)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2787, line: 50, size: 128, elements: !2788)
!2787 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2788 = !{!2789, !2790, !2791}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2786, file: !2787, line: 52, baseType: !323, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2786, file: !2787, line: 54, baseType: !7, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2786, file: !2787, line: 55, baseType: !7, size: 32, offset: 96)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2783, file: !68, line: 67, baseType: !323, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !2780, file: !68, line: 70, baseType: !2794, size: 192)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2780, file: !68, line: 70, size: 192, elements: !2795)
!2795 = !{!2796, !2797}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2794, file: !68, line: 71, baseType: !967, size: 128, align: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2794, file: !68, line: 72, baseType: !323, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2776, file: !68, line: 76, baseType: !2799, size: 64, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2776, file: !68, line: 77, baseType: !323, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2776, file: !68, line: 79, baseType: !2803, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2787, line: 25, size: 256, elements: !2805)
!2805 = !{!2806, !2812, !2816}
!2806 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !2787, line: 26, baseType: !2807, size: 128)
!2807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2804, file: !2787, line: 26, size: 128, elements: !2808)
!2808 = !{!2809, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2807, file: !2787, line: 27, baseType: !2810, size: 128)
!2810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 128, elements: !2335)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2807, file: !2787, line: 28, baseType: !2810, size: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2804, file: !2787, line: 31, baseType: !2813, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2815)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2787, line: 23, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !2787, line: 33, baseType: !2817, size: 64, offset: 192)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2804, file: !2787, line: 33, size: 64, elements: !2818)
!2818 = !{!2819, !2825, !2830}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2817, file: !2787, line: 38, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !2787, line: 34, size: 64, elements: !2821)
!2821 = !{!2822, !2823, !2824}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2820, file: !2787, line: 35, baseType: !1417, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2820, file: !2787, line: 36, baseType: !231, size: 8, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2820, file: !2787, line: 37, baseType: !231, size: 8, offset: 40)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2817, file: !2787, line: 42, baseType: !2826, size: 16)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !2787, line: 39, size: 16, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2826, file: !2787, line: 40, baseType: !231, size: 8)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2826, file: !2787, line: 41, baseType: !231, size: 8, offset: 8)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2817, file: !2787, line: 46, baseType: !2831, size: 16)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !2787, line: 43, size: 16, elements: !2832)
!2832 = !{!2833, !2834}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2831, file: !2787, line: 44, baseType: !231, size: 8)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2831, file: !2787, line: 45, baseType: !231, size: 8, offset: 8)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2776, file: !68, line: 81, baseType: !2836, size: 64, offset: 448)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2837, file: !68, line: 86, baseType: !2799, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2837, file: !68, line: 87, baseType: !323, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2837, file: !68, line: 88, baseType: !323, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2837, file: !68, line: 89, baseType: !323, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2837, file: !68, line: 90, baseType: !1474, size: 8, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2837, file: !68, line: 92, baseType: !2836, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2776, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !983, file: !629, line: 1463, baseType: !2847, offset: 21184)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !629, line: 739, elements: !558)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !983, file: !629, line: 1470, baseType: !967, size: 128, align: 64, offset: 21184)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !983, file: !629, line: 1471, baseType: !996, size: 32, offset: 21312)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !983, file: !629, line: 1472, baseType: !109, size: 32, offset: 21344)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !983, file: !629, line: 1474, baseType: !982, size: 64, offset: 21376)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !983, file: !629, line: 1475, baseType: !2853, size: 320, offset: 21440)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2854, line: 11, size: 320, elements: !2855)
!2854 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2855 = !{!2856, !2857, !2858, !2863}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2853, file: !2854, line: 16, baseType: !550, size: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2853, file: !2854, line: 17, baseType: !323, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2853, file: !2854, line: 18, baseType: !2859, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2853, file: !2854, line: 19, baseType: !423, size: 32, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !983, file: !629, line: 1478, baseType: !2865, size: 64, offset: 21760)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1634, line: 49, size: 512, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2874, !2875, !2876, !2878}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2866, file: !1634, line: 50, baseType: !2865, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2866, file: !1634, line: 51, baseType: !345, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2866, file: !1634, line: 52, baseType: !323, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2866, file: !1634, line: 53, baseType: !323, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2866, file: !1634, line: 54, baseType: !2873, size: 64, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2866, file: !1634, line: 56, baseType: !7, size: 32, offset: 320)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2866, file: !1634, line: 58, baseType: !7, size: 32, offset: 352)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2866, file: !1634, line: 59, baseType: !2877, size: 64, offset: 384)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !174, line: 159, baseType: !427)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2866, file: !1634, line: 60, baseType: !2143, size: 64, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !983, file: !629, line: 1482, baseType: !996, size: 32, offset: 21824)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !983, file: !629, line: 1489, baseType: !345, size: 64, offset: 21888)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !983, file: !629, line: 1504, baseType: !345, size: 64, offset: 21952)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !983, file: !629, line: 1505, baseType: !428, size: 64, offset: 22016)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !983, file: !629, line: 1506, baseType: !427, size: 64, offset: 22080)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !983, file: !629, line: 1507, baseType: !428, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !983, file: !629, line: 1508, baseType: !428, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !983, file: !629, line: 1509, baseType: !428, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !983, file: !629, line: 1510, baseType: !967, size: 128, align: 64, offset: 22208)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !983, file: !629, line: 1511, baseType: !109, size: 32, offset: 22336)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !983, file: !629, line: 1515, baseType: !2890, size: 64, offset: 22400)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1010, line: 56, size: 64, elements: !2891)
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2890, file: !1010, line: 57, baseType: !1013, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !983, file: !629, line: 1518, baseType: !2890, size: 64, offset: 22464)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !983, file: !629, line: 1528, baseType: !967, size: 128, align: 64, offset: 22528)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !983, file: !629, line: 1552, baseType: !2896, size: 35328, offset: 23040)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2897, line: 430, size: 35328, elements: !2898)
!2897 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2898 = !{!2899, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2928, !2929, !2930, !2931, !2932, !2933, !2936, !2937, !2938, !2939}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2896, file: !2897, line: 432, baseType: !2900, size: 192)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2901, size: 192, elements: !274)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2902, line: 16, size: 64, elements: !2903)
!2902 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2901, file: !2902, line: 17, baseType: !241, size: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2901, file: !2902, line: 18, baseType: !241, size: 16, offset: 16)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2901, file: !2902, line: 19, baseType: !241, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2901, file: !2902, line: 19, baseType: !241, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2901, file: !2902, line: 19, baseType: !241, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2901, file: !2902, line: 19, baseType: !241, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2901, file: !2902, line: 19, baseType: !241, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2901, file: !2902, line: 20, baseType: !241, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2901, file: !2902, line: 20, baseType: !241, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2901, file: !2902, line: 20, baseType: !241, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2901, file: !2902, line: 20, baseType: !241, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2901, file: !2902, line: 20, baseType: !241, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2901, file: !2902, line: 20, baseType: !241, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2896, file: !2897, line: 436, baseType: !323, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2896, file: !2897, line: 440, baseType: !243, size: 16, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2896, file: !2897, line: 441, baseType: !243, size: 16, offset: 272)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2896, file: !2897, line: 442, baseType: !243, size: 16, offset: 288)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2896, file: !2897, line: 443, baseType: !243, size: 16, offset: 304)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2896, file: !2897, line: 447, baseType: !323, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2896, file: !2897, line: 448, baseType: !323, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2896, file: !2897, line: 459, baseType: !2925, size: 256, offset: 448)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2926, size: 256, elements: !1362)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2897, line: 428, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2896, file: !2897, line: 461, baseType: !323, size: 64, offset: 704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2896, file: !2897, line: 463, baseType: !323, size: 64, offset: 768)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2896, file: !2897, line: 465, baseType: !323, size: 64, offset: 832)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2896, file: !2897, line: 466, baseType: !323, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2896, file: !2897, line: 467, baseType: !323, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2896, file: !2897, line: 473, baseType: !2934, size: 64, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2897, line: 10, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2896, file: !2897, line: 480, baseType: !323, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2896, file: !2897, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2896, file: !2897, line: 491, baseType: !423, size: 32, offset: 1184)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2896, file: !2897, line: 501, baseType: !2940, size: 33792, offset: 1536)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2941, line: 448, size: 33792, elements: !2942)
!2941 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2942 = !{!2943, !2944, !2945, !3107, !3108, !3114, !3115}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2940, file: !2941, line: 461, baseType: !7, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2940, file: !2941, line: 468, baseType: !323, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2940, file: !2941, line: 476, baseType: !2946, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2941, line: 356, size: 33280, align: 512, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2947, file: !2941, line: 358, baseType: !7, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2947, file: !2941, line: 361, baseType: !7, size: 32, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2947, file: !2941, line: 364, baseType: !427, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2947, file: !2941, line: 367, baseType: !427, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2947, file: !2941, line: 370, baseType: !427, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2947, file: !2941, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2947, file: !2941, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2947, file: !2941, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2947, file: !2941, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2947, file: !2941, line: 397, baseType: !2959, size: 32768, offset: 512)
!2959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2941, line: 348, size: 32768, elements: !2960)
!2960 = !{!2961, !2976, !3013, !3090, !3103}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2959, file: !2941, line: 349, baseType: !2962, size: 896)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2941, line: 12, size: 896, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2975}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2962, file: !2941, line: 13, baseType: !423, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2962, file: !2941, line: 14, baseType: !423, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2962, file: !2941, line: 15, baseType: !423, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2962, file: !2941, line: 16, baseType: !423, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2962, file: !2941, line: 17, baseType: !423, size: 32, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2962, file: !2941, line: 18, baseType: !423, size: 32, offset: 160)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2962, file: !2941, line: 19, baseType: !423, size: 32, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2962, file: !2941, line: 22, baseType: !2972, size: 640, offset: 224)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 640, elements: !2973)
!2973 = !{!2974}
!2974 = !DISubrange(count: 20)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2962, file: !2941, line: 25, baseType: !423, size: 32, offset: 864)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2959, file: !2941, line: 350, baseType: !2977, size: 4096, align: 128)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2941, line: 34, size: 4096, align: 128, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2998, !2999, !3000, !3002, !3004, !3008}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2977, file: !2941, line: 35, baseType: !241, size: 16)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2977, file: !2941, line: 36, baseType: !241, size: 16, offset: 16)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2977, file: !2941, line: 37, baseType: !241, size: 16, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2977, file: !2941, line: 38, baseType: !241, size: 16, offset: 48)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !2941, line: 39, baseType: !2984, size: 128, offset: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !2941, line: 39, size: 128, elements: !2985)
!2985 = !{!2986, !2991}
!2986 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2941, line: 40, baseType: !2987, size: 128)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2941, line: 40, size: 128, elements: !2988)
!2988 = !{!2989, !2990}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2987, file: !2941, line: 41, baseType: !427, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2987, file: !2941, line: 42, baseType: !427, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2941, line: 44, baseType: !2992, size: 128)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2941, line: 44, size: 128, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2992, file: !2941, line: 45, baseType: !423, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2992, file: !2941, line: 46, baseType: !423, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2992, file: !2941, line: 47, baseType: !423, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2992, file: !2941, line: 48, baseType: !423, size: 32, offset: 96)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2977, file: !2941, line: 51, baseType: !423, size: 32, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2977, file: !2941, line: 52, baseType: !423, size: 32, offset: 224)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2977, file: !2941, line: 55, baseType: !3001, size: 1024, offset: 256)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 1024, elements: !436)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2977, file: !2941, line: 58, baseType: !3003, size: 2048, offset: 1280)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 2048, elements: !278)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2977, file: !2941, line: 60, baseType: !3005, size: 384, offset: 3328)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !3006)
!3006 = !{!3007}
!3007 = !DISubrange(count: 12)
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !2941, line: 62, baseType: !3009, size: 384, offset: 3712)
!3009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !2941, line: 62, size: 384, elements: !3010)
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3009, file: !2941, line: 63, baseType: !3005, size: 384)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3009, file: !2941, line: 64, baseType: !3005, size: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2959, file: !2941, line: 351, baseType: !3014, size: 1088)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2941, line: 79, size: 1088, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3089}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3014, file: !2941, line: 80, baseType: !423, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3014, file: !2941, line: 81, baseType: !423, size: 32, offset: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3014, file: !2941, line: 82, baseType: !423, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3014, file: !2941, line: 83, baseType: !423, size: 32, offset: 96)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3014, file: !2941, line: 84, baseType: !423, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3014, file: !2941, line: 85, baseType: !423, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3014, file: !2941, line: 86, baseType: !423, size: 32, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3014, file: !2941, line: 88, baseType: !2972, size: 640, offset: 224)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3014, file: !2941, line: 89, baseType: !231, size: 8, offset: 864)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3014, file: !2941, line: 90, baseType: !231, size: 8, offset: 872)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3014, file: !2941, line: 91, baseType: !231, size: 8, offset: 880)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3014, file: !2941, line: 92, baseType: !231, size: 8, offset: 888)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3014, file: !2941, line: 93, baseType: !231, size: 8, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3014, file: !2941, line: 94, baseType: !231, size: 8, offset: 904)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3014, file: !2941, line: 95, baseType: !3031, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3033, line: 11, size: 128, elements: !3034)
!3033 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3034 = !{!3035, !3036}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3032, file: !3033, line: 12, baseType: !309, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3032, file: !3033, line: 13, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3039, line: 103, size: 1344, elements: !3040)
!3039 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3069, !3070, !3071}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3038, file: !3039, line: 109, baseType: !323, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3038, file: !3039, line: 110, baseType: !323, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3038, file: !3039, line: 111, baseType: !323, size: 64, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3038, file: !3039, line: 112, baseType: !323, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3038, file: !3039, line: 113, baseType: !323, size: 64, offset: 256)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3038, file: !3039, line: 114, baseType: !323, size: 64, offset: 320)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3038, file: !3039, line: 117, baseType: !323, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3038, file: !3039, line: 118, baseType: !323, size: 64, offset: 448)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3038, file: !3039, line: 119, baseType: !323, size: 64, offset: 512)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3038, file: !3039, line: 120, baseType: !323, size: 64, offset: 576)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3038, file: !3039, line: 121, baseType: !323, size: 64, offset: 640)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3038, file: !3039, line: 122, baseType: !323, size: 64, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3038, file: !3039, line: 123, baseType: !323, size: 64, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3038, file: !3039, line: 124, baseType: !323, size: 64, offset: 832)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3038, file: !3039, line: 125, baseType: !323, size: 64, offset: 896)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3038, file: !3039, line: 139, baseType: !323, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3038, file: !3039, line: 142, baseType: !323, size: 64, offset: 1024)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3039, line: 144, baseType: !3059, size: 64, offset: 1088)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !3039, line: 144, size: 64, elements: !3060)
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3059, file: !3039, line: 146, baseType: !241, size: 16)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3059, file: !3039, line: 148, baseType: !427, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3059, file: !3039, line: 150, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3039, line: 59, size: 64, elements: !3065)
!3065 = !{!3066, !3067, !3068}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3064, file: !3039, line: 61, baseType: !427, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3064, file: !3039, line: 63, baseType: !427, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3064, file: !3039, line: 65, baseType: !427, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3038, file: !3039, line: 153, baseType: !323, size: 64, offset: 1152)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3038, file: !3039, line: 154, baseType: !323, size: 64, offset: 1216)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3039, line: 156, baseType: !3072, size: 64, offset: 1280)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !3039, line: 156, size: 64, elements: !3073)
!3073 = !{!3074, !3075, !3076}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3072, file: !3039, line: 158, baseType: !241, size: 16)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3072, file: !3039, line: 160, baseType: !427, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3072, file: !3039, line: 162, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3039, line: 69, size: 64, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3077, file: !3039, line: 71, baseType: !427, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3077, file: !3039, line: 73, baseType: !427, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3077, file: !3039, line: 75, baseType: !427, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3077, file: !3039, line: 77, baseType: !427, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3077, file: !3039, line: 80, baseType: !427, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3077, file: !3039, line: 83, baseType: !427, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3077, file: !3039, line: 86, baseType: !427, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3077, file: !3039, line: 88, baseType: !427, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3077, file: !3039, line: 93, baseType: !427, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3077, file: !3039, line: 100, baseType: !427, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3014, file: !2941, line: 96, baseType: !423, size: 32, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2959, file: !2941, line: 352, baseType: !3091, size: 4608, align: 512)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2941, line: 333, size: 4608, align: 512, elements: !3092)
!3092 = !{!3093, !3094, !3101}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3091, file: !2941, line: 334, baseType: !2977, size: 4096, align: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3091, file: !2941, line: 335, baseType: !3095, size: 512, offset: 4096)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2941, line: 312, size: 512, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3095, file: !2941, line: 313, baseType: !427, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3095, file: !2941, line: 314, baseType: !427, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3095, file: !2941, line: 315, baseType: !3100, size: 384, offset: 128)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 384, elements: !1461)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3091, file: !2941, line: 336, baseType: !3102, offset: 4608)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, elements: !1375)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2959, file: !2941, line: 353, baseType: !3104, size: 32768)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 32768, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 4096)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2940, file: !2941, line: 484, baseType: !2946, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2940, file: !2941, line: 491, baseType: !3109, size: 128, offset: 256)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2941, line: 404, size: 128, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3109, file: !2941, line: 424, baseType: !427, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3109, file: !2941, line: 432, baseType: !7, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3109, file: !2941, line: 440, baseType: !7, size: 32, offset: 96)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2940, file: !2941, line: 498, baseType: !3109, size: 128, offset: 384)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2940, file: !2941, line: 508, baseType: !2947, size: 33280, align: 512, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !950, file: !951, line: 16, baseType: !960, size: 192, offset: 512)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !950, file: !951, line: 17, baseType: !223, size: 32, offset: 704)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !506, file: !14, line: 1240, baseType: !345, size: 64, offset: 6912)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !506, file: !14, line: 1243, baseType: !423, size: 32, offset: 6976)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !506, file: !14, line: 1245, baseType: !707, size: 64, offset: 7040)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !506, file: !14, line: 1246, baseType: !707, size: 64, offset: 7104)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !506, file: !14, line: 1248, baseType: !424, size: 32, offset: 7168)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !506, file: !14, line: 1249, baseType: !3124, size: 64, offset: 7232)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !506, file: !14, line: 1252, baseType: !3127, size: 256, offset: 7296)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !436)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !506, file: !14, line: 1253, baseType: !3129, size: 128, offset: 7552)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3130, line: 21, baseType: !3131)
!3130 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3130, line: 19, size: 128, elements: !3132)
!3132 = !{!3133}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3131, file: !3130, line: 20, baseType: !3134, size: 128)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 128, elements: !2335)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !506, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !506, file: !14, line: 1261, baseType: !654, size: 256, offset: 7744)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !506, file: !14, line: 1267, baseType: !192, size: 64, offset: 8000)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !506, file: !14, line: 1269, baseType: !452, size: 64, offset: 8064)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !506, file: !14, line: 1271, baseType: !3140, size: 448, offset: 8128)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !716, line: 63, size: 448, elements: !3141)
!3141 = !{!3142, !3147, !3148, !3149, !3150, !3151, !3152}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3140, file: !716, line: 64, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!323, !3146, !714}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3140, file: !716, line: 66, baseType: !3143, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3140, file: !716, line: 69, baseType: !309, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3140, file: !716, line: 70, baseType: !109, size: 32, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3140, file: !716, line: 71, baseType: !7, size: 32, offset: 224)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3140, file: !716, line: 74, baseType: !173, size: 128, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3140, file: !716, line: 85, baseType: !3153, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !506, file: !14, line: 1274, baseType: !658, size: 64, offset: 8576)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !506, file: !14, line: 1280, baseType: !658, size: 64, offset: 8640)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !506, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !506, file: !14, line: 1286, baseType: !2054, size: 32, offset: 8736)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !506, file: !14, line: 1289, baseType: !3159, size: 64, offset: 8768)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2183, line: 18, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !506, file: !14, line: 1290, baseType: !546, size: 64, offset: 8832)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !506, file: !14, line: 1297, baseType: !1557, size: 64, offset: 8896)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !506, file: !14, line: 1304, baseType: !3164, size: 64, offset: 8960)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3165, line: 49, size: 64, elements: !3166)
!3165 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3166 = !{!3167}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3164, file: !3165, line: 50, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3165, line: 41, size: 512, align: 512, elements: !3170)
!3170 = !{!3171, !3172, !3177}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3169, file: !3165, line: 43, baseType: !203, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3169, file: !3165, line: 45, baseType: !3173, size: 192, offset: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3165, line: 29, size: 192, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3173, file: !3165, line: 30, baseType: !173, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3173, file: !3165, line: 32, baseType: !309, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3169, file: !3165, line: 46, baseType: !309, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !506, file: !14, line: 1305, baseType: !3164, size: 64, offset: 9024)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !506, file: !14, line: 1306, baseType: !967, size: 128, align: 64, offset: 9088)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !506, file: !14, line: 1307, baseType: !2182, size: 256, offset: 9216)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !506, file: !14, line: 1309, baseType: !654, size: 256, offset: 9472)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !506, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !506, file: !14, line: 1317, baseType: !203, size: 32, align: 512, offset: 10240)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !506, file: !14, line: 1318, baseType: !173, size: 128, offset: 10304)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !506, file: !14, line: 1320, baseType: !203, size: 32, offset: 10432)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !506, file: !14, line: 1321, baseType: !173, size: 128, offset: 10496)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !500, file: !501, line: 73, baseType: !109, size: 32, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !500, file: !501, line: 74, baseType: !3189, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1399, line: 42, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !454, file: !391, line: 141, baseType: !3193, size: 64, offset: 704)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!109, !777, !1474}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !454, file: !391, line: 142, baseType: !3197, size: 64, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!389, !389, !3200}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !390, file: !391, line: 96, baseType: !505, size: 64, offset: 832)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !390, file: !391, line: 97, baseType: !323, size: 64, offset: 896)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !390, file: !391, line: 98, baseType: !345, size: 64, offset: 960)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !391, line: 100, baseType: !3206, size: 128, offset: 1024)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 100, size: 128, elements: !3207)
!3207 = !{!3208, !3209}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3206, file: !391, line: 101, baseType: !173, size: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3206, file: !391, line: 102, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !390, file: !391, line: 104, baseType: !173, size: 128, offset: 1152)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !390, file: !391, line: 105, baseType: !173, size: 128, offset: 1280)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !390, file: !391, line: 113, baseType: !3214, size: 128, offset: 1408)
!3214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 109, size: 128, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3214, file: !391, line: 110, baseType: !550, size: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3214, file: !391, line: 111, baseType: !405, size: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3214, file: !391, line: 112, baseType: !967, size: 128, align: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !383, file: !14, line: 1968, baseType: !3220, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!192, !389, !354, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3225, line: 10, size: 128, elements: !3226)
!3225 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3226 = !{!3227, !3231}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3224, file: !3225, line: 11, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !345}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3224, file: !3225, line: 12, baseType: !345, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !383, file: !14, line: 1969, baseType: !3233, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!109, !3189, !354, !109}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !383, file: !14, line: 1970, baseType: !3237, size: 64, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!377, !354, !109, !1474}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !383, file: !14, line: 1972, baseType: !3241, size: 64, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!109, !389, !273, !109}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !383, file: !14, line: 1974, baseType: !3245, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!109, !3189, !354, !389, !315, !1474}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !383, file: !14, line: 1976, baseType: !3249, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!109, !389, !354, !389}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !383, file: !14, line: 1977, baseType: !3253, size: 64, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!109, !354, !389}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !383, file: !14, line: 1978, baseType: !3257, size: 64, offset: 512)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!109, !3189, !354, !389, !192}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !383, file: !14, line: 1980, baseType: !3261, size: 64, offset: 576)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!109, !3189, !354, !389, !315}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !383, file: !14, line: 1982, baseType: !3253, size: 64, offset: 640)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !383, file: !14, line: 1983, baseType: !3266, size: 64, offset: 704)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!109, !3189, !354, !389, !315, !510}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !383, file: !14, line: 1985, baseType: !3270, size: 64, offset: 768)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!109, !3189, !354, !389, !354, !389, !7}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !383, file: !14, line: 1987, baseType: !3274, size: 64, offset: 832)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!109, !3189, !389, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3292, !3301, !3302, !3307, !3308, !3309}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3278, file: !14, line: 227, baseType: !7, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3278, file: !14, line: 228, baseType: !315, size: 16, offset: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !14, line: 241, baseType: !3283, size: 32, offset: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3278, file: !14, line: 241, size: 32, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3283, file: !14, line: 242, baseType: !360, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3283, file: !14, line: 243, baseType: !3287, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3288, line: 16, baseType: !3289)
!3288 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3288, line: 14, size: 32, elements: !3290)
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3289, file: !3288, line: 15, baseType: !365, size: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !14, line: 245, baseType: !3293, size: 32, offset: 96)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3278, file: !14, line: 245, size: 32, elements: !3294)
!3294 = !{!3295, !3296}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3293, file: !14, line: 246, baseType: !369, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3293, file: !14, line: 247, baseType: !3297, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3288, line: 20, baseType: !3298)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3288, line: 18, size: 32, elements: !3299)
!3299 = !{!3300}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3298, file: !3288, line: 19, baseType: !373, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3278, file: !14, line: 249, baseType: !515, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3278, file: !14, line: 250, baseType: !3303, size: 128, offset: 192)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !708, line: 13, size: 128, elements: !3304)
!3304 = !{!3305, !3306}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3303, file: !708, line: 14, baseType: !707, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3303, file: !708, line: 15, baseType: !309, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3278, file: !14, line: 251, baseType: !3303, size: 128, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3278, file: !14, line: 252, baseType: !3303, size: 128, offset: 448)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3278, file: !14, line: 259, baseType: !1313, size: 64, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !383, file: !14, line: 1988, baseType: !3311, size: 64, offset: 896)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!109, !3189, !777, !3314, !423, !7}
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3316, line: 22, size: 1280, elements: !3317)
!3316 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3315, file: !3316, line: 23, baseType: !423, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3315, file: !3316, line: 24, baseType: !315, size: 16, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3315, file: !3316, line: 25, baseType: !7, size: 32, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3315, file: !3316, line: 26, baseType: !1439, size: 32, offset: 96)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3315, file: !3316, line: 27, baseType: !427, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3315, file: !3316, line: 28, baseType: !427, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3315, file: !3316, line: 41, baseType: !427, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3315, file: !3316, line: 42, baseType: !510, size: 32, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3315, file: !3316, line: 43, baseType: !510, size: 32, offset: 352)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3315, file: !3316, line: 44, baseType: !360, size: 32, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3315, file: !3316, line: 45, baseType: !369, size: 32, offset: 416)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3315, file: !3316, line: 46, baseType: !515, size: 64, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3315, file: !3316, line: 47, baseType: !3303, size: 128, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3315, file: !3316, line: 48, baseType: !3303, size: 128, offset: 640)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3315, file: !3316, line: 49, baseType: !3303, size: 128, offset: 768)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3315, file: !3316, line: 50, baseType: !3303, size: 128, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3315, file: !3316, line: 51, baseType: !427, size: 64, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3315, file: !3316, line: 52, baseType: !427, size: 64, offset: 1088)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3315, file: !3316, line: 53, baseType: !423, size: 32, offset: 1152)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3315, file: !3316, line: 54, baseType: !423, size: 32, offset: 1184)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3315, file: !3316, line: 55, baseType: !427, size: 64, offset: 1216)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !383, file: !14, line: 1990, baseType: !3340, size: 64, offset: 960)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!305, !389, !273, !320}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !383, file: !14, line: 1991, baseType: !3344, size: 64, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!109, !354, !3347, !427, !427}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !383, file: !14, line: 1993, baseType: !3350, size: 64, offset: 1088)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!109, !354, !109}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !383, file: !14, line: 1994, baseType: !3354, size: 64, offset: 1152)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!109, !354, !389, !1313, !7, !315}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !383, file: !14, line: 1997, baseType: !3358, size: 64, offset: 1216)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!109, !3189, !354, !1313, !315}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !383, file: !14, line: 1999, baseType: !3362, size: 64, offset: 1280)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!377, !3189, !389, !109}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !383, file: !14, line: 2001, baseType: !3366, size: 64, offset: 1344)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!109, !3189, !389, !377, !109}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !383, file: !14, line: 2003, baseType: !3370, size: 64, offset: 1408)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!109, !3189, !389, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !383, file: !14, line: 2005, baseType: !3376, size: 64, offset: 1472)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!109, !389, !3373}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !383, file: !14, line: 2006, baseType: !3380, size: 64, offset: 1536)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!3383, !354}
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3385)
!3385 = !{!3386, !3393}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3384, file: !14, line: 3193, baseType: !3387, size: 128)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3388, line: 296, size: 128, elements: !3389)
!3388 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3389 = !{!3390, !3391, !3392}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3387, file: !3388, line: 297, baseType: !203, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3387, file: !3388, line: 299, baseType: !719, size: 32, offset: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3387, file: !3388, line: 300, baseType: !345, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3384, file: !14, line: 3194, baseType: !423, size: 32, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !355, file: !14, line: 655, baseType: !505, size: 64, offset: 448)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !355, file: !14, line: 656, baseType: !350, size: 64, offset: 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !355, file: !14, line: 659, baseType: !345, size: 64, offset: 576)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !355, file: !14, line: 663, baseType: !323, size: 64, offset: 640)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !14, line: 671, baseType: !3399, size: 32, offset: 704)
!3399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !14, line: 671, size: 32, elements: !3400)
!3400 = !{!3401, !3403}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3399, file: !14, line: 672, baseType: !3402, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3399, file: !14, line: 673, baseType: !7, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !355, file: !14, line: 675, baseType: !510, size: 32, offset: 736)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !355, file: !14, line: 676, baseType: !515, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !355, file: !14, line: 677, baseType: !3303, size: 128, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !355, file: !14, line: 678, baseType: !3303, size: 128, offset: 960)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !355, file: !14, line: 679, baseType: !3303, size: 128, offset: 1088)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !355, file: !14, line: 680, baseType: !203, size: 32, offset: 1216)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !355, file: !14, line: 681, baseType: !243, size: 16, offset: 1248)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !355, file: !14, line: 682, baseType: !231, size: 8, offset: 1264)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !355, file: !14, line: 683, baseType: !231, size: 8, offset: 1272)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !355, file: !14, line: 684, baseType: !855, size: 64, offset: 1280)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !355, file: !14, line: 691, baseType: !323, size: 64, offset: 1344)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !355, file: !14, line: 692, baseType: !867, size: 320, offset: 1408)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !355, file: !14, line: 694, baseType: !323, size: 64, offset: 1728)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !355, file: !14, line: 695, baseType: !323, size: 64, offset: 1792)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !355, file: !14, line: 697, baseType: !550, size: 128, offset: 1856)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !355, file: !14, line: 698, baseType: !173, size: 128, offset: 1984)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !355, file: !14, line: 707, baseType: !173, size: 128, offset: 2112)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !355, file: !14, line: 708, baseType: !173, size: 128, offset: 2240)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !14, line: 709, baseType: !3423, size: 128, offset: 2368)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !14, line: 709, size: 128, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3423, file: !14, line: 710, baseType: !546, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3423, file: !14, line: 711, baseType: !967, size: 128, align: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !355, file: !14, line: 713, baseType: !660, size: 64, offset: 2496)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !355, file: !14, line: 714, baseType: !660, size: 64, offset: 2560)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !355, file: !14, line: 715, baseType: !223, size: 32, offset: 2624)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !355, file: !14, line: 716, baseType: !223, size: 32, offset: 2656)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !355, file: !14, line: 717, baseType: !223, size: 32, offset: 2688)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !355, file: !14, line: 719, baseType: !223, size: 32, offset: 2720)
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !14, line: 721, baseType: !3434, size: 64, offset: 2752)
!3434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !14, line: 721, size: 64, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3434, file: !14, line: 722, baseType: !1588, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3434, file: !14, line: 723, baseType: !577, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !355, file: !14, line: 725, baseType: !3439, size: 64, offset: 2816)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !355, file: !14, line: 726, baseType: !351, size: 1536, align: 64, offset: 2880)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !355, file: !14, line: 727, baseType: !173, size: 128, offset: 4416)
!3443 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !14, line: 728, baseType: !3444, size: 64, offset: 4544)
!3444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !14, line: 728, size: 64, elements: !3445)
!3445 = !{!3446, !3447, !3450, !3451}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3444, file: !14, line: 729, baseType: !2004, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3444, file: !14, line: 730, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3444, file: !14, line: 731, baseType: !273, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3444, file: !14, line: 732, baseType: !7, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !355, file: !14, line: 735, baseType: !424, size: 32, offset: 4608)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !355, file: !14, line: 738, baseType: !424, size: 32, offset: 4640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !355, file: !14, line: 739, baseType: !3124, size: 64, offset: 4672)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !355, file: !14, line: 750, baseType: !345, size: 64, offset: 4736)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !351, file: !14, line: 474, baseType: !3387, size: 128, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !351, file: !14, line: 475, baseType: !867, size: 320, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !351, file: !14, line: 476, baseType: !719, size: 32, offset: 512)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !351, file: !14, line: 477, baseType: !223, size: 32, offset: 544)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !351, file: !14, line: 482, baseType: !1169, size: 128, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !351, file: !14, line: 483, baseType: !323, size: 64, offset: 704)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !351, file: !14, line: 484, baseType: !323, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !351, file: !14, line: 485, baseType: !3464, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3467)
!3467 = !{!3468, !3472, !3542, !3546, !3550, !3556, !3560, !3564, !3569, !3573, !3577, !3581, !3582, !3586, !3590, !3594, !3599, !3603, !3610, !3611}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3466, file: !14, line: 405, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!109, !1781, !589}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3466, file: !14, line: 406, baseType: !3473, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!109, !1313, !3476}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3478)
!3478 = !{!3479, !3509, !3523}
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !38, line: 295, baseType: !3480, size: 512)
!3480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3477, file: !38, line: 295, size: 512, elements: !3481)
!3481 = !{!3482, !3508}
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !38, line: 296, baseType: !3483, size: 448)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !38, line: 296, size: 448, elements: !3484)
!3484 = !{!3485, !3486, !3495, !3496, !3497, !3506, !3507}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3483, file: !38, line: 298, baseType: !323, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3483, file: !38, line: 299, baseType: !3487, size: 128, offset: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3483, file: !38, line: 299, size: 128, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3487, file: !38, line: 300, baseType: !173, size: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !38, line: 302, baseType: !3491, size: 128)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3487, file: !38, line: 302, size: 128, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3491, file: !38, line: 303, baseType: !345, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3491, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3483, file: !38, line: 310, baseType: !350, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3483, file: !38, line: 311, baseType: !323, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3483, file: !38, line: 312, baseType: !3498, size: 64, offset: 320)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3483, file: !38, line: 312, size: 64, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3498, file: !38, line: 313, baseType: !345, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3498, file: !38, line: 314, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3504)
!3504 = !{!3505}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3503, file: !38, line: 256, baseType: !323, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3483, file: !38, line: 316, baseType: !223, size: 32, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3483, file: !38, line: 317, baseType: !223, size: 32, offset: 416)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3480, file: !38, line: 323, baseType: !1782, size: 512, align: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !38, line: 325, baseType: !3510, size: 512, offset: 512)
!3510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3477, file: !38, line: 325, size: 512, elements: !3511)
!3511 = !{!3512, !3522}
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3510, file: !38, line: 326, baseType: !3513, size: 320)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !38, line: 326, size: 320, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3513, file: !38, line: 327, baseType: !323, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3513, file: !38, line: 328, baseType: !323, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3513, file: !38, line: 329, baseType: !323, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3513, file: !38, line: 331, baseType: !223, size: 32, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3513, file: !38, line: 332, baseType: !223, size: 32, offset: 224)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3513, file: !38, line: 333, baseType: !223, size: 32, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3513, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3510, file: !38, line: 339, baseType: !1782, size: 512, align: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !38, line: 341, baseType: !3524, size: 512, offset: 1024)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3477, file: !38, line: 341, size: 512, elements: !3525)
!3525 = !{!3526, !3535, !3541}
!3526 = !DIDerivedType(tag: DW_TAG_member, scope: !3524, file: !38, line: 342, baseType: !3527, size: 384)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3524, file: !38, line: 342, size: 384, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3527, file: !38, line: 343, baseType: !323, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3527, file: !38, line: 344, baseType: !323, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3527, file: !38, line: 346, baseType: !345, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3527, file: !38, line: 347, baseType: !345, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3527, file: !38, line: 348, baseType: !345, size: 64, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3527, file: !38, line: 349, baseType: !345, size: 64, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3524, file: !38, line: 352, baseType: !3536, size: 256)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3524, file: !38, line: 352, size: 256, elements: !3537)
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3536, file: !38, line: 353, baseType: !323, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3536, file: !38, line: 354, baseType: !323, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3536, file: !38, line: 356, baseType: !173, size: 128, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3524, file: !38, line: 359, baseType: !1782, size: 512, align: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3466, file: !14, line: 409, baseType: !3543, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!109, !350, !589}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3466, file: !14, line: 412, baseType: !3547, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!1474, !350, !3476}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3466, file: !14, line: 414, baseType: !3551, size: 64, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3466, file: !14, line: 416, baseType: !3557, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!109, !1313, !350, !515, !7, !2873, !2019}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3466, file: !14, line: 419, baseType: !3561, size: 64, offset: 384)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!109, !1313, !350, !515, !7, !7, !1781, !345}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3466, file: !14, line: 424, baseType: !3565, size: 64, offset: 448)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!3568, !350, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 131, baseType: !427)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3466, file: !14, line: 425, baseType: !3570, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{null, !3476, !320, !320}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3466, file: !14, line: 426, baseType: !3574, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!1474, !3476, !719}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3466, file: !14, line: 427, baseType: !3578, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3476}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3466, file: !14, line: 428, baseType: !1607, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3466, file: !14, line: 433, baseType: !3583, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!109, !350, !3476, !3476, !74}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3466, file: !14, line: 435, baseType: !3587, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!109, !3476}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3466, file: !14, line: 436, baseType: !3591, size: 64, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!1474, !3476, !320, !320}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3466, file: !14, line: 438, baseType: !3595, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !3476, !3598, !3598}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3466, file: !14, line: 439, baseType: !3600, size: 64, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!109, !350, !1781}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3466, file: !14, line: 442, baseType: !3604, size: 64, offset: 1088)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!109, !3607, !1313, !3609}
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3466, file: !14, line: 444, baseType: !2011, size: 64, offset: 1152)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3466, file: !14, line: 445, baseType: !3612, size: 64, offset: 1216)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!109, !1610, !1632}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !14, line: 486, baseType: !323, size: 64, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !351, file: !14, line: 487, baseType: !867, size: 320, offset: 960)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !351, file: !14, line: 488, baseType: !2054, size: 32, offset: 1280)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !351, file: !14, line: 489, baseType: !203, size: 32, offset: 1312)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !351, file: !14, line: 490, baseType: !173, size: 128, offset: 1344)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !351, file: !14, line: 491, baseType: !345, size: 64, offset: 1472)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !340, file: !299, line: 180, baseType: !3622, size: 64, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!305, !1313, !196, !339, !273, !515, !320}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !340, file: !299, line: 182, baseType: !3622, size: 64, offset: 384)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !340, file: !299, line: 184, baseType: !3627, size: 64, offset: 448)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!109, !1313, !196, !339, !1672}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !328, file: !299, line: 90, baseType: !3631, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !328, file: !299, line: 91, baseType: !3633, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !289, file: !189, line: 120, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!3638, !256}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3641)
!3641 = !{!3642, !3643, !3647, !3651, !3657, !3661}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3640, file: !82, line: 40, baseType: !81, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3640, file: !82, line: 41, baseType: !3644, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!1474}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3640, file: !82, line: 42, baseType: !3648, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!345}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3640, file: !82, line: 43, baseType: !3652, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!2143, !3655}
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3640, file: !82, line: 44, baseType: !3658, size: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!2143}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3640, file: !82, line: 45, baseType: !3228, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !289, file: !189, line: 121, baseType: !3663, size: 64, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!2143, !256}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !289, file: !189, line: 122, baseType: !3667, size: 64, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !256, !3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !188, file: !189, line: 70, baseType: !3673, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !530, line: 190, size: 1152, elements: !3675)
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3767, !3768, !3769, !3770, !3771, !3774}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3674, file: !530, line: 191, baseType: !223, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3674, file: !530, line: 192, baseType: !223, size: 32, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3674, file: !530, line: 202, baseType: !3673, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3674, file: !530, line: 203, baseType: !192, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3674, file: !530, line: 205, baseType: !1040, size: 192, align: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3674, file: !530, line: 207, baseType: !2143, size: 64, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3674, file: !530, line: 208, baseType: !7, size: 32, offset: 448)
!3683 = !DIDerivedType(tag: DW_TAG_member, scope: !3674, file: !530, line: 209, baseType: !3684, size: 256, offset: 512)
!3684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3674, file: !530, line: 209, size: 256, elements: !3685)
!3685 = !{!3686, !3695, !3699}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3684, file: !530, line: 210, baseType: !3687, size: 256)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !530, line: 153, size: 256, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3694}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3687, file: !530, line: 154, baseType: !323, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3687, file: !530, line: 156, baseType: !1172, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3687, file: !530, line: 162, baseType: !3692, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !530, line: 162, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3687, file: !530, line: 167, baseType: !323, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3684, file: !530, line: 211, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !530, line: 170, size: 64, elements: !3697)
!3697 = !{!3698}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3696, file: !530, line: 171, baseType: !3673, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3684, file: !530, line: 212, baseType: !3700, size: 256)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !530, line: 174, size: 256, elements: !3701)
!3701 = !{!3702, !3762, !3765, !3766}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3700, file: !530, line: 175, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !530, line: 271, size: 768, elements: !3706)
!3706 = !{!3707, !3727, !3731, !3735, !3739, !3743, !3747, !3751, !3752, !3753, !3754, !3758}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3705, file: !530, line: 276, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!109, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !530, line: 251, size: 1216, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3712, file: !530, line: 253, baseType: !3673, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3712, file: !530, line: 254, baseType: !1313, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3712, file: !530, line: 255, baseType: !627, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3712, file: !530, line: 256, baseType: !345, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3712, file: !530, line: 259, baseType: !654, size: 256, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3712, file: !530, line: 260, baseType: !654, size: 256, offset: 512)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3712, file: !530, line: 261, baseType: !109, size: 32, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3712, file: !530, line: 262, baseType: !173, size: 128, offset: 832)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3712, file: !530, line: 263, baseType: !273, size: 64, offset: 960)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3712, file: !530, line: 265, baseType: !320, size: 64, offset: 1024)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3712, file: !530, line: 266, baseType: !1474, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3712, file: !530, line: 267, baseType: !1474, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3712, file: !530, line: 268, baseType: !1717, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3705, file: !530, line: 277, baseType: !3728, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3711}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3705, file: !530, line: 290, baseType: !3732, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!109, !627, !345}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3705, file: !530, line: 292, baseType: !3736, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!345, !627, !1601}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3705, file: !530, line: 293, baseType: !3740, size: 64, offset: 256)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!345, !627, !345, !1601}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3705, file: !530, line: 294, baseType: !3744, size: 64, offset: 320)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !627, !345}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3705, file: !530, line: 296, baseType: !3748, size: 64, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!305, !3711, !273, !320, !515}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3705, file: !530, line: 306, baseType: !320, size: 64, offset: 448)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3705, file: !530, line: 313, baseType: !1474, size: 8, offset: 512)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3705, file: !530, line: 314, baseType: !3748, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3705, file: !530, line: 317, baseType: !3755, size: 64, offset: 640)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!1659, !3711, !1661}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3705, file: !530, line: 320, baseType: !3759, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!109, !3711, !1672}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3700, file: !530, line: 176, baseType: !3763, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !530, line: 35, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3700, file: !530, line: 177, baseType: !515, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3700, file: !530, line: 178, baseType: !3673, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3674, file: !530, line: 215, baseType: !345, size: 64, offset: 768)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3674, file: !530, line: 221, baseType: !427, size: 64, offset: 832)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3674, file: !530, line: 223, baseType: !243, size: 16, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3674, file: !530, line: 224, baseType: !315, size: 16, offset: 912)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3674, file: !530, line: 225, baseType: !3772, size: 64, offset: 960)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !530, line: 36, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3674, file: !530, line: 227, baseType: !967, size: 128, align: 64, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !188, file: !189, line: 71, baseType: !3776, size: 32, offset: 448)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3777, line: 19, size: 32, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3778 = !{!3779}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3776, file: !3777, line: 20, baseType: !996, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !188, file: !189, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !188, file: !189, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !188, file: !189, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !188, file: !189, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !188, file: !189, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !185, file: !6, line: 47, baseType: !168, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !185, file: !6, line: 48, baseType: !196, size: 64, offset: 576)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !185, file: !6, line: 49, baseType: !3788, size: 64, offset: 640)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !185, file: !6, line: 50, baseType: !2292, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !169, file: !6, line: 418, baseType: !3792, size: 64, offset: 1408)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3794)
!3794 = !{!3795, !3796, !3801, !3805, !3809, !3813}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3793, file: !6, line: 54, baseType: !311, size: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3793, file: !6, line: 55, baseType: !3797, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!305, !3792, !3800, !273}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3793, file: !6, line: 57, baseType: !3802, size: 64, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!305, !3792, !3800, !192, !320}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3793, file: !6, line: 59, baseType: !3806, size: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{null, !168, !192}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3793, file: !6, line: 60, baseType: !3810, size: 64, offset: 320)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!109, !168}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3793, file: !6, line: 61, baseType: !3814, size: 64, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !168}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !169, file: !6, line: 419, baseType: !192, size: 64, offset: 1472)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !169, file: !6, line: 420, baseType: !192, size: 64, offset: 1536)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !169, file: !6, line: 421, baseType: !196, size: 64, offset: 1600)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !169, file: !6, line: 424, baseType: !3821, size: 64, offset: 1664)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3823)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !169, file: !6, line: 425, baseType: !3825, size: 64, offset: 1728)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !169, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !169, file: !6, line: 435, baseType: !654, size: 256, offset: 1856)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !169, file: !6, line: 437, baseType: !3830, size: 64, offset: 2112)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3832, line: 69, size: 320, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3833 = !{!3834, !3835, !3836, !3853, !3855, !3859, !3860}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3831, file: !3832, line: 70, baseType: !192, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3831, file: !3832, line: 71, baseType: !168, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3831, file: !3832, line: 72, baseType: !3837, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3839)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3832, line: 47, size: 256, elements: !3840)
!3840 = !{!3841, !3842, !3848, !3852}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3839, file: !3832, line: 49, baseType: !7, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3839, file: !3832, line: 51, baseType: !3843, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!109, !192, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3839, file: !3832, line: 53, baseType: !3849, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!109, !273, !3846}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3839, file: !3832, line: 55, baseType: !3228, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3831, file: !3832, line: 73, baseType: !3854, size: 16, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3831, file: !3832, line: 74, baseType: !3856, size: 8, offset: 208)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !232, line: 16, baseType: !3857)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !234, line: 20, baseType: !3858)
!3858 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3831, file: !3832, line: 75, baseType: !231, size: 8, offset: 216)
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !3832, line: 76, baseType: !3861, size: 64, offset: 256)
!3861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3831, file: !3832, line: 76, size: 64, elements: !3862)
!3862 = !{!3863, !3864, !3871}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3861, file: !3832, line: 77, baseType: !345, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3861, file: !3832, line: 78, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3867)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3832, line: 86, size: 128, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3867, file: !3832, line: 87, baseType: !7, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3867, file: !3832, line: 88, baseType: !273, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3861, file: !3832, line: 79, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3832, line: 92, size: 256, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3880}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3874, file: !3832, line: 94, baseType: !7, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3874, file: !3832, line: 95, baseType: !7, size: 32, offset: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3874, file: !3832, line: 96, baseType: !976, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3874, file: !3832, line: 97, baseType: !3837, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3874, file: !3832, line: 98, baseType: !345, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !169, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !169, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !169, file: !6, line: 442, baseType: !3821, size: 64, offset: 2240)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !169, file: !6, line: 443, baseType: !3825, size: 64, offset: 2304)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !169, file: !6, line: 444, baseType: !1474, size: 8, offset: 2368)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !169, file: !6, line: 451, baseType: !1474, size: 8, offset: 2376)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !169, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !169, file: !6, line: 455, baseType: !3889, size: 64, offset: 2432)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3891, line: 23, size: 96, elements: !3892)
!3891 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3892 = !{!3893, !3894, !3895}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3890, file: !3891, line: 24, baseType: !109, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3890, file: !3891, line: 24, baseType: !109, size: 32, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3890, file: !3891, line: 24, baseType: !109, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !169, file: !6, line: 458, baseType: !3897, size: 64, offset: 2496)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!109}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !169, file: !6, line: 460, baseType: !3901, size: 4032, align: 512, offset: 2560)
!3901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3902, size: 4032, elements: !3916)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3903)
!3903 = !{!3904, !3905, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3902, file: !6, line: 363, baseType: !345, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3902, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3902, file: !6, line: 367, baseType: !3907, size: 448, offset: 128)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3907, file: !6, line: 320, baseType: !168, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3907, file: !6, line: 321, baseType: !3911, size: 384, offset: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3912, line: 40, size: 384, elements: !3913)
!3912 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3913 = !{!3914}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3911, file: !3912, line: 41, baseType: !3915, size: 384, align: 64)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 384, align: 64, elements: !2417)
!3916 = !{!3917}
!3917 = !DISubrange(count: 7)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !169, file: !6, line: 463, baseType: !3919, size: 192, offset: 6592)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3920, line: 8, size: 192, elements: !3921)
!3920 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3921 = !{!3922, !3923, !3924}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3919, file: !3920, line: 10, baseType: !7, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3919, file: !3920, line: 11, baseType: !621, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3919, file: !3920, line: 12, baseType: !3925, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3927, line: 59, size: 48, elements: !3928)
!3927 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3926, file: !3927, line: 60, baseType: !2160, size: 16)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3926, file: !3927, line: 61, baseType: !2160, size: 16, offset: 16)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3926, file: !3927, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3926, file: !3927, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3926, file: !3927, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3926, file: !3927, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !169, file: !6, line: 465, baseType: !323, size: 64, offset: 6784)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !169, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !169, file: !6, line: 470, baseType: !173, size: 128, offset: 6912)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !169, file: !6, line: 471, baseType: !3939, size: 64, offset: 7040)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3941, line: 33, size: 96, elements: !3942)
!3941 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3942 = !{!3943, !3944, !3945, !3946}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3940, file: !3941, line: 37, baseType: !109, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3940, file: !3941, line: 43, baseType: !109, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3940, file: !3941, line: 45, baseType: !243, size: 16, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3940, file: !3941, line: 47, baseType: !243, size: 16, offset: 80)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !169, file: !6, line: 476, baseType: !3948, size: 64, offset: 7104)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3950)
!3950 = !{!3951, !3967, !3968, !3969}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3949, file: !6, line: 379, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3954, line: 204, baseType: !3955)
!3954 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3954, line: 197, size: 192, elements: !3956)
!3956 = !{!3957, !3959, !3960, !3961, !3963, !3965}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3955, file: !3954, line: 198, baseType: !3958, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3954, line: 21, baseType: !424)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3955, file: !3954, line: 199, baseType: !235, size: 8, offset: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3955, file: !3954, line: 200, baseType: !235, size: 8, offset: 40)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3955, file: !3954, line: 201, baseType: !3962, size: 16, offset: 48)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3954, line: 17, baseType: !242)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3955, file: !3954, line: 202, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3954, line: 16, baseType: !428)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3955, file: !3954, line: 203, baseType: !3966, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3954, line: 22, baseType: !428)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3949, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3949, file: !6, line: 381, baseType: !273, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3949, file: !6, line: 382, baseType: !273, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !169, file: !6, line: 477, baseType: !3949, size: 256, offset: 7168)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !169, file: !6, line: 480, baseType: !3972, size: 64, offset: 7424)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !169, file: !6, line: 483, baseType: !3975, size: 64, offset: 7488)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !169, file: !6, line: 488, baseType: !273, size: 64, offset: 7552)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !169, file: !6, line: 492, baseType: !345, size: 64, offset: 7616)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !169, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !169, file: !6, line: 495, baseType: !345, size: 64, offset: 7744)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !169, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !169, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !169, file: !6, line: 500, baseType: !3984, size: 64, offset: 7872)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3986, line: 45, baseType: !3987)
!3986 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !169, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !169, file: !6, line: 504, baseType: !3990, size: 64, offset: 8000)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3993, line: 96, size: 192, elements: !3994)
!3993 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3994 = !{!3995, !3996, !4039, !4041}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3992, file: !3993, line: 97, baseType: !7, size: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3992, file: !3993, line: 98, baseType: !3997, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3993, line: 24, size: 3072, elements: !3999)
!3999 = !{!4000, !4002, !4003, !4004, !4005, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4036, !4037, !4038}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3998, file: !3993, line: 26, baseType: !4001, size: 128)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 128, elements: !2417)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3998, file: !3993, line: 27, baseType: !4001, size: 128, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3998, file: !3993, line: 28, baseType: !109, size: 32, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3998, file: !3993, line: 31, baseType: !203, size: 32, align: 512, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3998, file: !3993, line: 32, baseType: !4006, size: 960, offset: 576)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4007, line: 206, size: 960, elements: !4008)
!4007 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4008 = !{!4009, !4010, !4013, !4015, !4016, !4018}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4006, file: !4007, line: 207, baseType: !970, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4006, file: !4007, line: 208, baseType: !4011, size: 256, offset: 64)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4012, size: 256, elements: !1362)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4006, file: !4007, line: 209, baseType: !4014, size: 256, offset: 320)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 256, elements: !1362)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4006, file: !4007, line: 213, baseType: !309, size: 64, offset: 576)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4006, file: !4007, line: 215, baseType: !4017, size: 256, offset: 640)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !1362)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4006, file: !4007, line: 216, baseType: !231, size: 8, offset: 896)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3998, file: !3993, line: 33, baseType: !323, size: 64, offset: 1536)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3998, file: !3993, line: 34, baseType: !323, size: 64, offset: 1600)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3998, file: !3993, line: 35, baseType: !1474, size: 8, offset: 1664)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3998, file: !3993, line: 36, baseType: !2853, size: 320, offset: 1728)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3998, file: !3993, line: 37, baseType: !2182, size: 256, offset: 2048)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3998, file: !3993, line: 38, baseType: !967, size: 128, align: 64, offset: 2304)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3998, file: !3993, line: 39, baseType: !4026, size: 64, offset: 2432)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3993, line: 49, size: 768, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4027, file: !3993, line: 50, baseType: !203, size: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4027, file: !3993, line: 51, baseType: !4014, size: 256, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4027, file: !3993, line: 53, baseType: !4014, size: 256, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4027, file: !3993, line: 54, baseType: !323, size: 64, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4027, file: !3993, line: 55, baseType: !4026, size: 64, offset: 640)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4027, file: !3993, line: 56, baseType: !109, size: 32, offset: 704)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4027, file: !3993, line: 57, baseType: !109, size: 32, offset: 736)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3998, file: !3993, line: 40, baseType: !323, size: 64, offset: 2496)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3998, file: !3993, line: 42, baseType: !109, size: 32, offset: 2560)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3998, file: !3993, line: 43, baseType: !3991, size: 64, offset: 2624)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3992, file: !3993, line: 99, baseType: !4040, offset: 128)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !557, line: 211, elements: !558)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3992, file: !3993, line: 100, baseType: !4042, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3993, line: 63, size: 3008, elements: !4044)
!4044 = !{!4045, !4046, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4074}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4043, file: !3993, line: 64, baseType: !4026, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4043, file: !3993, line: 65, baseType: !4047, size: 192, offset: 64)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4026, size: 192, elements: !274)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4043, file: !3993, line: 67, baseType: !109, size: 32, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4043, file: !3993, line: 68, baseType: !654, size: 256, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4043, file: !3993, line: 69, baseType: !203, size: 32, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4043, file: !3993, line: 70, baseType: !654, size: 256, offset: 640)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4043, file: !3993, line: 71, baseType: !323, size: 64, offset: 896)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4043, file: !3993, line: 72, baseType: !323, size: 64, offset: 960)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4043, file: !3993, line: 73, baseType: !323, size: 64, offset: 1024)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4043, file: !3993, line: 74, baseType: !323, size: 64, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4043, file: !3993, line: 75, baseType: !323, size: 64, offset: 1152)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4043, file: !3993, line: 76, baseType: !323, size: 64, offset: 1216)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4043, file: !3993, line: 77, baseType: !323, size: 64, offset: 1280)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4043, file: !3993, line: 78, baseType: !323, size: 64, offset: 1344)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4043, file: !3993, line: 79, baseType: !1474, size: 8, offset: 1408)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4043, file: !3993, line: 80, baseType: !323, size: 64, offset: 1472)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4043, file: !3993, line: 81, baseType: !654, size: 256, offset: 1536)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4043, file: !3993, line: 82, baseType: !1866, size: 256, offset: 1792)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4043, file: !3993, line: 84, baseType: !223, size: 32, offset: 2048)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4043, file: !3993, line: 87, baseType: !323, size: 64, offset: 2112)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4043, file: !3993, line: 88, baseType: !323, size: 64, offset: 2176)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4043, file: !3993, line: 89, baseType: !4068, size: 704, offset: 2240)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2183, line: 111, size: 704, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4068, file: !2183, line: 112, baseType: !2182, size: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4068, file: !2183, line: 113, baseType: !2853, size: 320, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4068, file: !2183, line: 116, baseType: !3159, size: 64, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4068, file: !2183, line: 117, baseType: !109, size: 32, offset: 640)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4043, file: !3993, line: 90, baseType: !3991, size: 64, offset: 2944)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !169, file: !6, line: 515, baseType: !4076, size: 64, offset: 8064)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4078, line: 117, size: 128, elements: !4079)
!4078 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4079 = !{!4080, !4081, !4082}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4077, file: !4078, line: 118, baseType: !1417, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4077, file: !4078, line: 119, baseType: !1417, size: 32, offset: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4077, file: !4078, line: 120, baseType: !309, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !169, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !169, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !169, file: !6, line: 520, baseType: !4086, size: 64, offset: 8192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !169, file: !6, line: 523, baseType: !4088, size: 64, offset: 8256)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !169, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !169, file: !6, line: 525, baseType: !4093, size: 64, offset: 8384)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !169, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !169, file: !6, line: 533, baseType: !345, size: 64, offset: 8512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !169, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !169, file: !6, line: 535, baseType: !4100, size: 64, offset: 8640)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !169, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !169, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !169, file: !6, line: 540, baseType: !4104, size: 64, offset: 8768)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4106, line: 32, size: 64, elements: !4107)
!4106 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4105, file: !4106, line: 33, baseType: !1417, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4105, file: !4106, line: 34, baseType: !1417, size: 32, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !169, file: !6, line: 563, baseType: !173, size: 128, offset: 8832)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !169, file: !6, line: 565, baseType: !173, size: 128, offset: 8960)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !169, file: !6, line: 568, baseType: !4113, size: 64, offset: 9088)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !169, file: !6, line: 570, baseType: !223, size: 32, offset: 9152)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtqueue", file: !4117, line: 30, size: 512, elements: !4118)
!4117 = !DIFile(filename: "./include/linux/virtio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e5ffaaf59c73222e5165cb3fb97a1c")
!4118 = !{!4119, !4120, !4124, !4125, !4707, !4708, !4709, !4710, !4711}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4116, file: !4117, line: 31, baseType: !173, size: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4116, file: !4117, line: 32, baseType: !4121, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !4115}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4116, file: !4117, line: 33, baseType: !192, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4116, file: !4117, line: 34, baseType: !4126, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device", file: !4117, line: 122, size: 6400, elements: !4128)
!4128 = !{!4129, !4130, !4131, !4132, !4133, !4134, !4135, !4601, !4606, !4700, !4704, !4705, !4706}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4127, file: !4117, line: 123, baseType: !109, size: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !4127, file: !4117, line: 124, baseType: !1474, size: 8, offset: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "config_enabled", scope: !4127, file: !4117, line: 125, baseType: !1474, size: 8, offset: 40)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "config_change_pending", scope: !4127, file: !4117, line: 126, baseType: !1474, size: 8, offset: 48)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "config_lock", scope: !4127, file: !4117, line: 127, baseType: !203, size: 32, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "vqs_list_lock", scope: !4127, file: !4117, line: 128, baseType: !203, size: 32, offset: 96)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4127, file: !4117, line: 129, baseType: !4136, size: 5824, offset: 128)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4137)
!4137 = !{!4138, !4139, !4141, !4144, !4145, !4198, !4283, !4284, !4285, !4286, !4287, !4294, !4386, !4399, !4409, !4413, !4415, !4416, !4417, !4421, !4428, !4429, !4432, !4435, !4439, !4543, !4544, !4545, !4546, !4547, !4548, !4578, !4579, !4580, !4583, !4586, !4595, !4596, !4597, !4598, !4599, !4600}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4136, file: !94, line: 706, baseType: !188, size: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4136, file: !94, line: 707, baseType: !4140, size: 64, offset: 512)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4136, file: !94, line: 709, baseType: !4142, size: 64, offset: 576)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4136, file: !94, line: 711, baseType: !192, size: 64, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4136, file: !94, line: 712, baseType: !4146, size: 64, offset: 704)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4158, !4163, !4167}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4148, file: !94, line: 90, baseType: !192, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4148, file: !94, line: 91, baseType: !325, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4148, file: !94, line: 92, baseType: !4153, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!109, !4156, !268}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4136)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4148, file: !94, line: 93, baseType: !4159, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!273, !4156, !4162, !3670, !3671}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4148, file: !94, line: 95, baseType: !4164, size: 64, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !4140}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4148, file: !94, line: 97, baseType: !4168, size: 64, offset: 320)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4170)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4171)
!4171 = !{!4172, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4170, file: !101, line: 287, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!109, !4140}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4170, file: !101, line: 288, baseType: !4164, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4170, file: !101, line: 289, baseType: !4173, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4170, file: !101, line: 290, baseType: !4173, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4170, file: !101, line: 291, baseType: !4173, size: 64, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4170, file: !101, line: 292, baseType: !4173, size: 64, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4170, file: !101, line: 293, baseType: !4173, size: 64, offset: 384)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4170, file: !101, line: 294, baseType: !4173, size: 64, offset: 448)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4170, file: !101, line: 295, baseType: !4173, size: 64, offset: 512)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4170, file: !101, line: 296, baseType: !4173, size: 64, offset: 576)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4170, file: !101, line: 297, baseType: !4173, size: 64, offset: 640)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4170, file: !101, line: 298, baseType: !4173, size: 64, offset: 704)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4170, file: !101, line: 299, baseType: !4173, size: 64, offset: 768)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4170, file: !101, line: 300, baseType: !4173, size: 64, offset: 832)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4170, file: !101, line: 301, baseType: !4173, size: 64, offset: 896)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4170, file: !101, line: 302, baseType: !4173, size: 64, offset: 960)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4170, file: !101, line: 303, baseType: !4173, size: 64, offset: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4170, file: !101, line: 304, baseType: !4173, size: 64, offset: 1088)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4170, file: !101, line: 305, baseType: !4173, size: 64, offset: 1152)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4170, file: !101, line: 306, baseType: !4173, size: 64, offset: 1216)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4170, file: !101, line: 307, baseType: !4173, size: 64, offset: 1280)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4170, file: !101, line: 308, baseType: !4173, size: 64, offset: 1344)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4170, file: !101, line: 309, baseType: !4173, size: 64, offset: 1408)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4136, file: !94, line: 714, baseType: !4199, size: 64, offset: 768)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4202, line: 80, size: 1344, elements: !4203)
!4202 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4282}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4201, file: !4202, line: 81, baseType: !192, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4201, file: !4202, line: 82, baseType: !192, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4201, file: !4202, line: 83, baseType: !325, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4201, file: !4202, line: 84, baseType: !325, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4201, file: !4202, line: 85, baseType: !325, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4201, file: !4202, line: 87, baseType: !4210, size: 64, offset: 320)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!109, !4140, !4213}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4235, !4245, !4246, !4247, !4248, !4249, !4257, !4258, !4259, !4260, !4261, !4262}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4214, file: !88, line: 97, baseType: !192, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4214, file: !88, line: 98, baseType: !4199, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4214, file: !88, line: 100, baseType: !168, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4214, file: !88, line: 101, baseType: !192, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4214, file: !88, line: 103, baseType: !1474, size: 8, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4214, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4214, file: !88, line: 106, baseType: !4223, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4226, line: 282, size: 1600, elements: !4227)
!4226 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4227 = !{!4228, !4229, !4230, !4234}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4225, file: !4226, line: 283, baseType: !3127, size: 256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4225, file: !4226, line: 284, baseType: !3127, size: 256, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4225, file: !4226, line: 285, baseType: !4231, size: 1024, offset: 512)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1024, elements: !4232)
!4232 = !{!4233}
!4233 = !DISubrange(count: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4225, file: !4226, line: 286, baseType: !2143, size: 64, offset: 1536)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4214, file: !88, line: 107, baseType: !4236, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4238)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4226, line: 217, size: 256, elements: !4239)
!4239 = !{!4240, !4241, !4243, !4244}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4238, file: !4226, line: 218, baseType: !3134, size: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4238, file: !4226, line: 219, baseType: !4242, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4226, line: 15, baseType: !323)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4238, file: !4226, line: 220, baseType: !424, size: 32, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4238, file: !4226, line: 221, baseType: !424, size: 32, offset: 224)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4214, file: !88, line: 109, baseType: !4173, size: 64, offset: 448)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4214, file: !88, line: 110, baseType: !4164, size: 64, offset: 512)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4214, file: !88, line: 111, baseType: !4173, size: 64, offset: 576)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4214, file: !88, line: 112, baseType: !4164, size: 64, offset: 640)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4214, file: !88, line: 113, baseType: !4250, size: 64, offset: 704)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!109, !4140, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4254)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4255)
!4255 = !{!4256}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4254, file: !101, line: 59, baseType: !109, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4214, file: !88, line: 114, baseType: !4173, size: 64, offset: 768)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4214, file: !88, line: 115, baseType: !325, size: 64, offset: 832)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4214, file: !88, line: 116, baseType: !325, size: 64, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4214, file: !88, line: 118, baseType: !4168, size: 64, offset: 960)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4214, file: !88, line: 119, baseType: !4164, size: 64, offset: 1024)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4214, file: !88, line: 121, baseType: !4263, size: 64, offset: 1088)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4201, file: !4202, line: 88, baseType: !4153, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4201, file: !4202, line: 89, baseType: !4173, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4201, file: !4202, line: 90, baseType: !4164, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4201, file: !4202, line: 91, baseType: !4164, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4201, file: !4202, line: 92, baseType: !4164, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4201, file: !4202, line: 94, baseType: !4173, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4201, file: !4202, line: 95, baseType: !4173, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4201, file: !4202, line: 97, baseType: !4250, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4201, file: !4202, line: 98, baseType: !4173, size: 64, offset: 896)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4201, file: !4202, line: 100, baseType: !4173, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4201, file: !4202, line: 102, baseType: !4173, size: 64, offset: 1024)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4201, file: !4202, line: 103, baseType: !4164, size: 64, offset: 1088)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4201, file: !4202, line: 105, baseType: !4168, size: 64, offset: 1152)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4201, file: !4202, line: 107, baseType: !4279, size: 64, offset: 1216)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!4281 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4202, line: 107, flags: DIFlagFwdDecl)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4201, file: !4202, line: 109, baseType: !1474, size: 8, offset: 1280)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4136, file: !94, line: 715, baseType: !4213, size: 64, offset: 832)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4136, file: !94, line: 717, baseType: !345, size: 64, offset: 896)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4136, file: !94, line: 719, baseType: !345, size: 64, offset: 960)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4136, file: !94, line: 721, baseType: !654, size: 256, offset: 1024)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4136, file: !94, line: 725, baseType: !4288, size: 448, offset: 1280)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4288, file: !94, line: 518, baseType: !173, size: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4288, file: !94, line: 519, baseType: !173, size: 128, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4288, file: !94, line: 520, baseType: !173, size: 128, offset: 256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4288, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4136, file: !94, line: 726, baseType: !4295, size: 2496, offset: 1728)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4379, !4383}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4295, file: !101, line: 664, baseType: !4253, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4295, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4295, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4295, file: !101, line: 667, baseType: !1474, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4295, file: !101, line: 668, baseType: !1474, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4295, file: !101, line: 669, baseType: !1474, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4295, file: !101, line: 670, baseType: !1474, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4295, file: !101, line: 671, baseType: !1474, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4295, file: !101, line: 672, baseType: !1474, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4295, file: !101, line: 673, baseType: !1474, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4295, file: !101, line: 674, baseType: !1474, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4295, file: !101, line: 675, baseType: !423, size: 32, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4295, file: !101, line: 676, baseType: !203, size: 32, offset: 96)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4295, file: !101, line: 678, baseType: !173, size: 128, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4295, file: !101, line: 679, baseType: !1866, size: 256, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4295, file: !101, line: 680, baseType: !4313, size: 64, offset: 512)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4315, line: 43, size: 1536, elements: !4316)
!4315 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4316 = !{!4317, !4318, !4319, !4320, !4321, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4314, file: !4315, line: 44, baseType: !192, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4314, file: !4315, line: 45, baseType: !109, size: 32, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4314, file: !4315, line: 46, baseType: !173, size: 128, offset: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4314, file: !4315, line: 47, baseType: !203, size: 32, offset: 256)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4314, file: !4315, line: 48, baseType: !4322, size: 64, offset: 320)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4314, file: !4315, line: 49, baseType: !2853, size: 320, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4314, file: !4315, line: 50, baseType: !323, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4314, file: !4315, line: 51, baseType: !1118, size: 64, offset: 768)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4314, file: !4315, line: 52, baseType: !1118, size: 64, offset: 832)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4314, file: !4315, line: 53, baseType: !1118, size: 64, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4314, file: !4315, line: 54, baseType: !1118, size: 64, offset: 960)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4314, file: !4315, line: 55, baseType: !1118, size: 64, offset: 1024)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4314, file: !4315, line: 56, baseType: !323, size: 64, offset: 1088)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4314, file: !4315, line: 57, baseType: !323, size: 64, offset: 1152)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4314, file: !4315, line: 58, baseType: !323, size: 64, offset: 1216)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4314, file: !4315, line: 59, baseType: !323, size: 64, offset: 1280)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4314, file: !4315, line: 60, baseType: !323, size: 64, offset: 1344)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4314, file: !4315, line: 61, baseType: !4140, size: 64, offset: 1408)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4314, file: !4315, line: 62, baseType: !1474, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4314, file: !4315, line: 63, baseType: !1474, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4295, file: !101, line: 681, baseType: !1474, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4295, file: !101, line: 682, baseType: !1474, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4295, file: !101, line: 683, baseType: !1474, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4295, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4295, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4295, file: !101, line: 690, baseType: !1110, size: 512, offset: 640)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4295, file: !101, line: 691, baseType: !427, size: 64, offset: 1152)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4295, file: !101, line: 692, baseType: !2182, size: 256, offset: 1216)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4295, file: !101, line: 693, baseType: !960, size: 192, offset: 1472)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4295, file: !101, line: 694, baseType: !4322, size: 64, offset: 1664)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4295, file: !101, line: 695, baseType: !223, size: 32, offset: 1728)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4295, file: !101, line: 696, baseType: !223, size: 32, offset: 1760)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4295, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4295, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4295, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4295, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4295, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4295, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4295, file: !101, line: 703, baseType: !1474, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4295, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4295, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4295, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4295, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4295, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4295, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4295, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4295, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4295, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4295, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4295, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4295, file: !101, line: 715, baseType: !427, size: 64, offset: 2048)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4295, file: !101, line: 716, baseType: !427, size: 64, offset: 2112)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4295, file: !101, line: 717, baseType: !427, size: 64, offset: 2176)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4295, file: !101, line: 718, baseType: !427, size: 64, offset: 2240)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4295, file: !101, line: 720, baseType: !4374, size: 64, offset: 2304)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4376)
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4375, file: !101, line: 633, baseType: !203, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4375, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4295, file: !101, line: 721, baseType: !4380, size: 64, offset: 2368)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !4140, !1417}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4295, file: !101, line: 722, baseType: !4384, size: 64, offset: 2432)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4136, file: !94, line: 727, baseType: !4387, size: 64, offset: 4224)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4396, !4397, !4398}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4388, file: !101, line: 743, baseType: !4170, size: 1472)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4388, file: !101, line: 744, baseType: !4173, size: 64, offset: 1472)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4388, file: !101, line: 745, baseType: !4393, size: 64, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !4140, !1474}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4388, file: !101, line: 746, baseType: !4173, size: 64, offset: 1600)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4388, file: !101, line: 747, baseType: !4164, size: 64, offset: 1664)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4388, file: !101, line: 748, baseType: !4164, size: 64, offset: 1728)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4136, file: !94, line: 736, baseType: !4400, size: 128, offset: 4288)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4401)
!4401 = !{!4402, !4406}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4400, file: !94, line: 531, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4405, line: 13, flags: DIFlagFwdDecl)
!4405 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4400, file: !94, line: 532, baseType: !4407, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4136, file: !94, line: 738, baseType: !4410, size: 64, offset: 4416)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4412)
!4412 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4136, file: !94, line: 740, baseType: !4414, size: 64, offset: 4480)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4136, file: !94, line: 741, baseType: !427, size: 64, offset: 4544)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4136, file: !94, line: 746, baseType: !427, size: 64, offset: 4608)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4136, file: !94, line: 747, baseType: !4418, size: 64, offset: 4672)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4136, file: !94, line: 749, baseType: !4422, size: 64, offset: 4736)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4424)
!4424 = !{!4425, !4426, !4427}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4423, file: !94, line: 433, baseType: !7, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4423, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4423, file: !94, line: 435, baseType: !323, size: 64, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4136, file: !94, line: 751, baseType: !173, size: 128, offset: 4800)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4136, file: !94, line: 762, baseType: !4430, size: 64, offset: 4928)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4136, file: !94, line: 770, baseType: !4433, offset: 4992)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4434, line: 5, elements: !558)
!4434 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4136, file: !94, line: 772, baseType: !4436, size: 64, offset: 4992)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4438, line: 18, flags: DIFlagFwdDecl)
!4438 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4136, file: !94, line: 773, baseType: !4440, size: 64, offset: 5056)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4442, line: 41, size: 512, elements: !4443)
!4442 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4443 = !{!4444, !4445, !4539, !4540, !4541, !4542}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4441, file: !4442, line: 42, baseType: !4440, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4441, file: !4442, line: 43, baseType: !4446, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4442, line: 125, size: 1408, elements: !4449)
!4449 = !{!4450, !4454, !4458, !4464, !4468, !4469, !4474, !4478, !4482, !4486, !4490, !4491, !4495, !4499, !4503, !4514, !4515, !4516, !4517, !4527, !4531, !4535}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4448, file: !4442, line: 126, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!4440, !4440}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4448, file: !4442, line: 127, baseType: !4455, size: 64, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{null, !4440}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4448, file: !4442, line: 128, baseType: !4459, size: 64, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!1474, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4441)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4448, file: !4442, line: 129, baseType: !4465, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!2143, !4462, !4156}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4448, file: !4442, line: 131, baseType: !4459, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4448, file: !4442, line: 133, baseType: !4470, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4473, !4462}
!4473 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4442, line: 132, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4448, file: !4442, line: 134, baseType: !4475, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!1474, !4462, !192}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4448, file: !4442, line: 136, baseType: !4479, size: 64, offset: 448)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!109, !4462, !192, !7, !345, !320}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4448, file: !4442, line: 141, baseType: !4483, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!109, !4462, !192, !4086, !320}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4448, file: !4442, line: 144, baseType: !4487, size: 64, offset: 576)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!192, !4462}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4448, file: !4442, line: 145, baseType: !4487, size: 64, offset: 640)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4448, file: !4442, line: 146, baseType: !4492, size: 64, offset: 704)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!4440, !4462}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4448, file: !4442, line: 148, baseType: !4496, size: 64, offset: 768)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!4440, !4462, !4440}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4448, file: !4442, line: 151, baseType: !4500, size: 64, offset: 832)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!4440, !4462, !192}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4448, file: !4442, line: 153, baseType: !4504, size: 64, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!109, !4462, !192, !192, !7, !7, !4507}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4442, line: 94, size: 640, elements: !4509)
!4509 = !{!4510, !4511, !4512}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4508, file: !4442, line: 95, baseType: !4440, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4508, file: !4442, line: 96, baseType: !7, size: 32, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4508, file: !4442, line: 97, baseType: !4513, size: 512, offset: 128)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 512, elements: !1153)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4448, file: !4442, line: 158, baseType: !4496, size: 64, offset: 960)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4448, file: !4442, line: 161, baseType: !4492, size: 64, offset: 1024)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4448, file: !4442, line: 163, baseType: !4451, size: 64, offset: 1088)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4448, file: !4442, line: 164, baseType: !4518, size: 64, offset: 1152)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!109, !4462, !4521}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4442, line: 73, size: 128, elements: !4523)
!4523 = !{!4524, !4525, !4526}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4522, file: !4442, line: 74, baseType: !7, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4522, file: !4442, line: 75, baseType: !7, size: 32, offset: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4522, file: !4442, line: 76, baseType: !4462, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4448, file: !4442, line: 166, baseType: !4528, size: 64, offset: 1216)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!345, !4440, !109}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4448, file: !4442, line: 167, baseType: !4532, size: 64, offset: 1280)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!109, !4462, !7}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4448, file: !4442, line: 168, baseType: !4536, size: 64, offset: 1344)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!109, !4440}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4441, file: !4442, line: 44, baseType: !4140, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4441, file: !4442, line: 45, baseType: !173, size: 128, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4441, file: !4442, line: 46, baseType: !173, size: 128, offset: 320)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4441, file: !4442, line: 47, baseType: !231, size: 8, offset: 448)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4136, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4136, file: !94, line: 778, baseType: !510, size: 32, offset: 5152)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4136, file: !94, line: 779, baseType: !423, size: 32, offset: 5184)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4136, file: !94, line: 781, baseType: !203, size: 32, offset: 5216)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4136, file: !94, line: 782, baseType: !173, size: 128, offset: 5248)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4136, file: !94, line: 784, baseType: !4549, size: 64, offset: 5376)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4552, line: 52, size: 768, elements: !4553)
!4552 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4562, !4566, !4567, !4568, !4569, !4573, !4577}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4551, file: !4552, line: 53, baseType: !192, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4551, file: !4552, line: 55, baseType: !325, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4551, file: !4552, line: 56, baseType: !325, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4551, file: !4552, line: 58, baseType: !4153, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4551, file: !4552, line: 59, baseType: !4559, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!273, !4156, !4162}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4551, file: !4552, line: 61, baseType: !4563, size: 64, offset: 320)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4549}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4551, file: !4552, line: 62, baseType: !4164, size: 64, offset: 384)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4551, file: !4552, line: 64, baseType: !4173, size: 64, offset: 448)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4551, file: !4552, line: 66, baseType: !3638, size: 64, offset: 512)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4551, file: !4552, line: 67, baseType: !4570, size: 64, offset: 576)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!2143, !4156}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4551, file: !4552, line: 69, baseType: !4574, size: 64, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !4156, !3670, !3671}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4551, file: !4552, line: 71, baseType: !4168, size: 64, offset: 704)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4136, file: !94, line: 785, baseType: !325, size: 64, offset: 5440)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4136, file: !94, line: 787, baseType: !4164, size: 64, offset: 5504)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4136, file: !94, line: 788, baseType: !4581, size: 64, offset: 5568)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4136, file: !94, line: 789, baseType: !4584, size: 64, offset: 5632)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4136, file: !94, line: 791, baseType: !4587, size: 64, offset: 5696)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593, !4594}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4588, file: !94, line: 598, baseType: !116, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4588, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4588, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4588, file: !94, line: 601, baseType: !1474, size: 8, offset: 96)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4588, file: !94, line: 602, baseType: !1474, size: 8, offset: 104)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4136, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4136, file: !94, line: 795, baseType: !1474, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4136, file: !94, line: 796, baseType: !1474, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4136, file: !94, line: 797, baseType: !1474, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4136, file: !94, line: 798, baseType: !1474, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4136, file: !94, line: 799, baseType: !1474, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4127, file: !4117, line: 130, baseType: !4602, size: 64, offset: 5952)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device_id", file: !4226, line: 449, size: 64, elements: !4603)
!4603 = !{!4604, !4605}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4602, file: !4226, line: 450, baseType: !424, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4602, file: !4226, line: 451, baseType: !424, size: 32, offset: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4127, file: !4117, line: 131, baseType: !4607, size: 64, offset: 6016)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4609)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_config_ops", file: !4610, line: 97, size: 1088, elements: !4611)
!4610 = !DIFile(filename: "./include/linux/virtio_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b12f5288db5f9b29a3869a2adb1ae6a1")
!4611 = !{!4612, !4616, !4620, !4624, !4628, !4632, !4636, !4662, !4663, !4664, !4668, !4672, !4676, !4682, !4686, !4695, !4699}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4609, file: !4610, line: 98, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !4126, !7, !345, !7}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4609, file: !4610, line: 100, baseType: !4617, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !4126, !7, !2143, !7}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !4609, file: !4610, line: 102, baseType: !4621, size: 64, offset: 128)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!423, !4126}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4609, file: !4610, line: 103, baseType: !4625, size: 64, offset: 192)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!231, !4126}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "set_status", scope: !4609, file: !4610, line: 104, baseType: !4629, size: 64, offset: 256)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4126, !231}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4609, file: !4610, line: 105, baseType: !4633, size: 64, offset: 320)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !4126}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "find_vqs", scope: !4609, file: !4610, line: 106, baseType: !4637, size: 64, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!109, !4126, !7, !4640, !4641, !4644, !4646, !4648}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_typedef, name: "vq_callback_t", file: !4610, line: 19, baseType: !4122)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity", file: !4650, line: 285, size: 384, elements: !4651)
!4650 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4651 = !{!4652, !4653, !4654, !4655, !4657, !4661}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vectors", scope: !4649, file: !4650, line: 286, baseType: !7, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "post_vectors", scope: !4649, file: !4650, line: 287, baseType: !7, size: 32, offset: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sets", scope: !4649, file: !4650, line: 288, baseType: !7, size: 32, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "set_size", scope: !4649, file: !4650, line: 289, baseType: !4656, size: 128, offset: 96)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1362)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "calc_sets", scope: !4649, file: !4650, line: 290, baseType: !4658, size: 64, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4648, !7}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4649, file: !4650, line: 291, baseType: !345, size: 64, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "del_vqs", scope: !4609, file: !4610, line: 110, baseType: !4633, size: 64, offset: 448)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize_cbs", scope: !4609, file: !4610, line: 111, baseType: !4633, size: 64, offset: 512)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !4609, file: !4610, line: 112, baseType: !4665, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!427, !4126}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_features", scope: !4609, file: !4610, line: 113, baseType: !4669, size: 64, offset: 640)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!109, !4126}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4609, file: !4610, line: 114, baseType: !4673, size: 64, offset: 704)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!192, !4126}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_affinity", scope: !4609, file: !4610, line: 115, baseType: !4677, size: 64, offset: 768)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!109, !4115, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_affinity", scope: !4609, file: !4610, line: 117, baseType: !4683, size: 64, offset: 832)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!4680, !4126, !109}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "get_shm_region", scope: !4609, file: !4610, line: 119, baseType: !4687, size: 64, offset: 896)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!1474, !4126, !4690, !231}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_shm_region", file: !4610, line: 14, size: 128, elements: !4692)
!4692 = !{!4693, !4694}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4691, file: !4610, line: 15, baseType: !427, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4691, file: !4610, line: 16, baseType: !427, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vq_and_reset", scope: !4609, file: !4610, line: 121, baseType: !4696, size: 64, offset: 960)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!109, !4115}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vq_after_reset", scope: !4609, file: !4610, line: 122, baseType: !4696, size: 64, offset: 1024)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "vringh_config", scope: !4127, file: !4117, line: 132, baseType: !4701, size: 64, offset: 6080)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4703)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "vringh_config_ops", file: !4117, line: 132, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !4127, file: !4117, line: 133, baseType: !173, size: 128, offset: 6144)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4127, file: !4117, line: 134, baseType: !427, size: 64, offset: 6272)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4127, file: !4117, line: 135, baseType: !345, size: 64, offset: 6336)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4116, file: !4117, line: 35, baseType: !7, size: 32, offset: 320)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !4116, file: !4117, line: 36, baseType: !7, size: 32, offset: 352)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "num_max", scope: !4116, file: !4117, line: 37, baseType: !7, size: 32, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4116, file: !4117, line: 38, baseType: !1474, size: 8, offset: 416)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4116, file: !4117, line: 39, baseType: !345, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_device", file: !147, line: 45, size: 8192, elements: !4714)
!4714 = !{!4715, !4716, !5019, !5074, !5075, !5076, !5077, !5078, !5086, !5087, !5088, !5092, !5097, !5098, !5099, !5100, !5104, !5108}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4713, file: !147, line: 46, baseType: !4127, size: 6400)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !4713, file: !147, line: 47, baseType: !4717, size: 64, offset: 6400)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4719, line: 322, size: 16640, elements: !4720)
!4719 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4720 = !{!4721, !4722, !4794, !4795, !4796, !4797, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4903, !4904, !4905, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4982, !4983, !4984, !4986, !4987, !4989, !4990, !4991, !4992, !4998, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4718, file: !4719, line: 323, baseType: !173, size: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4718, file: !4719, line: 324, baseType: !4723, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4719, line: 647, size: 8256, elements: !4725)
!4725 = !{!4726, !4727, !4728, !4729, !4730, !4731, !4732, !4747, !4748, !4749, !4773, !4774, !4777, !4778, !4779, !4780, !4781, !4785, !4786, !4788, !4789, !4790, !4791, !4792, !4793}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4724, file: !4719, line: 648, baseType: !173, size: 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4724, file: !4719, line: 649, baseType: !4723, size: 64, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4724, file: !4719, line: 650, baseType: !173, size: 128, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4724, file: !4719, line: 651, baseType: !173, size: 128, offset: 320)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4724, file: !4719, line: 652, baseType: !4717, size: 64, offset: 448)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4724, file: !4719, line: 653, baseType: !173, size: 128, offset: 512)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4724, file: !4719, line: 655, baseType: !4733, size: 256, offset: 640)
!4733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4734, size: 256, elements: !1362)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4736, line: 21, size: 512, elements: !4737)
!4736 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4737 = !{!4738, !4740, !4741, !4742, !4743, !4744, !4745, !4746}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4735, file: !4736, line: 22, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !174, line: 164, baseType: !2877)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4735, file: !4736, line: 23, baseType: !4739, size: 64, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4735, file: !4736, line: 24, baseType: !192, size: 64, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4735, file: !4736, line: 25, baseType: !323, size: 64, offset: 192)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4735, file: !4736, line: 26, baseType: !323, size: 64, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4735, file: !4736, line: 27, baseType: !4734, size: 64, offset: 320)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4735, file: !4736, line: 27, baseType: !4734, size: 64, offset: 384)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4735, file: !4736, line: 27, baseType: !4734, size: 64, offset: 448)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4724, file: !4719, line: 656, baseType: !173, size: 128, offset: 896)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4724, file: !4719, line: 657, baseType: !4735, size: 512, offset: 1024)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4724, file: !4719, line: 659, baseType: !4750, size: 64, offset: 1536)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4719, line: 773, size: 320, elements: !4752)
!4752 = !{!4753, !4757, !4761, !4765, !4769}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4751, file: !4719, line: 774, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!109, !4723}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4751, file: !4719, line: 775, baseType: !4758, size: 64, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{null, !4723}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4751, file: !4719, line: 776, baseType: !4762, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!345, !4723, !7, !109}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4751, file: !4719, line: 777, baseType: !4766, size: 64, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!109, !4723, !7, !109, !109, !2233}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4751, file: !4719, line: 778, baseType: !4770, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!109, !4723, !7, !109, !109, !423}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4724, file: !4719, line: 660, baseType: !345, size: 64, offset: 1600)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4724, file: !4719, line: 661, baseType: !4775, size: 64, offset: 1664)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4650, line: 131, flags: DIFlagFwdDecl)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4724, file: !4719, line: 663, baseType: !235, size: 8, offset: 1728)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4724, file: !4719, line: 664, baseType: !235, size: 8, offset: 1736)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4724, file: !4719, line: 665, baseType: !235, size: 8, offset: 1744)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4724, file: !4719, line: 666, baseType: !235, size: 8, offset: 1752)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4724, file: !4719, line: 671, baseType: !4782, size: 384, offset: 1760)
!4782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 384, elements: !4783)
!4783 = !{!4784}
!4784 = !DISubrange(count: 48)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4724, file: !4719, line: 673, baseType: !243, size: 16, offset: 2144)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4724, file: !4719, line: 674, baseType: !4787, size: 16, offset: 2160)
!4787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4719, line: 255, baseType: !243)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4724, file: !4719, line: 675, baseType: !4140, size: 64, offset: 2176)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4724, file: !4719, line: 676, baseType: !4136, size: 5824, offset: 2240)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4724, file: !4719, line: 677, baseType: !339, size: 64, offset: 8064)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4724, file: !4719, line: 678, baseType: !339, size: 64, offset: 8128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4724, file: !4719, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4724, file: !4719, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4718, file: !4719, line: 325, baseType: !4723, size: 64, offset: 192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4718, file: !4719, line: 327, baseType: !345, size: 64, offset: 256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4718, file: !4719, line: 328, baseType: !4775, size: 64, offset: 320)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4718, file: !4719, line: 329, baseType: !4798, size: 64, offset: 384)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4719, line: 76, size: 832, elements: !4800)
!4800 = !{!4801, !4802, !4803, !4806, !4807}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4799, file: !4719, line: 77, baseType: !4723, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4799, file: !4719, line: 78, baseType: !173, size: 128, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4799, file: !4719, line: 79, baseType: !4804, size: 64, offset: 192)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4719, line: 79, flags: DIFlagFwdDecl)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4799, file: !4719, line: 80, baseType: !235, size: 8, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4799, file: !4719, line: 81, baseType: !188, size: 512, offset: 320)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4718, file: !4719, line: 331, baseType: !7, size: 32, offset: 448)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4718, file: !4719, line: 332, baseType: !243, size: 16, offset: 480)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4718, file: !4719, line: 333, baseType: !243, size: 16, offset: 496)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4718, file: !4719, line: 334, baseType: !243, size: 16, offset: 512)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4718, file: !4719, line: 335, baseType: !243, size: 16, offset: 528)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4718, file: !4719, line: 336, baseType: !7, size: 32, offset: 544)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4718, file: !4719, line: 337, baseType: !231, size: 8, offset: 576)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4718, file: !4719, line: 338, baseType: !231, size: 8, offset: 584)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4718, file: !4719, line: 344, baseType: !4817, size: 64, offset: 640)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4719, line: 319, flags: DIFlagFwdDecl)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4718, file: !4719, line: 345, baseType: !4717, size: 64, offset: 704)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4718, file: !4719, line: 347, baseType: !423, size: 32, offset: 768)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4718, file: !4719, line: 348, baseType: !231, size: 8, offset: 800)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4718, file: !4719, line: 349, baseType: !231, size: 8, offset: 808)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4718, file: !4719, line: 350, baseType: !231, size: 8, offset: 816)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4718, file: !4719, line: 351, baseType: !231, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4718, file: !4719, line: 352, baseType: !231, size: 8, offset: 832)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4718, file: !4719, line: 353, baseType: !231, size: 8, offset: 840)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4718, file: !4719, line: 354, baseType: !241, size: 16, offset: 848)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4718, file: !4719, line: 355, baseType: !4100, size: 64, offset: 896)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4718, file: !4719, line: 357, baseType: !4830, size: 64, offset: 960)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4719, line: 918, size: 2368, elements: !4832)
!4832 = !{!4833, !4834, !4835, !4848, !4852, !4856, !4860, !4864, !4865, !4869, !4870, !4874, !4894, !4895, !4896, !4897, !4902}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4831, file: !4719, line: 919, baseType: !173, size: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4831, file: !4719, line: 920, baseType: !192, size: 64, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4831, file: !4719, line: 921, baseType: !4836, size: 64, offset: 192)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4838)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4226, line: 44, size: 320, elements: !4839)
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4838, file: !4226, line: 45, baseType: !424, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4838, file: !4226, line: 45, baseType: !424, size: 32, offset: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4838, file: !4226, line: 46, baseType: !424, size: 32, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4838, file: !4226, line: 46, baseType: !424, size: 32, offset: 96)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4838, file: !4226, line: 47, baseType: !424, size: 32, offset: 128)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4838, file: !4226, line: 47, baseType: !424, size: 32, offset: 160)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4838, file: !4226, line: 48, baseType: !4242, size: 64, offset: 192)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4838, file: !4226, line: 49, baseType: !424, size: 32, offset: 256)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4831, file: !4719, line: 922, baseType: !4849, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!109, !4717, !4836}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4831, file: !4719, line: 923, baseType: !4853, size: 64, offset: 320)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{null, !4717}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4831, file: !4719, line: 924, baseType: !4857, size: 64, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!109, !4717, !4253}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4831, file: !4719, line: 925, baseType: !4861, size: 64, offset: 448)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!109, !4717}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4831, file: !4719, line: 926, baseType: !4853, size: 64, offset: 512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4831, file: !4719, line: 927, baseType: !4866, size: 64, offset: 576)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!109, !4717, !109}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4831, file: !4719, line: 928, baseType: !4866, size: 64, offset: 640)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4831, file: !4719, line: 929, baseType: !4871, size: 64, offset: 704)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!423, !4717}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4831, file: !4719, line: 930, baseType: !4875, size: 64, offset: 768)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4877)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4719, line: 837, size: 448, elements: !4878)
!4878 = !{!4879, !4885, !4889, !4890, !4891, !4892, !4893}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4877, file: !4719, line: 839, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!4883, !4717, !4884}
!4883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4719, line: 814, baseType: !7)
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4719, line: 196, baseType: !7)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4877, file: !4719, line: 843, baseType: !4886, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!4883, !4717}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4877, file: !4719, line: 846, baseType: !4886, size: 64, offset: 128)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4877, file: !4719, line: 849, baseType: !4853, size: 64, offset: 192)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4877, file: !4719, line: 850, baseType: !4853, size: 64, offset: 256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4877, file: !4719, line: 853, baseType: !4853, size: 64, offset: 320)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4877, file: !4719, line: 856, baseType: !4853, size: 64, offset: 384)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4831, file: !4719, line: 931, baseType: !325, size: 64, offset: 832)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4831, file: !4719, line: 932, baseType: !325, size: 64, offset: 896)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4831, file: !4719, line: 933, baseType: !4214, size: 1152, offset: 960)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4831, file: !4719, line: 934, baseType: !4898, size: 192, offset: 2112)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4719, line: 801, size: 192, elements: !4899)
!4899 = !{!4900, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4898, file: !4719, line: 802, baseType: !203, size: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4898, file: !4719, line: 803, baseType: !173, size: 128, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4831, file: !4719, line: 935, baseType: !1474, size: 8, offset: 2304)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4718, file: !4719, line: 358, baseType: !427, size: 64, offset: 1024)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4718, file: !4719, line: 364, baseType: !4423, size: 128, offset: 1088)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4718, file: !4719, line: 366, baseType: !4906, size: 32, offset: 1216)
!4906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4719, line: 171, baseType: !109)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4718, file: !4719, line: 369, baseType: !231, size: 8, offset: 1248)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4718, file: !4719, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4718, file: !4719, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4718, file: !4719, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4718, file: !4719, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4718, file: !4719, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4718, file: !4719, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4718, file: !4719, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4718, file: !4719, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4718, file: !4719, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4718, file: !4719, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4718, file: !4719, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4718, file: !4719, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4718, file: !4719, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4718, file: !4719, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4718, file: !4719, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4718, file: !4719, line: 390, baseType: !7, size: 32, offset: 1280)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4718, file: !4719, line: 391, baseType: !7, size: 32, offset: 1312)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4718, file: !4719, line: 394, baseType: !4926, size: 64, offset: 1344)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4719, line: 316, flags: DIFlagFwdDecl)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4718, file: !4719, line: 395, baseType: !241, size: 16, offset: 1408)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4718, file: !4719, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4718, file: !4719, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4718, file: !4719, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4718, file: !4719, line: 402, baseType: !4884, size: 32, offset: 1440)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4718, file: !4719, line: 403, baseType: !4136, size: 5824, offset: 1472)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4718, file: !4719, line: 405, baseType: !109, size: 32, offset: 7296)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4718, file: !4719, line: 411, baseType: !7, size: 32, offset: 7328)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4718, file: !4719, line: 412, baseType: !4937, size: 5632, offset: 7360)
!4937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4735, size: 5632, elements: !4938)
!4938 = !{!4939}
!4939 = !DISubrange(count: 11)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4718, file: !4719, line: 413, baseType: !4735, size: 512, offset: 12992)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4718, file: !4719, line: 415, baseType: !1474, size: 8, offset: 13504)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4718, file: !4719, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4718, file: !4719, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4718, file: !4719, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4718, file: !4719, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4718, file: !4719, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4718, file: !4719, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4718, file: !4719, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4718, file: !4719, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4718, file: !4719, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4718, file: !4719, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4718, file: !4719, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4718, file: !4719, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4718, file: !4719, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4718, file: !4719, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4718, file: !4719, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4718, file: !4719, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4718, file: !4719, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4718, file: !4719, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4718, file: !4719, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4718, file: !4719, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4718, file: !4719, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4718, file: !4719, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4718, file: !4719, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4718, file: !4719, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4718, file: !4719, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4718, file: !4719, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4718, file: !4719, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4718, file: !4719, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4718, file: !4719, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4718, file: !4719, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4718, file: !4719, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4718, file: !4719, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4718, file: !4719, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4718, file: !4719, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4718, file: !4719, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4718, file: !4719, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4718, file: !4719, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4718, file: !4719, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4718, file: !4719, line: 468, baseType: !4981, size: 16, offset: 13552)
!4981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4719, line: 222, baseType: !243)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4718, file: !4719, line: 469, baseType: !223, size: 32, offset: 13568)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4718, file: !4719, line: 471, baseType: !203, size: 32, offset: 13600)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4718, file: !4719, line: 472, baseType: !4985, size: 512, offset: 13632)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 512, elements: !2335)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4718, file: !4719, line: 473, baseType: !546, size: 64, offset: 14144)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4718, file: !4719, line: 474, baseType: !4988, size: 704, offset: 14208)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 704, elements: !4938)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4718, file: !4719, line: 475, baseType: !4988, size: 704, offset: 14912)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4718, file: !4719, line: 487, baseType: !345, size: 64, offset: 15616)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4718, file: !4719, line: 488, baseType: !667, size: 32, offset: 15680)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4718, file: !4719, line: 490, baseType: !4993, size: 320, offset: 15744)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4719, line: 309, size: 320, elements: !4994)
!4994 = !{!4995, !4996, !4997}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4993, file: !4719, line: 310, baseType: !654, size: 256)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4993, file: !4719, line: 311, baseType: !7, size: 32, offset: 256)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4993, file: !4719, line: 312, baseType: !231, size: 8, offset: 288)
!4998 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !4719, line: 497, baseType: !4999, size: 64, offset: 16064)
!4999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !4719, line: 497, size: 64, elements: !5000)
!5000 = !{!5001, !5004}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4999, file: !4719, line: 498, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4719, line: 317, flags: DIFlagFwdDecl)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4999, file: !4719, line: 499, baseType: !4717, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4718, file: !4719, line: 501, baseType: !241, size: 16, offset: 16128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4718, file: !4719, line: 502, baseType: !231, size: 8, offset: 16144)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4718, file: !4719, line: 505, baseType: !241, size: 16, offset: 16160)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4718, file: !4719, line: 506, baseType: !423, size: 32, offset: 16192)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4718, file: !4719, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4718, file: !4719, line: 510, baseType: !241, size: 16, offset: 16240)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4718, file: !4719, line: 511, baseType: !241, size: 16, offset: 16256)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4718, file: !4719, line: 519, baseType: !241, size: 16, offset: 16272)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4718, file: !4719, line: 520, baseType: !2877, size: 64, offset: 16320)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4718, file: !4719, line: 521, baseType: !320, size: 64, offset: 16384)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4718, file: !4719, line: 526, baseType: !192, size: 64, offset: 16448)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4718, file: !4719, line: 528, baseType: !323, size: 64, offset: 16512)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4718, file: !4719, line: 531, baseType: !5018, size: 56, offset: 16576)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 56, elements: !3916)
!5019 = !DIDerivedType(tag: DW_TAG_member, scope: !4713, file: !147, line: 48, baseType: !5020, size: 832, offset: 6464)
!5020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4713, file: !147, line: 48, size: 832, elements: !5021)
!5021 = !{!5022, !5031}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ldev", scope: !5020, file: !147, line: 49, baseType: !5023, size: 256)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_legacy_device", file: !5024, line: 9, size: 256, elements: !5025)
!5024 = !DIFile(filename: "./include/linux/virtio_pci_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee6c03d3d436bf1592fa3d175ed801b")
!5025 = !{!5026, !5027, !5029, !5030}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !5023, file: !5024, line: 10, baseType: !4717, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !5023, file: !5024, line: 13, baseType: !5028, size: 64, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ioaddr", scope: !5023, file: !5024, line: 15, baseType: !345, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5023, file: !5024, line: 17, baseType: !4602, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !5020, file: !147, line: 50, baseType: !5032, size: 832)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_modern_device", file: !5033, line: 15, size: 832, elements: !5034)
!5033 = !DIFile(filename: "./include/linux/virtio_pci_modern.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f45c800c22e78402b1cacce9860fa2cb")
!5034 = !{!5035, !5036, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !5032, file: !5033, line: 16, baseType: !4717, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !5032, file: !5033, line: 18, baseType: !5037, size: 64, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_common_cfg", file: !5039, line: 144, size: 448, elements: !5040)
!5039 = !DIFile(filename: "./include/uapi/linux/virtio_pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "73fe8ac18ab2f9bcc01047ca8cd0fd27")
!5040 = !{!5041, !5043, !5044, !5045, !5046, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "device_feature_select", scope: !5038, file: !5039, line: 146, baseType: !5042, size: 32)
!5042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1660, line: 38, baseType: !424)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "device_feature", scope: !5038, file: !5039, line: 147, baseType: !5042, size: 32, offset: 32)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "guest_feature_select", scope: !5038, file: !5039, line: 148, baseType: !5042, size: 32, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "guest_feature", scope: !5038, file: !5039, line: 149, baseType: !5042, size: 32, offset: 96)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "msix_config", scope: !5038, file: !5039, line: 150, baseType: !5047, size: 16, offset: 128)
!5047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1660, line: 36, baseType: !242)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "num_queues", scope: !5038, file: !5039, line: 151, baseType: !5047, size: 16, offset: 144)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !5038, file: !5039, line: 152, baseType: !233, size: 8, offset: 160)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "config_generation", scope: !5038, file: !5039, line: 153, baseType: !233, size: 8, offset: 168)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "queue_select", scope: !5038, file: !5039, line: 156, baseType: !5047, size: 16, offset: 176)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "queue_size", scope: !5038, file: !5039, line: 157, baseType: !5047, size: 16, offset: 192)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "queue_msix_vector", scope: !5038, file: !5039, line: 158, baseType: !5047, size: 16, offset: 208)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "queue_enable", scope: !5038, file: !5039, line: 159, baseType: !5047, size: 16, offset: 224)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "queue_notify_off", scope: !5038, file: !5039, line: 160, baseType: !5047, size: 16, offset: 240)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "queue_desc_lo", scope: !5038, file: !5039, line: 161, baseType: !5042, size: 32, offset: 256)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "queue_desc_hi", scope: !5038, file: !5039, line: 162, baseType: !5042, size: 32, offset: 288)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "queue_avail_lo", scope: !5038, file: !5039, line: 163, baseType: !5042, size: 32, offset: 320)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "queue_avail_hi", scope: !5038, file: !5039, line: 164, baseType: !5042, size: 32, offset: 352)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "queue_used_lo", scope: !5038, file: !5039, line: 165, baseType: !5042, size: 32, offset: 384)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "queue_used_hi", scope: !5038, file: !5039, line: 166, baseType: !5042, size: 32, offset: 416)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5032, file: !5033, line: 20, baseType: !345, size: 64, offset: 128)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "notify_base", scope: !5032, file: !5033, line: 22, baseType: !345, size: 64, offset: 192)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "notify_pa", scope: !5032, file: !5033, line: 24, baseType: !4739, size: 64, offset: 256)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !5032, file: !5033, line: 26, baseType: !5028, size: 64, offset: 320)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "notify_len", scope: !5032, file: !5033, line: 29, baseType: !320, size: 64, offset: 384)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "device_len", scope: !5032, file: !5033, line: 30, baseType: !320, size: 64, offset: 448)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "notify_map_cap", scope: !5032, file: !5033, line: 33, baseType: !109, size: 32, offset: 512)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "notify_offset_multiplier", scope: !5032, file: !5033, line: 36, baseType: !423, size: 32, offset: 544)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "modern_bars", scope: !5032, file: !5033, line: 38, baseType: !109, size: 32, offset: 576)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5032, file: !5033, line: 40, baseType: !4602, size: 64, offset: 608)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_check", scope: !5032, file: !5033, line: 43, baseType: !4861, size: 64, offset: 704)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5032, file: !5033, line: 46, baseType: !427, size: 64, offset: 768)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "is_legacy", scope: !4713, file: !147, line: 52, baseType: !1474, size: 8, offset: 7296)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !4713, file: !147, line: 55, baseType: !5028, size: 64, offset: 7360)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4713, file: !147, line: 58, baseType: !203, size: 32, offset: 7424)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "virtqueues", scope: !4713, file: !147, line: 59, baseType: !173, size: 128, offset: 7488)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !4713, file: !147, line: 62, baseType: !5079, size: 64, offset: 7616)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_vq_info", file: !147, line: 33, size: 256, elements: !5082)
!5082 = !{!5083, !5084, !5085}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "vq", scope: !5081, file: !147, line: 35, baseType: !4115, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5081, file: !147, line: 38, baseType: !173, size: 128, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "msix_vector", scope: !5081, file: !147, line: 41, baseType: !7, size: 32, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4713, file: !147, line: 65, baseType: !109, size: 32, offset: 7680)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "intx_enabled", scope: !4713, file: !147, line: 66, baseType: !109, size: 32, offset: 7712)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "msix_affinity_masks", scope: !4713, file: !147, line: 67, baseType: !5089, size: 64, offset: 7744)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1233, line: 913, baseType: !5091)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1234, size: 64, elements: !1238)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "msix_names", scope: !4713, file: !147, line: 70, baseType: !5093, size: 64, offset: 7808)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 2048, elements: !5095)
!5095 = !{!5096}
!5096 = !DISubrange(count: 256)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "msix_vectors", scope: !4713, file: !147, line: 72, baseType: !7, size: 32, offset: 7872)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "msix_used_vectors", scope: !4713, file: !147, line: 74, baseType: !7, size: 32, offset: 7904)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "per_vq_vectors", scope: !4713, file: !147, line: 77, baseType: !1474, size: 8, offset: 7936)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "setup_vq", scope: !4713, file: !147, line: 79, baseType: !5101, size: 64, offset: 8000)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!4115, !4712, !5080, !7, !4121, !192, !1474, !241}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "del_vq", scope: !4713, file: !147, line: 86, baseType: !5105, size: 64, offset: 8064)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{null, !5080}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "config_vector", scope: !4713, file: !147, line: 88, baseType: !5109, size: 64, offset: 8128)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!241, !4712, !241}
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !177)
!5114 = !{!5115, !5117, !5122, !5127, !5129, !5133, !5136, !5141, !5146, !5151, !5156, !5158, !5161, !5164, !0, !5171, !5173, !5175, !5178, !5183, !5188, !5190, !5192, !5195, !5200}
!5115 = !DIGlobalVariableExpression(var: !5116, expr: !DIExpression())
!5116 = distinct !DIGlobalVariable(name: "__param_force_legacy", scope: !2, file: !3, line: 22, type: !3847, isLocal: true, isDefinition: true, align: 64)
!5117 = !DIGlobalVariableExpression(var: !5118, expr: !DIExpression())
!5118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_legacytype322", scope: !2, file: !3, line: 22, type: !5119, isLocal: true, isDefinition: true, align: 8)
!5119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 304, elements: !5120)
!5120 = !{!5121}
!5121 = !DISubrange(count: 38)
!5122 = !DIGlobalVariableExpression(var: !5123, expr: !DIExpression())
!5123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_legacy323", scope: !2, file: !3, line: 23, type: !5124, isLocal: true, isDefinition: true, align: 8)
!5124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 648, elements: !5125)
!5125 = !{!5126}
!5126 = !DISubrange(count: 81)
!5127 = !DIGlobalVariableExpression(var: !5128, expr: !DIExpression())
!5128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_virtio_pci__324_647_virtio_pci_driver_init6325", scope: !2, file: !3, line: 647, type: !345, isLocal: true, isDefinition: true)
!5129 = !DIGlobalVariableExpression(var: !5130, expr: !DIExpression())
!5130 = distinct !DIGlobalVariable(name: "__exitcall_virtio_pci_driver_exit", scope: !2, file: !3, line: 647, type: !5131, isLocal: true, isDefinition: true)
!5131 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5132, line: 120, baseType: !4113)
!5132 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5133 = !DIGlobalVariableExpression(var: !5134, expr: !DIExpression())
!5134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author326", scope: !2, file: !3, line: 649, type: !5135, isLocal: true, isDefinition: true, align: 8)
!5135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 448, elements: !182)
!5136 = !DIGlobalVariableExpression(var: !5137, expr: !DIExpression())
!5137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description327", scope: !2, file: !3, line: 650, type: !5138, isLocal: true, isDefinition: true, align: 8)
!5138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 272, elements: !5139)
!5139 = !{!5140}
!5140 = !DISubrange(count: 34)
!5141 = !DIGlobalVariableExpression(var: !5142, expr: !DIExpression())
!5142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file328", scope: !2, file: !3, line: 651, type: !5143, isLocal: true, isDefinition: true, align: 8)
!5143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 336, elements: !5144)
!5144 = !{!5145}
!5145 = !DISubrange(count: 42)
!5146 = !DIGlobalVariableExpression(var: !5147, expr: !DIExpression())
!5147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license329", scope: !2, file: !3, line: 651, type: !5148, isLocal: true, isDefinition: true, align: 8)
!5148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 184, elements: !5149)
!5149 = !{!5150}
!5150 = !DISubrange(count: 23)
!5151 = !DIGlobalVariableExpression(var: !5152, expr: !DIExpression())
!5152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_version330", scope: !2, file: !3, line: 652, type: !5153, isLocal: true, isDefinition: true, align: 8)
!5153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 168, elements: !5154)
!5154 = !{!5155}
!5155 = !DISubrange(count: 21)
!5156 = !DIGlobalVariableExpression(var: !5157, expr: !DIExpression())
!5157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 652, type: !2661, isLocal: true, isDefinition: true)
!5158 = !DIGlobalVariableExpression(var: !5159, expr: !DIExpression())
!5159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 652, type: !5160, isLocal: true, isDefinition: true)
!5160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 88, elements: !4938)
!5161 = !DIGlobalVariableExpression(var: !5162, expr: !DIExpression())
!5162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 652, type: !5163, isLocal: true, isDefinition: true)
!5163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 16, elements: !2417)
!5164 = !DIGlobalVariableExpression(var: !5165, expr: !DIExpression())
!5165 = distinct !DIGlobalVariable(name: "__modver_attr", scope: !2, file: !3, line: 652, type: !5166, isLocal: true, isDefinition: true, align: 64)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_version_attribute", file: !6, line: 64, size: 576, elements: !5167)
!5167 = !{!5168, !5169, !5170}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !5166, file: !6, line: 65, baseType: !3793, size: 448)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "module_name", scope: !5166, file: !6, line: 66, baseType: !192, size: 64, offset: 448)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5166, file: !6, line: 67, baseType: !192, size: 64, offset: 512)
!5171 = !DIGlobalVariableExpression(var: !5172, expr: !DIExpression())
!5172 = distinct !DIGlobalVariable(name: "force_legacy", scope: !2, file: !3, line: 19, type: !1474, isLocal: true, isDefinition: true)
!5173 = !DIGlobalVariableExpression(var: !5174, expr: !DIExpression())
!5174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !1460, isLocal: true, isDefinition: true)
!5175 = !DIGlobalVariableExpression(var: !5176, expr: !DIExpression())
!5176 = distinct !DIGlobalVariable(scope: null, file: !152, line: 480, type: !5177, isLocal: true, isDefinition: true)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 168, elements: !5154)
!5178 = !DIGlobalVariableExpression(var: !5179, expr: !DIExpression())
!5179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !5180, isLocal: true, isDefinition: true)
!5180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 80, elements: !5181)
!5181 = !{!5182}
!5182 = !DISubrange(count: 10)
!5183 = !DIGlobalVariableExpression(var: !5184, expr: !DIExpression())
!5184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !5185, isLocal: true, isDefinition: true)
!5185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 112, elements: !5186)
!5186 = !{!5187}
!5187 = !DISubrange(count: 14)
!5188 = !DIGlobalVariableExpression(var: !5189, expr: !DIExpression())
!5189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !5160, isLocal: true, isDefinition: true)
!5190 = !DIGlobalVariableExpression(var: !5191, expr: !DIExpression())
!5191 = distinct !DIGlobalVariable(name: "virtio_pci_driver", scope: !2, file: !3, line: 636, type: !4831, isLocal: true, isDefinition: true)
!5192 = !DIGlobalVariableExpression(var: !5193, expr: !DIExpression())
!5193 = distinct !DIGlobalVariable(name: "virtio_pci_id_table", scope: !2, file: !3, line: 504, type: !5194, isLocal: true, isDefinition: true)
!5194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4837, size: 640, elements: !2417)
!5195 = !DIGlobalVariableExpression(var: !5196, expr: !DIExpression())
!5196 = distinct !DIGlobalVariable(scope: null, file: !4610, line: 143, type: !5197, isLocal: true, isDefinition: true)
!5197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 240, elements: !5198)
!5198 = !{!5199}
!5199 = !DISubrange(count: 30)
!5200 = !DIGlobalVariableExpression(var: !5201, expr: !DIExpression())
!5201 = distinct !DIGlobalVariable(name: "virtio_pci_pm_ops", scope: !2, file: !3, line: 497, type: !4169, isLocal: true, isDefinition: true)
!5202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !5203)
!5203 = !{!5204}
!5204 = !DISubrange(count: 24)
!5205 = !{i32 7, !"Dwarf Version", i32 5}
!5206 = !{i32 2, !"Debug Info Version", i32 3}
!5207 = !{i32 1, !"wchar_size", i32 2}
!5208 = !{i32 8, !"cf-protection-branch", i32 1}
!5209 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5210 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5211 = !{i32 1, !"Code Model", i32 2}
!5212 = !{i32 1, !"override-stack-alignment", i32 8}
!5213 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5214 = distinct !DISubprogram(name: "vp_synchronize_vectors", scope: !3, file: !3, line: 28, type: !4634, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5215)
!5215 = !{!5216, !5217, !5218}
!5216 = !DILocalVariable(name: "vdev", arg: 1, scope: !5214, file: !3, line: 28, type: !4126)
!5217 = !DILocalVariable(name: "vp_dev", scope: !5214, file: !3, line: 30, type: !4712)
!5218 = !DILocalVariable(name: "i", scope: !5214, file: !3, line: 31, type: !109)
!5219 = !DILocation(line: 28, column: 51, scope: !5214)
!5220 = !DILocation(line: 30, column: 2, scope: !5214)
!5221 = !DILocation(line: 30, column: 28, scope: !5214)
!5222 = !DILocation(line: 30, column: 50, scope: !5214)
!5223 = !DILocation(line: 30, column: 37, scope: !5214)
!5224 = !DILocation(line: 31, column: 2, scope: !5214)
!5225 = !DILocation(line: 31, column: 6, scope: !5214)
!5226 = !DILocation(line: 33, column: 6, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 33, column: 6)
!5228 = !DILocation(line: 33, column: 14, scope: !5227)
!5229 = !DILocation(line: 33, column: 6, scope: !5214)
!5230 = !DILocation(line: 34, column: 19, scope: !5227)
!5231 = !DILocation(line: 34, column: 27, scope: !5227)
!5232 = !DILocation(line: 34, column: 36, scope: !5227)
!5233 = !DILocation(line: 34, column: 3, scope: !5227)
!5234 = !DILocation(line: 36, column: 9, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 36, column: 2)
!5236 = !DILocation(line: 36, column: 7, scope: !5235)
!5237 = !DILocation(line: 36, column: 14, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 36, column: 2)
!5239 = !DILocation(line: 36, column: 18, scope: !5238)
!5240 = !DILocation(line: 36, column: 26, scope: !5238)
!5241 = !DILocation(line: 36, column: 16, scope: !5238)
!5242 = !DILocation(line: 36, column: 2, scope: !5235)
!5243 = !DILocation(line: 37, column: 34, scope: !5238)
!5244 = !DILocation(line: 37, column: 42, scope: !5238)
!5245 = !DILocation(line: 37, column: 51, scope: !5238)
!5246 = !DILocation(line: 37, column: 19, scope: !5238)
!5247 = !DILocation(line: 37, column: 3, scope: !5238)
!5248 = !DILocation(line: 36, column: 40, scope: !5238)
!5249 = !DILocation(line: 36, column: 2, scope: !5238)
!5250 = distinct !{!5250, !5242, !5251, !5252, !5253}
!5251 = !DILocation(line: 37, column: 53, scope: !5235)
!5252 = !{!"llvm.loop.mustprogress"}
!5253 = !{!"llvm.loop.unroll.disable"}
!5254 = !DILocation(line: 38, column: 1, scope: !5214)
!5255 = distinct !DISubprogram(name: "to_vp_device", scope: !147, file: !147, line: 100, type: !5256, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5258)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!4712, !4126}
!5258 = !{!5259, !5260}
!5259 = !DILocalVariable(name: "vdev", arg: 1, scope: !5255, file: !147, line: 100, type: !4126)
!5260 = !DILocalVariable(name: "__mptr", scope: !5261, file: !147, line: 102, type: !345)
!5261 = distinct !DILexicalBlock(scope: !5255, file: !147, line: 102, column: 9)
!5262 = !DILocation(line: 100, column: 69, scope: !5255)
!5263 = !DILocation(line: 102, column: 9, scope: !5261)
!5264 = !DILocation(line: 102, column: 9, scope: !5255)
!5265 = !DILocation(line: 102, column: 2, scope: !5255)
!5266 = !DISubprogram(name: "synchronize_irq", scope: !5267, file: !5267, line: 13, type: !5268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = !DIFile(filename: "./include/linux/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e28e97c9e9f6f4db7783a84a063e2e35")
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !7}
!5270 = !DISubprogram(name: "pci_irq_vector", scope: !4719, file: !4719, line: 1663, type: !5271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!109, !4717, !7}
!5273 = distinct !DISubprogram(name: "vp_notify", scope: !3, file: !3, line: 41, type: !5274, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!1474, !4115}
!5276 = !{!5277}
!5277 = !DILocalVariable(name: "vq", arg: 1, scope: !5273, file: !3, line: 41, type: !4115)
!5278 = !DILocation(line: 41, column: 34, scope: !5273)
!5279 = !DILocation(line: 45, column: 12, scope: !5273)
!5280 = !DILocation(line: 45, column: 16, scope: !5273)
!5281 = !DILocation(line: 45, column: 39, scope: !5273)
!5282 = !DILocation(line: 45, column: 43, scope: !5273)
!5283 = !DILocation(line: 45, column: 2, scope: !5273)
!5284 = !DILocation(line: 46, column: 2, scope: !5273)
!5285 = !DISubprogram(name: "iowrite16", scope: !5286, file: !5286, line: 51, type: !5287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5286 = !DIFile(filename: "./include/asm-generic/iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2fb4069c6c763a33a87cd5332e9980e8")
!5287 = !DISubroutineType(types: !5288)
!5288 = !{null, !241, !345}
!5289 = distinct !DISubprogram(name: "vp_del_vqs", scope: !3, file: !3, line: 232, type: !4634, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5290)
!5290 = !{!5291, !5292, !5293, !5294, !5295, !5296, !5299, !5301, !5306, !5309}
!5291 = !DILocalVariable(name: "vdev", arg: 1, scope: !5289, file: !3, line: 232, type: !4126)
!5292 = !DILocalVariable(name: "vp_dev", scope: !5289, file: !3, line: 234, type: !4712)
!5293 = !DILocalVariable(name: "vq", scope: !5289, file: !3, line: 235, type: !4115)
!5294 = !DILocalVariable(name: "n", scope: !5289, file: !3, line: 235, type: !4115)
!5295 = !DILocalVariable(name: "i", scope: !5289, file: !3, line: 236, type: !109)
!5296 = !DILocalVariable(name: "__mptr", scope: !5297, file: !3, line: 238, type: !345)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 238, column: 2)
!5298 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 238, column: 2)
!5299 = !DILocalVariable(name: "__mptr", scope: !5300, file: !3, line: 238, type: !345)
!5300 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 238, column: 2)
!5301 = !DILocalVariable(name: "v", scope: !5302, file: !3, line: 240, type: !109)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 239, column: 31)
!5303 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 239, column: 7)
!5304 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 238, column: 52)
!5305 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 238, column: 2)
!5306 = !DILocalVariable(name: "irq", scope: !5307, file: !3, line: 243, type: !109)
!5307 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 242, column: 35)
!5308 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 242, column: 8)
!5309 = !DILocalVariable(name: "__mptr", scope: !5310, file: !3, line: 238, type: !345)
!5310 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 238, column: 2)
!5311 = !DILocation(line: 232, column: 39, scope: !5289)
!5312 = !DILocation(line: 234, column: 2, scope: !5289)
!5313 = !DILocation(line: 234, column: 28, scope: !5289)
!5314 = !DILocation(line: 234, column: 50, scope: !5289)
!5315 = !DILocation(line: 234, column: 37, scope: !5289)
!5316 = !DILocation(line: 235, column: 2, scope: !5289)
!5317 = !DILocation(line: 235, column: 20, scope: !5289)
!5318 = !DILocation(line: 235, column: 25, scope: !5289)
!5319 = !DILocation(line: 236, column: 2, scope: !5289)
!5320 = !DILocation(line: 236, column: 6, scope: !5289)
!5321 = !DILocation(line: 238, column: 2, scope: !5297)
!5322 = !DILocation(line: 238, column: 2, scope: !5298)
!5323 = !DILocation(line: 238, column: 2, scope: !5300)
!5324 = !DILocation(line: 238, column: 2, scope: !5305)
!5325 = !DILocation(line: 239, column: 7, scope: !5303)
!5326 = !DILocation(line: 239, column: 15, scope: !5303)
!5327 = !{i8 0, i8 2}
!5328 = !DILocation(line: 239, column: 7, scope: !5304)
!5329 = !DILocation(line: 240, column: 4, scope: !5302)
!5330 = !DILocation(line: 240, column: 8, scope: !5302)
!5331 = !DILocation(line: 240, column: 12, scope: !5302)
!5332 = !DILocation(line: 240, column: 20, scope: !5302)
!5333 = !DILocation(line: 240, column: 24, scope: !5302)
!5334 = !DILocation(line: 240, column: 28, scope: !5302)
!5335 = !DILocation(line: 240, column: 36, scope: !5302)
!5336 = !DILocation(line: 242, column: 8, scope: !5308)
!5337 = !DILocation(line: 242, column: 10, scope: !5308)
!5338 = !DILocation(line: 242, column: 8, scope: !5302)
!5339 = !DILocation(line: 243, column: 5, scope: !5307)
!5340 = !DILocation(line: 243, column: 9, scope: !5307)
!5341 = !DILocation(line: 243, column: 30, scope: !5307)
!5342 = !DILocation(line: 243, column: 38, scope: !5307)
!5343 = !DILocation(line: 243, column: 47, scope: !5307)
!5344 = !DILocation(line: 243, column: 15, scope: !5307)
!5345 = !DILocation(line: 245, column: 27, scope: !5307)
!5346 = !DILocation(line: 245, column: 5, scope: !5307)
!5347 = !DILocation(line: 246, column: 14, scope: !5307)
!5348 = !DILocation(line: 246, column: 19, scope: !5307)
!5349 = !DILocation(line: 246, column: 5, scope: !5307)
!5350 = !DILocation(line: 247, column: 4, scope: !5308)
!5351 = !DILocation(line: 247, column: 4, scope: !5307)
!5352 = !DILocation(line: 248, column: 3, scope: !5303)
!5353 = !DILocation(line: 248, column: 3, scope: !5302)
!5354 = !DILocation(line: 249, column: 13, scope: !5304)
!5355 = !DILocation(line: 249, column: 3, scope: !5304)
!5356 = !DILocation(line: 250, column: 2, scope: !5304)
!5357 = !DILocation(line: 238, column: 2, scope: !5310)
!5358 = distinct !{!5358, !5322, !5359, !5252, !5253}
!5359 = !DILocation(line: 250, column: 2, scope: !5298)
!5360 = !DILocation(line: 251, column: 2, scope: !5289)
!5361 = !DILocation(line: 251, column: 10, scope: !5289)
!5362 = !DILocation(line: 251, column: 25, scope: !5289)
!5363 = !DILocation(line: 253, column: 6, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 253, column: 6)
!5365 = !DILocation(line: 253, column: 14, scope: !5364)
!5366 = !DILocation(line: 253, column: 6, scope: !5289)
!5367 = !DILocation(line: 254, column: 12, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 253, column: 28)
!5369 = !DILocation(line: 254, column: 20, scope: !5368)
!5370 = !DILocation(line: 254, column: 29, scope: !5368)
!5371 = !DILocation(line: 254, column: 34, scope: !5368)
!5372 = !DILocation(line: 254, column: 3, scope: !5368)
!5373 = !DILocation(line: 255, column: 3, scope: !5368)
!5374 = !DILocation(line: 255, column: 11, scope: !5368)
!5375 = !DILocation(line: 255, column: 24, scope: !5368)
!5376 = !DILocation(line: 256, column: 2, scope: !5368)
!5377 = !DILocation(line: 258, column: 9, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 258, column: 2)
!5379 = !DILocation(line: 258, column: 7, scope: !5378)
!5380 = !DILocation(line: 258, column: 14, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 258, column: 2)
!5382 = !DILocation(line: 258, column: 18, scope: !5381)
!5383 = !DILocation(line: 258, column: 26, scope: !5381)
!5384 = !DILocation(line: 258, column: 16, scope: !5381)
!5385 = !DILocation(line: 258, column: 2, scope: !5378)
!5386 = !DILocation(line: 259, column: 27, scope: !5381)
!5387 = !DILocation(line: 259, column: 35, scope: !5381)
!5388 = !DILocation(line: 259, column: 44, scope: !5381)
!5389 = !DILocation(line: 259, column: 12, scope: !5381)
!5390 = !DILocation(line: 259, column: 48, scope: !5381)
!5391 = !DILocation(line: 259, column: 3, scope: !5381)
!5392 = !DILocation(line: 258, column: 45, scope: !5381)
!5393 = !DILocation(line: 258, column: 2, scope: !5381)
!5394 = distinct !{!5394, !5385, !5395, !5252, !5253}
!5395 = !DILocation(line: 259, column: 54, scope: !5378)
!5396 = !DILocation(line: 261, column: 6, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 261, column: 6)
!5398 = !DILocation(line: 261, column: 14, scope: !5397)
!5399 = !DILocation(line: 261, column: 6, scope: !5289)
!5400 = !DILocation(line: 262, column: 10, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 262, column: 3)
!5402 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 261, column: 35)
!5403 = !DILocation(line: 262, column: 8, scope: !5401)
!5404 = !DILocation(line: 262, column: 15, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 262, column: 3)
!5406 = !DILocation(line: 262, column: 19, scope: !5405)
!5407 = !DILocation(line: 262, column: 27, scope: !5405)
!5408 = !DILocation(line: 262, column: 17, scope: !5405)
!5409 = !DILocation(line: 262, column: 3, scope: !5401)
!5410 = !DILocation(line: 263, column: 21, scope: !5405)
!5411 = !DILocation(line: 263, column: 29, scope: !5405)
!5412 = !DILocation(line: 263, column: 49, scope: !5405)
!5413 = !DILocation(line: 263, column: 4, scope: !5405)
!5414 = !DILocation(line: 262, column: 42, scope: !5405)
!5415 = !DILocation(line: 262, column: 3, scope: !5405)
!5416 = distinct !{!5416, !5409, !5417, !5252, !5253}
!5417 = !DILocation(line: 263, column: 51, scope: !5401)
!5418 = !DILocation(line: 264, column: 2, scope: !5402)
!5419 = !DILocation(line: 266, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 266, column: 6)
!5421 = !DILocation(line: 266, column: 14, scope: !5420)
!5422 = !DILocation(line: 266, column: 6, scope: !5289)
!5423 = !DILocation(line: 268, column: 3, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 266, column: 28)
!5425 = !DILocation(line: 268, column: 11, scope: !5424)
!5426 = !DILocation(line: 268, column: 25, scope: !5424)
!5427 = !DILocation(line: 270, column: 24, scope: !5424)
!5428 = !DILocation(line: 270, column: 32, scope: !5424)
!5429 = !DILocation(line: 270, column: 3, scope: !5424)
!5430 = !DILocation(line: 271, column: 3, scope: !5424)
!5431 = !DILocation(line: 271, column: 11, scope: !5424)
!5432 = !DILocation(line: 271, column: 24, scope: !5424)
!5433 = !DILocation(line: 272, column: 2, scope: !5424)
!5434 = !DILocation(line: 274, column: 2, scope: !5289)
!5435 = !DILocation(line: 274, column: 10, scope: !5289)
!5436 = !DILocation(line: 274, column: 23, scope: !5289)
!5437 = !DILocation(line: 275, column: 2, scope: !5289)
!5438 = !DILocation(line: 275, column: 10, scope: !5289)
!5439 = !DILocation(line: 275, column: 28, scope: !5289)
!5440 = !DILocation(line: 276, column: 8, scope: !5289)
!5441 = !DILocation(line: 276, column: 16, scope: !5289)
!5442 = !DILocation(line: 276, column: 2, scope: !5289)
!5443 = !DILocation(line: 277, column: 2, scope: !5289)
!5444 = !DILocation(line: 277, column: 10, scope: !5289)
!5445 = !DILocation(line: 277, column: 21, scope: !5289)
!5446 = !DILocation(line: 278, column: 8, scope: !5289)
!5447 = !DILocation(line: 278, column: 16, scope: !5289)
!5448 = !DILocation(line: 278, column: 2, scope: !5289)
!5449 = !DILocation(line: 279, column: 2, scope: !5289)
!5450 = !DILocation(line: 279, column: 10, scope: !5289)
!5451 = !DILocation(line: 279, column: 30, scope: !5289)
!5452 = !DILocation(line: 280, column: 8, scope: !5289)
!5453 = !DILocation(line: 280, column: 16, scope: !5289)
!5454 = !DILocation(line: 280, column: 2, scope: !5289)
!5455 = !DILocation(line: 281, column: 2, scope: !5289)
!5456 = !DILocation(line: 281, column: 10, scope: !5289)
!5457 = !DILocation(line: 281, column: 14, scope: !5289)
!5458 = !DILocation(line: 282, column: 1, scope: !5289)
!5459 = distinct !DISubprogram(name: "irq_set_affinity_hint", scope: !4650, file: !4650, line: 349, type: !5460, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5462)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!109, !7, !4680}
!5462 = !{!5463, !5464}
!5463 = !DILocalVariable(name: "irq", arg: 1, scope: !5459, file: !4650, line: 349, type: !7)
!5464 = !DILocalVariable(name: "m", arg: 2, scope: !5459, file: !4650, line: 349, type: !4680)
!5465 = !DILocation(line: 349, column: 54, scope: !5459)
!5466 = !DILocation(line: 349, column: 81, scope: !5459)
!5467 = !DILocation(line: 351, column: 35, scope: !5459)
!5468 = !DILocation(line: 351, column: 40, scope: !5459)
!5469 = !DILocation(line: 351, column: 9, scope: !5459)
!5470 = !DILocation(line: 351, column: 2, scope: !5459)
!5471 = !DISubprogram(name: "free_irq", scope: !4650, file: !4650, line: 196, type: !5472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!2143, !7, !345}
!5474 = distinct !DISubprogram(name: "vp_del_vq", scope: !3, file: !3, line: 211, type: !4122, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5475)
!5475 = !{!5476, !5477, !5478, !5479, !5480, !5486}
!5476 = !DILocalVariable(name: "vq", arg: 1, scope: !5474, file: !3, line: 211, type: !4115)
!5477 = !DILocalVariable(name: "vp_dev", scope: !5474, file: !3, line: 213, type: !4712)
!5478 = !DILocalVariable(name: "info", scope: !5474, file: !3, line: 214, type: !5080)
!5479 = !DILocalVariable(name: "flags", scope: !5474, file: !3, line: 215, type: !323)
!5480 = !DILocalVariable(name: "__dummy", scope: !5481, file: !3, line: 222, type: !323)
!5481 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 222, column: 3)
!5482 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 222, column: 3)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 222, column: 3)
!5484 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 221, column: 18)
!5485 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 221, column: 6)
!5486 = !DILocalVariable(name: "__dummy2", scope: !5481, file: !3, line: 222, type: !323)
!5487 = !DILocation(line: 211, column: 41, scope: !5474)
!5488 = !DILocation(line: 213, column: 2, scope: !5474)
!5489 = !DILocation(line: 213, column: 28, scope: !5474)
!5490 = !DILocation(line: 213, column: 50, scope: !5474)
!5491 = !DILocation(line: 213, column: 54, scope: !5474)
!5492 = !DILocation(line: 213, column: 37, scope: !5474)
!5493 = !DILocation(line: 214, column: 2, scope: !5474)
!5494 = !DILocation(line: 214, column: 29, scope: !5474)
!5495 = !DILocation(line: 214, column: 36, scope: !5474)
!5496 = !DILocation(line: 214, column: 44, scope: !5474)
!5497 = !DILocation(line: 214, column: 48, scope: !5474)
!5498 = !DILocation(line: 214, column: 52, scope: !5474)
!5499 = !DILocation(line: 215, column: 2, scope: !5474)
!5500 = !DILocation(line: 215, column: 16, scope: !5474)
!5501 = !DILocation(line: 221, column: 7, scope: !5485)
!5502 = !DILocation(line: 221, column: 11, scope: !5485)
!5503 = !DILocation(line: 221, column: 6, scope: !5474)
!5504 = !DILocation(line: 222, column: 3, scope: !5484)
!5505 = !DILocation(line: 222, column: 3, scope: !5483)
!5506 = !DILocation(line: 222, column: 3, scope: !5481)
!5507 = !DILocation(line: 222, column: 3, scope: !5482)
!5508 = !DILocation(line: 223, column: 13, scope: !5484)
!5509 = !DILocation(line: 223, column: 19, scope: !5484)
!5510 = !DILocation(line: 223, column: 3, scope: !5484)
!5511 = !DILocation(line: 224, column: 27, scope: !5484)
!5512 = !DILocation(line: 224, column: 35, scope: !5484)
!5513 = !DILocation(line: 224, column: 41, scope: !5484)
!5514 = !DILocation(line: 224, column: 3, scope: !5484)
!5515 = !DILocation(line: 225, column: 2, scope: !5484)
!5516 = !DILocation(line: 227, column: 2, scope: !5474)
!5517 = !DILocation(line: 227, column: 10, scope: !5474)
!5518 = !DILocation(line: 227, column: 17, scope: !5474)
!5519 = !DILocation(line: 228, column: 8, scope: !5474)
!5520 = !DILocation(line: 228, column: 2, scope: !5474)
!5521 = !DILocation(line: 229, column: 1, scope: !5474)
!5522 = distinct !DISubprogram(name: "free_cpumask_var", scope: !1233, file: !1233, line: 946, type: !5523, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5526)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{null, !5525}
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!5526 = !{!5527}
!5527 = !DILocalVariable(name: "mask", arg: 1, scope: !5522, file: !1233, line: 946, type: !5525)
!5528 = !DILocation(line: 946, column: 51, scope: !5522)
!5529 = !DILocation(line: 948, column: 1, scope: !5522)
!5530 = !DISubprogram(name: "pci_free_irq_vectors", scope: !4719, file: !4719, line: 1662, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5531 = !DISubprogram(name: "kfree", scope: !152, file: !152, line: 227, type: !5532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{null, !2143}
!5534 = distinct !DISubprogram(name: "vp_find_vqs", scope: !3, file: !3, line: 399, type: !4638, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5535)
!5535 = !{!5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543}
!5536 = !DILocalVariable(name: "vdev", arg: 1, scope: !5534, file: !3, line: 399, type: !4126)
!5537 = !DILocalVariable(name: "nvqs", arg: 2, scope: !5534, file: !3, line: 399, type: !7)
!5538 = !DILocalVariable(name: "vqs", arg: 3, scope: !5534, file: !3, line: 400, type: !4640)
!5539 = !DILocalVariable(name: "callbacks", arg: 4, scope: !5534, file: !3, line: 400, type: !4641)
!5540 = !DILocalVariable(name: "names", arg: 5, scope: !5534, file: !3, line: 401, type: !4644)
!5541 = !DILocalVariable(name: "ctx", arg: 6, scope: !5534, file: !3, line: 401, type: !4646)
!5542 = !DILocalVariable(name: "desc", arg: 7, scope: !5534, file: !3, line: 402, type: !4648)
!5543 = !DILocalVariable(name: "err", scope: !5534, file: !3, line: 404, type: !109)
!5544 = !DILocation(line: 399, column: 39, scope: !5534)
!5545 = !DILocation(line: 399, column: 58, scope: !5534)
!5546 = !DILocation(line: 400, column: 21, scope: !5534)
!5547 = !DILocation(line: 400, column: 43, scope: !5534)
!5548 = !DILocation(line: 401, column: 22, scope: !5534)
!5549 = !DILocation(line: 401, column: 43, scope: !5534)
!5550 = !DILocation(line: 402, column: 24, scope: !5534)
!5551 = !DILocation(line: 404, column: 2, scope: !5534)
!5552 = !DILocation(line: 404, column: 6, scope: !5534)
!5553 = !DILocation(line: 407, column: 25, scope: !5534)
!5554 = !DILocation(line: 407, column: 31, scope: !5534)
!5555 = !DILocation(line: 407, column: 37, scope: !5534)
!5556 = !DILocation(line: 407, column: 42, scope: !5534)
!5557 = !DILocation(line: 407, column: 53, scope: !5534)
!5558 = !DILocation(line: 407, column: 66, scope: !5534)
!5559 = !DILocation(line: 407, column: 71, scope: !5534)
!5560 = !DILocation(line: 407, column: 8, scope: !5534)
!5561 = !DILocation(line: 407, column: 6, scope: !5534)
!5562 = !DILocation(line: 408, column: 7, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 408, column: 6)
!5564 = !DILocation(line: 408, column: 6, scope: !5534)
!5565 = !DILocation(line: 409, column: 3, scope: !5563)
!5566 = !DILocation(line: 411, column: 25, scope: !5534)
!5567 = !DILocation(line: 411, column: 31, scope: !5534)
!5568 = !DILocation(line: 411, column: 37, scope: !5534)
!5569 = !DILocation(line: 411, column: 42, scope: !5534)
!5570 = !DILocation(line: 411, column: 53, scope: !5534)
!5571 = !DILocation(line: 411, column: 67, scope: !5534)
!5572 = !DILocation(line: 411, column: 72, scope: !5534)
!5573 = !DILocation(line: 411, column: 8, scope: !5534)
!5574 = !DILocation(line: 411, column: 6, scope: !5534)
!5575 = !DILocation(line: 412, column: 7, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 412, column: 6)
!5577 = !DILocation(line: 412, column: 6, scope: !5534)
!5578 = !DILocation(line: 413, column: 3, scope: !5576)
!5579 = !DILocation(line: 415, column: 21, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 415, column: 6)
!5581 = !DILocation(line: 415, column: 8, scope: !5580)
!5582 = !DILocation(line: 415, column: 28, scope: !5580)
!5583 = !DILocation(line: 415, column: 37, scope: !5580)
!5584 = !DILocation(line: 415, column: 7, scope: !5580)
!5585 = !DILocation(line: 415, column: 6, scope: !5534)
!5586 = !DILocation(line: 416, column: 10, scope: !5580)
!5587 = !DILocation(line: 416, column: 3, scope: !5580)
!5588 = !DILocation(line: 418, column: 26, scope: !5534)
!5589 = !DILocation(line: 418, column: 32, scope: !5534)
!5590 = !DILocation(line: 418, column: 38, scope: !5534)
!5591 = !DILocation(line: 418, column: 43, scope: !5534)
!5592 = !DILocation(line: 418, column: 54, scope: !5534)
!5593 = !DILocation(line: 418, column: 61, scope: !5534)
!5594 = !DILocation(line: 418, column: 9, scope: !5534)
!5595 = !DILocation(line: 418, column: 2, scope: !5534)
!5596 = !DILocation(line: 419, column: 1, scope: !5534)
!5597 = distinct !DISubprogram(name: "vp_find_vqs_msix", scope: !3, file: !3, line: 284, type: !5598, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!109, !4126, !7, !4640, !4641, !4644, !1474, !4646, !4648}
!5600 = !{!5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616}
!5601 = !DILocalVariable(name: "vdev", arg: 1, scope: !5597, file: !3, line: 284, type: !4126)
!5602 = !DILocalVariable(name: "nvqs", arg: 2, scope: !5597, file: !3, line: 284, type: !7)
!5603 = !DILocalVariable(name: "vqs", arg: 3, scope: !5597, file: !3, line: 285, type: !4640)
!5604 = !DILocalVariable(name: "callbacks", arg: 4, scope: !5597, file: !3, line: 285, type: !4641)
!5605 = !DILocalVariable(name: "names", arg: 5, scope: !5597, file: !3, line: 286, type: !4644)
!5606 = !DILocalVariable(name: "per_vq_vectors", arg: 6, scope: !5597, file: !3, line: 286, type: !1474)
!5607 = !DILocalVariable(name: "ctx", arg: 7, scope: !5597, file: !3, line: 287, type: !4646)
!5608 = !DILocalVariable(name: "desc", arg: 8, scope: !5597, file: !3, line: 288, type: !4648)
!5609 = !DILocalVariable(name: "vp_dev", scope: !5597, file: !3, line: 290, type: !4712)
!5610 = !DILocalVariable(name: "msix_vec", scope: !5597, file: !3, line: 291, type: !241)
!5611 = !DILocalVariable(name: "i", scope: !5597, file: !3, line: 292, type: !109)
!5612 = !DILocalVariable(name: "err", scope: !5597, file: !3, line: 292, type: !109)
!5613 = !DILocalVariable(name: "nvectors", scope: !5597, file: !3, line: 292, type: !109)
!5614 = !DILocalVariable(name: "allocated_vectors", scope: !5597, file: !3, line: 292, type: !109)
!5615 = !DILocalVariable(name: "queue_idx", scope: !5597, file: !3, line: 292, type: !109)
!5616 = !DILabel(scope: !5597, name: "error_find", file: !3, line: 355)
!5617 = !DILocation(line: 284, column: 51, scope: !5597)
!5618 = !DILocation(line: 284, column: 70, scope: !5597)
!5619 = !DILocation(line: 285, column: 21, scope: !5597)
!5620 = !DILocation(line: 285, column: 43, scope: !5597)
!5621 = !DILocation(line: 286, column: 22, scope: !5597)
!5622 = !DILocation(line: 286, column: 36, scope: !5597)
!5623 = !DILocation(line: 287, column: 15, scope: !5597)
!5624 = !DILocation(line: 288, column: 24, scope: !5597)
!5625 = !DILocation(line: 290, column: 2, scope: !5597)
!5626 = !DILocation(line: 290, column: 28, scope: !5597)
!5627 = !DILocation(line: 290, column: 50, scope: !5597)
!5628 = !DILocation(line: 290, column: 37, scope: !5597)
!5629 = !DILocation(line: 291, column: 2, scope: !5597)
!5630 = !DILocation(line: 291, column: 6, scope: !5597)
!5631 = !DILocation(line: 292, column: 2, scope: !5597)
!5632 = !DILocation(line: 292, column: 6, scope: !5597)
!5633 = !DILocation(line: 292, column: 9, scope: !5597)
!5634 = !DILocation(line: 292, column: 14, scope: !5597)
!5635 = !DILocation(line: 292, column: 24, scope: !5597)
!5636 = !DILocation(line: 292, column: 43, scope: !5597)
!5637 = !DILocation(line: 294, column: 24, scope: !5597)
!5638 = !DILocation(line: 294, column: 16, scope: !5597)
!5639 = !DILocation(line: 294, column: 2, scope: !5597)
!5640 = !DILocation(line: 294, column: 10, scope: !5597)
!5641 = !DILocation(line: 294, column: 14, scope: !5597)
!5642 = !DILocation(line: 295, column: 7, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 295, column: 6)
!5644 = !DILocation(line: 295, column: 15, scope: !5643)
!5645 = !DILocation(line: 295, column: 6, scope: !5597)
!5646 = !DILocation(line: 296, column: 3, scope: !5643)
!5647 = !DILocation(line: 298, column: 6, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 298, column: 6)
!5649 = !DILocation(line: 298, column: 6, scope: !5597)
!5650 = !DILocation(line: 300, column: 12, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 298, column: 22)
!5652 = !DILocation(line: 301, column: 10, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 301, column: 3)
!5654 = !DILocation(line: 301, column: 8, scope: !5653)
!5655 = !DILocation(line: 301, column: 15, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 301, column: 3)
!5657 = !DILocation(line: 301, column: 19, scope: !5656)
!5658 = !DILocation(line: 301, column: 17, scope: !5656)
!5659 = !DILocation(line: 301, column: 3, scope: !5653)
!5660 = !DILocation(line: 302, column: 8, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 302, column: 8)
!5662 = !DILocation(line: 302, column: 14, scope: !5661)
!5663 = !DILocation(line: 302, column: 17, scope: !5661)
!5664 = !DILocation(line: 302, column: 20, scope: !5661)
!5665 = !DILocation(line: 302, column: 30, scope: !5661)
!5666 = !DILocation(line: 302, column: 8, scope: !5656)
!5667 = !DILocation(line: 303, column: 5, scope: !5661)
!5668 = !DILocation(line: 302, column: 31, scope: !5661)
!5669 = !DILocation(line: 301, column: 25, scope: !5656)
!5670 = !DILocation(line: 301, column: 3, scope: !5656)
!5671 = distinct !{!5671, !5659, !5672, !5252, !5253}
!5672 = !DILocation(line: 303, column: 7, scope: !5653)
!5673 = !DILocation(line: 304, column: 2, scope: !5651)
!5674 = !DILocation(line: 306, column: 12, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 304, column: 9)
!5676 = !DILocation(line: 309, column: 32, scope: !5597)
!5677 = !DILocation(line: 309, column: 38, scope: !5597)
!5678 = !DILocation(line: 309, column: 48, scope: !5597)
!5679 = !DILocation(line: 310, column: 11, scope: !5597)
!5680 = !DILocation(line: 310, column: 28, scope: !5597)
!5681 = !DILocation(line: 309, column: 8, scope: !5597)
!5682 = !DILocation(line: 309, column: 6, scope: !5597)
!5683 = !DILocation(line: 311, column: 6, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 311, column: 6)
!5685 = !DILocation(line: 311, column: 6, scope: !5597)
!5686 = !DILocation(line: 312, column: 3, scope: !5684)
!5687 = !DILocation(line: 314, column: 27, scope: !5597)
!5688 = !DILocation(line: 314, column: 2, scope: !5597)
!5689 = !DILocation(line: 314, column: 10, scope: !5597)
!5690 = !DILocation(line: 314, column: 25, scope: !5597)
!5691 = !DILocation(line: 315, column: 22, scope: !5597)
!5692 = !DILocation(line: 315, column: 30, scope: !5597)
!5693 = !DILocation(line: 315, column: 20, scope: !5597)
!5694 = !DILocation(line: 316, column: 9, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 316, column: 2)
!5696 = !DILocation(line: 316, column: 7, scope: !5695)
!5697 = !DILocation(line: 316, column: 14, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 316, column: 2)
!5699 = !DILocation(line: 316, column: 18, scope: !5698)
!5700 = !DILocation(line: 316, column: 16, scope: !5698)
!5701 = !DILocation(line: 316, column: 2, scope: !5695)
!5702 = !DILocation(line: 317, column: 8, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 317, column: 7)
!5704 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 316, column: 29)
!5705 = !DILocation(line: 317, column: 14, scope: !5703)
!5706 = !DILocation(line: 317, column: 7, scope: !5704)
!5707 = !DILocation(line: 318, column: 4, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 317, column: 18)
!5709 = !DILocation(line: 318, column: 8, scope: !5708)
!5710 = !DILocation(line: 318, column: 11, scope: !5708)
!5711 = !DILocation(line: 319, column: 4, scope: !5708)
!5712 = !DILocation(line: 322, column: 8, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 322, column: 7)
!5714 = !DILocation(line: 322, column: 18, scope: !5713)
!5715 = !DILocation(line: 322, column: 7, scope: !5704)
!5716 = !DILocation(line: 323, column: 13, scope: !5713)
!5717 = !DILocation(line: 323, column: 4, scope: !5713)
!5718 = !DILocation(line: 324, column: 12, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 324, column: 12)
!5720 = !DILocation(line: 324, column: 20, scope: !5719)
!5721 = !DILocation(line: 324, column: 12, scope: !5713)
!5722 = !DILocation(line: 325, column: 32, scope: !5719)
!5723 = !DILocation(line: 325, column: 15, scope: !5719)
!5724 = !DILocation(line: 325, column: 13, scope: !5719)
!5725 = !DILocation(line: 325, column: 4, scope: !5719)
!5726 = !DILocation(line: 327, column: 13, scope: !5719)
!5727 = !DILocation(line: 328, column: 24, scope: !5704)
!5728 = !DILocation(line: 328, column: 39, scope: !5704)
!5729 = !DILocation(line: 328, column: 43, scope: !5704)
!5730 = !DILocation(line: 328, column: 53, scope: !5704)
!5731 = !DILocation(line: 328, column: 57, scope: !5704)
!5732 = !DILocation(line: 328, column: 63, scope: !5704)
!5733 = !DILocation(line: 329, column: 10, scope: !5704)
!5734 = !DILocation(line: 329, column: 16, scope: !5704)
!5735 = !DILocation(line: 329, column: 20, scope: !5704)
!5736 = !DILocation(line: 330, column: 10, scope: !5704)
!5737 = !DILocation(line: 328, column: 12, scope: !5704)
!5738 = !DILocation(line: 328, column: 3, scope: !5704)
!5739 = !DILocation(line: 328, column: 7, scope: !5704)
!5740 = !DILocation(line: 328, column: 10, scope: !5704)
!5741 = !DILocation(line: 331, column: 14, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 331, column: 7)
!5743 = !DILocation(line: 331, column: 18, scope: !5742)
!5744 = !DILocation(line: 331, column: 7, scope: !5742)
!5745 = !DILocation(line: 331, column: 7, scope: !5704)
!5746 = !DILocation(line: 332, column: 18, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 331, column: 23)
!5748 = !DILocation(line: 332, column: 22, scope: !5747)
!5749 = !DILocation(line: 332, column: 10, scope: !5747)
!5750 = !DILocation(line: 332, column: 8, scope: !5747)
!5751 = !DILocation(line: 333, column: 4, scope: !5747)
!5752 = !DILocation(line: 336, column: 8, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 336, column: 7)
!5754 = !DILocation(line: 336, column: 16, scope: !5753)
!5755 = !DILocation(line: 336, column: 31, scope: !5753)
!5756 = !DILocation(line: 336, column: 34, scope: !5753)
!5757 = !DILocation(line: 336, column: 43, scope: !5753)
!5758 = !DILocation(line: 336, column: 7, scope: !5704)
!5759 = !DILocation(line: 337, column: 4, scope: !5753)
!5760 = !DILocation(line: 340, column: 12, scope: !5704)
!5761 = !DILocation(line: 340, column: 20, scope: !5704)
!5762 = !DILocation(line: 340, column: 31, scope: !5704)
!5763 = !DILocation(line: 343, column: 15, scope: !5704)
!5764 = !DILocation(line: 343, column: 23, scope: !5704)
!5765 = !DILocation(line: 343, column: 28, scope: !5704)
!5766 = !DILocation(line: 343, column: 5, scope: !5704)
!5767 = !DILocation(line: 343, column: 34, scope: !5704)
!5768 = !DILocation(line: 343, column: 40, scope: !5704)
!5769 = !DILocation(line: 340, column: 3, scope: !5704)
!5770 = !DILocation(line: 344, column: 36, scope: !5704)
!5771 = !DILocation(line: 344, column: 44, scope: !5704)
!5772 = !DILocation(line: 344, column: 53, scope: !5704)
!5773 = !DILocation(line: 344, column: 21, scope: !5704)
!5774 = !DILocation(line: 346, column: 7, scope: !5704)
!5775 = !DILocation(line: 346, column: 15, scope: !5704)
!5776 = !DILocation(line: 346, column: 26, scope: !5704)
!5777 = !DILocation(line: 347, column: 7, scope: !5704)
!5778 = !DILocation(line: 347, column: 11, scope: !5704)
!5779 = !DILocation(line: 344, column: 9, scope: !5704)
!5780 = !DILocation(line: 344, column: 7, scope: !5704)
!5781 = !DILocation(line: 348, column: 7, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 348, column: 7)
!5783 = !DILocation(line: 348, column: 7, scope: !5704)
!5784 = !DILocation(line: 349, column: 14, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 348, column: 12)
!5786 = !DILocation(line: 349, column: 18, scope: !5785)
!5787 = !DILocation(line: 349, column: 4, scope: !5785)
!5788 = !DILocation(line: 350, column: 4, scope: !5785)
!5789 = !DILocation(line: 352, column: 2, scope: !5704)
!5790 = !DILocation(line: 316, column: 24, scope: !5698)
!5791 = !DILocation(line: 316, column: 2, scope: !5698)
!5792 = distinct !{!5792, !5701, !5793, !5252, !5253}
!5793 = !DILocation(line: 352, column: 2, scope: !5695)
!5794 = !DILocation(line: 353, column: 2, scope: !5597)
!5795 = !DILocation(line: 355, column: 1, scope: !5597)
!5796 = !DILocation(line: 356, column: 13, scope: !5597)
!5797 = !DILocation(line: 356, column: 2, scope: !5597)
!5798 = !DILocation(line: 357, column: 9, scope: !5597)
!5799 = !DILocation(line: 357, column: 2, scope: !5597)
!5800 = !DILocation(line: 358, column: 1, scope: !5597)
!5801 = distinct !DISubprogram(name: "vp_find_vqs_intx", scope: !3, file: !3, line: 360, type: !5802, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5804)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!109, !4126, !7, !4640, !4641, !4644, !4646}
!5804 = !{!5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815}
!5805 = !DILocalVariable(name: "vdev", arg: 1, scope: !5801, file: !3, line: 360, type: !4126)
!5806 = !DILocalVariable(name: "nvqs", arg: 2, scope: !5801, file: !3, line: 360, type: !7)
!5807 = !DILocalVariable(name: "vqs", arg: 3, scope: !5801, file: !3, line: 361, type: !4640)
!5808 = !DILocalVariable(name: "callbacks", arg: 4, scope: !5801, file: !3, line: 361, type: !4641)
!5809 = !DILocalVariable(name: "names", arg: 5, scope: !5801, file: !3, line: 362, type: !4644)
!5810 = !DILocalVariable(name: "ctx", arg: 6, scope: !5801, file: !3, line: 362, type: !4646)
!5811 = !DILocalVariable(name: "vp_dev", scope: !5801, file: !3, line: 364, type: !4712)
!5812 = !DILocalVariable(name: "i", scope: !5801, file: !3, line: 365, type: !109)
!5813 = !DILocalVariable(name: "err", scope: !5801, file: !3, line: 365, type: !109)
!5814 = !DILocalVariable(name: "queue_idx", scope: !5801, file: !3, line: 365, type: !109)
!5815 = !DILabel(scope: !5801, name: "out_del_vqs", file: !3, line: 393)
!5816 = !DILocation(line: 360, column: 51, scope: !5801)
!5817 = !DILocation(line: 360, column: 70, scope: !5801)
!5818 = !DILocation(line: 361, column: 21, scope: !5801)
!5819 = !DILocation(line: 361, column: 43, scope: !5801)
!5820 = !DILocation(line: 362, column: 22, scope: !5801)
!5821 = !DILocation(line: 362, column: 43, scope: !5801)
!5822 = !DILocation(line: 364, column: 2, scope: !5801)
!5823 = !DILocation(line: 364, column: 28, scope: !5801)
!5824 = !DILocation(line: 364, column: 50, scope: !5801)
!5825 = !DILocation(line: 364, column: 37, scope: !5801)
!5826 = !DILocation(line: 365, column: 2, scope: !5801)
!5827 = !DILocation(line: 365, column: 6, scope: !5801)
!5828 = !DILocation(line: 365, column: 9, scope: !5801)
!5829 = !DILocation(line: 365, column: 14, scope: !5801)
!5830 = !DILocation(line: 367, column: 24, scope: !5801)
!5831 = !DILocation(line: 367, column: 16, scope: !5801)
!5832 = !DILocation(line: 367, column: 2, scope: !5801)
!5833 = !DILocation(line: 367, column: 10, scope: !5801)
!5834 = !DILocation(line: 367, column: 14, scope: !5801)
!5835 = !DILocation(line: 368, column: 7, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 368, column: 6)
!5837 = !DILocation(line: 368, column: 15, scope: !5836)
!5838 = !DILocation(line: 368, column: 6, scope: !5801)
!5839 = !DILocation(line: 369, column: 3, scope: !5836)
!5840 = !DILocation(line: 371, column: 20, scope: !5801)
!5841 = !DILocation(line: 371, column: 28, scope: !5801)
!5842 = !DILocation(line: 371, column: 37, scope: !5801)
!5843 = !DILocation(line: 372, column: 14, scope: !5801)
!5844 = !DILocation(line: 372, column: 20, scope: !5801)
!5845 = !DILocation(line: 372, column: 4, scope: !5801)
!5846 = !DILocation(line: 372, column: 26, scope: !5801)
!5847 = !DILocation(line: 371, column: 8, scope: !5801)
!5848 = !DILocation(line: 371, column: 6, scope: !5801)
!5849 = !DILocation(line: 373, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 373, column: 6)
!5851 = !DILocation(line: 373, column: 6, scope: !5801)
!5852 = !DILocation(line: 374, column: 3, scope: !5850)
!5853 = !DILocation(line: 376, column: 2, scope: !5801)
!5854 = !DILocation(line: 376, column: 10, scope: !5801)
!5855 = !DILocation(line: 376, column: 23, scope: !5801)
!5856 = !DILocation(line: 377, column: 2, scope: !5801)
!5857 = !DILocation(line: 377, column: 10, scope: !5801)
!5858 = !DILocation(line: 377, column: 25, scope: !5801)
!5859 = !DILocation(line: 378, column: 9, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 378, column: 2)
!5861 = !DILocation(line: 378, column: 7, scope: !5860)
!5862 = !DILocation(line: 378, column: 14, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 378, column: 2)
!5864 = !DILocation(line: 378, column: 18, scope: !5863)
!5865 = !DILocation(line: 378, column: 16, scope: !5863)
!5866 = !DILocation(line: 378, column: 2, scope: !5860)
!5867 = !DILocation(line: 379, column: 8, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 379, column: 7)
!5869 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 378, column: 29)
!5870 = !DILocation(line: 379, column: 14, scope: !5868)
!5871 = !DILocation(line: 379, column: 7, scope: !5869)
!5872 = !DILocation(line: 380, column: 4, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 379, column: 18)
!5874 = !DILocation(line: 380, column: 8, scope: !5873)
!5875 = !DILocation(line: 380, column: 11, scope: !5873)
!5876 = !DILocation(line: 381, column: 4, scope: !5873)
!5877 = !DILocation(line: 383, column: 24, scope: !5869)
!5878 = !DILocation(line: 383, column: 39, scope: !5869)
!5879 = !DILocation(line: 383, column: 43, scope: !5869)
!5880 = !DILocation(line: 383, column: 53, scope: !5869)
!5881 = !DILocation(line: 383, column: 57, scope: !5869)
!5882 = !DILocation(line: 383, column: 63, scope: !5869)
!5883 = !DILocation(line: 384, column: 10, scope: !5869)
!5884 = !DILocation(line: 384, column: 16, scope: !5869)
!5885 = !DILocation(line: 384, column: 20, scope: !5869)
!5886 = !DILocation(line: 383, column: 12, scope: !5869)
!5887 = !DILocation(line: 383, column: 3, scope: !5869)
!5888 = !DILocation(line: 383, column: 7, scope: !5869)
!5889 = !DILocation(line: 383, column: 10, scope: !5869)
!5890 = !DILocation(line: 386, column: 14, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 386, column: 7)
!5892 = !DILocation(line: 386, column: 18, scope: !5891)
!5893 = !DILocation(line: 386, column: 7, scope: !5891)
!5894 = !DILocation(line: 386, column: 7, scope: !5869)
!5895 = !DILocation(line: 387, column: 18, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 386, column: 23)
!5897 = !DILocation(line: 387, column: 22, scope: !5896)
!5898 = !DILocation(line: 387, column: 10, scope: !5896)
!5899 = !DILocation(line: 387, column: 8, scope: !5896)
!5900 = !DILocation(line: 388, column: 4, scope: !5896)
!5901 = !DILocation(line: 390, column: 2, scope: !5869)
!5902 = !DILocation(line: 378, column: 24, scope: !5863)
!5903 = !DILocation(line: 378, column: 2, scope: !5863)
!5904 = distinct !{!5904, !5866, !5905, !5252, !5253}
!5905 = !DILocation(line: 390, column: 2, scope: !5860)
!5906 = !DILocation(line: 392, column: 2, scope: !5801)
!5907 = !DILocation(line: 393, column: 1, scope: !5801)
!5908 = !DILocation(line: 394, column: 13, scope: !5801)
!5909 = !DILocation(line: 394, column: 2, scope: !5801)
!5910 = !DILocation(line: 395, column: 9, scope: !5801)
!5911 = !DILocation(line: 395, column: 2, scope: !5801)
!5912 = !DILocation(line: 396, column: 1, scope: !5801)
!5913 = distinct !DISubprogram(name: "vp_bus_name", scope: !3, file: !3, line: 421, type: !4674, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5914 = !{!5915, !5916}
!5915 = !DILocalVariable(name: "vdev", arg: 1, scope: !5913, file: !3, line: 421, type: !4126)
!5916 = !DILocalVariable(name: "vp_dev", scope: !5913, file: !3, line: 423, type: !4712)
!5917 = !DILocation(line: 421, column: 47, scope: !5913)
!5918 = !DILocation(line: 423, column: 2, scope: !5913)
!5919 = !DILocation(line: 423, column: 28, scope: !5913)
!5920 = !DILocation(line: 423, column: 50, scope: !5913)
!5921 = !DILocation(line: 423, column: 37, scope: !5913)
!5922 = !DILocation(line: 425, column: 18, scope: !5913)
!5923 = !DILocation(line: 425, column: 26, scope: !5913)
!5924 = !DILocation(line: 425, column: 9, scope: !5913)
!5925 = !DILocation(line: 426, column: 1, scope: !5913)
!5926 = !DILocation(line: 425, column: 2, scope: !5913)
!5927 = distinct !DISubprogram(name: "pci_name", scope: !4719, file: !4719, line: 2119, type: !5928, scopeLine: 2120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!192, !5930}
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5931, size: 64)
!5931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4718)
!5932 = !{!5933}
!5933 = !DILocalVariable(name: "pdev", arg: 1, scope: !5927, file: !4719, line: 2119, type: !5930)
!5934 = !DILocation(line: 2119, column: 58, scope: !5927)
!5935 = !DILocation(line: 2121, column: 19, scope: !5927)
!5936 = !DILocation(line: 2121, column: 25, scope: !5927)
!5937 = !DILocation(line: 2121, column: 9, scope: !5927)
!5938 = !DILocation(line: 2121, column: 2, scope: !5927)
!5939 = distinct !DISubprogram(name: "vp_set_vq_affinity", scope: !3, file: !3, line: 433, type: !4678, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5940)
!5940 = !{!5941, !5942, !5943, !5944, !5945, !5946, !5947}
!5941 = !DILocalVariable(name: "vq", arg: 1, scope: !5939, file: !3, line: 433, type: !4115)
!5942 = !DILocalVariable(name: "cpu_mask", arg: 2, scope: !5939, file: !3, line: 433, type: !4680)
!5943 = !DILocalVariable(name: "vdev", scope: !5939, file: !3, line: 435, type: !4126)
!5944 = !DILocalVariable(name: "vp_dev", scope: !5939, file: !3, line: 436, type: !4712)
!5945 = !DILocalVariable(name: "info", scope: !5939, file: !3, line: 437, type: !5080)
!5946 = !DILocalVariable(name: "mask", scope: !5939, file: !3, line: 438, type: !5525)
!5947 = !DILocalVariable(name: "irq", scope: !5939, file: !3, line: 439, type: !7)
!5948 = !DILocation(line: 433, column: 42, scope: !5939)
!5949 = !DILocation(line: 433, column: 68, scope: !5939)
!5950 = !DILocation(line: 435, column: 2, scope: !5939)
!5951 = !DILocation(line: 435, column: 24, scope: !5939)
!5952 = !DILocation(line: 435, column: 31, scope: !5939)
!5953 = !DILocation(line: 435, column: 35, scope: !5939)
!5954 = !DILocation(line: 436, column: 2, scope: !5939)
!5955 = !DILocation(line: 436, column: 28, scope: !5939)
!5956 = !DILocation(line: 436, column: 50, scope: !5939)
!5957 = !DILocation(line: 436, column: 37, scope: !5939)
!5958 = !DILocation(line: 437, column: 2, scope: !5939)
!5959 = !DILocation(line: 437, column: 29, scope: !5939)
!5960 = !DILocation(line: 437, column: 36, scope: !5939)
!5961 = !DILocation(line: 437, column: 44, scope: !5939)
!5962 = !DILocation(line: 437, column: 48, scope: !5939)
!5963 = !DILocation(line: 437, column: 52, scope: !5939)
!5964 = !DILocation(line: 438, column: 2, scope: !5939)
!5965 = !DILocation(line: 438, column: 18, scope: !5939)
!5966 = !DILocation(line: 439, column: 2, scope: !5939)
!5967 = !DILocation(line: 439, column: 15, scope: !5939)
!5968 = !DILocation(line: 441, column: 7, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 441, column: 6)
!5970 = !DILocation(line: 441, column: 11, scope: !5969)
!5971 = !DILocation(line: 441, column: 6, scope: !5939)
!5972 = !DILocation(line: 442, column: 3, scope: !5969)
!5973 = !DILocation(line: 444, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 444, column: 6)
!5975 = !DILocation(line: 444, column: 14, scope: !5974)
!5976 = !DILocation(line: 444, column: 6, scope: !5939)
!5977 = !DILocation(line: 445, column: 10, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 444, column: 28)
!5979 = !DILocation(line: 445, column: 18, scope: !5978)
!5980 = !DILocation(line: 445, column: 38, scope: !5978)
!5981 = !DILocation(line: 445, column: 44, scope: !5978)
!5982 = !DILocation(line: 445, column: 8, scope: !5978)
!5983 = !DILocation(line: 446, column: 24, scope: !5978)
!5984 = !DILocation(line: 446, column: 32, scope: !5978)
!5985 = !DILocation(line: 446, column: 41, scope: !5978)
!5986 = !DILocation(line: 446, column: 47, scope: !5978)
!5987 = !DILocation(line: 446, column: 9, scope: !5978)
!5988 = !DILocation(line: 446, column: 7, scope: !5978)
!5989 = !DILocation(line: 447, column: 8, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 447, column: 7)
!5991 = !DILocation(line: 447, column: 7, scope: !5978)
!5992 = !DILocation(line: 448, column: 26, scope: !5990)
!5993 = !DILocation(line: 448, column: 4, scope: !5990)
!5994 = !DILocation(line: 450, column: 17, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 449, column: 8)
!5996 = !DILocation(line: 450, column: 23, scope: !5995)
!5997 = !DILocation(line: 450, column: 4, scope: !5995)
!5998 = !DILocation(line: 451, column: 26, scope: !5995)
!5999 = !DILocation(line: 451, column: 31, scope: !5995)
!6000 = !DILocation(line: 451, column: 4, scope: !5995)
!6001 = !DILocation(line: 453, column: 2, scope: !5978)
!6002 = !DILocation(line: 454, column: 2, scope: !5939)
!6003 = !DILocation(line: 455, column: 1, scope: !5939)
!6004 = distinct !DISubprogram(name: "cpumask_copy", scope: !1233, file: !1233, line: 737, type: !6005, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6007)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !5525, !4680}
!6007 = !{!6008, !6009}
!6008 = !DILocalVariable(name: "dstp", arg: 1, scope: !6004, file: !1233, line: 737, type: !5525)
!6009 = !DILocalVariable(name: "srcp", arg: 2, scope: !6004, file: !1233, line: 738, type: !4680)
!6010 = !DILocation(line: 737, column: 49, scope: !6004)
!6011 = !DILocation(line: 738, column: 27, scope: !6004)
!6012 = !DILocation(line: 740, column: 14, scope: !6004)
!6013 = !DILocation(line: 740, column: 34, scope: !6004)
!6014 = !DILocation(line: 740, column: 2, scope: !6004)
!6015 = !DILocation(line: 741, column: 1, scope: !6004)
!6016 = distinct !DISubprogram(name: "vp_get_vq_affinity", scope: !3, file: !3, line: 457, type: !4684, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6017)
!6017 = !{!6018, !6019, !6020}
!6018 = !DILocalVariable(name: "vdev", arg: 1, scope: !6016, file: !3, line: 457, type: !4126)
!6019 = !DILocalVariable(name: "index", arg: 2, scope: !6016, file: !3, line: 457, type: !109)
!6020 = !DILocalVariable(name: "vp_dev", scope: !6016, file: !3, line: 459, type: !4712)
!6021 = !DILocation(line: 457, column: 64, scope: !6016)
!6022 = !DILocation(line: 457, column: 74, scope: !6016)
!6023 = !DILocation(line: 459, column: 2, scope: !6016)
!6024 = !DILocation(line: 459, column: 28, scope: !6016)
!6025 = !DILocation(line: 459, column: 50, scope: !6016)
!6026 = !DILocation(line: 459, column: 37, scope: !6016)
!6027 = !DILocation(line: 461, column: 7, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 461, column: 6)
!6029 = !DILocation(line: 461, column: 15, scope: !6028)
!6030 = !DILocation(line: 461, column: 30, scope: !6028)
!6031 = !DILocation(line: 462, column: 6, scope: !6028)
!6032 = !DILocation(line: 462, column: 14, scope: !6028)
!6033 = !DILocation(line: 462, column: 18, scope: !6028)
!6034 = !DILocation(line: 462, column: 26, scope: !6028)
!6035 = !DILocation(line: 462, column: 38, scope: !6028)
!6036 = !DILocation(line: 461, column: 6, scope: !6016)
!6037 = !DILocation(line: 463, column: 3, scope: !6028)
!6038 = !DILocation(line: 465, column: 30, scope: !6016)
!6039 = !DILocation(line: 465, column: 38, scope: !6016)
!6040 = !DILocation(line: 466, column: 9, scope: !6016)
!6041 = !DILocation(line: 466, column: 17, scope: !6016)
!6042 = !DILocation(line: 466, column: 21, scope: !6016)
!6043 = !DILocation(line: 466, column: 29, scope: !6016)
!6044 = !DILocation(line: 465, column: 9, scope: !6016)
!6045 = !DILocation(line: 465, column: 2, scope: !6016)
!6046 = !DILocation(line: 467, column: 1, scope: !6016)
!6047 = !DISubprogram(name: "pci_irq_get_affinity", scope: !4719, file: !4719, line: 1664, type: !6048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!4680, !4717, !109}
!6050 = distinct !DISubprogram(name: "__initstub__kmod_virtio_pci__324_647_virtio_pci_driver_init6", scope: !3, file: !3, line: 647, type: !3898, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6051 = !DILocation(line: 647, column: 1, scope: !6050)
!6052 = distinct !DISubprogram(name: "virtio_pci_driver_init", scope: !3, file: !3, line: 647, type: !3898, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6053 = !DILocation(line: 647, column: 1, scope: !6052)
!6054 = distinct !DISubprogram(name: "virtio_pci_driver_exit", scope: !3, file: !3, line: 647, type: !2531, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6055 = !DILocation(line: 647, column: 1, scope: !6054)
!6056 = !DISubprogram(name: "pci_unregister_driver", scope: !4719, file: !4719, line: 1564, type: !6057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6057 = !DISubroutineType(types: !6058)
!6058 = !{null, !4830}
!6059 = distinct !DISubprogram(name: "irq_set_affinity_and_hint", scope: !4650, file: !4650, line: 340, type: !5460, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6060)
!6060 = !{!6061, !6062}
!6061 = !DILocalVariable(name: "irq", arg: 1, scope: !6059, file: !4650, line: 340, type: !7)
!6062 = !DILocalVariable(name: "m", arg: 2, scope: !6059, file: !4650, line: 340, type: !4680)
!6063 = !DILocation(line: 340, column: 40, scope: !6059)
!6064 = !DILocation(line: 340, column: 67, scope: !6059)
!6065 = !DILocation(line: 342, column: 35, scope: !6059)
!6066 = !DILocation(line: 342, column: 40, scope: !6059)
!6067 = !DILocation(line: 342, column: 9, scope: !6059)
!6068 = !DILocation(line: 342, column: 2, scope: !6059)
!6069 = !DISubprogram(name: "__irq_apply_affinity_hint", scope: !4650, file: !4650, line: 314, type: !6070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{!109, !7, !4680, !1474}
!6072 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6073, file: !6073, line: 32, type: !6074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!323, !6076}
!6076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!6077 = distinct !DISubprogram(name: "spinlock_check", scope: !6078, file: !6078, line: 324, type: !6079, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6081)
!6078 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!6076, !1923}
!6081 = !{!6082}
!6082 = !DILocalVariable(name: "lock", arg: 1, scope: !6077, file: !6078, line: 324, type: !1923)
!6083 = !DILocation(line: 324, column: 67, scope: !6077)
!6084 = !DILocation(line: 326, column: 10, scope: !6077)
!6085 = !DILocation(line: 326, column: 16, scope: !6077)
!6086 = !DILocation(line: 326, column: 2, scope: !6077)
!6087 = distinct !DISubprogram(name: "list_del", scope: !6088, file: !6088, line: 227, type: !6089, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6091)
!6088 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6089 = !DISubroutineType(types: !6090)
!6090 = !{null, !177}
!6091 = !{!6092}
!6092 = !DILocalVariable(name: "entry", arg: 1, scope: !6087, file: !6088, line: 227, type: !177)
!6093 = !DILocation(line: 227, column: 47, scope: !6087)
!6094 = !DILocation(line: 229, column: 19, scope: !6087)
!6095 = !DILocation(line: 229, column: 2, scope: !6087)
!6096 = !DILocation(line: 230, column: 2, scope: !6087)
!6097 = !DILocation(line: 230, column: 9, scope: !6087)
!6098 = !DILocation(line: 230, column: 14, scope: !6087)
!6099 = !DILocation(line: 231, column: 2, scope: !6087)
!6100 = !DILocation(line: 231, column: 9, scope: !6087)
!6101 = !DILocation(line: 231, column: 14, scope: !6087)
!6102 = !DILocation(line: 232, column: 1, scope: !6087)
!6103 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6078, file: !6078, line: 404, type: !6104, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{null, !1923, !323}
!6106 = !{!6107, !6108, !6109, !6112}
!6107 = !DILocalVariable(name: "lock", arg: 1, scope: !6103, file: !6078, line: 404, type: !1923)
!6108 = !DILocalVariable(name: "flags", arg: 2, scope: !6103, file: !6078, line: 404, type: !323)
!6109 = !DILocalVariable(name: "__dummy", scope: !6110, file: !6078, line: 406, type: !323)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !6078, line: 406, column: 2)
!6111 = distinct !DILexicalBlock(scope: !6103, file: !6078, line: 406, column: 2)
!6112 = !DILocalVariable(name: "__dummy2", scope: !6110, file: !6078, line: 406, type: !323)
!6113 = !DILocation(line: 404, column: 64, scope: !6103)
!6114 = !DILocation(line: 404, column: 84, scope: !6103)
!6115 = !DILocation(line: 406, column: 2, scope: !6103)
!6116 = !DILocation(line: 406, column: 2, scope: !6110)
!6117 = !DILocation(line: 406, column: 2, scope: !6111)
!6118 = !DILocation(line: 407, column: 1, scope: !6103)
!6119 = distinct !DISubprogram(name: "__list_del_entry", scope: !6088, file: !6088, line: 213, type: !6089, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6120)
!6120 = !{!6121}
!6121 = !DILocalVariable(name: "entry", arg: 1, scope: !6119, file: !6088, line: 213, type: !177)
!6122 = !DILocation(line: 213, column: 55, scope: !6119)
!6123 = !DILocation(line: 215, column: 30, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6119, file: !6088, line: 215, column: 6)
!6125 = !DILocation(line: 215, column: 7, scope: !6124)
!6126 = !DILocation(line: 215, column: 6, scope: !6119)
!6127 = !DILocation(line: 216, column: 3, scope: !6124)
!6128 = !DILocation(line: 218, column: 13, scope: !6119)
!6129 = !DILocation(line: 218, column: 20, scope: !6119)
!6130 = !DILocation(line: 218, column: 26, scope: !6119)
!6131 = !DILocation(line: 218, column: 33, scope: !6119)
!6132 = !DILocation(line: 218, column: 2, scope: !6119)
!6133 = !DILocation(line: 219, column: 1, scope: !6119)
!6134 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6088, file: !6088, line: 134, type: !6135, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6137)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!1474, !177}
!6137 = !{!6138}
!6138 = !DILocalVariable(name: "entry", arg: 1, scope: !6134, file: !6088, line: 134, type: !177)
!6139 = !DILocation(line: 134, column: 61, scope: !6134)
!6140 = !DILocation(line: 136, column: 2, scope: !6134)
!6141 = distinct !DISubprogram(name: "__list_del", scope: !6088, file: !6088, line: 193, type: !6142, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6144)
!6142 = !DISubroutineType(types: !6143)
!6143 = !{null, !177, !177}
!6144 = !{!6145, !6146}
!6145 = !DILocalVariable(name: "prev", arg: 1, scope: !6141, file: !6088, line: 193, type: !177)
!6146 = !DILocalVariable(name: "next", arg: 2, scope: !6141, file: !6088, line: 193, type: !177)
!6147 = !DILocation(line: 193, column: 50, scope: !6141)
!6148 = !DILocation(line: 193, column: 75, scope: !6141)
!6149 = !DILocation(line: 195, column: 15, scope: !6141)
!6150 = !DILocation(line: 195, column: 2, scope: !6141)
!6151 = !DILocation(line: 195, column: 8, scope: !6141)
!6152 = !DILocation(line: 195, column: 13, scope: !6141)
!6153 = !DILocation(line: 196, column: 2, scope: !6141)
!6154 = !DILocation(line: 196, column: 2, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6141, file: !6088, line: 196, column: 2)
!6156 = !DILocation(line: 196, column: 2, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6155, file: !6088, line: 196, column: 2)
!6158 = !DILocation(line: 196, column: 2, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6155, file: !6088, line: 196, column: 2)
!6160 = !DILocation(line: 197, column: 1, scope: !6141)
!6161 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6073, file: !6073, line: 43, type: !6162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{null, !6076, !323}
!6164 = distinct !DISubprogram(name: "kcalloc", scope: !152, file: !152, line: 666, type: !6165, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6167)
!6165 = !DISubroutineType(types: !6166)
!6166 = !{!345, !320, !320, !719}
!6167 = !{!6168, !6169, !6170}
!6168 = !DILocalVariable(name: "n", arg: 1, scope: !6164, file: !152, line: 666, type: !320)
!6169 = !DILocalVariable(name: "size", arg: 2, scope: !6164, file: !152, line: 666, type: !320)
!6170 = !DILocalVariable(name: "flags", arg: 3, scope: !6164, file: !152, line: 666, type: !719)
!6171 = !DILocation(line: 666, column: 55, scope: !6164)
!6172 = !DILocation(line: 666, column: 65, scope: !6164)
!6173 = !DILocation(line: 666, column: 77, scope: !6164)
!6174 = !DILocation(line: 668, column: 23, scope: !6164)
!6175 = !DILocation(line: 668, column: 26, scope: !6164)
!6176 = !DILocation(line: 668, column: 32, scope: !6164)
!6177 = !DILocation(line: 668, column: 38, scope: !6164)
!6178 = !DILocation(line: 668, column: 9, scope: !6164)
!6179 = !DILocation(line: 668, column: 2, scope: !6164)
!6180 = distinct !DISubprogram(name: "vp_request_msix_vectors", scope: !3, file: !3, line: 102, type: !6181, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6183)
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!109, !4126, !109, !1474, !4648}
!6183 = !{!6184, !6185, !6186, !6187, !6188, !6189, !6190, !6191, !6192, !6193, !6194}
!6184 = !DILocalVariable(name: "vdev", arg: 1, scope: !6180, file: !3, line: 102, type: !4126)
!6185 = !DILocalVariable(name: "nvectors", arg: 2, scope: !6180, file: !3, line: 102, type: !109)
!6186 = !DILocalVariable(name: "per_vq_vectors", arg: 3, scope: !6180, file: !3, line: 103, type: !1474)
!6187 = !DILocalVariable(name: "desc", arg: 4, scope: !6180, file: !3, line: 103, type: !4648)
!6188 = !DILocalVariable(name: "vp_dev", scope: !6180, file: !3, line: 105, type: !4712)
!6189 = !DILocalVariable(name: "name", scope: !6180, file: !3, line: 106, type: !192)
!6190 = !DILocalVariable(name: "flags", scope: !6180, file: !3, line: 107, type: !7)
!6191 = !DILocalVariable(name: "i", scope: !6180, file: !3, line: 108, type: !7)
!6192 = !DILocalVariable(name: "v", scope: !6180, file: !3, line: 108, type: !7)
!6193 = !DILocalVariable(name: "err", scope: !6180, file: !3, line: 109, type: !109)
!6194 = !DILabel(scope: !6180, name: "error", file: !3, line: 170)
!6195 = !DILocation(line: 102, column: 58, scope: !6180)
!6196 = !DILocation(line: 102, column: 68, scope: !6180)
!6197 = !DILocation(line: 103, column: 13, scope: !6180)
!6198 = !DILocation(line: 103, column: 50, scope: !6180)
!6199 = !DILocation(line: 105, column: 2, scope: !6180)
!6200 = !DILocation(line: 105, column: 28, scope: !6180)
!6201 = !DILocation(line: 105, column: 50, scope: !6180)
!6202 = !DILocation(line: 105, column: 37, scope: !6180)
!6203 = !DILocation(line: 106, column: 2, scope: !6180)
!6204 = !DILocation(line: 106, column: 14, scope: !6180)
!6205 = !DILocation(line: 106, column: 31, scope: !6180)
!6206 = !DILocation(line: 106, column: 39, scope: !6180)
!6207 = !DILocation(line: 106, column: 44, scope: !6180)
!6208 = !DILocation(line: 106, column: 21, scope: !6180)
!6209 = !DILocation(line: 107, column: 2, scope: !6180)
!6210 = !DILocation(line: 107, column: 15, scope: !6180)
!6211 = !DILocation(line: 108, column: 2, scope: !6180)
!6212 = !DILocation(line: 108, column: 15, scope: !6180)
!6213 = !DILocation(line: 108, column: 18, scope: !6180)
!6214 = !DILocation(line: 109, column: 2, scope: !6180)
!6215 = !DILocation(line: 109, column: 6, scope: !6180)
!6216 = !DILocation(line: 111, column: 25, scope: !6180)
!6217 = !DILocation(line: 111, column: 2, scope: !6180)
!6218 = !DILocation(line: 111, column: 10, scope: !6180)
!6219 = !DILocation(line: 111, column: 23, scope: !6180)
!6220 = !DILocation(line: 113, column: 37, scope: !6180)
!6221 = !DILocation(line: 113, column: 23, scope: !6180)
!6222 = !DILocation(line: 113, column: 2, scope: !6180)
!6223 = !DILocation(line: 113, column: 10, scope: !6180)
!6224 = !DILocation(line: 113, column: 21, scope: !6180)
!6225 = !DILocation(line: 116, column: 7, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 116, column: 6)
!6227 = !DILocation(line: 116, column: 15, scope: !6226)
!6228 = !DILocation(line: 116, column: 6, scope: !6180)
!6229 = !DILocation(line: 117, column: 3, scope: !6226)
!6230 = !DILocation(line: 119, column: 13, scope: !6180)
!6231 = !DILocation(line: 119, column: 5, scope: !6180)
!6232 = !DILocation(line: 118, column: 2, scope: !6180)
!6233 = !DILocation(line: 118, column: 10, scope: !6180)
!6234 = !DILocation(line: 119, column: 3, scope: !6180)
!6235 = !DILocation(line: 121, column: 7, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 121, column: 6)
!6237 = !DILocation(line: 121, column: 15, scope: !6236)
!6238 = !DILocation(line: 121, column: 6, scope: !6180)
!6239 = !DILocation(line: 122, column: 3, scope: !6236)
!6240 = !DILocation(line: 123, column: 9, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 123, column: 2)
!6242 = !DILocation(line: 123, column: 7, scope: !6241)
!6243 = !DILocation(line: 123, column: 14, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 123, column: 2)
!6245 = !DILocation(line: 123, column: 18, scope: !6244)
!6246 = !DILocation(line: 123, column: 16, scope: !6244)
!6247 = !DILocation(line: 123, column: 2, scope: !6241)
!6248 = !DILocation(line: 124, column: 27, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 124, column: 7)
!6250 = !DILocation(line: 124, column: 35, scope: !6249)
!6251 = !DILocation(line: 124, column: 55, scope: !6249)
!6252 = !DILocation(line: 124, column: 8, scope: !6249)
!6253 = !DILocation(line: 124, column: 7, scope: !6244)
!6254 = !DILocation(line: 126, column: 4, scope: !6249)
!6255 = !DILocation(line: 125, column: 16, scope: !6249)
!6256 = !DILocation(line: 123, column: 28, scope: !6244)
!6257 = !DILocation(line: 123, column: 2, scope: !6244)
!6258 = distinct !{!6258, !6247, !6259, !5252, !5253}
!6259 = !DILocation(line: 126, column: 9, scope: !6241)
!6260 = !DILocation(line: 128, column: 6, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 128, column: 6)
!6262 = !DILocation(line: 128, column: 6, scope: !6180)
!6263 = !DILocation(line: 129, column: 9, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 128, column: 12)
!6265 = !DILocation(line: 130, column: 3, scope: !6264)
!6266 = !DILocation(line: 130, column: 9, scope: !6264)
!6267 = !DILocation(line: 130, column: 20, scope: !6264)
!6268 = !DILocation(line: 131, column: 2, scope: !6264)
!6269 = !DILocation(line: 133, column: 39, scope: !6180)
!6270 = !DILocation(line: 133, column: 47, scope: !6180)
!6271 = !DILocation(line: 133, column: 56, scope: !6180)
!6272 = !DILocation(line: 134, column: 11, scope: !6180)
!6273 = !DILocation(line: 134, column: 21, scope: !6180)
!6274 = !DILocation(line: 134, column: 28, scope: !6180)
!6275 = !DILocation(line: 133, column: 8, scope: !6180)
!6276 = !DILocation(line: 133, column: 6, scope: !6180)
!6277 = !DILocation(line: 135, column: 6, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 135, column: 6)
!6279 = !DILocation(line: 135, column: 10, scope: !6278)
!6280 = !DILocation(line: 135, column: 6, scope: !6180)
!6281 = !DILocation(line: 136, column: 3, scope: !6278)
!6282 = !DILocation(line: 137, column: 2, scope: !6180)
!6283 = !DILocation(line: 137, column: 10, scope: !6180)
!6284 = !DILocation(line: 137, column: 23, scope: !6180)
!6285 = !DILocation(line: 140, column: 6, scope: !6180)
!6286 = !DILocation(line: 140, column: 14, scope: !6180)
!6287 = !DILocation(line: 140, column: 4, scope: !6180)
!6288 = !DILocation(line: 141, column: 11, scope: !6180)
!6289 = !DILocation(line: 141, column: 19, scope: !6180)
!6290 = !DILocation(line: 141, column: 30, scope: !6180)
!6291 = !DILocation(line: 142, column: 17, scope: !6180)
!6292 = !DILocation(line: 141, column: 2, scope: !6180)
!6293 = !DILocation(line: 143, column: 35, scope: !6180)
!6294 = !DILocation(line: 143, column: 43, scope: !6180)
!6295 = !DILocation(line: 143, column: 52, scope: !6180)
!6296 = !DILocation(line: 143, column: 20, scope: !6180)
!6297 = !DILocation(line: 144, column: 28, scope: !6180)
!6298 = !DILocation(line: 144, column: 36, scope: !6180)
!6299 = !DILocation(line: 144, column: 47, scope: !6180)
!6300 = !DILocation(line: 145, column: 6, scope: !6180)
!6301 = !DILocation(line: 143, column: 8, scope: !6180)
!6302 = !DILocation(line: 143, column: 6, scope: !6180)
!6303 = !DILocation(line: 146, column: 6, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 146, column: 6)
!6305 = !DILocation(line: 146, column: 6, scope: !6180)
!6306 = !DILocation(line: 147, column: 3, scope: !6304)
!6307 = !DILocation(line: 148, column: 4, scope: !6180)
!6308 = !DILocation(line: 148, column: 12, scope: !6180)
!6309 = !DILocation(line: 148, column: 2, scope: !6180)
!6310 = !DILocation(line: 150, column: 6, scope: !6180)
!6311 = !DILocation(line: 150, column: 14, scope: !6180)
!6312 = !DILocation(line: 150, column: 28, scope: !6180)
!6313 = !DILocation(line: 150, column: 36, scope: !6180)
!6314 = !DILocation(line: 150, column: 4, scope: !6180)
!6315 = !DILocation(line: 152, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 152, column: 6)
!6317 = !DILocation(line: 152, column: 8, scope: !6316)
!6318 = !DILocation(line: 152, column: 6, scope: !6180)
!6319 = !DILocation(line: 153, column: 7, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 152, column: 33)
!6321 = !DILocation(line: 154, column: 3, scope: !6320)
!6322 = !DILocation(line: 157, column: 7, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 157, column: 6)
!6324 = !DILocation(line: 157, column: 6, scope: !6180)
!6325 = !DILocation(line: 159, column: 7, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 157, column: 23)
!6327 = !DILocation(line: 159, column: 15, scope: !6326)
!6328 = !DILocation(line: 159, column: 5, scope: !6326)
!6329 = !DILocation(line: 160, column: 12, scope: !6326)
!6330 = !DILocation(line: 160, column: 20, scope: !6326)
!6331 = !DILocation(line: 160, column: 31, scope: !6326)
!6332 = !DILocation(line: 161, column: 22, scope: !6326)
!6333 = !DILocation(line: 160, column: 3, scope: !6326)
!6334 = !DILocation(line: 162, column: 36, scope: !6326)
!6335 = !DILocation(line: 162, column: 44, scope: !6326)
!6336 = !DILocation(line: 162, column: 53, scope: !6326)
!6337 = !DILocation(line: 162, column: 21, scope: !6326)
!6338 = !DILocation(line: 163, column: 30, scope: !6326)
!6339 = !DILocation(line: 163, column: 38, scope: !6326)
!6340 = !DILocation(line: 163, column: 49, scope: !6326)
!6341 = !DILocation(line: 164, column: 7, scope: !6326)
!6342 = !DILocation(line: 162, column: 9, scope: !6326)
!6343 = !DILocation(line: 162, column: 7, scope: !6326)
!6344 = !DILocation(line: 165, column: 7, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 165, column: 7)
!6346 = !DILocation(line: 165, column: 7, scope: !6326)
!6347 = !DILocation(line: 166, column: 4, scope: !6345)
!6348 = !DILocation(line: 167, column: 5, scope: !6326)
!6349 = !DILocation(line: 167, column: 13, scope: !6326)
!6350 = !DILocation(line: 167, column: 3, scope: !6326)
!6351 = !DILocation(line: 168, column: 2, scope: !6326)
!6352 = !DILocation(line: 169, column: 2, scope: !6180)
!6353 = !DILocation(line: 170, column: 1, scope: !6180)
!6354 = !DILocation(line: 171, column: 9, scope: !6180)
!6355 = !DILocation(line: 171, column: 2, scope: !6180)
!6356 = !DILocation(line: 172, column: 1, scope: !6180)
!6357 = distinct !DISubprogram(name: "vp_setup_vq", scope: !3, file: !3, line: 174, type: !6358, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6360)
!6358 = !DISubroutineType(types: !6359)
!6359 = !{!4115, !4126, !7, !4121, !192, !1474, !241}
!6360 = !{!6361, !6362, !6363, !6364, !6365, !6366, !6367, !6368, !6369, !6370, !6371, !6377, !6378}
!6361 = !DILocalVariable(name: "vdev", arg: 1, scope: !6357, file: !3, line: 174, type: !4126)
!6362 = !DILocalVariable(name: "index", arg: 2, scope: !6357, file: !3, line: 174, type: !7)
!6363 = !DILocalVariable(name: "callback", arg: 3, scope: !6357, file: !3, line: 175, type: !4121)
!6364 = !DILocalVariable(name: "name", arg: 4, scope: !6357, file: !3, line: 176, type: !192)
!6365 = !DILocalVariable(name: "ctx", arg: 5, scope: !6357, file: !3, line: 177, type: !1474)
!6366 = !DILocalVariable(name: "msix_vec", arg: 6, scope: !6357, file: !3, line: 178, type: !241)
!6367 = !DILocalVariable(name: "vp_dev", scope: !6357, file: !3, line: 180, type: !4712)
!6368 = !DILocalVariable(name: "info", scope: !6357, file: !3, line: 181, type: !5080)
!6369 = !DILocalVariable(name: "vq", scope: !6357, file: !3, line: 182, type: !4115)
!6370 = !DILocalVariable(name: "flags", scope: !6357, file: !3, line: 183, type: !323)
!6371 = !DILocalVariable(name: "__dummy", scope: !6372, file: !3, line: 196, type: !323)
!6372 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 196, column: 3)
!6373 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 196, column: 3)
!6374 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 196, column: 3)
!6375 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 195, column: 16)
!6376 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 195, column: 6)
!6377 = !DILocalVariable(name: "__dummy2", scope: !6372, file: !3, line: 196, type: !323)
!6378 = !DILabel(scope: !6357, name: "out_info", file: !3, line: 206)
!6379 = !DILocation(line: 174, column: 60, scope: !6357)
!6380 = !DILocation(line: 174, column: 79, scope: !6357)
!6381 = !DILocation(line: 175, column: 17, scope: !6357)
!6382 = !DILocation(line: 176, column: 22, scope: !6357)
!6383 = !DILocation(line: 177, column: 15, scope: !6357)
!6384 = !DILocation(line: 178, column: 14, scope: !6357)
!6385 = !DILocation(line: 180, column: 2, scope: !6357)
!6386 = !DILocation(line: 180, column: 28, scope: !6357)
!6387 = !DILocation(line: 180, column: 50, scope: !6357)
!6388 = !DILocation(line: 180, column: 37, scope: !6357)
!6389 = !DILocation(line: 181, column: 2, scope: !6357)
!6390 = !DILocation(line: 181, column: 29, scope: !6357)
!6391 = !DILocation(line: 181, column: 36, scope: !6357)
!6392 = !DILocation(line: 182, column: 2, scope: !6357)
!6393 = !DILocation(line: 182, column: 20, scope: !6357)
!6394 = !DILocation(line: 183, column: 2, scope: !6357)
!6395 = !DILocation(line: 183, column: 16, scope: !6357)
!6396 = !DILocation(line: 186, column: 7, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 186, column: 6)
!6398 = !DILocation(line: 186, column: 6, scope: !6357)
!6399 = !DILocation(line: 187, column: 10, scope: !6397)
!6400 = !DILocation(line: 187, column: 3, scope: !6397)
!6401 = !DILocation(line: 189, column: 7, scope: !6357)
!6402 = !DILocation(line: 189, column: 15, scope: !6357)
!6403 = !DILocation(line: 189, column: 24, scope: !6357)
!6404 = !DILocation(line: 189, column: 32, scope: !6357)
!6405 = !DILocation(line: 189, column: 38, scope: !6357)
!6406 = !DILocation(line: 189, column: 45, scope: !6357)
!6407 = !DILocation(line: 189, column: 55, scope: !6357)
!6408 = !DILocation(line: 189, column: 61, scope: !6357)
!6409 = !DILocation(line: 190, column: 10, scope: !6357)
!6410 = !DILocation(line: 189, column: 5, scope: !6357)
!6411 = !DILocation(line: 191, column: 13, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 191, column: 6)
!6413 = !DILocation(line: 191, column: 6, scope: !6412)
!6414 = !DILocation(line: 191, column: 6, scope: !6357)
!6415 = !DILocation(line: 192, column: 3, scope: !6412)
!6416 = !DILocation(line: 194, column: 13, scope: !6357)
!6417 = !DILocation(line: 194, column: 2, scope: !6357)
!6418 = !DILocation(line: 194, column: 8, scope: !6357)
!6419 = !DILocation(line: 194, column: 11, scope: !6357)
!6420 = !DILocation(line: 195, column: 6, scope: !6376)
!6421 = !DILocation(line: 195, column: 6, scope: !6357)
!6422 = !DILocation(line: 196, column: 3, scope: !6375)
!6423 = !DILocation(line: 196, column: 3, scope: !6374)
!6424 = !DILocation(line: 196, column: 3, scope: !6372)
!6425 = !DILocation(line: 196, column: 3, scope: !6373)
!6426 = !DILocation(line: 197, column: 13, scope: !6375)
!6427 = !DILocation(line: 197, column: 19, scope: !6375)
!6428 = !DILocation(line: 197, column: 26, scope: !6375)
!6429 = !DILocation(line: 197, column: 34, scope: !6375)
!6430 = !DILocation(line: 197, column: 3, scope: !6375)
!6431 = !DILocation(line: 198, column: 27, scope: !6375)
!6432 = !DILocation(line: 198, column: 35, scope: !6375)
!6433 = !DILocation(line: 198, column: 41, scope: !6375)
!6434 = !DILocation(line: 198, column: 3, scope: !6375)
!6435 = !DILocation(line: 199, column: 2, scope: !6375)
!6436 = !DILocation(line: 200, column: 19, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 199, column: 9)
!6438 = !DILocation(line: 200, column: 25, scope: !6437)
!6439 = !DILocation(line: 200, column: 3, scope: !6437)
!6440 = !DILocation(line: 203, column: 23, scope: !6357)
!6441 = !DILocation(line: 203, column: 2, scope: !6357)
!6442 = !DILocation(line: 203, column: 10, scope: !6357)
!6443 = !DILocation(line: 203, column: 14, scope: !6357)
!6444 = !DILocation(line: 203, column: 21, scope: !6357)
!6445 = !DILocation(line: 204, column: 9, scope: !6357)
!6446 = !DILocation(line: 204, column: 2, scope: !6357)
!6447 = !DILocation(line: 206, column: 1, scope: !6357)
!6448 = !DILocation(line: 207, column: 8, scope: !6357)
!6449 = !DILocation(line: 207, column: 2, scope: !6357)
!6450 = !DILocation(line: 208, column: 9, scope: !6357)
!6451 = !DILocation(line: 208, column: 2, scope: !6357)
!6452 = !DILocation(line: 209, column: 1, scope: !6357)
!6453 = distinct !DISubprogram(name: "IS_ERR", scope: !6454, file: !6454, line: 59, type: !6455, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6457)
!6454 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6455 = !DISubroutineType(types: !6456)
!6456 = !{!1474, !2143}
!6457 = !{!6458}
!6458 = !DILocalVariable(name: "ptr", arg: 1, scope: !6453, file: !6454, line: 59, type: !2143)
!6459 = !DILocation(line: 59, column: 60, scope: !6453)
!6460 = !DILocation(line: 61, column: 9, scope: !6453)
!6461 = !DILocation(line: 61, column: 2, scope: !6453)
!6462 = distinct !DISubprogram(name: "PTR_ERR", scope: !6454, file: !6454, line: 49, type: !6463, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6465)
!6463 = !DISubroutineType(types: !6464)
!6464 = !{!309, !2143}
!6465 = !{!6466}
!6466 = !DILocalVariable(name: "ptr", arg: 1, scope: !6462, file: !6454, line: 49, type: !2143)
!6467 = !DILocation(line: 49, column: 61, scope: !6462)
!6468 = !DILocation(line: 51, column: 16, scope: !6462)
!6469 = !DILocation(line: 51, column: 9, scope: !6462)
!6470 = !DILocation(line: 51, column: 2, scope: !6462)
!6471 = !DISubprogram(name: "snprintf", scope: !6472, file: !6472, line: 12, type: !6473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6472 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6473 = !DISubroutineType(types: !6474)
!6474 = !{!109, !273, !320, !192, null}
!6475 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !6476, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6478)
!6476 = !DISubroutineType(types: !6477)
!6477 = !{!192, !4156}
!6478 = !{!6479}
!6479 = !DILocalVariable(name: "dev", arg: 1, scope: !6475, file: !94, line: 858, type: !4156)
!6480 = !DILocation(line: 858, column: 57, scope: !6475)
!6481 = !DILocation(line: 861, column: 6, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6475, file: !94, line: 861, column: 6)
!6483 = !DILocation(line: 861, column: 11, scope: !6482)
!6484 = !DILocation(line: 861, column: 6, scope: !6475)
!6485 = !DILocation(line: 862, column: 10, scope: !6482)
!6486 = !DILocation(line: 862, column: 15, scope: !6482)
!6487 = !DILocation(line: 862, column: 3, scope: !6482)
!6488 = !DILocation(line: 864, column: 23, scope: !6475)
!6489 = !DILocation(line: 864, column: 28, scope: !6475)
!6490 = !DILocation(line: 864, column: 9, scope: !6475)
!6491 = !DILocation(line: 864, column: 2, scope: !6475)
!6492 = !DILocation(line: 865, column: 1, scope: !6475)
!6493 = distinct !DISubprogram(name: "request_irq", scope: !4650, file: !4650, line: 165, type: !6494, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6501)
!6494 = !DISubroutineType(types: !6495)
!6495 = !{!109, !7, !6496, !323, !192, !345}
!6496 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4650, line: 100, baseType: !6497)
!6497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6498, size: 64)
!6498 = !DISubroutineType(types: !6499)
!6499 = !{!6500, !109, !345}
!6500 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !162, line: 17, baseType: !161)
!6501 = !{!6502, !6503, !6504, !6505, !6506}
!6502 = !DILocalVariable(name: "irq", arg: 1, scope: !6493, file: !4650, line: 165, type: !7)
!6503 = !DILocalVariable(name: "handler", arg: 2, scope: !6493, file: !4650, line: 165, type: !6496)
!6504 = !DILocalVariable(name: "flags", arg: 3, scope: !6493, file: !4650, line: 165, type: !323)
!6505 = !DILocalVariable(name: "name", arg: 4, scope: !6493, file: !4650, line: 166, type: !192)
!6506 = !DILocalVariable(name: "dev", arg: 5, scope: !6493, file: !4650, line: 166, type: !345)
!6507 = !DILocation(line: 165, column: 26, scope: !6493)
!6508 = !DILocation(line: 165, column: 45, scope: !6493)
!6509 = !DILocation(line: 165, column: 68, scope: !6493)
!6510 = !DILocation(line: 166, column: 18, scope: !6493)
!6511 = !DILocation(line: 166, column: 30, scope: !6493)
!6512 = !DILocation(line: 168, column: 30, scope: !6493)
!6513 = !DILocation(line: 168, column: 35, scope: !6493)
!6514 = !DILocation(line: 168, column: 50, scope: !6493)
!6515 = !DILocation(line: 168, column: 57, scope: !6493)
!6516 = !DILocation(line: 168, column: 63, scope: !6493)
!6517 = !DILocation(line: 168, column: 9, scope: !6493)
!6518 = !DILocation(line: 168, column: 2, scope: !6493)
!6519 = !DISubprogram(name: "vring_interrupt", scope: !6520, file: !6520, line: 120, type: !6498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6520 = !DIFile(filename: "./include/linux/virtio_ring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b8e0e254f4a0a127463f22fb51e0ca7")
!6521 = distinct !DISubprogram(name: "kmalloc_array", scope: !152, file: !152, line: 629, type: !6165, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6522)
!6522 = !{!6523, !6524, !6525, !6526}
!6523 = !DILocalVariable(name: "n", arg: 1, scope: !6521, file: !152, line: 629, type: !320)
!6524 = !DILocalVariable(name: "size", arg: 2, scope: !6521, file: !152, line: 629, type: !320)
!6525 = !DILocalVariable(name: "flags", arg: 3, scope: !6521, file: !152, line: 629, type: !719)
!6526 = !DILocalVariable(name: "bytes", scope: !6521, file: !152, line: 631, type: !320)
!6527 = !DILocation(line: 629, column: 61, scope: !6521)
!6528 = !DILocation(line: 629, column: 71, scope: !6521)
!6529 = !DILocation(line: 629, column: 83, scope: !6521)
!6530 = !DILocation(line: 631, column: 2, scope: !6521)
!6531 = !DILocation(line: 631, column: 9, scope: !6521)
!6532 = !DILocation(line: 633, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6521, file: !152, line: 633, column: 6)
!6534 = !DILocation(line: 633, column: 6, scope: !6521)
!6535 = !DILocation(line: 634, column: 3, scope: !6533)
!6536 = !DILocation(line: 635, column: 27, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6521, file: !152, line: 635, column: 6)
!6538 = !DILocation(line: 635, column: 6, scope: !6537)
!6539 = !DILocation(line: 635, column: 30, scope: !6537)
!6540 = !DILocation(line: 635, column: 54, scope: !6537)
!6541 = !DILocation(line: 635, column: 33, scope: !6537)
!6542 = !DILocation(line: 635, column: 6, scope: !6521)
!6543 = !DILocation(line: 636, column: 18, scope: !6537)
!6544 = !DILocation(line: 636, column: 25, scope: !6537)
!6545 = !DILocation(line: 636, column: 10, scope: !6537)
!6546 = !DILocation(line: 636, column: 3, scope: !6537)
!6547 = !DILocation(line: 637, column: 19, scope: !6521)
!6548 = !DILocation(line: 637, column: 26, scope: !6521)
!6549 = !DILocation(line: 637, column: 9, scope: !6521)
!6550 = !DILocation(line: 637, column: 2, scope: !6521)
!6551 = !DILocation(line: 638, column: 1, scope: !6521)
!6552 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6553, file: !6553, line: 51, type: !6554, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6556)
!6553 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6554 = !DISubroutineType(types: !6555)
!6555 = !{!1474, !1474}
!6556 = !{!6557}
!6557 = !DILocalVariable(name: "overflow", arg: 1, scope: !6552, file: !6553, line: 51, type: !1474)
!6558 = !DILocation(line: 51, column: 60, scope: !6552)
!6559 = !DILocation(line: 53, column: 9, scope: !6552)
!6560 = !DILocation(line: 53, column: 2, scope: !6552)
!6561 = distinct !DISubprogram(name: "kmalloc", scope: !152, file: !152, line: 591, type: !6562, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6564)
!6562 = !DISubroutineType(types: !6563)
!6563 = !{!345, !320, !719}
!6564 = !{!6565, !6566, !6567}
!6565 = !DILocalVariable(name: "size", arg: 1, scope: !6561, file: !152, line: 591, type: !320)
!6566 = !DILocalVariable(name: "flags", arg: 2, scope: !6561, file: !152, line: 591, type: !719)
!6567 = !DILocalVariable(name: "index", scope: !6568, file: !152, line: 594, type: !7)
!6568 = distinct !DILexicalBlock(scope: !6569, file: !152, line: 593, column: 42)
!6569 = distinct !DILexicalBlock(scope: !6561, file: !152, line: 593, column: 6)
!6570 = !DILocation(line: 591, column: 61, scope: !6561)
!6571 = !DILocation(line: 591, column: 73, scope: !6561)
!6572 = !DILocation(line: 593, column: 27, scope: !6569)
!6573 = !DILocation(line: 593, column: 6, scope: !6569)
!6574 = !DILocation(line: 593, column: 33, scope: !6569)
!6575 = !DILocation(line: 593, column: 36, scope: !6569)
!6576 = !DILocation(line: 593, column: 6, scope: !6561)
!6577 = !DILocation(line: 594, column: 3, scope: !6568)
!6578 = !DILocation(line: 594, column: 16, scope: !6568)
!6579 = !DILocation(line: 596, column: 7, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6568, file: !152, line: 596, column: 7)
!6581 = !DILocation(line: 596, column: 12, scope: !6580)
!6582 = !DILocation(line: 596, column: 7, scope: !6568)
!6583 = !DILocation(line: 597, column: 25, scope: !6580)
!6584 = !DILocation(line: 597, column: 31, scope: !6580)
!6585 = !DILocation(line: 597, column: 11, scope: !6580)
!6586 = !DILocation(line: 597, column: 4, scope: !6580)
!6587 = !DILocation(line: 599, column: 11, scope: !6568)
!6588 = !DILocation(line: 599, column: 9, scope: !6568)
!6589 = !DILocation(line: 601, column: 33, scope: !6568)
!6590 = !DILocation(line: 601, column: 40, scope: !6568)
!6591 = !DILocation(line: 601, column: 20, scope: !6568)
!6592 = !DILocation(line: 601, column: 5, scope: !6568)
!6593 = !DILocation(line: 601, column: 51, scope: !6568)
!6594 = !DILocation(line: 602, column: 5, scope: !6568)
!6595 = !DILocation(line: 602, column: 12, scope: !6568)
!6596 = !DILocation(line: 600, column: 10, scope: !6568)
!6597 = !DILocation(line: 600, column: 3, scope: !6568)
!6598 = !DILocation(line: 603, column: 2, scope: !6569)
!6599 = !DILocation(line: 604, column: 19, scope: !6561)
!6600 = !DILocation(line: 604, column: 25, scope: !6561)
!6601 = !DILocation(line: 604, column: 9, scope: !6561)
!6602 = !DILocation(line: 604, column: 2, scope: !6561)
!6603 = !DILocation(line: 605, column: 1, scope: !6561)
!6604 = !DISubprogram(name: "__kmalloc", scope: !152, file: !152, line: 488, type: !6562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6605 = !DISubprogram(name: "kmalloc_large", scope: !152, file: !152, line: 531, type: !6562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6606 = distinct !DISubprogram(name: "__kmalloc_index", scope: !152, file: !152, line: 444, type: !6607, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6609)
!6607 = !DISubroutineType(types: !6608)
!6608 = !{!7, !320, !1474}
!6609 = !{!6610, !6611}
!6610 = !DILocalVariable(name: "size", arg: 1, scope: !6606, file: !152, line: 444, type: !320)
!6611 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6606, file: !152, line: 445, type: !1474)
!6612 = !DILocation(line: 444, column: 60, scope: !6606)
!6613 = !DILocation(line: 445, column: 16, scope: !6606)
!6614 = !DILocation(line: 447, column: 7, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 447, column: 6)
!6616 = !DILocation(line: 447, column: 6, scope: !6606)
!6617 = !DILocation(line: 448, column: 3, scope: !6615)
!6618 = !DILocation(line: 450, column: 6, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 450, column: 6)
!6620 = !DILocation(line: 450, column: 11, scope: !6619)
!6621 = !DILocation(line: 450, column: 6, scope: !6606)
!6622 = !DILocation(line: 451, column: 3, scope: !6619)
!6623 = !DILocation(line: 453, column: 32, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 453, column: 6)
!6625 = !DILocation(line: 453, column: 37, scope: !6624)
!6626 = !DILocation(line: 453, column: 42, scope: !6624)
!6627 = !DILocation(line: 453, column: 45, scope: !6624)
!6628 = !DILocation(line: 453, column: 50, scope: !6624)
!6629 = !DILocation(line: 453, column: 6, scope: !6606)
!6630 = !DILocation(line: 454, column: 3, scope: !6624)
!6631 = !DILocation(line: 455, column: 32, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 455, column: 6)
!6633 = !DILocation(line: 455, column: 37, scope: !6632)
!6634 = !DILocation(line: 455, column: 43, scope: !6632)
!6635 = !DILocation(line: 455, column: 46, scope: !6632)
!6636 = !DILocation(line: 455, column: 51, scope: !6632)
!6637 = !DILocation(line: 455, column: 6, scope: !6606)
!6638 = !DILocation(line: 456, column: 3, scope: !6632)
!6639 = !DILocation(line: 457, column: 6, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 457, column: 6)
!6641 = !DILocation(line: 457, column: 11, scope: !6640)
!6642 = !DILocation(line: 457, column: 6, scope: !6606)
!6643 = !DILocation(line: 457, column: 26, scope: !6640)
!6644 = !DILocation(line: 458, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 458, column: 6)
!6646 = !DILocation(line: 458, column: 11, scope: !6645)
!6647 = !DILocation(line: 458, column: 6, scope: !6606)
!6648 = !DILocation(line: 458, column: 26, scope: !6645)
!6649 = !DILocation(line: 459, column: 6, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 459, column: 6)
!6651 = !DILocation(line: 459, column: 11, scope: !6650)
!6652 = !DILocation(line: 459, column: 6, scope: !6606)
!6653 = !DILocation(line: 459, column: 26, scope: !6650)
!6654 = !DILocation(line: 460, column: 6, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 460, column: 6)
!6656 = !DILocation(line: 460, column: 11, scope: !6655)
!6657 = !DILocation(line: 460, column: 6, scope: !6606)
!6658 = !DILocation(line: 460, column: 26, scope: !6655)
!6659 = !DILocation(line: 461, column: 6, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 461, column: 6)
!6661 = !DILocation(line: 461, column: 11, scope: !6660)
!6662 = !DILocation(line: 461, column: 6, scope: !6606)
!6663 = !DILocation(line: 461, column: 26, scope: !6660)
!6664 = !DILocation(line: 462, column: 6, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 462, column: 6)
!6666 = !DILocation(line: 462, column: 11, scope: !6665)
!6667 = !DILocation(line: 462, column: 6, scope: !6606)
!6668 = !DILocation(line: 462, column: 26, scope: !6665)
!6669 = !DILocation(line: 463, column: 6, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 463, column: 6)
!6671 = !DILocation(line: 463, column: 11, scope: !6670)
!6672 = !DILocation(line: 463, column: 6, scope: !6606)
!6673 = !DILocation(line: 463, column: 26, scope: !6670)
!6674 = !DILocation(line: 464, column: 6, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 464, column: 6)
!6676 = !DILocation(line: 464, column: 11, scope: !6675)
!6677 = !DILocation(line: 464, column: 6, scope: !6606)
!6678 = !DILocation(line: 464, column: 26, scope: !6675)
!6679 = !DILocation(line: 465, column: 6, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 465, column: 6)
!6681 = !DILocation(line: 465, column: 11, scope: !6680)
!6682 = !DILocation(line: 465, column: 6, scope: !6606)
!6683 = !DILocation(line: 465, column: 26, scope: !6680)
!6684 = !DILocation(line: 466, column: 6, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 466, column: 6)
!6686 = !DILocation(line: 466, column: 11, scope: !6685)
!6687 = !DILocation(line: 466, column: 6, scope: !6606)
!6688 = !DILocation(line: 466, column: 26, scope: !6685)
!6689 = !DILocation(line: 467, column: 6, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 467, column: 6)
!6691 = !DILocation(line: 467, column: 11, scope: !6690)
!6692 = !DILocation(line: 467, column: 6, scope: !6606)
!6693 = !DILocation(line: 467, column: 26, scope: !6690)
!6694 = !DILocation(line: 468, column: 6, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 468, column: 6)
!6696 = !DILocation(line: 468, column: 11, scope: !6695)
!6697 = !DILocation(line: 468, column: 6, scope: !6606)
!6698 = !DILocation(line: 468, column: 26, scope: !6695)
!6699 = !DILocation(line: 469, column: 6, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 469, column: 6)
!6701 = !DILocation(line: 469, column: 11, scope: !6700)
!6702 = !DILocation(line: 469, column: 6, scope: !6606)
!6703 = !DILocation(line: 469, column: 26, scope: !6700)
!6704 = !DILocation(line: 470, column: 6, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 470, column: 6)
!6706 = !DILocation(line: 470, column: 11, scope: !6705)
!6707 = !DILocation(line: 470, column: 6, scope: !6606)
!6708 = !DILocation(line: 470, column: 26, scope: !6705)
!6709 = !DILocation(line: 471, column: 6, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 471, column: 6)
!6711 = !DILocation(line: 471, column: 11, scope: !6710)
!6712 = !DILocation(line: 471, column: 6, scope: !6606)
!6713 = !DILocation(line: 471, column: 26, scope: !6710)
!6714 = !DILocation(line: 472, column: 6, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 472, column: 6)
!6716 = !DILocation(line: 472, column: 11, scope: !6715)
!6717 = !DILocation(line: 472, column: 6, scope: !6606)
!6718 = !DILocation(line: 472, column: 26, scope: !6715)
!6719 = !DILocation(line: 473, column: 6, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 473, column: 6)
!6721 = !DILocation(line: 473, column: 11, scope: !6720)
!6722 = !DILocation(line: 473, column: 6, scope: !6606)
!6723 = !DILocation(line: 473, column: 26, scope: !6720)
!6724 = !DILocation(line: 474, column: 6, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 474, column: 6)
!6726 = !DILocation(line: 474, column: 11, scope: !6725)
!6727 = !DILocation(line: 474, column: 6, scope: !6606)
!6728 = !DILocation(line: 474, column: 27, scope: !6725)
!6729 = !DILocation(line: 475, column: 6, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 475, column: 6)
!6731 = !DILocation(line: 475, column: 11, scope: !6730)
!6732 = !DILocation(line: 475, column: 6, scope: !6606)
!6733 = !DILocation(line: 475, column: 32, scope: !6730)
!6734 = !DILocation(line: 477, column: 50, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6606, file: !152, line: 477, column: 6)
!6736 = !DILocation(line: 477, column: 6, scope: !6606)
!6737 = !DILocation(line: 478, column: 3, scope: !6735)
!6738 = !DILocation(line: 478, column: 3, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6740, file: !152, line: 478, column: 3)
!6740 = distinct !DILexicalBlock(scope: !6735, file: !152, line: 478, column: 3)
!6741 = !{i32 -2141967479}
!6742 = !DILocation(line: 478, column: 3, scope: !6740)
!6743 = !DILocation(line: 480, column: 3, scope: !6735)
!6744 = !DILocation(line: 480, column: 3, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6735, file: !152, line: 480, column: 3)
!6746 = !DILocation(line: 480, column: 3, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6745, file: !152, line: 480, column: 3)
!6748 = !DILocation(line: 480, column: 3, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6745, file: !152, line: 480, column: 3)
!6750 = !{i64 2153000020, i64 2153000049, i64 2153000095, i64 2153000153, i64 2153000207, i64 2153000261, i64 2153000316, i64 2153000347}
!6751 = !DILocation(line: 483, column: 2, scope: !6606)
!6752 = !DILocation(line: 484, column: 1, scope: !6606)
!6753 = !DISubprogram(name: "kmalloc_trace", scope: !152, file: !152, line: 525, type: !6754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6754 = !DISubroutineType(types: !6755)
!6755 = !{!345, !6756, !719, !320}
!6756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6757, size: 64)
!6757 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6758, line: 11, flags: DIFlagFwdDecl)
!6758 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6759 = distinct !DISubprogram(name: "kmalloc_type", scope: !152, file: !152, line: 401, type: !6760, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6762)
!6760 = !DISubroutineType(types: !6761)
!6761 = !{!151, !719, !323}
!6762 = !{!6763, !6764}
!6763 = !DILocalVariable(name: "flags", arg: 1, scope: !6759, file: !152, line: 401, type: !719)
!6764 = !DILocalVariable(name: "caller", arg: 2, scope: !6759, file: !152, line: 401, type: !323)
!6765 = !DILocation(line: 401, column: 67, scope: !6759)
!6766 = !DILocation(line: 401, column: 88, scope: !6759)
!6767 = !DILocation(line: 407, column: 6, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6759, file: !152, line: 407, column: 6)
!6769 = !DILocation(line: 407, column: 6, scope: !6759)
!6770 = !DILocation(line: 413, column: 3, scope: !6768)
!6771 = !DILocation(line: 423, column: 38, scope: !6772)
!6772 = distinct !DILexicalBlock(scope: !6759, file: !152, line: 423, column: 6)
!6773 = !DILocation(line: 423, column: 44, scope: !6772)
!6774 = !DILocation(line: 423, column: 6, scope: !6759)
!6775 = !DILocation(line: 424, column: 3, scope: !6772)
!6776 = !DILocation(line: 426, column: 3, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6759, file: !152, line: 425, column: 6)
!6778 = !DILocation(line: 429, column: 1, scope: !6759)
!6779 = !DISubprogram(name: "__compiletime_assert_204", scope: !152, file: !152, line: 478, type: !2531, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6780 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !1233, file: !1233, line: 918, type: !6781, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6783)
!6781 = !DISubroutineType(types: !6782)
!6782 = !{!1474, !5089, !719}
!6783 = !{!6784, !6785}
!6784 = !DILocalVariable(name: "mask", arg: 1, scope: !6780, file: !1233, line: 918, type: !5089)
!6785 = !DILocalVariable(name: "flags", arg: 2, scope: !6780, file: !1233, line: 918, type: !719)
!6786 = !DILocation(line: 918, column: 53, scope: !6780)
!6787 = !DILocation(line: 918, column: 65, scope: !6780)
!6788 = !DILocation(line: 920, column: 2, scope: !6780)
!6789 = !DISubprogram(name: "pci_alloc_irq_vectors_affinity", scope: !4719, file: !4719, line: 1653, type: !6790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6790 = !DISubroutineType(types: !6791)
!6791 = !{!109, !4717, !7, !7, !7, !4648}
!6792 = distinct !DISubprogram(name: "vp_config_changed", scope: !3, file: !3, line: 50, type: !6498, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6793)
!6793 = !{!6794, !6795, !6796}
!6794 = !DILocalVariable(name: "irq", arg: 1, scope: !6792, file: !3, line: 50, type: !109)
!6795 = !DILocalVariable(name: "opaque", arg: 2, scope: !6792, file: !3, line: 50, type: !345)
!6796 = !DILocalVariable(name: "vp_dev", scope: !6792, file: !3, line: 52, type: !4712)
!6797 = !DILocation(line: 50, column: 42, scope: !6792)
!6798 = !DILocation(line: 50, column: 53, scope: !6792)
!6799 = !DILocation(line: 52, column: 2, scope: !6792)
!6800 = !DILocation(line: 52, column: 28, scope: !6792)
!6801 = !DILocation(line: 52, column: 37, scope: !6792)
!6802 = !DILocation(line: 54, column: 25, scope: !6792)
!6803 = !DILocation(line: 54, column: 33, scope: !6792)
!6804 = !DILocation(line: 54, column: 2, scope: !6792)
!6805 = !DILocation(line: 56, column: 1, scope: !6792)
!6806 = !DILocation(line: 55, column: 2, scope: !6792)
!6807 = distinct !DISubprogram(name: "vp_vring_interrupt", scope: !3, file: !3, line: 59, type: !6498, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6808)
!6808 = !{!6809, !6810, !6811, !6812, !6813, !6814, !6815, !6819, !6820, !6823}
!6809 = !DILocalVariable(name: "irq", arg: 1, scope: !6807, file: !3, line: 59, type: !109)
!6810 = !DILocalVariable(name: "opaque", arg: 2, scope: !6807, file: !3, line: 59, type: !345)
!6811 = !DILocalVariable(name: "vp_dev", scope: !6807, file: !3, line: 61, type: !4712)
!6812 = !DILocalVariable(name: "info", scope: !6807, file: !3, line: 62, type: !5080)
!6813 = !DILocalVariable(name: "ret", scope: !6807, file: !3, line: 63, type: !6500)
!6814 = !DILocalVariable(name: "flags", scope: !6807, file: !3, line: 64, type: !323)
!6815 = !DILocalVariable(name: "__dummy", scope: !6816, file: !3, line: 66, type: !323)
!6816 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 66, column: 2)
!6817 = distinct !DILexicalBlock(scope: !6818, file: !3, line: 66, column: 2)
!6818 = distinct !DILexicalBlock(scope: !6807, file: !3, line: 66, column: 2)
!6819 = !DILocalVariable(name: "__dummy2", scope: !6816, file: !3, line: 66, type: !323)
!6820 = !DILocalVariable(name: "__mptr", scope: !6821, file: !3, line: 67, type: !345)
!6821 = distinct !DILexicalBlock(scope: !6822, file: !3, line: 67, column: 2)
!6822 = distinct !DILexicalBlock(scope: !6807, file: !3, line: 67, column: 2)
!6823 = !DILocalVariable(name: "__mptr", scope: !6824, file: !3, line: 67, type: !345)
!6824 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 67, column: 2)
!6825 = distinct !DILexicalBlock(scope: !6822, file: !3, line: 67, column: 2)
!6826 = !DILocation(line: 59, column: 43, scope: !6807)
!6827 = !DILocation(line: 59, column: 54, scope: !6807)
!6828 = !DILocation(line: 61, column: 2, scope: !6807)
!6829 = !DILocation(line: 61, column: 28, scope: !6807)
!6830 = !DILocation(line: 61, column: 37, scope: !6807)
!6831 = !DILocation(line: 62, column: 2, scope: !6807)
!6832 = !DILocation(line: 62, column: 29, scope: !6807)
!6833 = !DILocation(line: 63, column: 2, scope: !6807)
!6834 = !DILocation(line: 63, column: 14, scope: !6807)
!6835 = !DILocation(line: 64, column: 2, scope: !6807)
!6836 = !DILocation(line: 64, column: 16, scope: !6807)
!6837 = !DILocation(line: 66, column: 2, scope: !6807)
!6838 = !DILocation(line: 66, column: 2, scope: !6818)
!6839 = !DILocation(line: 66, column: 2, scope: !6816)
!6840 = !DILocation(line: 66, column: 2, scope: !6817)
!6841 = !DILocation(line: 67, column: 2, scope: !6821)
!6842 = !DILocation(line: 67, column: 2, scope: !6822)
!6843 = !DILocation(line: 67, column: 2, scope: !6825)
!6844 = !DILocation(line: 68, column: 23, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6846, file: !3, line: 68, column: 7)
!6846 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 67, column: 55)
!6847 = !DILocation(line: 68, column: 28, scope: !6845)
!6848 = !DILocation(line: 68, column: 34, scope: !6845)
!6849 = !DILocation(line: 68, column: 7, scope: !6845)
!6850 = !DILocation(line: 68, column: 38, scope: !6845)
!6851 = !DILocation(line: 68, column: 7, scope: !6846)
!6852 = !DILocation(line: 69, column: 8, scope: !6845)
!6853 = !DILocation(line: 69, column: 4, scope: !6845)
!6854 = !DILocation(line: 70, column: 2, scope: !6846)
!6855 = !DILocation(line: 67, column: 2, scope: !6824)
!6856 = distinct !{!6856, !6842, !6857, !5252, !5253}
!6857 = !DILocation(line: 70, column: 2, scope: !6822)
!6858 = !DILocation(line: 71, column: 26, scope: !6807)
!6859 = !DILocation(line: 71, column: 34, scope: !6807)
!6860 = !DILocation(line: 71, column: 40, scope: !6807)
!6861 = !DILocation(line: 71, column: 2, scope: !6807)
!6862 = !DILocation(line: 73, column: 9, scope: !6807)
!6863 = !DILocation(line: 74, column: 1, scope: !6807)
!6864 = !DILocation(line: 73, column: 2, scope: !6807)
!6865 = !DISubprogram(name: "virtio_config_changed", scope: !4117, file: !4117, line: 151, type: !4634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6866 = distinct !DISubprogram(name: "ERR_PTR", scope: !6454, file: !6454, line: 39, type: !6867, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6869)
!6867 = !DISubroutineType(types: !6868)
!6868 = !{!345, !309}
!6869 = !{!6870}
!6870 = !DILocalVariable(name: "error", arg: 1, scope: !6866, file: !6454, line: 39, type: !309)
!6871 = !DILocation(line: 39, column: 48, scope: !6866)
!6872 = !DILocation(line: 41, column: 18, scope: !6866)
!6873 = !DILocation(line: 41, column: 9, scope: !6866)
!6874 = !DILocation(line: 41, column: 2, scope: !6866)
!6875 = distinct !DISubprogram(name: "list_add", scope: !6088, file: !6088, line: 167, type: !6142, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6876)
!6876 = !{!6877, !6878}
!6877 = !DILocalVariable(name: "new", arg: 1, scope: !6875, file: !6088, line: 167, type: !177)
!6878 = !DILocalVariable(name: "head", arg: 2, scope: !6875, file: !6088, line: 167, type: !177)
!6879 = !DILocation(line: 167, column: 47, scope: !6875)
!6880 = !DILocation(line: 167, column: 70, scope: !6875)
!6881 = !DILocation(line: 169, column: 13, scope: !6875)
!6882 = !DILocation(line: 169, column: 18, scope: !6875)
!6883 = !DILocation(line: 169, column: 24, scope: !6875)
!6884 = !DILocation(line: 169, column: 30, scope: !6875)
!6885 = !DILocation(line: 169, column: 2, scope: !6875)
!6886 = !DILocation(line: 170, column: 1, scope: !6875)
!6887 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6088, file: !6088, line: 35, type: !6089, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6888)
!6888 = !{!6889}
!6889 = !DILocalVariable(name: "list", arg: 1, scope: !6887, file: !6088, line: 35, type: !177)
!6890 = !DILocation(line: 35, column: 53, scope: !6887)
!6891 = !DILocation(line: 37, column: 2, scope: !6887)
!6892 = !DILocation(line: 37, column: 2, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6887, file: !6088, line: 37, column: 2)
!6894 = !DILocation(line: 37, column: 2, scope: !6895)
!6895 = distinct !DILexicalBlock(scope: !6893, file: !6088, line: 37, column: 2)
!6896 = !DILocation(line: 37, column: 2, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6893, file: !6088, line: 37, column: 2)
!6898 = !DILocation(line: 38, column: 2, scope: !6887)
!6899 = !DILocation(line: 38, column: 2, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6887, file: !6088, line: 38, column: 2)
!6901 = !DILocation(line: 38, column: 2, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6900, file: !6088, line: 38, column: 2)
!6903 = !DILocation(line: 38, column: 2, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6900, file: !6088, line: 38, column: 2)
!6905 = !DILocation(line: 39, column: 1, scope: !6887)
!6906 = distinct !DISubprogram(name: "__list_add", scope: !6088, file: !6088, line: 146, type: !6907, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6909)
!6907 = !DISubroutineType(types: !6908)
!6908 = !{null, !177, !177, !177}
!6909 = !{!6910, !6911, !6912}
!6910 = !DILocalVariable(name: "new", arg: 1, scope: !6906, file: !6088, line: 146, type: !177)
!6911 = !DILocalVariable(name: "prev", arg: 2, scope: !6906, file: !6088, line: 147, type: !177)
!6912 = !DILocalVariable(name: "next", arg: 3, scope: !6906, file: !6088, line: 148, type: !177)
!6913 = !DILocation(line: 146, column: 49, scope: !6906)
!6914 = !DILocation(line: 147, column: 28, scope: !6906)
!6915 = !DILocation(line: 148, column: 28, scope: !6906)
!6916 = !DILocation(line: 150, column: 24, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6906, file: !6088, line: 150, column: 6)
!6918 = !DILocation(line: 150, column: 29, scope: !6917)
!6919 = !DILocation(line: 150, column: 35, scope: !6917)
!6920 = !DILocation(line: 150, column: 7, scope: !6917)
!6921 = !DILocation(line: 150, column: 6, scope: !6906)
!6922 = !DILocation(line: 151, column: 3, scope: !6917)
!6923 = !DILocation(line: 153, column: 15, scope: !6906)
!6924 = !DILocation(line: 153, column: 2, scope: !6906)
!6925 = !DILocation(line: 153, column: 8, scope: !6906)
!6926 = !DILocation(line: 153, column: 13, scope: !6906)
!6927 = !DILocation(line: 154, column: 14, scope: !6906)
!6928 = !DILocation(line: 154, column: 2, scope: !6906)
!6929 = !DILocation(line: 154, column: 7, scope: !6906)
!6930 = !DILocation(line: 154, column: 12, scope: !6906)
!6931 = !DILocation(line: 155, column: 14, scope: !6906)
!6932 = !DILocation(line: 155, column: 2, scope: !6906)
!6933 = !DILocation(line: 155, column: 7, scope: !6906)
!6934 = !DILocation(line: 155, column: 12, scope: !6906)
!6935 = !DILocation(line: 156, column: 2, scope: !6906)
!6936 = !DILocation(line: 156, column: 2, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6906, file: !6088, line: 156, column: 2)
!6938 = !DILocation(line: 156, column: 2, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6937, file: !6088, line: 156, column: 2)
!6940 = !DILocation(line: 156, column: 2, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6937, file: !6088, line: 156, column: 2)
!6942 = !DILocation(line: 157, column: 1, scope: !6906)
!6943 = distinct !DISubprogram(name: "__list_add_valid", scope: !6088, file: !6088, line: 128, type: !6944, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6946)
!6944 = !DISubroutineType(types: !6945)
!6945 = !{!1474, !177, !177, !177}
!6946 = !{!6947, !6948, !6949}
!6947 = !DILocalVariable(name: "new", arg: 1, scope: !6943, file: !6088, line: 128, type: !177)
!6948 = !DILocalVariable(name: "prev", arg: 2, scope: !6943, file: !6088, line: 129, type: !177)
!6949 = !DILocalVariable(name: "next", arg: 3, scope: !6943, file: !6088, line: 130, type: !177)
!6950 = !DILocation(line: 128, column: 55, scope: !6943)
!6951 = !DILocation(line: 129, column: 23, scope: !6943)
!6952 = !DILocation(line: 130, column: 23, scope: !6943)
!6953 = !DILocation(line: 132, column: 2, scope: !6943)
!6954 = distinct !DISubprogram(name: "kobject_name", scope: !189, file: !189, line: 87, type: !261, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6955)
!6955 = !{!6956}
!6956 = !DILocalVariable(name: "kobj", arg: 1, scope: !6954, file: !189, line: 87, type: !256)
!6957 = !DILocation(line: 87, column: 62, scope: !6954)
!6958 = !DILocation(line: 89, column: 9, scope: !6954)
!6959 = !DILocation(line: 89, column: 15, scope: !6954)
!6960 = !DILocation(line: 89, column: 2, scope: !6954)
!6961 = !DISubprogram(name: "request_threaded_irq", scope: !4650, file: !4650, line: 147, type: !6962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6962 = !DISubroutineType(types: !6963)
!6963 = !{!109, !7, !6496, !6496, !323, !192, !345}
!6964 = distinct !DISubprogram(name: "vp_interrupt", scope: !3, file: !3, line: 82, type: !6498, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6965)
!6965 = !{!6966, !6967, !6968, !6969}
!6966 = !DILocalVariable(name: "irq", arg: 1, scope: !6964, file: !3, line: 82, type: !109)
!6967 = !DILocalVariable(name: "opaque", arg: 2, scope: !6964, file: !3, line: 82, type: !345)
!6968 = !DILocalVariable(name: "vp_dev", scope: !6964, file: !3, line: 84, type: !4712)
!6969 = !DILocalVariable(name: "isr", scope: !6964, file: !3, line: 85, type: !231)
!6970 = !DILocation(line: 82, column: 37, scope: !6964)
!6971 = !DILocation(line: 82, column: 48, scope: !6964)
!6972 = !DILocation(line: 84, column: 2, scope: !6964)
!6973 = !DILocation(line: 84, column: 28, scope: !6964)
!6974 = !DILocation(line: 84, column: 37, scope: !6964)
!6975 = !DILocation(line: 85, column: 2, scope: !6964)
!6976 = !DILocation(line: 85, column: 5, scope: !6964)
!6977 = !DILocation(line: 89, column: 16, scope: !6964)
!6978 = !DILocation(line: 89, column: 24, scope: !6964)
!6979 = !DILocation(line: 89, column: 8, scope: !6964)
!6980 = !DILocation(line: 89, column: 6, scope: !6964)
!6981 = !DILocation(line: 92, column: 7, scope: !6982)
!6982 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 92, column: 6)
!6983 = !DILocation(line: 92, column: 6, scope: !6964)
!6984 = !DILocation(line: 93, column: 3, scope: !6982)
!6985 = !DILocation(line: 96, column: 6, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 96, column: 6)
!6987 = !DILocation(line: 96, column: 10, scope: !6986)
!6988 = !DILocation(line: 96, column: 6, scope: !6964)
!6989 = !DILocation(line: 97, column: 21, scope: !6986)
!6990 = !DILocation(line: 97, column: 26, scope: !6986)
!6991 = !DILocation(line: 97, column: 3, scope: !6986)
!6992 = !DILocation(line: 99, column: 28, scope: !6964)
!6993 = !DILocation(line: 99, column: 33, scope: !6964)
!6994 = !DILocation(line: 99, column: 9, scope: !6964)
!6995 = !DILocation(line: 99, column: 2, scope: !6964)
!6996 = !DILocation(line: 100, column: 1, scope: !6964)
!6997 = !DISubprogram(name: "ioread8", scope: !5286, file: !5286, line: 29, type: !6998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6998 = !DISubroutineType(types: !6999)
!6999 = !{!7, !2143}
!7000 = distinct !DISubprogram(name: "bitmap_copy", scope: !7001, file: !7001, line: 266, type: !7002, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7005)
!7001 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!7002 = !DISubroutineType(types: !7003)
!7003 = !{null, !4100, !7004, !7}
!7004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!7005 = !{!7006, !7007, !7008, !7009}
!7006 = !DILocalVariable(name: "dst", arg: 1, scope: !7000, file: !7001, line: 266, type: !4100)
!7007 = !DILocalVariable(name: "src", arg: 2, scope: !7000, file: !7001, line: 266, type: !7004)
!7008 = !DILocalVariable(name: "nbits", arg: 3, scope: !7000, file: !7001, line: 267, type: !7)
!7009 = !DILocalVariable(name: "len", scope: !7000, file: !7001, line: 269, type: !7)
!7010 = !DILocation(line: 266, column: 47, scope: !7000)
!7011 = !DILocation(line: 266, column: 73, scope: !7000)
!7012 = !DILocation(line: 267, column: 17, scope: !7000)
!7013 = !DILocation(line: 269, column: 2, scope: !7000)
!7014 = !DILocation(line: 269, column: 15, scope: !7000)
!7015 = !DILocation(line: 269, column: 21, scope: !7000)
!7016 = !DILocation(line: 271, column: 6, scope: !7017)
!7017 = distinct !DILexicalBlock(scope: !7000, file: !7001, line: 271, column: 6)
!7018 = !DILocation(line: 271, column: 6, scope: !7000)
!7019 = !DILocation(line: 272, column: 11, scope: !7017)
!7020 = !DILocation(line: 272, column: 10, scope: !7017)
!7021 = !DILocation(line: 272, column: 4, scope: !7017)
!7022 = !DILocation(line: 272, column: 8, scope: !7017)
!7023 = !DILocation(line: 272, column: 3, scope: !7017)
!7024 = !DILocation(line: 274, column: 10, scope: !7017)
!7025 = !DILocation(line: 274, column: 15, scope: !7017)
!7026 = !DILocation(line: 274, column: 20, scope: !7017)
!7027 = !DILocation(line: 274, column: 3, scope: !7017)
!7028 = !DILocation(line: 275, column: 1, scope: !7000)
!7029 = !DISubprogram(name: "__pci_register_driver", scope: !4719, file: !4719, line: 1557, type: !7030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7030 = !DISubroutineType(types: !7031)
!7031 = !{!109, !4830, !168, !192}
!7032 = distinct !DISubprogram(name: "virtio_pci_probe", scope: !3, file: !3, line: 522, type: !4850, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7033)
!7033 = !{!7034, !7035, !7036, !7037, !7038, !7039, !7040, !7041}
!7034 = !DILocalVariable(name: "pci_dev", arg: 1, scope: !7032, file: !3, line: 522, type: !4717)
!7035 = !DILocalVariable(name: "id", arg: 2, scope: !7032, file: !3, line: 523, type: !4836)
!7036 = !DILocalVariable(name: "vp_dev", scope: !7032, file: !3, line: 525, type: !4712)
!7037 = !DILocalVariable(name: "reg_dev", scope: !7032, file: !3, line: 525, type: !4712)
!7038 = !DILocalVariable(name: "rc", scope: !7032, file: !3, line: 526, type: !109)
!7039 = !DILabel(scope: !7032, name: "err_register", file: !3, line: 569)
!7040 = !DILabel(scope: !7032, name: "err_probe", file: !3, line: 574)
!7041 = !DILabel(scope: !7032, name: "err_enable_device", file: !3, line: 576)
!7042 = !DILocation(line: 522, column: 45, scope: !7032)
!7043 = !DILocation(line: 523, column: 36, scope: !7032)
!7044 = !DILocation(line: 525, column: 2, scope: !7032)
!7045 = !DILocation(line: 525, column: 28, scope: !7032)
!7046 = !DILocation(line: 525, column: 37, scope: !7032)
!7047 = !DILocation(line: 526, column: 2, scope: !7032)
!7048 = !DILocation(line: 526, column: 6, scope: !7032)
!7049 = !DILocation(line: 529, column: 11, scope: !7032)
!7050 = !DILocation(line: 529, column: 9, scope: !7032)
!7051 = !DILocation(line: 530, column: 7, scope: !7052)
!7052 = distinct !DILexicalBlock(scope: !7032, file: !3, line: 530, column: 6)
!7053 = !DILocation(line: 530, column: 6, scope: !7032)
!7054 = !DILocation(line: 531, column: 3, scope: !7052)
!7055 = !DILocation(line: 533, column: 18, scope: !7032)
!7056 = !DILocation(line: 533, column: 27, scope: !7032)
!7057 = !DILocation(line: 533, column: 2, scope: !7032)
!7058 = !DILocation(line: 534, column: 29, scope: !7032)
!7059 = !DILocation(line: 534, column: 38, scope: !7032)
!7060 = !DILocation(line: 534, column: 2, scope: !7032)
!7061 = !DILocation(line: 534, column: 10, scope: !7032)
!7062 = !DILocation(line: 534, column: 15, scope: !7032)
!7063 = !DILocation(line: 534, column: 19, scope: !7032)
!7064 = !DILocation(line: 534, column: 26, scope: !7032)
!7065 = !DILocation(line: 535, column: 2, scope: !7032)
!7066 = !DILocation(line: 535, column: 10, scope: !7032)
!7067 = !DILocation(line: 535, column: 15, scope: !7032)
!7068 = !DILocation(line: 535, column: 19, scope: !7032)
!7069 = !DILocation(line: 535, column: 27, scope: !7032)
!7070 = !DILocation(line: 536, column: 20, scope: !7032)
!7071 = !DILocation(line: 536, column: 2, scope: !7032)
!7072 = !DILocation(line: 536, column: 10, scope: !7032)
!7073 = !DILocation(line: 536, column: 18, scope: !7032)
!7074 = !DILocation(line: 537, column: 18, scope: !7032)
!7075 = !DILocation(line: 537, column: 26, scope: !7032)
!7076 = !DILocation(line: 537, column: 2, scope: !7032)
!7077 = !DILocation(line: 538, column: 2, scope: !7032)
!7078 = !DILocation(line: 538, column: 2, scope: !7079)
!7079 = distinct !DILexicalBlock(scope: !7032, file: !3, line: 538, column: 2)
!7080 = !DILocation(line: 541, column: 25, scope: !7032)
!7081 = !DILocation(line: 541, column: 7, scope: !7032)
!7082 = !DILocation(line: 541, column: 5, scope: !7032)
!7083 = !DILocation(line: 542, column: 6, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7032, file: !3, line: 542, column: 6)
!7085 = !DILocation(line: 542, column: 6, scope: !7032)
!7086 = !DILocation(line: 543, column: 3, scope: !7084)
!7087 = !DILocation(line: 545, column: 6, scope: !7088)
!7088 = distinct !DILexicalBlock(scope: !7032, file: !3, line: 545, column: 6)
!7089 = !DILocation(line: 545, column: 6, scope: !7032)
!7090 = !DILocation(line: 546, column: 32, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !7088, file: !3, line: 545, column: 20)
!7092 = !DILocation(line: 546, column: 8, scope: !7091)
!7093 = !DILocation(line: 546, column: 6, scope: !7091)
!7094 = !DILocation(line: 548, column: 7, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7091, file: !3, line: 548, column: 7)
!7096 = !DILocation(line: 548, column: 10, scope: !7095)
!7097 = !DILocation(line: 548, column: 21, scope: !7095)
!7098 = !DILocation(line: 548, column: 24, scope: !7095)
!7099 = !DILocation(line: 548, column: 27, scope: !7095)
!7100 = !DILocation(line: 548, column: 7, scope: !7091)
!7101 = !DILocation(line: 549, column: 33, scope: !7095)
!7102 = !DILocation(line: 549, column: 9, scope: !7095)
!7103 = !DILocation(line: 549, column: 7, scope: !7095)
!7104 = !DILocation(line: 549, column: 4, scope: !7095)
!7105 = !DILocation(line: 550, column: 7, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !7091, file: !3, line: 550, column: 7)
!7107 = !DILocation(line: 550, column: 7, scope: !7091)
!7108 = !DILocation(line: 551, column: 4, scope: !7106)
!7109 = !DILocation(line: 552, column: 2, scope: !7091)
!7110 = !DILocation(line: 553, column: 32, scope: !7111)
!7111 = distinct !DILexicalBlock(scope: !7088, file: !3, line: 552, column: 9)
!7112 = !DILocation(line: 553, column: 8, scope: !7111)
!7113 = !DILocation(line: 553, column: 6, scope: !7111)
!7114 = !DILocation(line: 554, column: 7, scope: !7115)
!7115 = distinct !DILexicalBlock(scope: !7111, file: !3, line: 554, column: 7)
!7116 = !DILocation(line: 554, column: 10, scope: !7115)
!7117 = !DILocation(line: 554, column: 7, scope: !7111)
!7118 = !DILocation(line: 555, column: 33, scope: !7115)
!7119 = !DILocation(line: 555, column: 9, scope: !7115)
!7120 = !DILocation(line: 555, column: 7, scope: !7115)
!7121 = !DILocation(line: 555, column: 4, scope: !7115)
!7122 = !DILocation(line: 556, column: 7, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7111, file: !3, line: 556, column: 7)
!7124 = !DILocation(line: 556, column: 7, scope: !7111)
!7125 = !DILocation(line: 557, column: 4, scope: !7123)
!7126 = !DILocation(line: 560, column: 17, scope: !7032)
!7127 = !DILocation(line: 560, column: 2, scope: !7032)
!7128 = !DILocation(line: 562, column: 31, scope: !7032)
!7129 = !DILocation(line: 562, column: 39, scope: !7032)
!7130 = !DILocation(line: 562, column: 7, scope: !7032)
!7131 = !DILocation(line: 562, column: 5, scope: !7032)
!7132 = !DILocation(line: 563, column: 12, scope: !7032)
!7133 = !DILocation(line: 563, column: 10, scope: !7032)
!7134 = !DILocation(line: 564, column: 6, scope: !7135)
!7135 = distinct !DILexicalBlock(scope: !7032, file: !3, line: 564, column: 6)
!7136 = !DILocation(line: 564, column: 6, scope: !7032)
!7137 = !DILocation(line: 565, column: 3, scope: !7135)
!7138 = !DILocation(line: 567, column: 2, scope: !7032)
!7139 = !DILocation(line: 569, column: 1, scope: !7032)
!7140 = !DILocation(line: 570, column: 6, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7032, file: !3, line: 570, column: 6)
!7142 = !DILocation(line: 570, column: 14, scope: !7141)
!7143 = !DILocation(line: 570, column: 6, scope: !7032)
!7144 = !DILocation(line: 571, column: 28, scope: !7141)
!7145 = !DILocation(line: 571, column: 3, scope: !7141)
!7146 = !DILocation(line: 573, column: 28, scope: !7141)
!7147 = !DILocation(line: 573, column: 3, scope: !7141)
!7148 = !DILocation(line: 574, column: 1, scope: !7032)
!7149 = !DILocation(line: 575, column: 21, scope: !7032)
!7150 = !DILocation(line: 575, column: 2, scope: !7032)
!7151 = !DILocation(line: 576, column: 1, scope: !7032)
!7152 = !DILocation(line: 577, column: 6, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7032, file: !3, line: 577, column: 6)
!7154 = !DILocation(line: 577, column: 6, scope: !7032)
!7155 = !DILocation(line: 578, column: 15, scope: !7153)
!7156 = !DILocation(line: 578, column: 23, scope: !7153)
!7157 = !DILocation(line: 578, column: 28, scope: !7153)
!7158 = !DILocation(line: 578, column: 3, scope: !7153)
!7159 = !DILocation(line: 580, column: 9, scope: !7153)
!7160 = !DILocation(line: 580, column: 3, scope: !7153)
!7161 = !DILocation(line: 581, column: 9, scope: !7032)
!7162 = !DILocation(line: 581, column: 2, scope: !7032)
!7163 = !DILocation(line: 582, column: 1, scope: !7032)
!7164 = distinct !DISubprogram(name: "virtio_pci_remove", scope: !3, file: !3, line: 584, type: !4854, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7165)
!7165 = !{!7166, !7167, !7168}
!7166 = !DILocalVariable(name: "pci_dev", arg: 1, scope: !7164, file: !3, line: 584, type: !4717)
!7167 = !DILocalVariable(name: "vp_dev", scope: !7164, file: !3, line: 586, type: !4712)
!7168 = !DILocalVariable(name: "dev", scope: !7164, file: !3, line: 587, type: !4140)
!7169 = !DILocation(line: 584, column: 47, scope: !7164)
!7170 = !DILocation(line: 586, column: 2, scope: !7164)
!7171 = !DILocation(line: 586, column: 28, scope: !7164)
!7172 = !DILocation(line: 586, column: 53, scope: !7164)
!7173 = !DILocation(line: 586, column: 37, scope: !7164)
!7174 = !DILocation(line: 587, column: 2, scope: !7164)
!7175 = !DILocation(line: 587, column: 17, scope: !7164)
!7176 = !DILocation(line: 587, column: 35, scope: !7164)
!7177 = !DILocation(line: 587, column: 43, scope: !7164)
!7178 = !DILocation(line: 587, column: 48, scope: !7164)
!7179 = !DILocation(line: 587, column: 23, scope: !7164)
!7180 = !DILocation(line: 593, column: 29, scope: !7181)
!7181 = distinct !DILexicalBlock(scope: !7164, file: !3, line: 593, column: 6)
!7182 = !DILocation(line: 593, column: 7, scope: !7181)
!7183 = !DILocation(line: 593, column: 6, scope: !7164)
!7184 = !DILocation(line: 594, column: 24, scope: !7181)
!7185 = !DILocation(line: 594, column: 32, scope: !7181)
!7186 = !DILocation(line: 594, column: 3, scope: !7181)
!7187 = !DILocation(line: 596, column: 20, scope: !7164)
!7188 = !DILocation(line: 596, column: 2, scope: !7164)
!7189 = !DILocation(line: 598, column: 28, scope: !7164)
!7190 = !DILocation(line: 598, column: 36, scope: !7164)
!7191 = !DILocation(line: 598, column: 2, scope: !7164)
!7192 = !DILocation(line: 600, column: 6, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7164, file: !3, line: 600, column: 6)
!7194 = !DILocation(line: 600, column: 14, scope: !7193)
!7195 = !DILocation(line: 600, column: 6, scope: !7164)
!7196 = !DILocation(line: 601, column: 28, scope: !7193)
!7197 = !DILocation(line: 601, column: 3, scope: !7193)
!7198 = !DILocation(line: 603, column: 28, scope: !7193)
!7199 = !DILocation(line: 603, column: 3, scope: !7193)
!7200 = !DILocation(line: 605, column: 21, scope: !7164)
!7201 = !DILocation(line: 605, column: 2, scope: !7164)
!7202 = !DILocation(line: 606, column: 13, scope: !7164)
!7203 = !DILocation(line: 606, column: 2, scope: !7164)
!7204 = !DILocation(line: 607, column: 1, scope: !7164)
!7205 = distinct !DISubprogram(name: "virtio_pci_sriov_configure", scope: !3, file: !3, line: 609, type: !4867, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7206)
!7206 = !{!7207, !7208, !7209, !7210, !7211}
!7207 = !DILocalVariable(name: "pci_dev", arg: 1, scope: !7205, file: !3, line: 609, type: !4717)
!7208 = !DILocalVariable(name: "num_vfs", arg: 2, scope: !7205, file: !3, line: 609, type: !109)
!7209 = !DILocalVariable(name: "vp_dev", scope: !7205, file: !3, line: 611, type: !4712)
!7210 = !DILocalVariable(name: "vdev", scope: !7205, file: !3, line: 612, type: !4126)
!7211 = !DILocalVariable(name: "ret", scope: !7205, file: !3, line: 613, type: !109)
!7212 = !DILocation(line: 609, column: 55, scope: !7205)
!7213 = !DILocation(line: 609, column: 68, scope: !7205)
!7214 = !DILocation(line: 611, column: 2, scope: !7205)
!7215 = !DILocation(line: 611, column: 28, scope: !7205)
!7216 = !DILocation(line: 611, column: 53, scope: !7205)
!7217 = !DILocation(line: 611, column: 37, scope: !7205)
!7218 = !DILocation(line: 612, column: 2, scope: !7205)
!7219 = !DILocation(line: 612, column: 24, scope: !7205)
!7220 = !DILocation(line: 612, column: 32, scope: !7205)
!7221 = !DILocation(line: 612, column: 40, scope: !7205)
!7222 = !DILocation(line: 613, column: 2, scope: !7205)
!7223 = !DILocation(line: 613, column: 6, scope: !7205)
!7224 = !DILocation(line: 615, column: 8, scope: !7225)
!7225 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 615, column: 6)
!7226 = !DILocation(line: 615, column: 14, scope: !7225)
!7227 = !DILocation(line: 615, column: 22, scope: !7225)
!7228 = !DILocation(line: 615, column: 33, scope: !7225)
!7229 = !DILocation(line: 615, column: 39, scope: !7225)
!7230 = !DILocation(line: 615, column: 6, scope: !7205)
!7231 = !DILocation(line: 616, column: 3, scope: !7225)
!7232 = !DILocation(line: 618, column: 25, scope: !7233)
!7233 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 618, column: 6)
!7234 = !DILocation(line: 618, column: 7, scope: !7233)
!7235 = !DILocation(line: 618, column: 6, scope: !7205)
!7236 = !DILocation(line: 619, column: 3, scope: !7233)
!7237 = !DILocation(line: 621, column: 23, scope: !7238)
!7238 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 621, column: 6)
!7239 = !DILocation(line: 621, column: 6, scope: !7238)
!7240 = !DILocation(line: 621, column: 6, scope: !7205)
!7241 = !DILocation(line: 622, column: 3, scope: !7238)
!7242 = !DILocation(line: 624, column: 6, scope: !7243)
!7243 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 624, column: 6)
!7244 = !DILocation(line: 624, column: 14, scope: !7243)
!7245 = !DILocation(line: 624, column: 6, scope: !7205)
!7246 = !DILocation(line: 625, column: 21, scope: !7247)
!7247 = distinct !DILexicalBlock(scope: !7243, file: !3, line: 624, column: 20)
!7248 = !DILocation(line: 625, column: 3, scope: !7247)
!7249 = !DILocation(line: 626, column: 3, scope: !7247)
!7250 = !DILocation(line: 629, column: 25, scope: !7205)
!7251 = !DILocation(line: 629, column: 34, scope: !7205)
!7252 = !DILocation(line: 629, column: 8, scope: !7205)
!7253 = !DILocation(line: 629, column: 6, scope: !7205)
!7254 = !DILocation(line: 630, column: 6, scope: !7255)
!7255 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 630, column: 6)
!7256 = !DILocation(line: 630, column: 10, scope: !7255)
!7257 = !DILocation(line: 630, column: 6, scope: !7205)
!7258 = !DILocation(line: 631, column: 10, scope: !7255)
!7259 = !DILocation(line: 631, column: 3, scope: !7255)
!7260 = !DILocation(line: 633, column: 9, scope: !7205)
!7261 = !DILocation(line: 633, column: 2, scope: !7205)
!7262 = !DILocation(line: 634, column: 1, scope: !7205)
!7263 = distinct !DISubprogram(name: "kzalloc", scope: !152, file: !152, line: 719, type: !6562, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7264)
!7264 = !{!7265, !7266}
!7265 = !DILocalVariable(name: "size", arg: 1, scope: !7263, file: !152, line: 719, type: !320)
!7266 = !DILocalVariable(name: "flags", arg: 2, scope: !7263, file: !152, line: 719, type: !719)
!7267 = !DILocation(line: 719, column: 52, scope: !7263)
!7268 = !DILocation(line: 719, column: 64, scope: !7263)
!7269 = !DILocation(line: 721, column: 17, scope: !7263)
!7270 = !DILocation(line: 721, column: 23, scope: !7263)
!7271 = !DILocation(line: 721, column: 29, scope: !7263)
!7272 = !DILocation(line: 721, column: 9, scope: !7263)
!7273 = !DILocation(line: 721, column: 2, scope: !7263)
!7274 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !4719, file: !4719, line: 2114, type: !7275, scopeLine: 2115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7277)
!7275 = !DISubroutineType(types: !7276)
!7276 = !{null, !4717, !345}
!7277 = !{!7278, !7279}
!7278 = !DILocalVariable(name: "pdev", arg: 1, scope: !7274, file: !4719, line: 2114, type: !4717)
!7279 = !DILocalVariable(name: "data", arg: 2, scope: !7274, file: !4719, line: 2114, type: !345)
!7280 = !DILocation(line: 2114, column: 52, scope: !7274)
!7281 = !DILocation(line: 2114, column: 64, scope: !7274)
!7282 = !DILocation(line: 2116, column: 19, scope: !7274)
!7283 = !DILocation(line: 2116, column: 25, scope: !7274)
!7284 = !DILocation(line: 2116, column: 30, scope: !7274)
!7285 = !DILocation(line: 2116, column: 2, scope: !7274)
!7286 = !DILocation(line: 2117, column: 1, scope: !7274)
!7287 = distinct !DISubprogram(name: "virtio_pci_release_dev", scope: !3, file: !3, line: 511, type: !4165, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7288)
!7288 = !{!7289, !7290, !7291, !7293}
!7289 = !DILocalVariable(name: "_d", arg: 1, scope: !7287, file: !3, line: 511, type: !4140)
!7290 = !DILocalVariable(name: "vdev", scope: !7287, file: !3, line: 513, type: !4126)
!7291 = !DILocalVariable(name: "__mptr", scope: !7292, file: !3, line: 513, type: !345)
!7292 = distinct !DILexicalBlock(scope: !7287, file: !3, line: 513, column: 31)
!7293 = !DILocalVariable(name: "vp_dev", scope: !7287, file: !3, line: 514, type: !4712)
!7294 = !DILocation(line: 511, column: 51, scope: !7287)
!7295 = !DILocation(line: 513, column: 2, scope: !7287)
!7296 = !DILocation(line: 513, column: 24, scope: !7287)
!7297 = !DILocation(line: 513, column: 31, scope: !7292)
!7298 = !DILocation(line: 513, column: 31, scope: !7287)
!7299 = !DILocation(line: 514, column: 2, scope: !7287)
!7300 = !DILocation(line: 514, column: 28, scope: !7287)
!7301 = !DILocation(line: 514, column: 50, scope: !7287)
!7302 = !DILocation(line: 514, column: 37, scope: !7287)
!7303 = !DILocation(line: 519, column: 8, scope: !7287)
!7304 = !DILocation(line: 519, column: 2, scope: !7287)
!7305 = !DILocation(line: 520, column: 1, scope: !7287)
!7306 = !DISubprogram(name: "pci_enable_device", scope: !4719, file: !4719, line: 1290, type: !4862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7307 = !DISubprogram(name: "virtio_pci_legacy_probe", scope: !147, file: !147, line: 128, type: !7308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7308 = !DISubroutineType(types: !7309)
!7309 = !{!109, !4712}
!7310 = !DISubprogram(name: "virtio_pci_modern_probe", scope: !147, file: !147, line: 139, type: !7308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7311 = !DISubprogram(name: "pci_set_master", scope: !4719, file: !4719, line: 1319, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7312 = !DISubprogram(name: "register_virtio_device", scope: !4117, file: !4117, line: 141, type: !4670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7313 = !DISubprogram(name: "virtio_pci_legacy_remove", scope: !147, file: !147, line: 129, type: !7314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7314 = !DISubroutineType(types: !7315)
!7315 = !{null, !4712}
!7316 = !DISubprogram(name: "virtio_pci_modern_remove", scope: !147, file: !147, line: 140, type: !7314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7317 = !DISubprogram(name: "pci_disable_device", scope: !4719, file: !4719, line: 1316, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7318 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7319 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !94, file: !94, line: 921, type: !7320, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7322)
!7320 = !DISubroutineType(types: !7321)
!7321 = !{null, !4140, !345}
!7322 = !{!7323, !7324}
!7323 = !DILocalVariable(name: "dev", arg: 1, scope: !7319, file: !94, line: 921, type: !4140)
!7324 = !DILocalVariable(name: "data", arg: 2, scope: !7319, file: !94, line: 921, type: !345)
!7325 = !DILocation(line: 921, column: 51, scope: !7319)
!7326 = !DILocation(line: 921, column: 62, scope: !7319)
!7327 = !DILocation(line: 923, column: 21, scope: !7319)
!7328 = !DILocation(line: 923, column: 2, scope: !7319)
!7329 = !DILocation(line: 923, column: 7, scope: !7319)
!7330 = !DILocation(line: 923, column: 19, scope: !7319)
!7331 = !DILocation(line: 924, column: 1, scope: !7319)
!7332 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !4719, file: !4719, line: 2109, type: !7333, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7335)
!7333 = !DISubroutineType(types: !7334)
!7334 = !{!345, !4717}
!7335 = !{!7336}
!7336 = !DILocalVariable(name: "pdev", arg: 1, scope: !7332, file: !4719, line: 2109, type: !4717)
!7337 = !DILocation(line: 2109, column: 53, scope: !7332)
!7338 = !DILocation(line: 2111, column: 26, scope: !7332)
!7339 = !DILocation(line: 2111, column: 32, scope: !7332)
!7340 = !DILocation(line: 2111, column: 9, scope: !7332)
!7341 = !DILocation(line: 2111, column: 2, scope: !7332)
!7342 = !DISubprogram(name: "get_device", scope: !94, file: !94, line: 1230, type: !7343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7343 = !DISubroutineType(types: !7344)
!7344 = !{!4140, !4140}
!7345 = !DISubprogram(name: "pci_device_is_present", scope: !4719, file: !4719, line: 1371, type: !7346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7346 = !DISubroutineType(types: !7347)
!7347 = !{!1474, !4717}
!7348 = !DISubprogram(name: "virtio_break_device", scope: !4117, file: !4117, line: 145, type: !4634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7349 = distinct !DISubprogram(name: "pci_disable_sriov", scope: !4719, file: !4719, line: 2383, type: !4854, scopeLine: 2383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7350)
!7350 = !{!7351}
!7351 = !DILocalVariable(name: "dev", arg: 1, scope: !7349, file: !4719, line: 2383, type: !4717)
!7352 = !DILocation(line: 2383, column: 54, scope: !7349)
!7353 = !DILocation(line: 2383, column: 61, scope: !7349)
!7354 = !DISubprogram(name: "unregister_virtio_device", scope: !4117, file: !4117, line: 142, type: !4634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7355 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !94, file: !94, line: 916, type: !7356, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7358)
!7356 = !DISubroutineType(types: !7357)
!7357 = !{!345, !4156}
!7358 = !{!7359}
!7359 = !DILocalVariable(name: "dev", arg: 1, scope: !7355, file: !94, line: 916, type: !4156)
!7360 = !DILocation(line: 916, column: 58, scope: !7355)
!7361 = !DILocation(line: 918, column: 9, scope: !7355)
!7362 = !DILocation(line: 918, column: 14, scope: !7355)
!7363 = !DILocation(line: 918, column: 2, scope: !7355)
!7364 = distinct !DISubprogram(name: "__virtio_test_bit", scope: !4610, file: !4610, line: 136, type: !7365, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7369)
!7365 = !DISubroutineType(types: !7366)
!7366 = !{!1474, !7367, !7}
!7367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7368, size: 64)
!7368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!7369 = !{!7370, !7371}
!7370 = !DILocalVariable(name: "vdev", arg: 1, scope: !7364, file: !4610, line: 136, type: !7367)
!7371 = !DILocalVariable(name: "fbit", arg: 2, scope: !7364, file: !4610, line: 137, type: !7)
!7372 = !DILocation(line: 136, column: 66, scope: !7364)
!7373 = !DILocation(line: 137, column: 23, scope: !7364)
!7374 = !DILocation(line: 140, column: 27, scope: !7375)
!7375 = distinct !DILexicalBlock(scope: !7364, file: !4610, line: 140, column: 6)
!7376 = !DILocation(line: 140, column: 6, scope: !7375)
!7377 = !DILocation(line: 140, column: 6, scope: !7364)
!7378 = !DILocation(line: 141, column: 3, scope: !7375)
!7379 = !DILocation(line: 141, column: 3, scope: !7380)
!7380 = distinct !DILexicalBlock(scope: !7381, file: !4610, line: 141, column: 3)
!7381 = distinct !DILexicalBlock(scope: !7375, file: !4610, line: 141, column: 3)
!7382 = !DILocation(line: 141, column: 3, scope: !7381)
!7383 = !{i32 -2139910449}
!7384 = !DILocation(line: 143, column: 3, scope: !7375)
!7385 = !DILocation(line: 143, column: 3, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7387, file: !4610, line: 143, column: 3)
!7387 = distinct !DILexicalBlock(scope: !7375, file: !4610, line: 143, column: 3)
!7388 = !DILocation(line: 143, column: 3, scope: !7387)
!7389 = !DILocation(line: 143, column: 3, scope: !7390)
!7390 = distinct !DILexicalBlock(scope: !7386, file: !4610, line: 143, column: 3)
!7391 = !DILocation(line: 143, column: 3, scope: !7392)
!7392 = distinct !DILexicalBlock(scope: !7390, file: !4610, line: 143, column: 3)
!7393 = !DILocation(line: 143, column: 3, scope: !7394)
!7394 = distinct !DILexicalBlock(scope: !7390, file: !4610, line: 143, column: 3)
!7395 = !{i64 2155057148, i64 2155057177, i64 2155057223, i64 2155057281, i64 2155057335, i64 2155057389, i64 2155057444, i64 2155057475}
!7396 = !DILocation(line: 145, column: 9, scope: !7364)
!7397 = !DILocation(line: 145, column: 15, scope: !7364)
!7398 = !DILocation(line: 145, column: 26, scope: !7364)
!7399 = !DILocation(line: 145, column: 24, scope: !7364)
!7400 = !DILocation(line: 145, column: 2, scope: !7364)
!7401 = distinct !DISubprogram(name: "pci_vfs_assigned", scope: !4719, file: !4719, line: 2385, type: !4862, scopeLine: 2386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7402)
!7402 = !{!7403}
!7403 = !DILocalVariable(name: "dev", arg: 1, scope: !7401, file: !4719, line: 2385, type: !4717)
!7404 = !DILocation(line: 2385, column: 52, scope: !7401)
!7405 = !DILocation(line: 2386, column: 3, scope: !7401)
!7406 = distinct !DISubprogram(name: "pci_enable_sriov", scope: !4719, file: !4719, line: 2369, type: !4867, scopeLine: 2370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7407)
!7407 = !{!7408, !7409}
!7408 = !DILocalVariable(name: "dev", arg: 1, scope: !7406, file: !4719, line: 2369, type: !4717)
!7409 = !DILocalVariable(name: "nr_virtfn", arg: 2, scope: !7406, file: !4719, line: 2369, type: !109)
!7410 = !DILocation(line: 2369, column: 52, scope: !7406)
!7411 = !DILocation(line: 2369, column: 61, scope: !7406)
!7412 = !DILocation(line: 2370, column: 3, scope: !7406)
!7413 = !DISubprogram(name: "__compiletime_assert_292", scope: !4610, file: !4610, line: 141, type: !2531, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7414 = distinct !DISubprogram(name: "virtio_pci_freeze", scope: !3, file: !3, line: 470, type: !4174, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7415)
!7415 = !{!7416, !7417, !7418, !7420, !7421}
!7416 = !DILocalVariable(name: "dev", arg: 1, scope: !7414, file: !3, line: 470, type: !4140)
!7417 = !DILocalVariable(name: "pci_dev", scope: !7414, file: !3, line: 472, type: !4717)
!7418 = !DILocalVariable(name: "__mptr", scope: !7419, file: !3, line: 472, type: !345)
!7419 = distinct !DILexicalBlock(scope: !7414, file: !3, line: 472, column: 28)
!7420 = !DILocalVariable(name: "vp_dev", scope: !7414, file: !3, line: 473, type: !4712)
!7421 = !DILocalVariable(name: "ret", scope: !7414, file: !3, line: 474, type: !109)
!7422 = !DILocation(line: 470, column: 45, scope: !7414)
!7423 = !DILocation(line: 472, column: 2, scope: !7414)
!7424 = !DILocation(line: 472, column: 18, scope: !7414)
!7425 = !DILocation(line: 472, column: 28, scope: !7419)
!7426 = !DILocation(line: 472, column: 28, scope: !7414)
!7427 = !DILocation(line: 473, column: 2, scope: !7414)
!7428 = !DILocation(line: 473, column: 28, scope: !7414)
!7429 = !DILocation(line: 473, column: 53, scope: !7414)
!7430 = !DILocation(line: 473, column: 37, scope: !7414)
!7431 = !DILocation(line: 474, column: 2, scope: !7414)
!7432 = !DILocation(line: 474, column: 6, scope: !7414)
!7433 = !DILocation(line: 476, column: 30, scope: !7414)
!7434 = !DILocation(line: 476, column: 38, scope: !7414)
!7435 = !DILocation(line: 476, column: 8, scope: !7414)
!7436 = !DILocation(line: 476, column: 6, scope: !7414)
!7437 = !DILocation(line: 478, column: 7, scope: !7438)
!7438 = distinct !DILexicalBlock(scope: !7414, file: !3, line: 478, column: 6)
!7439 = !DILocation(line: 478, column: 6, scope: !7414)
!7440 = !DILocation(line: 479, column: 22, scope: !7438)
!7441 = !DILocation(line: 479, column: 3, scope: !7438)
!7442 = !DILocation(line: 480, column: 9, scope: !7414)
!7443 = !DILocation(line: 481, column: 1, scope: !7414)
!7444 = !DILocation(line: 480, column: 2, scope: !7414)
!7445 = distinct !DISubprogram(name: "virtio_pci_restore", scope: !3, file: !3, line: 483, type: !4174, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7446)
!7446 = !{!7447, !7448, !7449, !7451, !7452}
!7447 = !DILocalVariable(name: "dev", arg: 1, scope: !7445, file: !3, line: 483, type: !4140)
!7448 = !DILocalVariable(name: "pci_dev", scope: !7445, file: !3, line: 485, type: !4717)
!7449 = !DILocalVariable(name: "__mptr", scope: !7450, file: !3, line: 485, type: !345)
!7450 = distinct !DILexicalBlock(scope: !7445, file: !3, line: 485, column: 28)
!7451 = !DILocalVariable(name: "vp_dev", scope: !7445, file: !3, line: 486, type: !4712)
!7452 = !DILocalVariable(name: "ret", scope: !7445, file: !3, line: 487, type: !109)
!7453 = !DILocation(line: 483, column: 46, scope: !7445)
!7454 = !DILocation(line: 485, column: 2, scope: !7445)
!7455 = !DILocation(line: 485, column: 18, scope: !7445)
!7456 = !DILocation(line: 485, column: 28, scope: !7450)
!7457 = !DILocation(line: 485, column: 28, scope: !7445)
!7458 = !DILocation(line: 486, column: 2, scope: !7445)
!7459 = !DILocation(line: 486, column: 28, scope: !7445)
!7460 = !DILocation(line: 486, column: 53, scope: !7445)
!7461 = !DILocation(line: 486, column: 37, scope: !7445)
!7462 = !DILocation(line: 487, column: 2, scope: !7445)
!7463 = !DILocation(line: 487, column: 6, scope: !7445)
!7464 = !DILocation(line: 489, column: 26, scope: !7445)
!7465 = !DILocation(line: 489, column: 8, scope: !7445)
!7466 = !DILocation(line: 489, column: 6, scope: !7445)
!7467 = !DILocation(line: 490, column: 6, scope: !7468)
!7468 = distinct !DILexicalBlock(scope: !7445, file: !3, line: 490, column: 6)
!7469 = !DILocation(line: 490, column: 6, scope: !7445)
!7470 = !DILocation(line: 491, column: 10, scope: !7468)
!7471 = !DILocation(line: 491, column: 3, scope: !7468)
!7472 = !DILocation(line: 493, column: 17, scope: !7445)
!7473 = !DILocation(line: 493, column: 2, scope: !7445)
!7474 = !DILocation(line: 494, column: 32, scope: !7445)
!7475 = !DILocation(line: 494, column: 40, scope: !7445)
!7476 = !DILocation(line: 494, column: 9, scope: !7445)
!7477 = !DILocation(line: 494, column: 2, scope: !7445)
!7478 = !DILocation(line: 495, column: 1, scope: !7445)
!7479 = !DISubprogram(name: "virtio_device_freeze", scope: !4117, file: !4117, line: 153, type: !4670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7480 = !DISubprogram(name: "virtio_device_restore", scope: !4117, file: !4117, line: 154, type: !4670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
