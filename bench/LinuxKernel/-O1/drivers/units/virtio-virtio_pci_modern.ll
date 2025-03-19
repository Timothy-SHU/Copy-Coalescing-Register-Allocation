; ModuleID = 'drivers/virtio/virtio_pci_modern.c'
source_filename = "drivers/virtio/virtio_pci_modern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_pci_device = type { %struct.virtio_device, ptr, %union.anon.14, i8, ptr, %struct.spinlock, %struct.list_head, ptr, i32, i32, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
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
%struct.virtio_device_id = type { i32, i32 }
%union.anon.14 = type { %struct.virtio_pci_modern_device }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i64, ptr, i64, i64, i32, i32, i32, %struct.virtio_device_id, ptr, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i8, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.virtio_shm_region = type { i64, i64 }

@virtio_pci_config_ops = internal constant %struct.virtio_config_ops { ptr @vp_get, ptr @vp_set, ptr @vp_generation, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_modern_find_vqs, ptr @vp_del_vqs, ptr @vp_synchronize_vectors, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr @vp_get_shm_region, ptr @vp_modern_disable_vq_and_reset, ptr @vp_modern_enable_vq_after_reset }, align 8, !dbg !0
@virtio_pci_config_nodev_ops = internal constant %struct.virtio_config_ops { ptr null, ptr null, ptr @vp_generation, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_modern_find_vqs, ptr @vp_del_vqs, ptr @vp_synchronize_vectors, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr @vp_get_shm_region, ptr @vp_modern_disable_vq_and_reset, ptr @vp_modern_enable_vq_after_reset }, align 8, !dbg !5134
@.str = private unnamed_addr constant [35 x i8] c"drivers/virtio/virtio_pci_modern.c\00", align 1, !dbg !5094
@.str.1 = private unnamed_addr constant [75 x i8] c"virtio: device uses modern interface but does not have VIRTIO_F_VERSION_1\0A\00", align 1, !dbg !5099
@.str.2 = private unnamed_addr constant [30 x i8] c"include/linux/virtio_config.h\00", align 1, !dbg !5104
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: cap offset+len overflow detected\0A\00", align 1, !dbg !5109
@__func__.vp_get_shm_region = private unnamed_addr constant [18 x i8] c"vp_get_shm_region\00", align 1, !dbg !5114
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: bar shorter than cap offset+len\0A\00", align 1, !dbg !5119
@.str.5 = private unnamed_addr constant [47 x i8] c"%s: shm cap with bad size offset: %d size: %d\0A\00", align 1, !dbg !5124
@__func__.virtio_pci_find_shm_cap = private unnamed_addr constant [24 x i8] c"virtio_pci_find_shm_cap\00", align 1, !dbg !5129

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @virtio_pci_modern_probe(ptr noundef %vp_dev) #0 align 16 !dbg !5145 {
entry:
  %retval = alloca i32, align 4
  %vp_dev.addr = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vp_dev, ptr %vp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp_dev.addr, metadata !5149, metadata !DIExpression()), !dbg !5154
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5150, metadata !DIExpression()), !dbg !5156
  %0 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5157
  %1 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, !dbg !5158
  store ptr %1, ptr %mdev, align 8, !dbg !5156
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #11, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !5152, metadata !DIExpression()), !dbg !5160
  %2 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5161
  %pci_dev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 1, !dbg !5162
  %3 = load ptr, ptr %pci_dev1, align 8, !dbg !5162
  store ptr %3, ptr %pci_dev, align 8, !dbg !5160
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !5163
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5153, metadata !DIExpression()), !dbg !5164
  %4 = load ptr, ptr %pci_dev, align 8, !dbg !5165
  %5 = load ptr, ptr %mdev, align 8, !dbg !5166
  %pci_dev2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %5, i32 0, i32 0, !dbg !5167
  store ptr %4, ptr %pci_dev2, align 8, !dbg !5168
  %6 = load ptr, ptr %mdev, align 8, !dbg !5169
  %call = call i32 @vp_modern_probe(ptr noundef %6) #12, !dbg !5170
  store i32 %call, ptr %err, align 4, !dbg !5171
  %7 = load i32, ptr %err, align 4, !dbg !5172
  %tobool = icmp ne i32 %7, 0, !dbg !5172
  br i1 %tobool, label %if.then, label %if.end, !dbg !5174

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %err, align 4, !dbg !5175
  store i32 %8, ptr %retval, align 4, !dbg !5176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5176

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %mdev, align 8, !dbg !5177
  %device = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %9, i32 0, i32 2, !dbg !5179
  %10 = load ptr, ptr %device, align 8, !dbg !5179
  %tobool3 = icmp ne ptr %10, null, !dbg !5177
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5180

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5181
  %vdev = getelementptr inbounds %struct.virtio_pci_device, ptr %11, i32 0, i32 0, !dbg !5182
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8, !dbg !5183
  store ptr @virtio_pci_config_ops, ptr %config, align 8, !dbg !5184
  br label %if.end7, !dbg !5181

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5185
  %vdev5 = getelementptr inbounds %struct.virtio_pci_device, ptr %12, i32 0, i32 0, !dbg !5186
  %config6 = getelementptr inbounds %struct.virtio_device, ptr %vdev5, i32 0, i32 8, !dbg !5187
  store ptr @virtio_pci_config_nodev_ops, ptr %config6, align 8, !dbg !5188
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %13 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5189
  %config_vector = getelementptr inbounds %struct.virtio_pci_device, ptr %13, i32 0, i32 17, !dbg !5190
  store ptr @vp_config_vector, ptr %config_vector, align 8, !dbg !5191
  %14 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5192
  %setup_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %14, i32 0, i32 15, !dbg !5193
  store ptr @setup_vq, ptr %setup_vq, align 8, !dbg !5194
  %15 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5195
  %del_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %15, i32 0, i32 16, !dbg !5196
  store ptr @del_vq, ptr %del_vq, align 8, !dbg !5197
  %16 = load ptr, ptr %mdev, align 8, !dbg !5198
  %isr = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %16, i32 0, i32 5, !dbg !5199
  %17 = load ptr, ptr %isr, align 8, !dbg !5199
  %18 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5200
  %isr8 = getelementptr inbounds %struct.virtio_pci_device, ptr %18, i32 0, i32 4, !dbg !5201
  store ptr %17, ptr %isr8, align 8, !dbg !5202
  %19 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5203
  %vdev9 = getelementptr inbounds %struct.virtio_pci_device, ptr %19, i32 0, i32 0, !dbg !5204
  %id = getelementptr inbounds %struct.virtio_device, ptr %vdev9, i32 0, i32 7, !dbg !5205
  %20 = load ptr, ptr %mdev, align 8, !dbg !5206
  %id10 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %20, i32 0, i32 11, !dbg !5207
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %id, ptr align 4 %id10, i64 8, i1 false), !dbg !5207
  store i32 0, ptr %retval, align 4, !dbg !5208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5208

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !5209
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #11, !dbg !5209
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5209
  %21 = load i32, ptr %retval, align 4, !dbg !5209
  ret i32 %21, !dbg !5209
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5210 dso_local i32 @vp_modern_probe(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @vp_config_vector(ptr noundef %vp_dev, i16 noundef zeroext %vector) #0 align 16 !dbg !5213 {
entry:
  %vp_dev.addr = alloca ptr, align 8
  %vector.addr = alloca i16, align 2
  store ptr %vp_dev, ptr %vp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp_dev.addr, metadata !5215, metadata !DIExpression()), !dbg !5217
  store i16 %vector, ptr %vector.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !5216, metadata !DIExpression()), !dbg !5218
  %0 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5219
  %1 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, !dbg !5220
  %2 = load i16, ptr %vector.addr, align 2, !dbg !5221
  %call = call zeroext i16 @vp_modern_config_vector(ptr noundef %1, i16 noundef zeroext %2) #12, !dbg !5222
  ret i16 %call, !dbg !5223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @setup_vq(ptr noundef %vp_dev, ptr noundef %info, i32 noundef %index, ptr noundef %callback, ptr noundef %name, i1 noundef zeroext %ctx, i16 noundef zeroext %msix_vec) #0 align 16 !dbg !5224 {
entry:
  %retval = alloca ptr, align 8
  %vp_dev.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %callback.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ctx.addr = alloca i8, align 1
  %msix_vec.addr = alloca i16, align 2
  %mdev = alloca ptr, align 8
  %notify = alloca ptr, align 8
  %vq = alloca ptr, align 8
  %num = alloca i16, align 2
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vp_dev, ptr %vp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp_dev.addr, metadata !5226, metadata !DIExpression()), !dbg !5242
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5227, metadata !DIExpression()), !dbg !5243
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5228, metadata !DIExpression()), !dbg !5244
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !5229, metadata !DIExpression()), !dbg !5245
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5230, metadata !DIExpression()), !dbg !5246
  %frombool = zext i1 %ctx to i8
  store i8 %frombool, ptr %ctx.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5231, metadata !DIExpression()), !dbg !5247
  store i16 %msix_vec, ptr %msix_vec.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %msix_vec.addr, metadata !5232, metadata !DIExpression()), !dbg !5248
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5233, metadata !DIExpression()), !dbg !5250
  %0 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5251
  %1 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, !dbg !5252
  store ptr %1, ptr %mdev, align 8, !dbg !5250
  call void @llvm.lifetime.start.p0(i64 8, ptr %notify) #11, !dbg !5253
  call void @llvm.dbg.declare(metadata ptr %notify, metadata !5234, metadata !DIExpression()), !dbg !5254
  call void @llvm.lifetime.start.p0(i64 8, ptr %vq) #11, !dbg !5255
  call void @llvm.dbg.declare(metadata ptr %vq, metadata !5238, metadata !DIExpression()), !dbg !5256
  call void @llvm.lifetime.start.p0(i64 2, ptr %num) #11, !dbg !5257
  call void @llvm.dbg.declare(metadata ptr %num, metadata !5239, metadata !DIExpression()), !dbg !5258
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5240, metadata !DIExpression()), !dbg !5260
  %2 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5261
  %vdev = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 0, !dbg !5263
  %call = call zeroext i1 @__virtio_test_bit(ptr noundef %vdev, i32 noundef 38) #12, !dbg !5264
  br i1 %call, label %if.then, label %if.else, !dbg !5265

if.then:                                          ; preds = %entry
  store ptr @vp_notify_with_data, ptr %notify, align 8, !dbg !5266
  br label %if.end, !dbg !5267

if.else:                                          ; preds = %entry
  store ptr @vp_notify, ptr %notify, align 8, !dbg !5268
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %index.addr, align 4, !dbg !5269
  %4 = load ptr, ptr %mdev, align 8, !dbg !5271
  %call1 = call zeroext i16 @vp_modern_get_num_queues(ptr noundef %4) #12, !dbg !5272
  %conv = zext i16 %call1 to i32, !dbg !5272
  %cmp = icmp uge i32 %3, %conv, !dbg !5273
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5274

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -22) #12, !dbg !5275
  store ptr %call4, ptr %retval, align 8, !dbg !5276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5276

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %mdev, align 8, !dbg !5277
  %6 = load i32, ptr %index.addr, align 4, !dbg !5278
  %conv6 = trunc i32 %6 to i16, !dbg !5278
  %call7 = call zeroext i16 @vp_modern_get_queue_size(ptr noundef %5, i16 noundef zeroext %conv6) #12, !dbg !5279
  store i16 %call7, ptr %num, align 2, !dbg !5280
  %7 = load i16, ptr %num, align 2, !dbg !5281
  %tobool = icmp ne i16 %7, 0, !dbg !5281
  br i1 %tobool, label %lor.lhs.false, label %if.then11, !dbg !5283

lor.lhs.false:                                    ; preds = %if.end5
  %8 = load ptr, ptr %mdev, align 8, !dbg !5284
  %9 = load i32, ptr %index.addr, align 4, !dbg !5285
  %conv8 = trunc i32 %9 to i16, !dbg !5285
  %call9 = call zeroext i1 @vp_modern_get_queue_enable(ptr noundef %8, i16 noundef zeroext %conv8) #12, !dbg !5286
  br i1 %call9, label %if.then11, label %if.end13, !dbg !5287

if.then11:                                        ; preds = %lor.lhs.false, %if.end5
  %call12 = call ptr @ERR_PTR(i64 noundef -2) #12, !dbg !5288
  store ptr %call12, ptr %retval, align 8, !dbg !5289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5289

if.end13:                                         ; preds = %lor.lhs.false
  %10 = load i16, ptr %msix_vec.addr, align 2, !dbg !5290
  %conv14 = zext i16 %10 to i32, !dbg !5290
  %11 = load ptr, ptr %info.addr, align 8, !dbg !5291
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %11, i32 0, i32 2, !dbg !5292
  store i32 %conv14, ptr %msix_vector, align 8, !dbg !5293
  %12 = load i32, ptr %index.addr, align 4, !dbg !5294
  %13 = load i16, ptr %num, align 2, !dbg !5295
  %conv15 = zext i16 %13 to i32, !dbg !5295
  %14 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5296
  %vdev16 = getelementptr inbounds %struct.virtio_pci_device, ptr %14, i32 0, i32 0, !dbg !5297
  %15 = load i8, ptr %ctx.addr, align 1, !dbg !5298, !range !5299, !noundef !891
  %tobool17 = trunc i8 %15 to i1, !dbg !5298
  %16 = load ptr, ptr %notify, align 8, !dbg !5300
  %17 = load ptr, ptr %callback.addr, align 8, !dbg !5301
  %18 = load ptr, ptr %name.addr, align 8, !dbg !5302
  %call18 = call ptr @vring_create_virtqueue(i32 noundef %12, i32 noundef %conv15, i32 noundef 64, ptr noundef %vdev16, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext %tobool17, ptr noundef %16, ptr noundef %17, ptr noundef %18) #12, !dbg !5303
  store ptr %call18, ptr %vq, align 8, !dbg !5304
  %19 = load ptr, ptr %vq, align 8, !dbg !5305
  %tobool19 = icmp ne ptr %19, null, !dbg !5305
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !5307

if.then20:                                        ; preds = %if.end13
  %call21 = call ptr @ERR_PTR(i64 noundef -12) #12, !dbg !5308
  store ptr %call21, ptr %retval, align 8, !dbg !5309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5309

if.end22:                                         ; preds = %if.end13
  %20 = load i16, ptr %num, align 2, !dbg !5310
  %conv23 = zext i16 %20 to i32, !dbg !5310
  %21 = load ptr, ptr %vq, align 8, !dbg !5311
  %num_max = getelementptr inbounds %struct.virtqueue, ptr %21, i32 0, i32 6, !dbg !5312
  store i32 %conv23, ptr %num_max, align 8, !dbg !5313
  %22 = load ptr, ptr %vq, align 8, !dbg !5314
  %23 = load i16, ptr %msix_vec.addr, align 2, !dbg !5315
  %call24 = call i32 @vp_active_vq(ptr noundef %22, i16 noundef zeroext %23) #12, !dbg !5316
  store i32 %call24, ptr %err, align 4, !dbg !5317
  %24 = load i32, ptr %err, align 4, !dbg !5318
  %tobool25 = icmp ne i32 %24, 0, !dbg !5318
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5320

if.then26:                                        ; preds = %if.end22
  br label %err34, !dbg !5321

if.end27:                                         ; preds = %if.end22
  %25 = load ptr, ptr %mdev, align 8, !dbg !5322
  %26 = load i32, ptr %index.addr, align 4, !dbg !5323
  %conv28 = trunc i32 %26 to i16, !dbg !5323
  %call29 = call ptr @vp_modern_map_vq_notify(ptr noundef %25, i16 noundef zeroext %conv28, ptr noundef null) #12, !dbg !5324
  %27 = load ptr, ptr %vq, align 8, !dbg !5325
  %priv = getelementptr inbounds %struct.virtqueue, ptr %27, i32 0, i32 8, !dbg !5326
  store ptr %call29, ptr %priv, align 8, !dbg !5327
  %28 = load ptr, ptr %vq, align 8, !dbg !5328
  %priv30 = getelementptr inbounds %struct.virtqueue, ptr %28, i32 0, i32 8, !dbg !5330
  %29 = load ptr, ptr %priv30, align 8, !dbg !5330
  %tobool31 = icmp ne ptr %29, null, !dbg !5328
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !5331

if.then32:                                        ; preds = %if.end27
  store i32 -12, ptr %err, align 4, !dbg !5332
  br label %err34, !dbg !5334

if.end33:                                         ; preds = %if.end27
  %30 = load ptr, ptr %vq, align 8, !dbg !5335
  store ptr %30, ptr %retval, align 8, !dbg !5336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5336

err34:                                            ; preds = %if.then32, %if.then26
  call void @llvm.dbg.label(metadata !5241), !dbg !5337
  %31 = load ptr, ptr %vq, align 8, !dbg !5338
  call void @vring_del_virtqueue(ptr noundef %31) #12, !dbg !5339
  %32 = load i32, ptr %err, align 4, !dbg !5340
  %conv35 = sext i32 %32 to i64, !dbg !5340
  %call36 = call ptr @ERR_PTR(i64 noundef %conv35) #12, !dbg !5341
  store ptr %call36, ptr %retval, align 8, !dbg !5342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5342

cleanup:                                          ; preds = %err34, %if.end33, %if.then20, %if.then11, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 2, ptr %num) #11, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 8, ptr %vq) #11, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 8, ptr %notify) #11, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5343
  %33 = load ptr, ptr %retval, align 8, !dbg !5343
  ret ptr %33, !dbg !5343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @del_vq(ptr noundef %info) #0 align 16 !dbg !5344 {
entry:
  %info.addr = alloca ptr, align 8
  %vq = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5346, metadata !DIExpression()), !dbg !5350
  call void @llvm.lifetime.start.p0(i64 8, ptr %vq) #11, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %vq, metadata !5347, metadata !DIExpression()), !dbg !5352
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5353
  %vq1 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %0, i32 0, i32 0, !dbg !5354
  %1 = load ptr, ptr %vq1, align 8, !dbg !5354
  store ptr %1, ptr %vq, align 8, !dbg !5352
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5355
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5348, metadata !DIExpression()), !dbg !5356
  %2 = load ptr, ptr %vq, align 8, !dbg !5357
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 3, !dbg !5358
  %3 = load ptr, ptr %vdev, align 8, !dbg !5358
  %call = call ptr @to_vp_device(ptr noundef %3) #12, !dbg !5359
  store ptr %call, ptr %vp_dev, align 8, !dbg !5356
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5360
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5349, metadata !DIExpression()), !dbg !5361
  %4 = load ptr, ptr %vp_dev, align 8, !dbg !5362
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 2, !dbg !5363
  store ptr %5, ptr %mdev, align 8, !dbg !5361
  %6 = load ptr, ptr %vp_dev, align 8, !dbg !5364
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %6, i32 0, i32 8, !dbg !5366
  %7 = load i32, ptr %msix_enabled, align 8, !dbg !5366
  %tobool = icmp ne i32 %7, 0, !dbg !5364
  br i1 %tobool, label %if.then, label %if.end, !dbg !5367

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %mdev, align 8, !dbg !5368
  %9 = load ptr, ptr %vq, align 8, !dbg !5369
  %index = getelementptr inbounds %struct.virtqueue, ptr %9, i32 0, i32 4, !dbg !5370
  %10 = load i32, ptr %index, align 8, !dbg !5370
  %conv = trunc i32 %10 to i16, !dbg !5369
  %call2 = call zeroext i16 @vp_modern_queue_vector(ptr noundef %8, i16 noundef zeroext %conv, i16 noundef zeroext -1) #12, !dbg !5371
  br label %if.end, !dbg !5371

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %mdev, align 8, !dbg !5372
  %notify_base = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %11, i32 0, i32 3, !dbg !5374
  %12 = load ptr, ptr %notify_base, align 8, !dbg !5374
  %tobool3 = icmp ne ptr %12, null, !dbg !5372
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5375

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %mdev, align 8, !dbg !5376
  %pci_dev = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %13, i32 0, i32 0, !dbg !5377
  %14 = load ptr, ptr %pci_dev, align 8, !dbg !5377
  %15 = load ptr, ptr %vq, align 8, !dbg !5378
  %priv = getelementptr inbounds %struct.virtqueue, ptr %15, i32 0, i32 8, !dbg !5379
  %16 = load ptr, ptr %priv, align 8, !dbg !5379
  call void @pci_iounmap(ptr noundef %14, ptr noundef %16) #12, !dbg !5380
  br label %if.end5, !dbg !5380

if.end5:                                          ; preds = %if.then4, %if.end
  %17 = load ptr, ptr %vq, align 8, !dbg !5381
  call void @vring_del_virtqueue(ptr noundef %17) #12, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 8, ptr %vq) #11, !dbg !5383
  ret void, !dbg !5383
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @virtio_pci_modern_remove(ptr noundef %vp_dev) #0 align 16 !dbg !5384 {
entry:
  %vp_dev.addr = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  store ptr %vp_dev, ptr %vp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp_dev.addr, metadata !5388, metadata !DIExpression()), !dbg !5390
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5391
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5389, metadata !DIExpression()), !dbg !5392
  %0 = load ptr, ptr %vp_dev.addr, align 8, !dbg !5393
  %1 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, !dbg !5394
  store ptr %1, ptr %mdev, align 8, !dbg !5392
  %2 = load ptr, ptr %mdev, align 8, !dbg !5395
  call void @vp_modern_remove(ptr noundef %2) #12, !dbg !5396
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5397
  ret void, !dbg !5397
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5398 dso_local void @vp_modern_remove(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_get(ptr noundef %vdev, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !5401 {
entry:
  %vdev.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %vp_dev = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  %device = alloca ptr, align 8
  %b = alloca i8, align 1
  %w = alloca i16, align 2
  %l = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5403, metadata !DIExpression()), !dbg !5413
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5404, metadata !DIExpression()), !dbg !5414
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5405, metadata !DIExpression()), !dbg !5415
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5406, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5407, metadata !DIExpression()), !dbg !5418
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5419
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5420
  store ptr %call, ptr %vp_dev, align 8, !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5408, metadata !DIExpression()), !dbg !5422
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5423
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 2, !dbg !5424
  store ptr %2, ptr %mdev, align 8, !dbg !5422
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #11, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5409, metadata !DIExpression()), !dbg !5426
  %3 = load ptr, ptr %mdev, align 8, !dbg !5427
  %device1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %3, i32 0, i32 2, !dbg !5428
  %4 = load ptr, ptr %device1, align 8, !dbg !5428
  store ptr %4, ptr %device, align 8, !dbg !5426
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #11, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5410, metadata !DIExpression()), !dbg !5430
  call void @llvm.lifetime.start.p0(i64 2, ptr %w) #11, !dbg !5431
  call void @llvm.dbg.declare(metadata ptr %w, metadata !5411, metadata !DIExpression()), !dbg !5432
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #11, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %l, metadata !5412, metadata !DIExpression()), !dbg !5434
  br label %do.body, !dbg !5435

do.body:                                          ; preds = %entry
  %5 = load i32, ptr %offset.addr, align 4, !dbg !5436
  %6 = load i32, ptr %len.addr, align 4, !dbg !5436
  %add = add i32 %5, %6, !dbg !5436
  %conv = zext i32 %add to i64, !dbg !5436
  %7 = load ptr, ptr %mdev, align 8, !dbg !5436
  %device_len = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %7, i32 0, i32 7, !dbg !5436
  %8 = load i64, ptr %device_len, align 8, !dbg !5436
  %cmp = icmp ugt i64 %conv, %8, !dbg !5436
  %lnot = xor i1 %cmp, true, !dbg !5436
  %lnot3 = xor i1 %lnot, true, !dbg !5436
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5436
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5436
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !5436
  %tobool = icmp ne i64 %expval, 0, !dbg !5436
  br i1 %tobool, label %if.then, label %if.end, !dbg !5439

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5436

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5440

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !5442

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5442

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5440

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 76, i32 0, i64 12) #11, !dbg !5444, !srcloc !5446
  br label %do.cond8, !dbg !5444

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5444

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !5440

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !5440

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5440

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !5439

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !5439

do.end13:                                         ; preds = %do.cond12
  %9 = load i32, ptr %len.addr, align 4, !dbg !5447
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 4, label %sw.bb21
    i32 8, label %sw.bb25
  ], !dbg !5448

sw.bb:                                            ; preds = %do.end13
  %10 = load ptr, ptr %device, align 8, !dbg !5449
  %11 = load i32, ptr %offset.addr, align 4, !dbg !5451
  %idx.ext = zext i32 %11 to i64, !dbg !5452
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !5452
  %call14 = call i32 @ioread8(ptr noundef %add.ptr) #12, !dbg !5453
  %conv15 = trunc i32 %call14 to i8, !dbg !5453
  store i8 %conv15, ptr %b, align 1, !dbg !5454
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !5455
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %b, i64 1, i1 false), !dbg !5456
  br label %sw.epilog, !dbg !5457

sw.bb16:                                          ; preds = %do.end13
  %13 = load ptr, ptr %device, align 8, !dbg !5458
  %14 = load i32, ptr %offset.addr, align 4, !dbg !5458
  %idx.ext17 = zext i32 %14 to i64, !dbg !5458
  %add.ptr18 = getelementptr i8, ptr %13, i64 %idx.ext17, !dbg !5458
  %call19 = call i32 @ioread16(ptr noundef %add.ptr18) #12, !dbg !5458
  %conv20 = trunc i32 %call19 to i16, !dbg !5458
  store i16 %conv20, ptr %w, align 2, !dbg !5459
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !5460
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 2 %w, i64 2, i1 false), !dbg !5461
  br label %sw.epilog, !dbg !5462

sw.bb21:                                          ; preds = %do.end13
  %16 = load ptr, ptr %device, align 8, !dbg !5463
  %17 = load i32, ptr %offset.addr, align 4, !dbg !5463
  %idx.ext22 = zext i32 %17 to i64, !dbg !5463
  %add.ptr23 = getelementptr i8, ptr %16, i64 %idx.ext22, !dbg !5463
  %call24 = call i32 @ioread32(ptr noundef %add.ptr23) #12, !dbg !5463
  store i32 %call24, ptr %l, align 4, !dbg !5464
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !5465
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 4 %l, i64 4, i1 false), !dbg !5466
  br label %sw.epilog, !dbg !5467

sw.bb25:                                          ; preds = %do.end13
  %19 = load ptr, ptr %device, align 8, !dbg !5468
  %20 = load i32, ptr %offset.addr, align 4, !dbg !5468
  %idx.ext26 = zext i32 %20 to i64, !dbg !5468
  %add.ptr27 = getelementptr i8, ptr %19, i64 %idx.ext26, !dbg !5468
  %call28 = call i32 @ioread32(ptr noundef %add.ptr27) #12, !dbg !5468
  store i32 %call28, ptr %l, align 4, !dbg !5469
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !5470
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 4 %l, i64 4, i1 false), !dbg !5471
  %22 = load ptr, ptr %device, align 8, !dbg !5472
  %23 = load i32, ptr %offset.addr, align 4, !dbg !5472
  %idx.ext29 = zext i32 %23 to i64, !dbg !5472
  %add.ptr30 = getelementptr i8, ptr %22, i64 %idx.ext29, !dbg !5472
  %add.ptr31 = getelementptr i8, ptr %add.ptr30, i64 4, !dbg !5472
  %call32 = call i32 @ioread32(ptr noundef %add.ptr31) #12, !dbg !5472
  store i32 %call32, ptr %l, align 4, !dbg !5473
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !5474
  %add.ptr33 = getelementptr i8, ptr %24, i64 4, !dbg !5475
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr33, ptr align 4 %l, i64 4, i1 false), !dbg !5476
  br label %sw.epilog, !dbg !5477

sw.default:                                       ; preds = %do.end13
  br label %do.body34, !dbg !5478

do.body34:                                        ; preds = %sw.default
  br label %do.body35, !dbg !5479

do.body35:                                        ; preds = %do.body34
  br label %do.cond36, !dbg !5481

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5481

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !5479

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 98, i32 0, i64 12) #11, !dbg !5483, !srcloc !5485
  br label %do.cond39, !dbg !5483

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5483

do.end40:                                         ; preds = %do.cond39
  unreachable, !dbg !5479

do.cond41:                                        ; No predecessors!
  br label %do.end42, !dbg !5479

do.end42:                                         ; preds = %do.cond41
  br label %sw.epilog, !dbg !5486

sw.epilog:                                        ; preds = %do.end42, %sw.bb25, %sw.bb21, %sw.bb16, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #11, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 2, ptr %w) #11, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #11, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #11, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5487
  ret void, !dbg !5487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_set(ptr noundef %vdev, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !5488 {
entry:
  %vdev.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %vp_dev = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  %device = alloca ptr, align 8
  %b = alloca i8, align 1
  %w = alloca i16, align 2
  %l = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5490, metadata !DIExpression()), !dbg !5500
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5491, metadata !DIExpression()), !dbg !5501
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5492, metadata !DIExpression()), !dbg !5502
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5493, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5494, metadata !DIExpression()), !dbg !5505
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5506
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5507
  store ptr %call, ptr %vp_dev, align 8, !dbg !5505
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5508
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5495, metadata !DIExpression()), !dbg !5509
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5510
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 2, !dbg !5511
  store ptr %2, ptr %mdev, align 8, !dbg !5509
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #11, !dbg !5512
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5496, metadata !DIExpression()), !dbg !5513
  %3 = load ptr, ptr %mdev, align 8, !dbg !5514
  %device1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %3, i32 0, i32 2, !dbg !5515
  %4 = load ptr, ptr %device1, align 8, !dbg !5515
  store ptr %4, ptr %device, align 8, !dbg !5513
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #11, !dbg !5516
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5497, metadata !DIExpression()), !dbg !5517
  call void @llvm.lifetime.start.p0(i64 2, ptr %w) #11, !dbg !5518
  call void @llvm.dbg.declare(metadata ptr %w, metadata !5498, metadata !DIExpression()), !dbg !5519
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #11, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %l, metadata !5499, metadata !DIExpression()), !dbg !5521
  br label %do.body, !dbg !5522

do.body:                                          ; preds = %entry
  %5 = load i32, ptr %offset.addr, align 4, !dbg !5523
  %6 = load i32, ptr %len.addr, align 4, !dbg !5523
  %add = add i32 %5, %6, !dbg !5523
  %conv = zext i32 %add to i64, !dbg !5523
  %7 = load ptr, ptr %mdev, align 8, !dbg !5523
  %device_len = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %7, i32 0, i32 7, !dbg !5523
  %8 = load i64, ptr %device_len, align 8, !dbg !5523
  %cmp = icmp ugt i64 %conv, %8, !dbg !5523
  %lnot = xor i1 %cmp, true, !dbg !5523
  %lnot3 = xor i1 %lnot, true, !dbg !5523
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5523
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5523
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !5523
  %tobool = icmp ne i64 %expval, 0, !dbg !5523
  br i1 %tobool, label %if.then, label %if.end, !dbg !5526

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5523

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5527

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !5529

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5529

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5527

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 114, i32 0, i64 12) #11, !dbg !5531, !srcloc !5533
  br label %do.cond8, !dbg !5531

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5531

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !5527

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !5527

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5527

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !5526

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !5526

do.end13:                                         ; preds = %do.cond12
  %9 = load i32, ptr %len.addr, align 4, !dbg !5534
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 4, label %sw.bb17
    i32 8, label %sw.bb20
  ], !dbg !5535

sw.bb:                                            ; preds = %do.end13
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !5536
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b, ptr align 1 %10, i64 1, i1 false), !dbg !5538
  %11 = load i8, ptr %b, align 1, !dbg !5539
  %12 = load ptr, ptr %device, align 8, !dbg !5540
  %13 = load i32, ptr %offset.addr, align 4, !dbg !5541
  %idx.ext = zext i32 %13 to i64, !dbg !5542
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !5542
  call void @iowrite8(i8 noundef zeroext %11, ptr noundef %add.ptr) #12, !dbg !5543
  br label %sw.epilog, !dbg !5544

sw.bb14:                                          ; preds = %do.end13
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !5545
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %w, ptr align 1 %14, i64 2, i1 false), !dbg !5546
  %15 = load i16, ptr %w, align 2, !dbg !5547
  %16 = load ptr, ptr %device, align 8, !dbg !5548
  %17 = load i32, ptr %offset.addr, align 4, !dbg !5549
  %idx.ext15 = zext i32 %17 to i64, !dbg !5550
  %add.ptr16 = getelementptr i8, ptr %16, i64 %idx.ext15, !dbg !5550
  call void @iowrite16(i16 noundef zeroext %15, ptr noundef %add.ptr16) #12, !dbg !5551
  br label %sw.epilog, !dbg !5552

sw.bb17:                                          ; preds = %do.end13
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !5553
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %l, ptr align 1 %18, i64 4, i1 false), !dbg !5554
  %19 = load i32, ptr %l, align 4, !dbg !5555
  %20 = load ptr, ptr %device, align 8, !dbg !5556
  %21 = load i32, ptr %offset.addr, align 4, !dbg !5557
  %idx.ext18 = zext i32 %21 to i64, !dbg !5558
  %add.ptr19 = getelementptr i8, ptr %20, i64 %idx.ext18, !dbg !5558
  call void @iowrite32(i32 noundef %19, ptr noundef %add.ptr19) #12, !dbg !5559
  br label %sw.epilog, !dbg !5560

sw.bb20:                                          ; preds = %do.end13
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !5561
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %l, ptr align 1 %22, i64 4, i1 false), !dbg !5562
  %23 = load i32, ptr %l, align 4, !dbg !5563
  %24 = load ptr, ptr %device, align 8, !dbg !5564
  %25 = load i32, ptr %offset.addr, align 4, !dbg !5565
  %idx.ext21 = zext i32 %25 to i64, !dbg !5566
  %add.ptr22 = getelementptr i8, ptr %24, i64 %idx.ext21, !dbg !5566
  call void @iowrite32(i32 noundef %23, ptr noundef %add.ptr22) #12, !dbg !5567
  %26 = load ptr, ptr %buf.addr, align 8, !dbg !5568
  %add.ptr23 = getelementptr i8, ptr %26, i64 4, !dbg !5569
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %l, ptr align 1 %add.ptr23, i64 4, i1 false), !dbg !5570
  %27 = load i32, ptr %l, align 4, !dbg !5571
  %28 = load ptr, ptr %device, align 8, !dbg !5572
  %29 = load i32, ptr %offset.addr, align 4, !dbg !5573
  %idx.ext24 = zext i32 %29 to i64, !dbg !5574
  %add.ptr25 = getelementptr i8, ptr %28, i64 %idx.ext24, !dbg !5574
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i64 4, !dbg !5575
  call void @iowrite32(i32 noundef %27, ptr noundef %add.ptr26) #12, !dbg !5576
  br label %sw.epilog, !dbg !5577

sw.default:                                       ; preds = %do.end13
  br label %do.body27, !dbg !5578

do.body27:                                        ; preds = %sw.default
  br label %do.body28, !dbg !5579

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !5581

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5581

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !5579

do.body31:                                        ; preds = %do.end30
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 136, i32 0, i64 12) #11, !dbg !5583, !srcloc !5585
  br label %do.cond32, !dbg !5583

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5583

do.end33:                                         ; preds = %do.cond32
  unreachable, !dbg !5579

do.cond34:                                        ; No predecessors!
  br label %do.end35, !dbg !5579

do.end35:                                         ; preds = %do.cond34
  br label %sw.epilog, !dbg !5586

sw.epilog:                                        ; preds = %do.end35, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #11, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 2, ptr %w) #11, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #11, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #11, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5587
  ret void, !dbg !5587
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_generation(ptr noundef %vdev) #0 align 16 !dbg !5588 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5590, metadata !DIExpression()), !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5591, metadata !DIExpression()), !dbg !5594
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5595
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5596
  store ptr %call, ptr %vp_dev, align 8, !dbg !5594
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5597
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 2, !dbg !5598
  %call1 = call i32 @vp_modern_generation(ptr noundef %2) #12, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5600
  ret i32 %call1, !dbg !5601
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @vp_get_status(ptr noundef %vdev) #0 align 16 !dbg !5602 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5604, metadata !DIExpression()), !dbg !5606
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5605, metadata !DIExpression()), !dbg !5608
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5609
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5610
  store ptr %call, ptr %vp_dev, align 8, !dbg !5608
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5611
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 2, !dbg !5612
  %call1 = call zeroext i8 @vp_modern_get_status(ptr noundef %2) #12, !dbg !5613
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5614
  ret i8 %call1, !dbg !5615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_set_status(ptr noundef %vdev, i8 noundef zeroext %status) #0 align 16 !dbg !5616 {
entry:
  %vdev.addr = alloca ptr, align 8
  %status.addr = alloca i8, align 1
  %vp_dev = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5618, metadata !DIExpression()), !dbg !5621
  store i8 %status, ptr %status.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5619, metadata !DIExpression()), !dbg !5622
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5623
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5620, metadata !DIExpression()), !dbg !5624
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5625
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5626
  store ptr %call, ptr %vp_dev, align 8, !dbg !5624
  br label %do.body, !dbg !5627

do.body:                                          ; preds = %entry
  %1 = load i8, ptr %status.addr, align 1, !dbg !5628
  %conv = zext i8 %1 to i32, !dbg !5628
  %cmp = icmp eq i32 %conv, 0, !dbg !5628
  %lnot = xor i1 %cmp, true, !dbg !5628
  %lnot2 = xor i1 %lnot, true, !dbg !5628
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5628
  %conv3 = sext i32 %lnot.ext to i64, !dbg !5628
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !5628
  %tobool = icmp ne i64 %expval, 0, !dbg !5628
  br i1 %tobool, label %if.then, label %if.end, !dbg !5631

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5628

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5632

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5634

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5634

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5632

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 160, i32 0, i64 12) #11, !dbg !5636, !srcloc !5638
  br label %do.cond7, !dbg !5636

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5636

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5632

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5632

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5632

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5631

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5631

do.end12:                                         ; preds = %do.cond11
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !5639
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 2, !dbg !5640
  %4 = load i8, ptr %status.addr, align 1, !dbg !5641
  call void @vp_modern_set_status(ptr noundef %3, i8 noundef zeroext %4) #12, !dbg !5642
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5643
  ret void, !dbg !5643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_reset(ptr noundef %vdev) #0 align 16 !dbg !5644 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5646, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5647, metadata !DIExpression()), !dbg !5651
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5652
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5653
  store ptr %call, ptr %vp_dev, align 8, !dbg !5651
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5654
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5648, metadata !DIExpression()), !dbg !5655
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5656
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 2, !dbg !5657
  store ptr %2, ptr %mdev, align 8, !dbg !5655
  %3 = load ptr, ptr %mdev, align 8, !dbg !5658
  call void @vp_modern_set_status(ptr noundef %3, i8 noundef zeroext 0) #12, !dbg !5659
  br label %while.cond, !dbg !5660

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %mdev, align 8, !dbg !5661
  %call1 = call zeroext i8 @vp_modern_get_status(ptr noundef %4) #12, !dbg !5662
  %tobool = icmp ne i8 %call1, 0, !dbg !5660
  br i1 %tobool, label %while.body, label %while.end, !dbg !5660

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 1) #12, !dbg !5663
  br label %while.cond, !dbg !5660, !llvm.loop !5664

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %vdev.addr, align 8, !dbg !5668
  call void @vp_synchronize_vectors(ptr noundef %5) #12, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5670
  ret void, !dbg !5670
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_modern_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, ptr noundef %ctx, ptr noundef %desc) #0 align 16 !dbg !5671 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %nvqs.addr = alloca i32, align 4
  %vqs.addr = alloca ptr, align 8
  %callbacks.addr = alloca ptr, align 8
  %names.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %vq = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5673, metadata !DIExpression()), !dbg !5689
  store i32 %nvqs, ptr %nvqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvqs.addr, metadata !5674, metadata !DIExpression()), !dbg !5690
  store ptr %vqs, ptr %vqs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vqs.addr, metadata !5675, metadata !DIExpression()), !dbg !5691
  store ptr %callbacks, ptr %callbacks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callbacks.addr, metadata !5676, metadata !DIExpression()), !dbg !5692
  store ptr %names, ptr %names.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %names.addr, metadata !5677, metadata !DIExpression()), !dbg !5693
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5678, metadata !DIExpression()), !dbg !5694
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5679, metadata !DIExpression()), !dbg !5695
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5696
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5680, metadata !DIExpression()), !dbg !5697
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5698
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5699
  store ptr %call, ptr %vp_dev, align 8, !dbg !5697
  call void @llvm.lifetime.start.p0(i64 8, ptr %vq) #11, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %vq, metadata !5681, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5682, metadata !DIExpression()), !dbg !5703
  %1 = load ptr, ptr %vdev.addr, align 8, !dbg !5704
  %2 = load i32, ptr %nvqs.addr, align 4, !dbg !5705
  %3 = load ptr, ptr %vqs.addr, align 8, !dbg !5706
  %4 = load ptr, ptr %callbacks.addr, align 8, !dbg !5707
  %5 = load ptr, ptr %names.addr, align 8, !dbg !5708
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !5709
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !5710
  %call1 = call i32 @vp_find_vqs(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12, !dbg !5711
  store i32 %call1, ptr %rc, align 4, !dbg !5703
  %8 = load i32, ptr %rc, align 4, !dbg !5712
  %tobool = icmp ne i32 %8, 0, !dbg !5712
  br i1 %tobool, label %if.then, label %if.end, !dbg !5714

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %rc, align 4, !dbg !5715
  store i32 %9, ptr %retval, align 4, !dbg !5716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5716

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5683, metadata !DIExpression()), !dbg !5717
  %10 = load ptr, ptr %vdev.addr, align 8, !dbg !5717
  %vqs2 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 10, !dbg !5717
  %next = getelementptr inbounds %struct.list_head, ptr %vqs2, i32 0, i32 0, !dbg !5717
  %11 = load ptr, ptr %next, align 8, !dbg !5717
  store ptr %11, ptr %__mptr, align 8, !dbg !5717
  %12 = load ptr, ptr %__mptr, align 8, !dbg !5717
  %add.ptr = getelementptr i8, ptr %12, i64 0, !dbg !5717
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5717
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5718
  %13 = load ptr, ptr %tmp, align 8, !dbg !5717
  store ptr %13, ptr %vq, align 8, !dbg !5718
  br label %for.cond, !dbg !5718

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load ptr, ptr %vq, align 8, !dbg !5719
  %list = getelementptr inbounds %struct.virtqueue, ptr %14, i32 0, i32 0, !dbg !5719
  %15 = load ptr, ptr %vdev.addr, align 8, !dbg !5719
  %vqs3 = getelementptr inbounds %struct.virtio_device, ptr %15, i32 0, i32 10, !dbg !5719
  %cmp = icmp eq ptr %list, %vqs3, !dbg !5719
  %lnot = xor i1 %cmp, true, !dbg !5719
  br i1 %lnot, label %for.body, label %for.end, !dbg !5718

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %vp_dev, align 8, !dbg !5720
  %17 = getelementptr inbounds %struct.virtio_pci_device, ptr %16, i32 0, i32 2, !dbg !5721
  %18 = load ptr, ptr %vq, align 8, !dbg !5722
  %index = getelementptr inbounds %struct.virtqueue, ptr %18, i32 0, i32 4, !dbg !5723
  %19 = load i32, ptr %index, align 8, !dbg !5723
  %conv = trunc i32 %19 to i16, !dbg !5722
  call void @vp_modern_set_queue_enable(ptr noundef %17, i16 noundef zeroext %conv, i1 noundef zeroext true) #12, !dbg !5724
  br label %for.inc, !dbg !5724

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #11, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5686, metadata !DIExpression()), !dbg !5725
  %20 = load ptr, ptr %vq, align 8, !dbg !5725
  %list5 = getelementptr inbounds %struct.virtqueue, ptr %20, i32 0, i32 0, !dbg !5725
  %next6 = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !5725
  %21 = load ptr, ptr %next6, align 8, !dbg !5725
  store ptr %21, ptr %__mptr4, align 8, !dbg !5725
  %22 = load ptr, ptr %__mptr4, align 8, !dbg !5725
  %add.ptr8 = getelementptr i8, ptr %22, i64 0, !dbg !5725
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #11, !dbg !5719
  %23 = load ptr, ptr %tmp7, align 8, !dbg !5725
  store ptr %23, ptr %vq, align 8, !dbg !5719
  br label %for.cond, !dbg !5719, !llvm.loop !5726

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5728

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 8, ptr %vq) #11, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5729
  %24 = load i32, ptr %retval, align 4, !dbg !5729
  ret i32 %24, !dbg !5729
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vp_del_vqs(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5730 dso_local void @vp_synchronize_vectors(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vp_get_features(ptr noundef %vdev) #0 align 16 !dbg !5731 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5733, metadata !DIExpression()), !dbg !5735
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5734, metadata !DIExpression()), !dbg !5737
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5738
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5739
  store ptr %call, ptr %vp_dev, align 8, !dbg !5737
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5740
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 2, !dbg !5741
  %call1 = call i64 @vp_modern_get_features(ptr noundef %2) #12, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5743
  ret i64 %call1, !dbg !5744
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_finalize_features(ptr noundef %vdev) #0 align 16 !dbg !5745 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %features = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5747, metadata !DIExpression()), !dbg !5750
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5751
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5748, metadata !DIExpression()), !dbg !5752
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5753
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5754
  store ptr %call, ptr %vp_dev, align 8, !dbg !5752
  call void @llvm.lifetime.start.p0(i64 8, ptr %features) #11, !dbg !5755
  call void @llvm.dbg.declare(metadata ptr %features, metadata !5749, metadata !DIExpression()), !dbg !5756
  %1 = load ptr, ptr %vdev.addr, align 8, !dbg !5757
  %features1 = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 11, !dbg !5758
  %2 = load i64, ptr %features1, align 8, !dbg !5758
  store i64 %2, ptr %features, align 8, !dbg !5756
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !5759
  call void @vring_transport_features(ptr noundef %3) #12, !dbg !5760
  %4 = load ptr, ptr %vdev.addr, align 8, !dbg !5761
  %5 = load i64, ptr %features, align 8, !dbg !5762
  call void @vp_transport_features(ptr noundef %4, i64 noundef %5) #12, !dbg !5763
  %6 = load ptr, ptr %vdev.addr, align 8, !dbg !5764
  %call2 = call zeroext i1 @__virtio_test_bit(ptr noundef %6, i32 noundef 32) #12, !dbg !5766
  br i1 %call2, label %if.end, label %if.then, !dbg !5767

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5768

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5771

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5771

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %vdev.addr, align 8, !dbg !5768
  %dev = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 6, !dbg !5768
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.1) #13, !dbg !5768
  store i32 -22, ptr %retval, align 4, !dbg !5773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5773

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %vp_dev, align 8, !dbg !5774
  %9 = getelementptr inbounds %struct.virtio_pci_device, ptr %8, i32 0, i32 2, !dbg !5775
  %10 = load ptr, ptr %vdev.addr, align 8, !dbg !5776
  %features3 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 11, !dbg !5777
  %11 = load i64, ptr %features3, align 8, !dbg !5777
  call void @vp_modern_set_features(ptr noundef %9, i64 noundef %11) #12, !dbg !5778
  store i32 0, ptr %retval, align 4, !dbg !5779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5779

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %features) #11, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5780
  %12 = load i32, ptr %retval, align 4, !dbg !5780
  ret i32 %12, !dbg !5780
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vp_bus_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vp_set_vq_affinity(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vp_get_vq_affinity(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vp_get_shm_region(ptr noundef %vdev, ptr noundef %region, i8 noundef zeroext %id) #0 align 16 !dbg !5781 {
entry:
  %retval = alloca i1, align 1
  %vdev.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %id.addr = alloca i8, align 1
  %vp_dev = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %bar = alloca i8, align 1
  %offset = alloca i64, align 8
  %len = alloca i64, align 8
  %phys_addr = alloca i64, align 8
  %bar_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5783, metadata !DIExpression()), !dbg !5793
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !5784, metadata !DIExpression()), !dbg !5794
  store i8 %id, ptr %id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5785, metadata !DIExpression()), !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5786, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5798
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !5799
  store ptr %call, ptr %vp_dev, align 8, !dbg !5797
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #11, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !5787, metadata !DIExpression()), !dbg !5801
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !5802
  %pci_dev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 1, !dbg !5803
  %2 = load ptr, ptr %pci_dev1, align 8, !dbg !5803
  store ptr %2, ptr %pci_dev, align 8, !dbg !5801
  call void @llvm.lifetime.start.p0(i64 1, ptr %bar) #11, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %bar, metadata !5788, metadata !DIExpression()), !dbg !5805
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !5806
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5789, metadata !DIExpression()), !dbg !5807
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #11, !dbg !5806
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5790, metadata !DIExpression()), !dbg !5808
  call void @llvm.lifetime.start.p0(i64 8, ptr %phys_addr) #11, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %phys_addr, metadata !5791, metadata !DIExpression()), !dbg !5810
  call void @llvm.lifetime.start.p0(i64 8, ptr %bar_len) #11, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %bar_len, metadata !5792, metadata !DIExpression()), !dbg !5812
  %3 = load ptr, ptr %pci_dev, align 8, !dbg !5813
  %4 = load i8, ptr %id.addr, align 1, !dbg !5815
  %call2 = call i32 @virtio_pci_find_shm_cap(ptr noundef %3, i8 noundef zeroext %4, ptr noundef %bar, ptr noundef %offset, ptr noundef %len) #12, !dbg !5816
  %tobool = icmp ne i32 %call2, 0, !dbg !5816
  br i1 %tobool, label %if.end, label %if.then, !dbg !5817

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5818

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pci_dev, align 8, !dbg !5819
  %resource = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 40, !dbg !5819
  %6 = load i8, ptr %bar, align 1, !dbg !5819
  %idxprom = zext i8 %6 to i64, !dbg !5819
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5819
  %start = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 0, !dbg !5819
  %7 = load i64, ptr %start, align 8, !dbg !5819
  store i64 %7, ptr %phys_addr, align 8, !dbg !5820
  %8 = load ptr, ptr %pci_dev, align 8, !dbg !5821
  %resource3 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 40, !dbg !5821
  %9 = load i8, ptr %bar, align 1, !dbg !5821
  %idxprom4 = zext i8 %9 to i64, !dbg !5821
  %arrayidx5 = getelementptr [11 x %struct.resource], ptr %resource3, i64 0, i64 %idxprom4, !dbg !5821
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx5, i32 0, i32 1, !dbg !5821
  %10 = load i64, ptr %end, align 8, !dbg !5821
  %tobool6 = icmp ne i64 %10, 0, !dbg !5821
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !5821

cond.true:                                        ; preds = %if.end
  %11 = load ptr, ptr %pci_dev, align 8, !dbg !5821
  %resource7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 40, !dbg !5821
  %12 = load i8, ptr %bar, align 1, !dbg !5821
  %idxprom8 = zext i8 %12 to i64, !dbg !5821
  %arrayidx9 = getelementptr [11 x %struct.resource], ptr %resource7, i64 0, i64 %idxprom8, !dbg !5821
  %call10 = call i64 @resource_size(ptr noundef %arrayidx9) #12, !dbg !5821
  br label %cond.end, !dbg !5821

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5821

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ 0, %cond.false ], !dbg !5821
  store i64 %cond, ptr %bar_len, align 8, !dbg !5822
  %13 = load i64, ptr %offset, align 8, !dbg !5823
  %14 = load i64, ptr %len, align 8, !dbg !5825
  %add = add i64 %13, %14, !dbg !5826
  %15 = load i64, ptr %offset, align 8, !dbg !5827
  %cmp = icmp ult i64 %add, %15, !dbg !5828
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5829

if.then11:                                        ; preds = %cond.end
  br label %do.body, !dbg !5830

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !5833

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5833

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %pci_dev, align 8, !dbg !5830
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 37, !dbg !5830
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.3, ptr noundef @__func__.vp_get_shm_region) #13, !dbg !5830
  store i1 false, ptr %retval, align 1, !dbg !5835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5835

if.end12:                                         ; preds = %cond.end
  %17 = load i64, ptr %offset, align 8, !dbg !5836
  %18 = load i64, ptr %len, align 8, !dbg !5838
  %add13 = add i64 %17, %18, !dbg !5839
  %19 = load i64, ptr %bar_len, align 8, !dbg !5840
  %cmp14 = icmp ugt i64 %add13, %19, !dbg !5841
  br i1 %cmp14, label %if.then15, label %if.end20, !dbg !5842

if.then15:                                        ; preds = %if.end12
  br label %do.body16, !dbg !5843

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !5846

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5846

do.end18:                                         ; preds = %do.cond17
  %20 = load ptr, ptr %pci_dev, align 8, !dbg !5843
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 37, !dbg !5843
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef @.str.4, ptr noundef @__func__.vp_get_shm_region) #13, !dbg !5843
  store i1 false, ptr %retval, align 1, !dbg !5848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5848

if.end20:                                         ; preds = %if.end12
  %21 = load i64, ptr %len, align 8, !dbg !5849
  %22 = load ptr, ptr %region.addr, align 8, !dbg !5850
  %len21 = getelementptr inbounds %struct.virtio_shm_region, ptr %22, i32 0, i32 1, !dbg !5851
  store i64 %21, ptr %len21, align 8, !dbg !5852
  %23 = load i64, ptr %phys_addr, align 8, !dbg !5853
  %24 = load i64, ptr %offset, align 8, !dbg !5854
  %add22 = add i64 %23, %24, !dbg !5855
  %25 = load ptr, ptr %region.addr, align 8, !dbg !5856
  %addr = getelementptr inbounds %struct.virtio_shm_region, ptr %25, i32 0, i32 0, !dbg !5857
  store i64 %add22, ptr %addr, align 8, !dbg !5858
  store i1 true, ptr %retval, align 1, !dbg !5859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5859

cleanup:                                          ; preds = %if.end20, %do.end18, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bar_len) #11, !dbg !5860
  call void @llvm.lifetime.end.p0(i64 8, ptr %phys_addr) #11, !dbg !5860
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #11, !dbg !5860
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !5860
  call void @llvm.lifetime.end.p0(i64 1, ptr %bar) #11, !dbg !5860
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #11, !dbg !5860
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5860
  %26 = load i1, ptr %retval, align 1, !dbg !5860
  ret i1 %26, !dbg !5860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_modern_disable_vq_and_reset(ptr noundef %vq) #0 align 16 !dbg !5861 {
entry:
  %retval = alloca i32, align 4
  %vq.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  %info = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !5863, metadata !DIExpression()), !dbg !5873
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5864, metadata !DIExpression()), !dbg !5875
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !5876
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3, !dbg !5877
  %1 = load ptr, ptr %vdev, align 8, !dbg !5877
  %call = call ptr @to_vp_device(ptr noundef %1) #12, !dbg !5878
  store ptr %call, ptr %vp_dev, align 8, !dbg !5875
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5865, metadata !DIExpression()), !dbg !5880
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !5881
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 2, !dbg !5882
  store ptr %3, ptr %mdev, align 8, !dbg !5880
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5866, metadata !DIExpression()), !dbg !5884
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5867, metadata !DIExpression()), !dbg !5886
  %4 = load ptr, ptr %vq.addr, align 8, !dbg !5887
  %vdev1 = getelementptr inbounds %struct.virtqueue, ptr %4, i32 0, i32 3, !dbg !5889
  %5 = load ptr, ptr %vdev1, align 8, !dbg !5889
  %call2 = call zeroext i1 @virtio_has_feature(ptr noundef %5, i32 noundef 40) #12, !dbg !5890
  br i1 %call2, label %if.end, label %if.then, !dbg !5891

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !5892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5892

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %mdev, align 8, !dbg !5893
  %7 = load ptr, ptr %vq.addr, align 8, !dbg !5894
  %index = getelementptr inbounds %struct.virtqueue, ptr %7, i32 0, i32 4, !dbg !5895
  %8 = load i32, ptr %index, align 8, !dbg !5895
  %conv = trunc i32 %8 to i16, !dbg !5894
  call void @vp_modern_set_queue_reset(ptr noundef %6, i16 noundef zeroext %conv) #12, !dbg !5896
  %9 = load ptr, ptr %vp_dev, align 8, !dbg !5897
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %9, i32 0, i32 7, !dbg !5898
  %10 = load ptr, ptr %vqs, align 8, !dbg !5898
  %11 = load ptr, ptr %vq.addr, align 8, !dbg !5899
  %index3 = getelementptr inbounds %struct.virtqueue, ptr %11, i32 0, i32 4, !dbg !5900
  %12 = load i32, ptr %index3, align 8, !dbg !5900
  %idxprom = zext i32 %12 to i64, !dbg !5897
  %arrayidx = getelementptr ptr, ptr %10, i64 %idxprom, !dbg !5897
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !5897
  store ptr %13, ptr %info, align 8, !dbg !5901
  br label %do.body, !dbg !5902

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5903

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5868, metadata !DIExpression()), !dbg !5904
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5872, metadata !DIExpression()), !dbg !5904
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5904
  %conv5 = zext i1 %cmp to i32, !dbg !5904
  store i32 1, ptr %tmp, align 4, !dbg !5904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5905
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5905
  %14 = load i32, ptr %tmp, align 4, !dbg !5904
  %15 = load ptr, ptr %vp_dev, align 8, !dbg !5905
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %15, i32 0, i32 5, !dbg !5905
  %call6 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !5905
  %call7 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call6) #12, !dbg !5905
  store i64 %call7, ptr %flags, align 8, !dbg !5905
  br label %do.cond, !dbg !5905

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5905

do.end:                                           ; preds = %do.cond
  br label %do.cond8, !dbg !5903

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !5903

do.end9:                                          ; preds = %do.cond8
  %16 = load ptr, ptr %info, align 8, !dbg !5906
  %node = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %16, i32 0, i32 1, !dbg !5907
  call void @list_del(ptr noundef %node) #12, !dbg !5908
  %17 = load ptr, ptr %vp_dev, align 8, !dbg !5909
  %lock10 = getelementptr inbounds %struct.virtio_pci_device, ptr %17, i32 0, i32 5, !dbg !5910
  %18 = load i64, ptr %flags, align 8, !dbg !5911
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %18) #12, !dbg !5912
  %19 = load ptr, ptr %info, align 8, !dbg !5913
  %node11 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %19, i32 0, i32 1, !dbg !5914
  call void @INIT_LIST_HEAD(ptr noundef %node11) #12, !dbg !5915
  %20 = load ptr, ptr %vp_dev, align 8, !dbg !5916
  %per_vq_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %20, i32 0, i32 14, !dbg !5918
  %21 = load i8, ptr %per_vq_vectors, align 8, !dbg !5918, !range !5299, !noundef !891
  %tobool = trunc i8 %21 to i1, !dbg !5918
  br i1 %tobool, label %land.lhs.true, label %if.end18, !dbg !5919

land.lhs.true:                                    ; preds = %do.end9
  %22 = load ptr, ptr %info, align 8, !dbg !5920
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %22, i32 0, i32 2, !dbg !5921
  %23 = load i32, ptr %msix_vector, align 8, !dbg !5921
  %cmp13 = icmp ne i32 %23, 65535, !dbg !5922
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !5923

if.then15:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %vp_dev, align 8, !dbg !5924
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %24, i32 0, i32 1, !dbg !5925
  %25 = load ptr, ptr %pci_dev, align 8, !dbg !5925
  %26 = load ptr, ptr %info, align 8, !dbg !5926
  %msix_vector16 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %26, i32 0, i32 2, !dbg !5927
  %27 = load i32, ptr %msix_vector16, align 8, !dbg !5927
  %call17 = call i32 @pci_irq_vector(ptr noundef %25, i32 noundef %27) #12, !dbg !5928
  call void @synchronize_irq(i32 noundef %call17) #12, !dbg !5929
  br label %if.end18, !dbg !5929

if.end18:                                         ; preds = %if.then15, %land.lhs.true, %do.end9
  %28 = load ptr, ptr %vq.addr, align 8, !dbg !5930
  %reset = getelementptr inbounds %struct.virtqueue, ptr %28, i32 0, i32 7, !dbg !5931
  store i8 1, ptr %reset, align 4, !dbg !5932
  store i32 0, ptr %retval, align 4, !dbg !5933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5933

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5934
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !5934
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !5934
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !5934
  %29 = load i32, ptr %retval, align 4, !dbg !5934
  ret i32 %29, !dbg !5934
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_modern_enable_vq_after_reset(ptr noundef %vq) #0 align 16 !dbg !5935 {
entry:
  %retval = alloca i32, align 4
  %vq.addr = alloca ptr, align 8
  %vp_dev = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  %info = alloca ptr, align 8
  %flags = alloca i64, align 8
  %index = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !5937, metadata !DIExpression()), !dbg !5951
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !5952
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !5938, metadata !DIExpression()), !dbg !5953
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !5954
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3, !dbg !5955
  %1 = load ptr, ptr %vdev, align 8, !dbg !5955
  %call = call ptr @to_vp_device(ptr noundef %1) #12, !dbg !5956
  store ptr %call, ptr %vp_dev, align 8, !dbg !5953
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !5957
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !5939, metadata !DIExpression()), !dbg !5958
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !5959
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 2, !dbg !5960
  store ptr %3, ptr %mdev, align 8, !dbg !5958
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5940, metadata !DIExpression()), !dbg !5962
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5941, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #11, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5942, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5943, metadata !DIExpression()), !dbg !5967
  %4 = load ptr, ptr %vq.addr, align 8, !dbg !5968
  %reset = getelementptr inbounds %struct.virtqueue, ptr %4, i32 0, i32 7, !dbg !5970
  %5 = load i8, ptr %reset, align 4, !dbg !5970, !range !5299, !noundef !891
  %tobool = trunc i8 %5 to i1, !dbg !5970
  br i1 %tobool, label %if.end, label %if.then, !dbg !5971

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !5972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5972

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %vq.addr, align 8, !dbg !5973
  %index1 = getelementptr inbounds %struct.virtqueue, ptr %6, i32 0, i32 4, !dbg !5974
  %7 = load i32, ptr %index1, align 8, !dbg !5974
  %conv = zext i32 %7 to i64, !dbg !5973
  store i64 %conv, ptr %index, align 8, !dbg !5975
  %8 = load ptr, ptr %vp_dev, align 8, !dbg !5976
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %8, i32 0, i32 7, !dbg !5977
  %9 = load ptr, ptr %vqs, align 8, !dbg !5977
  %10 = load i64, ptr %index, align 8, !dbg !5978
  %arrayidx = getelementptr ptr, ptr %9, i64 %10, !dbg !5976
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !5976
  store ptr %11, ptr %info, align 8, !dbg !5979
  %12 = load ptr, ptr %mdev, align 8, !dbg !5980
  %13 = load i64, ptr %index, align 8, !dbg !5982
  %conv2 = trunc i64 %13 to i16, !dbg !5982
  %call3 = call i32 @vp_modern_get_queue_reset(ptr noundef %12, i16 noundef zeroext %conv2) #12, !dbg !5983
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5983
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5984

if.then5:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !5985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5985

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %mdev, align 8, !dbg !5986
  %15 = load i64, ptr %index, align 8, !dbg !5988
  %conv7 = trunc i64 %15 to i16, !dbg !5988
  %call8 = call zeroext i1 @vp_modern_get_queue_enable(ptr noundef %14, i16 noundef zeroext %conv7) #12, !dbg !5989
  br i1 %call8, label %if.then9, label %if.end10, !dbg !5990

if.then9:                                         ; preds = %if.end6
  store i32 -16, ptr %retval, align 4, !dbg !5991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5991

if.end10:                                         ; preds = %if.end6
  %16 = load ptr, ptr %vq.addr, align 8, !dbg !5992
  %17 = load ptr, ptr %info, align 8, !dbg !5993
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %17, i32 0, i32 2, !dbg !5994
  %18 = load i32, ptr %msix_vector, align 8, !dbg !5994
  %conv11 = trunc i32 %18 to i16, !dbg !5993
  %call12 = call i32 @vp_active_vq(ptr noundef %16, i16 noundef zeroext %conv11) #12, !dbg !5995
  store i32 %call12, ptr %err, align 4, !dbg !5996
  %19 = load i32, ptr %err, align 4, !dbg !5997
  %tobool13 = icmp ne i32 %19, 0, !dbg !5997
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5999

if.then14:                                        ; preds = %if.end10
  %20 = load i32, ptr %err, align 4, !dbg !6000
  store i32 %20, ptr %retval, align 4, !dbg !6001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6001

if.end15:                                         ; preds = %if.end10
  %21 = load ptr, ptr %vq.addr, align 8, !dbg !6002
  %callback = getelementptr inbounds %struct.virtqueue, ptr %21, i32 0, i32 1, !dbg !6003
  %22 = load ptr, ptr %callback, align 8, !dbg !6003
  %tobool16 = icmp ne ptr %22, null, !dbg !6002
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !6004

if.then17:                                        ; preds = %if.end15
  br label %do.body, !dbg !6005

do.body:                                          ; preds = %if.then17
  br label %do.body18, !dbg !6006

do.body18:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6007
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5944, metadata !DIExpression()), !dbg !6007
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6007
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5950, metadata !DIExpression()), !dbg !6007
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6007
  %conv19 = zext i1 %cmp to i32, !dbg !6007
  store i32 1, ptr %tmp, align 4, !dbg !6007
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6008
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6008
  %23 = load i32, ptr %tmp, align 4, !dbg !6007
  %24 = load ptr, ptr %vp_dev, align 8, !dbg !6008
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %24, i32 0, i32 5, !dbg !6008
  %call20 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !6008
  %call21 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call20) #12, !dbg !6008
  store i64 %call21, ptr %flags, align 8, !dbg !6008
  br label %do.cond, !dbg !6008

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !6008

do.end:                                           ; preds = %do.cond
  br label %do.cond22, !dbg !6006

do.cond22:                                        ; preds = %do.end
  br label %do.end23, !dbg !6006

do.end23:                                         ; preds = %do.cond22
  %25 = load ptr, ptr %info, align 8, !dbg !6009
  %node = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %25, i32 0, i32 1, !dbg !6010
  %26 = load ptr, ptr %vp_dev, align 8, !dbg !6011
  %virtqueues = getelementptr inbounds %struct.virtio_pci_device, ptr %26, i32 0, i32 6, !dbg !6012
  call void @list_add(ptr noundef %node, ptr noundef %virtqueues) #12, !dbg !6013
  %27 = load ptr, ptr %vp_dev, align 8, !dbg !6014
  %lock24 = getelementptr inbounds %struct.virtio_pci_device, ptr %27, i32 0, i32 5, !dbg !6015
  %28 = load i64, ptr %flags, align 8, !dbg !6016
  call void @spin_unlock_irqrestore(ptr noundef %lock24, i64 noundef %28) #12, !dbg !6017
  br label %if.end26, !dbg !6018

if.else:                                          ; preds = %if.end15
  %29 = load ptr, ptr %info, align 8, !dbg !6019
  %node25 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %29, i32 0, i32 1, !dbg !6021
  call void @INIT_LIST_HEAD(ptr noundef %node25) #12, !dbg !6022
  br label %if.end26

if.end26:                                         ; preds = %if.else, %do.end23
  %30 = load ptr, ptr %vp_dev, align 8, !dbg !6023
  %31 = getelementptr inbounds %struct.virtio_pci_device, ptr %30, i32 0, i32 2, !dbg !6024
  %32 = load i64, ptr %index, align 8, !dbg !6025
  %conv27 = trunc i64 %32 to i16, !dbg !6025
  call void @vp_modern_set_queue_enable(ptr noundef %31, i16 noundef zeroext %conv27, i1 noundef zeroext true) #12, !dbg !6026
  %33 = load ptr, ptr %vq.addr, align 8, !dbg !6027
  %reset28 = getelementptr inbounds %struct.virtqueue, ptr %33, i32 0, i32 7, !dbg !6028
  store i8 0, ptr %reset28, align 4, !dbg !6029
  store i32 0, ptr %retval, align 4, !dbg !6030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6030

cleanup:                                          ; preds = %if.end26, %if.then14, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #11, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !6031
  %34 = load i32, ptr %retval, align 4, !dbg !6031
  ret i32 %34, !dbg !6031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_vp_device(ptr noundef %vdev) #0 align 16 !dbg !6032 {
entry:
  %vdev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6036, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6037, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !6040
  store ptr %0, ptr %__mptr, align 8, !dbg !6040
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6040
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6040
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6041
  %2 = load ptr, ptr %tmp, align 8, !dbg !6040
  ret ptr %2, !dbg !6042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6043 dso_local i32 @ioread8(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6047 dso_local i32 @ioread16(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6048 dso_local i32 @ioread32(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6049 dso_local void @iowrite8(i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6052 dso_local void @iowrite16(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6055 dso_local void @iowrite32(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6058 dso_local i32 @vp_modern_generation(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6061 dso_local zeroext i8 @vp_modern_get_status(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6064 dso_local void @vp_modern_set_status(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6067 dso_local void @msleep(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6071 dso_local i32 @vp_find_vqs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6072 dso_local void @vp_modern_set_queue_enable(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6075 dso_local i64 @vp_modern_get_features(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6078 dso_local void @vring_transport_features(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_transport_features(ptr noundef %vdev, i64 noundef %features) #0 align 16 !dbg !6080 {
entry:
  %vdev.addr = alloca ptr, align 8
  %features.addr = alloca i64, align 8
  %vp_dev = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6084, metadata !DIExpression()), !dbg !6088
  store i64 %features, ptr %features.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %features.addr, metadata !6085, metadata !DIExpression()), !dbg !6089
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !6090
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6086, metadata !DIExpression()), !dbg !6091
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !6092
  %call = call ptr @to_vp_device(ptr noundef %0) #12, !dbg !6093
  store ptr %call, ptr %vp_dev, align 8, !dbg !6091
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #11, !dbg !6094
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !6087, metadata !DIExpression()), !dbg !6095
  %1 = load ptr, ptr %vp_dev, align 8, !dbg !6096
  %pci_dev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 1, !dbg !6097
  %2 = load ptr, ptr %pci_dev1, align 8, !dbg !6097
  store ptr %2, ptr %pci_dev, align 8, !dbg !6095
  %3 = load i64, ptr %features.addr, align 8, !dbg !6098
  %and = and i64 %3, 137438953472, !dbg !6100
  %tobool = icmp ne i64 %and, 0, !dbg !6100
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6101

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pci_dev, align 8, !dbg !6102
  %call2 = call zeroext i16 @pci_find_ext_capability(ptr noundef %4, i32 noundef 16) #12, !dbg !6103
  %conv = zext i16 %call2 to i32, !dbg !6103
  %tobool3 = icmp ne i32 %conv, 0, !dbg !6103
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6104

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %vdev.addr, align 8, !dbg !6105
  call void @__virtio_set_bit(ptr noundef %5, i32 noundef 37) #12, !dbg !6106
  br label %if.end, !dbg !6106

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i64, ptr %features.addr, align 8, !dbg !6107
  %and4 = and i64 %6, 1099511627776, !dbg !6109
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6109
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6110

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %vdev.addr, align 8, !dbg !6111
  call void @__virtio_set_bit(ptr noundef %7, i32 noundef 40) #12, !dbg !6112
  br label %if.end7, !dbg !6112

if.end7:                                          ; preds = %if.then6, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #11, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !6113
  ret void, !dbg !6113
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__virtio_test_bit(ptr noundef %vdev, i32 noundef %fbit) #6 align 16 !dbg !6114 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6120, metadata !DIExpression()), !dbg !6122
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !6121, metadata !DIExpression()), !dbg !6123
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !6124
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6126
  br i1 %1, label %if.then, label %if.else, !dbg !6127

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6128

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !6129
  %cmp = icmp uge i32 %2, 64, !dbg !6129
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6132

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_292() #14, !dbg !6129, !srcloc !6133
  unreachable, !dbg !6129

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6132

do.end:                                           ; preds = %if.end
  br label %if.end14, !dbg !6132

if.else:                                          ; preds = %entry
  br label %do.body2, !dbg !6134

do.body2:                                         ; preds = %if.else
  %3 = load i32, ptr %fbit.addr, align 4, !dbg !6135
  %cmp3 = icmp uge i32 %3, 64, !dbg !6135
  %lnot = xor i1 %cmp3, true, !dbg !6135
  %lnot4 = xor i1 %lnot, true, !dbg !6135
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6135
  %conv = sext i32 %lnot.ext to i64, !dbg !6135
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6135
  %tobool = icmp ne i64 %expval, 0, !dbg !6135
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !6138

if.then5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !6135

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !6139

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6141

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6139

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 143, i32 0, i64 12) #11, !dbg !6143, !srcloc !6145
  br label %do.end10, !dbg !6143

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !6139

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !6139

if.end12:                                         ; preds = %do.end11, %do.body2
  br label %do.end13, !dbg !6138

do.end13:                                         ; preds = %if.end12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end
  %4 = load ptr, ptr %vdev.addr, align 8, !dbg !6146
  %features = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11, !dbg !6147
  %5 = load i64, ptr %features, align 8, !dbg !6147
  %6 = load i32, ptr %fbit.addr, align 4, !dbg !6148
  %sh_prom = zext i32 %6 to i64, !dbg !6148
  %shl = shl i64 1, %sh_prom, !dbg !6148
  %and = and i64 %5, %shl, !dbg !6149
  %tobool15 = icmp ne i64 %and, 0, !dbg !6146
  ret i1 %tobool15, !dbg !6150
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6151 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6155 dso_local void @vp_modern_set_features(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6158 dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__virtio_set_bit(ptr noundef %vdev, i32 noundef %fbit) #6 align 16 !dbg !6161 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6165, metadata !DIExpression()), !dbg !6167
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !6166, metadata !DIExpression()), !dbg !6168
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !6169
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6171
  br i1 %1, label %if.then, label %if.else, !dbg !6172

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6173

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !6174
  %cmp = icmp uge i32 %2, 64, !dbg !6174
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6177

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_293() #14, !dbg !6174, !srcloc !6178
  unreachable, !dbg !6174

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6177

do.end:                                           ; preds = %if.end
  br label %if.end14, !dbg !6177

if.else:                                          ; preds = %entry
  br label %do.body2, !dbg !6179

do.body2:                                         ; preds = %if.else
  %3 = load i32, ptr %fbit.addr, align 4, !dbg !6180
  %cmp3 = icmp uge i32 %3, 64, !dbg !6180
  %lnot = xor i1 %cmp3, true, !dbg !6180
  %lnot4 = xor i1 %lnot, true, !dbg !6180
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6180
  %conv = sext i32 %lnot.ext to i64, !dbg !6180
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6180
  %tobool = icmp ne i64 %expval, 0, !dbg !6180
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !6183

if.then5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !6180

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !6184

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6186

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6184

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 160, i32 0, i64 12) #11, !dbg !6188, !srcloc !6190
  br label %do.end10, !dbg !6188

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !6184

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !6184

if.end12:                                         ; preds = %do.end11, %do.body2
  br label %do.end13, !dbg !6183

do.end13:                                         ; preds = %if.end12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end
  %4 = load i32, ptr %fbit.addr, align 4, !dbg !6191
  %sh_prom = zext i32 %4 to i64, !dbg !6191
  %shl = shl i64 1, %sh_prom, !dbg !6191
  %5 = load ptr, ptr %vdev.addr, align 8, !dbg !6192
  %features = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11, !dbg !6193
  %6 = load i64, ptr %features, align 8, !dbg !6194
  %or = or i64 %6, %shl, !dbg !6194
  store i64 %or, ptr %features, align 8, !dbg !6194
  ret void, !dbg !6195
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6196 dso_local void @__compiletime_assert_293() #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6197 dso_local void @__compiletime_assert_292() #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_pci_find_shm_cap(ptr noundef %dev, i8 noundef zeroext %required_id, ptr noundef %bar, ptr noundef %offset, ptr noundef %len) #0 align 16 !dbg !6198 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %required_id.addr = alloca i8, align 1
  %bar.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %pos = alloca i32, align 4
  %type = alloca i8, align 1
  %cap_len = alloca i8, align 1
  %id = alloca i8, align 1
  %res_bar = alloca i8, align 1
  %tmp32 = alloca i32, align 4
  %res_offset = alloca i64, align 8
  %res_length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6202, metadata !DIExpression()), !dbg !6218
  store i8 %required_id, ptr %required_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %required_id.addr, metadata !6203, metadata !DIExpression()), !dbg !6219
  store ptr %bar, ptr %bar.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !6204, metadata !DIExpression()), !dbg !6220
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6205, metadata !DIExpression()), !dbg !6221
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6206, metadata !DIExpression()), !dbg !6222
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #11, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6207, metadata !DIExpression()), !dbg !6224
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6225
  %call = call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 9) #12, !dbg !6226
  %conv = zext i8 %call to i32, !dbg !6226
  store i32 %conv, ptr %pos, align 4, !dbg !6227
  br label %for.cond, !dbg !6228

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %pos, align 4, !dbg !6229
  %cmp = icmp sgt i32 %1, 0, !dbg !6230
  br i1 %cmp, label %for.body, label %for.end, !dbg !6231

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #11, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %type, metadata !6208, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 1, ptr %cap_len) #11, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %cap_len, metadata !6212, metadata !DIExpression()), !dbg !6234
  call void @llvm.lifetime.start.p0(i64 1, ptr %id) #11, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %id, metadata !6213, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 1, ptr %res_bar) #11, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %res_bar, metadata !6214, metadata !DIExpression()), !dbg !6236
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp32) #11, !dbg !6237
  call void @llvm.dbg.declare(metadata ptr %tmp32, metadata !6215, metadata !DIExpression()), !dbg !6238
  call void @llvm.lifetime.start.p0(i64 8, ptr %res_offset) #11, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %res_offset, metadata !6216, metadata !DIExpression()), !dbg !6240
  call void @llvm.lifetime.start.p0(i64 8, ptr %res_length) #11, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %res_length, metadata !6217, metadata !DIExpression()), !dbg !6241
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6242
  %3 = load i32, ptr %pos, align 4, !dbg !6243
  %conv2 = sext i32 %3 to i64, !dbg !6243
  %add = add i64 %conv2, 3, !dbg !6244
  %conv3 = trunc i64 %add to i32, !dbg !6243
  %call4 = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef %conv3, ptr noundef %type) #12, !dbg !6245
  %4 = load i8, ptr %type, align 1, !dbg !6246
  %conv5 = zext i8 %4 to i32, !dbg !6246
  %cmp6 = icmp ne i32 %conv5, 8, !dbg !6248
  br i1 %cmp6, label %if.then, label %if.end, !dbg !6249

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6250

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6251
  %6 = load i32, ptr %pos, align 4, !dbg !6252
  %conv8 = sext i32 %6 to i64, !dbg !6252
  %add9 = add i64 %conv8, 2, !dbg !6253
  %conv10 = trunc i64 %add9 to i32, !dbg !6252
  %call11 = call i32 @pci_read_config_byte(ptr noundef %5, i32 noundef %conv10, ptr noundef %cap_len) #12, !dbg !6254
  %7 = load i8, ptr %cap_len, align 1, !dbg !6255
  %conv12 = zext i8 %7 to i64, !dbg !6255
  %cmp13 = icmp ne i64 %conv12, 24, !dbg !6257
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !6258

if.then15:                                        ; preds = %if.end
  br label %do.body, !dbg !6259

do.body:                                          ; preds = %if.then15
  br label %do.cond, !dbg !6262

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6262

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6259
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 37, !dbg !6259
  %9 = load i32, ptr %pos, align 4, !dbg !6259
  %10 = load i8, ptr %cap_len, align 1, !dbg !6259
  %conv17 = zext i8 %10 to i32, !dbg !6259
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef @.str.5, ptr noundef @__func__.virtio_pci_find_shm_cap, i32 noundef %9, i32 noundef %conv17) #13, !dbg !6259
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6264

if.end18:                                         ; preds = %if.end
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6265
  %12 = load i32, ptr %pos, align 4, !dbg !6266
  %conv19 = sext i32 %12 to i64, !dbg !6266
  %add20 = add i64 %conv19, 5, !dbg !6267
  %conv21 = trunc i64 %add20 to i32, !dbg !6266
  %call22 = call i32 @pci_read_config_byte(ptr noundef %11, i32 noundef %conv21, ptr noundef %id) #12, !dbg !6268
  %13 = load i8, ptr %id, align 1, !dbg !6269
  %conv23 = zext i8 %13 to i32, !dbg !6269
  %14 = load i8, ptr %required_id.addr, align 1, !dbg !6271
  %conv24 = zext i8 %14 to i32, !dbg !6271
  %cmp25 = icmp ne i32 %conv23, %conv24, !dbg !6272
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !6273

if.then27:                                        ; preds = %if.end18
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6274

if.end28:                                         ; preds = %if.end18
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6275
  %16 = load i32, ptr %pos, align 4, !dbg !6276
  %conv29 = sext i32 %16 to i64, !dbg !6276
  %add30 = add i64 %conv29, 4, !dbg !6277
  %conv31 = trunc i64 %add30 to i32, !dbg !6276
  %call32 = call i32 @pci_read_config_byte(ptr noundef %15, i32 noundef %conv31, ptr noundef %res_bar) #12, !dbg !6278
  %17 = load i8, ptr %res_bar, align 1, !dbg !6279
  %conv33 = zext i8 %17 to i32, !dbg !6279
  %cmp34 = icmp sge i32 %conv33, 6, !dbg !6281
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !6282

if.then36:                                        ; preds = %if.end28
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6283

if.end37:                                         ; preds = %if.end28
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !6284
  %19 = load i32, ptr %pos, align 4, !dbg !6285
  %conv38 = sext i32 %19 to i64, !dbg !6285
  %add39 = add i64 %conv38, 8, !dbg !6286
  %conv40 = trunc i64 %add39 to i32, !dbg !6285
  %call41 = call i32 @pci_read_config_dword(ptr noundef %18, i32 noundef %conv40, ptr noundef %tmp32) #12, !dbg !6287
  %20 = load i32, ptr %tmp32, align 4, !dbg !6288
  %conv42 = zext i32 %20 to i64, !dbg !6288
  store i64 %conv42, ptr %res_offset, align 8, !dbg !6289
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !6290
  %22 = load i32, ptr %pos, align 4, !dbg !6291
  %conv43 = sext i32 %22 to i64, !dbg !6291
  %add44 = add i64 %conv43, 12, !dbg !6292
  %conv45 = trunc i64 %add44 to i32, !dbg !6291
  %call46 = call i32 @pci_read_config_dword(ptr noundef %21, i32 noundef %conv45, ptr noundef %tmp32) #12, !dbg !6293
  %23 = load i32, ptr %tmp32, align 4, !dbg !6294
  %conv47 = zext i32 %23 to i64, !dbg !6294
  store i64 %conv47, ptr %res_length, align 8, !dbg !6295
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !6296
  %25 = load i32, ptr %pos, align 4, !dbg !6297
  %conv48 = sext i32 %25 to i64, !dbg !6297
  %add49 = add i64 %conv48, 16, !dbg !6298
  %conv50 = trunc i64 %add49 to i32, !dbg !6297
  %call51 = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef %conv50, ptr noundef %tmp32) #12, !dbg !6299
  %26 = load i32, ptr %tmp32, align 4, !dbg !6300
  %conv52 = zext i32 %26 to i64, !dbg !6301
  %shl = shl i64 %conv52, 32, !dbg !6302
  %27 = load i64, ptr %res_offset, align 8, !dbg !6303
  %or = or i64 %27, %shl, !dbg !6303
  store i64 %or, ptr %res_offset, align 8, !dbg !6303
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !6304
  %29 = load i32, ptr %pos, align 4, !dbg !6305
  %conv53 = sext i32 %29 to i64, !dbg !6305
  %add54 = add i64 %conv53, 20, !dbg !6306
  %conv55 = trunc i64 %add54 to i32, !dbg !6305
  %call56 = call i32 @pci_read_config_dword(ptr noundef %28, i32 noundef %conv55, ptr noundef %tmp32) #12, !dbg !6307
  %30 = load i32, ptr %tmp32, align 4, !dbg !6308
  %conv57 = zext i32 %30 to i64, !dbg !6309
  %shl58 = shl i64 %conv57, 32, !dbg !6310
  %31 = load i64, ptr %res_length, align 8, !dbg !6311
  %or59 = or i64 %31, %shl58, !dbg !6311
  store i64 %or59, ptr %res_length, align 8, !dbg !6311
  %32 = load i8, ptr %res_bar, align 1, !dbg !6312
  %33 = load ptr, ptr %bar.addr, align 8, !dbg !6313
  store i8 %32, ptr %33, align 1, !dbg !6314
  %34 = load i64, ptr %res_offset, align 8, !dbg !6315
  %35 = load ptr, ptr %offset.addr, align 8, !dbg !6316
  store i64 %34, ptr %35, align 8, !dbg !6317
  %36 = load i64, ptr %res_length, align 8, !dbg !6318
  %37 = load ptr, ptr %len.addr, align 8, !dbg !6319
  store i64 %36, ptr %37, align 8, !dbg !6320
  %38 = load i32, ptr %pos, align 4, !dbg !6321
  store i32 %38, ptr %retval, align 4, !dbg !6322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6322

cleanup:                                          ; preds = %if.end37, %if.then36, %if.then27, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res_length) #11, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 8, ptr %res_offset) #11, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp32) #11, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 1, ptr %res_bar) #11, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 1, ptr %id) #11, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 1, ptr %cap_len) #11, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #11, !dbg !6323
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup69 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %39 = load ptr, ptr %dev.addr, align 8, !dbg !6324
  %40 = load i32, ptr %pos, align 4, !dbg !6325
  %conv66 = trunc i32 %40 to i8, !dbg !6325
  %call67 = call zeroext i8 @pci_find_next_capability(ptr noundef %39, i8 noundef zeroext %conv66, i32 noundef 9) #12, !dbg !6326
  %conv68 = zext i8 %call67 to i32, !dbg !6326
  store i32 %conv68, ptr %pos, align 4, !dbg !6327
  br label %for.cond, !dbg !6328, !llvm.loop !6329

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !6331

cleanup69:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #11, !dbg !6332
  %41 = load i32, ptr %retval, align 4, !dbg !6332
  ret i32 %41, !dbg !6332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #6 align 16 !dbg !6333 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6339, metadata !DIExpression()), !dbg !6340
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6341
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !6342
  %1 = load i64, ptr %end, align 8, !dbg !6342
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6343
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !6344
  %3 = load i64, ptr %start, align 8, !dbg !6344
  %sub = sub i64 %1, %3, !dbg !6345
  %add = add i64 %sub, 1, !dbg !6346
  ret i64 %add, !dbg !6347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6348 dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6351 dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6356 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6359 dso_local zeroext i8 @pci_find_next_capability(ptr noundef, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @virtio_has_feature(ptr noundef %vdev, i32 noundef %fbit) #6 align 16 !dbg !6362 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6364, metadata !DIExpression()), !dbg !6366
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !6365, metadata !DIExpression()), !dbg !6367
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !6368
  %cmp = icmp ult i32 %0, 28, !dbg !6370
  br i1 %cmp, label %if.then, label %if.end, !dbg !6371

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vdev.addr, align 8, !dbg !6372
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !6373
  call void @virtio_check_driver_offered_feature(ptr noundef %1, i32 noundef %2) #12, !dbg !6374
  br label %if.end, !dbg !6374

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !6375
  %4 = load i32, ptr %fbit.addr, align 4, !dbg !6376
  %call = call zeroext i1 @__virtio_test_bit(ptr noundef %3, i32 noundef %4) #12, !dbg !6377
  ret i1 %call, !dbg !6378
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6379 dso_local void @vp_modern_set_queue_reset(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #10 align 16 !dbg !6387 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6392, metadata !DIExpression()), !dbg !6393
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6394
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6395
  ret ptr %1, !dbg !6396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !6397 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6402, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6404
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !6405
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6406
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6407
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6408
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6409
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6410
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6411
  ret void, !dbg !6412
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #10 align 16 !dbg !6413 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6417, metadata !DIExpression()), !dbg !6423
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6418, metadata !DIExpression()), !dbg !6424
  br label %do.body, !dbg !6425

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6419, metadata !DIExpression()), !dbg !6426
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6422, metadata !DIExpression()), !dbg !6426
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6426
  %conv = zext i1 %cmp to i32, !dbg !6426
  store i32 1, ptr %tmp, align 4, !dbg !6426
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6427
  %0 = load i32, ptr %tmp, align 4, !dbg !6426
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6427
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6427
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6427
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #12, !dbg !6427
  br label %do.end, !dbg !6427

do.end:                                           ; preds = %do.body
  ret void, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !6429 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6431, metadata !DIExpression()), !dbg !6432
  br label %do.body, !dbg !6433

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6434

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6436

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6434

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6438
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6438
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6438
  store volatile ptr %0, ptr %next, align 8, !dbg !6438
  br label %do.end3, !dbg !6438

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6434

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6440

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6441

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6443

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6441

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6445
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6445
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6445
  store volatile ptr %2, ptr %prev, align 8, !dbg !6445
  br label %do.end9, !dbg !6445

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6441

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6447
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6448 dso_local void @synchronize_irq(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6450 dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6453 dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !6456 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6458, metadata !DIExpression()), !dbg !6459
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6460
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12, !dbg !6462
  br i1 %call, label %if.end, label %if.then, !dbg !6463

if.then:                                          ; preds = %entry
  br label %return, !dbg !6464

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6465
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6466
  %2 = load ptr, ptr %prev, align 8, !dbg !6466
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6467
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6468
  %4 = load ptr, ptr %next, align 8, !dbg !6468
  call void @__list_del(ptr noundef %2, ptr noundef %4) #12, !dbg !6469
  br label %return, !dbg !6470

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !6471 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6475, metadata !DIExpression()), !dbg !6476
  ret i1 true, !dbg !6477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6478 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6482, metadata !DIExpression()), !dbg !6484
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6483, metadata !DIExpression()), !dbg !6485
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6486
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6487
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6488
  store ptr %0, ptr %prev1, align 8, !dbg !6489
  br label %do.body, !dbg !6490

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6491

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6493

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6491

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6495
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6495
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6495
  store volatile ptr %2, ptr %next4, align 8, !dbg !6495
  br label %do.end5, !dbg !6495

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6491

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6497
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6498 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6501 dso_local i32 @vp_modern_get_queue_reset(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6504 dso_local zeroext i1 @vp_modern_get_queue_enable(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_active_vq(ptr noundef %vq, i16 noundef zeroext %msix_vec) #0 align 16 !dbg !6507 {
entry:
  %retval = alloca i32, align 4
  %vq.addr = alloca ptr, align 8
  %msix_vec.addr = alloca i16, align 2
  %vp_dev = alloca ptr, align 8
  %mdev = alloca ptr, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !6511, metadata !DIExpression()), !dbg !6516
  store i16 %msix_vec, ptr %msix_vec.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %msix_vec.addr, metadata !6512, metadata !DIExpression()), !dbg !6517
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp_dev) #11, !dbg !6518
  call void @llvm.dbg.declare(metadata ptr %vp_dev, metadata !6513, metadata !DIExpression()), !dbg !6519
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !6520
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3, !dbg !6521
  %1 = load ptr, ptr %vdev, align 8, !dbg !6521
  %call = call ptr @to_vp_device(ptr noundef %1) #12, !dbg !6522
  store ptr %call, ptr %vp_dev, align 8, !dbg !6519
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdev) #11, !dbg !6523
  call void @llvm.dbg.declare(metadata ptr %mdev, metadata !6514, metadata !DIExpression()), !dbg !6524
  %2 = load ptr, ptr %vp_dev, align 8, !dbg !6525
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %2, i32 0, i32 2, !dbg !6526
  store ptr %3, ptr %mdev, align 8, !dbg !6524
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #11, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6515, metadata !DIExpression()), !dbg !6528
  %4 = load ptr, ptr %vq.addr, align 8, !dbg !6529
  %index1 = getelementptr inbounds %struct.virtqueue, ptr %4, i32 0, i32 4, !dbg !6530
  %5 = load i32, ptr %index1, align 8, !dbg !6530
  %conv = zext i32 %5 to i64, !dbg !6529
  store i64 %conv, ptr %index, align 8, !dbg !6531
  %6 = load ptr, ptr %mdev, align 8, !dbg !6532
  %7 = load i64, ptr %index, align 8, !dbg !6533
  %conv2 = trunc i64 %7 to i16, !dbg !6533
  %8 = load ptr, ptr %vq.addr, align 8, !dbg !6534
  %call3 = call i32 @virtqueue_get_vring_size(ptr noundef %8) #12, !dbg !6535
  %conv4 = trunc i32 %call3 to i16, !dbg !6535
  call void @vp_modern_set_queue_size(ptr noundef %6, i16 noundef zeroext %conv2, i16 noundef zeroext %conv4) #12, !dbg !6536
  %9 = load ptr, ptr %mdev, align 8, !dbg !6537
  %10 = load i64, ptr %index, align 8, !dbg !6538
  %conv5 = trunc i64 %10 to i16, !dbg !6538
  %11 = load ptr, ptr %vq.addr, align 8, !dbg !6539
  %call6 = call i64 @virtqueue_get_desc_addr(ptr noundef %11) #12, !dbg !6540
  %12 = load ptr, ptr %vq.addr, align 8, !dbg !6541
  %call7 = call i64 @virtqueue_get_avail_addr(ptr noundef %12) #12, !dbg !6542
  %13 = load ptr, ptr %vq.addr, align 8, !dbg !6543
  %call8 = call i64 @virtqueue_get_used_addr(ptr noundef %13) #12, !dbg !6544
  call void @vp_modern_queue_address(ptr noundef %9, i16 noundef zeroext %conv5, i64 noundef %call6, i64 noundef %call7, i64 noundef %call8) #12, !dbg !6545
  %14 = load i16, ptr %msix_vec.addr, align 2, !dbg !6546
  %conv9 = zext i16 %14 to i32, !dbg !6546
  %cmp = icmp ne i32 %conv9, 65535, !dbg !6548
  br i1 %cmp, label %if.then, label %if.end17, !dbg !6549

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %mdev, align 8, !dbg !6550
  %16 = load i64, ptr %index, align 8, !dbg !6552
  %conv11 = trunc i64 %16 to i16, !dbg !6552
  %17 = load i16, ptr %msix_vec.addr, align 2, !dbg !6553
  %call12 = call zeroext i16 @vp_modern_queue_vector(ptr noundef %15, i16 noundef zeroext %conv11, i16 noundef zeroext %17) #12, !dbg !6554
  store i16 %call12, ptr %msix_vec.addr, align 2, !dbg !6555
  %18 = load i16, ptr %msix_vec.addr, align 2, !dbg !6556
  %conv13 = zext i16 %18 to i32, !dbg !6556
  %cmp14 = icmp eq i32 %conv13, 65535, !dbg !6558
  br i1 %cmp14, label %if.then16, label %if.end, !dbg !6559

if.then16:                                        ; preds = %if.then
  store i32 -16, ptr %retval, align 4, !dbg !6560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6560

if.end:                                           ; preds = %if.then
  br label %if.end17, !dbg !6561

if.end17:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !6562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6562

cleanup:                                          ; preds = %if.end17, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #11, !dbg !6563
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdev) #11, !dbg !6563
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp_dev) #11, !dbg !6563
  %19 = load i32, ptr %retval, align 4, !dbg !6563
  ret i32 %19, !dbg !6563
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !6564 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6566, metadata !DIExpression()), !dbg !6568
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6567, metadata !DIExpression()), !dbg !6569
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6570
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6571
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6572
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6573
  %3 = load ptr, ptr %next, align 8, !dbg !6573
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #12, !dbg !6574
  ret void, !dbg !6575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6576 dso_local void @vp_modern_set_queue_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6579 dso_local i32 @virtqueue_get_vring_size(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6584 dso_local void @vp_modern_queue_address(ptr noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6587 dso_local i64 @virtqueue_get_desc_addr(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6591 dso_local i64 @virtqueue_get_avail_addr(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6592 dso_local i64 @virtqueue_get_used_addr(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6593 dso_local zeroext i16 @vp_modern_queue_vector(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6596 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6600, metadata !DIExpression()), !dbg !6603
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6601, metadata !DIExpression()), !dbg !6604
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6602, metadata !DIExpression()), !dbg !6605
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6606
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6608
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6609
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !6610
  br i1 %call, label %if.end, label %if.then, !dbg !6611

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6612

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6613
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6614
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6615
  store ptr %3, ptr %prev1, align 8, !dbg !6616
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6617
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6618
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6619
  store ptr %5, ptr %next2, align 8, !dbg !6620
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6621
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6622
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6623
  store ptr %7, ptr %prev3, align 8, !dbg !6624
  br label %do.body, !dbg !6625

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6626

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6628

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6626

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6630
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6630
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6630
  store volatile ptr %9, ptr %next6, align 8, !dbg !6630
  br label %do.end7, !dbg !6630

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6626

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6633 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6637, metadata !DIExpression()), !dbg !6640
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6638, metadata !DIExpression()), !dbg !6641
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6639, metadata !DIExpression()), !dbg !6642
  ret i1 true, !dbg !6643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6644 dso_local zeroext i16 @vp_modern_config_vector(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vp_notify_with_data(ptr noundef %vq) #0 align 16 !dbg !6647 {
entry:
  %vq.addr = alloca ptr, align 8
  %data = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #11, !dbg !6652
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6650, metadata !DIExpression()), !dbg !6653
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !6654
  %call = call i32 @vring_notification_data(ptr noundef %0) #12, !dbg !6655
  store i32 %call, ptr %data, align 4, !dbg !6653
  %1 = load i32, ptr %data, align 4, !dbg !6656
  %2 = load ptr, ptr %vq.addr, align 8, !dbg !6657
  %priv = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 8, !dbg !6658
  %3 = load ptr, ptr %priv, align 8, !dbg !6658
  call void @iowrite32(i32 noundef %1, ptr noundef %3) #12, !dbg !6659
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #11, !dbg !6660
  ret i1 true, !dbg !6661
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @vp_notify(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6662 dso_local zeroext i16 @vp_modern_get_num_queues(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !6665 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6670, metadata !DIExpression()), !dbg !6671
  %0 = load i64, ptr %error.addr, align 8, !dbg !6672
  %1 = inttoptr i64 %0 to ptr, !dbg !6673
  ret ptr %1, !dbg !6674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6675 dso_local zeroext i16 @vp_modern_get_queue_size(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6676 dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6679 dso_local ptr @vp_modern_map_vq_notify(ptr noundef, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6683 dso_local void @vring_del_virtqueue(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6684 dso_local i32 @vring_notification_data(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6687 dso_local void @pci_iounmap(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: fbit >= 64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143}
!llvm.ident = !{!5144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "virtio_pci_config_ops", scope: !2, file: !3, line: 514, type: !4582, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/virtio/.virtio_pci_modern.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/virtio/virtio_pci\22 -D KBUILD_BASENAME=\22virtio_pci_modern\22 -D KBUILD_MODNAME=\22virtio_pci\22 -D __KBUILD_MODNAME=kmod_virtio_pci -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/virtio/virtio_pci_modern.ll drivers/virtio/virtio_pci_modern.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !5093, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/virtio/virtio_pci_modern.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a6f56e480c606758612799af44cca65")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141}
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
!146 = !{!147, !149, !152, !153, !154, !155, !4616, !416, !5091}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !148, line: 36, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !150, line: 24, baseType: !151)
!150 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !148, line: 38, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !150, line: 27, baseType: !7)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_device", file: !157, line: 45, size: 8192, elements: !158)
!157 = !DIFile(filename: "drivers/virtio/virtio_pci_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a8a7cf4aa5bce87d24389029ddf10b2")
!158 = !{!159, !4697, !5000, !5053, !5054, !5055, !5056, !5057, !5065, !5066, !5067, !5071, !5076, !5077, !5078, !5079, !5083, !5087}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !156, file: !157, line: 46, baseType: !160, size: 6400)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device", file: !161, line: 122, size: 6400, elements: !162)
!161 = !DIFile(filename: "./include/linux/virtio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e5ffaaf59c73222e5165cb3fb97a1c")
!162 = !{!163, !164, !168, !169, !170, !210, !211, !4575, !4580, !4690, !4694, !4695, !4696}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !160, file: !161, line: 123, baseType: !109, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !160, file: !161, line: 124, baseType: !165, size: 8, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !166, line: 35, baseType: !167)
!166 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!167 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "config_enabled", scope: !160, file: !161, line: 125, baseType: !165, size: 8, offset: 40)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "config_change_pending", scope: !160, file: !161, line: 126, baseType: !165, size: 8, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "config_lock", scope: !160, file: !161, line: 127, baseType: !171, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !172, line: 29, baseType: !173)
!172 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !172, line: 17, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !172, line: 18, baseType: !176, size: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !172, line: 18, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !176, file: !172, line: 19, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !180, line: 14, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !179, file: !180, line: 15, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !184, line: 44, baseType: !185)
!184 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !184, line: 14, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !184, line: 15, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !184, line: 15, size: 32, elements: !189)
!189 = !{!190, !195, !204}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !188, file: !184, line: 16, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !166, line: 174, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 172, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !166, line: 173, baseType: !109, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 24, baseType: !196, size: 16)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 24, size: 16, elements: !197)
!197 = !{!198, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !196, file: !184, line: 25, baseType: !199, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !200, line: 17, baseType: !201)
!200 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !150, line: 21, baseType: !202)
!202 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !196, file: !184, line: 26, baseType: !199, size: 8, offset: 8)
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 28, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 28, size: 32, elements: !206)
!206 = !{!207, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !205, file: !184, line: 29, baseType: !208, size: 16)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !200, line: 19, baseType: !149)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !205, file: !184, line: 30, baseType: !208, size: 16, offset: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "vqs_list_lock", scope: !160, file: !161, line: 128, baseType: !171, size: 32, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !160, file: !161, line: 129, baseType: !212, size: 5824, offset: 128)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !213)
!213 = !{!214, !4113, !4115, !4118, !4119, !4172, !4257, !4258, !4259, !4260, !4261, !4268, !4360, !4373, !4383, !4387, !4389, !4390, !4391, !4395, !4402, !4403, !4406, !4409, !4413, !4517, !4518, !4519, !4520, !4521, !4522, !4552, !4553, !4554, !4557, !4560, !4569, !4570, !4571, !4572, !4573, !4574}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !94, line: 706, baseType: !215, size: 512)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !216, line: 64, size: 512, elements: !217)
!216 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!217 = !{!218, !222, !228, !230, !277, !4000, !4103, !4108, !4109, !4110, !4111, !4112}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !216, line: 65, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !215, file: !216, line: 66, baseType: !223, size: 128, offset: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !166, line: 190, size: 128, elements: !224)
!224 = !{!225, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !166, line: 191, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !223, file: !166, line: 191, baseType: !226, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !216, line: 67, baseType: !229, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !215, file: !216, line: 68, baseType: !231, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !216, line: 168, size: 768, elements: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !232, file: !216, line: 169, baseType: !223, size: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !232, file: !216, line: 170, baseType: !171, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !232, file: !216, line: 171, baseType: !215, size: 512, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !232, file: !216, line: 172, baseType: !238, size: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !216, line: 133, size: 192, elements: !241)
!241 = !{!242, !249, !254}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !240, file: !216, line: 134, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!109, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !216, line: 135, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!219, !247}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !240, file: !216, line: 136, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!109, !247, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !216, line: 125, size: 20736, elements: !261)
!261 = !{!262, !267, !271, !272, !276}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !260, file: !216, line: 126, baseType: !263, size: 192)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 192, elements: !265)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!265 = !{!266}
!266 = !DISubrange(count: 3)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !260, file: !216, line: 127, baseType: !268, size: 4096, offset: 192)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 4096, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !260, file: !216, line: 128, baseType: !109, size: 32, offset: 4288)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !260, file: !216, line: 129, baseType: !273, size: 16384, offset: 4320)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 16384, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 2048)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !260, file: !216, line: 130, baseType: !109, size: 32, offset: 20704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !215, file: !216, line: 69, baseType: !278, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !216, line: 116, size: 384, elements: !281)
!281 = !{!282, !286, !315, !3962, !3990, !3994}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !280, file: !216, line: 117, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !229}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !280, file: !216, line: 118, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !290, line: 254, size: 128, elements: !291)
!290 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!291 = !{!292, !307}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !289, file: !290, line: 255, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !229, !301, !264}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !166, line: 66, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !298, line: 73, baseType: !299)
!298 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !298, line: 15, baseType: !300)
!300 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !290, line: 30, size: 128, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !290, line: 31, baseType: !219, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !302, file: !290, line: 32, baseType: !306, size: 16, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !166, line: 24, baseType: !151)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !289, file: !290, line: 256, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!296, !229, !301, !219, !311}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 61, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !298, line: 72, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !298, line: 16, baseType: !314)
!314 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !280, file: !216, line: 119, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !290, line: 84, size: 320, elements: !320)
!320 = !{!321, !322, !326, !3958, !3960}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !290, line: 85, baseType: !219, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !319, file: !290, line: 86, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!306, !229, !301, !109}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !319, file: !290, line: 88, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!306, !229, !330, !109}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !290, line: 175, size: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !3949, !3953, !3954}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !331, file: !290, line: 176, baseType: !302, size: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !331, file: !290, line: 177, baseType: !311, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !331, file: !290, line: 178, baseType: !154, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !331, file: !290, line: 179, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !342)
!342 = !{!343, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3943, !3944, !3945, !3946, !3947, !3948}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !341, file: !14, line: 473, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !346)
!346 = !{!347, !348, !349, !357, !358, !365, !366, !369, !370, !3722, !3723, !3724, !3725, !3726, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3766, !3769, !3770, !3771, !3780, !3781, !3782, !3783}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !345, file: !14, line: 642, baseType: !306, size: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !345, file: !14, line: 643, baseType: !151, size: 16, offset: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !345, file: !14, line: 644, baseType: !350, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !351, line: 23, baseType: !352)
!351 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 21, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !352, file: !351, line: 22, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !166, line: 37, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !298, line: 49, baseType: !7)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !345, file: !14, line: 645, baseType: !223, size: 128, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !345, file: !14, line: 646, baseType: !359, size: 32, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !351, line: 28, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 26, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !360, file: !351, line: 27, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !166, line: 38, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !298, line: 50, baseType: !7)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !345, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !345, file: !14, line: 650, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !345, file: !14, line: 651, baseType: !367, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !345, file: !14, line: 654, baseType: !371, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !374)
!374 = !{!375, !3550, !3560, !3564, !3568, !3572, !3576, !3580, !3584, !3588, !3592, !3593, !3597, !3601, !3638, !3667, !3671, !3677, !3681, !3685, !3689, !3693, !3697, !3703, !3707}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !373, file: !14, line: 1967, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !344, !379, !7}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !381, line: 82, size: 1536, elements: !382)
!381 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!382 = !{!383, !384, !394, !402, !403, !422, !423, !427, !440, !3533, !3534, !3535, !3536, !3542, !3543, !3544}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !380, file: !381, line: 84, baseType: !7, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !380, file: !381, line: 85, baseType: !385, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !386, line: 275, baseType: !387)
!386 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !386, line: 275, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !387, file: !386, line: 275, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !386, line: 69, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !386, line: 64, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !391, file: !386, line: 65, baseType: !7, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !380, file: !381, line: 86, baseType: !395, size: 128, offset: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !396, line: 38, size: 128, elements: !397)
!396 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!397 = !{!398, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !396, line: 39, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !395, file: !396, line: 39, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !380, file: !381, line: 87, baseType: !379, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !380, file: !381, line: 88, baseType: !404, size: 128, offset: 256)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !381, line: 49, size: 128, elements: !405)
!405 = !{!406, !419}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !381, line: 50, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !381, line: 50, size: 64, elements: !408)
!408 = !{!409, !415}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !381, line: 51, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !381, line: 51, size: 64, elements: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !410, file: !381, line: 52, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !200, line: 21, baseType: !153)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !410, file: !381, line: 52, baseType: !413, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !407, file: !381, line: 54, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !200, line: 23, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !150, line: 31, baseType: !418)
!418 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !404, file: !381, line: 56, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !380, file: !381, line: 89, baseType: !344, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !380, file: !381, line: 91, baseType: !424, size: 256, offset: 448)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !380, file: !381, line: 94, baseType: !428, size: 64, offset: 704)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !429, line: 25, size: 64, elements: !430)
!429 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 26, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 26, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !432, file: !429, line: 28, baseType: !417, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !429, line: 30, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !429, line: 30, size: 64, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !429, line: 31, baseType: !171, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !436, file: !429, line: 32, baseType: !109, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !380, file: !381, line: 95, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !381, line: 128, size: 1024, align: 512, elements: !444)
!444 = !{!445, !449, !450, !457, !463, !467, !471, !475, !476, !480, !484, !3523, !3527}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !443, file: !381, line: 129, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!109, !379, !7}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !443, file: !381, line: 130, baseType: !446, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !381, line: 131, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!109, !454, !456}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !443, file: !381, line: 132, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!109, !454, !7, !219, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !443, file: !381, line: 134, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!109, !454}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !443, file: !381, line: 135, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!109, !379}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !443, file: !381, line: 136, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !379}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !443, file: !381, line: 137, baseType: !472, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !443, file: !381, line: 138, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !379, !344}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !443, file: !381, line: 139, baseType: !481, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!264, !379, !264, !109}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !443, file: !381, line: 140, baseType: !485, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !3522}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !490, line: 70, size: 256, elements: !491)
!490 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!491 = !{!492, !493, !3518, !3519}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !489, file: !490, line: 71, baseType: !379, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !489, file: !490, line: 72, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !496)
!496 = !{!497, !498, !501, !502, !503, !507, !985, !1125, !1165, !1255, !1259, !1260, !1261, !1262, !1263, !1272, !1273, !1274, !1275, !1280, !1284, !1285, !1288, !1291, !1294, !1297, !1298, !1299, !1340, !3451, !3452, !3453, !3454, !3455, !3456, !3459, !3461, !3468, !3469, !3470, !3471, !3472, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !495, file: !14, line: 1191, baseType: !223, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !495, file: !14, line: 1192, baseType: !499, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !166, line: 21, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !166, line: 18, baseType: !413)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !495, file: !14, line: 1193, baseType: !202, size: 8, offset: 160)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !495, file: !14, line: 1194, baseType: !314, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !495, file: !14, line: 1195, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !166, line: 52, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !298, line: 88, baseType: !506)
!506 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !495, file: !14, line: 1196, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !510)
!510 = !{!511, !512, !513, !520, !524, !528, !532, !970, !971, !975, !977, !978, !979, !981, !982, !983, !984}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !14, line: 2367, baseType: !219, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !509, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !509, file: !14, line: 2376, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!109, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !519, line: 32, flags: DIFlagFwdDecl)
!519 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !509, file: !14, line: 2377, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !509, file: !14, line: 2378, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!379, !508, !109, !219, !154}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !509, file: !14, line: 2380, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !494}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !509, file: !14, line: 2381, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !535)
!535 = !{!536, !537, !538, !542, !564, !590, !591, !592, !593, !597, !602, !603, !623, !679, !680, !681, !682, !683, !684, !685, !686, !694, !698, !725, !746, !747, !748, !749, !758, !781, !782, !785, !788, !789, !790, !791, !792, !793, !794, !799, !800, !928, !936, !937, !938, !940, !944, !945, !949, !950, !951, !952, !954, !955, !956, !963, !964, !965, !969}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !534, file: !6, line: 403, baseType: !5, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !534, file: !6, line: 406, baseType: !223, size: 128, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !534, file: !6, line: 409, baseType: !539, size: 448, offset: 192)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 448, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 56)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !534, file: !6, line: 417, baseType: !543, size: 768, offset: 640)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !544)
!544 = !{!545, !546, !547, !548, !551}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !543, file: !6, line: 46, baseType: !215, size: 512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !543, file: !6, line: 47, baseType: !533, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !543, file: !6, line: 48, baseType: !229, size: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !543, file: !6, line: 49, baseType: !549, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !543, file: !6, line: 50, baseType: !552, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !554, line: 26, size: 256, elements: !555)
!554 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !553, file: !554, line: 27, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !553, file: !554, line: 28, baseType: !558, size: 192, offset: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !559, line: 43, size: 192, elements: !560)
!559 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!560 = !{!561, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !558, file: !559, line: 44, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !180, line: 23, baseType: !179)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !558, file: !559, line: 45, baseType: !223, size: 128, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !534, file: !6, line: 418, baseType: !565, size: 64, offset: 1408)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !567)
!567 = !{!568, !569, !574, !578, !582, !586}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !566, file: !6, line: 54, baseType: !302, size: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !566, file: !6, line: 55, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!296, !565, !573, !264}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !566, file: !6, line: 57, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!296, !565, !573, !219, !311}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !566, file: !6, line: 59, baseType: !579, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !533, !219}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !566, file: !6, line: 60, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!109, !533}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !566, file: !6, line: 61, baseType: !587, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !533}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !534, file: !6, line: 419, baseType: !219, size: 64, offset: 1472)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !534, file: !6, line: 420, baseType: !219, size: 64, offset: 1536)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !534, file: !6, line: 421, baseType: !229, size: 64, offset: 1600)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !534, file: !6, line: 424, baseType: !594, size: 64, offset: 1664)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !534, file: !6, line: 425, baseType: !598, size: 64, offset: 1728)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !200, line: 20, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !150, line: 26, baseType: !109)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !534, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !534, file: !6, line: 435, baseType: !604, size: 256, offset: 1856)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !605, line: 66, size: 256, elements: !606)
!605 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!606 = !{!607, !616, !617, !622}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !604, file: !605, line: 67, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !609, line: 13, baseType: !610)
!609 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !166, line: 181, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 179, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !611, file: !166, line: 180, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !200, line: 22, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !150, line: 30, baseType: !506)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !604, file: !605, line: 68, baseType: !562, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !604, file: !605, line: 70, baseType: !618, size: 32, offset: 96)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !619, line: 15, size: 32, elements: !620)
!619 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !618, file: !619, line: 20, baseType: !191, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !604, file: !605, line: 72, baseType: !223, size: 128, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !534, file: !6, line: 437, baseType: !624, size: 64, offset: 2112)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !626, line: 69, size: 320, elements: !627)
!626 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!627 = !{!628, !629, !630, !650, !652, !656, !657}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !625, file: !626, line: 70, baseType: !219, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !625, file: !626, line: 71, baseType: !533, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !625, file: !626, line: 72, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !626, line: 47, size: 256, elements: !634)
!634 = !{!635, !636, !642, !646}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !626, line: 49, baseType: !7, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !633, file: !626, line: 51, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!109, !219, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !633, file: !626, line: 53, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!109, !264, !640}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !633, file: !626, line: 55, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !154}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !625, file: !626, line: 73, baseType: !651, size: 16, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !625, file: !626, line: 74, baseType: !653, size: 8, offset: 208)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !200, line: 16, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !150, line: 20, baseType: !655)
!655 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !626, line: 75, baseType: !199, size: 8, offset: 216)
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 76, baseType: !658, size: 64, offset: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 76, size: 64, elements: !659)
!659 = !{!660, !661, !668}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !658, file: !626, line: 77, baseType: !154, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !658, file: !626, line: 78, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !626, line: 86, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !664, file: !626, line: 87, baseType: !7, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !664, file: !626, line: 88, baseType: !264, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !658, file: !626, line: 79, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !626, line: 92, size: 256, elements: !672)
!672 = !{!673, !674, !675, !677, !678}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !671, file: !626, line: 94, baseType: !7, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !671, file: !626, line: 95, baseType: !7, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !671, file: !626, line: 96, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !671, file: !626, line: 97, baseType: !631, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !671, file: !626, line: 98, baseType: !154, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !534, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !534, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !534, file: !6, line: 442, baseType: !594, size: 64, offset: 2240)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !534, file: !6, line: 443, baseType: !598, size: 64, offset: 2304)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !534, file: !6, line: 444, baseType: !165, size: 8, offset: 2368)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !534, file: !6, line: 451, baseType: !165, size: 8, offset: 2376)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !534, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !534, file: !6, line: 455, baseType: !687, size: 64, offset: 2432)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !689, line: 23, size: 96, elements: !690)
!689 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!690 = !{!691, !692, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !688, file: !689, line: 24, baseType: !109, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !688, file: !689, line: 24, baseType: !109, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !688, file: !689, line: 24, baseType: !109, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !534, file: !6, line: 458, baseType: !695, size: 64, offset: 2496)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!109}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !534, file: !6, line: 460, baseType: !699, size: 4032, align: 512, offset: 2560)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 4032, elements: !723)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !701)
!701 = !{!702, !703, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !700, file: !6, line: 363, baseType: !154, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !700, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !700, file: !6, line: 367, baseType: !705, size: 448, offset: 128)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !705, file: !6, line: 320, baseType: !533, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !6, line: 321, baseType: !709, size: 384, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !710, line: 40, size: 384, elements: !711)
!710 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !710, line: 41, baseType: !713, size: 384, align: 64)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 384, align: 64, elements: !721)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !715, line: 5, size: 192, align: 64, elements: !716)
!715 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!716 = !{!717, !718, !720}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !714, file: !715, line: 6, baseType: !314, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !714, file: !715, line: 7, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !714, file: !715, line: 8, baseType: !719, size: 64, offset: 128)
!721 = !{!722}
!722 = !DISubrange(count: 2)
!723 = !{!724}
!724 = !DISubrange(count: 7)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !534, file: !6, line: 463, baseType: !726, size: 192, offset: 6592)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !727, line: 8, size: 192, elements: !728)
!727 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!728 = !{!729, !730, !732}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !726, file: !727, line: 10, baseType: !7, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !726, file: !727, line: 11, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !726, file: !727, line: 12, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !735, line: 59, size: 48, elements: !736)
!735 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!736 = !{!737, !741, !742, !743, !744, !745}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !734, file: !735, line: 60, baseType: !738, size: 16)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !200, line: 18, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !150, line: 23, baseType: !740)
!740 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !734, file: !735, line: 61, baseType: !738, size: 16, offset: 16)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !734, file: !735, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !734, file: !735, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !735, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !734, file: !735, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !534, file: !6, line: 465, baseType: !314, size: 64, offset: 6784)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !534, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !534, file: !6, line: 470, baseType: !223, size: 128, offset: 6912)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !534, file: !6, line: 471, baseType: !750, size: 64, offset: 7040)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !752, line: 33, size: 96, elements: !753)
!752 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!753 = !{!754, !755, !756, !757}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !751, file: !752, line: 37, baseType: !109, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !751, file: !752, line: 43, baseType: !109, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !751, file: !752, line: 45, baseType: !151, size: 16, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !752, line: 47, baseType: !151, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !534, file: !6, line: 476, baseType: !759, size: 64, offset: 7104)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !761)
!761 = !{!762, !778, !779, !780}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !760, file: !6, line: 379, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !765, line: 204, baseType: !766)
!765 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !765, line: 197, size: 192, elements: !767)
!767 = !{!768, !770, !771, !772, !774, !776}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !766, file: !765, line: 198, baseType: !769, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !765, line: 21, baseType: !153)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !766, file: !765, line: 199, baseType: !202, size: 8, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !766, file: !765, line: 200, baseType: !202, size: 8, offset: 40)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !766, file: !765, line: 201, baseType: !773, size: 16, offset: 48)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !765, line: 17, baseType: !149)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !766, file: !765, line: 202, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !765, line: 16, baseType: !417)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !766, file: !765, line: 203, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !765, line: 22, baseType: !417)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !760, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !760, file: !6, line: 381, baseType: !264, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !760, file: !6, line: 382, baseType: !264, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !534, file: !6, line: 477, baseType: !760, size: 256, offset: 7168)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !534, file: !6, line: 480, baseType: !783, size: 64, offset: 7424)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !534, file: !6, line: 483, baseType: !786, size: 64, offset: 7488)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !534, file: !6, line: 488, baseType: !264, size: 64, offset: 7552)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !534, file: !6, line: 492, baseType: !154, size: 64, offset: 7616)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !534, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !534, file: !6, line: 495, baseType: !154, size: 64, offset: 7744)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !534, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !534, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !534, file: !6, line: 500, baseType: !795, size: 64, offset: 7872)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !797, line: 45, baseType: !798)
!797 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !534, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !534, file: !6, line: 504, baseType: !801, size: 64, offset: 8000)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !804, line: 96, size: 192, elements: !805)
!804 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!805 = !{!806, !807, !888, !892}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !803, file: !804, line: 97, baseType: !7, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !803, file: !804, line: 98, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !804, line: 24, size: 3072, elements: !810)
!810 = !{!811, !813, !814, !815, !816, !840, !841, !842, !843, !861, !873, !874, !885, !886, !887}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !809, file: !804, line: 26, baseType: !812, size: 128)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 128, elements: !721)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !809, file: !804, line: 27, baseType: !812, size: 128, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !809, file: !804, line: 28, baseType: !109, size: 32, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !809, file: !804, line: 31, baseType: !171, size: 32, align: 512, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !809, file: !804, line: 32, baseType: !817, size: 960, offset: 576)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !818, line: 206, size: 960, elements: !819)
!818 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!819 = !{!820, !829, !834, !836, !837, !839}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !817, file: !818, line: 207, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !166, line: 232, size: 128, align: 64, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !822, file: !166, line: 233, baseType: !821, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !822, file: !166, line: 234, baseType: !826, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !821}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !817, file: !818, line: 208, baseType: !830, size: 256, offset: 64)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 256, elements: !832)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!832 = !{!833}
!833 = !DISubrange(count: 4)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !817, file: !818, line: 209, baseType: !835, size: 256, offset: 320)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !832)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !817, file: !818, line: 213, baseType: !300, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !817, file: !818, line: 215, baseType: !838, size: 256, offset: 640)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !818, line: 216, baseType: !199, size: 8, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !809, file: !804, line: 33, baseType: !314, size: 64, offset: 1536)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !809, file: !804, line: 34, baseType: !314, size: 64, offset: 1600)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !809, file: !804, line: 35, baseType: !165, size: 8, offset: 1664)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !809, file: !804, line: 36, baseType: !844, size: 320, offset: 1728)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !845, line: 11, size: 320, elements: !846)
!845 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!846 = !{!847, !854, !855, !860}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !844, file: !845, line: 16, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !166, line: 198, size: 128, elements: !849)
!849 = !{!850, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !166, line: 199, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !848, file: !166, line: 199, baseType: !853, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !844, file: !845, line: 17, baseType: !314, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !844, file: !845, line: 18, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !845, line: 19, baseType: !413, size: 32, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !809, file: !804, line: 37, baseType: !862, size: 256, offset: 2048)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !863, line: 98, size: 256, elements: !864)
!863 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !862, file: !863, line: 99, baseType: !608, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !862, file: !863, line: 100, baseType: !223, size: 128, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !862, file: !863, line: 101, baseType: !868, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !863, line: 21, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !809, file: !804, line: 38, baseType: !822, size: 128, align: 64, offset: 2304)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !809, file: !804, line: 39, baseType: !875, size: 64, offset: 2432)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !804, line: 49, size: 768, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !884}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !804, line: 50, baseType: !171, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !876, file: !804, line: 51, baseType: !835, size: 256, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !876, file: !804, line: 53, baseType: !835, size: 256, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !876, file: !804, line: 54, baseType: !314, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !876, file: !804, line: 55, baseType: !875, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !876, file: !804, line: 56, baseType: !109, size: 32, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !876, file: !804, line: 57, baseType: !109, size: 32, offset: 736)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !809, file: !804, line: 40, baseType: !314, size: 64, offset: 2496)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !809, file: !804, line: 42, baseType: !109, size: 32, offset: 2560)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !809, file: !804, line: 43, baseType: !802, size: 64, offset: 2624)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !803, file: !804, line: 99, baseType: !889, offset: 128)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !890, line: 211, elements: !891)
!890 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!891 = !{}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !803, file: !804, line: 100, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !804, line: 63, size: 3008, elements: !895)
!895 = !{!896, !897, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !927}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !894, file: !804, line: 64, baseType: !875, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !894, file: !804, line: 65, baseType: !898, size: 192, offset: 64)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 192, elements: !265)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !894, file: !804, line: 67, baseType: !109, size: 32, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !894, file: !804, line: 68, baseType: !604, size: 256, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !894, file: !804, line: 69, baseType: !171, size: 32, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !894, file: !804, line: 70, baseType: !604, size: 256, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !894, file: !804, line: 71, baseType: !314, size: 64, offset: 896)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !894, file: !804, line: 72, baseType: !314, size: 64, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !894, file: !804, line: 73, baseType: !314, size: 64, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !894, file: !804, line: 74, baseType: !314, size: 64, offset: 1088)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !894, file: !804, line: 75, baseType: !314, size: 64, offset: 1152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !894, file: !804, line: 76, baseType: !314, size: 64, offset: 1216)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !894, file: !804, line: 77, baseType: !314, size: 64, offset: 1280)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !894, file: !804, line: 78, baseType: !314, size: 64, offset: 1344)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !894, file: !804, line: 79, baseType: !165, size: 8, offset: 1408)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !894, file: !804, line: 80, baseType: !314, size: 64, offset: 1472)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !894, file: !804, line: 81, baseType: !604, size: 256, offset: 1536)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !894, file: !804, line: 82, baseType: !553, size: 256, offset: 1792)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !894, file: !804, line: 84, baseType: !191, size: 32, offset: 2048)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !894, file: !804, line: 87, baseType: !314, size: 64, offset: 2112)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !894, file: !804, line: 88, baseType: !314, size: 64, offset: 2176)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !894, file: !804, line: 89, baseType: !919, size: 704, offset: 2240)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !863, line: 111, size: 704, elements: !920)
!920 = !{!921, !922, !923, !926}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !919, file: !863, line: 112, baseType: !862, size: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !919, file: !863, line: 113, baseType: !844, size: 320, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !919, file: !863, line: 116, baseType: !924, size: 64, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !863, line: 18, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !919, file: !863, line: 117, baseType: !109, size: 32, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !894, file: !804, line: 90, baseType: !802, size: 64, offset: 2944)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !534, file: !6, line: 515, baseType: !929, size: 64, offset: 8064)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !931, line: 117, size: 128, elements: !932)
!931 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !930, file: !931, line: 118, baseType: !600, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !930, file: !931, line: 119, baseType: !600, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !930, file: !931, line: 120, baseType: !300, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !534, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !534, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !534, file: !6, line: 520, baseType: !939, size: 64, offset: 8192)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !534, file: !6, line: 523, baseType: !941, size: 64, offset: 8256)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !534, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !534, file: !6, line: 525, baseType: !946, size: 64, offset: 8384)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !534, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !534, file: !6, line: 533, baseType: !154, size: 64, offset: 8512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !534, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !534, file: !6, line: 535, baseType: !953, size: 64, offset: 8640)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !534, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !534, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !534, file: !6, line: 540, baseType: !957, size: 64, offset: 8768)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !959, line: 32, size: 64, elements: !960)
!959 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !958, file: !959, line: 33, baseType: !600, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !958, file: !959, line: 34, baseType: !600, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !534, file: !6, line: 563, baseType: !223, size: 128, offset: 8832)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !534, file: !6, line: 565, baseType: !223, size: 128, offset: 8960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !534, file: !6, line: 568, baseType: !966, size: 64, offset: 9088)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{null}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !534, file: !6, line: 570, baseType: !191, size: 32, offset: 9152)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !14, line: 2382, baseType: !508, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !509, file: !14, line: 2383, baseType: !972, size: 64, offset: 512)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !166, line: 194, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !972, file: !166, line: 195, baseType: !851, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !509, file: !14, line: 2385, baseType: !976, offset: 576)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !890, line: 206, elements: !891)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !509, file: !14, line: 2386, baseType: !976, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !509, file: !14, line: 2387, baseType: !976, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !509, file: !14, line: 2388, baseType: !980, offset: 576)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, elements: !265)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !509, file: !14, line: 2390, baseType: !976, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !509, file: !14, line: 2391, baseType: !976, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !509, file: !14, line: 2392, baseType: !976, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !509, file: !14, line: 2393, baseType: !976, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !495, file: !14, line: 1197, baseType: !986, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !989)
!989 = !{!990, !994, !998, !999, !1003, !1009, !1013, !1014, !1015, !1019, !1023, !1027, !1028, !1029, !1035, !1039, !1040, !1047, !1048, !1049, !1050, !1054, !1058, !1107, !1123, !1124}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !988, file: !14, line: 2058, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!344, !494}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !988, file: !14, line: 2059, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !344}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !988, file: !14, line: 2060, baseType: !995, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !988, file: !14, line: 2062, baseType: !1000, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !344, !109}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !988, file: !14, line: 2063, baseType: !1004, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!109, !344, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !988, file: !14, line: 2064, baseType: !1010, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!109, !344}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !988, file: !14, line: 2065, baseType: !995, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !988, file: !14, line: 2066, baseType: !529, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !988, file: !14, line: 2067, baseType: !1016, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!109, !494, !109}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !988, file: !14, line: 2068, baseType: !1020, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!109, !494, !13}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !988, file: !14, line: 2069, baseType: !1024, size: 64, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!109, !494}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !988, file: !14, line: 2070, baseType: !1020, size: 64, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !988, file: !14, line: 2071, baseType: !1024, size: 64, offset: 768)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !988, file: !14, line: 2072, baseType: !1030, size: 64, offset: 832)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!109, !379, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !988, file: !14, line: 2073, baseType: !1036, size: 64, offset: 896)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!109, !494, !731, !264}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !988, file: !14, line: 2074, baseType: !529, size: 64, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !988, file: !14, line: 2076, baseType: !1041, size: 64, offset: 1024)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!109, !1044, !379}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1046, line: 66, flags: DIFlagFwdDecl)
!1046 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !988, file: !14, line: 2077, baseType: !1041, size: 64, offset: 1088)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !988, file: !14, line: 2078, baseType: !1041, size: 64, offset: 1152)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !988, file: !14, line: 2079, baseType: !1041, size: 64, offset: 1216)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !988, file: !14, line: 2081, baseType: !1051, size: 64, offset: 1280)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!296, !494, !109, !264, !311, !504}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !988, file: !14, line: 2082, baseType: !1055, size: 64, offset: 1344)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!296, !494, !109, !219, !311, !504}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !988, file: !14, line: 2083, baseType: !1059, size: 64, offset: 1408)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1062, !344}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1090, !1091, !1092}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1064, file: !19, line: 297, baseType: !848, size: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1064, file: !19, line: 298, baseType: !223, size: 128, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1064, file: !19, line: 299, baseType: !223, size: 128, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1064, file: !19, line: 300, baseType: !223, size: 128, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1064, file: !19, line: 301, baseType: !604, size: 256, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1064, file: !19, line: 302, baseType: !171, size: 32, offset: 768)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1064, file: !19, line: 303, baseType: !191, size: 32, offset: 800)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1064, file: !19, line: 304, baseType: !494, size: 64, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1064, file: !19, line: 305, baseType: !1075, size: 64, offset: 896)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1076)
!1076 = !{!1077, !1089}
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !19, line: 69, baseType: !1078, size: 32)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !19, line: 69, size: 32, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1078, file: !19, line: 70, baseType: !350, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1078, file: !19, line: 71, baseType: !359, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1078, file: !19, line: 72, baseType: !1083, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1084, line: 24, baseType: !1085)
!1084 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 22, size: 32, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1085, file: !1084, line: 23, baseType: !1088, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1084, line: 20, baseType: !356)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1075, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1064, file: !19, line: 306, baseType: !504, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1064, file: !19, line: 307, baseType: !314, size: 64, offset: 1024)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1064, file: !19, line: 308, baseType: !1093, size: 576, offset: 1088)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1094)
!1094 = !{!1095, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1106}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1093, file: !19, line: 206, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !506)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1093, file: !19, line: 207, baseType: !1096, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1093, file: !19, line: 208, baseType: !1096, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1093, file: !19, line: 209, baseType: !1096, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1093, file: !19, line: 210, baseType: !1096, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1093, file: !19, line: 211, baseType: !1096, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1093, file: !19, line: 212, baseType: !1096, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1093, file: !19, line: 213, baseType: !1104, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1105, line: 8, baseType: !615)
!1105 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1093, file: !19, line: 214, baseType: !1104, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !988, file: !14, line: 2085, baseType: !1108, size: 64, offset: 1472)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!300, !494, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1113, line: 15, size: 256, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1114 = !{!1115, !1117, !1118, !1119, !1120}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1112, file: !1113, line: 16, baseType: !1116, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !166, line: 154, baseType: !7)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1112, file: !1113, line: 19, baseType: !109, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1112, file: !1113, line: 26, baseType: !314, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1112, file: !1113, line: 33, baseType: !314, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1112, file: !1113, line: 36, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !988, file: !14, line: 2087, baseType: !1108, size: 64, offset: 1536)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !988, file: !14, line: 2089, baseType: !529, size: 64, offset: 1600)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !495, file: !14, line: 1198, baseType: !1126, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1129)
!1129 = !{!1130, !1134, !1138, !1142, !1143, !1144, !1145, !1146, !1151, !1156, !1160}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1128, file: !19, line: 325, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!109, !1063}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1128, file: !19, line: 326, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!1063, !494, !109}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1128, file: !19, line: 327, baseType: !1139, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1063}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1128, file: !19, line: 328, baseType: !1131, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1128, file: !19, line: 329, baseType: !1131, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1128, file: !19, line: 330, baseType: !1131, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1128, file: !19, line: 331, baseType: !1016, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1128, file: !19, line: 334, baseType: !1147, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!1150, !344}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1128, file: !19, line: 335, baseType: !1152, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!109, !344, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1128, file: !19, line: 337, baseType: !1157, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!109, !344, !1150}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1128, file: !19, line: 339, baseType: !1161, size: 64, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!109, !494, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !495, file: !14, line: 1199, baseType: !1166, size: 64, offset: 512)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1169)
!1169 = !{!1170, !1181, !1182, !1186, !1187, !1188, !1203, !1226, !1230, !1231, !1254}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1168, file: !19, line: 431, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!109, !494, !109, !109, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1177, line: 8, size: 128, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1176, file: !1177, line: 9, baseType: !488, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1176, file: !1177, line: 10, baseType: !379, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1168, file: !19, line: 432, baseType: !1016, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1168, file: !19, line: 433, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!109, !494, !7}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1168, file: !19, line: 434, baseType: !1183, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1168, file: !19, line: 435, baseType: !1016, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1168, file: !19, line: 436, baseType: !1189, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!109, !494, !109, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1193, file: !19, line: 418, baseType: !109, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1193, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1193, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1193, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1193, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1193, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1193, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1193, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1168, file: !19, line: 437, baseType: !1204, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!109, !494, !1075, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1208, file: !19, line: 346, baseType: !109, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1208, file: !19, line: 347, baseType: !416, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1208, file: !19, line: 348, baseType: !416, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1208, file: !19, line: 349, baseType: !416, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1208, file: !19, line: 350, baseType: !416, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1208, file: !19, line: 351, baseType: !416, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1208, file: !19, line: 352, baseType: !416, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1208, file: !19, line: 353, baseType: !614, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1208, file: !19, line: 355, baseType: !614, size: 64, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1208, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1208, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1208, file: !19, line: 358, baseType: !416, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1208, file: !19, line: 359, baseType: !416, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1208, file: !19, line: 360, baseType: !416, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1208, file: !19, line: 361, baseType: !614, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1208, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1168, file: !19, line: 438, baseType: !1227, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!109, !494, !1164, !1207}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1168, file: !19, line: 440, baseType: !1204, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1168, file: !19, line: 441, baseType: !1232, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!109, !494, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1236, file: !19, line: 412, baseType: !7, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1236, file: !19, line: 413, baseType: !1240, size: 1344, offset: 64)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 1344, elements: !265)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1253}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !19, line: 398, baseType: !7, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1241, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1241, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1241, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1241, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1241, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1241, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1241, file: !19, line: 406, baseType: !418, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1241, file: !19, line: 407, baseType: !1252, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !166, line: 132, baseType: !416)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1241, file: !19, line: 408, baseType: !1252, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1168, file: !19, line: 442, baseType: !1183, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !495, file: !14, line: 1200, baseType: !1256, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !495, file: !14, line: 1201, baseType: !314, size: 64, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !495, file: !14, line: 1202, baseType: !314, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !495, file: !14, line: 1203, baseType: !314, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !495, file: !14, line: 1204, baseType: !379, size: 64, offset: 832)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !495, file: !14, line: 1205, baseType: !1264, size: 320, offset: 896)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1265, line: 48, size: 320, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1266 = !{!1267, !1268, !1269, !1270, !1271}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1264, file: !1265, line: 49, baseType: !608, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1264, file: !1265, line: 55, baseType: !608, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1264, file: !1265, line: 57, baseType: !618, size: 32, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1264, file: !1265, line: 59, baseType: !562, size: 32, offset: 160)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1264, file: !1265, line: 60, baseType: !223, size: 128, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !495, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !495, file: !14, line: 1207, baseType: !191, size: 32, offset: 1248)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !495, file: !14, line: 1209, baseType: !154, size: 64, offset: 1280)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !495, file: !14, line: 1211, baseType: !1276, size: 64, offset: 1344)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !495, file: !14, line: 1223, baseType: !1281, size: 64, offset: 1408)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !396, line: 34, size: 64, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1281, file: !396, line: 35, baseType: !399, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !495, file: !14, line: 1224, baseType: !223, size: 128, offset: 1472)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !495, file: !14, line: 1225, baseType: !1286, size: 64, offset: 1600)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !495, file: !14, line: 1226, baseType: !1289, size: 64, offset: 1664)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !495, file: !14, line: 1227, baseType: !1292, size: 64, offset: 1728)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !495, file: !14, line: 1228, baseType: !1295, size: 64, offset: 1792)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !495, file: !14, line: 1229, baseType: !848, size: 128, offset: 1856)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !495, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !495, file: !14, line: 1231, baseType: !1300, size: 2496, offset: 2048)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1306, !1338}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1300, file: !19, line: 522, baseType: !7, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1300, file: !19, line: 523, baseType: !1264, size: 320, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1300, file: !19, line: 524, baseType: !1305, size: 192, offset: 384)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !265)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1300, file: !19, line: 525, baseType: !1307, size: 1728, offset: 576)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1308, size: 1728, elements: !265)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1309)
!1309 = !{!1310, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1308, file: !19, line: 223, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1313)
!1313 = !{!1314, !1315, !1328, !1329}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1312, file: !19, line: 446, baseType: !109, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1312, file: !19, line: 447, baseType: !1316, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1318, file: !19, line: 313, baseType: !1016, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1318, file: !19, line: 314, baseType: !1016, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1318, file: !19, line: 315, baseType: !1016, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1318, file: !19, line: 316, baseType: !1016, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1318, file: !19, line: 317, baseType: !1131, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1318, file: !19, line: 318, baseType: !1131, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1318, file: !19, line: 319, baseType: !1131, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1318, file: !19, line: 320, baseType: !1161, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1312, file: !19, line: 448, baseType: !533, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1312, file: !19, line: 449, baseType: !1311, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1308, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1308, file: !19, line: 226, baseType: !223, size: 128, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1308, file: !19, line: 227, baseType: !314, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1308, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1308, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1308, file: !19, line: 230, baseType: !1096, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1308, file: !19, line: 231, baseType: !1096, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1308, file: !19, line: 232, baseType: !154, size: 64, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1300, file: !19, line: 526, baseType: !1339, size: 192, offset: 2304)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 192, elements: !265)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !495, file: !14, line: 1233, baseType: !1341, size: 2368, offset: 4544)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1341, file: !14, line: 1185, baseType: !151, size: 16)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1341, file: !14, line: 1186, baseType: !151, size: 16, offset: 16)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1341, file: !14, line: 1187, baseType: !1346, size: 2304, offset: 64)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 2304, elements: !265)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1348, line: 12, size: 768, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1349 = !{!1350, !1364, !1365, !3449, !3450}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1347, file: !1348, line: 13, baseType: !1351, size: 384)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1352, line: 17, size: 384, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1353 = !{!1354, !1355, !1356, !1363}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1351, file: !1352, line: 18, baseType: !109, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1351, file: !1352, line: 19, baseType: !109, size: 32, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1351, file: !1352, line: 20, baseType: !1357, size: 192, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1358, line: 41, baseType: !1359)
!1358 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1358, line: 37, size: 192, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !1358, line: 38, baseType: !171, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1359, file: !1358, line: 39, baseType: !223, size: 128, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1351, file: !1352, line: 22, baseType: !822, size: 128, align: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1347, file: !1348, line: 14, baseType: !676, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1347, file: !1348, line: 15, baseType: !1366, size: 64, offset: 448)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1367, line: 16, size: 64, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1366, file: !1367, line: 17, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1046, line: 746, size: 58368, elements: !1372)
!1372 = !{!1373, !1381, !1382, !1383, !1389, !1390, !1391, !1392, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1463, !1474, !1569, !1573, !1576, !1607, !1608, !1609, !1610, !1621, !1623, !1624, !1625, !1626, !1627, !1628, !1639, !1640, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1657, !1658, !1665, !1666, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2624, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2672, !2678, !2679, !2680, !2681, !2682, !2686, !2689, !2696, !2701, !2704, !2707, !2710, !2713, !2851, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2889, !2890, !2891, !2900, !2908, !2909, !2910, !2911, !2912, !2917, !2918, !2919, !2922, !2923, !2926, !2929, !2932, !2940, !2943, !2944, !3030, !3031, !3032, !3033, !3034, !3040, !3041, !3042, !3043, !3046, !3047, !3050, !3053, !3054, !3057, !3058, !3059, !3062, !3063, !3064, !3065, !3066, !3067, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3099, !3100, !3106, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3118, !3190, !3192, !3193, !3194, !3195, !3196, !3197, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3226, !3227, !3228}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1371, file: !1046, line: 752, baseType: !1374, size: 192)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1375, line: 56, size: 192, elements: !1376)
!1375 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !1375, line: 57, baseType: !314, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1374, file: !1375, line: 58, baseType: !314, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1374, file: !1375, line: 59, baseType: !413, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1374, file: !1375, line: 61, baseType: !413, size: 32, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1371, file: !1046, line: 754, baseType: !7, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1371, file: !1046, line: 767, baseType: !154, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1371, file: !1046, line: 768, baseType: !1384, size: 32, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1385, line: 113, baseType: !1386)
!1385 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1385, line: 111, size: 32, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1386, file: !1385, line: 112, baseType: !191, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !1046, line: 770, baseType: !7, size: 32, offset: 352)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1371, file: !1046, line: 771, baseType: !7, size: 32, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1371, file: !1046, line: 774, baseType: !109, size: 32, offset: 416)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1371, file: !1046, line: 775, baseType: !1393, size: 128, offset: 448)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1394, line: 58, size: 128, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1395 = !{!1396, !1402, !1407, !1408}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1393, file: !1394, line: 59, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1398, line: 60, size: 64, elements: !1399)
!1398 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1397, file: !1398, line: 61, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1394, line: 60, baseType: !1403, size: 32, offset: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !1394, line: 60, size: 32, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1403, file: !1394, line: 61, baseType: !7, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1403, file: !1394, line: 62, baseType: !191, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1393, file: !1394, line: 65, baseType: !208, size: 16, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1393, file: !1394, line: 65, baseType: !208, size: 16, offset: 112)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1371, file: !1046, line: 776, baseType: !7, size: 32, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1371, file: !1046, line: 777, baseType: !314, size: 64, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1371, file: !1046, line: 778, baseType: !1370, size: 64, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1371, file: !1046, line: 787, baseType: !109, size: 32, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1371, file: !1046, line: 788, baseType: !109, size: 32, offset: 800)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1371, file: !1046, line: 790, baseType: !109, size: 32, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1371, file: !1046, line: 792, baseType: !109, size: 32, offset: 864)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1371, file: !1046, line: 793, baseType: !109, size: 32, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1371, file: !1046, line: 794, baseType: !109, size: 32, offset: 928)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1371, file: !1046, line: 795, baseType: !7, size: 32, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1371, file: !1046, line: 797, baseType: !1420, size: 2048, offset: 1024)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1046, line: 551, size: 2048, elements: !1421)
!1421 = !{!1422, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1442, !1445, !1446, !1447}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1420, file: !1046, line: 553, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1046, line: 411, size: 128, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1423, file: !1046, line: 412, baseType: !314, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1423, file: !1046, line: 413, baseType: !413, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1420, file: !1046, line: 554, baseType: !714, size: 192, align: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1420, file: !1046, line: 555, baseType: !416, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1420, file: !1046, line: 556, baseType: !416, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1420, file: !1046, line: 558, baseType: !223, size: 128, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1420, file: !1046, line: 559, baseType: !7, size: 32, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1420, file: !1046, line: 561, baseType: !416, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1420, file: !1046, line: 562, baseType: !416, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1420, file: !1046, line: 563, baseType: !416, size: 64, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1420, file: !1046, line: 564, baseType: !416, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1420, file: !1046, line: 565, baseType: !614, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1420, file: !1046, line: 566, baseType: !416, size: 64, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1420, file: !1046, line: 568, baseType: !416, size: 64, offset: 1024)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1420, file: !1046, line: 571, baseType: !109, size: 32, offset: 1088)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1420, file: !1046, line: 572, baseType: !1441, size: 64, offset: 1152)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1420, file: !1046, line: 574, baseType: !1443, size: 64, offset: 1216)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1046, line: 49, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1420, file: !1046, line: 576, baseType: !1443, size: 64, offset: 1280)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1420, file: !1046, line: 578, baseType: !314, size: 64, offset: 1344)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1420, file: !1046, line: 588, baseType: !1448, size: 512, align: 512, offset: 1536)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1046, line: 497, size: 512, align: 512, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1448, file: !1046, line: 498, baseType: !416, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1448, file: !1046, line: 499, baseType: !416, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1448, file: !1046, line: 500, baseType: !416, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1448, file: !1046, line: 501, baseType: !413, size: 32, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1448, file: !1046, line: 502, baseType: !413, size: 32, offset: 224)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1448, file: !1046, line: 503, baseType: !314, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1448, file: !1046, line: 504, baseType: !314, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1448, file: !1046, line: 505, baseType: !314, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1448, file: !1046, line: 506, baseType: !1459, size: 64, align: 64, offset: 448)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1046, line: 445, size: 64, align: 64, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1459, file: !1046, line: 446, baseType: !7, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1459, file: !1046, line: 447, baseType: !7, size: 32, offset: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1371, file: !1046, line: 798, baseType: !1464, size: 384, offset: 3072)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1046, line: 592, size: 384, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1464, file: !1046, line: 593, baseType: !223, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1464, file: !1046, line: 594, baseType: !314, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1464, file: !1046, line: 595, baseType: !314, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1464, file: !1046, line: 596, baseType: !7, size: 32, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1464, file: !1046, line: 597, baseType: !151, size: 16, offset: 288)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1464, file: !1046, line: 598, baseType: !151, size: 16, offset: 304)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1464, file: !1046, line: 600, baseType: !1473, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1371, file: !1046, line: 799, baseType: !1475, size: 1792, offset: 3456)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1046, line: 610, size: 1792, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1566, !1567}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1475, file: !1046, line: 611, baseType: !714, size: 192, align: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1475, file: !1046, line: 618, baseType: !416, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1475, file: !1046, line: 619, baseType: !416, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1475, file: !1046, line: 620, baseType: !416, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1475, file: !1046, line: 621, baseType: !416, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1475, file: !1046, line: 622, baseType: !416, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1475, file: !1046, line: 629, baseType: !614, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1475, file: !1046, line: 630, baseType: !416, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1475, file: !1046, line: 631, baseType: !7, size: 32, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1475, file: !1046, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1475, file: !1046, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1475, file: !1046, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1475, file: !1046, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1475, file: !1046, line: 662, baseType: !1491, size: 512, offset: 704)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1492)
!1492 = !{!1493, !1501, !1502, !1507, !1562, !1563, !1564, !1565}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1491, file: !25, line: 119, baseType: !1494, size: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1495, line: 9, size: 256, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1494, file: !1495, line: 10, baseType: !714, size: 192, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1494, file: !1495, line: 11, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1500, line: 29, baseType: !614)
!1500 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1491, file: !25, line: 120, baseType: !1499, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1491, file: !25, line: 121, baseType: !1503, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!24, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1491, file: !25, line: 122, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1510)
!1510 = !{!1511, !1536, !1537, !1540, !1545, !1546, !1557, !1561}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1509, file: !25, line: 160, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !25, line: 216, baseType: !562, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1513, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1513, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1513, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1513, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1513, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1513, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1513, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1513, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1513, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1513, file: !25, line: 227, baseType: !151, size: 16, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1513, file: !25, line: 228, baseType: !151, size: 16, offset: 208)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1513, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1513, file: !25, line: 235, baseType: !1499, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1513, file: !25, line: 236, baseType: !1506, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1513, file: !25, line: 237, baseType: !1499, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1513, file: !25, line: 238, baseType: !1506, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1513, file: !25, line: 239, baseType: !1533, size: 4096, align: 512, offset: 512)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1509, size: 4096, align: 512, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 8)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1509, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1509, file: !25, line: 162, baseType: !1538, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !166, line: 32, baseType: !1539)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !298, line: 96, baseType: !109)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1509, file: !25, line: 163, baseType: !1541, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !386, line: 274, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !386, line: 274, size: 32, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1542, file: !386, line: 274, baseType: !390, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1509, file: !25, line: 164, baseType: !1506, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1509, file: !25, line: 165, baseType: !1547, size: 128, offset: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1495, line: 14, size: 128, elements: !1548)
!1548 = !{!1549}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1547, file: !1495, line: 15, baseType: !1550, size: 128)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !715, line: 26, size: 128, elements: !1551)
!1551 = !{!1552, !1556}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1550, file: !715, line: 27, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !715, line: 12, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1553, file: !715, line: 13, baseType: !719, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1550, file: !715, line: 28, baseType: !719, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1509, file: !25, line: 166, baseType: !1558, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1499}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1509, file: !25, line: 167, baseType: !1499, size: 64, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1491, file: !25, line: 123, baseType: !199, size: 8, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1491, file: !25, line: 124, baseType: !199, size: 8, offset: 456)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1491, file: !25, line: 125, baseType: !199, size: 8, offset: 464)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1491, file: !25, line: 126, baseType: !199, size: 8, offset: 472)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1475, file: !1046, line: 671, baseType: !1491, size: 512, offset: 1216)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1475, file: !1046, line: 679, baseType: !1568, size: 64, offset: 1728)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1371, file: !1046, line: 800, baseType: !1570, size: 64, offset: 5248)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1046, line: 800, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1371, file: !1046, line: 809, baseType: !1574, size: 64, offset: 5312)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1046, line: 70, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1371, file: !1046, line: 825, baseType: !1577, size: 2048, align: 512, offset: 5632)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1046, line: 509, size: 2048, align: 512, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1577, file: !1046, line: 511, baseType: !416, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1577, file: !1046, line: 512, baseType: !416, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1577, file: !1046, line: 513, baseType: !416, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1577, file: !1046, line: 514, baseType: !416, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1577, file: !1046, line: 515, baseType: !416, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1577, file: !1046, line: 516, baseType: !416, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1577, file: !1046, line: 518, baseType: !416, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1577, file: !1046, line: 519, baseType: !416, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1577, file: !1046, line: 520, baseType: !614, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1577, file: !1046, line: 522, baseType: !416, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1577, file: !1046, line: 523, baseType: !416, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1577, file: !1046, line: 524, baseType: !614, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1577, file: !1046, line: 526, baseType: !614, size: 64, offset: 768)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1577, file: !1046, line: 527, baseType: !416, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1577, file: !1046, line: 529, baseType: !416, size: 64, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1577, file: !1046, line: 530, baseType: !416, size: 64, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1577, file: !1046, line: 531, baseType: !416, size: 64, offset: 1024)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1577, file: !1046, line: 532, baseType: !416, size: 64, offset: 1088)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1577, file: !1046, line: 533, baseType: !416, size: 64, offset: 1152)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1577, file: !1046, line: 535, baseType: !416, size: 64, offset: 1216)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1577, file: !1046, line: 536, baseType: !416, size: 64, offset: 1280)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1577, file: !1046, line: 537, baseType: !416, size: 64, offset: 1344)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1577, file: !1046, line: 538, baseType: !416, size: 64, offset: 1408)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1577, file: !1046, line: 539, baseType: !416, size: 64, offset: 1472)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1577, file: !1046, line: 540, baseType: !416, size: 64, offset: 1536)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1577, file: !1046, line: 541, baseType: !416, size: 64, offset: 1600)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1577, file: !1046, line: 542, baseType: !416, size: 64, offset: 1664)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1577, file: !1046, line: 543, baseType: !416, size: 64, offset: 1728)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1371, file: !1046, line: 833, baseType: !7, size: 32, offset: 7680)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1371, file: !1046, line: 836, baseType: !7, size: 32, offset: 7712)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1371, file: !1046, line: 837, baseType: !109, size: 32, offset: 7744)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1371, file: !1046, line: 838, baseType: !1611, size: 64, offset: 7808)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1614, line: 19, baseType: !1615)
!1614 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1614, line: 19, size: 64, elements: !1616)
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1615, file: !1614, line: 19, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 64, elements: !1619)
!1619 = !{!1620}
!1620 = !DISubrange(count: 1)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1371, file: !1046, line: 839, baseType: !1622, size: 64, offset: 7872)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1371, file: !1046, line: 840, baseType: !1613, size: 64, offset: 7936)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1371, file: !1046, line: 841, baseType: !154, size: 64, offset: 8000)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1371, file: !1046, line: 843, baseType: !151, size: 16, offset: 8064)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1371, file: !1046, line: 845, baseType: !151, size: 16, offset: 8080)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1371, file: !1046, line: 848, baseType: !109, size: 32, offset: 8096)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1371, file: !1046, line: 849, baseType: !1629, size: 32, offset: 8128)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1046, line: 718, size: 32, elements: !1630)
!1630 = !{!1631, !1638}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1629, file: !1046, line: 724, baseType: !1632, size: 32)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !1046, line: 719, size: 32, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1632, file: !1046, line: 720, baseType: !199, size: 8)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1632, file: !1046, line: 721, baseType: !199, size: 8, offset: 8)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1632, file: !1046, line: 722, baseType: !199, size: 8, offset: 16)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1632, file: !1046, line: 723, baseType: !199, size: 8, offset: 24)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1629, file: !1046, line: 725, baseType: !413, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1371, file: !1046, line: 850, baseType: !223, size: 128, offset: 8192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1371, file: !1046, line: 851, baseType: !1641, size: 64, offset: 8320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1046, line: 60, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1371, file: !1046, line: 855, baseType: !314, size: 64, offset: 8384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1371, file: !1046, line: 856, baseType: !199, size: 8, offset: 8448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1371, file: !1046, line: 857, baseType: !199, size: 8, offset: 8456)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1371, file: !1046, line: 858, baseType: !109, size: 32, offset: 8480)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1371, file: !1046, line: 859, baseType: !223, size: 128, offset: 8512)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1371, file: !1046, line: 860, baseType: !109, size: 32, offset: 8640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1371, file: !1046, line: 861, baseType: !223, size: 128, offset: 8704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1371, file: !1046, line: 873, baseType: !1651, size: 256, offset: 8832)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1046, line: 376, size: 256, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1651, file: !1046, line: 381, baseType: !314, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1651, file: !1046, line: 384, baseType: !418, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1651, file: !1046, line: 389, baseType: !418, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1651, file: !1046, line: 392, baseType: !418, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1371, file: !1046, line: 875, baseType: !223, size: 128, offset: 9088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1371, file: !1046, line: 877, baseType: !1659, size: 320, offset: 9216)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1660, line: 86, size: 320, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1659, file: !1660, line: 87, baseType: !109, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1659, file: !1660, line: 88, baseType: !223, size: 128, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1659, file: !1660, line: 89, baseType: !223, size: 128, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1371, file: !1046, line: 878, baseType: !714, size: 192, align: 64, offset: 9536)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1371, file: !1046, line: 881, baseType: !1667, size: 64, offset: 9728)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1669)
!1669 = !{!1670, !2543}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !38, line: 734, baseType: !1671, size: 10240)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !38, line: 734, size: 10240, elements: !1672)
!1672 = !{!1673, !1677, !1690, !2420, !2421, !2422, !2423, !2424, !2425, !2432, !2433, !2434, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2473, !2475, !2478, !2523, !2524, !2525, !2528, !2529, !2530, !2533, !2534, !2535, !2541, !2542}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !38, line: 739, baseType: !1674, size: 512, align: 512)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !38, line: 739, size: 512, align: 512, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1674, file: !38, line: 747, baseType: !191, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1671, file: !38, line: 750, baseType: !1678, size: 128, offset: 512)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1679, line: 218, size: 128, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1680 = !{!1681, !1688, !1689}
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1679, line: 219, baseType: !1682, size: 32)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !1679, line: 219, size: 32, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1682, file: !1679, line: 220, baseType: !171, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1682, file: !1679, line: 221, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1679, line: 197, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1679, line: 197, elements: !891)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1678, file: !1679, line: 223, baseType: !7, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1678, file: !1679, line: 224, baseType: !154, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1671, file: !38, line: 752, baseType: !1691, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!314, !1694, !314, !314, !314, !314}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1696)
!1696 = !{!1697, !1703, !1704, !1706, !1707, !1708, !1709, !1710, !1760, !1950, !1959, !1960, !1961, !2410, !2411, !2412, !2413, !2415, !2416, !2419}
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !14, line: 995, baseType: !1698, size: 128)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1695, file: !14, line: 995, size: 128, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1698, file: !14, line: 996, baseType: !1397, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1698, file: !14, line: 997, baseType: !822, size: 128, align: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1698, file: !14, line: 998, baseType: !7, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1695, file: !14, line: 1005, baseType: !171, size: 32, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1695, file: !14, line: 1006, baseType: !1705, size: 32, offset: 160)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !166, line: 156, baseType: !7)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1695, file: !14, line: 1007, baseType: !608, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1695, file: !14, line: 1008, baseType: !604, size: 256, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1695, file: !14, line: 1009, baseType: !504, size: 64, offset: 512)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1695, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1695, file: !14, line: 1011, baseType: !1711, size: 256, offset: 640)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1712)
!1712 = !{!1713, !1734, !1756, !1757, !1758, !1759}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1711, file: !14, line: 949, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1715, line: 34, baseType: !1716)
!1715 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1715, line: 25, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1716, file: !1715, line: 26, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1720, line: 27, baseType: !1721)
!1720 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1720, line: 13, size: 64, elements: !1722)
!1722 = !{!1723, !1733}
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !1720, line: 14, baseType: !1724, size: 32)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !1720, line: 14, size: 32, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1724, file: !1720, line: 15, baseType: !191, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !1720, line: 16, baseType: !1728, size: 32)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1724, file: !1720, line: 16, size: 32, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1728, file: !1720, line: 18, baseType: !199, size: 8)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1728, file: !1720, line: 19, baseType: !1732, size: 24, offset: 8)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 24, elements: !265)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1721, file: !1720, line: 26, baseType: !183, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1711, file: !14, line: 950, baseType: !1735, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1741, !1743, !1744, !1745, !1746}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1736, file: !30, line: 61, baseType: !1384, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1736, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1736, file: !30, line: 63, baseType: !171, size: 32, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1736, file: !30, line: 65, baseType: !1742, size: 256, offset: 128)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 256, elements: !832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1736, file: !30, line: 66, baseType: !972, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1736, file: !30, line: 68, baseType: !1357, size: 192, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1736, file: !30, line: 69, baseType: !822, size: 128, align: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1736, file: !30, line: 70, baseType: !1747, offset: 768)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1748, elements: !1754)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1748, file: !30, line: 55, baseType: !109, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1748, file: !30, line: 56, baseType: !1752, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1754 = !{!1755}
!1755 = !DISubrange(count: -1)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1711, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1711, file: !14, line: 952, baseType: !350, size: 32, offset: 160)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1711, file: !14, line: 952, baseType: !350, size: 32, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1711, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1695, file: !14, line: 1012, baseType: !1761, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1764, line: 110, size: 1472, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1782, !1783, !1784, !1785, !1786, !1787, !1895, !1896, !1897, !1898, !1899, !1930, !1933, !1937, !1945}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1763, file: !1764, line: 111, baseType: !608, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1763, file: !1764, line: 112, baseType: !350, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1763, file: !1764, line: 113, baseType: !359, size: 32, offset: 96)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1763, file: !1764, line: 114, baseType: !350, size: 32, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1763, file: !1764, line: 115, baseType: !359, size: 32, offset: 160)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1763, file: !1764, line: 116, baseType: !350, size: 32, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1763, file: !1764, line: 117, baseType: !359, size: 32, offset: 224)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1763, file: !1764, line: 118, baseType: !350, size: 32, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1763, file: !1764, line: 119, baseType: !359, size: 32, offset: 288)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1763, file: !1764, line: 120, baseType: !7, size: 32, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1763, file: !1764, line: 121, baseType: !1777, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1778, line: 24, baseType: !1779)
!1778 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1778, line: 24, size: 64, elements: !1780)
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1779, file: !1778, line: 24, baseType: !416, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1763, file: !1764, line: 122, baseType: !1777, size: 64, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1763, file: !1764, line: 123, baseType: !1777, size: 64, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1763, file: !1764, line: 124, baseType: !1777, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1763, file: !1764, line: 125, baseType: !1777, size: 64, offset: 640)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1763, file: !1764, line: 127, baseType: !202, size: 8, offset: 704)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1763, file: !1764, line: 129, baseType: !1788, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1790, line: 195, size: 1728, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1791 = !{!1792, !1793, !1796, !1801, !1802, !1805, !1806, !1811, !1812, !1813, !1814, !1817, !1818, !1819, !1820, !1821, !1859, !1880}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1789, file: !1790, line: 196, baseType: !1384, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1789, file: !1790, line: 197, baseType: !1794, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1790, line: 28, baseType: !1795)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !166, line: 104, baseType: !600)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !1790, line: 198, baseType: !1797, size: 192, offset: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !1790, line: 198, size: 192, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1797, file: !1790, line: 199, baseType: !223, size: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1797, file: !1790, line: 200, baseType: !714, size: 192, align: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1789, file: !1790, line: 205, baseType: !1264, size: 320, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1789, file: !1790, line: 206, baseType: !1803, size: 64, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1790, line: 206, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1789, file: !1790, line: 207, baseType: !154, size: 64, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !1790, line: 208, baseType: !1807, size: 64, offset: 704)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !1790, line: 208, size: 64, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1807, file: !1790, line: 209, baseType: !1104, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1807, file: !1790, line: 210, baseType: !1104, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1789, file: !1790, line: 212, baseType: !1104, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1789, file: !1790, line: 213, baseType: !350, size: 32, offset: 832)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1789, file: !1790, line: 214, baseType: !359, size: 32, offset: 864)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1789, file: !1790, line: 215, baseType: !1815, size: 32, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1790, line: 31, baseType: !1816)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !166, line: 110, baseType: !413)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1789, file: !1790, line: 216, baseType: !151, size: 16, offset: 928)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1789, file: !1790, line: 217, baseType: !151, size: 16, offset: 944)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1789, file: !1790, line: 221, baseType: !740, size: 16, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1789, file: !1790, line: 228, baseType: !314, size: 64, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !1790, line: 245, baseType: !1822, size: 320, offset: 1088)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !1790, line: 245, size: 320, elements: !1823)
!1823 = !{!1824, !1851}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1822, file: !1790, line: 246, baseType: !1825, size: 320)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1790, line: 114, size: 320, elements: !1826)
!1826 = !{!1827, !1828, !1840, !1843, !1850}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1825, file: !1790, line: 116, baseType: !314, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !1790, line: 117, baseType: !1829, size: 64, offset: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1825, file: !1790, line: 117, size: 64, elements: !1830)
!1830 = !{!1831, !1839}
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !1790, line: 118, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1829, file: !1790, line: 118, size: 64, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1832, file: !1790, line: 120, baseType: !208, size: 16)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1832, file: !1790, line: 121, baseType: !1836, size: 48, offset: 16)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 48, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 6)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1829, file: !1790, line: 127, baseType: !314, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1825, file: !1790, line: 129, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1790, line: 102, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1825, file: !1790, line: 130, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1790, line: 108, size: 192, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1845, file: !1790, line: 109, baseType: !822, size: 128, align: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1845, file: !1790, line: 110, baseType: !1384, size: 32, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1845, file: !1790, line: 111, baseType: !165, size: 8, offset: 160)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1825, file: !1790, line: 131, baseType: !219, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !1790, line: 247, baseType: !1852, size: 320)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !1790, line: 247, size: 320, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1852, file: !1790, line: 248, baseType: !314, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1852, file: !1790, line: 249, baseType: !314, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1852, file: !1790, line: 250, baseType: !1841, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1852, file: !1790, line: 251, baseType: !1844, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1852, file: !1790, line: 252, baseType: !264, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !1790, line: 260, baseType: !1860, size: 256, offset: 1408)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !1790, line: 260, size: 256, elements: !1861)
!1861 = !{!1862, !1868}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1860, file: !1790, line: 261, baseType: !1863, size: 256)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1790, line: 134, size: 256, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1863, file: !1790, line: 135, baseType: !154, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1863, file: !1790, line: 136, baseType: !1867, size: 256)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !832)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !1790, line: 262, baseType: !1869, size: 256)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !1790, line: 262, size: 256, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1869, file: !1790, line: 264, baseType: !223, size: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1869, file: !1790, line: 265, baseType: !1873, size: 128, offset: 128)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1874, line: 22, size: 128, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1875 = !{!1876, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1873, file: !1874, line: 23, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1874, line: 23, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1873, file: !1874, line: 24, baseType: !314, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1789, file: !1790, line: 280, baseType: !1881, size: 64, offset: 1664)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1790, line: 176, size: 192, elements: !1883)
!1883 = !{!1884, !1893, !1894}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1882, file: !1790, line: 177, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1790, line: 171, baseType: !1886)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!109, !1788, !1889, !1891, !1788}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1882, file: !1790, line: 178, baseType: !1788, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1882, file: !1790, line: 179, baseType: !1841, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1763, file: !1764, line: 130, baseType: !1788, size: 64, offset: 832)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1763, file: !1764, line: 131, baseType: !1788, size: 64, offset: 896)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1763, file: !1764, line: 132, baseType: !1788, size: 64, offset: 960)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1763, file: !1764, line: 135, baseType: !154, size: 64, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1763, file: !1764, line: 137, baseType: !1900, size: 64, offset: 1088)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1902, line: 14, size: 1088, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1903 = !{!1904, !1905, !1914, !1915, !1916, !1917, !1918, !1919}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1901, file: !1902, line: 15, baseType: !1384, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1901, file: !1902, line: 17, baseType: !1906, size: 320, offset: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1907, line: 22, size: 320, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1908 = !{!1909, !1910, !1911, !1912}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1906, file: !1907, line: 23, baseType: !562, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1906, file: !1907, line: 24, baseType: !614, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1906, file: !1907, line: 26, baseType: !223, size: 128, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1906, file: !1907, line: 28, baseType: !1913, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1901, file: !1902, line: 19, baseType: !314, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1901, file: !1902, line: 20, baseType: !608, size: 64, offset: 448)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1901, file: !1902, line: 23, baseType: !848, size: 128, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1901, file: !1902, line: 24, baseType: !350, size: 32, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1901, file: !1902, line: 29, baseType: !608, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1901, file: !1902, line: 36, baseType: !1920, size: 320, offset: 768)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1921, line: 15, size: 320, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1920, file: !1921, line: 16, baseType: !562, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1920, file: !1921, line: 18, baseType: !109, size: 32, offset: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1920, file: !1921, line: 19, baseType: !109, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1920, file: !1921, line: 20, baseType: !109, size: 32, offset: 96)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1920, file: !1921, line: 21, baseType: !109, size: 32, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1920, file: !1921, line: 22, baseType: !314, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1920, file: !1921, line: 23, baseType: !314, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1763, file: !1764, line: 138, baseType: !1931, size: 64, offset: 1152)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !351, line: 18, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1763, file: !1764, line: 139, baseType: !1934, size: 64, offset: 1216)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1936, line: 16, flags: DIFlagFwdDecl)
!1936 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1763, file: !1764, line: 140, baseType: !1938, size: 64, offset: 1280)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1764, line: 25, size: 64, elements: !1940)
!1940 = !{!1941, !1942, !1943}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1939, file: !1764, line: 26, baseType: !191, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1939, file: !1764, line: 27, baseType: !109, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1939, file: !1764, line: 28, baseType: !1944, offset: 64)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, elements: !1754)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1764, line: 142, baseType: !1946, size: 128, offset: 1344)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1763, file: !1764, line: 142, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1946, file: !1764, line: 143, baseType: !109, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1946, file: !1764, line: 144, baseType: !822, size: 128, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1695, file: !14, line: 1013, baseType: !1951, size: 256, offset: 960)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1951, file: !14, line: 971, baseType: !314, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1951, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1951, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1951, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1951, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1951, file: !14, line: 976, baseType: !504, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1695, file: !14, line: 1014, baseType: !1176, size: 128, offset: 1216)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1695, file: !14, line: 1015, baseType: !344, size: 64, offset: 1344)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1695, file: !14, line: 1016, baseType: !1962, size: 64, offset: 1408)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1965)
!1965 = !{!1966, !1967, !1971, !1976, !1980, !2009, !2010, !2016, !2029, !2036, !2040, !2041, !2332, !2333, !2337, !2342, !2343, !2347, !2351, !2357, !2358, !2362, !2363, !2369, !2373, !2377, !2383, !2387, !2391, !2395, !2399, !2400, !2406}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1964, file: !14, line: 1915, baseType: !533, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1964, file: !14, line: 1916, baseType: !1968, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!504, !1694, !504, !109}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1964, file: !14, line: 1917, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!296, !1694, !264, !311, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1964, file: !14, line: 1918, baseType: !1977, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!296, !1694, !219, !311, !1975}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1964, file: !14, line: 1919, baseType: !1981, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!296, !1984, !2006}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1993, !1994, !1995, !1996}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1985, file: !14, line: 374, baseType: !1694, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1985, file: !14, line: 375, baseType: !504, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1985, file: !14, line: 376, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1984, !300}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1985, file: !14, line: 377, baseType: !154, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1985, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1985, file: !14, line: 379, baseType: !208, size: 16, offset: 288)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !14, line: 380, baseType: !1997, size: 64, offset: 320)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !14, line: 380, size: 64, elements: !1998)
!1998 = !{!1999, !2002}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1997, file: !14, line: 386, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1997, file: !14, line: 395, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!296, !154}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2008, line: 17, flags: DIFlagFwdDecl)
!2008 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1964, file: !14, line: 1920, baseType: !1981, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1964, file: !14, line: 1921, baseType: !2011, size: 64, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!109, !1984, !2014, !7}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1964, file: !14, line: 1923, baseType: !2017, size: 64, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!109, !1694, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2022)
!2022 = !{!2023, !2028}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2021, file: !14, line: 1859, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!165, !2020, !219, !109, !504, !416, !7}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2021, file: !14, line: 1860, baseType: !504, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1964, file: !14, line: 1924, baseType: !2030, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!2033, !1694, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !148, line: 59, baseType: !7)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !519, line: 31, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1964, file: !14, line: 1925, baseType: !2037, size: 64, offset: 576)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!300, !1694, !7, !314}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1964, file: !14, line: 1926, baseType: !2037, size: 64, offset: 640)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1964, file: !14, line: 1927, baseType: !2042, size: 64, offset: 704)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!109, !1694, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2047)
!2047 = !{!2048, !2057, !2058, !2066, !2073, !2074, !2079, !2080, !2085, !2086, !2089, !2325, !2326, !2327, !2328, !2329, !2330}
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !38, line: 628, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2046, file: !38, line: 628, size: 128, elements: !2050)
!2050 = !{!2051, !2056}
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !38, line: 629, baseType: !2052, size: 128)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2049, file: !38, line: 629, size: 128, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2052, file: !38, line: 631, baseType: !314, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2052, file: !38, line: 632, baseType: !314, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2049, file: !38, line: 635, baseType: !822, size: 128, align: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2046, file: !38, line: 639, baseType: !1667, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2046, file: !38, line: 640, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2060, line: 297, baseType: !2061)
!2060 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2060, line: 297, size: 64, elements: !2062)
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2061, file: !2060, line: 297, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2065, line: 19, baseType: !314)
!2065 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !38, line: 646, baseType: !2067, size: 64, offset: 256)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2046, file: !38, line: 646, size: 64, elements: !2068)
!2068 = !{!2069, !2072}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2067, file: !38, line: 647, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !314)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2067, file: !38, line: 648, baseType: !2071, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2046, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2046, file: !38, line: 667, baseType: !2075, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2077)
!2077 = !{!2078}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2076, file: !38, line: 580, baseType: !1264, size: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2046, file: !38, line: 670, baseType: !165, size: 8, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2046, file: !38, line: 681, baseType: !2081, size: 256, offset: 512)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2046, file: !38, line: 678, size: 256, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2081, file: !38, line: 679, baseType: !714, size: 192, align: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2081, file: !38, line: 680, baseType: !314, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2046, file: !38, line: 689, baseType: !223, size: 128, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2046, file: !38, line: 691, baseType: !2087, size: 64, offset: 896)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2046, file: !38, line: 694, baseType: !2090, size: 64, offset: 960)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2093, line: 563, size: 1024, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2094 = !{!2095, !2099, !2100, !2104, !2108, !2112, !2289, !2293, !2297, !2301, !2302, !2303, !2307, !2311, !2317, !2321}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2092, file: !2093, line: 564, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !2045}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2092, file: !2093, line: 569, baseType: !2096, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2092, file: !2093, line: 571, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!109, !2045, !314}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2092, file: !2093, line: 572, baseType: !2105, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!109, !2045}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2092, file: !2093, line: 578, baseType: !2109, size: 64, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!109, !2045, !314, !314, !314}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2092, file: !2093, line: 580, baseType: !2113, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2093, line: 512, size: 896, elements: !2119)
!2119 = !{!2120, !2128, !2129, !2136, !2143, !2153, !2282, !2283, !2285, !2287}
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2118, file: !2093, line: 513, baseType: !2121, size: 320)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2118, file: !2093, line: 513, size: 320, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2127}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2121, file: !2093, line: 514, baseType: !2045, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2121, file: !2093, line: 515, baseType: !1116, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2121, file: !2093, line: 516, baseType: !314, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2121, file: !2093, line: 517, baseType: !314, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2121, file: !2093, line: 518, baseType: !314, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !2093, line: 520, baseType: !37, size: 32, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2118, file: !2093, line: 522, baseType: !2130, size: 64, offset: 384)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2065, line: 22, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2065, line: 22, size: 64, elements: !2133)
!2133 = !{!2134}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2132, file: !2065, line: 22, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2065, line: 15, baseType: !314)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2118, file: !2093, line: 524, baseType: !2137, size: 64, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2060, line: 372, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2060, line: 372, size: 64, elements: !2140)
!2140 = !{!2141}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2139, file: !2060, line: 372, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2065, line: 16, baseType: !314)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2118, file: !2093, line: 527, baseType: !2144, size: 64, offset: 512)
!2144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2118, file: !2093, line: 527, size: 64, elements: !2145)
!2145 = !{!2146, !2152}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2144, file: !2093, line: 528, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2065, line: 21, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2065, line: 21, size: 64, elements: !2149)
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2148, file: !2065, line: 21, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2065, line: 14, baseType: !314)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2144, file: !2093, line: 529, baseType: !2131, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2118, file: !2093, line: 534, baseType: !2154, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2156)
!2156 = !{!2157, !2158, !2276, !2281}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !38, line: 75, baseType: !314, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !38, line: 83, baseType: !2159, size: 320, offset: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2155, file: !38, line: 83, size: 320, elements: !2160)
!2160 = !{!2161, !2182, !2196, !2200, !2275}
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 84, baseType: !2162, size: 320)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !38, line: 84, size: 320, elements: !2163)
!2163 = !{!2164, !2175, !2176, !2181}
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !38, line: 90, baseType: !2165, size: 128)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !38, line: 90, size: 128, elements: !2166)
!2166 = !{!2167, !2168, !2173, !2174}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2165, file: !38, line: 91, baseType: !223, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !38, line: 94, baseType: !2169, size: 128)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2165, file: !38, line: 94, size: 128, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2169, file: !38, line: 96, baseType: !154, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2169, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2165, file: !38, line: 102, baseType: !223, size: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2165, file: !38, line: 103, baseType: !223, size: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2162, file: !38, line: 106, baseType: !340, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !38, line: 107, baseType: !2177, size: 64, offset: 192)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !38, line: 107, size: 64, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2177, file: !38, line: 108, baseType: !314, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2177, file: !38, line: 109, baseType: !314, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2162, file: !38, line: 117, baseType: !314, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 119, baseType: !2183, size: 320)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !38, line: 119, size: 320, elements: !2184)
!2184 = !{!2185, !2186, !2189, !2190, !2191}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2183, file: !38, line: 124, baseType: !314, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2183, file: !38, line: 125, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2183, file: !38, line: 126, baseType: !314, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2183, file: !38, line: 127, baseType: !314, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2183, file: !38, line: 128, baseType: !2192, size: 64, offset: 256)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2183, file: !38, line: 128, size: 64, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2192, file: !38, line: 133, baseType: !314, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2192, file: !38, line: 138, baseType: !608, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 141, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !38, line: 141, size: 64, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2197, file: !38, line: 142, baseType: !314, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 144, baseType: !2201, size: 128)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !38, line: 144, size: 128, elements: !2202)
!2202 = !{!2203, !2274}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2201, file: !38, line: 146, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2206)
!2206 = !{!2207, !2217, !2238, !2239, !2240, !2241, !2242, !2256, !2257, !2258}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2205, file: !54, line: 127, baseType: !2208, size: 384)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2209)
!2209 = !{!2210, !2211, !2213, !2214, !2215, !2216}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2208, file: !54, line: 22, baseType: !314, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2208, file: !54, line: 23, baseType: !2212, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2208, file: !54, line: 24, baseType: !2212, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2208, file: !54, line: 25, baseType: !314, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2208, file: !54, line: 26, baseType: !314, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2208, file: !54, line: 27, baseType: !314, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2205, file: !54, line: 128, baseType: !2218, size: 128, offset: 384)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2219, line: 105, size: 128, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2218, file: !2219, line: 110, baseType: !314, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2218, file: !2219, line: 118, baseType: !2223, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2219, line: 95, size: 448, elements: !2225)
!2225 = !{!2226, !2227, !2233, !2234, !2235, !2236, !2237}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2224, file: !2219, line: 96, baseType: !608, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2224, file: !2219, line: 97, baseType: !2228, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2219, line: 60, baseType: !2230)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !2232}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2224, file: !2219, line: 98, baseType: !2228, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2224, file: !2219, line: 99, baseType: !165, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2224, file: !2219, line: 100, baseType: !165, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2224, file: !2219, line: 101, baseType: !822, size: 128, align: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2224, file: !2219, line: 102, baseType: !2232, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2205, file: !54, line: 129, baseType: !553, size: 256, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2205, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2205, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2205, file: !54, line: 132, baseType: !314, size: 64, offset: 832)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2205, file: !54, line: 133, baseType: !2243, size: 64, offset: 896)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2245)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2246)
!2246 = !{!2247, !2251, !2252}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2245, file: !54, line: 83, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2154}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2245, file: !54, line: 89, baseType: !2113, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2245, file: !54, line: 100, baseType: !2253, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!109, !2204, !314, !314, !109}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2205, file: !54, line: 134, baseType: !154, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2205, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !54, line: 136, baseType: !2259, size: 128, offset: 1088)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !54, line: 136, size: 128, elements: !2260)
!2260 = !{!2261, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2259, file: !54, line: 137, baseType: !2262, size: 128)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2263, line: 6, size: 128, elements: !2264)
!2263 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2262, file: !2263, line: 7, baseType: !416, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2262, file: !2263, line: 8, baseType: !416, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !54, line: 138, baseType: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !54, line: 138, elements: !2269)
!2269 = !{!2270, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2268, file: !54, line: 138, baseType: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !54, line: 138, elements: !891)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2268, file: !54, line: 138, baseType: !2273)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2262, elements: !1754)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2201, file: !38, line: 147, baseType: !154, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2159, file: !38, line: 161, baseType: !822, size: 128, align: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !38, line: 164, baseType: !2277, size: 32, offset: 384)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2155, file: !38, line: 164, size: 32, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2277, file: !38, line: 169, baseType: !191, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2277, file: !38, line: 177, baseType: !7, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2155, file: !38, line: 181, baseType: !191, size: 32, offset: 416)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2118, file: !2093, line: 535, baseType: !2154, size: 64, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2118, file: !2093, line: 541, baseType: !2284, size: 64, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2118, file: !2093, line: 545, baseType: !2286, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2118, file: !2093, line: 549, baseType: !2288, size: 64, offset: 832)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2060, line: 520, baseType: !2154)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2092, file: !2093, line: 581, baseType: !2290, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!2116, !2117, !7}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2092, file: !2093, line: 582, baseType: !2294, size: 64, offset: 448)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!2116, !2117, !314, !314}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2092, file: !2093, line: 584, baseType: !2298, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!314, !2045}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2092, file: !2093, line: 588, baseType: !2113, size: 64, offset: 576)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2092, file: !2093, line: 591, baseType: !2113, size: 64, offset: 640)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2092, file: !2093, line: 597, baseType: !2304, size: 64, offset: 704)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!109, !2045, !314, !154, !109, !109}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2092, file: !2093, line: 603, baseType: !2308, size: 64, offset: 768)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!219, !2045}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2092, file: !2093, line: 613, baseType: !2312, size: 64, offset: 832)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!109, !2045, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1046, line: 54, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2092, file: !2093, line: 625, baseType: !2318, size: 64, offset: 896)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!2315, !2045, !314}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2092, file: !2093, line: 633, baseType: !2322, size: 64, offset: 960)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2154, !2045, !314}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2046, file: !38, line: 697, baseType: !314, size: 64, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2046, file: !38, line: 699, baseType: !1694, size: 64, offset: 1088)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2046, file: !38, line: 700, baseType: !154, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2046, file: !38, line: 711, baseType: !608, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2046, file: !38, line: 717, baseType: !2315, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2046, file: !38, line: 722, baseType: !2331, offset: 1344)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !891)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1964, file: !14, line: 1928, baseType: !314, size: 64, offset: 768)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1964, file: !14, line: 1929, baseType: !2334, size: 64, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!109, !344, !1694}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1964, file: !14, line: 1930, baseType: !2338, size: 64, offset: 896)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!109, !1694, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !154)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1964, file: !14, line: 1931, baseType: !2334, size: 64, offset: 960)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1964, file: !14, line: 1932, baseType: !2344, size: 64, offset: 1024)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!109, !1694, !504, !504, !109}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1964, file: !14, line: 1933, baseType: !2348, size: 64, offset: 1088)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!109, !109, !1694, !109}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1964, file: !14, line: 1934, baseType: !2352, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!109, !1694, !109, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1964, file: !14, line: 1935, baseType: !1691, size: 64, offset: 1216)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1964, file: !14, line: 1936, baseType: !2359, size: 64, offset: 1280)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!109, !109}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1964, file: !14, line: 1937, baseType: !2352, size: 64, offset: 1344)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1964, file: !14, line: 1938, baseType: !2364, size: 64, offset: 1408)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!296, !2367, !1694, !1975, !311, !7}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1046, line: 59, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1964, file: !14, line: 1939, baseType: !2370, size: 64, offset: 1472)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!296, !1694, !1975, !2367, !311, !7}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1964, file: !14, line: 1940, baseType: !2374, size: 64, offset: 1536)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !1694}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1964, file: !14, line: 1941, baseType: !2378, size: 64, offset: 1600)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!109, !1694, !109, !2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1964, file: !14, line: 1942, baseType: !2384, size: 64, offset: 1664)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!300, !1694, !109, !504, !504}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1964, file: !14, line: 1944, baseType: !2388, size: 64, offset: 1728)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !1044, !1694}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1964, file: !14, line: 1948, baseType: !2392, size: 64, offset: 1792)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!296, !1694, !504, !1694, !504, !311, !7}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1964, file: !14, line: 1950, baseType: !2396, size: 64, offset: 1856)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!504, !1694, !504, !1694, !504, !504, !7}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1964, file: !14, line: 1953, baseType: !2344, size: 64, offset: 1920)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1964, file: !14, line: 1954, baseType: !2401, size: 64, offset: 1984)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!109, !2404, !7}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1964, file: !14, line: 1955, baseType: !2407, size: 64, offset: 2048)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!109, !2404, !2014, !7}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1695, file: !14, line: 1018, baseType: !416, size: 64, offset: 1472)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1695, file: !14, line: 1020, baseType: !154, size: 64, offset: 1536)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1695, file: !14, line: 1023, baseType: !154, size: 64, offset: 1600)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1695, file: !14, line: 1027, baseType: !2414, size: 64, offset: 1664)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1695, file: !14, line: 1029, baseType: !340, size: 64, offset: 1728)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1695, file: !14, line: 1030, baseType: !2417, size: 32, offset: 1792)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2418, line: 8, baseType: !413)
!2418 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1695, file: !14, line: 1031, baseType: !2417, size: 32, offset: 1824)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1671, file: !38, line: 756, baseType: !314, size: 64, offset: 704)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1671, file: !38, line: 757, baseType: !314, size: 64, offset: 768)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1671, file: !38, line: 760, baseType: !314, size: 64, offset: 832)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1671, file: !38, line: 761, baseType: !314, size: 64, offset: 896)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1671, file: !38, line: 763, baseType: !314, size: 64, offset: 960)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1671, file: !38, line: 764, baseType: !2426, size: 64, offset: 1024)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2060, line: 299, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2060, line: 299, size: 64, elements: !2429)
!2429 = !{!2430}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2428, file: !2060, line: 299, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2065, line: 18, baseType: !314)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1671, file: !38, line: 773, baseType: !191, size: 32, offset: 1088)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1671, file: !38, line: 785, baseType: !191, size: 32, offset: 1120)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1671, file: !38, line: 795, baseType: !2435, size: 64, offset: 1152)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2436, file: !38, line: 727, baseType: !416, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2436, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1671, file: !38, line: 801, baseType: !314, size: 64, offset: 1216)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1671, file: !38, line: 804, baseType: !608, size: 64, offset: 1280)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1671, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1671, file: !38, line: 808, baseType: !171, size: 32, offset: 1376)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1671, file: !38, line: 823, baseType: !1264, size: 320, offset: 1408)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1671, file: !38, line: 825, baseType: !223, size: 128, offset: 1728)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1671, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1671, file: !38, line: 849, baseType: !314, size: 64, offset: 1920)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1671, file: !38, line: 850, baseType: !314, size: 64, offset: 1984)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1671, file: !38, line: 852, baseType: !314, size: 64, offset: 2048)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1671, file: !38, line: 853, baseType: !314, size: 64, offset: 2112)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1671, file: !38, line: 854, baseType: !610, size: 64, offset: 2176)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1671, file: !38, line: 855, baseType: !314, size: 64, offset: 2240)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1671, file: !38, line: 856, baseType: !314, size: 64, offset: 2304)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1671, file: !38, line: 857, baseType: !314, size: 64, offset: 2368)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1671, file: !38, line: 858, baseType: !314, size: 64, offset: 2432)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1671, file: !38, line: 865, baseType: !390, size: 32, offset: 2496)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1671, file: !38, line: 867, baseType: !171, size: 32, offset: 2528)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1671, file: !38, line: 869, baseType: !314, size: 64, offset: 2560)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1671, file: !38, line: 869, baseType: !314, size: 64, offset: 2624)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1671, file: !38, line: 869, baseType: !314, size: 64, offset: 2688)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1671, file: !38, line: 869, baseType: !314, size: 64, offset: 2752)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1671, file: !38, line: 870, baseType: !314, size: 64, offset: 2816)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1671, file: !38, line: 870, baseType: !314, size: 64, offset: 2880)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1671, file: !38, line: 870, baseType: !314, size: 64, offset: 2944)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1671, file: !38, line: 871, baseType: !314, size: 64, offset: 3008)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1671, file: !38, line: 871, baseType: !314, size: 64, offset: 3072)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1671, file: !38, line: 871, baseType: !314, size: 64, offset: 3136)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1671, file: !38, line: 871, baseType: !314, size: 64, offset: 3200)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1671, file: !38, line: 873, baseType: !2470, size: 3328, offset: 3264)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 3328, elements: !2471)
!2471 = !{!2472}
!2472 = !DISubrange(count: 52)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1671, file: !38, line: 875, baseType: !2474, size: 1280, offset: 6592)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 1280, elements: !832)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1671, file: !38, line: 877, baseType: !2476, size: 64, offset: 7872)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1671, file: !38, line: 880, baseType: !2479, size: 1088, offset: 7936)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2480, line: 72, baseType: !2481)
!2480 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2480, line: 23, size: 1088, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2490, !2491, !2492, !2493, !2520, !2521, !2522}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2481, file: !2480, line: 28, baseType: !416, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2481, file: !2480, line: 38, baseType: !610, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2481, file: !2480, line: 40, baseType: !314, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2481, file: !2480, line: 43, baseType: !1264, size: 320, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2481, file: !2480, line: 44, baseType: !2488, size: 64, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2480, line: 44, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2481, file: !2480, line: 48, baseType: !314, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2481, file: !2480, line: 59, baseType: !604, size: 256, offset: 640)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2481, file: !2480, line: 60, baseType: !154, size: 64, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2481, file: !2480, line: 61, baseType: !2494, size: 64, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2497, line: 13, size: 1216, elements: !2498)
!2497 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2496, file: !2497, line: 14, baseType: !154, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2496, file: !2497, line: 15, baseType: !314, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2496, file: !2497, line: 17, baseType: !314, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2496, file: !2497, line: 17, baseType: !314, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2496, file: !2497, line: 18, baseType: !314, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2496, file: !2497, line: 18, baseType: !314, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2496, file: !2497, line: 19, baseType: !2506, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2496, file: !2497, line: 21, baseType: !300, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2496, file: !2497, line: 23, baseType: !300, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2496, file: !2497, line: 24, baseType: !300, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2496, file: !2497, line: 25, baseType: !300, size: 64, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2496, file: !2497, line: 26, baseType: !300, size: 64, offset: 704)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2496, file: !2497, line: 27, baseType: !300, size: 64, offset: 768)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2496, file: !2497, line: 28, baseType: !300, size: 64, offset: 832)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2496, file: !2497, line: 29, baseType: !300, size: 64, offset: 896)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2496, file: !2497, line: 30, baseType: !300, size: 64, offset: 960)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2496, file: !2497, line: 31, baseType: !300, size: 64, offset: 1024)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2496, file: !2497, line: 32, baseType: !300, size: 64, offset: 1088)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2496, file: !2497, line: 33, baseType: !300, size: 64, offset: 1152)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2481, file: !2480, line: 63, baseType: !191, size: 32, offset: 1024)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2481, file: !2480, line: 69, baseType: !208, size: 16, offset: 1056)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2481, file: !2480, line: 70, baseType: !738, size: 16, offset: 1072)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !38, line: 882, baseType: !314, size: 64, offset: 9024)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1671, file: !38, line: 885, baseType: !171, size: 32, offset: 9088)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1671, file: !38, line: 886, baseType: !2526, size: 64, offset: 9152)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1671, file: !38, line: 901, baseType: !1931, size: 64, offset: 9216)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1671, file: !38, line: 904, baseType: !1694, size: 64, offset: 9280)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1671, file: !38, line: 906, baseType: !2531, size: 64, offset: 9344)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1671, file: !38, line: 930, baseType: !191, size: 32, offset: 9408)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1671, file: !38, line: 933, baseType: !191, size: 32, offset: 9440)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1671, file: !38, line: 935, baseType: !2536, size: 64, offset: 9472)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2537)
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2536, file: !68, line: 104, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1671, file: !38, line: 940, baseType: !608, size: 64, offset: 9536)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1671, file: !38, line: 942, baseType: !862, size: 256, offset: 9600)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1668, file: !38, line: 986, baseType: !2544, offset: 10240)
!2544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !1754)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1371, file: !1046, line: 882, baseType: !1667, size: 64, offset: 9792)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1371, file: !1046, line: 884, baseType: !109, size: 32, offset: 9856)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1371, file: !1046, line: 885, baseType: !109, size: 32, offset: 9888)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1371, file: !1046, line: 886, baseType: !109, size: 32, offset: 9920)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1371, file: !1046, line: 888, baseType: !109, size: 32, offset: 9952)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1371, file: !1046, line: 890, baseType: !314, size: 64, offset: 9984)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1371, file: !1046, line: 893, baseType: !7, size: 32, offset: 10048)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1371, file: !1046, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1371, file: !1046, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1371, file: !1046, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1371, file: !1046, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1371, file: !1046, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1371, file: !1046, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1371, file: !1046, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1371, file: !1046, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1371, file: !1046, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1371, file: !1046, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1371, file: !1046, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1371, file: !1046, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1371, file: !1046, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1371, file: !1046, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1371, file: !1046, line: 969, baseType: !314, size: 64, offset: 10176)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1371, file: !1046, line: 971, baseType: !2568, size: 448, offset: 10240)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2569)
!2569 = !{!2570, !2571, !2576}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2568, file: !62, line: 26, baseType: !314, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2568, file: !62, line: 27, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!300, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !62, line: 28, baseType: !2577, size: 320, offset: 128)
!2577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2568, file: !62, line: 28, size: 320, elements: !2578)
!2578 = !{!2579, !2589, !2614}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2577, file: !62, line: 37, baseType: !2580, size: 320)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2577, file: !62, line: 30, size: 320, elements: !2581)
!2581 = !{!2582, !2584, !2585, !2586, !2587, !2588}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2580, file: !62, line: 31, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2580, file: !62, line: 32, baseType: !413, size: 32, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2580, file: !62, line: 33, baseType: !413, size: 32, offset: 96)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2580, file: !62, line: 34, baseType: !413, size: 32, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2580, file: !62, line: 35, baseType: !416, size: 64, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2580, file: !62, line: 36, baseType: !2583, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2577, file: !62, line: 47, baseType: !2590, size: 192)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2577, file: !62, line: 39, size: 192, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2613}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2590, file: !62, line: 40, baseType: !1538, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2590, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2590, file: !62, line: 42, baseType: !2595, size: 64, offset: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2590, file: !62, line: 42, size: 64, elements: !2596)
!2596 = !{!2597, !2605}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2595, file: !62, line: 43, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2600, line: 7, size: 128, elements: !2601)
!2600 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2601 = !{!2602, !2604}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2599, file: !2600, line: 8, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !298, line: 93, baseType: !506)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2599, file: !2600, line: 9, baseType: !506, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2595, file: !62, line: 44, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2608, line: 7, size: 64, elements: !2609)
!2608 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2609 = !{!2610, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2607, file: !2608, line: 8, baseType: !2611, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2608, line: 5, baseType: !600)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2607, file: !2608, line: 9, baseType: !600, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2590, file: !62, line: 46, baseType: !416, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2577, file: !62, line: 55, baseType: !2615, size: 256)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2577, file: !62, line: 49, size: 256, elements: !2616)
!2616 = !{!2617, !2620, !2621, !2622, !2623}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2615, file: !62, line: 50, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2615, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2615, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2615, file: !62, line: 53, baseType: !314, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2615, file: !62, line: 54, baseType: !314, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1371, file: !1046, line: 973, baseType: !2625, size: 32, offset: 10688)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !166, line: 27, baseType: !2626)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !298, line: 28, baseType: !109)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1371, file: !1046, line: 974, baseType: !2625, size: 32, offset: 10720)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1371, file: !1046, line: 978, baseType: !314, size: 64, offset: 10752)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1371, file: !1046, line: 987, baseType: !1370, size: 64, offset: 10816)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1371, file: !1046, line: 990, baseType: !1370, size: 64, offset: 10880)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1371, file: !1046, line: 995, baseType: !223, size: 128, offset: 10944)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1371, file: !1046, line: 996, baseType: !223, size: 128, offset: 11072)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1371, file: !1046, line: 997, baseType: !1370, size: 64, offset: 11200)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1371, file: !1046, line: 1005, baseType: !223, size: 128, offset: 11264)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1371, file: !1046, line: 1006, baseType: !223, size: 128, offset: 11392)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1371, file: !1046, line: 1009, baseType: !1735, size: 64, offset: 11520)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1371, file: !1046, line: 1010, baseType: !2638, size: 512, offset: 11584)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 512, elements: !832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1371, file: !1046, line: 1011, baseType: !223, size: 128, offset: 12096)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1371, file: !1046, line: 1012, baseType: !223, size: 128, offset: 12224)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1371, file: !1046, line: 1014, baseType: !552, size: 64, offset: 12352)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1371, file: !1046, line: 1017, baseType: !731, size: 64, offset: 12416)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1371, file: !1046, line: 1020, baseType: !731, size: 64, offset: 12480)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1371, file: !1046, line: 1023, baseType: !154, size: 64, offset: 12544)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1371, file: !1046, line: 1025, baseType: !416, size: 64, offset: 12608)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1371, file: !1046, line: 1026, baseType: !416, size: 64, offset: 12672)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1371, file: !1046, line: 1031, baseType: !416, size: 64, offset: 12736)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1371, file: !1046, line: 1032, baseType: !2649, size: 192, offset: 12800)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1046, line: 324, size: 192, elements: !2650)
!2650 = !{!2651, !2652, !2653}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2649, file: !1046, line: 326, baseType: !416, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2649, file: !1046, line: 327, baseType: !416, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2649, file: !1046, line: 328, baseType: !562, size: 32, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1371, file: !1046, line: 1041, baseType: !314, size: 64, offset: 12992)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1371, file: !1046, line: 1042, baseType: !314, size: 64, offset: 13056)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1371, file: !1046, line: 1045, baseType: !416, size: 64, offset: 13120)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1371, file: !1046, line: 1048, baseType: !416, size: 64, offset: 13184)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1371, file: !1046, line: 1051, baseType: !314, size: 64, offset: 13248)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1371, file: !1046, line: 1052, baseType: !314, size: 64, offset: 13312)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1371, file: !1046, line: 1055, baseType: !2661, size: 640, offset: 13376)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2662, line: 132, size: 640, elements: !2663)
!2662 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2663 = !{!2664, !2670, !2671}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2661, file: !2662, line: 133, baseType: !2665, size: 576)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 576, elements: !265)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2662, line: 117, size: 192, elements: !2667)
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2666, file: !2662, line: 118, baseType: !416, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2666, file: !2662, line: 119, baseType: !1547, size: 128, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2661, file: !2662, line: 134, baseType: !7, size: 32, offset: 576)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2661, file: !2662, line: 135, baseType: !7, size: 32, offset: 608)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1371, file: !1046, line: 1058, baseType: !2673, size: 448, offset: 14016)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2662, line: 144, size: 448, elements: !2674)
!2674 = !{!2675, !2676, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2673, file: !2662, line: 145, baseType: !822, size: 128, align: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2673, file: !2662, line: 146, baseType: !604, size: 256, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2673, file: !2662, line: 147, baseType: !7, size: 32, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1371, file: !1046, line: 1064, baseType: !1761, size: 64, offset: 14464)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1371, file: !1046, line: 1067, baseType: !1761, size: 64, offset: 14528)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1371, file: !1046, line: 1070, baseType: !1761, size: 64, offset: 14592)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1371, file: !1046, line: 1074, baseType: !1788, size: 64, offset: 14656)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1371, file: !1046, line: 1084, baseType: !2683, size: 128, offset: 14720)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !2684)
!2684 = !{!2685}
!2685 = !DISubrange(count: 16)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1371, file: !1046, line: 1086, baseType: !2687, size: 64, offset: 14848)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1046, line: 55, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1371, file: !1046, line: 1089, baseType: !2690, size: 64, offset: 14912)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2691, line: 12, size: 64, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2692 = !{!2693}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2690, file: !2691, line: 13, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2691, line: 8, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1371, file: !1046, line: 1090, baseType: !2697, size: 128, offset: 14976)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2698, line: 13, size: 128, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2697, file: !2698, line: 14, baseType: !223, size: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1371, file: !1046, line: 1097, baseType: !2702, size: 64, offset: 15104)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1046, line: 50, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1371, file: !1046, line: 1100, baseType: !2705, size: 64, offset: 15168)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1046, line: 1100, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1371, file: !1046, line: 1103, baseType: !2708, size: 64, offset: 15232)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1046, line: 53, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1371, file: !1046, line: 1107, baseType: !2711, size: 64, offset: 15296)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1046, line: 56, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1371, file: !1046, line: 1110, baseType: !2714, size: 64, offset: 15360)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2716, line: 93, size: 8768, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2765, !2774, !2775, !2777, !2778, !2779, !2782, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2820, !2821, !2828, !2838, !2841, !2842, !2845, !2846, !2847, !2848, !2849, !2850}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2715, file: !2716, line: 94, baseType: !1384, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2715, file: !2716, line: 95, baseType: !191, size: 32, offset: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2715, file: !2716, line: 96, baseType: !109, size: 32, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2715, file: !2716, line: 97, baseType: !109, size: 32, offset: 96)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2715, file: !2716, line: 98, baseType: !223, size: 128, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2715, file: !2716, line: 100, baseType: !1357, size: 192, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2715, file: !2716, line: 103, baseType: !1370, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2715, file: !2716, line: 106, baseType: !2726, size: 192, offset: 512)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1936, line: 32, size: 192, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2726, file: !1936, line: 33, baseType: !223, size: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2726, file: !1936, line: 34, baseType: !2730, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2731, line: 25, baseType: !2732)
!2731 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2731, line: 23, size: 64, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2732, file: !2731, line: 24, baseType: !1618, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2715, file: !2716, line: 109, baseType: !972, size: 64, offset: 704)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2715, file: !2716, line: 112, baseType: !109, size: 32, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2715, file: !2716, line: 114, baseType: !109, size: 32, offset: 800)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2715, file: !2716, line: 115, baseType: !1370, size: 64, offset: 832)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2715, file: !2716, line: 118, baseType: !109, size: 32, offset: 896)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2715, file: !2716, line: 119, baseType: !7, size: 32, offset: 928)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2715, file: !2716, line: 121, baseType: !2742, size: 64, offset: 960)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2716, line: 80, size: 448, elements: !2744)
!2744 = !{!2745, !2746, !2752}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2743, file: !2716, line: 81, baseType: !191, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2743, file: !2716, line: 82, baseType: !2747, size: 128, offset: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2716, line: 75, size: 128, elements: !2748)
!2748 = !{!2749, !2750}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2747, file: !2716, line: 76, baseType: !1370, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2747, file: !2716, line: 77, baseType: !2751, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2743, file: !2716, line: 83, baseType: !553, size: 256, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2715, file: !2716, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2715, file: !2716, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2715, file: !2716, line: 138, baseType: !7, size: 32, offset: 1056)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2715, file: !2716, line: 139, baseType: !223, size: 128, offset: 1088)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2715, file: !2716, line: 142, baseType: !1491, size: 512, offset: 1216)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2715, file: !2716, line: 143, baseType: !1499, size: 64, offset: 1728)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2715, file: !2716, line: 150, baseType: !2760, size: 256, offset: 1792)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2761, size: 256, elements: !721)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2716, line: 38, size: 128, elements: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2761, file: !2716, line: 39, baseType: !416, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2761, file: !2716, line: 40, baseType: !416, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2715, file: !2716, line: 156, baseType: !2766, size: 192, offset: 2048)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2716, line: 66, size: 192, elements: !2767)
!2767 = !{!2768}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2766, file: !2716, line: 67, baseType: !2769, size: 192)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2716, line: 47, size: 192, elements: !2770)
!2770 = !{!2771, !2772, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2769, file: !2716, line: 48, baseType: !610, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2769, file: !2716, line: 49, baseType: !610, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2769, file: !2716, line: 50, baseType: !610, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2715, file: !2716, line: 160, baseType: !2661, size: 640, offset: 2240)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2715, file: !2716, line: 163, baseType: !2776, size: 256, offset: 2880)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1735, size: 256, elements: !832)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2715, file: !2716, line: 169, baseType: !1735, size: 64, offset: 3136)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2715, file: !2716, line: 172, baseType: !109, size: 32, offset: 3200)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2715, file: !2716, line: 174, baseType: !2780, size: 64, offset: 3264)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2716, line: 174, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2715, file: !2716, line: 185, baseType: !2783, size: 64, offset: 3328)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !386, line: 860, baseType: !2784)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 853, size: 64, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2784, file: !386, line: 858, baseType: !385, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2784, file: !386, line: 859, baseType: !171, size: 32, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2715, file: !2716, line: 186, baseType: !416, size: 64, offset: 3392)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2715, file: !2716, line: 186, baseType: !416, size: 64, offset: 3456)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2715, file: !2716, line: 186, baseType: !416, size: 64, offset: 3520)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2715, file: !2716, line: 186, baseType: !416, size: 64, offset: 3584)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2715, file: !2716, line: 187, baseType: !416, size: 64, offset: 3648)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2715, file: !2716, line: 188, baseType: !416, size: 64, offset: 3712)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2715, file: !2716, line: 189, baseType: !2649, size: 192, offset: 3776)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2715, file: !2716, line: 190, baseType: !314, size: 64, offset: 3968)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2715, file: !2716, line: 190, baseType: !314, size: 64, offset: 4032)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2715, file: !2716, line: 190, baseType: !314, size: 64, offset: 4096)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2715, file: !2716, line: 190, baseType: !314, size: 64, offset: 4160)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2715, file: !2716, line: 191, baseType: !314, size: 64, offset: 4224)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2715, file: !2716, line: 191, baseType: !314, size: 64, offset: 4288)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2715, file: !2716, line: 191, baseType: !314, size: 64, offset: 4352)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2715, file: !2716, line: 191, baseType: !314, size: 64, offset: 4416)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2715, file: !2716, line: 192, baseType: !314, size: 64, offset: 4480)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2715, file: !2716, line: 192, baseType: !314, size: 64, offset: 4544)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2715, file: !2716, line: 192, baseType: !314, size: 64, offset: 4608)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2715, file: !2716, line: 192, baseType: !314, size: 64, offset: 4672)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2715, file: !2716, line: 193, baseType: !314, size: 64, offset: 4736)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2715, file: !2716, line: 193, baseType: !314, size: 64, offset: 4800)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2715, file: !2716, line: 194, baseType: !2810, size: 448, offset: 4864)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2811, line: 12, size: 448, elements: !2812)
!2811 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2810, file: !2811, line: 15, baseType: !416, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2810, file: !2811, line: 17, baseType: !416, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2810, file: !2811, line: 19, baseType: !416, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2810, file: !2811, line: 21, baseType: !416, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2810, file: !2811, line: 29, baseType: !416, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2810, file: !2811, line: 35, baseType: !416, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2810, file: !2811, line: 44, baseType: !416, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2715, file: !2716, line: 202, baseType: !418, size: 64, offset: 5312)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2715, file: !2716, line: 213, baseType: !2822, size: 2048, offset: 5376)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 2048, elements: !2684)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2824, line: 43, size: 128, elements: !2825)
!2824 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2825 = !{!2826, !2827}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2823, file: !2824, line: 44, baseType: !313, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2823, file: !2824, line: 45, baseType: !313, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2715, file: !2716, line: 216, baseType: !2829, size: 448, offset: 7424)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2716, line: 30, size: 448, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2829, file: !2716, line: 31, baseType: !109, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2829, file: !2716, line: 32, baseType: !300, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2829, file: !2716, line: 33, baseType: !314, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2829, file: !2716, line: 34, baseType: !416, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2829, file: !2716, line: 34, baseType: !416, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2829, file: !2716, line: 35, baseType: !314, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2829, file: !2716, line: 35, baseType: !314, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2715, file: !2716, line: 219, baseType: !2839, size: 64, offset: 7872)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2716, line: 219, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2715, file: !2716, line: 222, baseType: !7, size: 32, offset: 7936)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2715, file: !2716, line: 223, baseType: !2843, size: 64, offset: 8000)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2716, line: 223, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2715, file: !2716, line: 230, baseType: !165, size: 8, offset: 8064)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2715, file: !2716, line: 231, baseType: !740, size: 16, offset: 8080)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2715, file: !2716, line: 232, baseType: !740, size: 16, offset: 8096)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2715, file: !2716, line: 234, baseType: !1667, size: 64, offset: 8128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2715, file: !2716, line: 237, baseType: !604, size: 256, offset: 8192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2715, file: !2716, line: 243, baseType: !1264, size: 320, offset: 8448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1371, file: !1046, line: 1111, baseType: !2852, size: 64, offset: 15424)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2716, line: 20, size: 16640, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2853, file: !2716, line: 21, baseType: !171, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2853, file: !2716, line: 22, baseType: !1384, size: 32, offset: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2853, file: !2716, line: 23, baseType: !1357, size: 192, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2853, file: !2716, line: 24, baseType: !2859, size: 16384, offset: 256)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2860, size: 16384, elements: !269)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1936, line: 51, size: 256, elements: !2861)
!2861 = !{!2862}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2860, file: !1936, line: 52, baseType: !2863, size: 256)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1936, line: 37, size: 256, elements: !2864)
!2864 = !{!2865, !2872, !2873, !2877}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2863, file: !1936, line: 39, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2867, line: 83, baseType: !2868)
!2867 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2867, line: 82, baseType: !2870)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !109}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2863, file: !1936, line: 40, baseType: !314, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2863, file: !1936, line: 46, baseType: !2874, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2867, line: 86, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2867, line: 85, baseType: !967)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2863, file: !1936, line: 48, baseType: !2730, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1371, file: !1046, line: 1112, baseType: !2730, size: 64, offset: 15488)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1371, file: !1046, line: 1113, baseType: !2730, size: 64, offset: 15552)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1371, file: !1046, line: 1115, baseType: !2730, size: 64, offset: 15616)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1371, file: !1046, line: 1116, baseType: !2726, size: 192, offset: 15680)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1371, file: !1046, line: 1117, baseType: !314, size: 64, offset: 15872)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1371, file: !1046, line: 1118, baseType: !311, size: 64, offset: 15936)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1371, file: !1046, line: 1119, baseType: !7, size: 32, offset: 16000)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1371, file: !1046, line: 1121, baseType: !821, size: 64, offset: 16064)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1371, file: !1046, line: 1125, baseType: !2887, size: 64, offset: 16128)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1046, line: 43, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1371, file: !1046, line: 1127, baseType: !350, size: 32, offset: 16192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1371, file: !1046, line: 1128, baseType: !7, size: 32, offset: 16224)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1371, file: !1046, line: 1130, baseType: !2892, size: 128, offset: 16256)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2893, line: 37, size: 128, elements: !2894)
!2893 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2894 = !{!2895, !2896, !2897}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2892, file: !2893, line: 38, baseType: !109, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2892, file: !2893, line: 39, baseType: !191, size: 32, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2892, file: !2893, line: 40, baseType: !2898, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2893, line: 24, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1371, file: !1046, line: 1131, baseType: !2901, size: 256, offset: 16384)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2902, line: 12, size: 256, elements: !2903)
!2902 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2903 = !{!2904, !2905, !2906, !2907}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2901, file: !2902, line: 13, baseType: !264, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2901, file: !2902, line: 14, baseType: !314, size: 64, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2901, file: !2902, line: 15, baseType: !314, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2901, file: !2902, line: 16, baseType: !165, size: 8, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1371, file: !1046, line: 1134, baseType: !416, size: 64, offset: 16640)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1371, file: !1046, line: 1135, baseType: !416, size: 64, offset: 16704)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1371, file: !1046, line: 1138, baseType: !171, size: 32, offset: 16768)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1371, file: !1046, line: 1141, baseType: !562, size: 32, offset: 16800)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1371, file: !1046, line: 1143, baseType: !2913, size: 64, offset: 16832)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1046, line: 735, size: 64, elements: !2914)
!2914 = !{!2915}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2913, file: !1046, line: 736, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1371, file: !1046, line: 1147, baseType: !1550, size: 128, offset: 16896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1371, file: !1046, line: 1149, baseType: !1370, size: 64, offset: 17024)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1371, file: !1046, line: 1151, baseType: !2920, size: 64, offset: 17088)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1046, line: 1151, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1371, file: !1046, line: 1188, baseType: !154, size: 64, offset: 17152)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1371, file: !1046, line: 1191, baseType: !2924, size: 64, offset: 17216)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1046, line: 44, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1371, file: !1046, line: 1194, baseType: !2927, size: 64, offset: 17280)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1046, line: 45, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1371, file: !1046, line: 1197, baseType: !2930, size: 64, offset: 17344)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1046, line: 61, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1371, file: !1046, line: 1199, baseType: !2933, size: 64, offset: 17408)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2935, line: 99, size: 128, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2936 = !{!2937, !2938, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2934, file: !2935, line: 100, baseType: !608, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2934, file: !2935, line: 101, baseType: !191, size: 32, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2934, file: !2935, line: 103, baseType: !151, size: 16, offset: 96)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1371, file: !1046, line: 1202, baseType: !2941, size: 64, offset: 17472)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1046, line: 48, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1371, file: !1046, line: 1205, baseType: !314, size: 64, offset: 17536)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1371, file: !1046, line: 1206, baseType: !2945, size: 64, offset: 17600)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1936, line: 14, baseType: !2947)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1936, line: 12, size: 384, elements: !2948)
!2948 = !{!2949}
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2947, file: !1936, line: 13, baseType: !2950, size: 384)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !1936, line: 13, size: 384, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2950, file: !1936, line: 13, baseType: !109, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2950, file: !1936, line: 13, baseType: !109, size: 32, offset: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2950, file: !1936, line: 13, baseType: !109, size: 32, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2950, file: !1936, line: 13, baseType: !2956, size: 256, offset: 128)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2957, line: 37, size: 256, elements: !2958)
!2957 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2958 = !{!2959, !2964, !2977, !2983, !2992, !3019, !3024}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2956, file: !2957, line: 42, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2957, line: 39, size: 64, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2960, file: !2957, line: 40, baseType: !2626, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2960, file: !2957, line: 41, baseType: !356, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2956, file: !2957, line: 50, baseType: !2965, size: 192)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2957, line: 45, size: 192, elements: !2966)
!2966 = !{!2967, !2969, !2970, !2976}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2965, file: !2957, line: 46, baseType: !2968, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !298, line: 95, baseType: !109)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2965, file: !2957, line: 47, baseType: !109, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2965, file: !2957, line: 48, baseType: !2971, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2957, line: 11, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2957, line: 8, size: 64, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2972, file: !2957, line: 9, baseType: !109, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2972, file: !2957, line: 10, baseType: !154, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2965, file: !2957, line: 49, baseType: !109, size: 32, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2956, file: !2957, line: 57, baseType: !2978, size: 128)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2957, line: 53, size: 128, elements: !2979)
!2979 = !{!2980, !2981, !2982}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2978, file: !2957, line: 54, baseType: !2626, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2978, file: !2957, line: 55, baseType: !356, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2978, file: !2957, line: 56, baseType: !2971, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2956, file: !2957, line: 66, baseType: !2984, size: 256)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2957, line: 60, size: 256, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2989, !2991}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2984, file: !2957, line: 61, baseType: !2626, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2984, file: !2957, line: 62, baseType: !356, size: 32, offset: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2984, file: !2957, line: 63, baseType: !109, size: 32, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2984, file: !2957, line: 64, baseType: !2990, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !298, line: 94, baseType: !299)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2984, file: !2957, line: 65, baseType: !2990, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2956, file: !2957, line: 105, baseType: !2993, size: 256)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2957, line: 69, size: 256, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2993, file: !2957, line: 70, baseType: !154, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2993, file: !2957, line: 79, baseType: !2997, size: 192, offset: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2993, file: !2957, line: 79, size: 192, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3008, !3013}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2997, file: !2957, line: 81, baseType: !109, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2997, file: !2957, line: 86, baseType: !740, size: 16)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2997, file: !2957, line: 92, baseType: !3002, size: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2997, file: !2957, line: 88, size: 192, elements: !3003)
!3003 = !{!3004, !3006, !3007}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3002, file: !2957, line: 89, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !1534)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3002, file: !2957, line: 90, baseType: !154, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3002, file: !2957, line: 91, baseType: !154, size: 64, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2997, file: !2957, line: 97, baseType: !3009, size: 96)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2997, file: !2957, line: 94, size: 96, elements: !3010)
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3009, file: !2957, line: 95, baseType: !3005, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3009, file: !2957, line: 96, baseType: !153, size: 32, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2997, file: !2957, line: 103, baseType: !3014, size: 128)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2997, file: !2957, line: 99, size: 128, elements: !3015)
!3015 = !{!3016, !3017, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3014, file: !2957, line: 100, baseType: !314, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3014, file: !2957, line: 101, baseType: !153, size: 32, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3014, file: !2957, line: 102, baseType: !153, size: 32, offset: 96)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2956, file: !2957, line: 111, baseType: !3020, size: 128)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2957, line: 108, size: 128, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3020, file: !2957, line: 109, baseType: !300, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3020, file: !2957, line: 110, baseType: !109, size: 32, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2956, file: !2957, line: 118, baseType: !3025, size: 128)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2957, line: 114, size: 128, elements: !3026)
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3025, file: !2957, line: 115, baseType: !154, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3025, file: !2957, line: 116, baseType: !109, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3025, file: !2957, line: 117, baseType: !7, size: 32, offset: 96)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1371, file: !1046, line: 1208, baseType: !2810, size: 448, offset: 17664)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1371, file: !1046, line: 1215, baseType: !416, size: 64, offset: 18112)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1371, file: !1046, line: 1217, baseType: !416, size: 64, offset: 18176)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1371, file: !1046, line: 1219, baseType: !416, size: 64, offset: 18240)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1371, file: !1046, line: 1223, baseType: !3035, size: 64, offset: 18304)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3036, line: 99, baseType: !3037)
!3036 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3036, line: 99, size: 64, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3037, file: !3036, line: 99, baseType: !1618, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1371, file: !1046, line: 1225, baseType: !385, size: 32, offset: 18368)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1371, file: !1046, line: 1226, baseType: !109, size: 32, offset: 18400)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1371, file: !1046, line: 1227, baseType: !109, size: 32, offset: 18432)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1371, file: !1046, line: 1231, baseType: !3044, size: 64, offset: 18496)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1046, line: 1231, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1371, file: !1046, line: 1233, baseType: !223, size: 128, offset: 18560)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1371, file: !1046, line: 1240, baseType: !3048, size: 64, offset: 18688)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1046, line: 62, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1371, file: !1046, line: 1242, baseType: !3051, size: 64, offset: 18752)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1046, line: 1242, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1371, file: !1046, line: 1244, baseType: !223, size: 128, offset: 18816)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1371, file: !1046, line: 1245, baseType: !3055, size: 64, offset: 18944)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1046, line: 51, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1371, file: !1046, line: 1246, baseType: !604, size: 256, offset: 19008)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1371, file: !1046, line: 1247, baseType: !7, size: 32, offset: 19264)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1371, file: !1046, line: 1250, baseType: !3060, size: 64, offset: 19328)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1046, line: 57, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1371, file: !1046, line: 1251, baseType: !604, size: 256, offset: 19392)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1371, file: !1046, line: 1252, baseType: !223, size: 128, offset: 19648)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1371, file: !1046, line: 1259, baseType: !2315, size: 64, offset: 19776)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1371, file: !1046, line: 1260, baseType: !740, size: 16, offset: 19840)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1371, file: !1046, line: 1261, baseType: !740, size: 16, offset: 19856)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1371, file: !1046, line: 1314, baseType: !3068, size: 64, offset: 19904)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3070, line: 62, size: 256, align: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3069, file: !3070, line: 75, baseType: !153, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3069, file: !3070, line: 90, baseType: !153, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3069, file: !3070, line: 112, baseType: !417, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3069, file: !3070, line: 132, baseType: !153, size: 32, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3069, file: !3070, line: 140, baseType: !153, size: 32, offset: 160)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3069, file: !3070, line: 149, baseType: !153, size: 32, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3069, file: !3070, line: 154, baseType: !3079, offset: 224)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !1754)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1371, file: !1046, line: 1315, baseType: !413, size: 32, offset: 19968)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1371, file: !1046, line: 1316, baseType: !413, size: 32, offset: 20000)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1371, file: !1046, line: 1321, baseType: !314, size: 64, offset: 20032)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1371, file: !1046, line: 1325, baseType: !109, size: 32, offset: 20096)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1371, file: !1046, line: 1326, baseType: !109, size: 32, offset: 20128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1371, file: !1046, line: 1327, baseType: !109, size: 32, offset: 20160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1371, file: !1046, line: 1328, baseType: !109, size: 32, offset: 20192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1371, file: !1046, line: 1329, baseType: !822, size: 128, align: 64, offset: 20224)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1371, file: !1046, line: 1332, baseType: !3089, size: 128, offset: 20352)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3090, line: 51, size: 128, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3091 = !{!3092, !3097, !3098}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3089, file: !3090, line: 60, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3094, line: 7, size: 64, elements: !3095)
!3094 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3093, file: !3094, line: 12, baseType: !1615, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3089, file: !3090, line: 63, baseType: !165, size: 8, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3089, file: !3090, line: 70, baseType: !165, size: 8, offset: 72)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1371, file: !1046, line: 1335, baseType: !2367, size: 64, offset: 20480)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1371, file: !1046, line: 1337, baseType: !3101, size: 128, offset: 20544)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3090, line: 39, size: 128, elements: !3102)
!3102 = !{!3103, !3104, !3105}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3101, file: !3090, line: 40, baseType: !2154, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3101, file: !3090, line: 42, baseType: !153, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3101, file: !3090, line: 43, baseType: !153, size: 32, offset: 96)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1371, file: !1046, line: 1340, baseType: !3107, size: 64, offset: 20672)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1046, line: 69, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1371, file: !1046, line: 1351, baseType: !109, size: 32, offset: 20736)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1371, file: !1046, line: 1352, baseType: !109, size: 32, offset: 20768)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1371, file: !1046, line: 1354, baseType: !314, size: 64, offset: 20800)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1371, file: !1046, line: 1364, baseType: !416, size: 64, offset: 20864)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1371, file: !1046, line: 1365, baseType: !416, size: 64, offset: 20928)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1371, file: !1046, line: 1412, baseType: !314, size: 64, offset: 20992)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1371, file: !1046, line: 1453, baseType: !3116, size: 64, offset: 21056)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1046, line: 1453, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1371, file: !1046, line: 1457, baseType: !3119, size: 64, offset: 21120)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3121)
!3121 = !{!3122, !3123, !3142, !3145, !3146, !3179, !3189}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3120, file: !68, line: 62, baseType: !67, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !68, line: 64, baseType: !3124, size: 192, offset: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !68, line: 64, size: 192, elements: !3125)
!3125 = !{!3126, !3137}
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !68, line: 65, baseType: !3127, size: 192)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !68, line: 65, size: 192, elements: !3128)
!3128 = !{!3129, !3136}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3127, file: !68, line: 66, baseType: !3130, size: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3131, line: 50, size: 128, elements: !3132)
!3131 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3130, file: !3131, line: 52, baseType: !314, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3130, file: !3131, line: 54, baseType: !7, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3130, file: !3131, line: 55, baseType: !7, size: 32, offset: 96)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3127, file: !68, line: 67, baseType: !314, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !68, line: 70, baseType: !3138, size: 192)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !68, line: 70, size: 192, elements: !3139)
!3139 = !{!3140, !3141}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3138, file: !68, line: 71, baseType: !822, size: 128, align: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3138, file: !68, line: 72, baseType: !314, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3120, file: !68, line: 76, baseType: !3143, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3120, file: !68, line: 77, baseType: !314, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3120, file: !68, line: 79, baseType: !3147, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3131, line: 25, size: 256, elements: !3149)
!3149 = !{!3150, !3156, !3160}
!3150 = !DIDerivedType(tag: DW_TAG_member, scope: !3148, file: !3131, line: 26, baseType: !3151, size: 128)
!3151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3148, file: !3131, line: 26, size: 128, elements: !3152)
!3152 = !{!3153, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3151, file: !3131, line: 27, baseType: !3154, size: 128)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 128, elements: !2684)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3151, file: !3131, line: 28, baseType: !3154, size: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3148, file: !3131, line: 31, baseType: !3157, size: 64, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3159)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3131, line: 23, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3148, file: !3131, line: 33, baseType: !3161, size: 64, offset: 192)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3148, file: !3131, line: 33, size: 64, elements: !3162)
!3162 = !{!3163, !3169, !3174}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3161, file: !3131, line: 38, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3131, line: 34, size: 64, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3164, file: !3131, line: 35, baseType: !600, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3164, file: !3131, line: 36, baseType: !199, size: 8, offset: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3164, file: !3131, line: 37, baseType: !199, size: 8, offset: 40)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3161, file: !3131, line: 42, baseType: !3170, size: 16)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3131, line: 39, size: 16, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3170, file: !3131, line: 40, baseType: !199, size: 8)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3170, file: !3131, line: 41, baseType: !199, size: 8, offset: 8)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3161, file: !3131, line: 46, baseType: !3175, size: 16)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3131, line: 43, size: 16, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3175, file: !3131, line: 44, baseType: !199, size: 8)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3175, file: !3131, line: 45, baseType: !199, size: 8, offset: 8)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3120, file: !68, line: 81, baseType: !3180, size: 64, offset: 448)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3181, file: !68, line: 86, baseType: !3143, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3181, file: !68, line: 87, baseType: !314, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3181, file: !68, line: 88, baseType: !314, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3181, file: !68, line: 89, baseType: !314, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3181, file: !68, line: 90, baseType: !165, size: 8, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3181, file: !68, line: 92, baseType: !3180, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3120, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1371, file: !1046, line: 1463, baseType: !3191, offset: 21184)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1046, line: 739, elements: !891)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1371, file: !1046, line: 1470, baseType: !822, size: 128, align: 64, offset: 21184)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1371, file: !1046, line: 1471, baseType: !1384, size: 32, offset: 21312)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1371, file: !1046, line: 1472, baseType: !109, size: 32, offset: 21344)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1371, file: !1046, line: 1474, baseType: !1370, size: 64, offset: 21376)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1371, file: !1046, line: 1475, baseType: !844, size: 320, offset: 21440)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1371, file: !1046, line: 1478, baseType: !3198, size: 64, offset: 21760)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2008, line: 49, size: 512, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3207, !3208, !3209, !3211}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3199, file: !2008, line: 50, baseType: !3198, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3199, file: !2008, line: 51, baseType: !154, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3199, file: !2008, line: 52, baseType: !314, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3199, file: !2008, line: 53, baseType: !314, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3199, file: !2008, line: 54, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3199, file: !2008, line: 56, baseType: !7, size: 32, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3199, file: !2008, line: 58, baseType: !7, size: 32, offset: 352)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3199, file: !2008, line: 59, baseType: !3210, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !166, line: 159, baseType: !416)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3199, file: !2008, line: 60, baseType: !2506, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1371, file: !1046, line: 1482, baseType: !1384, size: 32, offset: 21824)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1371, file: !1046, line: 1489, baseType: !154, size: 64, offset: 21888)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1371, file: !1046, line: 1504, baseType: !154, size: 64, offset: 21952)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1371, file: !1046, line: 1505, baseType: !417, size: 64, offset: 22016)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1371, file: !1046, line: 1506, baseType: !416, size: 64, offset: 22080)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1371, file: !1046, line: 1507, baseType: !417, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1371, file: !1046, line: 1508, baseType: !417, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1371, file: !1046, line: 1509, baseType: !417, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1371, file: !1046, line: 1510, baseType: !822, size: 128, align: 64, offset: 22208)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1371, file: !1046, line: 1511, baseType: !109, size: 32, offset: 22336)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1371, file: !1046, line: 1515, baseType: !3223, size: 64, offset: 22400)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1398, line: 56, size: 64, elements: !3224)
!3224 = !{!3225}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3223, file: !1398, line: 57, baseType: !1401, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1371, file: !1046, line: 1518, baseType: !3223, size: 64, offset: 22464)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1371, file: !1046, line: 1528, baseType: !822, size: 128, align: 64, offset: 22528)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1371, file: !1046, line: 1552, baseType: !3229, size: 35328, offset: 23040)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3230, line: 430, size: 35328, elements: !3231)
!3230 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3231 = !{!3232, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3261, !3262, !3263, !3264, !3265, !3266, !3269, !3270, !3271, !3272}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3229, file: !3230, line: 432, baseType: !3233, size: 192)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3234, size: 192, elements: !265)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3235, line: 16, size: 64, elements: !3236)
!3235 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3234, file: !3235, line: 17, baseType: !208, size: 16)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3234, file: !3235, line: 18, baseType: !208, size: 16, offset: 16)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3234, file: !3235, line: 19, baseType: !208, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3234, file: !3235, line: 19, baseType: !208, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3234, file: !3235, line: 19, baseType: !208, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3234, file: !3235, line: 19, baseType: !208, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3234, file: !3235, line: 19, baseType: !208, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3234, file: !3235, line: 20, baseType: !208, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3234, file: !3235, line: 20, baseType: !208, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3234, file: !3235, line: 20, baseType: !208, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3234, file: !3235, line: 20, baseType: !208, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3234, file: !3235, line: 20, baseType: !208, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3234, file: !3235, line: 20, baseType: !208, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3229, file: !3230, line: 436, baseType: !314, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3229, file: !3230, line: 440, baseType: !151, size: 16, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3229, file: !3230, line: 441, baseType: !151, size: 16, offset: 272)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3229, file: !3230, line: 442, baseType: !151, size: 16, offset: 288)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3229, file: !3230, line: 443, baseType: !151, size: 16, offset: 304)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3229, file: !3230, line: 447, baseType: !314, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3229, file: !3230, line: 448, baseType: !314, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3229, file: !3230, line: 459, baseType: !3258, size: 256, offset: 448)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3259, size: 256, elements: !832)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3230, line: 428, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3229, file: !3230, line: 461, baseType: !314, size: 64, offset: 704)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3229, file: !3230, line: 463, baseType: !314, size: 64, offset: 768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3229, file: !3230, line: 465, baseType: !314, size: 64, offset: 832)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3229, file: !3230, line: 466, baseType: !314, size: 64, offset: 896)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3229, file: !3230, line: 467, baseType: !314, size: 64, offset: 960)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3229, file: !3230, line: 473, baseType: !3267, size: 64, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3230, line: 10, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3229, file: !3230, line: 480, baseType: !314, size: 64, offset: 1088)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3229, file: !3230, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3229, file: !3230, line: 491, baseType: !413, size: 32, offset: 1184)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3229, file: !3230, line: 501, baseType: !3273, size: 33792, offset: 1536)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3274, line: 448, size: 33792, elements: !3275)
!3274 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3275 = !{!3276, !3277, !3278, !3440, !3441, !3447, !3448}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3273, file: !3274, line: 461, baseType: !7, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3273, file: !3274, line: 468, baseType: !314, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3273, file: !3274, line: 476, baseType: !3279, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3274, line: 356, size: 33280, align: 512, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3280, file: !3274, line: 358, baseType: !7, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3280, file: !3274, line: 361, baseType: !7, size: 32, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3280, file: !3274, line: 364, baseType: !416, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3280, file: !3274, line: 367, baseType: !416, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3280, file: !3274, line: 370, baseType: !416, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3280, file: !3274, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3280, file: !3274, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3280, file: !3274, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3280, file: !3274, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3280, file: !3274, line: 397, baseType: !3292, size: 32768, offset: 512)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3274, line: 348, size: 32768, elements: !3293)
!3293 = !{!3294, !3309, !3346, !3423, !3436}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3292, file: !3274, line: 349, baseType: !3295, size: 896)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3274, line: 12, size: 896, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3308}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3295, file: !3274, line: 13, baseType: !413, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3295, file: !3274, line: 14, baseType: !413, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3295, file: !3274, line: 15, baseType: !413, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3295, file: !3274, line: 16, baseType: !413, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3295, file: !3274, line: 17, baseType: !413, size: 32, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3295, file: !3274, line: 18, baseType: !413, size: 32, offset: 160)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3295, file: !3274, line: 19, baseType: !413, size: 32, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3295, file: !3274, line: 22, baseType: !3305, size: 640, offset: 224)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 640, elements: !3306)
!3306 = !{!3307}
!3307 = !DISubrange(count: 20)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3295, file: !3274, line: 25, baseType: !413, size: 32, offset: 864)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3292, file: !3274, line: 350, baseType: !3310, size: 4096, align: 128)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3274, line: 34, size: 4096, align: 128, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3331, !3332, !3333, !3335, !3337, !3341}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3310, file: !3274, line: 35, baseType: !208, size: 16)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3310, file: !3274, line: 36, baseType: !208, size: 16, offset: 16)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3310, file: !3274, line: 37, baseType: !208, size: 16, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3310, file: !3274, line: 38, baseType: !208, size: 16, offset: 48)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !3274, line: 39, baseType: !3317, size: 128, offset: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !3274, line: 39, size: 128, elements: !3318)
!3318 = !{!3319, !3324}
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3317, file: !3274, line: 40, baseType: !3320, size: 128)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3274, line: 40, size: 128, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3320, file: !3274, line: 41, baseType: !416, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3320, file: !3274, line: 42, baseType: !416, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3317, file: !3274, line: 44, baseType: !3325, size: 128)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3274, line: 44, size: 128, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3325, file: !3274, line: 45, baseType: !413, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3325, file: !3274, line: 46, baseType: !413, size: 32, offset: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3325, file: !3274, line: 47, baseType: !413, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3325, file: !3274, line: 48, baseType: !413, size: 32, offset: 96)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3310, file: !3274, line: 51, baseType: !413, size: 32, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3310, file: !3274, line: 52, baseType: !413, size: 32, offset: 224)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3310, file: !3274, line: 55, baseType: !3334, size: 1024, offset: 256)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 1024, elements: !425)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3310, file: !3274, line: 58, baseType: !3336, size: 2048, offset: 1280)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 2048, elements: !269)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3310, file: !3274, line: 60, baseType: !3338, size: 384, offset: 3328)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 384, elements: !3339)
!3339 = !{!3340}
!3340 = !DISubrange(count: 12)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !3274, line: 62, baseType: !3342, size: 384, offset: 3712)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !3274, line: 62, size: 384, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3342, file: !3274, line: 63, baseType: !3338, size: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3342, file: !3274, line: 64, baseType: !3338, size: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3292, file: !3274, line: 351, baseType: !3347, size: 1088)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3274, line: 79, size: 1088, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3422}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3347, file: !3274, line: 80, baseType: !413, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3347, file: !3274, line: 81, baseType: !413, size: 32, offset: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3347, file: !3274, line: 82, baseType: !413, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3347, file: !3274, line: 83, baseType: !413, size: 32, offset: 96)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3347, file: !3274, line: 84, baseType: !413, size: 32, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3347, file: !3274, line: 85, baseType: !413, size: 32, offset: 160)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3347, file: !3274, line: 86, baseType: !413, size: 32, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3347, file: !3274, line: 88, baseType: !3305, size: 640, offset: 224)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3347, file: !3274, line: 89, baseType: !199, size: 8, offset: 864)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3347, file: !3274, line: 90, baseType: !199, size: 8, offset: 872)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3347, file: !3274, line: 91, baseType: !199, size: 8, offset: 880)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3347, file: !3274, line: 92, baseType: !199, size: 8, offset: 888)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3347, file: !3274, line: 93, baseType: !199, size: 8, offset: 896)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3347, file: !3274, line: 94, baseType: !199, size: 8, offset: 904)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3347, file: !3274, line: 95, baseType: !3364, size: 64, offset: 960)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3366, line: 11, size: 128, elements: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3365, file: !3366, line: 12, baseType: !300, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3365, file: !3366, line: 13, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3372, line: 103, size: 1344, elements: !3373)
!3372 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3402, !3403, !3404}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3371, file: !3372, line: 109, baseType: !314, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3371, file: !3372, line: 110, baseType: !314, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3371, file: !3372, line: 111, baseType: !314, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3371, file: !3372, line: 112, baseType: !314, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3371, file: !3372, line: 113, baseType: !314, size: 64, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3371, file: !3372, line: 114, baseType: !314, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3371, file: !3372, line: 117, baseType: !314, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3371, file: !3372, line: 118, baseType: !314, size: 64, offset: 448)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3371, file: !3372, line: 119, baseType: !314, size: 64, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3371, file: !3372, line: 120, baseType: !314, size: 64, offset: 576)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3371, file: !3372, line: 121, baseType: !314, size: 64, offset: 640)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3371, file: !3372, line: 122, baseType: !314, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3371, file: !3372, line: 123, baseType: !314, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3371, file: !3372, line: 124, baseType: !314, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3371, file: !3372, line: 125, baseType: !314, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3371, file: !3372, line: 139, baseType: !314, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3371, file: !3372, line: 142, baseType: !314, size: 64, offset: 1024)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3371, file: !3372, line: 144, baseType: !3392, size: 64, offset: 1088)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3371, file: !3372, line: 144, size: 64, elements: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3392, file: !3372, line: 146, baseType: !208, size: 16)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3392, file: !3372, line: 148, baseType: !416, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3392, file: !3372, line: 150, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3372, line: 59, size: 64, elements: !3398)
!3398 = !{!3399, !3400, !3401}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3397, file: !3372, line: 61, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3397, file: !3372, line: 63, baseType: !416, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3397, file: !3372, line: 65, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3371, file: !3372, line: 153, baseType: !314, size: 64, offset: 1152)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3371, file: !3372, line: 154, baseType: !314, size: 64, offset: 1216)
!3404 = !DIDerivedType(tag: DW_TAG_member, scope: !3371, file: !3372, line: 156, baseType: !3405, size: 64, offset: 1280)
!3405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3371, file: !3372, line: 156, size: 64, elements: !3406)
!3406 = !{!3407, !3408, !3409}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3405, file: !3372, line: 158, baseType: !208, size: 16)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3405, file: !3372, line: 160, baseType: !416, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3405, file: !3372, line: 162, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3372, line: 69, size: 64, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3410, file: !3372, line: 71, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3410, file: !3372, line: 73, baseType: !416, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3410, file: !3372, line: 75, baseType: !416, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3410, file: !3372, line: 77, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3410, file: !3372, line: 80, baseType: !416, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3410, file: !3372, line: 83, baseType: !416, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3410, file: !3372, line: 86, baseType: !416, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3410, file: !3372, line: 88, baseType: !416, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3410, file: !3372, line: 93, baseType: !416, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3410, file: !3372, line: 100, baseType: !416, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3347, file: !3274, line: 96, baseType: !413, size: 32, offset: 1024)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3292, file: !3274, line: 352, baseType: !3424, size: 4608, align: 512)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3274, line: 333, size: 4608, align: 512, elements: !3425)
!3425 = !{!3426, !3427, !3434}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3424, file: !3274, line: 334, baseType: !3310, size: 4096, align: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3424, file: !3274, line: 335, baseType: !3428, size: 512, offset: 4096)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3274, line: 312, size: 512, elements: !3429)
!3429 = !{!3430, !3431, !3432}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3428, file: !3274, line: 313, baseType: !416, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3428, file: !3274, line: 314, baseType: !416, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3428, file: !3274, line: 315, baseType: !3433, size: 384, offset: 128)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !1837)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3424, file: !3274, line: 336, baseType: !3435, offset: 4608)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !1754)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3292, file: !3274, line: 353, baseType: !3437, size: 32768)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 32768, elements: !3438)
!3438 = !{!3439}
!3439 = !DISubrange(count: 4096)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3273, file: !3274, line: 484, baseType: !3279, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3273, file: !3274, line: 491, baseType: !3442, size: 128, offset: 256)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3274, line: 404, size: 128, elements: !3443)
!3443 = !{!3444, !3445, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3442, file: !3274, line: 424, baseType: !416, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3442, file: !3274, line: 432, baseType: !7, size: 32, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3442, file: !3274, line: 440, baseType: !7, size: 32, offset: 96)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3273, file: !3274, line: 498, baseType: !3442, size: 128, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3273, file: !3274, line: 508, baseType: !3280, size: 33280, align: 512, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1347, file: !1348, line: 16, baseType: !1357, size: 192, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1347, file: !1348, line: 17, baseType: !191, size: 32, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !495, file: !14, line: 1240, baseType: !154, size: 64, offset: 6912)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !495, file: !14, line: 1243, baseType: !413, size: 32, offset: 6976)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !495, file: !14, line: 1245, baseType: !1104, size: 64, offset: 7040)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !495, file: !14, line: 1246, baseType: !1104, size: 64, offset: 7104)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !495, file: !14, line: 1248, baseType: !153, size: 32, offset: 7168)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !495, file: !14, line: 1249, baseType: !3457, size: 64, offset: 7232)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !495, file: !14, line: 1252, baseType: !3460, size: 256, offset: 7296)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !425)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !495, file: !14, line: 1253, baseType: !3462, size: 128, offset: 7552)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3463, line: 21, baseType: !3464)
!3463 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3463, line: 19, size: 128, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3464, file: !3463, line: 20, baseType: !3467, size: 128)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 128, elements: !2684)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !495, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !495, file: !14, line: 1261, baseType: !604, size: 256, offset: 7744)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !495, file: !14, line: 1267, baseType: !219, size: 64, offset: 8000)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !495, file: !14, line: 1269, baseType: !441, size: 64, offset: 8064)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !495, file: !14, line: 1271, baseType: !3473, size: 448, offset: 8128)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1113, line: 63, size: 448, elements: !3474)
!3474 = !{!3475, !3480, !3481, !3482, !3483, !3484, !3485}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3473, file: !1113, line: 64, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!314, !3479, !1111}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3473, file: !1113, line: 66, baseType: !3476, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3473, file: !1113, line: 69, baseType: !300, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3473, file: !1113, line: 70, baseType: !109, size: 32, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3473, file: !1113, line: 71, baseType: !7, size: 32, offset: 224)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3473, file: !1113, line: 74, baseType: !223, size: 128, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3473, file: !1113, line: 85, baseType: !3486, size: 64, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !495, file: !14, line: 1274, baseType: !608, size: 64, offset: 8576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !495, file: !14, line: 1280, baseType: !608, size: 64, offset: 8640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !495, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !495, file: !14, line: 1286, baseType: !2417, size: 32, offset: 8736)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !495, file: !14, line: 1289, baseType: !924, size: 64, offset: 8768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !495, file: !14, line: 1290, baseType: !972, size: 64, offset: 8832)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !495, file: !14, line: 1297, baseType: !1931, size: 64, offset: 8896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !495, file: !14, line: 1304, baseType: !3495, size: 64, offset: 8960)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3496, line: 49, size: 64, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3497 = !{!3498}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3495, file: !3496, line: 50, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3496, line: 41, size: 512, align: 512, elements: !3501)
!3501 = !{!3502, !3503, !3508}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3500, file: !3496, line: 43, baseType: !171, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3500, file: !3496, line: 45, baseType: !3504, size: 192, offset: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3496, line: 29, size: 192, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3504, file: !3496, line: 30, baseType: !223, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3504, file: !3496, line: 32, baseType: !300, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3500, file: !3496, line: 46, baseType: !300, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !495, file: !14, line: 1305, baseType: !3495, size: 64, offset: 9024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !495, file: !14, line: 1306, baseType: !822, size: 128, align: 64, offset: 9088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !495, file: !14, line: 1307, baseType: !862, size: 256, offset: 9216)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !495, file: !14, line: 1309, baseType: !604, size: 256, offset: 9472)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !495, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !495, file: !14, line: 1317, baseType: !171, size: 32, align: 512, offset: 10240)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !495, file: !14, line: 1318, baseType: !223, size: 128, offset: 10304)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !495, file: !14, line: 1320, baseType: !171, size: 32, offset: 10432)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !495, file: !14, line: 1321, baseType: !223, size: 128, offset: 10496)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !489, file: !490, line: 73, baseType: !109, size: 32, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !489, file: !490, line: 74, baseType: !3520, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1778, line: 42, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !443, file: !381, line: 141, baseType: !3524, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!109, !1174, !165}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !443, file: !381, line: 142, baseType: !3528, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!379, !379, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !380, file: !381, line: 96, baseType: !494, size: 64, offset: 832)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !380, file: !381, line: 97, baseType: !314, size: 64, offset: 896)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !380, file: !381, line: 98, baseType: !154, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !381, line: 100, baseType: !3537, size: 128, offset: 1024)
!3537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !381, line: 100, size: 128, elements: !3538)
!3538 = !{!3539, !3540}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3537, file: !381, line: 101, baseType: !223, size: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3537, file: !381, line: 102, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !380, file: !381, line: 104, baseType: !223, size: 128, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !380, file: !381, line: 105, baseType: !223, size: 128, offset: 1280)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !380, file: !381, line: 113, baseType: !3545, size: 128, offset: 1408)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !381, line: 109, size: 128, elements: !3546)
!3546 = !{!3547, !3548, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3545, file: !381, line: 110, baseType: !848, size: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3545, file: !381, line: 111, baseType: !395, size: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3545, file: !381, line: 112, baseType: !822, size: 128, align: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !373, file: !14, line: 1968, baseType: !3551, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!219, !379, !344, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3556, line: 10, size: 128, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3555, file: !3556, line: 11, baseType: !647, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3555, file: !3556, line: 12, baseType: !154, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !373, file: !14, line: 1969, baseType: !3561, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!109, !3520, !344, !109}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !373, file: !14, line: 1970, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!367, !344, !109, !165}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !373, file: !14, line: 1972, baseType: !3569, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!109, !379, !264, !109}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !373, file: !14, line: 1974, baseType: !3573, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!109, !3520, !344, !379, !306, !165}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !373, file: !14, line: 1976, baseType: !3577, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!109, !379, !344, !379}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !373, file: !14, line: 1977, baseType: !3581, size: 64, offset: 448)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!109, !344, !379}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !373, file: !14, line: 1978, baseType: !3585, size: 64, offset: 512)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!109, !3520, !344, !379, !219}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !373, file: !14, line: 1980, baseType: !3589, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!109, !3520, !344, !379, !306}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !373, file: !14, line: 1982, baseType: !3581, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !373, file: !14, line: 1983, baseType: !3594, size: 64, offset: 704)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!109, !3520, !344, !379, !306, !499}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !373, file: !14, line: 1985, baseType: !3598, size: 64, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!109, !3520, !344, !379, !344, !379, !7}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !373, file: !14, line: 1987, baseType: !3602, size: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!109, !3520, !379, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3620, !3629, !3630, !3635, !3636, !3637}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3606, file: !14, line: 227, baseType: !7, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3606, file: !14, line: 228, baseType: !306, size: 16, offset: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !14, line: 241, baseType: !3611, size: 32, offset: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !14, line: 241, size: 32, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3611, file: !14, line: 242, baseType: !350, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3611, file: !14, line: 243, baseType: !3615, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3616, line: 16, baseType: !3617)
!3616 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3616, line: 14, size: 32, elements: !3618)
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3617, file: !3616, line: 15, baseType: !355, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !14, line: 245, baseType: !3621, size: 32, offset: 96)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !14, line: 245, size: 32, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3621, file: !14, line: 246, baseType: !359, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3621, file: !14, line: 247, baseType: !3625, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3616, line: 20, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3616, line: 18, size: 32, elements: !3627)
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3626, file: !3616, line: 19, baseType: !363, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3606, file: !14, line: 249, baseType: !504, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3606, file: !14, line: 250, baseType: !3631, size: 128, offset: 192)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1105, line: 13, size: 128, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3631, file: !1105, line: 14, baseType: !1104, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3631, file: !1105, line: 15, baseType: !300, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3606, file: !14, line: 251, baseType: !3631, size: 128, offset: 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3606, file: !14, line: 252, baseType: !3631, size: 128, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3606, file: !14, line: 259, baseType: !1694, size: 64, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !373, file: !14, line: 1988, baseType: !3639, size: 64, offset: 896)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!109, !3520, !1174, !3642, !413, !7}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3644, line: 22, size: 1280, elements: !3645)
!3644 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3643, file: !3644, line: 23, baseType: !413, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3643, file: !3644, line: 24, baseType: !306, size: 16, offset: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3643, file: !3644, line: 25, baseType: !7, size: 32, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3643, file: !3644, line: 26, baseType: !1816, size: 32, offset: 96)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3643, file: !3644, line: 27, baseType: !416, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3643, file: !3644, line: 28, baseType: !416, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3643, file: !3644, line: 41, baseType: !416, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3643, file: !3644, line: 42, baseType: !499, size: 32, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3643, file: !3644, line: 43, baseType: !499, size: 32, offset: 352)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3643, file: !3644, line: 44, baseType: !350, size: 32, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3643, file: !3644, line: 45, baseType: !359, size: 32, offset: 416)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3643, file: !3644, line: 46, baseType: !504, size: 64, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3643, file: !3644, line: 47, baseType: !3631, size: 128, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3643, file: !3644, line: 48, baseType: !3631, size: 128, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3643, file: !3644, line: 49, baseType: !3631, size: 128, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3643, file: !3644, line: 50, baseType: !3631, size: 128, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3643, file: !3644, line: 51, baseType: !416, size: 64, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3643, file: !3644, line: 52, baseType: !416, size: 64, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3643, file: !3644, line: 53, baseType: !413, size: 32, offset: 1152)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3643, file: !3644, line: 54, baseType: !413, size: 32, offset: 1184)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3643, file: !3644, line: 55, baseType: !416, size: 64, offset: 1216)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !373, file: !14, line: 1990, baseType: !3668, size: 64, offset: 960)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!296, !379, !264, !311}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !373, file: !14, line: 1991, baseType: !3672, size: 64, offset: 1024)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!109, !344, !3675, !416, !416}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !373, file: !14, line: 1993, baseType: !3678, size: 64, offset: 1088)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!109, !344, !109}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !373, file: !14, line: 1994, baseType: !3682, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!109, !344, !379, !1694, !7, !306}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !373, file: !14, line: 1997, baseType: !3686, size: 64, offset: 1216)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!109, !3520, !344, !1694, !306}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !373, file: !14, line: 1999, baseType: !3690, size: 64, offset: 1280)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!367, !3520, !379, !109}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !373, file: !14, line: 2001, baseType: !3694, size: 64, offset: 1344)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !3520, !379, !367, !109}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !373, file: !14, line: 2003, baseType: !3698, size: 64, offset: 1408)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !3520, !379, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !373, file: !14, line: 2005, baseType: !3704, size: 64, offset: 1472)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!109, !379, !3701}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !373, file: !14, line: 2006, baseType: !3708, size: 64, offset: 1536)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!3711, !344}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3713)
!3713 = !{!3714, !3721}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3712, file: !14, line: 3193, baseType: !3715, size: 128)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3716, line: 296, size: 128, elements: !3717)
!3716 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3717 = !{!3718, !3719, !3720}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3715, file: !3716, line: 297, baseType: !171, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3715, file: !3716, line: 299, baseType: !1116, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3715, file: !3716, line: 300, baseType: !154, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3712, file: !14, line: 3194, baseType: !413, size: 32, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !345, file: !14, line: 655, baseType: !494, size: 64, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !345, file: !14, line: 656, baseType: !340, size: 64, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !345, file: !14, line: 659, baseType: !154, size: 64, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !345, file: !14, line: 663, baseType: !314, size: 64, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !14, line: 671, baseType: !3727, size: 32, offset: 704)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !14, line: 671, size: 32, elements: !3728)
!3728 = !{!3729, !3731}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3727, file: !14, line: 672, baseType: !3730, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3727, file: !14, line: 673, baseType: !7, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !345, file: !14, line: 675, baseType: !499, size: 32, offset: 736)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !345, file: !14, line: 676, baseType: !504, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !345, file: !14, line: 677, baseType: !3631, size: 128, offset: 832)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !345, file: !14, line: 678, baseType: !3631, size: 128, offset: 960)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !345, file: !14, line: 679, baseType: !3631, size: 128, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !345, file: !14, line: 680, baseType: !171, size: 32, offset: 1216)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !345, file: !14, line: 681, baseType: !151, size: 16, offset: 1248)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !345, file: !14, line: 682, baseType: !199, size: 8, offset: 1264)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !345, file: !14, line: 683, baseType: !199, size: 8, offset: 1272)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !345, file: !14, line: 684, baseType: !1252, size: 64, offset: 1280)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !345, file: !14, line: 691, baseType: !314, size: 64, offset: 1344)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !345, file: !14, line: 692, baseType: !1264, size: 320, offset: 1408)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !345, file: !14, line: 694, baseType: !314, size: 64, offset: 1728)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !345, file: !14, line: 695, baseType: !314, size: 64, offset: 1792)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !345, file: !14, line: 697, baseType: !848, size: 128, offset: 1856)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !345, file: !14, line: 698, baseType: !223, size: 128, offset: 1984)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !345, file: !14, line: 707, baseType: !223, size: 128, offset: 2112)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !345, file: !14, line: 708, baseType: !223, size: 128, offset: 2240)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !14, line: 709, baseType: !3751, size: 128, offset: 2368)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !14, line: 709, size: 128, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3751, file: !14, line: 710, baseType: !972, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3751, file: !14, line: 711, baseType: !822, size: 128, align: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !345, file: !14, line: 713, baseType: !610, size: 64, offset: 2496)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !345, file: !14, line: 714, baseType: !610, size: 64, offset: 2560)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !345, file: !14, line: 715, baseType: !191, size: 32, offset: 2624)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !345, file: !14, line: 716, baseType: !191, size: 32, offset: 2656)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !345, file: !14, line: 717, baseType: !191, size: 32, offset: 2688)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !345, file: !14, line: 719, baseType: !191, size: 32, offset: 2720)
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !14, line: 721, baseType: !3762, size: 64, offset: 2752)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !14, line: 721, size: 64, elements: !3763)
!3763 = !{!3764, !3765}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3762, file: !14, line: 722, baseType: !1962, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3762, file: !14, line: 723, baseType: !995, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !345, file: !14, line: 725, baseType: !3767, size: 64, offset: 2816)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !345, file: !14, line: 726, baseType: !341, size: 1536, align: 64, offset: 2880)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !345, file: !14, line: 727, baseType: !223, size: 128, offset: 4416)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !14, line: 728, baseType: !3772, size: 64, offset: 4544)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !14, line: 728, size: 64, elements: !3773)
!3773 = !{!3774, !3775, !3778, !3779}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3772, file: !14, line: 729, baseType: !2367, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3772, file: !14, line: 730, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3772, file: !14, line: 731, baseType: !264, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3772, file: !14, line: 732, baseType: !7, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !345, file: !14, line: 735, baseType: !153, size: 32, offset: 4608)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !345, file: !14, line: 738, baseType: !153, size: 32, offset: 4640)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !345, file: !14, line: 739, baseType: !3457, size: 64, offset: 4672)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !345, file: !14, line: 750, baseType: !154, size: 64, offset: 4736)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !341, file: !14, line: 474, baseType: !3715, size: 128, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !341, file: !14, line: 475, baseType: !1264, size: 320, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !341, file: !14, line: 476, baseType: !1116, size: 32, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !341, file: !14, line: 477, baseType: !191, size: 32, offset: 544)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !341, file: !14, line: 482, baseType: !1550, size: 128, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !341, file: !14, line: 483, baseType: !314, size: 64, offset: 704)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !341, file: !14, line: 484, baseType: !314, size: 64, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !341, file: !14, line: 485, baseType: !3792, size: 64, offset: 832)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3794)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3795)
!3795 = !{!3796, !3800, !3870, !3874, !3878, !3884, !3888, !3892, !3897, !3901, !3905, !3909, !3910, !3914, !3918, !3922, !3927, !3931, !3938, !3939}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3794, file: !14, line: 405, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!109, !2154, !1007}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3794, file: !14, line: 406, baseType: !3801, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!109, !1694, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3806)
!3806 = !{!3807, !3837, !3851}
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !38, line: 295, baseType: !3808, size: 512)
!3808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !38, line: 295, size: 512, elements: !3809)
!3809 = !{!3810, !3836}
!3810 = !DIDerivedType(tag: DW_TAG_member, scope: !3808, file: !38, line: 296, baseType: !3811, size: 448)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3808, file: !38, line: 296, size: 448, elements: !3812)
!3812 = !{!3813, !3814, !3823, !3824, !3825, !3834, !3835}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3811, file: !38, line: 298, baseType: !314, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, scope: !3811, file: !38, line: 299, baseType: !3815, size: 128, offset: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3811, file: !38, line: 299, size: 128, elements: !3816)
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3815, file: !38, line: 300, baseType: !223, size: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, scope: !3815, file: !38, line: 302, baseType: !3819, size: 128)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3815, file: !38, line: 302, size: 128, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3819, file: !38, line: 303, baseType: !154, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3819, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3811, file: !38, line: 310, baseType: !340, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3811, file: !38, line: 311, baseType: !314, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3811, file: !38, line: 312, baseType: !3826, size: 64, offset: 320)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3811, file: !38, line: 312, size: 64, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3826, file: !38, line: 313, baseType: !154, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3826, file: !38, line: 314, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3832)
!3832 = !{!3833}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3831, file: !38, line: 256, baseType: !314, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3811, file: !38, line: 316, baseType: !191, size: 32, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3811, file: !38, line: 317, baseType: !191, size: 32, offset: 416)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3808, file: !38, line: 323, baseType: !2155, size: 512, align: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !38, line: 325, baseType: !3838, size: 512, offset: 512)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !38, line: 325, size: 512, elements: !3839)
!3839 = !{!3840, !3850}
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3838, file: !38, line: 326, baseType: !3841, size: 320)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3838, file: !38, line: 326, size: 320, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848, !3849}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3841, file: !38, line: 327, baseType: !314, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3841, file: !38, line: 328, baseType: !314, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3841, file: !38, line: 329, baseType: !314, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3841, file: !38, line: 331, baseType: !191, size: 32, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3841, file: !38, line: 332, baseType: !191, size: 32, offset: 224)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3841, file: !38, line: 333, baseType: !191, size: 32, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3841, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3838, file: !38, line: 339, baseType: !2155, size: 512, align: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !38, line: 341, baseType: !3852, size: 512, offset: 1024)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !38, line: 341, size: 512, elements: !3853)
!3853 = !{!3854, !3863, !3869}
!3854 = !DIDerivedType(tag: DW_TAG_member, scope: !3852, file: !38, line: 342, baseType: !3855, size: 384)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3852, file: !38, line: 342, size: 384, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3855, file: !38, line: 343, baseType: !314, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3855, file: !38, line: 344, baseType: !314, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3855, file: !38, line: 346, baseType: !154, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3855, file: !38, line: 347, baseType: !154, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3855, file: !38, line: 348, baseType: !154, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3855, file: !38, line: 349, baseType: !154, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3852, file: !38, line: 352, baseType: !3864, size: 256)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3852, file: !38, line: 352, size: 256, elements: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3864, file: !38, line: 353, baseType: !314, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3864, file: !38, line: 354, baseType: !314, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3864, file: !38, line: 356, baseType: !223, size: 128, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3852, file: !38, line: 359, baseType: !2155, size: 512, align: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3794, file: !14, line: 409, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!109, !340, !1007}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3794, file: !14, line: 412, baseType: !3875, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!165, !340, !3804}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3794, file: !14, line: 414, baseType: !3879, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{null, !3882}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3794, file: !14, line: 416, baseType: !3885, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!109, !1694, !340, !504, !7, !3206, !2382}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3794, file: !14, line: 419, baseType: !3889, size: 64, offset: 384)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!109, !1694, !340, !504, !7, !7, !2154, !154}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3794, file: !14, line: 424, baseType: !3893, size: 64, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!3896, !340, !3896}
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !166, line: 131, baseType: !416)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3794, file: !14, line: 425, baseType: !3898, size: 64, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3804, !311, !311}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3794, file: !14, line: 426, baseType: !3902, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!165, !3804, !1116}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3794, file: !14, line: 427, baseType: !3906, size: 64, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !3804}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3794, file: !14, line: 428, baseType: !1981, size: 64, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3794, file: !14, line: 433, baseType: !3911, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!109, !340, !3804, !3804, !74}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3794, file: !14, line: 435, baseType: !3915, size: 64, offset: 832)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!109, !3804}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3794, file: !14, line: 436, baseType: !3919, size: 64, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!165, !3804, !311, !311}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3794, file: !14, line: 438, baseType: !3923, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !3804, !3926, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3794, file: !14, line: 439, baseType: !3928, size: 64, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!109, !340, !2154}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3794, file: !14, line: 442, baseType: !3932, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!109, !3935, !1694, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3794, file: !14, line: 444, baseType: !2374, size: 64, offset: 1152)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3794, file: !14, line: 445, baseType: !3940, size: 64, offset: 1216)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!109, !1984, !2006}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !14, line: 486, baseType: !314, size: 64, offset: 896)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !341, file: !14, line: 487, baseType: !1264, size: 320, offset: 960)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !341, file: !14, line: 488, baseType: !2417, size: 32, offset: 1280)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !341, file: !14, line: 489, baseType: !171, size: 32, offset: 1312)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !341, file: !14, line: 490, baseType: !223, size: 128, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !341, file: !14, line: 491, baseType: !154, size: 64, offset: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !331, file: !290, line: 180, baseType: !3950, size: 64, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!296, !1694, !229, !330, !264, !504, !311}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !331, file: !290, line: 182, baseType: !3950, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !331, file: !290, line: 184, baseType: !3955, size: 64, offset: 448)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!109, !1694, !229, !330, !2045}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !319, file: !290, line: 90, baseType: !3959, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !319, file: !290, line: 91, baseType: !3961, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !280, file: !216, line: 120, baseType: !3963, size: 64, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!3966, !247}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3969)
!3969 = !{!3970, !3971, !3975, !3979, !3985, !3989}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3968, file: !82, line: 40, baseType: !81, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3968, file: !82, line: 41, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!165}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3968, file: !82, line: 42, baseType: !3976, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!154}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3968, file: !82, line: 43, baseType: !3980, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!2506, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3968, file: !82, line: 44, baseType: !3986, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!2506}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3968, file: !82, line: 45, baseType: !647, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !280, file: !216, line: 121, baseType: !3991, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!2506, !247}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !280, file: !216, line: 122, baseType: !3995, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !247, !3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !215, file: !216, line: 70, baseType: !4001, size: 64, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !519, line: 190, size: 1152, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4095, !4096, !4097, !4098, !4099, !4102}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4002, file: !519, line: 191, baseType: !191, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4002, file: !519, line: 192, baseType: !191, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4002, file: !519, line: 202, baseType: !4001, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4002, file: !519, line: 203, baseType: !219, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4002, file: !519, line: 205, baseType: !714, size: 192, align: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4002, file: !519, line: 207, baseType: !2506, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4002, file: !519, line: 208, baseType: !7, size: 32, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_member, scope: !4002, file: !519, line: 209, baseType: !4012, size: 256, offset: 512)
!4012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4002, file: !519, line: 209, size: 256, elements: !4013)
!4013 = !{!4014, !4023, !4027}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4012, file: !519, line: 210, baseType: !4015, size: 256)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !519, line: 153, size: 256, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4022}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4015, file: !519, line: 154, baseType: !314, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4015, file: !519, line: 156, baseType: !1553, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4015, file: !519, line: 162, baseType: !4020, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !519, line: 162, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4015, file: !519, line: 167, baseType: !314, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4012, file: !519, line: 211, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !519, line: 170, size: 64, elements: !4025)
!4025 = !{!4026}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4024, file: !519, line: 171, baseType: !4001, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4012, file: !519, line: 212, baseType: !4028, size: 256)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !519, line: 174, size: 256, elements: !4029)
!4029 = !{!4030, !4090, !4093, !4094}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4028, file: !519, line: 175, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !519, line: 271, size: 768, elements: !4034)
!4034 = !{!4035, !4055, !4059, !4063, !4067, !4071, !4075, !4079, !4080, !4081, !4082, !4086}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4033, file: !519, line: 276, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!109, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !519, line: 251, size: 1216, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4040, file: !519, line: 253, baseType: !4001, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4040, file: !519, line: 254, baseType: !1694, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4040, file: !519, line: 255, baseType: !1044, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4040, file: !519, line: 256, baseType: !154, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4040, file: !519, line: 259, baseType: !604, size: 256, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4040, file: !519, line: 260, baseType: !604, size: 256, offset: 512)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4040, file: !519, line: 261, baseType: !109, size: 32, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4040, file: !519, line: 262, baseType: !223, size: 128, offset: 832)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4040, file: !519, line: 263, baseType: !264, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4040, file: !519, line: 265, baseType: !311, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4040, file: !519, line: 266, baseType: !165, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4040, file: !519, line: 267, baseType: !165, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4040, file: !519, line: 268, baseType: !2090, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4033, file: !519, line: 277, baseType: !4056, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !4039}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4033, file: !519, line: 290, baseType: !4060, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!109, !1044, !154}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4033, file: !519, line: 292, baseType: !4064, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!154, !1044, !1975}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4033, file: !519, line: 293, baseType: !4068, size: 64, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!154, !1044, !154, !1975}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4033, file: !519, line: 294, baseType: !4072, size: 64, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !1044, !154}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4033, file: !519, line: 296, baseType: !4076, size: 64, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!296, !4039, !264, !311, !504}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4033, file: !519, line: 306, baseType: !311, size: 64, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4033, file: !519, line: 313, baseType: !165, size: 8, offset: 512)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4033, file: !519, line: 314, baseType: !4076, size: 64, offset: 576)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4033, file: !519, line: 317, baseType: !4083, size: 64, offset: 640)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!2033, !4039, !2034}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4033, file: !519, line: 320, baseType: !4087, size: 64, offset: 704)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!109, !4039, !2045}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4028, file: !519, line: 176, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !519, line: 35, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4028, file: !519, line: 177, baseType: !504, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4028, file: !519, line: 178, baseType: !4001, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4002, file: !519, line: 215, baseType: !154, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4002, file: !519, line: 221, baseType: !416, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4002, file: !519, line: 223, baseType: !151, size: 16, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4002, file: !519, line: 224, baseType: !306, size: 16, offset: 912)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4002, file: !519, line: 225, baseType: !4100, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !519, line: 36, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4002, file: !519, line: 227, baseType: !822, size: 128, align: 64, offset: 1024)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !215, file: !216, line: 71, baseType: !4104, size: 32, offset: 448)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4105, line: 19, size: 32, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4106 = !{!4107}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4104, file: !4105, line: 20, baseType: !1384, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !215, file: !216, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !215, file: !216, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !215, file: !216, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !215, file: !216, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !215, file: !216, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !94, line: 707, baseType: !4114, size: 64, offset: 512)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !212, file: !94, line: 709, baseType: !4116, size: 64, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !212, file: !94, line: 711, baseType: !219, size: 64, offset: 640)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !94, line: 712, baseType: !4120, size: 64, offset: 704)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4132, !4137, !4141}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4122, file: !94, line: 90, baseType: !219, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4122, file: !94, line: 91, baseType: !316, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4122, file: !94, line: 92, baseType: !4127, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!109, !4130, !259}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4122, file: !94, line: 93, baseType: !4133, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!264, !4130, !4136, !3998, !3999}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4122, file: !94, line: 95, baseType: !4138, size: 64, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !4114}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4122, file: !94, line: 97, baseType: !4142, size: 64, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4145)
!4145 = !{!4146, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4144, file: !101, line: 287, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!109, !4114}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4144, file: !101, line: 288, baseType: !4138, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4144, file: !101, line: 289, baseType: !4147, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4144, file: !101, line: 290, baseType: !4147, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4144, file: !101, line: 291, baseType: !4147, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4144, file: !101, line: 292, baseType: !4147, size: 64, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4144, file: !101, line: 293, baseType: !4147, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4144, file: !101, line: 294, baseType: !4147, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4144, file: !101, line: 295, baseType: !4147, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4144, file: !101, line: 296, baseType: !4147, size: 64, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4144, file: !101, line: 297, baseType: !4147, size: 64, offset: 640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4144, file: !101, line: 298, baseType: !4147, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4144, file: !101, line: 299, baseType: !4147, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4144, file: !101, line: 300, baseType: !4147, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4144, file: !101, line: 301, baseType: !4147, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4144, file: !101, line: 302, baseType: !4147, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4144, file: !101, line: 303, baseType: !4147, size: 64, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4144, file: !101, line: 304, baseType: !4147, size: 64, offset: 1088)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4144, file: !101, line: 305, baseType: !4147, size: 64, offset: 1152)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4144, file: !101, line: 306, baseType: !4147, size: 64, offset: 1216)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4144, file: !101, line: 307, baseType: !4147, size: 64, offset: 1280)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4144, file: !101, line: 308, baseType: !4147, size: 64, offset: 1344)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4144, file: !101, line: 309, baseType: !4147, size: 64, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !212, file: !94, line: 714, baseType: !4173, size: 64, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4175)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4176, line: 80, size: 1344, elements: !4177)
!4176 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4256}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !4176, line: 81, baseType: !219, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4175, file: !4176, line: 82, baseType: !219, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4175, file: !4176, line: 83, baseType: !316, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4175, file: !4176, line: 84, baseType: !316, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4175, file: !4176, line: 85, baseType: !316, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4175, file: !4176, line: 87, baseType: !4184, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!109, !4114, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4189)
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4196, !4209, !4219, !4220, !4221, !4222, !4223, !4231, !4232, !4233, !4234, !4235, !4236}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4188, file: !88, line: 97, baseType: !219, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4188, file: !88, line: 98, baseType: !4173, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4188, file: !88, line: 100, baseType: !533, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4188, file: !88, line: 101, baseType: !219, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4188, file: !88, line: 103, baseType: !165, size: 8, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4188, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4188, file: !88, line: 106, baseType: !4197, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4200, line: 282, size: 1600, elements: !4201)
!4200 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4201 = !{!4202, !4203, !4204, !4208}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4199, file: !4200, line: 283, baseType: !3460, size: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4199, file: !4200, line: 284, baseType: !3460, size: 256, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4199, file: !4200, line: 285, baseType: !4205, size: 1024, offset: 512)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1024, elements: !4206)
!4206 = !{!4207}
!4207 = !DISubrange(count: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4199, file: !4200, line: 286, baseType: !2506, size: 64, offset: 1536)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4188, file: !88, line: 107, baseType: !4210, size: 64, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4212)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4200, line: 217, size: 256, elements: !4213)
!4213 = !{!4214, !4215, !4217, !4218}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4212, file: !4200, line: 218, baseType: !3467, size: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4212, file: !4200, line: 219, baseType: !4216, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4200, line: 15, baseType: !314)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4212, file: !4200, line: 220, baseType: !153, size: 32, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4212, file: !4200, line: 221, baseType: !153, size: 32, offset: 224)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4188, file: !88, line: 109, baseType: !4147, size: 64, offset: 448)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4188, file: !88, line: 110, baseType: !4138, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4188, file: !88, line: 111, baseType: !4147, size: 64, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4188, file: !88, line: 112, baseType: !4138, size: 64, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4188, file: !88, line: 113, baseType: !4224, size: 64, offset: 704)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!109, !4114, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4228)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4229)
!4229 = !{!4230}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4228, file: !101, line: 59, baseType: !109, size: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4188, file: !88, line: 114, baseType: !4147, size: 64, offset: 768)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4188, file: !88, line: 115, baseType: !316, size: 64, offset: 832)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4188, file: !88, line: 116, baseType: !316, size: 64, offset: 896)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4188, file: !88, line: 118, baseType: !4142, size: 64, offset: 960)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4188, file: !88, line: 119, baseType: !4138, size: 64, offset: 1024)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4188, file: !88, line: 121, baseType: !4237, size: 64, offset: 1088)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4175, file: !4176, line: 88, baseType: !4127, size: 64, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4175, file: !4176, line: 89, baseType: !4147, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4175, file: !4176, line: 90, baseType: !4138, size: 64, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4175, file: !4176, line: 91, baseType: !4138, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4175, file: !4176, line: 92, baseType: !4138, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4175, file: !4176, line: 94, baseType: !4147, size: 64, offset: 704)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4175, file: !4176, line: 95, baseType: !4147, size: 64, offset: 768)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4175, file: !4176, line: 97, baseType: !4224, size: 64, offset: 832)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4175, file: !4176, line: 98, baseType: !4147, size: 64, offset: 896)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4175, file: !4176, line: 100, baseType: !4147, size: 64, offset: 960)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4175, file: !4176, line: 102, baseType: !4147, size: 64, offset: 1024)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4175, file: !4176, line: 103, baseType: !4138, size: 64, offset: 1088)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4175, file: !4176, line: 105, baseType: !4142, size: 64, offset: 1152)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4175, file: !4176, line: 107, baseType: !4253, size: 64, offset: 1216)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4255)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4176, line: 107, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4175, file: !4176, line: 109, baseType: !165, size: 8, offset: 1280)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !212, file: !94, line: 715, baseType: !4187, size: 64, offset: 832)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !212, file: !94, line: 717, baseType: !154, size: 64, offset: 896)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !212, file: !94, line: 719, baseType: !154, size: 64, offset: 960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !212, file: !94, line: 721, baseType: !604, size: 256, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !212, file: !94, line: 725, baseType: !4262, size: 448, offset: 1280)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4262, file: !94, line: 518, baseType: !223, size: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4262, file: !94, line: 519, baseType: !223, size: 128, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4262, file: !94, line: 520, baseType: !223, size: 128, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4262, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !212, file: !94, line: 726, baseType: !4269, size: 2496, offset: 1728)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4353, !4357}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4269, file: !101, line: 664, baseType: !4227, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4269, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4269, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4269, file: !101, line: 667, baseType: !165, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4269, file: !101, line: 668, baseType: !165, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4269, file: !101, line: 669, baseType: !165, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4269, file: !101, line: 670, baseType: !165, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4269, file: !101, line: 671, baseType: !165, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4269, file: !101, line: 672, baseType: !165, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4269, file: !101, line: 673, baseType: !165, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4269, file: !101, line: 674, baseType: !165, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4269, file: !101, line: 675, baseType: !413, size: 32, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4269, file: !101, line: 676, baseType: !171, size: 32, offset: 96)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4269, file: !101, line: 678, baseType: !223, size: 128, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4269, file: !101, line: 679, baseType: !553, size: 256, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4269, file: !101, line: 680, baseType: !4287, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4289, line: 43, size: 1536, elements: !4290)
!4289 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4288, file: !4289, line: 44, baseType: !219, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4288, file: !4289, line: 45, baseType: !109, size: 32, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4288, file: !4289, line: 46, baseType: !223, size: 128, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4288, file: !4289, line: 47, baseType: !171, size: 32, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4288, file: !4289, line: 48, baseType: !4296, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4288, file: !4289, line: 49, baseType: !844, size: 320, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4288, file: !4289, line: 50, baseType: !314, size: 64, offset: 704)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4288, file: !4289, line: 51, baseType: !1499, size: 64, offset: 768)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4288, file: !4289, line: 52, baseType: !1499, size: 64, offset: 832)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4288, file: !4289, line: 53, baseType: !1499, size: 64, offset: 896)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4288, file: !4289, line: 54, baseType: !1499, size: 64, offset: 960)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4288, file: !4289, line: 55, baseType: !1499, size: 64, offset: 1024)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4288, file: !4289, line: 56, baseType: !314, size: 64, offset: 1088)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4288, file: !4289, line: 57, baseType: !314, size: 64, offset: 1152)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4288, file: !4289, line: 58, baseType: !314, size: 64, offset: 1216)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4288, file: !4289, line: 59, baseType: !314, size: 64, offset: 1280)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4288, file: !4289, line: 60, baseType: !314, size: 64, offset: 1344)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4288, file: !4289, line: 61, baseType: !4114, size: 64, offset: 1408)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4288, file: !4289, line: 62, baseType: !165, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4288, file: !4289, line: 63, baseType: !165, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4269, file: !101, line: 681, baseType: !165, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4269, file: !101, line: 682, baseType: !165, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4269, file: !101, line: 683, baseType: !165, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4269, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4269, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4269, file: !101, line: 690, baseType: !1491, size: 512, offset: 640)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4269, file: !101, line: 691, baseType: !416, size: 64, offset: 1152)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4269, file: !101, line: 692, baseType: !862, size: 256, offset: 1216)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4269, file: !101, line: 693, baseType: !1357, size: 192, offset: 1472)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4269, file: !101, line: 694, baseType: !4296, size: 64, offset: 1664)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4269, file: !101, line: 695, baseType: !191, size: 32, offset: 1728)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4269, file: !101, line: 696, baseType: !191, size: 32, offset: 1760)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4269, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4269, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4269, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4269, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4269, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4269, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4269, file: !101, line: 703, baseType: !165, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4269, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4269, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4269, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4269, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4269, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4269, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4269, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4269, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4269, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4269, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4269, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4269, file: !101, line: 715, baseType: !416, size: 64, offset: 2048)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4269, file: !101, line: 716, baseType: !416, size: 64, offset: 2112)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4269, file: !101, line: 717, baseType: !416, size: 64, offset: 2176)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4269, file: !101, line: 718, baseType: !416, size: 64, offset: 2240)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4269, file: !101, line: 720, baseType: !4348, size: 64, offset: 2304)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4350)
!4350 = !{!4351, !4352}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4349, file: !101, line: 633, baseType: !171, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4349, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4269, file: !101, line: 721, baseType: !4354, size: 64, offset: 2368)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4114, !600}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4269, file: !101, line: 722, baseType: !4358, size: 64, offset: 2432)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !212, file: !94, line: 727, baseType: !4361, size: 64, offset: 4224)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4370, !4371, !4372}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4362, file: !101, line: 743, baseType: !4144, size: 1472)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4362, file: !101, line: 744, baseType: !4147, size: 64, offset: 1472)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4362, file: !101, line: 745, baseType: !4367, size: 64, offset: 1536)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4114, !165}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4362, file: !101, line: 746, baseType: !4147, size: 64, offset: 1600)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4362, file: !101, line: 747, baseType: !4138, size: 64, offset: 1664)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4362, file: !101, line: 748, baseType: !4138, size: 64, offset: 1728)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !212, file: !94, line: 736, baseType: !4374, size: 128, offset: 4288)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4375)
!4375 = !{!4376, !4380}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4374, file: !94, line: 531, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4379, line: 13, flags: DIFlagFwdDecl)
!4379 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4374, file: !94, line: 532, baseType: !4381, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !212, file: !94, line: 738, baseType: !4384, size: 64, offset: 4416)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !212, file: !94, line: 740, baseType: !4388, size: 64, offset: 4480)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !212, file: !94, line: 741, baseType: !416, size: 64, offset: 4544)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !212, file: !94, line: 746, baseType: !416, size: 64, offset: 4608)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !212, file: !94, line: 747, baseType: !4392, size: 64, offset: 4672)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !212, file: !94, line: 749, baseType: !4396, size: 64, offset: 4736)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4398)
!4398 = !{!4399, !4400, !4401}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4397, file: !94, line: 433, baseType: !7, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4397, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4397, file: !94, line: 435, baseType: !314, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !212, file: !94, line: 751, baseType: !223, size: 128, offset: 4800)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !212, file: !94, line: 762, baseType: !4404, size: 64, offset: 4928)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !212, file: !94, line: 770, baseType: !4407, offset: 4992)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4408, line: 5, elements: !891)
!4408 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !212, file: !94, line: 772, baseType: !4410, size: 64, offset: 4992)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4412, line: 18, flags: DIFlagFwdDecl)
!4412 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !212, file: !94, line: 773, baseType: !4414, size: 64, offset: 5056)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4416, line: 41, size: 512, elements: !4417)
!4416 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4417 = !{!4418, !4419, !4513, !4514, !4515, !4516}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4415, file: !4416, line: 42, baseType: !4414, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4415, file: !4416, line: 43, baseType: !4420, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4422)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4416, line: 125, size: 1408, elements: !4423)
!4423 = !{!4424, !4428, !4432, !4438, !4442, !4443, !4448, !4452, !4456, !4460, !4464, !4465, !4469, !4473, !4477, !4488, !4489, !4490, !4491, !4501, !4505, !4509}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4422, file: !4416, line: 126, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!4414, !4414}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4422, file: !4416, line: 127, baseType: !4429, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4414}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4422, file: !4416, line: 128, baseType: !4433, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!165, !4436}
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4422, file: !4416, line: 129, baseType: !4439, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!2506, !4436, !4130}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4422, file: !4416, line: 131, baseType: !4433, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4422, file: !4416, line: 133, baseType: !4444, size: 64, offset: 320)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!4447, !4436}
!4447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4416, line: 132, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4422, file: !4416, line: 134, baseType: !4449, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!165, !4436, !219}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4422, file: !4416, line: 136, baseType: !4453, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!109, !4436, !219, !7, !154, !311}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4422, file: !4416, line: 141, baseType: !4457, size: 64, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!109, !4436, !219, !939, !311}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4422, file: !4416, line: 144, baseType: !4461, size: 64, offset: 576)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!219, !4436}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4422, file: !4416, line: 145, baseType: !4461, size: 64, offset: 640)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4422, file: !4416, line: 146, baseType: !4466, size: 64, offset: 704)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!4414, !4436}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4422, file: !4416, line: 148, baseType: !4470, size: 64, offset: 768)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4414, !4436, !4414}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4422, file: !4416, line: 151, baseType: !4474, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!4414, !4436, !219}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4422, file: !4416, line: 153, baseType: !4478, size: 64, offset: 896)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!109, !4436, !219, !219, !7, !7, !4481}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4416, line: 94, size: 640, elements: !4483)
!4483 = !{!4484, !4485, !4486}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4482, file: !4416, line: 95, baseType: !4414, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4482, file: !4416, line: 96, baseType: !7, size: 32, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4482, file: !4416, line: 97, baseType: !4487, size: 512, offset: 128)
!4487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !1534)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4422, file: !4416, line: 158, baseType: !4470, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4422, file: !4416, line: 161, baseType: !4466, size: 64, offset: 1024)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4422, file: !4416, line: 163, baseType: !4425, size: 64, offset: 1088)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4422, file: !4416, line: 164, baseType: !4492, size: 64, offset: 1152)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!109, !4436, !4495}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4416, line: 73, size: 128, elements: !4497)
!4497 = !{!4498, !4499, !4500}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4496, file: !4416, line: 74, baseType: !7, size: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4496, file: !4416, line: 75, baseType: !7, size: 32, offset: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4496, file: !4416, line: 76, baseType: !4436, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4422, file: !4416, line: 166, baseType: !4502, size: 64, offset: 1216)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!154, !4414, !109}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4422, file: !4416, line: 167, baseType: !4506, size: 64, offset: 1280)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!109, !4436, !7}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4422, file: !4416, line: 168, baseType: !4510, size: 64, offset: 1344)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!109, !4414}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4415, file: !4416, line: 44, baseType: !4114, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4415, file: !4416, line: 45, baseType: !223, size: 128, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4415, file: !4416, line: 46, baseType: !223, size: 128, offset: 320)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4415, file: !4416, line: 47, baseType: !199, size: 8, offset: 448)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !212, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !212, file: !94, line: 778, baseType: !499, size: 32, offset: 5152)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !212, file: !94, line: 779, baseType: !413, size: 32, offset: 5184)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !212, file: !94, line: 781, baseType: !171, size: 32, offset: 5216)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !212, file: !94, line: 782, baseType: !223, size: 128, offset: 5248)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !212, file: !94, line: 784, baseType: !4523, size: 64, offset: 5376)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4525)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4526, line: 52, size: 768, elements: !4527)
!4526 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4536, !4540, !4541, !4542, !4543, !4547, !4551}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4525, file: !4526, line: 53, baseType: !219, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4525, file: !4526, line: 55, baseType: !316, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4525, file: !4526, line: 56, baseType: !316, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4525, file: !4526, line: 58, baseType: !4127, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4525, file: !4526, line: 59, baseType: !4533, size: 64, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!264, !4130, !4136}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4525, file: !4526, line: 61, baseType: !4537, size: 64, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !4523}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4525, file: !4526, line: 62, baseType: !4138, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4525, file: !4526, line: 64, baseType: !4147, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4525, file: !4526, line: 66, baseType: !3966, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4525, file: !4526, line: 67, baseType: !4544, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!2506, !4130}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4525, file: !4526, line: 69, baseType: !4548, size: 64, offset: 640)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !4130, !3998, !3999}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4525, file: !4526, line: 71, baseType: !4142, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !212, file: !94, line: 785, baseType: !316, size: 64, offset: 5440)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !212, file: !94, line: 787, baseType: !4138, size: 64, offset: 5504)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !212, file: !94, line: 788, baseType: !4555, size: 64, offset: 5568)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !212, file: !94, line: 789, baseType: !4558, size: 64, offset: 5632)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !212, file: !94, line: 791, baseType: !4561, size: 64, offset: 5696)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4562, file: !94, line: 598, baseType: !116, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4562, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4562, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4562, file: !94, line: 601, baseType: !165, size: 8, offset: 96)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4562, file: !94, line: 602, baseType: !165, size: 8, offset: 104)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !212, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !212, file: !94, line: 795, baseType: !165, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !212, file: !94, line: 796, baseType: !165, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !212, file: !94, line: 797, baseType: !165, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !212, file: !94, line: 798, baseType: !165, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !212, file: !94, line: 799, baseType: !165, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !160, file: !161, line: 130, baseType: !4576, size: 64, offset: 5952)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device_id", file: !4200, line: 449, size: 64, elements: !4577)
!4577 = !{!4578, !4579}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4576, file: !4200, line: 450, baseType: !153, size: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4576, file: !4200, line: 451, baseType: !153, size: 32, offset: 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !160, file: !161, line: 131, baseType: !4581, size: 64, offset: 6016)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4583)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_config_ops", file: !4584, line: 97, size: 1088, elements: !4585)
!4584 = !DIFile(filename: "./include/linux/virtio_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b12f5288db5f9b29a3869a2adb1ae6a1")
!4585 = !{!4586, !4591, !4595, !4599, !4603, !4607, !4611, !4652, !4653, !4654, !4658, !4662, !4666, !4672, !4676, !4685, !4689}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4583, file: !4584, line: 98, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4590, !7, !154, !7}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4583, file: !4584, line: 100, baseType: !4592, size: 64, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4590, !7, !2506, !7}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !4583, file: !4584, line: 102, baseType: !4596, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!413, !4590}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4583, file: !4584, line: 103, baseType: !4600, size: 64, offset: 192)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!199, !4590}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "set_status", scope: !4583, file: !4584, line: 104, baseType: !4604, size: 64, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !4590, !199}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4583, file: !4584, line: 105, baseType: !4608, size: 64, offset: 320)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{null, !4590}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "find_vqs", scope: !4583, file: !4584, line: 106, baseType: !4612, size: 64, offset: 384)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!109, !4590, !7, !4615, !4631, !4634, !4636, !4638}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtqueue", file: !161, line: 30, size: 512, elements: !4618)
!4618 = !{!4619, !4620, !4624, !4625, !4626, !4627, !4628, !4629, !4630}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4617, file: !161, line: 31, baseType: !223, size: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4617, file: !161, line: 32, baseType: !4621, size: 64, offset: 128)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !4616}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4617, file: !161, line: 33, baseType: !219, size: 64, offset: 192)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4617, file: !161, line: 34, baseType: !4590, size: 64, offset: 256)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4617, file: !161, line: 35, baseType: !7, size: 32, offset: 320)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !4617, file: !161, line: 36, baseType: !7, size: 32, offset: 352)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "num_max", scope: !4617, file: !161, line: 37, baseType: !7, size: 32, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4617, file: !161, line: 38, baseType: !165, size: 8, offset: 416)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4617, file: !161, line: 39, baseType: !154, size: 64, offset: 448)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_typedef, name: "vq_callback_t", file: !4584, line: 19, baseType: !4622)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity", file: !4640, line: 285, size: 384, elements: !4641)
!4640 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4641 = !{!4642, !4643, !4644, !4645, !4647, !4651}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vectors", scope: !4639, file: !4640, line: 286, baseType: !7, size: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "post_vectors", scope: !4639, file: !4640, line: 287, baseType: !7, size: 32, offset: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sets", scope: !4639, file: !4640, line: 288, baseType: !7, size: 32, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "set_size", scope: !4639, file: !4640, line: 289, baseType: !4646, size: 128, offset: 96)
!4646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !832)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "calc_sets", scope: !4639, file: !4640, line: 290, baseType: !4648, size: 64, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !4638, !7}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4639, file: !4640, line: 291, baseType: !154, size: 64, offset: 320)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "del_vqs", scope: !4583, file: !4584, line: 110, baseType: !4608, size: 64, offset: 448)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize_cbs", scope: !4583, file: !4584, line: 111, baseType: !4608, size: 64, offset: 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !4583, file: !4584, line: 112, baseType: !4655, size: 64, offset: 576)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!416, !4590}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_features", scope: !4583, file: !4584, line: 113, baseType: !4659, size: 64, offset: 640)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!109, !4590}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4583, file: !4584, line: 114, baseType: !4663, size: 64, offset: 704)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!219, !4590}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_affinity", scope: !4583, file: !4584, line: 115, baseType: !4667, size: 64, offset: 768)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!109, !4616, !4670}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_affinity", scope: !4583, file: !4584, line: 117, baseType: !4673, size: 64, offset: 832)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!4670, !4590, !109}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "get_shm_region", scope: !4583, file: !4584, line: 119, baseType: !4677, size: 64, offset: 896)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!165, !4590, !4680, !199}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_shm_region", file: !4584, line: 14, size: 128, elements: !4682)
!4682 = !{!4683, !4684}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4681, file: !4584, line: 15, baseType: !416, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4681, file: !4584, line: 16, baseType: !416, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vq_and_reset", scope: !4583, file: !4584, line: 121, baseType: !4686, size: 64, offset: 960)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!109, !4616}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vq_after_reset", scope: !4583, file: !4584, line: 122, baseType: !4686, size: 64, offset: 1024)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "vringh_config", scope: !160, file: !161, line: 132, baseType: !4691, size: 64, offset: 6080)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4693)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "vringh_config_ops", file: !161, line: 132, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !160, file: !161, line: 133, baseType: !223, size: 128, offset: 6144)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !160, file: !161, line: 134, baseType: !416, size: 64, offset: 6272)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !160, file: !161, line: 135, baseType: !154, size: 64, offset: 6336)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !156, file: !157, line: 47, baseType: !4698, size: 64, offset: 6400)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4700, line: 322, size: 16640, elements: !4701)
!4700 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4701 = !{!4702, !4703, !4775, !4776, !4777, !4778, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4884, !4885, !4886, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4963, !4964, !4965, !4967, !4968, !4970, !4971, !4972, !4973, !4979, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4699, file: !4700, line: 323, baseType: !223, size: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4699, file: !4700, line: 324, baseType: !4704, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4700, line: 647, size: 8256, elements: !4706)
!4706 = !{!4707, !4708, !4709, !4710, !4711, !4712, !4713, !4728, !4729, !4730, !4754, !4755, !4758, !4759, !4760, !4761, !4762, !4766, !4767, !4769, !4770, !4771, !4772, !4773, !4774}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4705, file: !4700, line: 648, baseType: !223, size: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4705, file: !4700, line: 649, baseType: !4704, size: 64, offset: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4705, file: !4700, line: 650, baseType: !223, size: 128, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4705, file: !4700, line: 651, baseType: !223, size: 128, offset: 320)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4705, file: !4700, line: 652, baseType: !4698, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4705, file: !4700, line: 653, baseType: !223, size: 128, offset: 512)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4705, file: !4700, line: 655, baseType: !4714, size: 256, offset: 640)
!4714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4715, size: 256, elements: !832)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4717, line: 21, size: 512, elements: !4718)
!4717 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4718 = !{!4719, !4721, !4722, !4723, !4724, !4725, !4726, !4727}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4716, file: !4717, line: 22, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !166, line: 164, baseType: !3210)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4716, file: !4717, line: 23, baseType: !4720, size: 64, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4716, file: !4717, line: 24, baseType: !219, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4716, file: !4717, line: 25, baseType: !314, size: 64, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4716, file: !4717, line: 26, baseType: !314, size: 64, offset: 256)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4716, file: !4717, line: 27, baseType: !4715, size: 64, offset: 320)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4716, file: !4717, line: 27, baseType: !4715, size: 64, offset: 384)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4716, file: !4717, line: 27, baseType: !4715, size: 64, offset: 448)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4705, file: !4700, line: 656, baseType: !223, size: 128, offset: 896)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4705, file: !4700, line: 657, baseType: !4716, size: 512, offset: 1024)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4705, file: !4700, line: 659, baseType: !4731, size: 64, offset: 1536)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4700, line: 773, size: 320, elements: !4733)
!4733 = !{!4734, !4738, !4742, !4746, !4750}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4732, file: !4700, line: 774, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!109, !4704}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4732, file: !4700, line: 775, baseType: !4739, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !4704}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4732, file: !4700, line: 776, baseType: !4743, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!154, !4704, !7, !109}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4732, file: !4700, line: 777, baseType: !4747, size: 64, offset: 192)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!109, !4704, !7, !109, !109, !2583}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4732, file: !4700, line: 778, baseType: !4751, size: 64, offset: 256)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!109, !4704, !7, !109, !109, !413}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4705, file: !4700, line: 660, baseType: !154, size: 64, offset: 1600)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4705, file: !4700, line: 661, baseType: !4756, size: 64, offset: 1664)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4640, line: 131, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4705, file: !4700, line: 663, baseType: !202, size: 8, offset: 1728)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4705, file: !4700, line: 664, baseType: !202, size: 8, offset: 1736)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4705, file: !4700, line: 665, baseType: !202, size: 8, offset: 1744)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4705, file: !4700, line: 666, baseType: !202, size: 8, offset: 1752)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4705, file: !4700, line: 671, baseType: !4763, size: 384, offset: 1760)
!4763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 384, elements: !4764)
!4764 = !{!4765}
!4765 = !DISubrange(count: 48)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4705, file: !4700, line: 673, baseType: !151, size: 16, offset: 2144)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4705, file: !4700, line: 674, baseType: !4768, size: 16, offset: 2160)
!4768 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4700, line: 255, baseType: !151)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4705, file: !4700, line: 675, baseType: !4114, size: 64, offset: 2176)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4705, file: !4700, line: 676, baseType: !212, size: 5824, offset: 2240)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4705, file: !4700, line: 677, baseType: !330, size: 64, offset: 8064)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4705, file: !4700, line: 678, baseType: !330, size: 64, offset: 8128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4705, file: !4700, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4705, file: !4700, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4699, file: !4700, line: 325, baseType: !4704, size: 64, offset: 192)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4699, file: !4700, line: 327, baseType: !154, size: 64, offset: 256)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4699, file: !4700, line: 328, baseType: !4756, size: 64, offset: 320)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4699, file: !4700, line: 329, baseType: !4779, size: 64, offset: 384)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4700, line: 76, size: 832, elements: !4781)
!4781 = !{!4782, !4783, !4784, !4787, !4788}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4780, file: !4700, line: 77, baseType: !4704, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4780, file: !4700, line: 78, baseType: !223, size: 128, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4780, file: !4700, line: 79, baseType: !4785, size: 64, offset: 192)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4700, line: 79, flags: DIFlagFwdDecl)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4780, file: !4700, line: 80, baseType: !202, size: 8, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4780, file: !4700, line: 81, baseType: !215, size: 512, offset: 320)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4699, file: !4700, line: 331, baseType: !7, size: 32, offset: 448)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4699, file: !4700, line: 332, baseType: !151, size: 16, offset: 480)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4699, file: !4700, line: 333, baseType: !151, size: 16, offset: 496)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4699, file: !4700, line: 334, baseType: !151, size: 16, offset: 512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4699, file: !4700, line: 335, baseType: !151, size: 16, offset: 528)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4699, file: !4700, line: 336, baseType: !7, size: 32, offset: 544)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4699, file: !4700, line: 337, baseType: !199, size: 8, offset: 576)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4699, file: !4700, line: 338, baseType: !199, size: 8, offset: 584)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4699, file: !4700, line: 344, baseType: !4798, size: 64, offset: 640)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4700, line: 319, flags: DIFlagFwdDecl)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4699, file: !4700, line: 345, baseType: !4698, size: 64, offset: 704)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4699, file: !4700, line: 347, baseType: !413, size: 32, offset: 768)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4699, file: !4700, line: 348, baseType: !199, size: 8, offset: 800)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4699, file: !4700, line: 349, baseType: !199, size: 8, offset: 808)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4699, file: !4700, line: 350, baseType: !199, size: 8, offset: 816)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4699, file: !4700, line: 351, baseType: !199, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4699, file: !4700, line: 352, baseType: !199, size: 8, offset: 832)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4699, file: !4700, line: 353, baseType: !199, size: 8, offset: 840)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4699, file: !4700, line: 354, baseType: !208, size: 16, offset: 848)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4699, file: !4700, line: 355, baseType: !953, size: 64, offset: 896)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4699, file: !4700, line: 357, baseType: !4811, size: 64, offset: 960)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4700, line: 918, size: 2368, elements: !4813)
!4813 = !{!4814, !4815, !4816, !4829, !4833, !4837, !4841, !4845, !4846, !4850, !4851, !4855, !4875, !4876, !4877, !4878, !4883}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4812, file: !4700, line: 919, baseType: !223, size: 128)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4812, file: !4700, line: 920, baseType: !219, size: 64, offset: 128)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4812, file: !4700, line: 921, baseType: !4817, size: 64, offset: 192)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4819)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4200, line: 44, size: 320, elements: !4820)
!4820 = !{!4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4819, file: !4200, line: 45, baseType: !153, size: 32)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4819, file: !4200, line: 45, baseType: !153, size: 32, offset: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4819, file: !4200, line: 46, baseType: !153, size: 32, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4819, file: !4200, line: 46, baseType: !153, size: 32, offset: 96)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4819, file: !4200, line: 47, baseType: !153, size: 32, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4819, file: !4200, line: 47, baseType: !153, size: 32, offset: 160)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4819, file: !4200, line: 48, baseType: !4216, size: 64, offset: 192)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4819, file: !4200, line: 49, baseType: !153, size: 32, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4812, file: !4700, line: 922, baseType: !4830, size: 64, offset: 256)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!109, !4698, !4817}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4812, file: !4700, line: 923, baseType: !4834, size: 64, offset: 320)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{null, !4698}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4812, file: !4700, line: 924, baseType: !4838, size: 64, offset: 384)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!109, !4698, !4227}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4812, file: !4700, line: 925, baseType: !4842, size: 64, offset: 448)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!109, !4698}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4812, file: !4700, line: 926, baseType: !4834, size: 64, offset: 512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4812, file: !4700, line: 927, baseType: !4847, size: 64, offset: 576)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!109, !4698, !109}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4812, file: !4700, line: 928, baseType: !4847, size: 64, offset: 640)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4812, file: !4700, line: 929, baseType: !4852, size: 64, offset: 704)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!413, !4698}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4812, file: !4700, line: 930, baseType: !4856, size: 64, offset: 768)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4858)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4700, line: 837, size: 448, elements: !4859)
!4859 = !{!4860, !4866, !4870, !4871, !4872, !4873, !4874}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4858, file: !4700, line: 839, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!4864, !4698, !4865}
!4864 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4700, line: 814, baseType: !7)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4700, line: 196, baseType: !7)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4858, file: !4700, line: 843, baseType: !4867, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!4864, !4698}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4858, file: !4700, line: 846, baseType: !4867, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4858, file: !4700, line: 849, baseType: !4834, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4858, file: !4700, line: 850, baseType: !4834, size: 64, offset: 256)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4858, file: !4700, line: 853, baseType: !4834, size: 64, offset: 320)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4858, file: !4700, line: 856, baseType: !4834, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4812, file: !4700, line: 931, baseType: !316, size: 64, offset: 832)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4812, file: !4700, line: 932, baseType: !316, size: 64, offset: 896)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4812, file: !4700, line: 933, baseType: !4188, size: 1152, offset: 960)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4812, file: !4700, line: 934, baseType: !4879, size: 192, offset: 2112)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4700, line: 801, size: 192, elements: !4880)
!4880 = !{!4881, !4882}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4879, file: !4700, line: 802, baseType: !171, size: 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4879, file: !4700, line: 803, baseType: !223, size: 128, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4812, file: !4700, line: 935, baseType: !165, size: 8, offset: 2304)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4699, file: !4700, line: 358, baseType: !416, size: 64, offset: 1024)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4699, file: !4700, line: 364, baseType: !4397, size: 128, offset: 1088)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4699, file: !4700, line: 366, baseType: !4887, size: 32, offset: 1216)
!4887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4700, line: 171, baseType: !109)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4699, file: !4700, line: 369, baseType: !199, size: 8, offset: 1248)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4699, file: !4700, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4699, file: !4700, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4699, file: !4700, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4699, file: !4700, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4699, file: !4700, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4699, file: !4700, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4699, file: !4700, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4699, file: !4700, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4699, file: !4700, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4699, file: !4700, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4699, file: !4700, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4699, file: !4700, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4699, file: !4700, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4699, file: !4700, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4699, file: !4700, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4699, file: !4700, line: 390, baseType: !7, size: 32, offset: 1280)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4699, file: !4700, line: 391, baseType: !7, size: 32, offset: 1312)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4699, file: !4700, line: 394, baseType: !4907, size: 64, offset: 1344)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4700, line: 316, flags: DIFlagFwdDecl)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4699, file: !4700, line: 395, baseType: !208, size: 16, offset: 1408)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4699, file: !4700, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4699, file: !4700, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4699, file: !4700, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4699, file: !4700, line: 402, baseType: !4865, size: 32, offset: 1440)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4699, file: !4700, line: 403, baseType: !212, size: 5824, offset: 1472)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4699, file: !4700, line: 405, baseType: !109, size: 32, offset: 7296)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4699, file: !4700, line: 411, baseType: !7, size: 32, offset: 7328)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4699, file: !4700, line: 412, baseType: !4918, size: 5632, offset: 7360)
!4918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4716, size: 5632, elements: !4919)
!4919 = !{!4920}
!4920 = !DISubrange(count: 11)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4699, file: !4700, line: 413, baseType: !4716, size: 512, offset: 12992)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4699, file: !4700, line: 415, baseType: !165, size: 8, offset: 13504)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4699, file: !4700, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4699, file: !4700, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4699, file: !4700, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4699, file: !4700, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4699, file: !4700, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4699, file: !4700, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4699, file: !4700, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4699, file: !4700, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4699, file: !4700, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4699, file: !4700, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4699, file: !4700, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4699, file: !4700, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4699, file: !4700, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4699, file: !4700, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4699, file: !4700, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4699, file: !4700, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4699, file: !4700, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4699, file: !4700, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4699, file: !4700, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4699, file: !4700, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4699, file: !4700, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4699, file: !4700, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4699, file: !4700, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4699, file: !4700, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4699, file: !4700, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4699, file: !4700, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4699, file: !4700, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4699, file: !4700, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4699, file: !4700, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4699, file: !4700, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4699, file: !4700, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4699, file: !4700, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4699, file: !4700, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4699, file: !4700, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4699, file: !4700, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4699, file: !4700, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4699, file: !4700, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4699, file: !4700, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4699, file: !4700, line: 468, baseType: !4962, size: 16, offset: 13552)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4700, line: 222, baseType: !151)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4699, file: !4700, line: 469, baseType: !191, size: 32, offset: 13568)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4699, file: !4700, line: 471, baseType: !171, size: 32, offset: 13600)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4699, file: !4700, line: 472, baseType: !4966, size: 512, offset: 13632)
!4966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 512, elements: !2684)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4699, file: !4700, line: 473, baseType: !972, size: 64, offset: 14144)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4699, file: !4700, line: 474, baseType: !4969, size: 704, offset: 14208)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 704, elements: !4919)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4699, file: !4700, line: 475, baseType: !4969, size: 704, offset: 14912)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4699, file: !4700, line: 487, baseType: !154, size: 64, offset: 15616)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4699, file: !4700, line: 488, baseType: !562, size: 32, offset: 15680)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4699, file: !4700, line: 490, baseType: !4974, size: 320, offset: 15744)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4700, line: 309, size: 320, elements: !4975)
!4975 = !{!4976, !4977, !4978}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4974, file: !4700, line: 310, baseType: !604, size: 256)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4974, file: !4700, line: 311, baseType: !7, size: 32, offset: 256)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4974, file: !4700, line: 312, baseType: !199, size: 8, offset: 288)
!4979 = !DIDerivedType(tag: DW_TAG_member, scope: !4699, file: !4700, line: 497, baseType: !4980, size: 64, offset: 16064)
!4980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4699, file: !4700, line: 497, size: 64, elements: !4981)
!4981 = !{!4982, !4985}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4980, file: !4700, line: 498, baseType: !4983, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4700, line: 317, flags: DIFlagFwdDecl)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4980, file: !4700, line: 499, baseType: !4698, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4699, file: !4700, line: 501, baseType: !208, size: 16, offset: 16128)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4699, file: !4700, line: 502, baseType: !199, size: 8, offset: 16144)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4699, file: !4700, line: 505, baseType: !208, size: 16, offset: 16160)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4699, file: !4700, line: 506, baseType: !413, size: 32, offset: 16192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4699, file: !4700, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4699, file: !4700, line: 510, baseType: !208, size: 16, offset: 16240)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4699, file: !4700, line: 511, baseType: !208, size: 16, offset: 16256)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4699, file: !4700, line: 519, baseType: !208, size: 16, offset: 16272)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4699, file: !4700, line: 520, baseType: !3210, size: 64, offset: 16320)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4699, file: !4700, line: 521, baseType: !311, size: 64, offset: 16384)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4699, file: !4700, line: 526, baseType: !219, size: 64, offset: 16448)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4699, file: !4700, line: 528, baseType: !314, size: 64, offset: 16512)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4699, file: !4700, line: 531, baseType: !4999, size: 56, offset: 16576)
!4999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 56, elements: !723)
!5000 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !157, line: 48, baseType: !5001, size: 832, offset: 6464)
!5001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !157, line: 48, size: 832, elements: !5002)
!5002 = !{!5003, !5012}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "ldev", scope: !5001, file: !157, line: 49, baseType: !5004, size: 256)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_legacy_device", file: !5005, line: 9, size: 256, elements: !5006)
!5005 = !DIFile(filename: "./include/linux/virtio_pci_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee6c03d3d436bf1592fa3d175ed801b")
!5006 = !{!5007, !5008, !5010, !5011}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !5004, file: !5005, line: 10, baseType: !4698, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !5004, file: !5005, line: 13, baseType: !5009, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ioaddr", scope: !5004, file: !5005, line: 15, baseType: !154, size: 64, offset: 128)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5004, file: !5005, line: 17, baseType: !4576, size: 64, offset: 192)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !5001, file: !157, line: 50, baseType: !5013, size: 832)
!5013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_modern_device", file: !5014, line: 15, size: 832, elements: !5015)
!5014 = !DIFile(filename: "./include/linux/virtio_pci_modern.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f45c800c22e78402b1cacce9860fa2cb")
!5015 = !{!5016, !5017, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !5013, file: !5014, line: 16, baseType: !4698, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !5013, file: !5014, line: 18, baseType: !5018, size: 64, offset: 64)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_common_cfg", file: !5020, line: 144, size: 448, elements: !5021)
!5020 = !DIFile(filename: "./include/uapi/linux/virtio_pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "73fe8ac18ab2f9bcc01047ca8cd0fd27")
!5021 = !{!5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "device_feature_select", scope: !5019, file: !5020, line: 146, baseType: !152, size: 32)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "device_feature", scope: !5019, file: !5020, line: 147, baseType: !152, size: 32, offset: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "guest_feature_select", scope: !5019, file: !5020, line: 148, baseType: !152, size: 32, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "guest_feature", scope: !5019, file: !5020, line: 149, baseType: !152, size: 32, offset: 96)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "msix_config", scope: !5019, file: !5020, line: 150, baseType: !147, size: 16, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "num_queues", scope: !5019, file: !5020, line: 151, baseType: !147, size: 16, offset: 144)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !5019, file: !5020, line: 152, baseType: !201, size: 8, offset: 160)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "config_generation", scope: !5019, file: !5020, line: 153, baseType: !201, size: 8, offset: 168)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "queue_select", scope: !5019, file: !5020, line: 156, baseType: !147, size: 16, offset: 176)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "queue_size", scope: !5019, file: !5020, line: 157, baseType: !147, size: 16, offset: 192)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "queue_msix_vector", scope: !5019, file: !5020, line: 158, baseType: !147, size: 16, offset: 208)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "queue_enable", scope: !5019, file: !5020, line: 159, baseType: !147, size: 16, offset: 224)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "queue_notify_off", scope: !5019, file: !5020, line: 160, baseType: !147, size: 16, offset: 240)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "queue_desc_lo", scope: !5019, file: !5020, line: 161, baseType: !152, size: 32, offset: 256)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "queue_desc_hi", scope: !5019, file: !5020, line: 162, baseType: !152, size: 32, offset: 288)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "queue_avail_lo", scope: !5019, file: !5020, line: 163, baseType: !152, size: 32, offset: 320)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "queue_avail_hi", scope: !5019, file: !5020, line: 164, baseType: !152, size: 32, offset: 352)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "queue_used_lo", scope: !5019, file: !5020, line: 165, baseType: !152, size: 32, offset: 384)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "queue_used_hi", scope: !5019, file: !5020, line: 166, baseType: !152, size: 32, offset: 416)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5013, file: !5014, line: 20, baseType: !154, size: 64, offset: 128)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "notify_base", scope: !5013, file: !5014, line: 22, baseType: !154, size: 64, offset: 192)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "notify_pa", scope: !5013, file: !5014, line: 24, baseType: !4720, size: 64, offset: 256)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !5013, file: !5014, line: 26, baseType: !5009, size: 64, offset: 320)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "notify_len", scope: !5013, file: !5014, line: 29, baseType: !311, size: 64, offset: 384)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "device_len", scope: !5013, file: !5014, line: 30, baseType: !311, size: 64, offset: 448)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "notify_map_cap", scope: !5013, file: !5014, line: 33, baseType: !109, size: 32, offset: 512)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "notify_offset_multiplier", scope: !5013, file: !5014, line: 36, baseType: !413, size: 32, offset: 544)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "modern_bars", scope: !5013, file: !5014, line: 38, baseType: !109, size: 32, offset: 576)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5013, file: !5014, line: 40, baseType: !4576, size: 64, offset: 608)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_check", scope: !5013, file: !5014, line: 43, baseType: !4842, size: 64, offset: 704)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5013, file: !5014, line: 46, baseType: !416, size: 64, offset: 768)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "is_legacy", scope: !156, file: !157, line: 52, baseType: !165, size: 8, offset: 7296)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !156, file: !157, line: 55, baseType: !5009, size: 64, offset: 7360)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !156, file: !157, line: 58, baseType: !171, size: 32, offset: 7424)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "virtqueues", scope: !156, file: !157, line: 59, baseType: !223, size: 128, offset: 7488)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !156, file: !157, line: 62, baseType: !5058, size: 64, offset: 7616)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_vq_info", file: !157, line: 33, size: 256, elements: !5061)
!5061 = !{!5062, !5063, !5064}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "vq", scope: !5060, file: !157, line: 35, baseType: !4616, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5060, file: !157, line: 38, baseType: !223, size: 128, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "msix_vector", scope: !5060, file: !157, line: 41, baseType: !7, size: 32, offset: 192)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !156, file: !157, line: 65, baseType: !109, size: 32, offset: 7680)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "intx_enabled", scope: !156, file: !157, line: 66, baseType: !109, size: 32, offset: 7712)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "msix_affinity_masks", scope: !156, file: !157, line: 67, baseType: !5068, size: 64, offset: 7744)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1614, line: 913, baseType: !5070)
!5070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1615, size: 64, elements: !1619)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "msix_names", scope: !156, file: !157, line: 70, baseType: !5072, size: 64, offset: 7808)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 2048, elements: !5074)
!5074 = !{!5075}
!5075 = !DISubrange(count: 256)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "msix_vectors", scope: !156, file: !157, line: 72, baseType: !7, size: 32, offset: 7872)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "msix_used_vectors", scope: !156, file: !157, line: 74, baseType: !7, size: 32, offset: 7904)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "per_vq_vectors", scope: !156, file: !157, line: 77, baseType: !165, size: 8, offset: 7936)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "setup_vq", scope: !156, file: !157, line: 79, baseType: !5080, size: 64, offset: 8000)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!4616, !155, !5059, !7, !4621, !219, !165, !208}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "del_vq", scope: !156, file: !157, line: 86, baseType: !5084, size: 64, offset: 8064)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !5059}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "config_vector", scope: !156, file: !157, line: 88, baseType: !5088, size: 64, offset: 8128)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!208, !155, !208}
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !226)
!5093 = !{!0, !5094, !5099, !5104, !5109, !5114, !5119, !5124, !5129, !5134}
!5094 = !DIGlobalVariableExpression(var: !5095, expr: !DIExpression())
!5095 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !5096, isLocal: true, isDefinition: true)
!5096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 280, elements: !5097)
!5097 = !{!5098}
!5098 = !DISubrange(count: 35)
!5099 = !DIGlobalVariableExpression(var: !5100, expr: !DIExpression())
!5100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !5101, isLocal: true, isDefinition: true)
!5101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 600, elements: !5102)
!5102 = !{!5103}
!5103 = !DISubrange(count: 75)
!5104 = !DIGlobalVariableExpression(var: !5105, expr: !DIExpression())
!5105 = distinct !DIGlobalVariable(scope: null, file: !4584, line: 160, type: !5106, isLocal: true, isDefinition: true)
!5106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 240, elements: !5107)
!5107 = !{!5108}
!5108 = !DISubrange(count: 30)
!5109 = !DIGlobalVariableExpression(var: !5110, expr: !DIExpression())
!5110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !5111, isLocal: true, isDefinition: true)
!5111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 304, elements: !5112)
!5112 = !{!5113}
!5113 = !DISubrange(count: 38)
!5114 = !DIGlobalVariableExpression(var: !5115, expr: !DIExpression())
!5115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !5116, isLocal: true, isDefinition: true)
!5116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 144, elements: !5117)
!5117 = !{!5118}
!5118 = !DISubrange(count: 18)
!5119 = !DIGlobalVariableExpression(var: !5120, expr: !DIExpression())
!5120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 483, type: !5121, isLocal: true, isDefinition: true)
!5121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 296, elements: !5122)
!5122 = !{!5123}
!5123 = !DISubrange(count: 37)
!5124 = !DIGlobalVariableExpression(var: !5125, expr: !DIExpression())
!5125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !5126, isLocal: true, isDefinition: true)
!5126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 376, elements: !5127)
!5127 = !{!5128}
!5128 = !DISubrange(count: 47)
!5129 = !DIGlobalVariableExpression(var: !5130, expr: !DIExpression())
!5130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !5131, isLocal: true, isDefinition: true)
!5131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !5132)
!5132 = !{!5133}
!5133 = !DISubrange(count: 24)
!5134 = !DIGlobalVariableExpression(var: !5135, expr: !DIExpression())
!5135 = distinct !DIGlobalVariable(name: "virtio_pci_config_nodev_ops", scope: !2, file: !3, line: 494, type: !4582, isLocal: true, isDefinition: true)
!5136 = !{i32 7, !"Dwarf Version", i32 5}
!5137 = !{i32 2, !"Debug Info Version", i32 3}
!5138 = !{i32 1, !"wchar_size", i32 2}
!5139 = !{i32 8, !"cf-protection-branch", i32 1}
!5140 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5141 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5142 = !{i32 1, !"Code Model", i32 2}
!5143 = !{i32 1, !"override-stack-alignment", i32 8}
!5144 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5145 = distinct !DISubprogram(name: "virtio_pci_modern_probe", scope: !3, file: !3, line: 535, type: !5146, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5148)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!109, !155}
!5148 = !{!5149, !5150, !5152, !5153}
!5149 = !DILocalVariable(name: "vp_dev", arg: 1, scope: !5145, file: !3, line: 535, type: !155)
!5150 = !DILocalVariable(name: "mdev", scope: !5145, file: !3, line: 537, type: !5151)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5152 = !DILocalVariable(name: "pci_dev", scope: !5145, file: !3, line: 538, type: !4698)
!5153 = !DILocalVariable(name: "err", scope: !5145, file: !3, line: 539, type: !109)
!5154 = !DILocation(line: 535, column: 55, scope: !5145)
!5155 = !DILocation(line: 537, column: 2, scope: !5145)
!5156 = !DILocation(line: 537, column: 35, scope: !5145)
!5157 = !DILocation(line: 537, column: 43, scope: !5145)
!5158 = !DILocation(line: 537, column: 51, scope: !5145)
!5159 = !DILocation(line: 538, column: 2, scope: !5145)
!5160 = !DILocation(line: 538, column: 18, scope: !5145)
!5161 = !DILocation(line: 538, column: 28, scope: !5145)
!5162 = !DILocation(line: 538, column: 36, scope: !5145)
!5163 = !DILocation(line: 539, column: 2, scope: !5145)
!5164 = !DILocation(line: 539, column: 6, scope: !5145)
!5165 = !DILocation(line: 541, column: 18, scope: !5145)
!5166 = !DILocation(line: 541, column: 2, scope: !5145)
!5167 = !DILocation(line: 541, column: 8, scope: !5145)
!5168 = !DILocation(line: 541, column: 16, scope: !5145)
!5169 = !DILocation(line: 543, column: 24, scope: !5145)
!5170 = !DILocation(line: 543, column: 8, scope: !5145)
!5171 = !DILocation(line: 543, column: 6, scope: !5145)
!5172 = !DILocation(line: 544, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 544, column: 6)
!5174 = !DILocation(line: 544, column: 6, scope: !5145)
!5175 = !DILocation(line: 545, column: 10, scope: !5173)
!5176 = !DILocation(line: 545, column: 3, scope: !5173)
!5177 = !DILocation(line: 547, column: 6, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 547, column: 6)
!5179 = !DILocation(line: 547, column: 12, scope: !5178)
!5180 = !DILocation(line: 547, column: 6, scope: !5145)
!5181 = !DILocation(line: 548, column: 3, scope: !5178)
!5182 = !DILocation(line: 548, column: 11, scope: !5178)
!5183 = !DILocation(line: 548, column: 16, scope: !5178)
!5184 = !DILocation(line: 548, column: 23, scope: !5178)
!5185 = !DILocation(line: 550, column: 3, scope: !5178)
!5186 = !DILocation(line: 550, column: 11, scope: !5178)
!5187 = !DILocation(line: 550, column: 16, scope: !5178)
!5188 = !DILocation(line: 550, column: 23, scope: !5178)
!5189 = !DILocation(line: 552, column: 2, scope: !5145)
!5190 = !DILocation(line: 552, column: 10, scope: !5145)
!5191 = !DILocation(line: 552, column: 24, scope: !5145)
!5192 = !DILocation(line: 553, column: 2, scope: !5145)
!5193 = !DILocation(line: 553, column: 10, scope: !5145)
!5194 = !DILocation(line: 553, column: 19, scope: !5145)
!5195 = !DILocation(line: 554, column: 2, scope: !5145)
!5196 = !DILocation(line: 554, column: 10, scope: !5145)
!5197 = !DILocation(line: 554, column: 17, scope: !5145)
!5198 = !DILocation(line: 555, column: 16, scope: !5145)
!5199 = !DILocation(line: 555, column: 22, scope: !5145)
!5200 = !DILocation(line: 555, column: 2, scope: !5145)
!5201 = !DILocation(line: 555, column: 10, scope: !5145)
!5202 = !DILocation(line: 555, column: 14, scope: !5145)
!5203 = !DILocation(line: 556, column: 2, scope: !5145)
!5204 = !DILocation(line: 556, column: 10, scope: !5145)
!5205 = !DILocation(line: 556, column: 15, scope: !5145)
!5206 = !DILocation(line: 556, column: 20, scope: !5145)
!5207 = !DILocation(line: 556, column: 26, scope: !5145)
!5208 = !DILocation(line: 558, column: 2, scope: !5145)
!5209 = !DILocation(line: 559, column: 1, scope: !5145)
!5210 = !DISubprogram(name: "vp_modern_probe", scope: !5014, file: !5014, line: 120, type: !5211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!109, !5151}
!5213 = distinct !DISubprogram(name: "vp_config_vector", scope: !3, file: !3, line: 286, type: !5089, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5214 = !{!5215, !5216}
!5215 = !DILocalVariable(name: "vp_dev", arg: 1, scope: !5213, file: !3, line: 286, type: !155)
!5216 = !DILocalVariable(name: "vector", arg: 2, scope: !5213, file: !3, line: 286, type: !208)
!5217 = !DILocation(line: 286, column: 55, scope: !5213)
!5218 = !DILocation(line: 286, column: 67, scope: !5213)
!5219 = !DILocation(line: 288, column: 34, scope: !5213)
!5220 = !DILocation(line: 288, column: 42, scope: !5213)
!5221 = !DILocation(line: 288, column: 48, scope: !5213)
!5222 = !DILocation(line: 288, column: 9, scope: !5213)
!5223 = !DILocation(line: 288, column: 2, scope: !5213)
!5224 = distinct !DISubprogram(name: "setup_vq", scope: !3, file: !3, line: 300, type: !5081, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5225 = !{!5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5238, !5239, !5240, !5241}
!5226 = !DILocalVariable(name: "vp_dev", arg: 1, scope: !5224, file: !3, line: 300, type: !155)
!5227 = !DILocalVariable(name: "info", arg: 2, scope: !5224, file: !3, line: 301, type: !5059)
!5228 = !DILocalVariable(name: "index", arg: 3, scope: !5224, file: !3, line: 302, type: !7)
!5229 = !DILocalVariable(name: "callback", arg: 4, scope: !5224, file: !3, line: 303, type: !4621)
!5230 = !DILocalVariable(name: "name", arg: 5, scope: !5224, file: !3, line: 304, type: !219)
!5231 = !DILocalVariable(name: "ctx", arg: 6, scope: !5224, file: !3, line: 305, type: !165)
!5232 = !DILocalVariable(name: "msix_vec", arg: 7, scope: !5224, file: !3, line: 306, type: !208)
!5233 = !DILocalVariable(name: "mdev", scope: !5224, file: !3, line: 309, type: !5151)
!5234 = !DILocalVariable(name: "notify", scope: !5224, file: !3, line: 310, type: !5235)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!165, !4616}
!5238 = !DILocalVariable(name: "vq", scope: !5224, file: !3, line: 311, type: !4616)
!5239 = !DILocalVariable(name: "num", scope: !5224, file: !3, line: 312, type: !208)
!5240 = !DILocalVariable(name: "err", scope: !5224, file: !3, line: 313, type: !109)
!5241 = !DILabel(scope: !5224, name: "err", file: !3, line: 352)
!5242 = !DILocation(line: 300, column: 61, scope: !5224)
!5243 = !DILocation(line: 301, column: 34, scope: !5224)
!5244 = !DILocation(line: 302, column: 20, scope: !5224)
!5245 = !DILocation(line: 303, column: 14, scope: !5224)
!5246 = !DILocation(line: 304, column: 19, scope: !5224)
!5247 = !DILocation(line: 305, column: 12, scope: !5224)
!5248 = !DILocation(line: 306, column: 11, scope: !5224)
!5249 = !DILocation(line: 309, column: 2, scope: !5224)
!5250 = !DILocation(line: 309, column: 35, scope: !5224)
!5251 = !DILocation(line: 309, column: 43, scope: !5224)
!5252 = !DILocation(line: 309, column: 51, scope: !5224)
!5253 = !DILocation(line: 310, column: 2, scope: !5224)
!5254 = !DILocation(line: 310, column: 9, scope: !5224)
!5255 = !DILocation(line: 311, column: 2, scope: !5224)
!5256 = !DILocation(line: 311, column: 20, scope: !5224)
!5257 = !DILocation(line: 312, column: 2, scope: !5224)
!5258 = !DILocation(line: 312, column: 6, scope: !5224)
!5259 = !DILocation(line: 313, column: 2, scope: !5224)
!5260 = !DILocation(line: 313, column: 6, scope: !5224)
!5261 = !DILocation(line: 315, column: 25, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 315, column: 6)
!5263 = !DILocation(line: 315, column: 33, scope: !5262)
!5264 = !DILocation(line: 315, column: 6, scope: !5262)
!5265 = !DILocation(line: 315, column: 6, scope: !5224)
!5266 = !DILocation(line: 316, column: 10, scope: !5262)
!5267 = !DILocation(line: 316, column: 3, scope: !5262)
!5268 = !DILocation(line: 318, column: 10, scope: !5262)
!5269 = !DILocation(line: 320, column: 6, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 320, column: 6)
!5271 = !DILocation(line: 320, column: 40, scope: !5270)
!5272 = !DILocation(line: 320, column: 15, scope: !5270)
!5273 = !DILocation(line: 320, column: 12, scope: !5270)
!5274 = !DILocation(line: 320, column: 6, scope: !5224)
!5275 = !DILocation(line: 321, column: 10, scope: !5270)
!5276 = !DILocation(line: 321, column: 3, scope: !5270)
!5277 = !DILocation(line: 324, column: 33, scope: !5224)
!5278 = !DILocation(line: 324, column: 39, scope: !5224)
!5279 = !DILocation(line: 324, column: 8, scope: !5224)
!5280 = !DILocation(line: 324, column: 6, scope: !5224)
!5281 = !DILocation(line: 325, column: 7, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 325, column: 6)
!5283 = !DILocation(line: 325, column: 11, scope: !5282)
!5284 = !DILocation(line: 325, column: 41, scope: !5282)
!5285 = !DILocation(line: 325, column: 47, scope: !5282)
!5286 = !DILocation(line: 325, column: 14, scope: !5282)
!5287 = !DILocation(line: 325, column: 6, scope: !5224)
!5288 = !DILocation(line: 326, column: 10, scope: !5282)
!5289 = !DILocation(line: 326, column: 3, scope: !5282)
!5290 = !DILocation(line: 328, column: 22, scope: !5224)
!5291 = !DILocation(line: 328, column: 2, scope: !5224)
!5292 = !DILocation(line: 328, column: 8, scope: !5224)
!5293 = !DILocation(line: 328, column: 20, scope: !5224)
!5294 = !DILocation(line: 331, column: 30, scope: !5224)
!5295 = !DILocation(line: 331, column: 37, scope: !5224)
!5296 = !DILocation(line: 332, column: 27, scope: !5224)
!5297 = !DILocation(line: 332, column: 35, scope: !5224)
!5298 = !DILocation(line: 333, column: 21, scope: !5224)
!5299 = !{i8 0, i8 2}
!5300 = !DILocation(line: 334, column: 9, scope: !5224)
!5301 = !DILocation(line: 334, column: 17, scope: !5224)
!5302 = !DILocation(line: 334, column: 27, scope: !5224)
!5303 = !DILocation(line: 331, column: 7, scope: !5224)
!5304 = !DILocation(line: 331, column: 5, scope: !5224)
!5305 = !DILocation(line: 335, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 335, column: 6)
!5307 = !DILocation(line: 335, column: 6, scope: !5224)
!5308 = !DILocation(line: 336, column: 10, scope: !5306)
!5309 = !DILocation(line: 336, column: 3, scope: !5306)
!5310 = !DILocation(line: 338, column: 16, scope: !5224)
!5311 = !DILocation(line: 338, column: 2, scope: !5224)
!5312 = !DILocation(line: 338, column: 6, scope: !5224)
!5313 = !DILocation(line: 338, column: 14, scope: !5224)
!5314 = !DILocation(line: 340, column: 21, scope: !5224)
!5315 = !DILocation(line: 340, column: 25, scope: !5224)
!5316 = !DILocation(line: 340, column: 8, scope: !5224)
!5317 = !DILocation(line: 340, column: 6, scope: !5224)
!5318 = !DILocation(line: 341, column: 6, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 341, column: 6)
!5320 = !DILocation(line: 341, column: 6, scope: !5224)
!5321 = !DILocation(line: 342, column: 3, scope: !5319)
!5322 = !DILocation(line: 344, column: 53, scope: !5224)
!5323 = !DILocation(line: 344, column: 59, scope: !5224)
!5324 = !DILocation(line: 344, column: 29, scope: !5224)
!5325 = !DILocation(line: 344, column: 2, scope: !5224)
!5326 = !DILocation(line: 344, column: 6, scope: !5224)
!5327 = !DILocation(line: 344, column: 11, scope: !5224)
!5328 = !DILocation(line: 345, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 345, column: 6)
!5330 = !DILocation(line: 345, column: 11, scope: !5329)
!5331 = !DILocation(line: 345, column: 6, scope: !5224)
!5332 = !DILocation(line: 346, column: 7, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 345, column: 17)
!5334 = !DILocation(line: 347, column: 3, scope: !5333)
!5335 = !DILocation(line: 350, column: 9, scope: !5224)
!5336 = !DILocation(line: 350, column: 2, scope: !5224)
!5337 = !DILocation(line: 352, column: 1, scope: !5224)
!5338 = !DILocation(line: 353, column: 22, scope: !5224)
!5339 = !DILocation(line: 353, column: 2, scope: !5224)
!5340 = !DILocation(line: 354, column: 17, scope: !5224)
!5341 = !DILocation(line: 354, column: 9, scope: !5224)
!5342 = !DILocation(line: 354, column: 2, scope: !5224)
!5343 = !DILocation(line: 355, column: 1, scope: !5224)
!5344 = distinct !DISubprogram(name: "del_vq", scope: !3, file: !3, line: 379, type: !5085, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5345)
!5345 = !{!5346, !5347, !5348, !5349}
!5346 = !DILocalVariable(name: "info", arg: 1, scope: !5344, file: !3, line: 379, type: !5059)
!5347 = !DILocalVariable(name: "vq", scope: !5344, file: !3, line: 381, type: !4616)
!5348 = !DILocalVariable(name: "vp_dev", scope: !5344, file: !3, line: 382, type: !155)
!5349 = !DILocalVariable(name: "mdev", scope: !5344, file: !3, line: 383, type: !5151)
!5350 = !DILocation(line: 379, column: 47, scope: !5344)
!5351 = !DILocation(line: 381, column: 2, scope: !5344)
!5352 = !DILocation(line: 381, column: 20, scope: !5344)
!5353 = !DILocation(line: 381, column: 25, scope: !5344)
!5354 = !DILocation(line: 381, column: 31, scope: !5344)
!5355 = !DILocation(line: 382, column: 2, scope: !5344)
!5356 = !DILocation(line: 382, column: 28, scope: !5344)
!5357 = !DILocation(line: 382, column: 50, scope: !5344)
!5358 = !DILocation(line: 382, column: 54, scope: !5344)
!5359 = !DILocation(line: 382, column: 37, scope: !5344)
!5360 = !DILocation(line: 383, column: 2, scope: !5344)
!5361 = !DILocation(line: 383, column: 35, scope: !5344)
!5362 = !DILocation(line: 383, column: 43, scope: !5344)
!5363 = !DILocation(line: 383, column: 51, scope: !5344)
!5364 = !DILocation(line: 385, column: 6, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 385, column: 6)
!5366 = !DILocation(line: 385, column: 14, scope: !5365)
!5367 = !DILocation(line: 385, column: 6, scope: !5344)
!5368 = !DILocation(line: 386, column: 26, scope: !5365)
!5369 = !DILocation(line: 386, column: 32, scope: !5365)
!5370 = !DILocation(line: 386, column: 36, scope: !5365)
!5371 = !DILocation(line: 386, column: 3, scope: !5365)
!5372 = !DILocation(line: 389, column: 7, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 389, column: 6)
!5374 = !DILocation(line: 389, column: 13, scope: !5373)
!5375 = !DILocation(line: 389, column: 6, scope: !5344)
!5376 = !DILocation(line: 390, column: 15, scope: !5373)
!5377 = !DILocation(line: 390, column: 21, scope: !5373)
!5378 = !DILocation(line: 390, column: 54, scope: !5373)
!5379 = !DILocation(line: 390, column: 58, scope: !5373)
!5380 = !DILocation(line: 390, column: 3, scope: !5373)
!5381 = !DILocation(line: 392, column: 22, scope: !5344)
!5382 = !DILocation(line: 392, column: 2, scope: !5344)
!5383 = !DILocation(line: 393, column: 1, scope: !5344)
!5384 = distinct !DISubprogram(name: "virtio_pci_modern_remove", scope: !3, file: !3, line: 561, type: !5385, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5387)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{null, !155}
!5387 = !{!5388, !5389}
!5388 = !DILocalVariable(name: "vp_dev", arg: 1, scope: !5384, file: !3, line: 561, type: !155)
!5389 = !DILocalVariable(name: "mdev", scope: !5384, file: !3, line: 563, type: !5151)
!5390 = !DILocation(line: 561, column: 57, scope: !5384)
!5391 = !DILocation(line: 563, column: 2, scope: !5384)
!5392 = !DILocation(line: 563, column: 35, scope: !5384)
!5393 = !DILocation(line: 563, column: 43, scope: !5384)
!5394 = !DILocation(line: 563, column: 51, scope: !5384)
!5395 = !DILocation(line: 565, column: 19, scope: !5384)
!5396 = !DILocation(line: 565, column: 2, scope: !5384)
!5397 = !DILocation(line: 566, column: 1, scope: !5384)
!5398 = !DISubprogram(name: "vp_modern_remove", scope: !5014, file: !5014, line: 121, type: !5399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{null, !5151}
!5401 = distinct !DISubprogram(name: "vp_get", scope: !3, file: !3, line: 66, type: !4588, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5402)
!5402 = !{!5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412}
!5403 = !DILocalVariable(name: "vdev", arg: 1, scope: !5401, file: !3, line: 66, type: !4590)
!5404 = !DILocalVariable(name: "offset", arg: 2, scope: !5401, file: !3, line: 66, type: !7)
!5405 = !DILocalVariable(name: "buf", arg: 3, scope: !5401, file: !3, line: 67, type: !154)
!5406 = !DILocalVariable(name: "len", arg: 4, scope: !5401, file: !3, line: 67, type: !7)
!5407 = !DILocalVariable(name: "vp_dev", scope: !5401, file: !3, line: 69, type: !155)
!5408 = !DILocalVariable(name: "mdev", scope: !5401, file: !3, line: 70, type: !5151)
!5409 = !DILocalVariable(name: "device", scope: !5401, file: !3, line: 71, type: !154)
!5410 = !DILocalVariable(name: "b", scope: !5401, file: !3, line: 72, type: !199)
!5411 = !DILocalVariable(name: "w", scope: !5401, file: !3, line: 73, type: !147)
!5412 = !DILocalVariable(name: "l", scope: !5401, file: !3, line: 74, type: !152)
!5413 = !DILocation(line: 66, column: 42, scope: !5401)
!5414 = !DILocation(line: 66, column: 61, scope: !5401)
!5415 = !DILocation(line: 67, column: 12, scope: !5401)
!5416 = !DILocation(line: 67, column: 30, scope: !5401)
!5417 = !DILocation(line: 69, column: 2, scope: !5401)
!5418 = !DILocation(line: 69, column: 28, scope: !5401)
!5419 = !DILocation(line: 69, column: 50, scope: !5401)
!5420 = !DILocation(line: 69, column: 37, scope: !5401)
!5421 = !DILocation(line: 70, column: 2, scope: !5401)
!5422 = !DILocation(line: 70, column: 35, scope: !5401)
!5423 = !DILocation(line: 70, column: 43, scope: !5401)
!5424 = !DILocation(line: 70, column: 51, scope: !5401)
!5425 = !DILocation(line: 71, column: 2, scope: !5401)
!5426 = !DILocation(line: 71, column: 16, scope: !5401)
!5427 = !DILocation(line: 71, column: 25, scope: !5401)
!5428 = !DILocation(line: 71, column: 31, scope: !5401)
!5429 = !DILocation(line: 72, column: 2, scope: !5401)
!5430 = !DILocation(line: 72, column: 5, scope: !5401)
!5431 = !DILocation(line: 73, column: 2, scope: !5401)
!5432 = !DILocation(line: 73, column: 9, scope: !5401)
!5433 = !DILocation(line: 74, column: 2, scope: !5401)
!5434 = !DILocation(line: 74, column: 9, scope: !5401)
!5435 = !DILocation(line: 76, column: 2, scope: !5401)
!5436 = !DILocation(line: 76, column: 2, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 76, column: 2)
!5438 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 76, column: 2)
!5439 = !DILocation(line: 76, column: 2, scope: !5438)
!5440 = !DILocation(line: 76, column: 2, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 76, column: 2)
!5442 = !DILocation(line: 76, column: 2, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 76, column: 2)
!5444 = !DILocation(line: 76, column: 2, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 76, column: 2)
!5446 = !{i64 2155222150, i64 2155222179, i64 2155222225, i64 2155222283, i64 2155222337, i64 2155222391, i64 2155222446, i64 2155222477}
!5447 = !DILocation(line: 78, column: 10, scope: !5401)
!5448 = !DILocation(line: 78, column: 2, scope: !5401)
!5449 = !DILocation(line: 80, column: 15, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 78, column: 15)
!5451 = !DILocation(line: 80, column: 24, scope: !5450)
!5452 = !DILocation(line: 80, column: 22, scope: !5450)
!5453 = !DILocation(line: 80, column: 7, scope: !5450)
!5454 = !DILocation(line: 80, column: 5, scope: !5450)
!5455 = !DILocation(line: 81, column: 10, scope: !5450)
!5456 = !DILocation(line: 81, column: 3, scope: !5450)
!5457 = !DILocation(line: 82, column: 3, scope: !5450)
!5458 = !DILocation(line: 84, column: 7, scope: !5450)
!5459 = !DILocation(line: 84, column: 5, scope: !5450)
!5460 = !DILocation(line: 85, column: 10, scope: !5450)
!5461 = !DILocation(line: 85, column: 3, scope: !5450)
!5462 = !DILocation(line: 86, column: 3, scope: !5450)
!5463 = !DILocation(line: 88, column: 7, scope: !5450)
!5464 = !DILocation(line: 88, column: 5, scope: !5450)
!5465 = !DILocation(line: 89, column: 10, scope: !5450)
!5466 = !DILocation(line: 89, column: 3, scope: !5450)
!5467 = !DILocation(line: 90, column: 3, scope: !5450)
!5468 = !DILocation(line: 92, column: 7, scope: !5450)
!5469 = !DILocation(line: 92, column: 5, scope: !5450)
!5470 = !DILocation(line: 93, column: 10, scope: !5450)
!5471 = !DILocation(line: 93, column: 3, scope: !5450)
!5472 = !DILocation(line: 94, column: 7, scope: !5450)
!5473 = !DILocation(line: 94, column: 5, scope: !5450)
!5474 = !DILocation(line: 95, column: 10, scope: !5450)
!5475 = !DILocation(line: 95, column: 14, scope: !5450)
!5476 = !DILocation(line: 95, column: 3, scope: !5450)
!5477 = !DILocation(line: 96, column: 3, scope: !5450)
!5478 = !DILocation(line: 98, column: 3, scope: !5450)
!5479 = !DILocation(line: 98, column: 3, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 98, column: 3)
!5481 = !DILocation(line: 98, column: 3, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 98, column: 3)
!5483 = !DILocation(line: 98, column: 3, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 98, column: 3)
!5485 = !{i64 2155223331, i64 2155223360, i64 2155223406, i64 2155223464, i64 2155223518, i64 2155223572, i64 2155223627, i64 2155223658}
!5486 = !DILocation(line: 99, column: 2, scope: !5450)
!5487 = !DILocation(line: 100, column: 1, scope: !5401)
!5488 = distinct !DISubprogram(name: "vp_set", scope: !3, file: !3, line: 104, type: !4593, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5489)
!5489 = !{!5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499}
!5490 = !DILocalVariable(name: "vdev", arg: 1, scope: !5488, file: !3, line: 104, type: !4590)
!5491 = !DILocalVariable(name: "offset", arg: 2, scope: !5488, file: !3, line: 104, type: !7)
!5492 = !DILocalVariable(name: "buf", arg: 3, scope: !5488, file: !3, line: 105, type: !2506)
!5493 = !DILocalVariable(name: "len", arg: 4, scope: !5488, file: !3, line: 105, type: !7)
!5494 = !DILocalVariable(name: "vp_dev", scope: !5488, file: !3, line: 107, type: !155)
!5495 = !DILocalVariable(name: "mdev", scope: !5488, file: !3, line: 108, type: !5151)
!5496 = !DILocalVariable(name: "device", scope: !5488, file: !3, line: 109, type: !154)
!5497 = !DILocalVariable(name: "b", scope: !5488, file: !3, line: 110, type: !199)
!5498 = !DILocalVariable(name: "w", scope: !5488, file: !3, line: 111, type: !147)
!5499 = !DILocalVariable(name: "l", scope: !5488, file: !3, line: 112, type: !152)
!5500 = !DILocation(line: 104, column: 42, scope: !5488)
!5501 = !DILocation(line: 104, column: 61, scope: !5488)
!5502 = !DILocation(line: 105, column: 18, scope: !5488)
!5503 = !DILocation(line: 105, column: 36, scope: !5488)
!5504 = !DILocation(line: 107, column: 2, scope: !5488)
!5505 = !DILocation(line: 107, column: 28, scope: !5488)
!5506 = !DILocation(line: 107, column: 50, scope: !5488)
!5507 = !DILocation(line: 107, column: 37, scope: !5488)
!5508 = !DILocation(line: 108, column: 2, scope: !5488)
!5509 = !DILocation(line: 108, column: 35, scope: !5488)
!5510 = !DILocation(line: 108, column: 43, scope: !5488)
!5511 = !DILocation(line: 108, column: 51, scope: !5488)
!5512 = !DILocation(line: 109, column: 2, scope: !5488)
!5513 = !DILocation(line: 109, column: 16, scope: !5488)
!5514 = !DILocation(line: 109, column: 25, scope: !5488)
!5515 = !DILocation(line: 109, column: 31, scope: !5488)
!5516 = !DILocation(line: 110, column: 2, scope: !5488)
!5517 = !DILocation(line: 110, column: 5, scope: !5488)
!5518 = !DILocation(line: 111, column: 2, scope: !5488)
!5519 = !DILocation(line: 111, column: 9, scope: !5488)
!5520 = !DILocation(line: 112, column: 2, scope: !5488)
!5521 = !DILocation(line: 112, column: 9, scope: !5488)
!5522 = !DILocation(line: 114, column: 2, scope: !5488)
!5523 = !DILocation(line: 114, column: 2, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 114, column: 2)
!5525 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 114, column: 2)
!5526 = !DILocation(line: 114, column: 2, scope: !5525)
!5527 = !DILocation(line: 114, column: 2, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 114, column: 2)
!5529 = !DILocation(line: 114, column: 2, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 114, column: 2)
!5531 = !DILocation(line: 114, column: 2, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 114, column: 2)
!5533 = !{i64 2155224365, i64 2155224394, i64 2155224440, i64 2155224498, i64 2155224552, i64 2155224606, i64 2155224661, i64 2155224692}
!5534 = !DILocation(line: 116, column: 10, scope: !5488)
!5535 = !DILocation(line: 116, column: 2, scope: !5488)
!5536 = !DILocation(line: 118, column: 14, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 116, column: 15)
!5538 = !DILocation(line: 118, column: 3, scope: !5537)
!5539 = !DILocation(line: 119, column: 12, scope: !5537)
!5540 = !DILocation(line: 119, column: 15, scope: !5537)
!5541 = !DILocation(line: 119, column: 24, scope: !5537)
!5542 = !DILocation(line: 119, column: 22, scope: !5537)
!5543 = !DILocation(line: 119, column: 3, scope: !5537)
!5544 = !DILocation(line: 120, column: 3, scope: !5537)
!5545 = !DILocation(line: 122, column: 14, scope: !5537)
!5546 = !DILocation(line: 122, column: 3, scope: !5537)
!5547 = !DILocation(line: 123, column: 13, scope: !5537)
!5548 = !DILocation(line: 123, column: 29, scope: !5537)
!5549 = !DILocation(line: 123, column: 38, scope: !5537)
!5550 = !DILocation(line: 123, column: 36, scope: !5537)
!5551 = !DILocation(line: 123, column: 3, scope: !5537)
!5552 = !DILocation(line: 124, column: 3, scope: !5537)
!5553 = !DILocation(line: 126, column: 14, scope: !5537)
!5554 = !DILocation(line: 126, column: 3, scope: !5537)
!5555 = !DILocation(line: 127, column: 13, scope: !5537)
!5556 = !DILocation(line: 127, column: 29, scope: !5537)
!5557 = !DILocation(line: 127, column: 38, scope: !5537)
!5558 = !DILocation(line: 127, column: 36, scope: !5537)
!5559 = !DILocation(line: 127, column: 3, scope: !5537)
!5560 = !DILocation(line: 128, column: 3, scope: !5537)
!5561 = !DILocation(line: 130, column: 14, scope: !5537)
!5562 = !DILocation(line: 130, column: 3, scope: !5537)
!5563 = !DILocation(line: 131, column: 13, scope: !5537)
!5564 = !DILocation(line: 131, column: 29, scope: !5537)
!5565 = !DILocation(line: 131, column: 38, scope: !5537)
!5566 = !DILocation(line: 131, column: 36, scope: !5537)
!5567 = !DILocation(line: 131, column: 3, scope: !5537)
!5568 = !DILocation(line: 132, column: 14, scope: !5537)
!5569 = !DILocation(line: 132, column: 18, scope: !5537)
!5570 = !DILocation(line: 132, column: 3, scope: !5537)
!5571 = !DILocation(line: 133, column: 13, scope: !5537)
!5572 = !DILocation(line: 133, column: 29, scope: !5537)
!5573 = !DILocation(line: 133, column: 38, scope: !5537)
!5574 = !DILocation(line: 133, column: 36, scope: !5537)
!5575 = !DILocation(line: 133, column: 45, scope: !5537)
!5576 = !DILocation(line: 133, column: 3, scope: !5537)
!5577 = !DILocation(line: 134, column: 3, scope: !5537)
!5578 = !DILocation(line: 136, column: 3, scope: !5537)
!5579 = !DILocation(line: 136, column: 3, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 136, column: 3)
!5581 = !DILocation(line: 136, column: 3, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 136, column: 3)
!5583 = !DILocation(line: 136, column: 3, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 136, column: 3)
!5585 = !{i64 2155225440, i64 2155225469, i64 2155225515, i64 2155225573, i64 2155225627, i64 2155225681, i64 2155225736, i64 2155225767}
!5586 = !DILocation(line: 137, column: 2, scope: !5537)
!5587 = !DILocation(line: 138, column: 1, scope: !5488)
!5588 = distinct !DISubprogram(name: "vp_generation", scope: !3, file: !3, line: 140, type: !4597, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5589)
!5589 = !{!5590, !5591}
!5590 = !DILocalVariable(name: "vdev", arg: 1, scope: !5588, file: !3, line: 140, type: !4590)
!5591 = !DILocalVariable(name: "vp_dev", scope: !5588, file: !3, line: 142, type: !155)
!5592 = !DILocation(line: 140, column: 48, scope: !5588)
!5593 = !DILocation(line: 142, column: 2, scope: !5588)
!5594 = !DILocation(line: 142, column: 28, scope: !5588)
!5595 = !DILocation(line: 142, column: 50, scope: !5588)
!5596 = !DILocation(line: 142, column: 37, scope: !5588)
!5597 = !DILocation(line: 144, column: 31, scope: !5588)
!5598 = !DILocation(line: 144, column: 39, scope: !5588)
!5599 = !DILocation(line: 144, column: 9, scope: !5588)
!5600 = !DILocation(line: 145, column: 1, scope: !5588)
!5601 = !DILocation(line: 144, column: 2, scope: !5588)
!5602 = distinct !DISubprogram(name: "vp_get_status", scope: !3, file: !3, line: 148, type: !4601, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5603)
!5603 = !{!5604, !5605}
!5604 = !DILocalVariable(name: "vdev", arg: 1, scope: !5602, file: !3, line: 148, type: !4590)
!5605 = !DILocalVariable(name: "vp_dev", scope: !5602, file: !3, line: 150, type: !155)
!5606 = !DILocation(line: 148, column: 47, scope: !5602)
!5607 = !DILocation(line: 150, column: 2, scope: !5602)
!5608 = !DILocation(line: 150, column: 28, scope: !5602)
!5609 = !DILocation(line: 150, column: 50, scope: !5602)
!5610 = !DILocation(line: 150, column: 37, scope: !5602)
!5611 = !DILocation(line: 152, column: 31, scope: !5602)
!5612 = !DILocation(line: 152, column: 39, scope: !5602)
!5613 = !DILocation(line: 152, column: 9, scope: !5602)
!5614 = !DILocation(line: 153, column: 1, scope: !5602)
!5615 = !DILocation(line: 152, column: 2, scope: !5602)
!5616 = distinct !DISubprogram(name: "vp_set_status", scope: !3, file: !3, line: 155, type: !4605, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5617)
!5617 = !{!5618, !5619, !5620}
!5618 = !DILocalVariable(name: "vdev", arg: 1, scope: !5616, file: !3, line: 155, type: !4590)
!5619 = !DILocalVariable(name: "status", arg: 2, scope: !5616, file: !3, line: 155, type: !199)
!5620 = !DILocalVariable(name: "vp_dev", scope: !5616, file: !3, line: 157, type: !155)
!5621 = !DILocation(line: 155, column: 49, scope: !5616)
!5622 = !DILocation(line: 155, column: 58, scope: !5616)
!5623 = !DILocation(line: 157, column: 2, scope: !5616)
!5624 = !DILocation(line: 157, column: 28, scope: !5616)
!5625 = !DILocation(line: 157, column: 50, scope: !5616)
!5626 = !DILocation(line: 157, column: 37, scope: !5616)
!5627 = !DILocation(line: 160, column: 2, scope: !5616)
!5628 = !DILocation(line: 160, column: 2, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 160, column: 2)
!5630 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 160, column: 2)
!5631 = !DILocation(line: 160, column: 2, scope: !5630)
!5632 = !DILocation(line: 160, column: 2, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 160, column: 2)
!5634 = !DILocation(line: 160, column: 2, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 160, column: 2)
!5636 = !DILocation(line: 160, column: 2, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 160, column: 2)
!5638 = !{i64 2155226435, i64 2155226464, i64 2155226510, i64 2155226568, i64 2155226622, i64 2155226676, i64 2155226731, i64 2155226762}
!5639 = !DILocation(line: 161, column: 24, scope: !5616)
!5640 = !DILocation(line: 161, column: 32, scope: !5616)
!5641 = !DILocation(line: 161, column: 38, scope: !5616)
!5642 = !DILocation(line: 161, column: 2, scope: !5616)
!5643 = !DILocation(line: 162, column: 1, scope: !5616)
!5644 = distinct !DISubprogram(name: "vp_reset", scope: !3, file: !3, line: 164, type: !4609, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5645)
!5645 = !{!5646, !5647, !5648}
!5646 = !DILocalVariable(name: "vdev", arg: 1, scope: !5644, file: !3, line: 164, type: !4590)
!5647 = !DILocalVariable(name: "vp_dev", scope: !5644, file: !3, line: 166, type: !155)
!5648 = !DILocalVariable(name: "mdev", scope: !5644, file: !3, line: 167, type: !5151)
!5649 = !DILocation(line: 164, column: 44, scope: !5644)
!5650 = !DILocation(line: 166, column: 2, scope: !5644)
!5651 = !DILocation(line: 166, column: 28, scope: !5644)
!5652 = !DILocation(line: 166, column: 50, scope: !5644)
!5653 = !DILocation(line: 166, column: 37, scope: !5644)
!5654 = !DILocation(line: 167, column: 2, scope: !5644)
!5655 = !DILocation(line: 167, column: 35, scope: !5644)
!5656 = !DILocation(line: 167, column: 43, scope: !5644)
!5657 = !DILocation(line: 167, column: 51, scope: !5644)
!5658 = !DILocation(line: 170, column: 23, scope: !5644)
!5659 = !DILocation(line: 170, column: 2, scope: !5644)
!5660 = !DILocation(line: 176, column: 2, scope: !5644)
!5661 = !DILocation(line: 176, column: 30, scope: !5644)
!5662 = !DILocation(line: 176, column: 9, scope: !5644)
!5663 = !DILocation(line: 177, column: 3, scope: !5644)
!5664 = distinct !{!5664, !5660, !5665, !5666, !5667}
!5665 = !DILocation(line: 177, column: 11, scope: !5644)
!5666 = !{!"llvm.loop.mustprogress"}
!5667 = !{!"llvm.loop.unroll.disable"}
!5668 = !DILocation(line: 179, column: 25, scope: !5644)
!5669 = !DILocation(line: 179, column: 2, scope: !5644)
!5670 = !DILocation(line: 180, column: 1, scope: !5644)
!5671 = distinct !DISubprogram(name: "vp_modern_find_vqs", scope: !3, file: !3, line: 357, type: !4613, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5672)
!5672 = !{!5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5686}
!5673 = !DILocalVariable(name: "vdev", arg: 1, scope: !5671, file: !3, line: 357, type: !4590)
!5674 = !DILocalVariable(name: "nvqs", arg: 2, scope: !5671, file: !3, line: 357, type: !7)
!5675 = !DILocalVariable(name: "vqs", arg: 3, scope: !5671, file: !3, line: 358, type: !4615)
!5676 = !DILocalVariable(name: "callbacks", arg: 4, scope: !5671, file: !3, line: 359, type: !4631)
!5677 = !DILocalVariable(name: "names", arg: 5, scope: !5671, file: !3, line: 360, type: !4634)
!5678 = !DILocalVariable(name: "ctx", arg: 6, scope: !5671, file: !3, line: 360, type: !4636)
!5679 = !DILocalVariable(name: "desc", arg: 7, scope: !5671, file: !3, line: 361, type: !4638)
!5680 = !DILocalVariable(name: "vp_dev", scope: !5671, file: !3, line: 363, type: !155)
!5681 = !DILocalVariable(name: "vq", scope: !5671, file: !3, line: 364, type: !4616)
!5682 = !DILocalVariable(name: "rc", scope: !5671, file: !3, line: 365, type: !109)
!5683 = !DILocalVariable(name: "__mptr", scope: !5684, file: !3, line: 373, type: !154)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 373, column: 2)
!5685 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 373, column: 2)
!5686 = !DILocalVariable(name: "__mptr", scope: !5687, file: !3, line: 373, type: !154)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 373, column: 2)
!5688 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 373, column: 2)
!5689 = !DILocation(line: 357, column: 53, scope: !5671)
!5690 = !DILocation(line: 357, column: 72, scope: !5671)
!5691 = !DILocation(line: 358, column: 28, scope: !5671)
!5692 = !DILocation(line: 359, column: 25, scope: !5671)
!5693 = !DILocation(line: 360, column: 29, scope: !5671)
!5694 = !DILocation(line: 360, column: 50, scope: !5671)
!5695 = !DILocation(line: 361, column: 31, scope: !5671)
!5696 = !DILocation(line: 363, column: 2, scope: !5671)
!5697 = !DILocation(line: 363, column: 28, scope: !5671)
!5698 = !DILocation(line: 363, column: 50, scope: !5671)
!5699 = !DILocation(line: 363, column: 37, scope: !5671)
!5700 = !DILocation(line: 364, column: 2, scope: !5671)
!5701 = !DILocation(line: 364, column: 20, scope: !5671)
!5702 = !DILocation(line: 365, column: 2, scope: !5671)
!5703 = !DILocation(line: 365, column: 6, scope: !5671)
!5704 = !DILocation(line: 365, column: 23, scope: !5671)
!5705 = !DILocation(line: 365, column: 29, scope: !5671)
!5706 = !DILocation(line: 365, column: 35, scope: !5671)
!5707 = !DILocation(line: 365, column: 40, scope: !5671)
!5708 = !DILocation(line: 365, column: 51, scope: !5671)
!5709 = !DILocation(line: 365, column: 58, scope: !5671)
!5710 = !DILocation(line: 365, column: 63, scope: !5671)
!5711 = !DILocation(line: 365, column: 11, scope: !5671)
!5712 = !DILocation(line: 367, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 367, column: 6)
!5714 = !DILocation(line: 367, column: 6, scope: !5671)
!5715 = !DILocation(line: 368, column: 10, scope: !5713)
!5716 = !DILocation(line: 368, column: 3, scope: !5713)
!5717 = !DILocation(line: 373, column: 2, scope: !5684)
!5718 = !DILocation(line: 373, column: 2, scope: !5685)
!5719 = !DILocation(line: 373, column: 2, scope: !5688)
!5720 = !DILocation(line: 374, column: 31, scope: !5688)
!5721 = !DILocation(line: 374, column: 39, scope: !5688)
!5722 = !DILocation(line: 374, column: 45, scope: !5688)
!5723 = !DILocation(line: 374, column: 49, scope: !5688)
!5724 = !DILocation(line: 374, column: 3, scope: !5688)
!5725 = !DILocation(line: 373, column: 2, scope: !5687)
!5726 = distinct !{!5726, !5718, !5727, !5666, !5667}
!5727 = !DILocation(line: 374, column: 60, scope: !5685)
!5728 = !DILocation(line: 376, column: 2, scope: !5671)
!5729 = !DILocation(line: 377, column: 1, scope: !5671)
!5730 = !DISubprogram(name: "vp_synchronize_vectors", scope: !157, file: !157, line: 106, type: !4609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5731 = distinct !DISubprogram(name: "vp_get_features", scope: !3, file: !3, line: 22, type: !4656, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5732)
!5732 = !{!5733, !5734}
!5733 = !DILocalVariable(name: "vdev", arg: 1, scope: !5731, file: !3, line: 22, type: !4590)
!5734 = !DILocalVariable(name: "vp_dev", scope: !5731, file: !3, line: 24, type: !155)
!5735 = !DILocation(line: 22, column: 50, scope: !5731)
!5736 = !DILocation(line: 24, column: 2, scope: !5731)
!5737 = !DILocation(line: 24, column: 28, scope: !5731)
!5738 = !DILocation(line: 24, column: 50, scope: !5731)
!5739 = !DILocation(line: 24, column: 37, scope: !5731)
!5740 = !DILocation(line: 26, column: 33, scope: !5731)
!5741 = !DILocation(line: 26, column: 41, scope: !5731)
!5742 = !DILocation(line: 26, column: 9, scope: !5731)
!5743 = !DILocation(line: 27, column: 1, scope: !5731)
!5744 = !DILocation(line: 26, column: 2, scope: !5731)
!5745 = distinct !DISubprogram(name: "vp_finalize_features", scope: !3, file: !3, line: 43, type: !4660, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5746)
!5746 = !{!5747, !5748, !5749}
!5747 = !DILocalVariable(name: "vdev", arg: 1, scope: !5745, file: !3, line: 43, type: !4590)
!5748 = !DILocalVariable(name: "vp_dev", scope: !5745, file: !3, line: 45, type: !155)
!5749 = !DILocalVariable(name: "features", scope: !5745, file: !3, line: 46, type: !416)
!5750 = !DILocation(line: 43, column: 55, scope: !5745)
!5751 = !DILocation(line: 45, column: 2, scope: !5745)
!5752 = !DILocation(line: 45, column: 28, scope: !5745)
!5753 = !DILocation(line: 45, column: 50, scope: !5745)
!5754 = !DILocation(line: 45, column: 37, scope: !5745)
!5755 = !DILocation(line: 46, column: 2, scope: !5745)
!5756 = !DILocation(line: 46, column: 6, scope: !5745)
!5757 = !DILocation(line: 46, column: 17, scope: !5745)
!5758 = !DILocation(line: 46, column: 23, scope: !5745)
!5759 = !DILocation(line: 49, column: 27, scope: !5745)
!5760 = !DILocation(line: 49, column: 2, scope: !5745)
!5761 = !DILocation(line: 52, column: 24, scope: !5745)
!5762 = !DILocation(line: 52, column: 30, scope: !5745)
!5763 = !DILocation(line: 52, column: 2, scope: !5745)
!5764 = !DILocation(line: 54, column: 25, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 54, column: 6)
!5766 = !DILocation(line: 54, column: 7, scope: !5765)
!5767 = !DILocation(line: 54, column: 6, scope: !5745)
!5768 = !DILocation(line: 55, column: 3, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 55, column: 3)
!5770 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 54, column: 52)
!5771 = !DILocation(line: 55, column: 3, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 55, column: 3)
!5773 = !DILocation(line: 57, column: 3, scope: !5770)
!5774 = !DILocation(line: 60, column: 26, scope: !5745)
!5775 = !DILocation(line: 60, column: 34, scope: !5745)
!5776 = !DILocation(line: 60, column: 40, scope: !5745)
!5777 = !DILocation(line: 60, column: 46, scope: !5745)
!5778 = !DILocation(line: 60, column: 2, scope: !5745)
!5779 = !DILocation(line: 62, column: 2, scope: !5745)
!5780 = !DILocation(line: 63, column: 1, scope: !5745)
!5781 = distinct !DISubprogram(name: "vp_get_shm_region", scope: !3, file: !3, line: 460, type: !4678, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5782)
!5782 = !{!5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792}
!5783 = !DILocalVariable(name: "vdev", arg: 1, scope: !5781, file: !3, line: 460, type: !4590)
!5784 = !DILocalVariable(name: "region", arg: 2, scope: !5781, file: !3, line: 461, type: !4680)
!5785 = !DILocalVariable(name: "id", arg: 3, scope: !5781, file: !3, line: 461, type: !199)
!5786 = !DILocalVariable(name: "vp_dev", scope: !5781, file: !3, line: 463, type: !155)
!5787 = !DILocalVariable(name: "pci_dev", scope: !5781, file: !3, line: 464, type: !4698)
!5788 = !DILocalVariable(name: "bar", scope: !5781, file: !3, line: 465, type: !199)
!5789 = !DILocalVariable(name: "offset", scope: !5781, file: !3, line: 466, type: !416)
!5790 = !DILocalVariable(name: "len", scope: !5781, file: !3, line: 466, type: !416)
!5791 = !DILocalVariable(name: "phys_addr", scope: !5781, file: !3, line: 467, type: !3210)
!5792 = !DILocalVariable(name: "bar_len", scope: !5781, file: !3, line: 468, type: !311)
!5793 = !DILocation(line: 460, column: 53, scope: !5781)
!5794 = !DILocation(line: 461, column: 36, scope: !5781)
!5795 = !DILocation(line: 461, column: 47, scope: !5781)
!5796 = !DILocation(line: 463, column: 2, scope: !5781)
!5797 = !DILocation(line: 463, column: 28, scope: !5781)
!5798 = !DILocation(line: 463, column: 50, scope: !5781)
!5799 = !DILocation(line: 463, column: 37, scope: !5781)
!5800 = !DILocation(line: 464, column: 2, scope: !5781)
!5801 = !DILocation(line: 464, column: 18, scope: !5781)
!5802 = !DILocation(line: 464, column: 28, scope: !5781)
!5803 = !DILocation(line: 464, column: 36, scope: !5781)
!5804 = !DILocation(line: 465, column: 2, scope: !5781)
!5805 = !DILocation(line: 465, column: 5, scope: !5781)
!5806 = !DILocation(line: 466, column: 2, scope: !5781)
!5807 = !DILocation(line: 466, column: 6, scope: !5781)
!5808 = !DILocation(line: 466, column: 14, scope: !5781)
!5809 = !DILocation(line: 467, column: 2, scope: !5781)
!5810 = !DILocation(line: 467, column: 14, scope: !5781)
!5811 = !DILocation(line: 468, column: 2, scope: !5781)
!5812 = !DILocation(line: 468, column: 9, scope: !5781)
!5813 = !DILocation(line: 470, column: 31, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 470, column: 6)
!5815 = !DILocation(line: 470, column: 40, scope: !5814)
!5816 = !DILocation(line: 470, column: 7, scope: !5814)
!5817 = !DILocation(line: 470, column: 6, scope: !5781)
!5818 = !DILocation(line: 471, column: 3, scope: !5814)
!5819 = !DILocation(line: 473, column: 14, scope: !5781)
!5820 = !DILocation(line: 473, column: 12, scope: !5781)
!5821 = !DILocation(line: 474, column: 12, scope: !5781)
!5822 = !DILocation(line: 474, column: 10, scope: !5781)
!5823 = !DILocation(line: 476, column: 7, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 476, column: 6)
!5825 = !DILocation(line: 476, column: 16, scope: !5824)
!5826 = !DILocation(line: 476, column: 14, scope: !5824)
!5827 = !DILocation(line: 476, column: 23, scope: !5824)
!5828 = !DILocation(line: 476, column: 21, scope: !5824)
!5829 = !DILocation(line: 476, column: 6, scope: !5781)
!5830 = !DILocation(line: 477, column: 3, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 477, column: 3)
!5832 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 476, column: 31)
!5833 = !DILocation(line: 477, column: 3, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 477, column: 3)
!5835 = !DILocation(line: 479, column: 3, scope: !5832)
!5836 = !DILocation(line: 482, column: 6, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 482, column: 6)
!5838 = !DILocation(line: 482, column: 15, scope: !5837)
!5839 = !DILocation(line: 482, column: 13, scope: !5837)
!5840 = !DILocation(line: 482, column: 21, scope: !5837)
!5841 = !DILocation(line: 482, column: 19, scope: !5837)
!5842 = !DILocation(line: 482, column: 6, scope: !5781)
!5843 = !DILocation(line: 483, column: 3, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 483, column: 3)
!5845 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 482, column: 30)
!5846 = !DILocation(line: 483, column: 3, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 483, column: 3)
!5848 = !DILocation(line: 485, column: 3, scope: !5845)
!5849 = !DILocation(line: 488, column: 16, scope: !5781)
!5850 = !DILocation(line: 488, column: 2, scope: !5781)
!5851 = !DILocation(line: 488, column: 10, scope: !5781)
!5852 = !DILocation(line: 488, column: 14, scope: !5781)
!5853 = !DILocation(line: 489, column: 23, scope: !5781)
!5854 = !DILocation(line: 489, column: 35, scope: !5781)
!5855 = !DILocation(line: 489, column: 33, scope: !5781)
!5856 = !DILocation(line: 489, column: 2, scope: !5781)
!5857 = !DILocation(line: 489, column: 10, scope: !5781)
!5858 = !DILocation(line: 489, column: 15, scope: !5781)
!5859 = !DILocation(line: 491, column: 2, scope: !5781)
!5860 = !DILocation(line: 492, column: 1, scope: !5781)
!5861 = distinct !DISubprogram(name: "vp_modern_disable_vq_and_reset", scope: !3, file: !3, line: 205, type: !4687, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5862)
!5862 = !{!5863, !5864, !5865, !5866, !5867, !5868, !5872}
!5863 = !DILocalVariable(name: "vq", arg: 1, scope: !5861, file: !3, line: 205, type: !4616)
!5864 = !DILocalVariable(name: "vp_dev", scope: !5861, file: !3, line: 207, type: !155)
!5865 = !DILocalVariable(name: "mdev", scope: !5861, file: !3, line: 208, type: !5151)
!5866 = !DILocalVariable(name: "info", scope: !5861, file: !3, line: 209, type: !5059)
!5867 = !DILocalVariable(name: "flags", scope: !5861, file: !3, line: 210, type: !314)
!5868 = !DILocalVariable(name: "__dummy", scope: !5869, file: !3, line: 220, type: !314)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 220, column: 2)
!5870 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 220, column: 2)
!5871 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 220, column: 2)
!5872 = !DILocalVariable(name: "__dummy2", scope: !5869, file: !3, line: 220, type: !314)
!5873 = !DILocation(line: 205, column: 61, scope: !5861)
!5874 = !DILocation(line: 207, column: 2, scope: !5861)
!5875 = !DILocation(line: 207, column: 28, scope: !5861)
!5876 = !DILocation(line: 207, column: 50, scope: !5861)
!5877 = !DILocation(line: 207, column: 54, scope: !5861)
!5878 = !DILocation(line: 207, column: 37, scope: !5861)
!5879 = !DILocation(line: 208, column: 2, scope: !5861)
!5880 = !DILocation(line: 208, column: 35, scope: !5861)
!5881 = !DILocation(line: 208, column: 43, scope: !5861)
!5882 = !DILocation(line: 208, column: 51, scope: !5861)
!5883 = !DILocation(line: 209, column: 2, scope: !5861)
!5884 = !DILocation(line: 209, column: 29, scope: !5861)
!5885 = !DILocation(line: 210, column: 2, scope: !5861)
!5886 = !DILocation(line: 210, column: 16, scope: !5861)
!5887 = !DILocation(line: 212, column: 26, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 212, column: 6)
!5889 = !DILocation(line: 212, column: 30, scope: !5888)
!5890 = !DILocation(line: 212, column: 7, scope: !5888)
!5891 = !DILocation(line: 212, column: 6, scope: !5861)
!5892 = !DILocation(line: 213, column: 3, scope: !5888)
!5893 = !DILocation(line: 215, column: 28, scope: !5861)
!5894 = !DILocation(line: 215, column: 34, scope: !5861)
!5895 = !DILocation(line: 215, column: 38, scope: !5861)
!5896 = !DILocation(line: 215, column: 2, scope: !5861)
!5897 = !DILocation(line: 217, column: 9, scope: !5861)
!5898 = !DILocation(line: 217, column: 17, scope: !5861)
!5899 = !DILocation(line: 217, column: 21, scope: !5861)
!5900 = !DILocation(line: 217, column: 25, scope: !5861)
!5901 = !DILocation(line: 217, column: 7, scope: !5861)
!5902 = !DILocation(line: 220, column: 2, scope: !5861)
!5903 = !DILocation(line: 220, column: 2, scope: !5871)
!5904 = !DILocation(line: 220, column: 2, scope: !5869)
!5905 = !DILocation(line: 220, column: 2, scope: !5870)
!5906 = !DILocation(line: 221, column: 12, scope: !5861)
!5907 = !DILocation(line: 221, column: 18, scope: !5861)
!5908 = !DILocation(line: 221, column: 2, scope: !5861)
!5909 = !DILocation(line: 222, column: 26, scope: !5861)
!5910 = !DILocation(line: 222, column: 34, scope: !5861)
!5911 = !DILocation(line: 222, column: 40, scope: !5861)
!5912 = !DILocation(line: 222, column: 2, scope: !5861)
!5913 = !DILocation(line: 224, column: 18, scope: !5861)
!5914 = !DILocation(line: 224, column: 24, scope: !5861)
!5915 = !DILocation(line: 224, column: 2, scope: !5861)
!5916 = !DILocation(line: 236, column: 6, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 236, column: 6)
!5918 = !DILocation(line: 236, column: 14, scope: !5917)
!5919 = !DILocation(line: 236, column: 29, scope: !5917)
!5920 = !DILocation(line: 236, column: 32, scope: !5917)
!5921 = !DILocation(line: 236, column: 38, scope: !5917)
!5922 = !DILocation(line: 236, column: 50, scope: !5917)
!5923 = !DILocation(line: 236, column: 6, scope: !5861)
!5924 = !DILocation(line: 237, column: 34, scope: !5917)
!5925 = !DILocation(line: 237, column: 42, scope: !5917)
!5926 = !DILocation(line: 237, column: 51, scope: !5917)
!5927 = !DILocation(line: 237, column: 57, scope: !5917)
!5928 = !DILocation(line: 237, column: 19, scope: !5917)
!5929 = !DILocation(line: 237, column: 3, scope: !5917)
!5930 = !DILocation(line: 239, column: 2, scope: !5861)
!5931 = !DILocation(line: 239, column: 6, scope: !5861)
!5932 = !DILocation(line: 239, column: 12, scope: !5861)
!5933 = !DILocation(line: 241, column: 2, scope: !5861)
!5934 = !DILocation(line: 242, column: 1, scope: !5861)
!5935 = distinct !DISubprogram(name: "vp_modern_enable_vq_after_reset", scope: !3, file: !3, line: 244, type: !4687, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5936)
!5936 = !{!5937, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5950}
!5937 = !DILocalVariable(name: "vq", arg: 1, scope: !5935, file: !3, line: 244, type: !4616)
!5938 = !DILocalVariable(name: "vp_dev", scope: !5935, file: !3, line: 246, type: !155)
!5939 = !DILocalVariable(name: "mdev", scope: !5935, file: !3, line: 247, type: !5151)
!5940 = !DILocalVariable(name: "info", scope: !5935, file: !3, line: 248, type: !5059)
!5941 = !DILocalVariable(name: "flags", scope: !5935, file: !3, line: 249, type: !314)
!5942 = !DILocalVariable(name: "index", scope: !5935, file: !3, line: 249, type: !314)
!5943 = !DILocalVariable(name: "err", scope: !5935, file: !3, line: 250, type: !109)
!5944 = !DILocalVariable(name: "__dummy", scope: !5945, file: !3, line: 269, type: !314)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 269, column: 3)
!5946 = distinct !DILexicalBlock(scope: !5947, file: !3, line: 269, column: 3)
!5947 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 269, column: 3)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 268, column: 20)
!5949 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 268, column: 6)
!5950 = !DILocalVariable(name: "__dummy2", scope: !5945, file: !3, line: 269, type: !314)
!5951 = !DILocation(line: 244, column: 62, scope: !5935)
!5952 = !DILocation(line: 246, column: 2, scope: !5935)
!5953 = !DILocation(line: 246, column: 28, scope: !5935)
!5954 = !DILocation(line: 246, column: 50, scope: !5935)
!5955 = !DILocation(line: 246, column: 54, scope: !5935)
!5956 = !DILocation(line: 246, column: 37, scope: !5935)
!5957 = !DILocation(line: 247, column: 2, scope: !5935)
!5958 = !DILocation(line: 247, column: 35, scope: !5935)
!5959 = !DILocation(line: 247, column: 43, scope: !5935)
!5960 = !DILocation(line: 247, column: 51, scope: !5935)
!5961 = !DILocation(line: 248, column: 2, scope: !5935)
!5962 = !DILocation(line: 248, column: 29, scope: !5935)
!5963 = !DILocation(line: 249, column: 2, scope: !5935)
!5964 = !DILocation(line: 249, column: 16, scope: !5935)
!5965 = !DILocation(line: 249, column: 23, scope: !5935)
!5966 = !DILocation(line: 250, column: 2, scope: !5935)
!5967 = !DILocation(line: 250, column: 6, scope: !5935)
!5968 = !DILocation(line: 252, column: 7, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 252, column: 6)
!5970 = !DILocation(line: 252, column: 11, scope: !5969)
!5971 = !DILocation(line: 252, column: 6, scope: !5935)
!5972 = !DILocation(line: 253, column: 3, scope: !5969)
!5973 = !DILocation(line: 255, column: 10, scope: !5935)
!5974 = !DILocation(line: 255, column: 14, scope: !5935)
!5975 = !DILocation(line: 255, column: 8, scope: !5935)
!5976 = !DILocation(line: 256, column: 9, scope: !5935)
!5977 = !DILocation(line: 256, column: 17, scope: !5935)
!5978 = !DILocation(line: 256, column: 21, scope: !5935)
!5979 = !DILocation(line: 256, column: 7, scope: !5935)
!5980 = !DILocation(line: 258, column: 32, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 258, column: 6)
!5982 = !DILocation(line: 258, column: 38, scope: !5981)
!5983 = !DILocation(line: 258, column: 6, scope: !5981)
!5984 = !DILocation(line: 258, column: 6, scope: !5935)
!5985 = !DILocation(line: 259, column: 3, scope: !5981)
!5986 = !DILocation(line: 261, column: 33, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 261, column: 6)
!5988 = !DILocation(line: 261, column: 39, scope: !5987)
!5989 = !DILocation(line: 261, column: 6, scope: !5987)
!5990 = !DILocation(line: 261, column: 6, scope: !5935)
!5991 = !DILocation(line: 262, column: 3, scope: !5987)
!5992 = !DILocation(line: 264, column: 21, scope: !5935)
!5993 = !DILocation(line: 264, column: 25, scope: !5935)
!5994 = !DILocation(line: 264, column: 31, scope: !5935)
!5995 = !DILocation(line: 264, column: 8, scope: !5935)
!5996 = !DILocation(line: 264, column: 6, scope: !5935)
!5997 = !DILocation(line: 265, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 265, column: 6)
!5999 = !DILocation(line: 265, column: 6, scope: !5935)
!6000 = !DILocation(line: 266, column: 10, scope: !5998)
!6001 = !DILocation(line: 266, column: 3, scope: !5998)
!6002 = !DILocation(line: 268, column: 6, scope: !5949)
!6003 = !DILocation(line: 268, column: 10, scope: !5949)
!6004 = !DILocation(line: 268, column: 6, scope: !5935)
!6005 = !DILocation(line: 269, column: 3, scope: !5948)
!6006 = !DILocation(line: 269, column: 3, scope: !5947)
!6007 = !DILocation(line: 269, column: 3, scope: !5945)
!6008 = !DILocation(line: 269, column: 3, scope: !5946)
!6009 = !DILocation(line: 270, column: 13, scope: !5948)
!6010 = !DILocation(line: 270, column: 19, scope: !5948)
!6011 = !DILocation(line: 270, column: 26, scope: !5948)
!6012 = !DILocation(line: 270, column: 34, scope: !5948)
!6013 = !DILocation(line: 270, column: 3, scope: !5948)
!6014 = !DILocation(line: 271, column: 27, scope: !5948)
!6015 = !DILocation(line: 271, column: 35, scope: !5948)
!6016 = !DILocation(line: 271, column: 41, scope: !5948)
!6017 = !DILocation(line: 271, column: 3, scope: !5948)
!6018 = !DILocation(line: 272, column: 2, scope: !5948)
!6019 = !DILocation(line: 273, column: 19, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 272, column: 9)
!6021 = !DILocation(line: 273, column: 25, scope: !6020)
!6022 = !DILocation(line: 273, column: 3, scope: !6020)
!6023 = !DILocation(line: 280, column: 30, scope: !5935)
!6024 = !DILocation(line: 280, column: 38, scope: !5935)
!6025 = !DILocation(line: 280, column: 44, scope: !5935)
!6026 = !DILocation(line: 280, column: 2, scope: !5935)
!6027 = !DILocation(line: 281, column: 2, scope: !5935)
!6028 = !DILocation(line: 281, column: 6, scope: !5935)
!6029 = !DILocation(line: 281, column: 12, scope: !5935)
!6030 = !DILocation(line: 283, column: 2, scope: !5935)
!6031 = !DILocation(line: 284, column: 1, scope: !5935)
!6032 = distinct !DISubprogram(name: "to_vp_device", scope: !157, file: !157, line: 100, type: !6033, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6035)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!155, !4590}
!6035 = !{!6036, !6037}
!6036 = !DILocalVariable(name: "vdev", arg: 1, scope: !6032, file: !157, line: 100, type: !4590)
!6037 = !DILocalVariable(name: "__mptr", scope: !6038, file: !157, line: 102, type: !154)
!6038 = distinct !DILexicalBlock(scope: !6032, file: !157, line: 102, column: 9)
!6039 = !DILocation(line: 100, column: 69, scope: !6032)
!6040 = !DILocation(line: 102, column: 9, scope: !6038)
!6041 = !DILocation(line: 102, column: 9, scope: !6032)
!6042 = !DILocation(line: 102, column: 2, scope: !6032)
!6043 = !DISubprogram(name: "ioread8", scope: !6044, file: !6044, line: 29, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6044 = !DIFile(filename: "./include/asm-generic/iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2fb4069c6c763a33a87cd5332e9980e8")
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!7, !2506}
!6047 = !DISubprogram(name: "ioread16", scope: !6044, file: !6044, line: 30, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6048 = !DISubprogram(name: "ioread32", scope: !6044, file: !6044, line: 32, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6049 = !DISubprogram(name: "iowrite8", scope: !6044, file: !6044, line: 50, type: !6050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6050 = !DISubroutineType(types: !6051)
!6051 = !{null, !199, !154}
!6052 = !DISubprogram(name: "iowrite16", scope: !6044, file: !6044, line: 51, type: !6053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{null, !208, !154}
!6055 = !DISubprogram(name: "iowrite32", scope: !6044, file: !6044, line: 53, type: !6056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{null, !413, !154}
!6058 = !DISubprogram(name: "vp_modern_generation", scope: !5014, file: !5014, line: 98, type: !6059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!413, !5151}
!6061 = !DISubprogram(name: "vp_modern_get_status", scope: !5014, file: !5014, line: 99, type: !6062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!199, !5151}
!6064 = !DISubprogram(name: "vp_modern_set_status", scope: !5014, file: !5014, line: 100, type: !6065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{null, !5151, !199}
!6067 = !DISubprogram(name: "msleep", scope: !6068, file: !6068, line: 61, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6068 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6069 = !DISubroutineType(types: !6070)
!6070 = !{null, !7}
!6071 = !DISubprogram(name: "vp_find_vqs", scope: !157, file: !157, line: 112, type: !4613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6072 = !DISubprogram(name: "vp_modern_set_queue_enable", scope: !5014, file: !5014, line: 109, type: !6073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{null, !5151, !208, !165}
!6075 = !DISubprogram(name: "vp_modern_get_features", scope: !5014, file: !5014, line: 94, type: !6076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6076 = !DISubroutineType(types: !6077)
!6077 = !{!416, !5151}
!6078 = !DISubprogram(name: "vring_transport_features", scope: !6079, file: !6079, line: 118, type: !4609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6079 = !DIFile(filename: "./include/linux/virtio_ring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b8e0e254f4a0a127463f22fb51e0ca7")
!6080 = distinct !DISubprogram(name: "vp_transport_features", scope: !3, file: !3, line: 29, type: !6081, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6083)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{null, !4590, !416}
!6083 = !{!6084, !6085, !6086, !6087}
!6084 = !DILocalVariable(name: "vdev", arg: 1, scope: !6080, file: !3, line: 29, type: !4590)
!6085 = !DILocalVariable(name: "features", arg: 2, scope: !6080, file: !3, line: 29, type: !416)
!6086 = !DILocalVariable(name: "vp_dev", scope: !6080, file: !3, line: 31, type: !155)
!6087 = !DILocalVariable(name: "pci_dev", scope: !6080, file: !3, line: 32, type: !4698)
!6088 = !DILocation(line: 29, column: 57, scope: !6080)
!6089 = !DILocation(line: 29, column: 67, scope: !6080)
!6090 = !DILocation(line: 31, column: 2, scope: !6080)
!6091 = !DILocation(line: 31, column: 28, scope: !6080)
!6092 = !DILocation(line: 31, column: 50, scope: !6080)
!6093 = !DILocation(line: 31, column: 37, scope: !6080)
!6094 = !DILocation(line: 32, column: 2, scope: !6080)
!6095 = !DILocation(line: 32, column: 18, scope: !6080)
!6096 = !DILocation(line: 32, column: 28, scope: !6080)
!6097 = !DILocation(line: 32, column: 36, scope: !6080)
!6098 = !DILocation(line: 34, column: 7, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 34, column: 6)
!6100 = !DILocation(line: 34, column: 16, scope: !6099)
!6101 = !DILocation(line: 34, column: 44, scope: !6099)
!6102 = !DILocation(line: 35, column: 28, scope: !6099)
!6103 = !DILocation(line: 35, column: 4, scope: !6099)
!6104 = !DILocation(line: 34, column: 6, scope: !6080)
!6105 = !DILocation(line: 36, column: 20, scope: !6099)
!6106 = !DILocation(line: 36, column: 3, scope: !6099)
!6107 = !DILocation(line: 38, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 38, column: 6)
!6109 = !DILocation(line: 38, column: 15, scope: !6108)
!6110 = !DILocation(line: 38, column: 6, scope: !6080)
!6111 = !DILocation(line: 39, column: 20, scope: !6108)
!6112 = !DILocation(line: 39, column: 3, scope: !6108)
!6113 = !DILocation(line: 40, column: 1, scope: !6080)
!6114 = distinct !DISubprogram(name: "__virtio_test_bit", scope: !4584, file: !4584, line: 136, type: !6115, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6119)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!165, !6117, !7}
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!6119 = !{!6120, !6121}
!6120 = !DILocalVariable(name: "vdev", arg: 1, scope: !6114, file: !4584, line: 136, type: !6117)
!6121 = !DILocalVariable(name: "fbit", arg: 2, scope: !6114, file: !4584, line: 137, type: !7)
!6122 = !DILocation(line: 136, column: 66, scope: !6114)
!6123 = !DILocation(line: 137, column: 23, scope: !6114)
!6124 = !DILocation(line: 140, column: 27, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6114, file: !4584, line: 140, column: 6)
!6126 = !DILocation(line: 140, column: 6, scope: !6125)
!6127 = !DILocation(line: 140, column: 6, scope: !6114)
!6128 = !DILocation(line: 141, column: 3, scope: !6125)
!6129 = !DILocation(line: 141, column: 3, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6131, file: !4584, line: 141, column: 3)
!6131 = distinct !DILexicalBlock(scope: !6125, file: !4584, line: 141, column: 3)
!6132 = !DILocation(line: 141, column: 3, scope: !6131)
!6133 = !{i32 -2139907444}
!6134 = !DILocation(line: 143, column: 3, scope: !6125)
!6135 = !DILocation(line: 143, column: 3, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6137, file: !4584, line: 143, column: 3)
!6137 = distinct !DILexicalBlock(scope: !6125, file: !4584, line: 143, column: 3)
!6138 = !DILocation(line: 143, column: 3, scope: !6137)
!6139 = !DILocation(line: 143, column: 3, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6136, file: !4584, line: 143, column: 3)
!6141 = !DILocation(line: 143, column: 3, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6140, file: !4584, line: 143, column: 3)
!6143 = !DILocation(line: 143, column: 3, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6140, file: !4584, line: 143, column: 3)
!6145 = !{i64 2155060153, i64 2155060182, i64 2155060228, i64 2155060286, i64 2155060340, i64 2155060394, i64 2155060449, i64 2155060480}
!6146 = !DILocation(line: 145, column: 9, scope: !6114)
!6147 = !DILocation(line: 145, column: 15, scope: !6114)
!6148 = !DILocation(line: 145, column: 26, scope: !6114)
!6149 = !DILocation(line: 145, column: 24, scope: !6114)
!6150 = !DILocation(line: 145, column: 2, scope: !6114)
!6151 = !DISubprogram(name: "_dev_err", scope: !6152, file: !6152, line: 50, type: !6153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6152 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6153 = !DISubroutineType(types: !6154)
!6154 = !{null, !4130, !219, null}
!6155 = !DISubprogram(name: "vp_modern_set_features", scope: !5014, file: !5014, line: 96, type: !6156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{null, !5151, !416}
!6158 = !DISubprogram(name: "pci_find_ext_capability", scope: !4700, file: !4700, line: 1168, type: !6159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{!208, !4698, !109}
!6161 = distinct !DISubprogram(name: "__virtio_set_bit", scope: !4584, file: !4584, line: 153, type: !6162, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6164)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{null, !4590, !7}
!6164 = !{!6165, !6166}
!6165 = !DILocalVariable(name: "vdev", arg: 1, scope: !6161, file: !4584, line: 153, type: !4590)
!6166 = !DILocalVariable(name: "fbit", arg: 2, scope: !6161, file: !4584, line: 154, type: !7)
!6167 = !DILocation(line: 153, column: 59, scope: !6161)
!6168 = !DILocation(line: 154, column: 22, scope: !6161)
!6169 = !DILocation(line: 157, column: 27, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6161, file: !4584, line: 157, column: 6)
!6171 = !DILocation(line: 157, column: 6, scope: !6170)
!6172 = !DILocation(line: 157, column: 6, scope: !6161)
!6173 = !DILocation(line: 158, column: 3, scope: !6170)
!6174 = !DILocation(line: 158, column: 3, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !4584, line: 158, column: 3)
!6176 = distinct !DILexicalBlock(scope: !6170, file: !4584, line: 158, column: 3)
!6177 = !DILocation(line: 158, column: 3, scope: !6176)
!6178 = !{i32 -2139905164}
!6179 = !DILocation(line: 160, column: 3, scope: !6170)
!6180 = !DILocation(line: 160, column: 3, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6182, file: !4584, line: 160, column: 3)
!6182 = distinct !DILexicalBlock(scope: !6170, file: !4584, line: 160, column: 3)
!6183 = !DILocation(line: 160, column: 3, scope: !6182)
!6184 = !DILocation(line: 160, column: 3, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6181, file: !4584, line: 160, column: 3)
!6186 = !DILocation(line: 160, column: 3, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6185, file: !4584, line: 160, column: 3)
!6188 = !DILocation(line: 160, column: 3, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6185, file: !4584, line: 160, column: 3)
!6190 = !{i64 2155062433, i64 2155062462, i64 2155062508, i64 2155062566, i64 2155062620, i64 2155062674, i64 2155062729, i64 2155062760}
!6191 = !DILocation(line: 162, column: 20, scope: !6161)
!6192 = !DILocation(line: 162, column: 2, scope: !6161)
!6193 = !DILocation(line: 162, column: 8, scope: !6161)
!6194 = !DILocation(line: 162, column: 17, scope: !6161)
!6195 = !DILocation(line: 163, column: 1, scope: !6161)
!6196 = !DISubprogram(name: "__compiletime_assert_293", scope: !4584, file: !4584, line: 158, type: !967, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6197 = !DISubprogram(name: "__compiletime_assert_292", scope: !4584, file: !4584, line: 141, type: !967, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6198 = distinct !DISubprogram(name: "virtio_pci_find_shm_cap", scope: !3, file: !3, line: 395, type: !6199, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6201)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!109, !4698, !199, !5009, !4388, !4388}
!6201 = !{!6202, !6203, !6204, !6205, !6206, !6207, !6208, !6212, !6213, !6214, !6215, !6216, !6217}
!6202 = !DILocalVariable(name: "dev", arg: 1, scope: !6198, file: !3, line: 395, type: !4698)
!6203 = !DILocalVariable(name: "required_id", arg: 2, scope: !6198, file: !3, line: 395, type: !199)
!6204 = !DILocalVariable(name: "bar", arg: 3, scope: !6198, file: !3, line: 396, type: !5009)
!6205 = !DILocalVariable(name: "offset", arg: 4, scope: !6198, file: !3, line: 396, type: !4388)
!6206 = !DILocalVariable(name: "len", arg: 5, scope: !6198, file: !3, line: 396, type: !4388)
!6207 = !DILocalVariable(name: "pos", scope: !6198, file: !3, line: 398, type: !109)
!6208 = !DILocalVariable(name: "type", scope: !6209, file: !3, line: 402, type: !199)
!6209 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 401, column: 66)
!6210 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 400, column: 2)
!6211 = distinct !DILexicalBlock(scope: !6198, file: !3, line: 400, column: 2)
!6212 = !DILocalVariable(name: "cap_len", scope: !6209, file: !3, line: 402, type: !199)
!6213 = !DILocalVariable(name: "id", scope: !6209, file: !3, line: 402, type: !199)
!6214 = !DILocalVariable(name: "res_bar", scope: !6209, file: !3, line: 402, type: !199)
!6215 = !DILocalVariable(name: "tmp32", scope: !6209, file: !3, line: 403, type: !413)
!6216 = !DILocalVariable(name: "res_offset", scope: !6209, file: !3, line: 404, type: !416)
!6217 = !DILocalVariable(name: "res_length", scope: !6209, file: !3, line: 404, type: !416)
!6218 = !DILocation(line: 395, column: 52, scope: !6198)
!6219 = !DILocation(line: 395, column: 60, scope: !6198)
!6220 = !DILocation(line: 396, column: 12, scope: !6198)
!6221 = !DILocation(line: 396, column: 22, scope: !6198)
!6222 = !DILocation(line: 396, column: 35, scope: !6198)
!6223 = !DILocation(line: 398, column: 2, scope: !6198)
!6224 = !DILocation(line: 398, column: 6, scope: !6198)
!6225 = !DILocation(line: 400, column: 33, scope: !6211)
!6226 = !DILocation(line: 400, column: 13, scope: !6211)
!6227 = !DILocation(line: 400, column: 11, scope: !6211)
!6228 = !DILocation(line: 400, column: 7, scope: !6211)
!6229 = !DILocation(line: 400, column: 56, scope: !6210)
!6230 = !DILocation(line: 400, column: 60, scope: !6210)
!6231 = !DILocation(line: 400, column: 2, scope: !6211)
!6232 = !DILocation(line: 402, column: 3, scope: !6209)
!6233 = !DILocation(line: 402, column: 6, scope: !6209)
!6234 = !DILocation(line: 402, column: 12, scope: !6209)
!6235 = !DILocation(line: 402, column: 21, scope: !6209)
!6236 = !DILocation(line: 402, column: 25, scope: !6209)
!6237 = !DILocation(line: 403, column: 3, scope: !6209)
!6238 = !DILocation(line: 403, column: 7, scope: !6209)
!6239 = !DILocation(line: 404, column: 3, scope: !6209)
!6240 = !DILocation(line: 404, column: 7, scope: !6209)
!6241 = !DILocation(line: 404, column: 19, scope: !6209)
!6242 = !DILocation(line: 406, column: 24, scope: !6209)
!6243 = !DILocation(line: 406, column: 29, scope: !6209)
!6244 = !DILocation(line: 406, column: 33, scope: !6209)
!6245 = !DILocation(line: 406, column: 3, scope: !6209)
!6246 = !DILocation(line: 408, column: 7, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 408, column: 7)
!6248 = !DILocation(line: 408, column: 12, scope: !6247)
!6249 = !DILocation(line: 408, column: 7, scope: !6209)
!6250 = !DILocation(line: 409, column: 4, scope: !6247)
!6251 = !DILocation(line: 411, column: 24, scope: !6209)
!6252 = !DILocation(line: 411, column: 29, scope: !6209)
!6253 = !DILocation(line: 411, column: 33, scope: !6209)
!6254 = !DILocation(line: 411, column: 3, scope: !6209)
!6255 = !DILocation(line: 413, column: 7, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 413, column: 7)
!6257 = !DILocation(line: 413, column: 15, scope: !6256)
!6258 = !DILocation(line: 413, column: 7, scope: !6209)
!6259 = !DILocation(line: 414, column: 4, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 414, column: 4)
!6261 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 413, column: 51)
!6262 = !DILocation(line: 414, column: 4, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 414, column: 4)
!6264 = !DILocation(line: 416, column: 4, scope: !6261)
!6265 = !DILocation(line: 419, column: 24, scope: !6209)
!6266 = !DILocation(line: 419, column: 29, scope: !6209)
!6267 = !DILocation(line: 419, column: 33, scope: !6209)
!6268 = !DILocation(line: 419, column: 3, scope: !6209)
!6269 = !DILocation(line: 421, column: 7, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 421, column: 7)
!6271 = !DILocation(line: 421, column: 13, scope: !6270)
!6272 = !DILocation(line: 421, column: 10, scope: !6270)
!6273 = !DILocation(line: 421, column: 7, scope: !6209)
!6274 = !DILocation(line: 422, column: 4, scope: !6270)
!6275 = !DILocation(line: 424, column: 24, scope: !6209)
!6276 = !DILocation(line: 424, column: 29, scope: !6209)
!6277 = !DILocation(line: 424, column: 33, scope: !6209)
!6278 = !DILocation(line: 424, column: 3, scope: !6209)
!6279 = !DILocation(line: 426, column: 7, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 426, column: 7)
!6281 = !DILocation(line: 426, column: 15, scope: !6280)
!6282 = !DILocation(line: 426, column: 7, scope: !6209)
!6283 = !DILocation(line: 427, column: 4, scope: !6280)
!6284 = !DILocation(line: 434, column: 25, scope: !6209)
!6285 = !DILocation(line: 434, column: 30, scope: !6209)
!6286 = !DILocation(line: 434, column: 34, scope: !6209)
!6287 = !DILocation(line: 434, column: 3, scope: !6209)
!6288 = !DILocation(line: 436, column: 16, scope: !6209)
!6289 = !DILocation(line: 436, column: 14, scope: !6209)
!6290 = !DILocation(line: 437, column: 25, scope: !6209)
!6291 = !DILocation(line: 437, column: 30, scope: !6209)
!6292 = !DILocation(line: 437, column: 34, scope: !6209)
!6293 = !DILocation(line: 437, column: 3, scope: !6209)
!6294 = !DILocation(line: 439, column: 16, scope: !6209)
!6295 = !DILocation(line: 439, column: 14, scope: !6209)
!6296 = !DILocation(line: 442, column: 25, scope: !6209)
!6297 = !DILocation(line: 443, column: 11, scope: !6209)
!6298 = !DILocation(line: 443, column: 15, scope: !6209)
!6299 = !DILocation(line: 442, column: 3, scope: !6209)
!6300 = !DILocation(line: 445, column: 23, scope: !6209)
!6301 = !DILocation(line: 445, column: 18, scope: !6209)
!6302 = !DILocation(line: 445, column: 30, scope: !6209)
!6303 = !DILocation(line: 445, column: 14, scope: !6209)
!6304 = !DILocation(line: 446, column: 25, scope: !6209)
!6305 = !DILocation(line: 447, column: 11, scope: !6209)
!6306 = !DILocation(line: 447, column: 15, scope: !6209)
!6307 = !DILocation(line: 446, column: 3, scope: !6209)
!6308 = !DILocation(line: 449, column: 23, scope: !6209)
!6309 = !DILocation(line: 449, column: 18, scope: !6209)
!6310 = !DILocation(line: 449, column: 30, scope: !6209)
!6311 = !DILocation(line: 449, column: 14, scope: !6209)
!6312 = !DILocation(line: 451, column: 10, scope: !6209)
!6313 = !DILocation(line: 451, column: 4, scope: !6209)
!6314 = !DILocation(line: 451, column: 8, scope: !6209)
!6315 = !DILocation(line: 452, column: 13, scope: !6209)
!6316 = !DILocation(line: 452, column: 4, scope: !6209)
!6317 = !DILocation(line: 452, column: 11, scope: !6209)
!6318 = !DILocation(line: 453, column: 10, scope: !6209)
!6319 = !DILocation(line: 453, column: 4, scope: !6209)
!6320 = !DILocation(line: 453, column: 8, scope: !6209)
!6321 = !DILocation(line: 455, column: 10, scope: !6209)
!6322 = !DILocation(line: 455, column: 3, scope: !6209)
!6323 = !DILocation(line: 456, column: 2, scope: !6210)
!6324 = !DILocation(line: 401, column: 38, scope: !6210)
!6325 = !DILocation(line: 401, column: 43, scope: !6210)
!6326 = !DILocation(line: 401, column: 13, scope: !6210)
!6327 = !DILocation(line: 401, column: 11, scope: !6210)
!6328 = !DILocation(line: 400, column: 2, scope: !6210)
!6329 = distinct !{!6329, !6231, !6330, !5666, !5667}
!6330 = !DILocation(line: 456, column: 2, scope: !6211)
!6331 = !DILocation(line: 457, column: 2, scope: !6198)
!6332 = !DILocation(line: 458, column: 1, scope: !6198)
!6333 = distinct !DISubprogram(name: "resource_size", scope: !4717, file: !4717, line: 219, type: !6334, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6334 = !DISubroutineType(types: !6335)
!6335 = !{!4720, !6336}
!6336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6337, size: 64)
!6337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4716)
!6338 = !{!6339}
!6339 = !DILocalVariable(name: "res", arg: 1, scope: !6333, file: !4717, line: 219, type: !6336)
!6340 = !DILocation(line: 219, column: 68, scope: !6333)
!6341 = !DILocation(line: 221, column: 9, scope: !6333)
!6342 = !DILocation(line: 221, column: 14, scope: !6333)
!6343 = !DILocation(line: 221, column: 20, scope: !6333)
!6344 = !DILocation(line: 221, column: 25, scope: !6333)
!6345 = !DILocation(line: 221, column: 18, scope: !6333)
!6346 = !DILocation(line: 221, column: 31, scope: !6333)
!6347 = !DILocation(line: 221, column: 2, scope: !6333)
!6348 = !DISubprogram(name: "pci_find_capability", scope: !4700, file: !4700, line: 1164, type: !6349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!199, !4698, !109}
!6351 = !DISubprogram(name: "pci_read_config_byte", scope: !4700, file: !4700, line: 1213, type: !6352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!109, !6354, !109, !5009}
!6354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6355, size: 64)
!6355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4699)
!6356 = !DISubprogram(name: "pci_read_config_dword", scope: !4700, file: !4700, line: 1215, type: !6357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!109, !6354, !109, !2583}
!6359 = !DISubprogram(name: "pci_find_next_capability", scope: !4700, file: !4700, line: 1165, type: !6360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6360 = !DISubroutineType(types: !6361)
!6361 = !{!199, !4698, !199, !109}
!6362 = distinct !DISubprogram(name: "virtio_has_feature", scope: !4584, file: !4584, line: 187, type: !6115, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6363)
!6363 = !{!6364, !6365}
!6364 = !DILocalVariable(name: "vdev", arg: 1, scope: !6362, file: !4584, line: 187, type: !6117)
!6365 = !DILocalVariable(name: "fbit", arg: 2, scope: !6362, file: !4584, line: 188, type: !7)
!6366 = !DILocation(line: 187, column: 67, scope: !6362)
!6367 = !DILocation(line: 188, column: 24, scope: !6362)
!6368 = !DILocation(line: 190, column: 6, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6362, file: !4584, line: 190, column: 6)
!6370 = !DILocation(line: 190, column: 11, scope: !6369)
!6371 = !DILocation(line: 190, column: 6, scope: !6362)
!6372 = !DILocation(line: 191, column: 39, scope: !6369)
!6373 = !DILocation(line: 191, column: 45, scope: !6369)
!6374 = !DILocation(line: 191, column: 3, scope: !6369)
!6375 = !DILocation(line: 193, column: 27, scope: !6362)
!6376 = !DILocation(line: 193, column: 33, scope: !6362)
!6377 = !DILocation(line: 193, column: 9, scope: !6362)
!6378 = !DILocation(line: 193, column: 2, scope: !6362)
!6379 = !DISubprogram(name: "vp_modern_set_queue_reset", scope: !5014, file: !5014, line: 123, type: !6380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{null, !5151, !208}
!6382 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6383, file: !6383, line: 32, type: !6384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!314, !6386}
!6386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!6387 = distinct !DISubprogram(name: "spinlock_check", scope: !6388, file: !6388, line: 324, type: !6389, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6391)
!6388 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6389 = !DISubroutineType(types: !6390)
!6390 = !{!6386, !2286}
!6391 = !{!6392}
!6392 = !DILocalVariable(name: "lock", arg: 1, scope: !6387, file: !6388, line: 324, type: !2286)
!6393 = !DILocation(line: 324, column: 67, scope: !6387)
!6394 = !DILocation(line: 326, column: 10, scope: !6387)
!6395 = !DILocation(line: 326, column: 16, scope: !6387)
!6396 = !DILocation(line: 326, column: 2, scope: !6387)
!6397 = distinct !DISubprogram(name: "list_del", scope: !6398, file: !6398, line: 227, type: !6399, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6401)
!6398 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6399 = !DISubroutineType(types: !6400)
!6400 = !{null, !226}
!6401 = !{!6402}
!6402 = !DILocalVariable(name: "entry", arg: 1, scope: !6397, file: !6398, line: 227, type: !226)
!6403 = !DILocation(line: 227, column: 47, scope: !6397)
!6404 = !DILocation(line: 229, column: 19, scope: !6397)
!6405 = !DILocation(line: 229, column: 2, scope: !6397)
!6406 = !DILocation(line: 230, column: 2, scope: !6397)
!6407 = !DILocation(line: 230, column: 9, scope: !6397)
!6408 = !DILocation(line: 230, column: 14, scope: !6397)
!6409 = !DILocation(line: 231, column: 2, scope: !6397)
!6410 = !DILocation(line: 231, column: 9, scope: !6397)
!6411 = !DILocation(line: 231, column: 14, scope: !6397)
!6412 = !DILocation(line: 232, column: 1, scope: !6397)
!6413 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6388, file: !6388, line: 404, type: !6414, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6416)
!6414 = !DISubroutineType(types: !6415)
!6415 = !{null, !2286, !314}
!6416 = !{!6417, !6418, !6419, !6422}
!6417 = !DILocalVariable(name: "lock", arg: 1, scope: !6413, file: !6388, line: 404, type: !2286)
!6418 = !DILocalVariable(name: "flags", arg: 2, scope: !6413, file: !6388, line: 404, type: !314)
!6419 = !DILocalVariable(name: "__dummy", scope: !6420, file: !6388, line: 406, type: !314)
!6420 = distinct !DILexicalBlock(scope: !6421, file: !6388, line: 406, column: 2)
!6421 = distinct !DILexicalBlock(scope: !6413, file: !6388, line: 406, column: 2)
!6422 = !DILocalVariable(name: "__dummy2", scope: !6420, file: !6388, line: 406, type: !314)
!6423 = !DILocation(line: 404, column: 64, scope: !6413)
!6424 = !DILocation(line: 404, column: 84, scope: !6413)
!6425 = !DILocation(line: 406, column: 2, scope: !6413)
!6426 = !DILocation(line: 406, column: 2, scope: !6420)
!6427 = !DILocation(line: 406, column: 2, scope: !6421)
!6428 = !DILocation(line: 407, column: 1, scope: !6413)
!6429 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6398, file: !6398, line: 35, type: !6399, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6430 = !{!6431}
!6431 = !DILocalVariable(name: "list", arg: 1, scope: !6429, file: !6398, line: 35, type: !226)
!6432 = !DILocation(line: 35, column: 53, scope: !6429)
!6433 = !DILocation(line: 37, column: 2, scope: !6429)
!6434 = !DILocation(line: 37, column: 2, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6429, file: !6398, line: 37, column: 2)
!6436 = !DILocation(line: 37, column: 2, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6435, file: !6398, line: 37, column: 2)
!6438 = !DILocation(line: 37, column: 2, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6435, file: !6398, line: 37, column: 2)
!6440 = !DILocation(line: 38, column: 2, scope: !6429)
!6441 = !DILocation(line: 38, column: 2, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6429, file: !6398, line: 38, column: 2)
!6443 = !DILocation(line: 38, column: 2, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6442, file: !6398, line: 38, column: 2)
!6445 = !DILocation(line: 38, column: 2, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6442, file: !6398, line: 38, column: 2)
!6447 = !DILocation(line: 39, column: 1, scope: !6429)
!6448 = !DISubprogram(name: "synchronize_irq", scope: !6449, file: !6449, line: 13, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6449 = !DIFile(filename: "./include/linux/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e28e97c9e9f6f4db7783a84a063e2e35")
!6450 = !DISubprogram(name: "pci_irq_vector", scope: !4700, file: !4700, line: 1663, type: !6451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!109, !4698, !7}
!6453 = !DISubprogram(name: "virtio_check_driver_offered_feature", scope: !4584, file: !4584, line: 126, type: !6454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{null, !6117, !7}
!6456 = distinct !DISubprogram(name: "__list_del_entry", scope: !6398, file: !6398, line: 213, type: !6399, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6457)
!6457 = !{!6458}
!6458 = !DILocalVariable(name: "entry", arg: 1, scope: !6456, file: !6398, line: 213, type: !226)
!6459 = !DILocation(line: 213, column: 55, scope: !6456)
!6460 = !DILocation(line: 215, column: 30, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6456, file: !6398, line: 215, column: 6)
!6462 = !DILocation(line: 215, column: 7, scope: !6461)
!6463 = !DILocation(line: 215, column: 6, scope: !6456)
!6464 = !DILocation(line: 216, column: 3, scope: !6461)
!6465 = !DILocation(line: 218, column: 13, scope: !6456)
!6466 = !DILocation(line: 218, column: 20, scope: !6456)
!6467 = !DILocation(line: 218, column: 26, scope: !6456)
!6468 = !DILocation(line: 218, column: 33, scope: !6456)
!6469 = !DILocation(line: 218, column: 2, scope: !6456)
!6470 = !DILocation(line: 219, column: 1, scope: !6456)
!6471 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6398, file: !6398, line: 134, type: !6472, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6474)
!6472 = !DISubroutineType(types: !6473)
!6473 = !{!165, !226}
!6474 = !{!6475}
!6475 = !DILocalVariable(name: "entry", arg: 1, scope: !6471, file: !6398, line: 134, type: !226)
!6476 = !DILocation(line: 134, column: 61, scope: !6471)
!6477 = !DILocation(line: 136, column: 2, scope: !6471)
!6478 = distinct !DISubprogram(name: "__list_del", scope: !6398, file: !6398, line: 193, type: !6479, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6481)
!6479 = !DISubroutineType(types: !6480)
!6480 = !{null, !226, !226}
!6481 = !{!6482, !6483}
!6482 = !DILocalVariable(name: "prev", arg: 1, scope: !6478, file: !6398, line: 193, type: !226)
!6483 = !DILocalVariable(name: "next", arg: 2, scope: !6478, file: !6398, line: 193, type: !226)
!6484 = !DILocation(line: 193, column: 50, scope: !6478)
!6485 = !DILocation(line: 193, column: 75, scope: !6478)
!6486 = !DILocation(line: 195, column: 15, scope: !6478)
!6487 = !DILocation(line: 195, column: 2, scope: !6478)
!6488 = !DILocation(line: 195, column: 8, scope: !6478)
!6489 = !DILocation(line: 195, column: 13, scope: !6478)
!6490 = !DILocation(line: 196, column: 2, scope: !6478)
!6491 = !DILocation(line: 196, column: 2, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6478, file: !6398, line: 196, column: 2)
!6493 = !DILocation(line: 196, column: 2, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6492, file: !6398, line: 196, column: 2)
!6495 = !DILocation(line: 196, column: 2, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6492, file: !6398, line: 196, column: 2)
!6497 = !DILocation(line: 197, column: 1, scope: !6478)
!6498 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6383, file: !6383, line: 43, type: !6499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6499 = !DISubroutineType(types: !6500)
!6500 = !{null, !6386, !314}
!6501 = !DISubprogram(name: "vp_modern_get_queue_reset", scope: !5014, file: !5014, line: 122, type: !6502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6502 = !DISubroutineType(types: !6503)
!6503 = !{!109, !5151, !208}
!6504 = !DISubprogram(name: "vp_modern_get_queue_enable", scope: !5014, file: !5014, line: 111, type: !6505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!165, !5151, !208}
!6507 = distinct !DISubprogram(name: "vp_active_vq", scope: !3, file: !3, line: 182, type: !6508, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6510)
!6508 = !DISubroutineType(types: !6509)
!6509 = !{!109, !4616, !208}
!6510 = !{!6511, !6512, !6513, !6514, !6515}
!6511 = !DILocalVariable(name: "vq", arg: 1, scope: !6507, file: !3, line: 182, type: !4616)
!6512 = !DILocalVariable(name: "msix_vec", arg: 2, scope: !6507, file: !3, line: 182, type: !208)
!6513 = !DILocalVariable(name: "vp_dev", scope: !6507, file: !3, line: 184, type: !155)
!6514 = !DILocalVariable(name: "mdev", scope: !6507, file: !3, line: 185, type: !5151)
!6515 = !DILocalVariable(name: "index", scope: !6507, file: !3, line: 186, type: !314)
!6516 = !DILocation(line: 182, column: 43, scope: !6507)
!6517 = !DILocation(line: 182, column: 51, scope: !6507)
!6518 = !DILocation(line: 184, column: 2, scope: !6507)
!6519 = !DILocation(line: 184, column: 28, scope: !6507)
!6520 = !DILocation(line: 184, column: 50, scope: !6507)
!6521 = !DILocation(line: 184, column: 54, scope: !6507)
!6522 = !DILocation(line: 184, column: 37, scope: !6507)
!6523 = !DILocation(line: 185, column: 2, scope: !6507)
!6524 = !DILocation(line: 185, column: 35, scope: !6507)
!6525 = !DILocation(line: 185, column: 43, scope: !6507)
!6526 = !DILocation(line: 185, column: 51, scope: !6507)
!6527 = !DILocation(line: 186, column: 2, scope: !6507)
!6528 = !DILocation(line: 186, column: 16, scope: !6507)
!6529 = !DILocation(line: 188, column: 10, scope: !6507)
!6530 = !DILocation(line: 188, column: 14, scope: !6507)
!6531 = !DILocation(line: 188, column: 8, scope: !6507)
!6532 = !DILocation(line: 191, column: 27, scope: !6507)
!6533 = !DILocation(line: 191, column: 33, scope: !6507)
!6534 = !DILocation(line: 191, column: 65, scope: !6507)
!6535 = !DILocation(line: 191, column: 40, scope: !6507)
!6536 = !DILocation(line: 191, column: 2, scope: !6507)
!6537 = !DILocation(line: 192, column: 26, scope: !6507)
!6538 = !DILocation(line: 192, column: 32, scope: !6507)
!6539 = !DILocation(line: 192, column: 63, scope: !6507)
!6540 = !DILocation(line: 192, column: 39, scope: !6507)
!6541 = !DILocation(line: 193, column: 30, scope: !6507)
!6542 = !DILocation(line: 193, column: 5, scope: !6507)
!6543 = !DILocation(line: 194, column: 29, scope: !6507)
!6544 = !DILocation(line: 194, column: 5, scope: !6507)
!6545 = !DILocation(line: 192, column: 2, scope: !6507)
!6546 = !DILocation(line: 196, column: 6, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 196, column: 6)
!6548 = !DILocation(line: 196, column: 15, scope: !6547)
!6549 = !DILocation(line: 196, column: 6, scope: !6507)
!6550 = !DILocation(line: 197, column: 37, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6547, file: !3, line: 196, column: 40)
!6552 = !DILocation(line: 197, column: 43, scope: !6551)
!6553 = !DILocation(line: 197, column: 50, scope: !6551)
!6554 = !DILocation(line: 197, column: 14, scope: !6551)
!6555 = !DILocation(line: 197, column: 12, scope: !6551)
!6556 = !DILocation(line: 198, column: 7, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 198, column: 7)
!6558 = !DILocation(line: 198, column: 16, scope: !6557)
!6559 = !DILocation(line: 198, column: 7, scope: !6551)
!6560 = !DILocation(line: 199, column: 4, scope: !6557)
!6561 = !DILocation(line: 200, column: 2, scope: !6551)
!6562 = !DILocation(line: 202, column: 2, scope: !6507)
!6563 = !DILocation(line: 203, column: 1, scope: !6507)
!6564 = distinct !DISubprogram(name: "list_add", scope: !6398, file: !6398, line: 167, type: !6479, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6565)
!6565 = !{!6566, !6567}
!6566 = !DILocalVariable(name: "new", arg: 1, scope: !6564, file: !6398, line: 167, type: !226)
!6567 = !DILocalVariable(name: "head", arg: 2, scope: !6564, file: !6398, line: 167, type: !226)
!6568 = !DILocation(line: 167, column: 47, scope: !6564)
!6569 = !DILocation(line: 167, column: 70, scope: !6564)
!6570 = !DILocation(line: 169, column: 13, scope: !6564)
!6571 = !DILocation(line: 169, column: 18, scope: !6564)
!6572 = !DILocation(line: 169, column: 24, scope: !6564)
!6573 = !DILocation(line: 169, column: 30, scope: !6564)
!6574 = !DILocation(line: 169, column: 2, scope: !6564)
!6575 = !DILocation(line: 170, column: 1, scope: !6564)
!6576 = !DISubprogram(name: "vp_modern_set_queue_size", scope: !5014, file: !5014, line: 113, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6577 = !DISubroutineType(types: !6578)
!6578 = !{null, !5151, !208, !208}
!6579 = !DISubprogram(name: "virtqueue_get_vring_size", scope: !161, file: !161, line: 92, type: !6580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6580 = !DISubroutineType(types: !6581)
!6581 = !{!7, !6582}
!6582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6583, size: 64)
!6583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4617)
!6584 = !DISubprogram(name: "vp_modern_queue_address", scope: !5014, file: !5014, line: 106, type: !6585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{null, !5151, !208, !416, !416, !416}
!6587 = !DISubprogram(name: "virtqueue_get_desc_addr", scope: !161, file: !161, line: 97, type: !6588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{!6590, !6582}
!6590 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !166, line: 149, baseType: !416)
!6591 = !DISubprogram(name: "virtqueue_get_avail_addr", scope: !161, file: !161, line: 98, type: !6588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6592 = !DISubprogram(name: "virtqueue_get_used_addr", scope: !161, file: !161, line: 99, type: !6588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6593 = !DISubprogram(name: "vp_modern_queue_vector", scope: !5014, file: !5014, line: 102, type: !6594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6594 = !DISubroutineType(types: !6595)
!6595 = !{!208, !5151, !208, !208}
!6596 = distinct !DISubprogram(name: "__list_add", scope: !6398, file: !6398, line: 146, type: !6597, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6599)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{null, !226, !226, !226}
!6599 = !{!6600, !6601, !6602}
!6600 = !DILocalVariable(name: "new", arg: 1, scope: !6596, file: !6398, line: 146, type: !226)
!6601 = !DILocalVariable(name: "prev", arg: 2, scope: !6596, file: !6398, line: 147, type: !226)
!6602 = !DILocalVariable(name: "next", arg: 3, scope: !6596, file: !6398, line: 148, type: !226)
!6603 = !DILocation(line: 146, column: 49, scope: !6596)
!6604 = !DILocation(line: 147, column: 28, scope: !6596)
!6605 = !DILocation(line: 148, column: 28, scope: !6596)
!6606 = !DILocation(line: 150, column: 24, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6596, file: !6398, line: 150, column: 6)
!6608 = !DILocation(line: 150, column: 29, scope: !6607)
!6609 = !DILocation(line: 150, column: 35, scope: !6607)
!6610 = !DILocation(line: 150, column: 7, scope: !6607)
!6611 = !DILocation(line: 150, column: 6, scope: !6596)
!6612 = !DILocation(line: 151, column: 3, scope: !6607)
!6613 = !DILocation(line: 153, column: 15, scope: !6596)
!6614 = !DILocation(line: 153, column: 2, scope: !6596)
!6615 = !DILocation(line: 153, column: 8, scope: !6596)
!6616 = !DILocation(line: 153, column: 13, scope: !6596)
!6617 = !DILocation(line: 154, column: 14, scope: !6596)
!6618 = !DILocation(line: 154, column: 2, scope: !6596)
!6619 = !DILocation(line: 154, column: 7, scope: !6596)
!6620 = !DILocation(line: 154, column: 12, scope: !6596)
!6621 = !DILocation(line: 155, column: 14, scope: !6596)
!6622 = !DILocation(line: 155, column: 2, scope: !6596)
!6623 = !DILocation(line: 155, column: 7, scope: !6596)
!6624 = !DILocation(line: 155, column: 12, scope: !6596)
!6625 = !DILocation(line: 156, column: 2, scope: !6596)
!6626 = !DILocation(line: 156, column: 2, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6596, file: !6398, line: 156, column: 2)
!6628 = !DILocation(line: 156, column: 2, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6627, file: !6398, line: 156, column: 2)
!6630 = !DILocation(line: 156, column: 2, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6627, file: !6398, line: 156, column: 2)
!6632 = !DILocation(line: 157, column: 1, scope: !6596)
!6633 = distinct !DISubprogram(name: "__list_add_valid", scope: !6398, file: !6398, line: 128, type: !6634, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6636)
!6634 = !DISubroutineType(types: !6635)
!6635 = !{!165, !226, !226, !226}
!6636 = !{!6637, !6638, !6639}
!6637 = !DILocalVariable(name: "new", arg: 1, scope: !6633, file: !6398, line: 128, type: !226)
!6638 = !DILocalVariable(name: "prev", arg: 2, scope: !6633, file: !6398, line: 129, type: !226)
!6639 = !DILocalVariable(name: "next", arg: 3, scope: !6633, file: !6398, line: 130, type: !226)
!6640 = !DILocation(line: 128, column: 55, scope: !6633)
!6641 = !DILocation(line: 129, column: 23, scope: !6633)
!6642 = !DILocation(line: 130, column: 23, scope: !6633)
!6643 = !DILocation(line: 132, column: 2, scope: !6633)
!6644 = !DISubprogram(name: "vp_modern_config_vector", scope: !5014, file: !5014, line: 104, type: !6645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6645 = !DISubroutineType(types: !6646)
!6646 = !{!208, !5151, !208}
!6647 = distinct !DISubprogram(name: "vp_notify_with_data", scope: !3, file: !3, line: 291, type: !5236, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6648)
!6648 = !{!6649, !6650}
!6649 = !DILocalVariable(name: "vq", arg: 1, scope: !6647, file: !3, line: 291, type: !4616)
!6650 = !DILocalVariable(name: "data", scope: !6647, file: !3, line: 293, type: !413)
!6651 = !DILocation(line: 291, column: 51, scope: !6647)
!6652 = !DILocation(line: 293, column: 2, scope: !6647)
!6653 = !DILocation(line: 293, column: 6, scope: !6647)
!6654 = !DILocation(line: 293, column: 37, scope: !6647)
!6655 = !DILocation(line: 293, column: 13, scope: !6647)
!6656 = !DILocation(line: 295, column: 12, scope: !6647)
!6657 = !DILocation(line: 295, column: 34, scope: !6647)
!6658 = !DILocation(line: 295, column: 38, scope: !6647)
!6659 = !DILocation(line: 295, column: 2, scope: !6647)
!6660 = !DILocation(line: 298, column: 1, scope: !6647)
!6661 = !DILocation(line: 297, column: 2, scope: !6647)
!6662 = !DISubprogram(name: "vp_modern_get_num_queues", scope: !5014, file: !5014, line: 117, type: !6663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6663 = !DISubroutineType(types: !6664)
!6664 = !{!208, !5151}
!6665 = distinct !DISubprogram(name: "ERR_PTR", scope: !6666, file: !6666, line: 39, type: !6667, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6669)
!6666 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6667 = !DISubroutineType(types: !6668)
!6668 = !{!154, !300}
!6669 = !{!6670}
!6670 = !DILocalVariable(name: "error", arg: 1, scope: !6665, file: !6666, line: 39, type: !300)
!6671 = !DILocation(line: 39, column: 48, scope: !6665)
!6672 = !DILocation(line: 41, column: 18, scope: !6665)
!6673 = !DILocation(line: 41, column: 9, scope: !6665)
!6674 = !DILocation(line: 41, column: 2, scope: !6665)
!6675 = !DISubprogram(name: "vp_modern_get_queue_size", scope: !5014, file: !5014, line: 115, type: !6645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6676 = !DISubprogram(name: "vring_create_virtqueue", scope: !6079, file: !6079, line: 69, type: !6677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6677 = !DISubroutineType(types: !6678)
!6678 = !{!4616, !7, !7, !7, !4590, !165, !165, !165, !5235, !4621, !219}
!6679 = !DISubprogram(name: "vp_modern_map_vq_notify", scope: !5014, file: !5014, line: 118, type: !6680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!154, !5151, !208, !6682}
!6682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!6683 = !DISubprogram(name: "vring_del_virtqueue", scope: !6079, file: !6079, line: 115, type: !4622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6684 = !DISubprogram(name: "vring_notification_data", scope: !6079, file: !6079, line: 122, type: !6685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6685 = !DISubroutineType(types: !6686)
!6686 = !{!413, !4616}
!6687 = !DISubprogram(name: "pci_iounmap", scope: !6688, file: !6688, line: 21, type: !6689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6688 = !DIFile(filename: "./include/asm-generic/pci_iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d9d4783b1a299a88d20563407f34fb6c")
!6689 = !DISubroutineType(types: !6690)
!6690 = !{null, !4698, !154}
