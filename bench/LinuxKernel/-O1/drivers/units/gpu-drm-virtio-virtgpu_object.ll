; ModuleID = 'drivers/gpu/drm/virtio/virtgpu_object.c'
source_filename = "drivers/gpu/drm/virtio/virtgpu_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_gpu_device = type { ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, ptr, %struct.mutex, i64, i32, ptr, [128 x i8], %struct.mutex, [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, %struct.drm_luminance_range_info, i8, i8, i32, ptr, i32, i32 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [4 x i64], [4 x i64], i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i16, i16 }
%struct.drm_luminance_range_info = type { i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins, i32, i8 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.14 }
%union.anon.14 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.virtio_gpu_display_one = type { %struct.virtio_gpu_rect, i32, i32 }
%struct.virtio_gpu_rect = type { i32, i32, i32, i32 }
%struct.virtio_gpu_update_cursor = type { %struct.virtio_gpu_ctrl_hdr, %struct.virtio_gpu_cursor_pos, i32, i32, i32, i32 }
%struct.virtio_gpu_ctrl_hdr = type { i32, i32, i64, i32, i8, [3 x i8] }
%struct.virtio_gpu_cursor_pos = type { i32, i32, i32, i32 }
%struct.virtio_gpu_queue = type { ptr, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.virtio_gpu_fence_driver = type { %struct.atomic64_t, i64, i64, %struct.list_head, %struct.spinlock }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.virtio_gpu_object = type { %struct.drm_gem_shmem_object, i32, i8, i8, i8, i8, i32, i32, i32, %struct.uuid_t }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, ptr, i32, i32, %struct.list_head, ptr, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.17, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.anon.17 = type { %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.18, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.18 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.virtio_gpu_object_vram = type { %struct.virtio_gpu_object, i32, i32, %struct.drm_mm_node }
%struct.virtio_gpu_object_shmem = type { %struct.virtio_gpu_object }
%struct.virtio_gpu_object_params = type { i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.virtio_gpu_mem_entry = type { i64, i32, i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.virtio_device_id = type { i32, i32 }

@__param_str_virglhack = internal constant [21 x i8] c"virtio_gpu.virglhack\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@virtio_gpu_virglrenderer_workaround = internal global i32 1, align 4, !dbg !6695
@__param_virglhack = internal constant %struct.kernel_param { ptr @__param_str_virglhack, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.13 { ptr @virtio_gpu_virglrenderer_workaround } }, section "__param", align 8, !dbg !6440
@__UNIQUE_ID_virglhacktype319 = internal constant [34 x i8] c"virtio_gpu.parmtype=virglhack:int\00", section ".modinfo", align 1, !dbg !6442
@virtio_gpu_resource_id_get.seqno = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !6447
@virtio_gpu_shmem_funcs = internal constant %struct.drm_gem_object_funcs { ptr @virtio_gpu_free_object, ptr @virtio_gpu_gem_object_open, ptr @virtio_gpu_gem_object_close, ptr @drm_gem_shmem_object_print_info, ptr @virtgpu_gem_prime_export, ptr @drm_gem_shmem_object_pin, ptr @drm_gem_shmem_object_unpin, ptr @drm_gem_shmem_object_get_sg_table, ptr @drm_gem_shmem_object_vmap, ptr @drm_gem_shmem_object_vunmap, ptr @drm_gem_shmem_object_mmap, ptr null, ptr null, ptr @drm_gem_shmem_vm_ops }, align 8, !dbg !6697
@drm_gem_shmem_vm_ops = external dso_local constant %struct.vm_operations_struct, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6699
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to allocate ent list\0A\00", align 1, !dbg !6704
@.str.2 = private unnamed_addr constant [30 x i8] c"include/linux/virtio_config.h\00", align 1, !dbg !6709
@vmemmap_base = external dso_local global i64, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__param_virglhack, ptr @__UNIQUE_ID_virglhacktype319], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @virtio_gpu_resource_id_get(ptr noundef %vgdev, ptr noundef %resid) #0 align 16 !dbg !6449 {
entry:
  %retval = alloca i32, align 4
  %vgdev.addr = alloca ptr, align 8
  %resid.addr = alloca ptr, align 8
  %handle = alloca i32, align 4
  %handle1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vgdev, ptr %vgdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vgdev.addr, metadata !6688, metadata !DIExpression()), !dbg !6724
  store ptr %resid, ptr %resid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resid.addr, metadata !6689, metadata !DIExpression()), !dbg !6725
  %0 = load i32, ptr @virtio_gpu_virglrenderer_workaround, align 4, !dbg !6726
  %tobool = icmp ne i32 %0, 0, !dbg !6726
  br i1 %tobool, label %if.then, label %if.else, !dbg !6727

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %handle) #16, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !6690, metadata !DIExpression()), !dbg !6729
  %call = call i32 @atomic_inc_return(ptr noundef @virtio_gpu_resource_id_get.seqno) #17, !dbg !6730
  store i32 %call, ptr %handle, align 4, !dbg !6729
  %1 = load i32, ptr %handle, align 4, !dbg !6731
  %add = add i32 %1, 1, !dbg !6732
  %2 = load ptr, ptr %resid.addr, align 8, !dbg !6733
  store i32 %add, ptr %2, align 4, !dbg !6734
  call void @llvm.lifetime.end.p0(i64 4, ptr %handle) #16, !dbg !6735
  br label %if.end5, !dbg !6736

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %handle1) #16, !dbg !6737
  call void @llvm.dbg.declare(metadata ptr %handle1, metadata !6693, metadata !DIExpression()), !dbg !6738
  %3 = load ptr, ptr %vgdev.addr, align 8, !dbg !6739
  %resource_ida = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 8, !dbg !6740
  %call2 = call i32 @ida_alloc(ptr noundef %resource_ida, i32 noundef 3264) #17, !dbg !6741
  store i32 %call2, ptr %handle1, align 4, !dbg !6738
  %4 = load i32, ptr %handle1, align 4, !dbg !6742
  %cmp = icmp slt i32 %4, 0, !dbg !6744
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6745

if.then3:                                         ; preds = %if.else
  %5 = load i32, ptr %handle1, align 4, !dbg !6746
  store i32 %5, ptr %retval, align 4, !dbg !6747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6747

if.end:                                           ; preds = %if.else
  %6 = load i32, ptr %handle1, align 4, !dbg !6748
  %add4 = add i32 %6, 1, !dbg !6749
  %7 = load ptr, ptr %resid.addr, align 8, !dbg !6750
  store i32 %add4, ptr %7, align 4, !dbg !6751
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6752
  br label %cleanup, !dbg !6752

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %handle1) #16, !dbg !6752
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5

if.end5:                                          ; preds = %cleanup.cont, %if.then
  store i32 0, ptr %retval, align 4, !dbg !6753
  br label %return, !dbg !6753

return:                                           ; preds = %if.end5, %cleanup
  %8 = load i32, ptr %retval, align 4, !dbg !6754
  ret i32 %8, !dbg !6754

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #3 align 16 !dbg !6755 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6761, metadata !DIExpression()), !dbg !6762
  br label %do.body, !dbg !6763

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6764

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6766
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6767
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6768
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #17, !dbg !6769
  ret i32 %call, !dbg !6770
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ida_alloc(ptr noundef %ida, i32 noundef %gfp) #4 align 16 !dbg !6771 {
entry:
  %ida.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !6776, metadata !DIExpression()), !dbg !6778
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6777, metadata !DIExpression()), !dbg !6779
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !6780
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !6781
  %call = call i32 @ida_alloc_range(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %1) #17, !dbg !6782
  ret i32 %call, !dbg !6783
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @virtio_gpu_cleanup_object(ptr noundef %bo) #0 align 16 !dbg !6784 {
entry:
  %bo.addr = alloca ptr, align 8
  %vgdev = alloca ptr, align 8
  %vram = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6788, metadata !DIExpression()), !dbg !6796
  call void @llvm.lifetime.start.p0(i64 8, ptr %vgdev) #16, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %vgdev, metadata !6789, metadata !DIExpression()), !dbg !6798
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6799
  %base = getelementptr inbounds %struct.virtio_gpu_object, ptr %0, i32 0, i32 0, !dbg !6800
  %base1 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base, i32 0, i32 0, !dbg !6801
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %base1, i32 0, i32 2, !dbg !6802
  %1 = load ptr, ptr %dev, align 8, !dbg !6802
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5, !dbg !6803
  %2 = load ptr, ptr %dev_private, align 8, !dbg !6803
  store ptr %2, ptr %vgdev, align 8, !dbg !6798
  %3 = load ptr, ptr %vgdev, align 8, !dbg !6804
  %4 = load ptr, ptr %bo.addr, align 8, !dbg !6805
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %4, i32 0, i32 1, !dbg !6806
  %5 = load i32, ptr %hw_res_handle, align 8, !dbg !6806
  call void @virtio_gpu_resource_id_put(ptr noundef %3, i32 noundef %5) #17, !dbg !6807
  %6 = load ptr, ptr %bo.addr, align 8, !dbg !6808
  %call = call zeroext i1 @virtio_gpu_is_shmem(ptr noundef %6) #17, !dbg !6809
  br i1 %call, label %if.then, label %if.else, !dbg !6810

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %bo.addr, align 8, !dbg !6811
  %base2 = getelementptr inbounds %struct.virtio_gpu_object, ptr %7, i32 0, i32 0, !dbg !6813
  call void @drm_gem_shmem_free(ptr noundef %base2) #17, !dbg !6814
  br label %if.end16, !dbg !6815

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %bo.addr, align 8, !dbg !6816
  %call3 = call zeroext i1 @virtio_gpu_is_vram(ptr noundef %8) #17, !dbg !6817
  br i1 %call3, label %if.then4, label %if.end15, !dbg !6818

if.then4:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %vram) #16, !dbg !6819
  call void @llvm.dbg.declare(metadata ptr %vram, metadata !6790, metadata !DIExpression()), !dbg !6820
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6794, metadata !DIExpression()), !dbg !6821
  %9 = load ptr, ptr %bo.addr, align 8, !dbg !6821
  store ptr %9, ptr %__mptr, align 8, !dbg !6821
  %10 = load ptr, ptr %__mptr, align 8, !dbg !6821
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !6821
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6821
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6822
  %11 = load ptr, ptr %tmp, align 8, !dbg !6821
  store ptr %11, ptr %vram, align 8, !dbg !6820
  %12 = load ptr, ptr %vgdev, align 8, !dbg !6823
  %host_visible_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %12, i32 0, i32 32, !dbg !6824
  call void @spin_lock(ptr noundef %host_visible_lock) #17, !dbg !6825
  %13 = load ptr, ptr %vram, align 8, !dbg !6826
  %vram_node = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %13, i32 0, i32 3, !dbg !6828
  %call5 = call zeroext i1 @drm_mm_node_allocated(ptr noundef %vram_node) #17, !dbg !6829
  br i1 %call5, label %if.then6, label %if.end, !dbg !6830

if.then6:                                         ; preds = %if.then4
  %14 = load ptr, ptr %vram, align 8, !dbg !6831
  %vram_node7 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %14, i32 0, i32 3, !dbg !6832
  call void @drm_mm_remove_node(ptr noundef %vram_node7) #17, !dbg !6833
  br label %if.end, !dbg !6833

if.end:                                           ; preds = %if.then6, %if.then4
  %15 = load ptr, ptr %vgdev, align 8, !dbg !6834
  %host_visible_lock8 = getelementptr inbounds %struct.virtio_gpu_device, ptr %15, i32 0, i32 32, !dbg !6835
  call void @spin_unlock(ptr noundef %host_visible_lock8) #17, !dbg !6836
  %16 = load ptr, ptr %vram, align 8, !dbg !6837
  %base9 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %16, i32 0, i32 0, !dbg !6838
  %base10 = getelementptr inbounds %struct.virtio_gpu_object, ptr %base9, i32 0, i32 0, !dbg !6839
  %base11 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base10, i32 0, i32 0, !dbg !6840
  call void @drm_gem_free_mmap_offset(ptr noundef %base11) #17, !dbg !6841
  %17 = load ptr, ptr %vram, align 8, !dbg !6842
  %base12 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %17, i32 0, i32 0, !dbg !6843
  %base13 = getelementptr inbounds %struct.virtio_gpu_object, ptr %base12, i32 0, i32 0, !dbg !6844
  %base14 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base13, i32 0, i32 0, !dbg !6845
  call void @drm_gem_object_release(ptr noundef %base14) #17, !dbg !6846
  %18 = load ptr, ptr %vram, align 8, !dbg !6847
  call void @kfree(ptr noundef %18) #17, !dbg !6848
  call void @llvm.lifetime.end.p0(i64 8, ptr %vram) #16, !dbg !6849
  br label %if.end15, !dbg !6850

if.end15:                                         ; preds = %if.end, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vgdev) #16, !dbg !6851
  ret void, !dbg !6851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_gpu_resource_id_put(ptr noundef %vgdev, i32 noundef %id) #0 align 16 !dbg !6852 {
entry:
  %vgdev.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  store ptr %vgdev, ptr %vgdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vgdev.addr, metadata !6856, metadata !DIExpression()), !dbg !6858
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6857, metadata !DIExpression()), !dbg !6859
  %0 = load i32, ptr @virtio_gpu_virglrenderer_workaround, align 4, !dbg !6860
  %tobool = icmp ne i32 %0, 0, !dbg !6860
  br i1 %tobool, label %if.end, label %if.then, !dbg !6862

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vgdev.addr, align 8, !dbg !6863
  %resource_ida = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 8, !dbg !6865
  %2 = load i32, ptr %id.addr, align 4, !dbg !6866
  %sub = sub i32 %2, 1, !dbg !6867
  call void @ida_free(ptr noundef %resource_ida, i32 noundef %sub) #17, !dbg !6868
  br label %if.end, !dbg !6869

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @virtio_gpu_is_shmem(ptr noundef %bo) #0 align 16 !dbg !6871 {
entry:
  %bo.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6875, metadata !DIExpression()), !dbg !6876
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6877
  %base = getelementptr inbounds %struct.virtio_gpu_object, ptr %0, i32 0, i32 0, !dbg !6878
  %base1 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base, i32 0, i32 0, !dbg !6879
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %base1, i32 0, i32 12, !dbg !6880
  %1 = load ptr, ptr %funcs, align 8, !dbg !6880
  %cmp = icmp eq ptr %1, @virtio_gpu_shmem_funcs, !dbg !6881
  ret i1 %cmp, !dbg !6882
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6883 dso_local void @drm_gem_shmem_free(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6886 dso_local zeroext i1 @virtio_gpu_is_vram(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !6887 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6892, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6894
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6894
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !6894
  ret void, !dbg !6895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_mm_node_allocated(ptr noundef %node) #4 align 16 !dbg !6896 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6900, metadata !DIExpression()), !dbg !6901
  %0 = load ptr, ptr %node.addr, align 8, !dbg !6902
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 12, !dbg !6902
  %1 = ptrtoint ptr %flags to i64, !dbg !6902
  %cmp = icmp ne i64 %1, 0, !dbg !6902
  %conv = zext i1 %cmp to i32, !dbg !6902
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6902
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !6902

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !6902
  %flags1 = getelementptr inbounds %struct.drm_mm_node, ptr %3, i32 0, i32 12, !dbg !6902
  %4 = ptrtoint ptr %flags1 to i64, !dbg !6902
  %cmp2 = icmp ne i64 %4, 0, !dbg !6902
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6902

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %node.addr, align 8, !dbg !6902
  %flags5 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 12, !dbg !6902
  %6 = load i64, ptr %flags5, align 8, !dbg !6902
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6902
  br i1 %7, label %cond.true, label %cond.false, !dbg !6902

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %node.addr, align 8, !dbg !6902
  %flags6 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 12, !dbg !6902
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #17, !dbg !6902
  %conv7 = zext i1 %call to i32, !dbg !6902
  br label %cond.end, !dbg !6902

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %node.addr, align 8, !dbg !6902
  %flags8 = getelementptr inbounds %struct.drm_mm_node, ptr %9, i32 0, i32 12, !dbg !6902
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #17, !dbg !6902
  %conv10 = zext i1 %call9 to i32, !dbg !6902
  br label %cond.end, !dbg !6902

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !6902
  %tobool = icmp ne i32 %cond, 0, !dbg !6902
  ret i1 %tobool, !dbg !6903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6904 dso_local void @drm_mm_remove_node(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !6908 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6910, metadata !DIExpression()), !dbg !6911
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6912
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6912
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !6912
  ret void, !dbg !6913
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6914 dso_local void @drm_gem_free_mmap_offset(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6915 dso_local void @drm_gem_object_release(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6916 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @virtio_gpu_create_object(ptr noundef %dev, i64 noundef %size) #0 align 16 !dbg !6919 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %shmem = alloca ptr, align 8
  %dshmem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6921, metadata !DIExpression()), !dbg !6929
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6922, metadata !DIExpression()), !dbg !6930
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !6931
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !6923, metadata !DIExpression()), !dbg !6932
  call void @llvm.lifetime.start.p0(i64 8, ptr %dshmem) #16, !dbg !6933
  call void @llvm.dbg.declare(metadata ptr %dshmem, metadata !6928, metadata !DIExpression()), !dbg !6934
  %call = call noalias ptr @kzalloc(i64 noundef 448, i32 noundef 3264) #18, !dbg !6935
  store ptr %call, ptr %shmem, align 8, !dbg !6936
  %0 = load ptr, ptr %shmem, align 8, !dbg !6937
  %tobool = icmp ne ptr %0, null, !dbg !6937
  br i1 %tobool, label %if.end, label %if.then, !dbg !6939

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !6940
  store ptr %call1, ptr %retval, align 8, !dbg !6941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6941

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %shmem, align 8, !dbg !6942
  %base = getelementptr inbounds %struct.virtio_gpu_object_shmem, ptr %1, i32 0, i32 0, !dbg !6943
  %base2 = getelementptr inbounds %struct.virtio_gpu_object, ptr %base, i32 0, i32 0, !dbg !6944
  store ptr %base2, ptr %dshmem, align 8, !dbg !6945
  %2 = load ptr, ptr %dshmem, align 8, !dbg !6946
  %base3 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %2, i32 0, i32 0, !dbg !6947
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %base3, i32 0, i32 12, !dbg !6948
  store ptr @virtio_gpu_shmem_funcs, ptr %funcs, align 8, !dbg !6949
  %3 = load ptr, ptr %dshmem, align 8, !dbg !6950
  %base4 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %3, i32 0, i32 0, !dbg !6951
  store ptr %base4, ptr %retval, align 8, !dbg !6952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6952

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dshmem) #16, !dbg !6953
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !6953
  %4 = load ptr, ptr %retval, align 8, !dbg !6953
  ret ptr %4, !dbg !6953
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6954 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6958, metadata !DIExpression()), !dbg !6960
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6959, metadata !DIExpression()), !dbg !6961
  %0 = load i64, ptr %size.addr, align 8, !dbg !6962
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6963
  %or = or i32 %1, 256, !dbg !6964
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !6965
  ret ptr %call, !dbg !6966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6967 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6972, metadata !DIExpression()), !dbg !6973
  %0 = load i64, ptr %error.addr, align 8, !dbg !6974
  %1 = inttoptr i64 %0 to ptr, !dbg !6975
  ret ptr %1, !dbg !6976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @virtio_gpu_object_create(ptr noundef %vgdev, ptr noundef %params, ptr noundef %bo_ptr, ptr noundef %fence) #0 align 16 !dbg !6977 {
entry:
  %retval = alloca i32, align 4
  %vgdev.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %bo_ptr.addr = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %objs = alloca ptr, align 8
  %shmem_obj = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %ents = alloca ptr, align 8
  %nents = alloca i32, align 4
  %ret = alloca i32, align 4
  %__y = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %vgdev, ptr %vgdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vgdev.addr, metadata !7036, metadata !DIExpression()), !dbg !7069
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !7037, metadata !DIExpression()), !dbg !7070
  store ptr %bo_ptr, ptr %bo_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo_ptr.addr, metadata !7038, metadata !DIExpression()), !dbg !7071
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !7039, metadata !DIExpression()), !dbg !7072
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #16, !dbg !7073
  call void @llvm.dbg.declare(metadata ptr %objs, metadata !7040, metadata !DIExpression()), !dbg !7074
  store ptr null, ptr %objs, align 8, !dbg !7074
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem_obj) #16, !dbg !7075
  call void @llvm.dbg.declare(metadata ptr %shmem_obj, metadata !7050, metadata !DIExpression()), !dbg !7076
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #16, !dbg !7077
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !7051, metadata !DIExpression()), !dbg !7078
  call void @llvm.lifetime.start.p0(i64 8, ptr %ents) #16, !dbg !7079
  call void @llvm.dbg.declare(metadata ptr %ents, metadata !7052, metadata !DIExpression()), !dbg !7080
  store ptr null, ptr %ents, align 8, !dbg !7080
  call void @llvm.lifetime.start.p0(i64 4, ptr %nents) #16, !dbg !7081
  call void @llvm.dbg.declare(metadata ptr %nents, metadata !7059, metadata !DIExpression()), !dbg !7082
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !7083
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7060, metadata !DIExpression()), !dbg !7084
  %0 = load ptr, ptr %bo_ptr.addr, align 8, !dbg !7085
  store ptr null, ptr %0, align 8, !dbg !7086
  call void @llvm.lifetime.start.p0(i64 8, ptr %__y) #16, !dbg !7087
  call void @llvm.dbg.declare(metadata ptr %__y, metadata !7061, metadata !DIExpression()), !dbg !7087
  store i64 4096, ptr %__y, align 8, !dbg !7087
  %1 = load ptr, ptr %params.addr, align 8, !dbg !7087
  %size = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %1, i32 0, i32 0, !dbg !7087
  %2 = load i64, ptr %size, align 8, !dbg !7087
  %3 = load i64, ptr %__y, align 8, !dbg !7087
  %sub = sub i64 %3, 1, !dbg !7087
  %add = add i64 %2, %sub, !dbg !7087
  %4 = load i64, ptr %__y, align 8, !dbg !7087
  %div = udiv i64 %add, %4, !dbg !7087
  %5 = load i64, ptr %__y, align 8, !dbg !7087
  %mul = mul i64 %div, %5, !dbg !7087
  store i64 %mul, ptr %tmp, align 8, !dbg !7087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__y) #16, !dbg !7088
  %6 = load i64, ptr %tmp, align 8, !dbg !7087
  %7 = load ptr, ptr %params.addr, align 8, !dbg !7089
  %size1 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %7, i32 0, i32 0, !dbg !7090
  store i64 %6, ptr %size1, align 8, !dbg !7091
  %8 = load ptr, ptr %vgdev.addr, align 8, !dbg !7092
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %8, i32 0, i32 0, !dbg !7093
  %9 = load ptr, ptr %ddev, align 8, !dbg !7093
  %10 = load ptr, ptr %params.addr, align 8, !dbg !7094
  %size2 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %10, i32 0, i32 0, !dbg !7095
  %11 = load i64, ptr %size2, align 8, !dbg !7095
  %call = call ptr @drm_gem_shmem_create(ptr noundef %9, i64 noundef %11) #17, !dbg !7096
  store ptr %call, ptr %shmem_obj, align 8, !dbg !7097
  %12 = load ptr, ptr %shmem_obj, align 8, !dbg !7098
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %12) #17, !dbg !7100
  br i1 %call3, label %if.then, label %if.end, !dbg !7101

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %shmem_obj, align 8, !dbg !7102
  %call4 = call i64 @PTR_ERR(ptr noundef %13) #17, !dbg !7103
  %conv = trunc i64 %call4 to i32, !dbg !7103
  store i32 %conv, ptr %retval, align 4, !dbg !7104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7104

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7105
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7063, metadata !DIExpression()), !dbg !7105
  %14 = load ptr, ptr %shmem_obj, align 8, !dbg !7105
  %base = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %14, i32 0, i32 0, !dbg !7105
  store ptr %base, ptr %__mptr, align 8, !dbg !7105
  %15 = load ptr, ptr %__mptr, align 8, !dbg !7105
  %add.ptr = getelementptr i8, ptr %15, i64 0, !dbg !7105
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !7105
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7106
  %16 = load ptr, ptr %tmp5, align 8, !dbg !7105
  store ptr %16, ptr %bo, align 8, !dbg !7107
  %17 = load ptr, ptr %vgdev.addr, align 8, !dbg !7108
  %18 = load ptr, ptr %bo, align 8, !dbg !7109
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %18, i32 0, i32 1, !dbg !7110
  %call6 = call i32 @virtio_gpu_resource_id_get(ptr noundef %17, ptr noundef %hw_res_handle) #17, !dbg !7111
  store i32 %call6, ptr %ret, align 4, !dbg !7112
  %19 = load i32, ptr %ret, align 4, !dbg !7113
  %cmp = icmp slt i32 %19, 0, !dbg !7115
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !7116

if.then8:                                         ; preds = %if.end
  br label %err_free_gem, !dbg !7117

if.end9:                                          ; preds = %if.end
  %20 = load ptr, ptr %params.addr, align 8, !dbg !7118
  %dumb = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %20, i32 0, i32 1, !dbg !7119
  %21 = load i8, ptr %dumb, align 8, !dbg !7119, !range !7120, !noundef !729
  %tobool = trunc i8 %21 to i1, !dbg !7119
  %22 = load ptr, ptr %bo, align 8, !dbg !7121
  %dumb10 = getelementptr inbounds %struct.virtio_gpu_object, ptr %22, i32 0, i32 2, !dbg !7122
  %frombool = zext i1 %tobool to i8, !dbg !7123
  store i8 %frombool, ptr %dumb10, align 4, !dbg !7123
  %23 = load ptr, ptr %vgdev.addr, align 8, !dbg !7124
  %24 = load ptr, ptr %bo, align 8, !dbg !7125
  %call11 = call i32 @virtio_gpu_object_shmem_init(ptr noundef %23, ptr noundef %24, ptr noundef %ents, ptr noundef %nents) #17, !dbg !7126
  store i32 %call11, ptr %ret, align 4, !dbg !7127
  %25 = load i32, ptr %ret, align 4, !dbg !7128
  %cmp12 = icmp ne i32 %25, 0, !dbg !7130
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !7131

if.then14:                                        ; preds = %if.end9
  br label %err_put_id, !dbg !7132

if.end15:                                         ; preds = %if.end9
  %26 = load ptr, ptr %fence.addr, align 8, !dbg !7133
  %tobool16 = icmp ne ptr %26, null, !dbg !7133
  br i1 %tobool16, label %if.then17, label %if.end29, !dbg !7135

if.then17:                                        ; preds = %if.end15
  store i32 -12, ptr %ret, align 4, !dbg !7136
  %call18 = call ptr @virtio_gpu_array_alloc(i32 noundef 1) #17, !dbg !7138
  store ptr %call18, ptr %objs, align 8, !dbg !7139
  %27 = load ptr, ptr %objs, align 8, !dbg !7140
  %tobool19 = icmp ne ptr %27, null, !dbg !7140
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !7142

if.then20:                                        ; preds = %if.then17
  br label %err_free_entry, !dbg !7143

if.end21:                                         ; preds = %if.then17
  %28 = load ptr, ptr %objs, align 8, !dbg !7144
  %29 = load ptr, ptr %bo, align 8, !dbg !7145
  %base22 = getelementptr inbounds %struct.virtio_gpu_object, ptr %29, i32 0, i32 0, !dbg !7146
  %base23 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base22, i32 0, i32 0, !dbg !7147
  call void @virtio_gpu_array_add_obj(ptr noundef %28, ptr noundef %base23) #17, !dbg !7148
  %30 = load ptr, ptr %objs, align 8, !dbg !7149
  %call24 = call i32 @virtio_gpu_array_lock_resv(ptr noundef %30) #17, !dbg !7150
  store i32 %call24, ptr %ret, align 4, !dbg !7151
  %31 = load i32, ptr %ret, align 4, !dbg !7152
  %cmp25 = icmp ne i32 %31, 0, !dbg !7154
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !7155

if.then27:                                        ; preds = %if.end21
  br label %err_put_objs, !dbg !7156

if.end28:                                         ; preds = %if.end21
  br label %if.end29, !dbg !7157

if.end29:                                         ; preds = %if.end28, %if.end15
  %32 = load ptr, ptr %params.addr, align 8, !dbg !7158
  %blob = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %32, i32 0, i32 3, !dbg !7160
  %33 = load i8, ptr %blob, align 2, !dbg !7160, !range !7120, !noundef !729
  %tobool30 = trunc i8 %33 to i1, !dbg !7160
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !7161

if.then31:                                        ; preds = %if.end29
  %34 = load ptr, ptr %params.addr, align 8, !dbg !7162
  %blob_mem = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %34, i32 0, i32 15, !dbg !7165
  %35 = load i32, ptr %blob_mem, align 8, !dbg !7165
  %cmp32 = icmp eq i32 %35, 1, !dbg !7166
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !7167

if.then34:                                        ; preds = %if.then31
  %36 = load ptr, ptr %bo, align 8, !dbg !7168
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %36, i32 0, i32 5, !dbg !7169
  store i8 1, ptr %guest_blob, align 1, !dbg !7170
  br label %if.end35, !dbg !7168

if.end35:                                         ; preds = %if.then34, %if.then31
  %37 = load ptr, ptr %vgdev.addr, align 8, !dbg !7171
  %38 = load ptr, ptr %bo, align 8, !dbg !7172
  %39 = load ptr, ptr %params.addr, align 8, !dbg !7173
  %40 = load ptr, ptr %ents, align 8, !dbg !7174
  %41 = load i32, ptr %nents, align 4, !dbg !7175
  call void @virtio_gpu_cmd_resource_create_blob(ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41) #17, !dbg !7176
  br label %if.end40, !dbg !7177

if.else:                                          ; preds = %if.end29
  %42 = load ptr, ptr %params.addr, align 8, !dbg !7178
  %virgl = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %42, i32 0, i32 2, !dbg !7180
  %43 = load i8, ptr %virgl, align 1, !dbg !7180, !range !7120, !noundef !729
  %tobool36 = trunc i8 %43 to i1, !dbg !7180
  br i1 %tobool36, label %if.then37, label %if.else38, !dbg !7181

if.then37:                                        ; preds = %if.else
  %44 = load ptr, ptr %vgdev.addr, align 8, !dbg !7182
  %45 = load ptr, ptr %bo, align 8, !dbg !7184
  %46 = load ptr, ptr %params.addr, align 8, !dbg !7185
  %47 = load ptr, ptr %objs, align 8, !dbg !7186
  %48 = load ptr, ptr %fence.addr, align 8, !dbg !7187
  call void @virtio_gpu_cmd_resource_create_3d(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48) #17, !dbg !7188
  %49 = load ptr, ptr %vgdev.addr, align 8, !dbg !7189
  %50 = load ptr, ptr %bo, align 8, !dbg !7190
  %51 = load ptr, ptr %ents, align 8, !dbg !7191
  %52 = load i32, ptr %nents, align 4, !dbg !7192
  call void @virtio_gpu_object_attach(ptr noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef %52) #17, !dbg !7193
  br label %if.end39, !dbg !7194

if.else38:                                        ; preds = %if.else
  %53 = load ptr, ptr %vgdev.addr, align 8, !dbg !7195
  %54 = load ptr, ptr %bo, align 8, !dbg !7197
  %55 = load ptr, ptr %params.addr, align 8, !dbg !7198
  %56 = load ptr, ptr %objs, align 8, !dbg !7199
  %57 = load ptr, ptr %fence.addr, align 8, !dbg !7200
  call void @virtio_gpu_cmd_create_resource(ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57) #17, !dbg !7201
  %58 = load ptr, ptr %vgdev.addr, align 8, !dbg !7202
  %59 = load ptr, ptr %bo, align 8, !dbg !7203
  %60 = load ptr, ptr %ents, align 8, !dbg !7204
  %61 = load i32, ptr %nents, align 4, !dbg !7205
  call void @virtio_gpu_object_attach(ptr noundef %58, ptr noundef %59, ptr noundef %60, i32 noundef %61) #17, !dbg !7206
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then37
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end35
  %62 = load ptr, ptr %bo, align 8, !dbg !7207
  %63 = load ptr, ptr %bo_ptr.addr, align 8, !dbg !7208
  store ptr %62, ptr %63, align 8, !dbg !7209
  store i32 0, ptr %retval, align 4, !dbg !7210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7210

err_put_objs:                                     ; preds = %if.then27
  call void @llvm.dbg.label(metadata !7065), !dbg !7211
  %64 = load ptr, ptr %objs, align 8, !dbg !7212
  call void @virtio_gpu_array_put_free(ptr noundef %64) #17, !dbg !7213
  br label %err_free_entry, !dbg !7213

err_free_entry:                                   ; preds = %err_put_objs, %if.then20
  call void @llvm.dbg.label(metadata !7066), !dbg !7214
  %65 = load ptr, ptr %ents, align 8, !dbg !7215
  call void @kvfree(ptr noundef %65) #17, !dbg !7216
  br label %err_put_id, !dbg !7216

err_put_id:                                       ; preds = %err_free_entry, %if.then14
  call void @llvm.dbg.label(metadata !7067), !dbg !7217
  %66 = load ptr, ptr %vgdev.addr, align 8, !dbg !7218
  %67 = load ptr, ptr %bo, align 8, !dbg !7219
  %hw_res_handle41 = getelementptr inbounds %struct.virtio_gpu_object, ptr %67, i32 0, i32 1, !dbg !7220
  %68 = load i32, ptr %hw_res_handle41, align 8, !dbg !7220
  call void @virtio_gpu_resource_id_put(ptr noundef %66, i32 noundef %68) #17, !dbg !7221
  br label %err_free_gem, !dbg !7221

err_free_gem:                                     ; preds = %err_put_id, %if.then8
  call void @llvm.dbg.label(metadata !7068), !dbg !7222
  %69 = load ptr, ptr %shmem_obj, align 8, !dbg !7223
  call void @drm_gem_shmem_free(ptr noundef %69) #17, !dbg !7224
  %70 = load i32, ptr %ret, align 4, !dbg !7225
  store i32 %70, ptr %retval, align 4, !dbg !7226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7226

cleanup:                                          ; preds = %err_free_gem, %if.end40, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !7227
  call void @llvm.lifetime.end.p0(i64 4, ptr %nents) #16, !dbg !7227
  call void @llvm.lifetime.end.p0(i64 8, ptr %ents) #16, !dbg !7227
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #16, !dbg !7227
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem_obj) #16, !dbg !7227
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #16, !dbg !7227
  %71 = load i32, ptr %retval, align 4, !dbg !7227
  ret i32 %71, !dbg !7227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7228 dso_local ptr @drm_gem_shmem_create(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !7231 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7235, metadata !DIExpression()), !dbg !7236
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7237
  %1 = ptrtoint ptr %0 to i64, !dbg !7237
  %2 = inttoptr i64 %1 to ptr, !dbg !7237
  %3 = ptrtoint ptr %2 to i64, !dbg !7237
  %cmp = icmp uge i64 %3, -4095, !dbg !7237
  %lnot = xor i1 %cmp, true, !dbg !7237
  %lnot1 = xor i1 %lnot, true, !dbg !7237
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7237
  %conv = sext i32 %lnot.ext to i64, !dbg !7237
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7237
  %tobool = icmp ne i64 %expval, 0, !dbg !7237
  ret i1 %tobool, !dbg !7238
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !7239 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7243, metadata !DIExpression()), !dbg !7244
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7245
  %1 = ptrtoint ptr %0 to i64, !dbg !7246
  ret i64 %1, !dbg !7247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_gpu_object_shmem_init(ptr noundef %vgdev, ptr noundef %bo, ptr noundef %ents, ptr noundef %nents) #0 align 16 !dbg !7248 {
entry:
  %retval = alloca i32, align 4
  %vgdev.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  %ents.addr = alloca ptr, align 8
  %nents.addr = alloca ptr, align 8
  %use_dma_api = alloca i8, align 1
  %sg = alloca ptr, align 8
  %pages = alloca ptr, align 8
  %si = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vgdev, ptr %vgdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vgdev.addr, metadata !7253, metadata !DIExpression()), !dbg !7261
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !7254, metadata !DIExpression()), !dbg !7262
  store ptr %ents, ptr %ents.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ents.addr, metadata !7255, metadata !DIExpression()), !dbg !7263
  store ptr %nents, ptr %nents.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !7256, metadata !DIExpression()), !dbg !7264
  call void @llvm.lifetime.start.p0(i64 1, ptr %use_dma_api) #16, !dbg !7265
  call void @llvm.dbg.declare(metadata ptr %use_dma_api, metadata !7257, metadata !DIExpression()), !dbg !7266
  %0 = load ptr, ptr %vgdev.addr, align 8, !dbg !7267
  %vdev = getelementptr inbounds %struct.virtio_gpu_device, ptr %0, i32 0, i32 1, !dbg !7268
  %1 = load ptr, ptr %vdev, align 8, !dbg !7268
  %call = call zeroext i1 @virtio_has_dma_quirk(ptr noundef %1) #17, !dbg !7269
  %lnot = xor i1 %call, true, !dbg !7270
  %frombool = zext i1 %lnot to i8, !dbg !7266
  store i8 %frombool, ptr %use_dma_api, align 1, !dbg !7266
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #16, !dbg !7271
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !7258, metadata !DIExpression()), !dbg !7272
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #16, !dbg !7273
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !7259, metadata !DIExpression()), !dbg !7274
  call void @llvm.lifetime.start.p0(i64 4, ptr %si) #16, !dbg !7275
  call void @llvm.dbg.declare(metadata ptr %si, metadata !7260, metadata !DIExpression()), !dbg !7276
  %2 = load ptr, ptr %bo.addr, align 8, !dbg !7277
  %base = getelementptr inbounds %struct.virtio_gpu_object, ptr %2, i32 0, i32 0, !dbg !7278
  %call1 = call ptr @drm_gem_shmem_get_pages_sgt(ptr noundef %base) #17, !dbg !7279
  store ptr %call1, ptr %pages, align 8, !dbg !7280
  %3 = load ptr, ptr %pages, align 8, !dbg !7281
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !7283
  br i1 %call2, label %if.then, label %if.end, !dbg !7284

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pages, align 8, !dbg !7285
  %call3 = call i64 @PTR_ERR(ptr noundef %4) #17, !dbg !7286
  %conv = trunc i64 %call3 to i32, !dbg !7286
  store i32 %conv, ptr %retval, align 4, !dbg !7287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7287

if.end:                                           ; preds = %entry
  %5 = load i8, ptr %use_dma_api, align 1, !dbg !7288, !range !7120, !noundef !729
  %tobool = trunc i8 %5 to i1, !dbg !7288
  br i1 %tobool, label %if.then4, label %if.else, !dbg !7290

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %pages, align 8, !dbg !7291
  %nents5 = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 1, !dbg !7292
  %7 = load i32, ptr %nents5, align 8, !dbg !7292
  %8 = load ptr, ptr %nents.addr, align 8, !dbg !7293
  store i32 %7, ptr %8, align 4, !dbg !7294
  br label %if.end6, !dbg !7295

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %pages, align 8, !dbg !7296
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 2, !dbg !7297
  %10 = load i32, ptr %orig_nents, align 4, !dbg !7297
  %11 = load ptr, ptr %nents.addr, align 8, !dbg !7298
  store i32 %10, ptr %11, align 4, !dbg !7299
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %12 = load ptr, ptr %nents.addr, align 8, !dbg !7300
  %13 = load i32, ptr %12, align 4, !dbg !7301
  %conv7 = zext i32 %13 to i64, !dbg !7301
  %call8 = call noalias ptr @kvmalloc_array(i64 noundef %conv7, i64 noundef 16, i32 noundef 3264) #19, !dbg !7302
  %14 = load ptr, ptr %ents.addr, align 8, !dbg !7303
  store ptr %call8, ptr %14, align 8, !dbg !7304
  %15 = load ptr, ptr %ents.addr, align 8, !dbg !7305
  %16 = load ptr, ptr %15, align 8, !dbg !7307
  %tobool9 = icmp ne ptr %16, null, !dbg !7308
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !7309

if.then10:                                        ; preds = %if.end6
  call void (ptr, ...) @__drm_err(ptr noundef @.str.1) #17, !dbg !7310
  store i32 -12, ptr %retval, align 4, !dbg !7312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7312

if.end11:                                         ; preds = %if.end6
  %17 = load i8, ptr %use_dma_api, align 1, !dbg !7313, !range !7120, !noundef !729
  %tobool12 = trunc i8 %17 to i1, !dbg !7313
  br i1 %tobool12, label %if.then13, label %if.else21, !dbg !7315

if.then13:                                        ; preds = %if.end11
  store i32 0, ptr %si, align 4, !dbg !7316
  %18 = load ptr, ptr %pages, align 8, !dbg !7316
  %sgl = getelementptr inbounds %struct.sg_table, ptr %18, i32 0, i32 0, !dbg !7316
  %19 = load ptr, ptr %sgl, align 8, !dbg !7316
  store ptr %19, ptr %sg, align 8, !dbg !7316
  br label %for.cond, !dbg !7316

for.cond:                                         ; preds = %for.inc, %if.then13
  %20 = load i32, ptr %si, align 4, !dbg !7319
  %21 = load ptr, ptr %pages, align 8, !dbg !7319
  %nents14 = getelementptr inbounds %struct.sg_table, ptr %21, i32 0, i32 1, !dbg !7319
  %22 = load i32, ptr %nents14, align 8, !dbg !7319
  %cmp = icmp ult i32 %20, %22, !dbg !7319
  br i1 %cmp, label %for.body, label %for.end, !dbg !7316

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %sg, align 8, !dbg !7321
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3, !dbg !7321
  %24 = load i64, ptr %dma_address, align 8, !dbg !7321
  %25 = load ptr, ptr %ents.addr, align 8, !dbg !7323
  %26 = load ptr, ptr %25, align 8, !dbg !7324
  %27 = load i32, ptr %si, align 4, !dbg !7325
  %idxprom = sext i32 %27 to i64, !dbg !7326
  %arrayidx = getelementptr %struct.virtio_gpu_mem_entry, ptr %26, i64 %idxprom, !dbg !7326
  %addr = getelementptr inbounds %struct.virtio_gpu_mem_entry, ptr %arrayidx, i32 0, i32 0, !dbg !7327
  store i64 %24, ptr %addr, align 8, !dbg !7328
  %28 = load ptr, ptr %sg, align 8, !dbg !7329
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 4, !dbg !7329
  %29 = load i32, ptr %dma_length, align 8, !dbg !7329
  %30 = load ptr, ptr %ents.addr, align 8, !dbg !7330
  %31 = load ptr, ptr %30, align 8, !dbg !7331
  %32 = load i32, ptr %si, align 4, !dbg !7332
  %idxprom16 = sext i32 %32 to i64, !dbg !7333
  %arrayidx17 = getelementptr %struct.virtio_gpu_mem_entry, ptr %31, i64 %idxprom16, !dbg !7333
  %length = getelementptr inbounds %struct.virtio_gpu_mem_entry, ptr %arrayidx17, i32 0, i32 1, !dbg !7334
  store i32 %29, ptr %length, align 8, !dbg !7335
  %33 = load ptr, ptr %ents.addr, align 8, !dbg !7336
  %34 = load ptr, ptr %33, align 8, !dbg !7337
  %35 = load i32, ptr %si, align 4, !dbg !7338
  %idxprom18 = sext i32 %35 to i64, !dbg !7339
  %arrayidx19 = getelementptr %struct.virtio_gpu_mem_entry, ptr %34, i64 %idxprom18, !dbg !7339
  %padding = getelementptr inbounds %struct.virtio_gpu_mem_entry, ptr %arrayidx19, i32 0, i32 2, !dbg !7340
  store i32 0, ptr %padding, align 4, !dbg !7341
  br label %for.inc, !dbg !7342

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %si, align 4, !dbg !7319
  %inc = add i32 %36, 1, !dbg !7319
  store i32 %inc, ptr %si, align 4, !dbg !7319
  %37 = load ptr, ptr %sg, align 8, !dbg !7319
  %call20 = call ptr @sg_next(ptr noundef %37) #17, !dbg !7319
  store ptr %call20, ptr %sg, align 8, !dbg !7319
  br label %for.cond, !dbg !7319, !llvm.loop !7343

for.end:                                          ; preds = %for.cond
  br label %if.end43, !dbg !7347

if.else21:                                        ; preds = %if.end11
  store i32 0, ptr %si, align 4, !dbg !7348
  %38 = load ptr, ptr %pages, align 8, !dbg !7348
  %sgl22 = getelementptr inbounds %struct.sg_table, ptr %38, i32 0, i32 0, !dbg !7348
  %39 = load ptr, ptr %sgl22, align 8, !dbg !7348
  store ptr %39, ptr %sg, align 8, !dbg !7348
  br label %for.cond23, !dbg !7348

for.cond23:                                       ; preds = %for.inc39, %if.else21
  %40 = load i32, ptr %si, align 4, !dbg !7351
  %41 = load ptr, ptr %pages, align 8, !dbg !7351
  %orig_nents24 = getelementptr inbounds %struct.sg_table, ptr %41, i32 0, i32 2, !dbg !7351
  %42 = load i32, ptr %orig_nents24, align 4, !dbg !7351
  %cmp25 = icmp ult i32 %40, %42, !dbg !7351
  br i1 %cmp25, label %for.body27, label %for.end42, !dbg !7348

for.body27:                                       ; preds = %for.cond23
  %43 = load ptr, ptr %sg, align 8, !dbg !7353
  %call28 = call i64 @sg_phys(ptr noundef %43) #17, !dbg !7353
  %44 = load ptr, ptr %ents.addr, align 8, !dbg !7355
  %45 = load ptr, ptr %44, align 8, !dbg !7356
  %46 = load i32, ptr %si, align 4, !dbg !7357
  %idxprom29 = sext i32 %46 to i64, !dbg !7358
  %arrayidx30 = getelementptr %struct.virtio_gpu_mem_entry, ptr %45, i64 %idxprom29, !dbg !7358
  %addr31 = getelementptr inbounds %struct.virtio_gpu_mem_entry, ptr %arrayidx30, i32 0, i32 0, !dbg !7359
  store i64 %call28, ptr %addr31, align 8, !dbg !7360
  %47 = load ptr, ptr %sg, align 8, !dbg !7361
  %length32 = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 2, !dbg !7361
  %48 = load i32, ptr %length32, align 4, !dbg !7361
  %49 = load ptr, ptr %ents.addr, align 8, !dbg !7362
  %50 = load ptr, ptr %49, align 8, !dbg !7363
  %51 = load i32, ptr %si, align 4, !dbg !7364
  %idxprom33 = sext i32 %51 to i64, !dbg !7365
  %arrayidx34 = getelementptr %struct.virtio_gpu_mem_entry, ptr %50, i64 %idxprom33, !dbg !7365
  %length35 = getelementptr inbounds %struct.virtio_gpu_mem_entry, ptr %arrayidx34, i32 0, i32 1, !dbg !7366
  store i32 %48, ptr %length35, align 8, !dbg !7367
  %52 = load ptr, ptr %ents.addr, align 8, !dbg !7368
  %53 = load ptr, ptr %52, align 8, !dbg !7369
  %54 = load i32, ptr %si, align 4, !dbg !7370
  %idxprom36 = sext i32 %54 to i64, !dbg !7371
  %arrayidx37 = getelementptr %struct.virtio_gpu_mem_entry, ptr %53, i64 %idxprom36, !dbg !7371
  %padding38 = getelementptr inbounds %struct.virtio_gpu_mem_entry, ptr %arrayidx37, i32 0, i32 2, !dbg !7372
  store i32 0, ptr %padding38, align 4, !dbg !7373
  br label %for.inc39, !dbg !7374

for.inc39:                                        ; preds = %for.body27
  %55 = load i32, ptr %si, align 4, !dbg !7351
  %inc40 = add i32 %55, 1, !dbg !7351
  store i32 %inc40, ptr %si, align 4, !dbg !7351
  %56 = load ptr, ptr %sg, align 8, !dbg !7351
  %call41 = call ptr @sg_next(ptr noundef %56) #17, !dbg !7351
  store ptr %call41, ptr %sg, align 8, !dbg !7351
  br label %for.cond23, !dbg !7351, !llvm.loop !7375

for.end42:                                        ; preds = %for.cond23
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %for.end
  store i32 0, ptr %retval, align 4, !dbg !7377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7377

cleanup:                                          ; preds = %if.end43, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %si) #16, !dbg !7378
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #16, !dbg !7378
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #16, !dbg !7378
  call void @llvm.lifetime.end.p0(i64 1, ptr %use_dma_api) #16, !dbg !7378
  %57 = load i32, ptr %retval, align 4, !dbg !7378
  ret i32 %57, !dbg !7378
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7379 dso_local ptr @virtio_gpu_array_alloc(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7382 dso_local void @virtio_gpu_array_add_obj(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7385 dso_local i32 @virtio_gpu_array_lock_resv(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7388 dso_local void @virtio_gpu_cmd_resource_create_blob(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7391 dso_local void @virtio_gpu_cmd_resource_create_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7394 dso_local void @virtio_gpu_object_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7397 dso_local void @virtio_gpu_cmd_create_resource(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7398 dso_local void @virtio_gpu_array_put_free(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7401 dso_local void @kvfree(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !7402 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7410, metadata !DIExpression()), !dbg !7412
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7411, metadata !DIExpression()), !dbg !7413
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7414
  %1 = load i64, ptr %size.addr, align 8, !dbg !7415
  %conv = trunc i64 %1 to i32, !dbg !7415
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7416
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7417
  %3 = load i64, ptr %size.addr, align 8, !dbg !7417
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !7417
  ret void, !dbg !7418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #3 align 16 !dbg !7419 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7422, metadata !DIExpression()), !dbg !7423
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7424
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #17, !dbg !7425
  ret i32 %call, !dbg !7426
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7427 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7432, metadata !DIExpression()), !dbg !7434
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7433, metadata !DIExpression()), !dbg !7435
  ret i1 true, !dbg !7436
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7437 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7442, metadata !DIExpression()), !dbg !7445
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7443, metadata !DIExpression()), !dbg !7446
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7444, metadata !DIExpression()), !dbg !7447
  ret void, !dbg !7448
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !7449 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7453, metadata !DIExpression()), !dbg !7455
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7454, metadata !DIExpression()), !dbg !7456
  %0 = load i32, ptr %i.addr, align 4, !dbg !7457
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7458
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #17, !dbg !7459
  ret i32 %call, !dbg !7460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !7461 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7464, metadata !DIExpression()), !dbg !7468
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7465, metadata !DIExpression()), !dbg !7469
  %0 = load i32, ptr %i.addr, align 4, !dbg !7470
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !7471
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7466, metadata !DIExpression()), !dbg !7471
  %1 = load i32, ptr %i.addr, align 4, !dbg !7471
  store i32 %1, ptr %__ret, align 4, !dbg !7471
  %2 = load i32, ptr %__ret, align 4, !dbg !7471
  %3 = load ptr, ptr %v.addr, align 8, !dbg !7471
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !7471
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #16, !dbg !7471, !srcloc !7472
  store i32 %4, ptr %__ret, align 4, !dbg !7471
  %5 = load i32, ptr %__ret, align 4, !dbg !7471
  store i32 %5, ptr %tmp, align 4, !dbg !7471
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !7473
  %6 = load i32, ptr %tmp, align 4, !dbg !7471
  %add = add i32 %0, %6, !dbg !7474
  ret i32 %add, !dbg !7475
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7476 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7479 dso_local void @ida_free(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7482 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7487 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7495, metadata !DIExpression()), !dbg !7500
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7496, metadata !DIExpression()), !dbg !7501
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !7502
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7497, metadata !DIExpression()), !dbg !7503
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7504
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7505
  %div = udiv i64 %1, 64, !dbg !7505
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7506
  store ptr %add.ptr, ptr %p, align 8, !dbg !7503
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !7507
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7498, metadata !DIExpression()), !dbg !7508
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7509
  %rem = urem i64 %2, 64, !dbg !7509
  %shl = shl i64 1, %rem, !dbg !7509
  store i64 %shl, ptr %mask, align 8, !dbg !7508
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !7510
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7499, metadata !DIExpression()), !dbg !7511
  %3 = load ptr, ptr %p, align 8, !dbg !7512
  %4 = load i64, ptr %3, align 8, !dbg !7513
  store i64 %4, ptr %val, align 8, !dbg !7511
  %5 = load i64, ptr %val, align 8, !dbg !7514
  %6 = load i64, ptr %mask, align 8, !dbg !7515
  %and = and i64 %5, %6, !dbg !7516
  %tobool = icmp ne i64 %and, 0, !dbg !7517
  %lnot = xor i1 %tobool, true, !dbg !7517
  %lnot1 = xor i1 %lnot, true, !dbg !7518
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !7519
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !7519
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !7519
  ret i1 %lnot1, !dbg !7520
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7521 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7524, metadata !DIExpression()), !dbg !7526
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7525, metadata !DIExpression()), !dbg !7527
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7528
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7529
  %div = udiv i64 %1, 64, !dbg !7529
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7530
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7531
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7532
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7533
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7534
  ret i1 %call, !dbg !7535
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !7536 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7538, metadata !DIExpression()), !dbg !7540
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7539, metadata !DIExpression()), !dbg !7541
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7542
  %1 = load i64, ptr %size.addr, align 8, !dbg !7543
  %conv = trunc i64 %1 to i32, !dbg !7543
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7544
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7545
  %3 = load i64, ptr %size.addr, align 8, !dbg !7545
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7545
  ret void, !dbg !7546
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7547 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7550, metadata !DIExpression()), !dbg !7552
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7551, metadata !DIExpression()), !dbg !7553
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7554
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7555
  br i1 %1, label %cond.true, label %cond.false, !dbg !7555

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7556
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7557
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7558
  %conv = zext i1 %call to i32, !dbg !7558
  br label %cond.end, !dbg !7555

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7559
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7560
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !7561
  %conv2 = zext i1 %call1 to i32, !dbg !7561
  br label %cond.end, !dbg !7555

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7555
  %tobool = icmp ne i32 %cond, 0, !dbg !7555
  ret i1 %tobool, !dbg !7562
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7563 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7565, metadata !DIExpression()), !dbg !7567
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7566, metadata !DIExpression()), !dbg !7568
  ret i1 true, !dbg !7569
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7570 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7574, metadata !DIExpression()), !dbg !7576
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7575, metadata !DIExpression()), !dbg !7577
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7578
  %and = and i64 %0, 63, !dbg !7579
  %shl = shl i64 1, %and, !dbg !7580
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7581
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7582
  %shr = ashr i64 %2, 6, !dbg !7583
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7581
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7581
  %and1 = and i64 %shl, %3, !dbg !7584
  %cmp = icmp ne i64 %and1, 0, !dbg !7585
  ret i1 %cmp, !dbg !7586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7587 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7589, metadata !DIExpression()), !dbg !7592
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7590, metadata !DIExpression()), !dbg !7593
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !7594
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7591, metadata !DIExpression()), !dbg !7595
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7596
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7597
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !7598, !srcloc !7599
  %3 = icmp ult i8 %2, 2, !dbg !7598
  call void @llvm.assume(i1 %3), !dbg !7598
  store i8 %2, ptr %oldbit, align 1, !dbg !7598
  %4 = load i8, ptr %oldbit, align 1, !dbg !7600, !range !7120, !noundef !729
  %tobool = trunc i8 %4 to i1, !dbg !7600
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !7601
  ret i1 %tobool, !dbg !7602
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7603 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_gpu_free_object(ptr noundef %obj) #0 align 16 !dbg !7604 {
entry:
  %obj.addr = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %vgdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7606, metadata !DIExpression()), !dbg !7611
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #16, !dbg !7612
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !7607, metadata !DIExpression()), !dbg !7613
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7614
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7608, metadata !DIExpression()), !dbg !7614
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7614
  store ptr %0, ptr %__mptr, align 8, !dbg !7614
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7614
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7614
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7614
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7615
  %2 = load ptr, ptr %tmp, align 8, !dbg !7614
  store ptr %2, ptr %bo, align 8, !dbg !7613
  call void @llvm.lifetime.start.p0(i64 8, ptr %vgdev) #16, !dbg !7616
  call void @llvm.dbg.declare(metadata ptr %vgdev, metadata !7610, metadata !DIExpression()), !dbg !7617
  %3 = load ptr, ptr %bo, align 8, !dbg !7618
  %base = getelementptr inbounds %struct.virtio_gpu_object, ptr %3, i32 0, i32 0, !dbg !7619
  %base1 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base, i32 0, i32 0, !dbg !7620
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %base1, i32 0, i32 2, !dbg !7621
  %4 = load ptr, ptr %dev, align 8, !dbg !7621
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5, !dbg !7622
  %5 = load ptr, ptr %dev_private, align 8, !dbg !7622
  store ptr %5, ptr %vgdev, align 8, !dbg !7617
  %6 = load ptr, ptr %bo, align 8, !dbg !7623
  %created = getelementptr inbounds %struct.virtio_gpu_object, ptr %6, i32 0, i32 3, !dbg !7625
  %7 = load i8, ptr %created, align 1, !dbg !7625, !range !7120, !noundef !729
  %tobool = trunc i8 %7 to i1, !dbg !7625
  br i1 %tobool, label %if.then, label %if.end, !dbg !7626

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %vgdev, align 8, !dbg !7627
  %9 = load ptr, ptr %bo, align 8, !dbg !7629
  call void @virtio_gpu_cmd_unref_resource(ptr noundef %8, ptr noundef %9) #17, !dbg !7630
  %10 = load ptr, ptr %vgdev, align 8, !dbg !7631
  call void @virtio_gpu_notify(ptr noundef %10) #17, !dbg !7632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7633

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %bo, align 8, !dbg !7634
  call void @virtio_gpu_cleanup_object(ptr noundef %11) #17, !dbg !7635
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7636
  br label %cleanup, !dbg !7636

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vgdev) #16, !dbg !7636
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #16, !dbg !7636
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7636

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @virtio_gpu_gem_object_open(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_gem_object_close(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_gem_shmem_object_print_info(ptr noundef %p, i32 noundef %indent, ptr noundef %obj) #4 align 16 !dbg !7637 {
entry:
  %p.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %shmem = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7639, metadata !DIExpression()), !dbg !7647
  store i32 %indent, ptr %indent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %indent.addr, metadata !7640, metadata !DIExpression()), !dbg !7648
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7641, metadata !DIExpression()), !dbg !7649
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !7650
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !7642, metadata !DIExpression()), !dbg !7651
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7652
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7645, metadata !DIExpression()), !dbg !7652
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7652
  store ptr %0, ptr %__mptr, align 8, !dbg !7652
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7652
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7652
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7652
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7653
  %2 = load ptr, ptr %tmp, align 8, !dbg !7652
  store ptr %2, ptr %shmem, align 8, !dbg !7651
  %3 = load ptr, ptr %shmem, align 8, !dbg !7654
  %4 = load ptr, ptr %p.addr, align 8, !dbg !7655
  %5 = load i32, ptr %indent.addr, align 4, !dbg !7656
  call void @drm_gem_shmem_print_info(ptr noundef %3, ptr noundef %4, i32 noundef %5) #17, !dbg !7657
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !7658
  ret void, !dbg !7658
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @virtgpu_gem_prime_export(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_gem_shmem_object_pin(ptr noundef %obj) #4 align 16 !dbg !7659 {
entry:
  %obj.addr = alloca ptr, align 8
  %shmem = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7661, metadata !DIExpression()), !dbg !7665
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !7666
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !7662, metadata !DIExpression()), !dbg !7667
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7668
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7663, metadata !DIExpression()), !dbg !7668
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7668
  store ptr %0, ptr %__mptr, align 8, !dbg !7668
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7668
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7668
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7668
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7669
  %2 = load ptr, ptr %tmp, align 8, !dbg !7668
  store ptr %2, ptr %shmem, align 8, !dbg !7667
  %3 = load ptr, ptr %shmem, align 8, !dbg !7670
  %call = call i32 @drm_gem_shmem_pin(ptr noundef %3) #17, !dbg !7671
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !7672
  ret i32 %call, !dbg !7673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_gem_shmem_object_unpin(ptr noundef %obj) #4 align 16 !dbg !7674 {
entry:
  %obj.addr = alloca ptr, align 8
  %shmem = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7676, metadata !DIExpression()), !dbg !7680
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !7681
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !7677, metadata !DIExpression()), !dbg !7682
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7683
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7678, metadata !DIExpression()), !dbg !7683
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7683
  store ptr %0, ptr %__mptr, align 8, !dbg !7683
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7683
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7683
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7683
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7684
  %2 = load ptr, ptr %tmp, align 8, !dbg !7683
  store ptr %2, ptr %shmem, align 8, !dbg !7682
  %3 = load ptr, ptr %shmem, align 8, !dbg !7685
  call void @drm_gem_shmem_unpin(ptr noundef %3) #17, !dbg !7686
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !7687
  ret void, !dbg !7687
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_gem_shmem_object_get_sg_table(ptr noundef %obj) #4 align 16 !dbg !7688 {
entry:
  %obj.addr = alloca ptr, align 8
  %shmem = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7690, metadata !DIExpression()), !dbg !7694
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !7695
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !7691, metadata !DIExpression()), !dbg !7696
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7697
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7692, metadata !DIExpression()), !dbg !7697
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7697
  store ptr %0, ptr %__mptr, align 8, !dbg !7697
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7697
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7697
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7697
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7698
  %2 = load ptr, ptr %tmp, align 8, !dbg !7697
  store ptr %2, ptr %shmem, align 8, !dbg !7696
  %3 = load ptr, ptr %shmem, align 8, !dbg !7699
  %call = call ptr @drm_gem_shmem_get_sg_table(ptr noundef %3) #17, !dbg !7700
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !7701
  ret ptr %call, !dbg !7702
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_gem_shmem_object_vmap(ptr noundef %obj, ptr noundef %map) #4 align 16 !dbg !7703 {
entry:
  %obj.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %shmem = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7705, metadata !DIExpression()), !dbg !7710
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !7706, metadata !DIExpression()), !dbg !7711
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !7712
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !7707, metadata !DIExpression()), !dbg !7713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7714
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7708, metadata !DIExpression()), !dbg !7714
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7714
  store ptr %0, ptr %__mptr, align 8, !dbg !7714
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7714
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7714
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7714
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7715
  %2 = load ptr, ptr %tmp, align 8, !dbg !7714
  store ptr %2, ptr %shmem, align 8, !dbg !7713
  %3 = load ptr, ptr %shmem, align 8, !dbg !7716
  %4 = load ptr, ptr %map.addr, align 8, !dbg !7717
  %call = call i32 @drm_gem_shmem_vmap(ptr noundef %3, ptr noundef %4) #17, !dbg !7718
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !7719
  ret i32 %call, !dbg !7720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_gem_shmem_object_vunmap(ptr noundef %obj, ptr noundef %map) #4 align 16 !dbg !7721 {
entry:
  %obj.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %shmem = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7723, metadata !DIExpression()), !dbg !7728
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !7724, metadata !DIExpression()), !dbg !7729
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !7730
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !7725, metadata !DIExpression()), !dbg !7731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7732
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7726, metadata !DIExpression()), !dbg !7732
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7732
  store ptr %0, ptr %__mptr, align 8, !dbg !7732
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7732
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7732
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7733
  %2 = load ptr, ptr %tmp, align 8, !dbg !7732
  store ptr %2, ptr %shmem, align 8, !dbg !7731
  %3 = load ptr, ptr %shmem, align 8, !dbg !7734
  %4 = load ptr, ptr %map.addr, align 8, !dbg !7735
  call void @drm_gem_shmem_vunmap(ptr noundef %3, ptr noundef %4) #17, !dbg !7736
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !7737
  ret void, !dbg !7737
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_gem_shmem_object_mmap(ptr noundef %obj, ptr noundef %vma) #4 align 16 !dbg !7738 {
entry:
  %obj.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %shmem = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7740, metadata !DIExpression()), !dbg !7745
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7741, metadata !DIExpression()), !dbg !7746
  call void @llvm.lifetime.start.p0(i64 8, ptr %shmem) #16, !dbg !7747
  call void @llvm.dbg.declare(metadata ptr %shmem, metadata !7742, metadata !DIExpression()), !dbg !7748
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7749
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7743, metadata !DIExpression()), !dbg !7749
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7749
  store ptr %0, ptr %__mptr, align 8, !dbg !7749
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7749
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7749
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7749
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7750
  %2 = load ptr, ptr %tmp, align 8, !dbg !7749
  store ptr %2, ptr %shmem, align 8, !dbg !7748
  %3 = load ptr, ptr %shmem, align 8, !dbg !7751
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !7752
  %call = call i32 @drm_gem_shmem_mmap(ptr noundef %3, ptr noundef %4) #17, !dbg !7753
  call void @llvm.lifetime.end.p0(i64 8, ptr %shmem) #16, !dbg !7754
  ret i32 %call, !dbg !7755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7756 dso_local void @virtio_gpu_cmd_unref_resource(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7759 dso_local void @virtio_gpu_notify(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7762 dso_local void @drm_gem_shmem_print_info(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7765 dso_local i32 @drm_gem_shmem_pin(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7768 dso_local void @drm_gem_shmem_unpin(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7769 dso_local ptr @drm_gem_shmem_get_sg_table(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7772 dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7775 dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7778 dso_local i32 @drm_gem_shmem_mmap(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !7781 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7783, metadata !DIExpression()), !dbg !7788
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7784, metadata !DIExpression()), !dbg !7789
  %0 = load i64, ptr %size.addr, align 8, !dbg !7790
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7791
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7792

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7793
  %tobool = icmp ne i64 %2, 0, !dbg !7793
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7794

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !7795
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7785, metadata !DIExpression()), !dbg !7796
  %3 = load i64, ptr %size.addr, align 8, !dbg !7797
  %cmp = icmp ugt i64 %3, 8192, !dbg !7799
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7800

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7801
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7802
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !7803
  store ptr %call, ptr %retval, align 8, !dbg !7804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7804

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7805
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !7805
  store i32 %call2, ptr %index, align 4, !dbg !7806
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7807
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7808
  %9 = ptrtoint ptr %8 to i64, !dbg !7808
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !7809
  %idxprom = zext i32 %call3 to i64, !dbg !7810
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7810
  %10 = load i32, ptr %index, align 4, !dbg !7811
  %idxprom4 = zext i32 %10 to i64, !dbg !7810
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7810
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7810
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7812
  %13 = load i64, ptr %size.addr, align 8, !dbg !7813
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !7814
  store ptr %call6, ptr %retval, align 8, !dbg !7815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7815

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !7816
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7817
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7818
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !7819
  store ptr %call8, ptr %retval, align 8, !dbg !7820
  br label %return, !dbg !7820

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7821
  ret ptr %16, !dbg !7821
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7822 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !7823 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7827, metadata !DIExpression()), !dbg !7829
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7828, metadata !DIExpression()), !dbg !7830
  %0 = load i64, ptr %size.addr, align 8, !dbg !7831
  %tobool = icmp ne i64 %0, 0, !dbg !7831
  br i1 %tobool, label %if.end, label %if.then, !dbg !7833

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7834
  br label %return, !dbg !7834

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7835
  %cmp = icmp ule i64 %1, 8, !dbg !7837
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7838

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7839
  br label %return, !dbg !7839

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7840
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7842
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7843

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7844
  %cmp4 = icmp ule i64 %3, 96, !dbg !7845
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7846

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7847
  br label %return, !dbg !7847

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7848
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7850
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7851

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7852
  %cmp9 = icmp ule i64 %5, 192, !dbg !7853
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7854

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7855
  br label %return, !dbg !7855

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7856
  %cmp12 = icmp ule i64 %6, 8, !dbg !7858
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7859

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7860
  br label %return, !dbg !7860

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7861
  %cmp15 = icmp ule i64 %7, 16, !dbg !7863
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7864

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7865
  br label %return, !dbg !7865

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7866
  %cmp18 = icmp ule i64 %8, 32, !dbg !7868
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7869

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7870
  br label %return, !dbg !7870

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7871
  %cmp21 = icmp ule i64 %9, 64, !dbg !7873
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7874

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7875
  br label %return, !dbg !7875

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7876
  %cmp24 = icmp ule i64 %10, 128, !dbg !7878
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7879

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7880
  br label %return, !dbg !7880

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7881
  %cmp27 = icmp ule i64 %11, 256, !dbg !7883
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7884

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7885
  br label %return, !dbg !7885

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7886
  %cmp30 = icmp ule i64 %12, 512, !dbg !7888
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7889

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7890
  br label %return, !dbg !7890

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7891
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7893
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7894

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7895
  br label %return, !dbg !7895

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7896
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7898
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7899

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7900
  br label %return, !dbg !7900

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7901
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7903
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7904

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7905
  br label %return, !dbg !7905

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7906
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7908
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7909

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7910
  br label %return, !dbg !7910

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7911
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7913
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7914

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7915
  br label %return, !dbg !7915

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7916
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7918
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7919

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7920
  br label %return, !dbg !7920

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7921
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7923
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7924

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7925
  br label %return, !dbg !7925

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7926
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7928
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7929

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7930
  br label %return, !dbg !7930

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7931
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7933
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7934

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7935
  br label %return, !dbg !7935

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7936
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7938
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7939

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7940
  br label %return, !dbg !7940

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7941
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7943
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7944

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7945
  br label %return, !dbg !7945

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7946
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7948
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7949

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7950
  br label %return, !dbg !7950

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7951, !range !7120, !noundef !729
  %tobool69 = trunc i8 %25 to i1, !dbg !7951
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7953

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7954

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #21, !dbg !7955, !srcloc !7958
  unreachable, !dbg !7955

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7959

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7960

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7961

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7963

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7961

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !7965, !srcloc !7967
  br label %do.end75, !dbg !7965

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7961

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7968
  br label %return, !dbg !7968

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7969
  ret i32 %26, !dbg !7969
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7970 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !7973 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7977, metadata !DIExpression()), !dbg !7979
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7978, metadata !DIExpression()), !dbg !7980
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7981
  %and = and i32 %0, 17, !dbg !7981
  %cmp = icmp eq i32 %and, 0, !dbg !7981
  %lnot = xor i1 %cmp, true, !dbg !7981
  %lnot1 = xor i1 %lnot, true, !dbg !7981
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7981
  %conv = sext i32 %lnot.ext to i64, !dbg !7981
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7981
  %tobool = icmp ne i64 %expval, 0, !dbg !7981
  br i1 %tobool, label %if.then, label %if.end, !dbg !7983

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7984
  br label %return, !dbg !7984

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7985
  %and2 = and i32 %1, 1, !dbg !7987
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7987
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7988

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7989
  br label %return, !dbg !7989

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7990
  br label %return, !dbg !7990

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7992
  ret i32 %2, !dbg !7992
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7993 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7994 dso_local void @__compiletime_assert_229() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @virtio_has_dma_quirk(ptr noundef %vdev) #4 align 16 !dbg !7995 {
entry:
  %vdev.addr = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !8001, metadata !DIExpression()), !dbg !8002
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !8003
  %call = call zeroext i1 @virtio_has_feature(ptr noundef %0, i32 noundef 33) #17, !dbg !8004
  %lnot = xor i1 %call, true, !dbg !8005
  ret i1 %lnot, !dbg !8006
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !8007 dso_local ptr @drm_gem_shmem_get_pages_sgt(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !8008 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !8012, metadata !DIExpression()), !dbg !8016
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !8013, metadata !DIExpression()), !dbg !8017
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !8014, metadata !DIExpression()), !dbg !8018
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !8019
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !8015, metadata !DIExpression()), !dbg !8020
  %0 = load i64, ptr %n.addr, align 8, !dbg !8021
  %1 = load i64, ptr %size.addr, align 8, !dbg !8021
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !8021
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !8021
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !8021
  store i64 %4, ptr %bytes, align 8, !dbg !8021
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !8021
  %lnot = xor i1 %call, true, !dbg !8021
  %lnot1 = xor i1 %lnot, true, !dbg !8021
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !8021
  %conv = sext i32 %lnot.ext to i64, !dbg !8021
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !8021
  %tobool = icmp ne i64 %expval, 0, !dbg !8021
  br i1 %tobool, label %if.then, label %if.end, !dbg !8023

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !8024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !8024

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !8025
  %6 = load i32, ptr %flags.addr, align 4, !dbg !8026
  %call2 = call noalias ptr @kvmalloc(i64 noundef %5, i32 noundef %6) #18, !dbg !8027
  store ptr %call2, ptr %retval, align 8, !dbg !8028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !8028

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !8029
  %7 = load ptr, ptr %retval, align 8, !dbg !8029
  ret ptr %7, !dbg !8029
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !8030 dso_local void @__drm_err(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !8033 dso_local ptr @sg_next(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sg_phys(ptr noundef %sg) #4 align 16 !dbg !8036 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !8040, metadata !DIExpression()), !dbg !8041
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !8042
  %call = call ptr @sg_page(ptr noundef %0) #17, !dbg !8042
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !8042
  %2 = inttoptr i64 %1 to ptr, !dbg !8042
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64, !dbg !8042
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !8042
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !8042
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !8042
  %shl = shl i64 %sub.ptr.div, 12, !dbg !8042
  %3 = load ptr, ptr %sg.addr, align 8, !dbg !8043
  %offset = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1, !dbg !8044
  %4 = load i32, ptr %offset, align 8, !dbg !8044
  %conv = zext i32 %4 to i64, !dbg !8043
  %add = add i64 %shl, %conv, !dbg !8045
  ret i64 %add, !dbg !8046
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @virtio_has_feature(ptr noundef %vdev, i32 noundef %fbit) #4 align 16 !dbg !8047 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !8051, metadata !DIExpression()), !dbg !8053
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !8052, metadata !DIExpression()), !dbg !8054
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !8055
  %cmp = icmp ult i32 %0, 28, !dbg !8057
  br i1 %cmp, label %if.then, label %if.end, !dbg !8058

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vdev.addr, align 8, !dbg !8059
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !8060
  call void @virtio_check_driver_offered_feature(ptr noundef %1, i32 noundef %2) #17, !dbg !8061
  br label %if.end, !dbg !8061

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !8062
  %4 = load i32, ptr %fbit.addr, align 4, !dbg !8063
  %call = call zeroext i1 @__virtio_test_bit(ptr noundef %3, i32 noundef %4) #17, !dbg !8064
  ret i1 %call, !dbg !8065
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !8066 dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__virtio_test_bit(ptr noundef %vdev, i32 noundef %fbit) #4 align 16 !dbg !8069 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !8071, metadata !DIExpression()), !dbg !8073
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !8072, metadata !DIExpression()), !dbg !8074
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !8075
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !8077
  br i1 %1, label %if.then, label %if.else, !dbg !8078

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !8079

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !8080
  %cmp = icmp uge i32 %2, 64, !dbg !8080
  br i1 %cmp, label %if.then1, label %if.end, !dbg !8083

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_289() #21, !dbg !8080, !srcloc !8084
  unreachable, !dbg !8080

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !8083

do.end:                                           ; preds = %if.end
  br label %if.end14, !dbg !8083

if.else:                                          ; preds = %entry
  br label %do.body2, !dbg !8085

do.body2:                                         ; preds = %if.else
  %3 = load i32, ptr %fbit.addr, align 4, !dbg !8086
  %cmp3 = icmp uge i32 %3, 64, !dbg !8086
  %lnot = xor i1 %cmp3, true, !dbg !8086
  %lnot4 = xor i1 %lnot, true, !dbg !8086
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !8086
  %conv = sext i32 %lnot.ext to i64, !dbg !8086
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !8086
  %tobool = icmp ne i64 %expval, 0, !dbg !8086
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !8089

if.then5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !8086

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !8090

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !8092

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !8090

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 143, i32 0, i64 12) #16, !dbg !8094, !srcloc !8096
  br label %do.end10, !dbg !8094

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !8090

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !8090

if.end12:                                         ; preds = %do.end11, %do.body2
  br label %do.end13, !dbg !8089

do.end13:                                         ; preds = %if.end12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end
  %4 = load ptr, ptr %vdev.addr, align 8, !dbg !8097
  %features = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11, !dbg !8098
  %5 = load i64, ptr %features, align 8, !dbg !8098
  %6 = load i32, ptr %fbit.addr, align 4, !dbg !8099
  %sh_prom = zext i32 %6 to i64, !dbg !8099
  %shl = shl i64 1, %sh_prom, !dbg !8099
  %and = and i64 %5, %shl, !dbg !8100
  %tobool15 = icmp ne i64 %and, 0, !dbg !8097
  ret i1 %tobool15, !dbg !8101
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !8102 dso_local void @__compiletime_assert_289() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !8103 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !8108, metadata !DIExpression()), !dbg !8109
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !8110, !range !7120, !noundef !729
  %tobool = trunc i8 %0 to i1, !dbg !8110
  %lnot = xor i1 %tobool, true, !dbg !8110
  %lnot1 = xor i1 %lnot, true, !dbg !8110
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !8110
  %conv = sext i32 %lnot.ext to i64, !dbg !8110
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !8110
  %tobool2 = icmp ne i64 %expval, 0, !dbg !8110
  ret i1 %tobool2, !dbg !8111
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !8112 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !8114, metadata !DIExpression()), !dbg !8116
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !8115, metadata !DIExpression()), !dbg !8117
  %0 = load i64, ptr %size.addr, align 8, !dbg !8118
  %1 = load i32, ptr %flags.addr, align 4, !dbg !8119
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #18, !dbg !8120
  ret ptr %call, !dbg !8121
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !8122 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_page(ptr noundef %sg) #4 align 16 !dbg !8125 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !8129, metadata !DIExpression()), !dbg !8130
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !8131
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !8132
  %1 = load i64, ptr %page_link, align 8, !dbg !8132
  %and = and i64 %1, -4, !dbg !8133
  %2 = inttoptr i64 %and to ptr, !dbg !8134
  ret ptr %2, !dbg !8135
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: fbit >= 64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6715, !6716, !6717, !6718, !6719, !6720, !6721, !6722}
!llvm.ident = !{!6723}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_virglhack", scope: !2, file: !3, line: 32, type: !6714, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/virtio/.virtgpu_object.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/virtio/virtio-gpu\22 -D KBUILD_BASENAME=\22virtgpu_object\22 -D KBUILD_MODNAME=\22virtio_gpu\22 -D __KBUILD_MODNAME=kmod_virtio_gpu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/virtio/virtgpu_object.ll drivers/gpu/drm/virtio/virtgpu_object.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !338, globals: !6439, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/virtio/virtgpu_object.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c4ea6df02bc2fcc16b23775a6d3a00d")
!4 = !{!5, !13, !18, !23, !29, !37, !53, !60, !68, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !154, !197, !206, !212, !217, !225, !229, !245, !265, !271, !277, !284, !294, !299, !306, !311, !316, !323, !328}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !24, line: 16, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "TT_NONE", value: 0)
!27 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!28 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !30, line: 68, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !54, line: 51, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!57 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!58 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!59 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !61, line: 9, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!62 = !{!63, !64, !65, !66, !67}
!63 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!64 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!65 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!66 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!67 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !142, line: 61, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!145 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !147, line: 80, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed9f6851df8ea62f4629791b091b99c")
!148 = !{!149, !150, !151, !152, !153}
!149 = !DIEnumerator(name: "DRM_AUTH", value: 1)
!150 = !DIEnumerator(name: "DRM_MASTER", value: 2)
!151 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4)
!152 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16)
!153 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !155, line: 91, baseType: !109, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!157 = !DIEnumerator(name: "MODE_OK", value: 0)
!158 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!159 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!160 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!161 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!162 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!163 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!164 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!165 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!166 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!167 = !DIEnumerator(name: "MODE_MEM", value: 10)
!168 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!169 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!170 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!171 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!172 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!173 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!174 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!175 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!176 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!177 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!178 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!179 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!180 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!181 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!182 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!183 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!184 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!185 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!186 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!187 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!188 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!189 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!190 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!191 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!192 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!193 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!194 = !DIEnumerator(name: "MODE_STALE", value: -3)
!195 = !DIEnumerator(name: "MODE_BAD", value: -2)
!196 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !198, line: 96, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!199 = !{!200, !201, !202, !203, !204, !205}
!200 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!201 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!202 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!203 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!204 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!205 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !207, line: 98, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!210 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!211 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !207, line: 63, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "connector_status_connected", value: 1)
!215 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!216 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !207, line: 137, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!220 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!221 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!222 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!223 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!224 = !DIEnumerator(name: "SubPixelNone", value: 5)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !207, line: 337, baseType: !7, size: 32, elements: !226)
!226 = !{!227, !228}
!227 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!228 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !230, line: 387, baseType: !7, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!232 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!233 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!234 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!235 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!236 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!237 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!238 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!239 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!240 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!241 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!242 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!243 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!244 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !207, line: 502, baseType: !7, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!247 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!248 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!249 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!250 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!251 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!252 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!253 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!254 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!255 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!256 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!257 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!258 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!259 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!260 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!261 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!262 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!263 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!264 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !207, line: 421, baseType: !7, size: 32, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!268 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!269 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!270 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !207, line: 50, baseType: !7, size: 32, elements: !272)
!272 = !{!273, !274, !275, !276}
!273 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!274 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!275 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!276 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !207, line: 363, baseType: !109, size: 32, elements: !278)
!278 = !{!279, !280, !281, !282, !283}
!279 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!280 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!281 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!282 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!283 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !207, line: 156, baseType: !7, size: 32, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293}
!286 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!287 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!288 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!289 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!290 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!291 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!292 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!293 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !295, line: 38, baseType: !7, size: 32, elements: !296)
!295 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!296 = !{!297, !298}
!297 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!298 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !300, line: 78, baseType: !7, size: 32, elements: !301)
!300 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!301 = !{!302, !303, !304, !305}
!302 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!303 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!304 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!305 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !300, line: 85, baseType: !7, size: 32, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!309 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!310 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !295, line: 563, baseType: !7, size: 32, elements: !312)
!312 = !{!313, !314, !315}
!313 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!314 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!315 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !317, line: 30, baseType: !7, size: 32, elements: !318)
!317 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!318 = !{!319, !320, !321, !322}
!319 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!320 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!321 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!322 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !324, line: 10, baseType: !7, size: 32, elements: !325)
!324 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!325 = !{!326, !327}
!326 = !DIEnumerator(name: "false", value: 0)
!327 = !DIEnumerator(name: "true", value: 1)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !329, line: 364, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!330 = !{!331, !332, !333, !334, !335, !336, !337}
!331 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!332 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!333 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!334 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!335 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!336 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!337 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!338 = !{!339, !953, !516, !4368, !6433, !6434, !6435, !4353, !6436, !494, !480, !6437, !599, !6438, !595, !5002, !2230}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !341)
!341 = !{!342, !343, !350, !355, !4044, !4070, !4071, !4072, !4073, !4077, !4080, !4081, !4082, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4149, !4153, !4171, !4188, !4189, !4190, !4191, !4200, !4223, !4224, !4227, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4241, !4242, !4328, !4336, !4337, !4338, !4340, !4344, !4345, !4349, !4350, !4351, !4352, !4354, !4355, !4356, !4363, !4364, !4365, !4367}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !6, line: 403, baseType: !5, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !340, file: !6, line: 406, baseType: !344, size: 128, offset: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !345, line: 190, size: 128, elements: !346)
!345 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !345, line: 191, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !344, file: !345, line: 191, baseType: !348, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !6, line: 409, baseType: !351, size: 448, offset: 192)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 448, elements: !353)
!352 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!353 = !{!354}
!354 = !DISubrange(count: 56)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !340, file: !6, line: 417, baseType: !356, size: 768, offset: 640)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !357)
!357 = !{!358, !4038, !4039, !4040, !4043}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !356, file: !6, line: 46, baseType: !359, size: 512)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !360, line: 64, size: 512, elements: !361)
!360 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!361 = !{!362, !365, !366, !368, !457, !3937, !4028, !4033, !4034, !4035, !4036, !4037}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !360, line: 65, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !359, file: !360, line: 66, baseType: !344, size: 128, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !359, file: !360, line: 67, baseType: !367, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !359, file: !360, line: 68, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !360, line: 168, size: 768, elements: !371)
!371 = !{!372, !373, !416, !417}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !370, file: !360, line: 169, baseType: !344, size: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !370, file: !360, line: 170, baseType: !374, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !375, line: 29, baseType: !376)
!375 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !375, line: 17, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !375, line: 18, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !375, line: 18, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !379, file: !375, line: 19, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !383, line: 14, size: 32, elements: !384)
!383 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !382, file: !383, line: 15, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !387, line: 44, baseType: !388)
!387 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !387, line: 14, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !387, line: 15, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !387, line: 15, size: 32, elements: !392)
!392 = !{!393, !398, !408}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !391, file: !387, line: 16, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !345, line: 174, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 172, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !395, file: !345, line: 173, baseType: !109, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !387, line: 24, baseType: !399, size: 16)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !387, line: 24, size: 16, elements: !400)
!400 = !{!401, !407}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !399, file: !387, line: 25, baseType: !402, size: 8)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !403, line: 17, baseType: !404)
!403 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !405, line: 21, baseType: !406)
!405 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!406 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !399, file: !387, line: 26, baseType: !402, size: 8, offset: 8)
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !387, line: 28, baseType: !409, size: 32)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !387, line: 28, size: 32, elements: !410)
!410 = !{!411, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !409, file: !387, line: 29, baseType: !412, size: 16)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !403, line: 19, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !405, line: 24, baseType: !414)
!414 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !409, file: !387, line: 30, baseType: !412, size: 16, offset: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !370, file: !360, line: 171, baseType: !359, size: 512, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !370, file: !360, line: 172, baseType: !418, size: 64, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !360, line: 133, size: 192, elements: !421)
!421 = !{!422, !429, !434}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !420, file: !360, line: 134, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!109, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !360, line: 135, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!363, !427}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !420, file: !360, line: 136, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!109, !427, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !360, line: 125, size: 20736, elements: !441)
!441 = !{!442, !447, !451, !452, !456}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !440, file: !360, line: 126, baseType: !443, size: 192)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 192, elements: !445)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!445 = !{!446}
!446 = !DISubrange(count: 3)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !440, file: !360, line: 127, baseType: !448, size: 4096, offset: 192)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 4096, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !440, file: !360, line: 128, baseType: !109, size: 32, offset: 4288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !440, file: !360, line: 129, baseType: !453, size: 16384, offset: 4320)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 16384, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 2048)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !440, file: !360, line: 130, baseType: !109, size: 32, offset: 20704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !359, file: !360, line: 69, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !360, line: 116, size: 384, elements: !461)
!461 = !{!462, !466, !495, !3899, !3927, !3931}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !460, file: !360, line: 117, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !367}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !460, file: !360, line: 118, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !470, line: 254, size: 128, elements: !471)
!470 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!471 = !{!472, !487}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !469, file: !470, line: 255, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !367, !481, !444}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !345, line: 66, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !478, line: 73, baseType: !479)
!478 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !478, line: 15, baseType: !480)
!480 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !470, line: 30, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !470, line: 31, baseType: !363, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !482, file: !470, line: 32, baseType: !486, size: 16, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !345, line: 24, baseType: !414)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !469, file: !470, line: 256, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!476, !367, !481, !363, !491}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !345, line: 61, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !478, line: 72, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !478, line: 16, baseType: !494)
!494 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !460, file: !360, line: 119, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !470, line: 84, size: 320, elements: !500)
!500 = !{!501, !502, !506, !3895, !3897}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !470, line: 85, baseType: !363, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !499, file: !470, line: 86, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!486, !367, !481, !109}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !499, file: !470, line: 88, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!486, !367, !510, !109}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !470, line: 175, size: 512, elements: !512)
!512 = !{!513, !514, !515, !517, !3886, !3890, !3891}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !511, file: !470, line: 176, baseType: !482, size: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !511, file: !470, line: 177, baseType: !491, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !511, file: !470, line: 178, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !511, file: !470, line: 179, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !523)
!523 = !{!524, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3880, !3881, !3882, !3883, !3884, !3885}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !522, file: !14, line: 473, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !527)
!527 = !{!528, !529, !530, !538, !539, !546, !547, !550, !551, !3659, !3660, !3661, !3662, !3663, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3703, !3706, !3707, !3708, !3717, !3718, !3719, !3720}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !526, file: !14, line: 642, baseType: !486, size: 16)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !526, file: !14, line: 643, baseType: !414, size: 16, offset: 16)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !526, file: !14, line: 644, baseType: !531, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !532, line: 23, baseType: !533)
!532 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 21, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !533, file: !532, line: 22, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !345, line: 37, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !478, line: 49, baseType: !7)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !526, file: !14, line: 645, baseType: !344, size: 128, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !526, file: !14, line: 646, baseType: !540, size: 32, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !532, line: 28, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 26, size: 32, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !541, file: !532, line: 27, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !345, line: 38, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !478, line: 50, baseType: !7)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !526, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !526, file: !14, line: 650, baseType: !548, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !526, file: !14, line: 651, baseType: !548, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !526, file: !14, line: 654, baseType: !552, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !555)
!555 = !{!556, !3490, !3503, !3507, !3511, !3515, !3519, !3523, !3527, !3531, !3535, !3536, !3540, !3544, !3581, !3610, !3614, !3620, !3624, !3628, !3632, !3636, !3640, !3646, !3650}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !554, file: !14, line: 1967, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !525, !560, !7}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !562, line: 82, size: 1536, elements: !563)
!562 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!563 = !{!564, !565, !575, !583, !584, !604, !605, !609, !622, !3473, !3474, !3475, !3476, !3482, !3483, !3484}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !561, file: !562, line: 84, baseType: !7, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !561, file: !562, line: 85, baseType: !566, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !567, line: 275, baseType: !568)
!567 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !567, line: 275, size: 32, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !568, file: !567, line: 275, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !567, line: 69, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !567, line: 64, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !572, file: !567, line: 65, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !561, file: !562, line: 86, baseType: !576, size: 128, offset: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !577, line: 38, size: 128, elements: !578)
!577 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !577, line: 39, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !576, file: !577, line: 39, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !561, file: !562, line: 87, baseType: !560, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !561, file: !562, line: 88, baseType: !585, size: 128, offset: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !562, line: 49, size: 128, elements: !586)
!586 = !{!587, !601}
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !562, line: 50, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !562, line: 50, size: 64, elements: !589)
!589 = !{!590, !597}
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !562, line: 51, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !562, line: 51, size: 64, elements: !592)
!592 = !{!593, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !591, file: !562, line: 52, baseType: !594, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !403, line: 21, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !405, line: 27, baseType: !7)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !591, file: !562, line: 52, baseType: !594, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !588, file: !562, line: 54, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !403, line: 23, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !405, line: 31, baseType: !600)
!600 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !562, line: 56, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !561, file: !562, line: 89, baseType: !525, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !561, file: !562, line: 91, baseType: !606, size: 256, offset: 448)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 256, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !561, file: !562, line: 94, baseType: !610, size: 64, offset: 704)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !611, line: 25, size: 64, elements: !612)
!611 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !611, line: 26, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !611, line: 26, size: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !614, file: !611, line: 28, baseType: !599, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !611, line: 30, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !614, file: !611, line: 30, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !618, file: !611, line: 31, baseType: !374, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !618, file: !611, line: 32, baseType: !109, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !561, file: !562, line: 95, baseType: !623, size: 64, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !562, line: 128, size: 1024, align: 512, elements: !626)
!626 = !{!627, !631, !632, !639, !645, !649, !653, !657, !658, !662, !666, !3463, !3467}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !625, file: !562, line: 129, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!109, !560, !7}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !625, file: !562, line: 130, baseType: !628, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !625, file: !562, line: 131, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!109, !636, !638}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !625, file: !562, line: 132, baseType: !640, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!109, !636, !7, !363, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !625, file: !562, line: 134, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!109, !636}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !625, file: !562, line: 135, baseType: !650, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!109, !560}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !625, file: !562, line: 136, baseType: !654, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !560}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !625, file: !562, line: 137, baseType: !654, size: 64, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !625, file: !562, line: 138, baseType: !659, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !560, !525}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !625, file: !562, line: 139, baseType: !663, size: 64, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!444, !560, !444, !109}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !625, file: !562, line: 140, baseType: !667, size: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!670, !3462}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !672, line: 70, size: 256, elements: !673)
!672 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!673 = !{!674, !675, !3458, !3459}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !671, file: !672, line: 71, baseType: !560, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !671, file: !672, line: 72, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !678)
!678 = !{!679, !680, !683, !684, !685, !689, !738, !3160, !3200, !3285, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3302, !3306, !3307, !3310, !3313, !3316, !3319, !3320, !3321, !3362, !3389, !3390, !3391, !3392, !3393, !3394, !3397, !3399, !3406, !3407, !3408, !3409, !3410, !3425, !3426, !3427, !3428, !3429, !3432, !3433, !3434, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !677, file: !14, line: 1191, baseType: !344, size: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !677, file: !14, line: 1192, baseType: !681, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !345, line: 21, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !345, line: 18, baseType: !594)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !677, file: !14, line: 1193, baseType: !406, size: 8, offset: 160)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !677, file: !14, line: 1194, baseType: !494, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !677, file: !14, line: 1195, baseType: !686, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !345, line: 52, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !478, line: 88, baseType: !688)
!688 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !677, file: !14, line: 1196, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !692)
!692 = !{!693, !694, !695, !702, !706, !710, !714, !715, !716, !726, !730, !731, !732, !734, !735, !736, !737}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !691, file: !14, line: 2367, baseType: !363, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !691, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !691, file: !14, line: 2376, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!109, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !701, line: 32, flags: DIFlagFwdDecl)
!701 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !691, file: !14, line: 2377, baseType: !703, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !691, file: !14, line: 2378, baseType: !707, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!560, !690, !109, !363, !516}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !691, file: !14, line: 2380, baseType: !711, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !676}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !691, file: !14, line: 2381, baseType: !339, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !14, line: 2382, baseType: !690, size: 64, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !691, file: !14, line: 2383, baseType: !717, size: 64, offset: 512)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !345, line: 194, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !717, file: !345, line: 195, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !345, line: 198, size: 128, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !345, line: 199, baseType: !720, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !721, file: !345, line: 199, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !691, file: !14, line: 2385, baseType: !727, offset: 576)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !728, line: 206, elements: !729)
!728 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!729 = !{}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !691, file: !14, line: 2386, baseType: !727, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !691, file: !14, line: 2387, baseType: !727, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !691, file: !14, line: 2388, baseType: !733, offset: 576)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, elements: !445)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !691, file: !14, line: 2390, baseType: !727, offset: 576)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !691, file: !14, line: 2391, baseType: !727, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !691, file: !14, line: 2392, baseType: !727, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !691, file: !14, line: 2393, baseType: !727, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !677, file: !14, line: 1197, baseType: !739, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !742)
!742 = !{!743, !747, !751, !752, !756, !762, !766, !767, !768, !772, !776, !780, !781, !782, !788, !793, !794, !3085, !3086, !3087, !3088, !3092, !3096, !3143, !3158, !3159}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !741, file: !14, line: 2058, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!525, !676}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !741, file: !14, line: 2059, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !525}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !741, file: !14, line: 2060, baseType: !748, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !741, file: !14, line: 2062, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !525, !109}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !741, file: !14, line: 2063, baseType: !757, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!109, !525, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !741, file: !14, line: 2064, baseType: !763, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!109, !525}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !741, file: !14, line: 2065, baseType: !748, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !741, file: !14, line: 2066, baseType: !711, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !741, file: !14, line: 2067, baseType: !769, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!109, !676, !109}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !741, file: !14, line: 2068, baseType: !773, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!109, !676, !13}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !741, file: !14, line: 2069, baseType: !777, size: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!109, !676}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !741, file: !14, line: 2070, baseType: !773, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !741, file: !14, line: 2071, baseType: !777, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !741, file: !14, line: 2072, baseType: !783, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!109, !560, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !741, file: !14, line: 2073, baseType: !789, size: 64, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!109, !676, !792, !444}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !741, file: !14, line: 2074, baseType: !711, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !741, file: !14, line: 2076, baseType: !795, size: 64, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!109, !798, !560}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !800, line: 17, size: 960, elements: !801)
!800 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !830, !852, !853, !3084}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !799, file: !800, line: 18, baseType: !444, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !799, file: !800, line: 19, baseType: !491, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !799, file: !800, line: 20, baseType: !491, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !800, line: 21, baseType: !491, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !799, file: !800, line: 22, baseType: !491, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !799, file: !800, line: 23, baseType: !686, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !799, file: !800, line: 24, baseType: !686, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !799, file: !800, line: 25, baseType: !810, size: 256, offset: 448)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !811, line: 66, size: 256, elements: !812)
!811 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!812 = !{!813, !822, !824, !829}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !810, file: !811, line: 67, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !815, line: 13, baseType: !816)
!815 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !345, line: 181, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 179, size: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !817, file: !345, line: 180, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !403, line: 22, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !405, line: 30, baseType: !688)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !810, file: !811, line: 68, baseType: !823, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !383, line: 23, baseType: !382)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !810, file: !811, line: 70, baseType: !825, size: 32, offset: 96)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !826, line: 15, size: 32, elements: !827)
!826 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !825, file: !826, line: 20, baseType: !394, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !810, file: !811, line: 72, baseType: !344, size: 128, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !799, file: !800, line: 26, baseType: !831, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !800, line: 32, size: 256, elements: !834)
!834 = !{!835, !840, !844, !848}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !833, file: !800, line: 33, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!516, !798, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !833, file: !800, line: 34, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !798, !516}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !800, line: 35, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!516, !798, !516, !839}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !833, file: !800, line: 36, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!109, !798, !516}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !799, file: !800, line: 27, baseType: !109, size: 32, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !799, file: !800, line: 28, baseType: !854, size: 64, offset: 832)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !857)
!857 = !{!858, !877, !878, !880, !881, !882, !883, !884, !2898, !2899, !2908, !2914, !2915, !3074, !3075, !3076, !3077, !3079, !3080, !3083}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !14, line: 995, baseType: !859, size: 128)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !14, line: 995, size: 128, elements: !860)
!860 = !{!861, !867, !876}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !859, file: !14, line: 996, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !863, line: 60, size: 64, elements: !864)
!863 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !862, file: !863, line: 61, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !859, file: !14, line: 997, baseType: !868, size: 128, align: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !345, line: 232, size: 128, align: 64, elements: !869)
!869 = !{!870, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !345, line: 233, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !868, file: !345, line: 234, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !871}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !859, file: !14, line: 998, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !856, file: !14, line: 1005, baseType: !374, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !856, file: !14, line: 1006, baseType: !879, size: 32, offset: 160)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !345, line: 156, baseType: !7)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !856, file: !14, line: 1007, baseType: !814, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !856, file: !14, line: 1008, baseType: !810, size: 256, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !856, file: !14, line: 1009, baseType: !686, size: 64, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !856, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !856, file: !14, line: 1011, baseType: !885, size: 256, offset: 640)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !886)
!886 = !{!887, !908, !2894, !2895, !2896, !2897}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !885, file: !14, line: 949, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !889, line: 34, baseType: !890)
!889 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !889, line: 25, size: 64, elements: !891)
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !890, file: !889, line: 26, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !894, line: 27, baseType: !895)
!894 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !894, line: 13, size: 64, elements: !896)
!896 = !{!897, !907}
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !894, line: 14, baseType: !898, size: 32)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !894, line: 14, size: 32, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !898, file: !894, line: 15, baseType: !394, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !894, line: 16, baseType: !902, size: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !894, line: 16, size: 32, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !902, file: !894, line: 18, baseType: !402, size: 8)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !902, file: !894, line: 19, baseType: !906, size: 24, offset: 8)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 24, elements: !445)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !895, file: !894, line: 26, baseType: !386, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !885, file: !14, line: 950, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !911)
!911 = !{!912, !918, !919, !920, !924, !925, !932, !933}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !910, file: !61, line: 61, baseType: !913, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !914, line: 113, baseType: !915)
!914 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !914, line: 111, size: 32, elements: !916)
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !915, file: !914, line: 112, baseType: !394, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !910, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !910, file: !61, line: 63, baseType: !374, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !910, file: !61, line: 65, baseType: !921, size: 256, offset: 128)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 4)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !910, file: !61, line: 66, baseType: !717, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !910, file: !61, line: 68, baseType: !926, size: 192, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !927, line: 41, baseType: !928)
!927 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !927, line: 37, size: 192, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !927, line: 38, baseType: !374, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !928, file: !927, line: 39, baseType: !344, size: 128, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !910, file: !61, line: 69, baseType: !868, size: 128, align: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !910, file: !61, line: 70, baseType: !934, offset: 768)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, elements: !1444)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !935, file: !61, line: 55, baseType: !109, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !935, file: !61, line: 56, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !941, line: 26, size: 1152, elements: !942)
!941 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!942 = !{!943, !957, !958, !959, !2870, !2874, !2875, !2876, !2879, !2880, !2881, !2882, !2893}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !940, file: !941, line: 27, baseType: !944, size: 192)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !945, line: 19, size: 192, elements: !946)
!945 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!946 = !{!947, !955, !956}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !944, file: !945, line: 20, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !949, line: 296, size: 128, elements: !950)
!949 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!950 = !{!951, !952, !954}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !948, file: !949, line: 297, baseType: !374, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !948, file: !949, line: 299, baseType: !953, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !345, line: 154, baseType: !7)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !948, file: !949, line: 300, baseType: !516, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !944, file: !945, line: 21, baseType: !7, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !944, file: !945, line: 22, baseType: !7, size: 32, offset: 160)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !940, file: !941, line: 28, baseType: !868, size: 128, align: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !940, file: !941, line: 29, baseType: !7, size: 32, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !940, file: !941, line: 30, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !962, line: 746, size: 58368, elements: !963)
!962 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!963 = !{!964, !972, !973, !974, !975, !976, !977, !978, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1051, !1062, !1157, !1161, !1164, !1195, !1196, !1197, !1198, !1209, !1211, !1212, !1213, !1214, !1215, !1216, !1227, !1228, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1245, !1246, !1253, !1254, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1525, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1540, !1541, !1542, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1584, !1590, !1774, !1775, !1776, !1777, !1781, !1784, !1791, !1796, !1799, !1802, !1805, !1831, !1971, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2011, !2012, !2013, !2022, !2030, !2031, !2032, !2033, !2034, !2039, !2040, !2041, !2044, !2045, !2048, !2051, !2054, !2062, !2065, !2066, !2152, !2153, !2154, !2155, !2156, !2162, !2163, !2164, !2165, !2168, !2169, !2172, !2175, !2176, !2179, !2180, !2181, !2184, !2185, !2186, !2189, !2190, !2191, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2223, !2226, !2515, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2527, !2599, !2601, !2602, !2603, !2604, !2605, !2617, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2647, !2648, !2649}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !961, file: !962, line: 752, baseType: !965, size: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !966, line: 56, size: 192, elements: !967)
!966 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!967 = !{!968, !969, !970, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !965, file: !966, line: 57, baseType: !494, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !965, file: !966, line: 58, baseType: !494, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !965, file: !966, line: 59, baseType: !594, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !965, file: !966, line: 61, baseType: !594, size: 32, offset: 160)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !961, file: !962, line: 754, baseType: !7, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !961, file: !962, line: 767, baseType: !516, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !961, file: !962, line: 768, baseType: !913, size: 32, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !962, line: 770, baseType: !7, size: 32, offset: 352)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !961, file: !962, line: 771, baseType: !7, size: 32, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !961, file: !962, line: 774, baseType: !109, size: 32, offset: 416)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !961, file: !962, line: 775, baseType: !979, size: 128, offset: 448)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !980, line: 58, size: 128, elements: !981)
!980 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!981 = !{!982, !983, !988, !989}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !979, file: !980, line: 59, baseType: !862, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !980, line: 60, baseType: !984, size: 32, offset: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !980, line: 60, size: 32, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !984, file: !980, line: 61, baseType: !7, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !984, file: !980, line: 62, baseType: !394, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !979, file: !980, line: 65, baseType: !412, size: 16, offset: 96)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !979, file: !980, line: 65, baseType: !412, size: 16, offset: 112)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !961, file: !962, line: 776, baseType: !7, size: 32, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !961, file: !962, line: 777, baseType: !494, size: 64, offset: 640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !961, file: !962, line: 778, baseType: !960, size: 64, offset: 704)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !961, file: !962, line: 787, baseType: !109, size: 32, offset: 768)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !961, file: !962, line: 788, baseType: !109, size: 32, offset: 800)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !961, file: !962, line: 790, baseType: !109, size: 32, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !961, file: !962, line: 792, baseType: !109, size: 32, offset: 864)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !961, file: !962, line: 793, baseType: !109, size: 32, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !961, file: !962, line: 794, baseType: !109, size: 32, offset: 928)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !961, file: !962, line: 795, baseType: !7, size: 32, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !961, file: !962, line: 797, baseType: !1001, size: 2048, offset: 1024)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !962, line: 551, size: 2048, elements: !1002)
!1002 = !{!1003, !1008, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1030, !1033, !1034, !1035}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1001, file: !962, line: 553, baseType: !1004, size: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !962, line: 411, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1004, file: !962, line: 412, baseType: !494, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1004, file: !962, line: 413, baseType: !594, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1001, file: !962, line: 554, baseType: !1009, size: 192, align: 64, offset: 128)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1010, line: 5, size: 192, align: 64, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1011 = !{!1012, !1013, !1015}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1009, file: !1010, line: 6, baseType: !494, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1009, file: !1010, line: 7, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1009, file: !1010, line: 8, baseType: !1014, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1001, file: !962, line: 555, baseType: !598, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1001, file: !962, line: 556, baseType: !598, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1001, file: !962, line: 558, baseType: !344, size: 128, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1001, file: !962, line: 559, baseType: !7, size: 32, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1001, file: !962, line: 561, baseType: !598, size: 64, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1001, file: !962, line: 562, baseType: !598, size: 64, offset: 704)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1001, file: !962, line: 563, baseType: !598, size: 64, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1001, file: !962, line: 564, baseType: !598, size: 64, offset: 832)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1001, file: !962, line: 565, baseType: !820, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1001, file: !962, line: 566, baseType: !598, size: 64, offset: 960)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1001, file: !962, line: 568, baseType: !598, size: 64, offset: 1024)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1001, file: !962, line: 571, baseType: !109, size: 32, offset: 1088)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1001, file: !962, line: 572, baseType: !1029, size: 64, offset: 1152)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1001, file: !962, line: 574, baseType: !1031, size: 64, offset: 1216)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !962, line: 49, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1001, file: !962, line: 576, baseType: !1031, size: 64, offset: 1280)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1001, file: !962, line: 578, baseType: !494, size: 64, offset: 1344)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1001, file: !962, line: 588, baseType: !1036, size: 512, align: 512, offset: 1536)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !962, line: 497, size: 512, align: 512, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1036, file: !962, line: 498, baseType: !598, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1036, file: !962, line: 499, baseType: !598, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1036, file: !962, line: 500, baseType: !598, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1036, file: !962, line: 501, baseType: !594, size: 32, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1036, file: !962, line: 502, baseType: !594, size: 32, offset: 224)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1036, file: !962, line: 503, baseType: !494, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1036, file: !962, line: 504, baseType: !494, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1036, file: !962, line: 505, baseType: !494, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1036, file: !962, line: 506, baseType: !1047, size: 64, align: 64, offset: 448)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !962, line: 445, size: 64, align: 64, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1047, file: !962, line: 446, baseType: !7, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1047, file: !962, line: 447, baseType: !7, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !961, file: !962, line: 798, baseType: !1052, size: 384, offset: 3072)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !962, line: 592, size: 384, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1052, file: !962, line: 593, baseType: !344, size: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1052, file: !962, line: 594, baseType: !494, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1052, file: !962, line: 595, baseType: !494, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1052, file: !962, line: 596, baseType: !7, size: 32, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1052, file: !962, line: 597, baseType: !414, size: 16, offset: 288)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1052, file: !962, line: 598, baseType: !414, size: 16, offset: 304)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1052, file: !962, line: 600, baseType: !1061, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !961, file: !962, line: 799, baseType: !1063, size: 1792, offset: 3456)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !962, line: 610, size: 1792, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1154, !1155}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1063, file: !962, line: 611, baseType: !1009, size: 192, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1063, file: !962, line: 618, baseType: !598, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1063, file: !962, line: 619, baseType: !598, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1063, file: !962, line: 620, baseType: !598, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1063, file: !962, line: 621, baseType: !598, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1063, file: !962, line: 622, baseType: !598, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1063, file: !962, line: 629, baseType: !820, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1063, file: !962, line: 630, baseType: !598, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !962, line: 631, baseType: !7, size: 32, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1063, file: !962, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1063, file: !962, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1063, file: !962, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1063, file: !962, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1063, file: !962, line: 662, baseType: !1079, size: 512, offset: 704)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1080)
!1080 = !{!1081, !1089, !1090, !1095, !1150, !1151, !1152, !1153}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1079, file: !19, line: 119, baseType: !1082, size: 256)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1083, line: 9, size: 256, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1082, file: !1083, line: 10, baseType: !1009, size: 192, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1082, file: !1083, line: 11, baseType: !1087, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1088, line: 29, baseType: !820)
!1088 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1079, file: !19, line: 120, baseType: !1087, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1079, file: !19, line: 121, baseType: !1091, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!18, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1079, file: !19, line: 122, baseType: !1096, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1098)
!1098 = !{!1099, !1124, !1125, !1128, !1133, !1134, !1145, !1149}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1097, file: !19, line: 160, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1101, file: !19, line: 216, baseType: !823, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1101, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1101, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1101, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1101, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1101, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1101, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1101, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1101, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1101, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1101, file: !19, line: 227, baseType: !414, size: 16, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1101, file: !19, line: 228, baseType: !414, size: 16, offset: 208)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1101, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1101, file: !19, line: 235, baseType: !1087, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1101, file: !19, line: 236, baseType: !1094, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1101, file: !19, line: 237, baseType: !1087, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1101, file: !19, line: 238, baseType: !1094, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1101, file: !19, line: 239, baseType: !1121, size: 4096, align: 512, offset: 512)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 4096, align: 512, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 8)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1097, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1097, file: !19, line: 162, baseType: !1126, size: 32, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !345, line: 32, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !478, line: 96, baseType: !109)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1097, file: !19, line: 163, baseType: !1129, size: 32, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !567, line: 274, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !567, line: 274, size: 32, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1130, file: !567, line: 274, baseType: !571, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1097, file: !19, line: 164, baseType: !1094, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1097, file: !19, line: 165, baseType: !1135, size: 128, offset: 256)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1083, line: 14, size: 128, elements: !1136)
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1135, file: !1083, line: 15, baseType: !1138, size: 128)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1010, line: 26, size: 128, elements: !1139)
!1139 = !{!1140, !1144}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1138, file: !1010, line: 27, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1010, line: 12, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1141, file: !1010, line: 13, baseType: !1014, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1138, file: !1010, line: 28, baseType: !1014, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1097, file: !19, line: 166, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!1087}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1097, file: !19, line: 167, baseType: !1087, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1079, file: !19, line: 123, baseType: !402, size: 8, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1079, file: !19, line: 124, baseType: !402, size: 8, offset: 456)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1079, file: !19, line: 125, baseType: !402, size: 8, offset: 464)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1079, file: !19, line: 126, baseType: !402, size: 8, offset: 472)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1063, file: !962, line: 671, baseType: !1079, size: 512, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1063, file: !962, line: 679, baseType: !1156, size: 64, offset: 1728)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !961, file: !962, line: 800, baseType: !1158, size: 64, offset: 5248)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !962, line: 800, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !961, file: !962, line: 809, baseType: !1162, size: 64, offset: 5312)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !962, line: 70, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !961, file: !962, line: 825, baseType: !1165, size: 2048, align: 512, offset: 5632)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !962, line: 509, size: 2048, align: 512, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1165, file: !962, line: 511, baseType: !598, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1165, file: !962, line: 512, baseType: !598, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1165, file: !962, line: 513, baseType: !598, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1165, file: !962, line: 514, baseType: !598, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1165, file: !962, line: 515, baseType: !598, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1165, file: !962, line: 516, baseType: !598, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1165, file: !962, line: 518, baseType: !598, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1165, file: !962, line: 519, baseType: !598, size: 64, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1165, file: !962, line: 520, baseType: !820, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1165, file: !962, line: 522, baseType: !598, size: 64, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1165, file: !962, line: 523, baseType: !598, size: 64, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1165, file: !962, line: 524, baseType: !820, size: 64, offset: 704)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1165, file: !962, line: 526, baseType: !820, size: 64, offset: 768)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1165, file: !962, line: 527, baseType: !598, size: 64, offset: 832)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1165, file: !962, line: 529, baseType: !598, size: 64, offset: 896)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1165, file: !962, line: 530, baseType: !598, size: 64, offset: 960)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1165, file: !962, line: 531, baseType: !598, size: 64, offset: 1024)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1165, file: !962, line: 532, baseType: !598, size: 64, offset: 1088)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1165, file: !962, line: 533, baseType: !598, size: 64, offset: 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1165, file: !962, line: 535, baseType: !598, size: 64, offset: 1216)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1165, file: !962, line: 536, baseType: !598, size: 64, offset: 1280)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1165, file: !962, line: 537, baseType: !598, size: 64, offset: 1344)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1165, file: !962, line: 538, baseType: !598, size: 64, offset: 1408)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1165, file: !962, line: 539, baseType: !598, size: 64, offset: 1472)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1165, file: !962, line: 540, baseType: !598, size: 64, offset: 1536)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1165, file: !962, line: 541, baseType: !598, size: 64, offset: 1600)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1165, file: !962, line: 542, baseType: !598, size: 64, offset: 1664)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1165, file: !962, line: 543, baseType: !598, size: 64, offset: 1728)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !961, file: !962, line: 833, baseType: !7, size: 32, offset: 7680)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !961, file: !962, line: 836, baseType: !7, size: 32, offset: 7712)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !961, file: !962, line: 837, baseType: !109, size: 32, offset: 7744)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !961, file: !962, line: 838, baseType: !1199, size: 64, offset: 7808)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1202, line: 19, baseType: !1203)
!1202 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1202, line: 19, size: 64, elements: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1203, file: !1202, line: 19, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 64, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 1)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !961, file: !962, line: 839, baseType: !1210, size: 64, offset: 7872)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !961, file: !962, line: 840, baseType: !1201, size: 64, offset: 7936)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !961, file: !962, line: 841, baseType: !516, size: 64, offset: 8000)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !961, file: !962, line: 843, baseType: !414, size: 16, offset: 8064)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !961, file: !962, line: 845, baseType: !414, size: 16, offset: 8080)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !961, file: !962, line: 848, baseType: !109, size: 32, offset: 8096)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !961, file: !962, line: 849, baseType: !1217, size: 32, offset: 8128)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !962, line: 718, size: 32, elements: !1218)
!1218 = !{!1219, !1226}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1217, file: !962, line: 724, baseType: !1220, size: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !962, line: 719, size: 32, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1220, file: !962, line: 720, baseType: !402, size: 8)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1220, file: !962, line: 721, baseType: !402, size: 8, offset: 8)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1220, file: !962, line: 722, baseType: !402, size: 8, offset: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1220, file: !962, line: 723, baseType: !402, size: 8, offset: 24)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1217, file: !962, line: 725, baseType: !594, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !961, file: !962, line: 850, baseType: !344, size: 128, offset: 8192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !961, file: !962, line: 851, baseType: !1229, size: 64, offset: 8320)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !962, line: 60, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !961, file: !962, line: 855, baseType: !494, size: 64, offset: 8384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !961, file: !962, line: 856, baseType: !402, size: 8, offset: 8448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !961, file: !962, line: 857, baseType: !402, size: 8, offset: 8456)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !961, file: !962, line: 858, baseType: !109, size: 32, offset: 8480)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !961, file: !962, line: 859, baseType: !344, size: 128, offset: 8512)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !961, file: !962, line: 860, baseType: !109, size: 32, offset: 8640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !961, file: !962, line: 861, baseType: !344, size: 128, offset: 8704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !961, file: !962, line: 873, baseType: !1239, size: 256, offset: 8832)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !962, line: 376, size: 256, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1239, file: !962, line: 381, baseType: !494, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1239, file: !962, line: 384, baseType: !600, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1239, file: !962, line: 389, baseType: !600, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1239, file: !962, line: 392, baseType: !600, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !961, file: !962, line: 875, baseType: !344, size: 128, offset: 9088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !961, file: !962, line: 877, baseType: !1247, size: 320, offset: 9216)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1248, line: 86, size: 320, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1247, file: !1248, line: 87, baseType: !109, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1247, file: !1248, line: 88, baseType: !344, size: 128, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1247, file: !1248, line: 89, baseType: !344, size: 128, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !961, file: !962, line: 878, baseType: !1009, size: 192, align: 64, offset: 9536)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !961, file: !962, line: 881, baseType: !1255, size: 64, offset: 9728)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1257)
!1257 = !{!1258, !1442}
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !38, line: 734, baseType: !1259, size: 10240)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !38, line: 734, size: 10240, elements: !1260)
!1260 = !{!1261, !1265, !1278, !1283, !1284, !1285, !1286, !1287, !1288, !1297, !1298, !1299, !1305, !1306, !1307, !1308, !1309, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1346, !1358, !1361, !1409, !1410, !1411, !1414, !1417, !1418, !1421, !1422, !1423, !1429, !1430}
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !38, line: 739, baseType: !1262, size: 512, align: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1259, file: !38, line: 739, size: 512, align: 512, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1262, file: !38, line: 747, baseType: !394, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1259, file: !38, line: 750, baseType: !1266, size: 128, offset: 512)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1267, line: 218, size: 128, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1268 = !{!1269, !1276, !1277}
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 219, baseType: !1270, size: 32)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 219, size: 32, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1270, file: !1267, line: 220, baseType: !374, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1270, file: !1267, line: 221, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1267, line: 197, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 197, elements: !729)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1266, file: !1267, line: 223, baseType: !7, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1266, file: !1267, line: 224, baseType: !516, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1259, file: !38, line: 752, baseType: !1279, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!494, !1282, !494, !494, !494, !494}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1259, file: !38, line: 756, baseType: !494, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1259, file: !38, line: 757, baseType: !494, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1259, file: !38, line: 760, baseType: !494, size: 64, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1259, file: !38, line: 761, baseType: !494, size: 64, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1259, file: !38, line: 763, baseType: !494, size: 64, offset: 960)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1259, file: !38, line: 764, baseType: !1289, size: 64, offset: 1024)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1291, line: 299, baseType: !1292)
!1291 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 299, size: 64, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1292, file: !1291, line: 299, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1296, line: 18, baseType: !494)
!1296 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1259, file: !38, line: 773, baseType: !394, size: 32, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1259, file: !38, line: 785, baseType: !394, size: 32, offset: 1120)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1259, file: !38, line: 795, baseType: !1300, size: 64, offset: 1152)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1301, file: !38, line: 727, baseType: !598, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1301, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1259, file: !38, line: 801, baseType: !494, size: 64, offset: 1216)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1259, file: !38, line: 804, baseType: !814, size: 64, offset: 1280)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1259, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1259, file: !38, line: 808, baseType: !374, size: 32, offset: 1376)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1259, file: !38, line: 823, baseType: !1310, size: 320, offset: 1408)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1311, line: 48, size: 320, elements: !1312)
!1311 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1312 = !{!1313, !1314, !1315, !1316, !1317}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1310, file: !1311, line: 49, baseType: !814, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1310, file: !1311, line: 55, baseType: !814, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1310, file: !1311, line: 57, baseType: !825, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1310, file: !1311, line: 59, baseType: !823, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1310, file: !1311, line: 60, baseType: !344, size: 128, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1259, file: !38, line: 825, baseType: !344, size: 128, offset: 1728)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1259, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1259, file: !38, line: 849, baseType: !494, size: 64, offset: 1920)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1259, file: !38, line: 850, baseType: !494, size: 64, offset: 1984)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1259, file: !38, line: 852, baseType: !494, size: 64, offset: 2048)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1259, file: !38, line: 853, baseType: !494, size: 64, offset: 2112)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1259, file: !38, line: 854, baseType: !816, size: 64, offset: 2176)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1259, file: !38, line: 855, baseType: !494, size: 64, offset: 2240)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1259, file: !38, line: 856, baseType: !494, size: 64, offset: 2304)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1259, file: !38, line: 857, baseType: !494, size: 64, offset: 2368)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1259, file: !38, line: 858, baseType: !494, size: 64, offset: 2432)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1259, file: !38, line: 865, baseType: !571, size: 32, offset: 2496)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1259, file: !38, line: 867, baseType: !374, size: 32, offset: 2528)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1259, file: !38, line: 869, baseType: !494, size: 64, offset: 2560)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1259, file: !38, line: 869, baseType: !494, size: 64, offset: 2624)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1259, file: !38, line: 869, baseType: !494, size: 64, offset: 2688)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1259, file: !38, line: 869, baseType: !494, size: 64, offset: 2752)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1259, file: !38, line: 870, baseType: !494, size: 64, offset: 2816)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1259, file: !38, line: 870, baseType: !494, size: 64, offset: 2880)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1259, file: !38, line: 870, baseType: !494, size: 64, offset: 2944)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1259, file: !38, line: 871, baseType: !494, size: 64, offset: 3008)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1259, file: !38, line: 871, baseType: !494, size: 64, offset: 3072)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1259, file: !38, line: 871, baseType: !494, size: 64, offset: 3136)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1259, file: !38, line: 871, baseType: !494, size: 64, offset: 3200)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1259, file: !38, line: 873, baseType: !1343, size: 3328, offset: 3264)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 3328, elements: !1344)
!1344 = !{!1345}
!1345 = !DISubrange(count: 52)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1259, file: !38, line: 875, baseType: !1347, size: 1280, offset: 6592)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 1280, elements: !922)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1349, line: 22, size: 320, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !1349, line: 23, baseType: !823, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1348, file: !1349, line: 24, baseType: !820, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1348, file: !1349, line: 26, baseType: !344, size: 128, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1348, file: !1349, line: 28, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !403, line: 20, baseType: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !405, line: 26, baseType: !109)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1259, file: !38, line: 877, baseType: !1359, size: 64, offset: 7872)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1259, file: !38, line: 880, baseType: !1362, size: 1088, offset: 7936)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1363, line: 72, baseType: !1364)
!1363 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 23, size: 1088, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1373, !1374, !1375, !1376, !1403, !1404, !1405}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1364, file: !1363, line: 28, baseType: !598, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1364, file: !1363, line: 38, baseType: !816, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1364, file: !1363, line: 40, baseType: !494, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1364, file: !1363, line: 43, baseType: !1310, size: 320, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1364, file: !1363, line: 44, baseType: !1371, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1363, line: 44, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !1363, line: 48, baseType: !494, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1364, file: !1363, line: 59, baseType: !810, size: 256, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1364, file: !1363, line: 60, baseType: !516, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1364, file: !1363, line: 61, baseType: !1377, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1380, line: 13, size: 1216, elements: !1381)
!1380 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1379, file: !1380, line: 14, baseType: !516, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1379, file: !1380, line: 15, baseType: !494, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1379, file: !1380, line: 17, baseType: !494, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1379, file: !1380, line: 17, baseType: !494, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1379, file: !1380, line: 18, baseType: !494, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1379, file: !1380, line: 18, baseType: !494, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1379, file: !1380, line: 19, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1379, file: !1380, line: 21, baseType: !480, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1379, file: !1380, line: 23, baseType: !480, size: 64, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1379, file: !1380, line: 24, baseType: !480, size: 64, offset: 576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1379, file: !1380, line: 25, baseType: !480, size: 64, offset: 640)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1379, file: !1380, line: 26, baseType: !480, size: 64, offset: 704)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1379, file: !1380, line: 27, baseType: !480, size: 64, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1379, file: !1380, line: 28, baseType: !480, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1379, file: !1380, line: 29, baseType: !480, size: 64, offset: 896)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1379, file: !1380, line: 30, baseType: !480, size: 64, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1379, file: !1380, line: 31, baseType: !480, size: 64, offset: 1024)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1379, file: !1380, line: 32, baseType: !480, size: 64, offset: 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1379, file: !1380, line: 33, baseType: !480, size: 64, offset: 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1364, file: !1363, line: 63, baseType: !394, size: 32, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1364, file: !1363, line: 69, baseType: !412, size: 16, offset: 1056)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1364, file: !1363, line: 70, baseType: !1406, size: 16, offset: 1072)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !403, line: 18, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !405, line: 23, baseType: !1408)
!1408 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !38, line: 882, baseType: !494, size: 64, offset: 9024)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1259, file: !38, line: 885, baseType: !374, size: 32, offset: 9088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1259, file: !38, line: 886, baseType: !1412, size: 64, offset: 9152)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1259, file: !38, line: 901, baseType: !1415, size: 64, offset: 9216)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !532, line: 18, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1259, file: !38, line: 904, baseType: !1282, size: 64, offset: 9280)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1259, file: !38, line: 906, baseType: !1419, size: 64, offset: 9344)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1259, file: !38, line: 930, baseType: !394, size: 32, offset: 9408)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1259, file: !38, line: 933, baseType: !394, size: 32, offset: 9440)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1259, file: !38, line: 935, baseType: !1424, size: 64, offset: 9472)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !54, line: 103, size: 64, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1424, file: !54, line: 104, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !54, line: 101, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1259, file: !38, line: 940, baseType: !814, size: 64, offset: 9536)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1259, file: !38, line: 942, baseType: !1431, size: 256, offset: 9600)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1432, line: 98, size: 256, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1431, file: !1432, line: 99, baseType: !814, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1431, file: !1432, line: 100, baseType: !344, size: 128, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1431, file: !1432, line: 101, baseType: !1437, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1432, line: 21, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1256, file: !38, line: 986, baseType: !1443, offset: 10240)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: -1)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !961, file: !962, line: 882, baseType: !1255, size: 64, offset: 9792)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !961, file: !962, line: 884, baseType: !109, size: 32, offset: 9856)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !961, file: !962, line: 885, baseType: !109, size: 32, offset: 9888)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !961, file: !962, line: 886, baseType: !109, size: 32, offset: 9920)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !961, file: !962, line: 888, baseType: !109, size: 32, offset: 9952)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !961, file: !962, line: 890, baseType: !494, size: 64, offset: 9984)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !961, file: !962, line: 893, baseType: !7, size: 32, offset: 10048)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !961, file: !962, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !961, file: !962, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !961, file: !962, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !961, file: !962, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !961, file: !962, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !961, file: !962, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !961, file: !962, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !961, file: !962, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !961, file: !962, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !961, file: !962, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !961, file: !962, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !961, file: !962, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !961, file: !962, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !961, file: !962, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !961, file: !962, line: 969, baseType: !494, size: 64, offset: 10176)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !961, file: !962, line: 971, baseType: !1469, size: 448, offset: 10240)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !24, line: 25, size: 448, elements: !1470)
!1470 = !{!1471, !1472, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1469, file: !24, line: 26, baseType: !494, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1469, file: !24, line: 27, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!480, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !24, line: 28, baseType: !1478, size: 320, offset: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !24, line: 28, size: 320, elements: !1479)
!1479 = !{!1480, !1490, !1515}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1478, file: !24, line: 37, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !24, line: 30, size: 320, elements: !1482)
!1482 = !{!1483, !1485, !1486, !1487, !1488, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1481, file: !24, line: 31, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1481, file: !24, line: 32, baseType: !594, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !24, line: 33, baseType: !594, size: 32, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1481, file: !24, line: 34, baseType: !594, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1481, file: !24, line: 35, baseType: !598, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1481, file: !24, line: 36, baseType: !1484, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1478, file: !24, line: 47, baseType: !1491, size: 192)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !24, line: 39, size: 192, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1514}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1491, file: !24, line: 40, baseType: !1126, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1491, file: !24, line: 41, baseType: !23, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !24, line: 42, baseType: !1496, size: 64, offset: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1491, file: !24, line: 42, size: 64, elements: !1497)
!1497 = !{!1498, !1506}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1496, file: !24, line: 43, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1501, line: 7, size: 128, elements: !1502)
!1501 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1502 = !{!1503, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1500, file: !1501, line: 8, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !478, line: 93, baseType: !688)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1500, file: !1501, line: 9, baseType: !688, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1496, file: !24, line: 44, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1509, line: 7, size: 64, elements: !1510)
!1509 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1510 = !{!1511, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1508, file: !1509, line: 8, baseType: !1512, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1509, line: 5, baseType: !1356)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1508, file: !1509, line: 9, baseType: !1356, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1491, file: !24, line: 46, baseType: !598, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1478, file: !24, line: 55, baseType: !1516, size: 256)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !24, line: 49, size: 256, elements: !1517)
!1517 = !{!1518, !1521, !1522, !1523, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1516, file: !24, line: 50, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !24, line: 14, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1516, file: !24, line: 51, baseType: !109, size: 32, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1516, file: !24, line: 52, baseType: !109, size: 32, offset: 96)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1516, file: !24, line: 53, baseType: !494, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1516, file: !24, line: 54, baseType: !494, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !961, file: !962, line: 973, baseType: !1526, size: 32, offset: 10688)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !345, line: 27, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !478, line: 28, baseType: !109)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !961, file: !962, line: 974, baseType: !1526, size: 32, offset: 10720)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !961, file: !962, line: 978, baseType: !494, size: 64, offset: 10752)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !961, file: !962, line: 987, baseType: !960, size: 64, offset: 10816)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !961, file: !962, line: 990, baseType: !960, size: 64, offset: 10880)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !961, file: !962, line: 995, baseType: !344, size: 128, offset: 10944)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !961, file: !962, line: 996, baseType: !344, size: 128, offset: 11072)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !961, file: !962, line: 997, baseType: !960, size: 64, offset: 11200)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !961, file: !962, line: 1005, baseType: !344, size: 128, offset: 11264)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !961, file: !962, line: 1006, baseType: !344, size: 128, offset: 11392)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !961, file: !962, line: 1009, baseType: !909, size: 64, offset: 11520)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !961, file: !962, line: 1010, baseType: !1539, size: 512, offset: 11584)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 512, elements: !922)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !961, file: !962, line: 1011, baseType: !344, size: 128, offset: 12096)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !961, file: !962, line: 1012, baseType: !344, size: 128, offset: 12224)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !961, file: !962, line: 1014, baseType: !1543, size: 64, offset: 12352)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1545, line: 26, size: 256, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1544, file: !1545, line: 27, baseType: !7, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1544, file: !1545, line: 28, baseType: !1549, size: 192, offset: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1550, line: 43, size: 192, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1549, file: !1550, line: 44, baseType: !823, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1549, file: !1550, line: 45, baseType: !344, size: 128, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !961, file: !962, line: 1017, baseType: !792, size: 64, offset: 12416)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !961, file: !962, line: 1020, baseType: !792, size: 64, offset: 12480)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !961, file: !962, line: 1023, baseType: !516, size: 64, offset: 12544)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !961, file: !962, line: 1025, baseType: !598, size: 64, offset: 12608)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !961, file: !962, line: 1026, baseType: !598, size: 64, offset: 12672)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !961, file: !962, line: 1031, baseType: !598, size: 64, offset: 12736)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !961, file: !962, line: 1032, baseType: !1561, size: 192, offset: 12800)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !962, line: 324, size: 192, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1561, file: !962, line: 326, baseType: !598, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1561, file: !962, line: 327, baseType: !598, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1561, file: !962, line: 328, baseType: !823, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !961, file: !962, line: 1041, baseType: !494, size: 64, offset: 12992)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !961, file: !962, line: 1042, baseType: !494, size: 64, offset: 13056)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !961, file: !962, line: 1045, baseType: !598, size: 64, offset: 13120)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !961, file: !962, line: 1048, baseType: !598, size: 64, offset: 13184)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !961, file: !962, line: 1051, baseType: !494, size: 64, offset: 13248)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !961, file: !962, line: 1052, baseType: !494, size: 64, offset: 13312)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !961, file: !962, line: 1055, baseType: !1573, size: 640, offset: 13376)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1574, line: 132, size: 640, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1575 = !{!1576, !1582, !1583}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1573, file: !1574, line: 133, baseType: !1577, size: 576)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1578, size: 576, elements: !445)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1574, line: 117, size: 192, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1578, file: !1574, line: 118, baseType: !598, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1578, file: !1574, line: 119, baseType: !1135, size: 128, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1573, file: !1574, line: 134, baseType: !7, size: 32, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1573, file: !1574, line: 135, baseType: !7, size: 32, offset: 608)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !961, file: !962, line: 1058, baseType: !1585, size: 448, offset: 14016)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1574, line: 144, size: 448, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1585, file: !1574, line: 145, baseType: !868, size: 128, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1585, file: !1574, line: 146, baseType: !810, size: 256, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1585, file: !1574, line: 147, baseType: !7, size: 32, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !961, file: !962, line: 1064, baseType: !1591, size: 64, offset: 14464)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1594, line: 110, size: 1472, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1612, !1613, !1614, !1615, !1616, !1617, !1729, !1730, !1731, !1732, !1733, !1756, !1757, !1761, !1769}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1593, file: !1594, line: 111, baseType: !814, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1593, file: !1594, line: 112, baseType: !531, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1593, file: !1594, line: 113, baseType: !540, size: 32, offset: 96)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1593, file: !1594, line: 114, baseType: !531, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1593, file: !1594, line: 115, baseType: !540, size: 32, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1593, file: !1594, line: 116, baseType: !531, size: 32, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1593, file: !1594, line: 117, baseType: !540, size: 32, offset: 224)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1593, file: !1594, line: 118, baseType: !531, size: 32, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1593, file: !1594, line: 119, baseType: !540, size: 32, offset: 288)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1593, file: !1594, line: 120, baseType: !7, size: 32, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1593, file: !1594, line: 121, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1608, line: 24, baseType: !1609)
!1608 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1608, line: 24, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1609, file: !1608, line: 24, baseType: !598, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1593, file: !1594, line: 122, baseType: !1607, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1593, file: !1594, line: 123, baseType: !1607, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1593, file: !1594, line: 124, baseType: !1607, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1593, file: !1594, line: 125, baseType: !1607, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1593, file: !1594, line: 127, baseType: !406, size: 8, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1593, file: !1594, line: 129, baseType: !1618, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1620, line: 195, size: 1728, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1621 = !{!1622, !1623, !1626, !1631, !1632, !1635, !1636, !1643, !1644, !1645, !1646, !1649, !1650, !1651, !1652, !1653, !1693, !1714}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1619, file: !1620, line: 196, baseType: !913, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1619, file: !1620, line: 197, baseType: !1624, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1620, line: 28, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !345, line: 104, baseType: !1356)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 198, baseType: !1627, size: 192, offset: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 198, size: 192, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1627, file: !1620, line: 199, baseType: !344, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1627, file: !1620, line: 200, baseType: !1009, size: 192, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1619, file: !1620, line: 205, baseType: !1310, size: 320, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1619, file: !1620, line: 206, baseType: !1633, size: 64, offset: 576)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1620, line: 206, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1619, file: !1620, line: 207, baseType: !516, size: 64, offset: 640)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 208, baseType: !1637, size: 64, offset: 704)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 208, size: 64, elements: !1638)
!1638 = !{!1639, !1642}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1637, file: !1620, line: 209, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1641, line: 8, baseType: !821)
!1641 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1637, file: !1620, line: 210, baseType: !1640, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1619, file: !1620, line: 212, baseType: !1640, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1619, file: !1620, line: 213, baseType: !531, size: 32, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1619, file: !1620, line: 214, baseType: !540, size: 32, offset: 864)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1619, file: !1620, line: 215, baseType: !1647, size: 32, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1620, line: 31, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !345, line: 110, baseType: !594)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1619, file: !1620, line: 216, baseType: !414, size: 16, offset: 928)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1619, file: !1620, line: 217, baseType: !414, size: 16, offset: 944)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1619, file: !1620, line: 221, baseType: !1408, size: 16, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1619, file: !1620, line: 228, baseType: !494, size: 64, offset: 1024)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 245, baseType: !1654, size: 320, offset: 1088)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 245, size: 320, elements: !1655)
!1655 = !{!1656, !1685}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1654, file: !1620, line: 246, baseType: !1657, size: 320)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1620, line: 114, size: 320, elements: !1658)
!1658 = !{!1659, !1660, !1672, !1675, !1684}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1657, file: !1620, line: 116, baseType: !494, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !1620, line: 117, baseType: !1661, size: 64, offset: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1657, file: !1620, line: 117, size: 64, elements: !1662)
!1662 = !{!1663, !1671}
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1620, line: 118, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !1620, line: 118, size: 64, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1664, file: !1620, line: 120, baseType: !412, size: 16)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1664, file: !1620, line: 121, baseType: !1668, size: 48, offset: 16)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 48, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 6)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1661, file: !1620, line: 127, baseType: !494, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1657, file: !1620, line: 129, baseType: !1673, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1620, line: 102, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1657, file: !1620, line: 130, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1620, line: 108, size: 192, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1677, file: !1620, line: 109, baseType: !868, size: 128, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1677, file: !1620, line: 110, baseType: !913, size: 32, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1677, file: !1620, line: 111, baseType: !1682, size: 8, offset: 160)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !345, line: 35, baseType: !1683)
!1683 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1657, file: !1620, line: 131, baseType: !363, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1620, line: 247, baseType: !1686, size: 320)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1620, line: 247, size: 320, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1686, file: !1620, line: 248, baseType: !494, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1686, file: !1620, line: 249, baseType: !494, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1686, file: !1620, line: 250, baseType: !1673, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1686, file: !1620, line: 251, baseType: !1676, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1686, file: !1620, line: 252, baseType: !444, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 260, baseType: !1694, size: 256, offset: 1408)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 260, size: 256, elements: !1695)
!1695 = !{!1696, !1702}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1694, file: !1620, line: 261, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1620, line: 134, size: 256, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1697, file: !1620, line: 135, baseType: !516, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1697, file: !1620, line: 136, baseType: !1701, size: 256)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 256, elements: !922)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1620, line: 262, baseType: !1703, size: 256)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !1620, line: 262, size: 256, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1703, file: !1620, line: 264, baseType: !344, size: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1703, file: !1620, line: 265, baseType: !1707, size: 128, offset: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1708, line: 22, size: 128, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1709 = !{!1710, !1713}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1707, file: !1708, line: 23, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1708, line: 23, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1707, file: !1708, line: 24, baseType: !494, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1619, file: !1620, line: 280, baseType: !1715, size: 64, offset: 1664)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1620, line: 176, size: 192, elements: !1717)
!1717 = !{!1718, !1727, !1728}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1716, file: !1620, line: 177, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1620, line: 171, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!109, !1618, !1723, !1725, !1618}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1716, file: !1620, line: 178, baseType: !1618, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1716, file: !1620, line: 179, baseType: !1673, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1593, file: !1594, line: 130, baseType: !1618, size: 64, offset: 832)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1593, file: !1594, line: 131, baseType: !1618, size: 64, offset: 896)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1593, file: !1594, line: 132, baseType: !1618, size: 64, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1593, file: !1594, line: 135, baseType: !516, size: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1593, file: !1594, line: 137, baseType: !1734, size: 64, offset: 1088)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1736, line: 14, size: 1088, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1735, file: !1736, line: 15, baseType: !913, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1735, file: !1736, line: 17, baseType: !1348, size: 320, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1735, file: !1736, line: 19, baseType: !494, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1735, file: !1736, line: 20, baseType: !814, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1735, file: !1736, line: 23, baseType: !721, size: 128, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1735, file: !1736, line: 24, baseType: !531, size: 32, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1735, file: !1736, line: 29, baseType: !814, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1735, file: !1736, line: 36, baseType: !1746, size: 320, offset: 768)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1747, line: 15, size: 320, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1746, file: !1747, line: 16, baseType: !823, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1746, file: !1747, line: 18, baseType: !109, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1746, file: !1747, line: 19, baseType: !109, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1746, file: !1747, line: 20, baseType: !109, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1746, file: !1747, line: 21, baseType: !109, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1746, file: !1747, line: 22, baseType: !494, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1746, file: !1747, line: 23, baseType: !494, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1593, file: !1594, line: 138, baseType: !1415, size: 64, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1593, file: !1594, line: 139, baseType: !1758, size: 64, offset: 1216)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1760, line: 16, flags: DIFlagFwdDecl)
!1760 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1593, file: !1594, line: 140, baseType: !1762, size: 64, offset: 1280)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1594, line: 25, size: 64, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1763, file: !1594, line: 26, baseType: !394, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1763, file: !1594, line: 27, baseType: !109, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1763, file: !1594, line: 28, baseType: !1768, offset: 64)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, elements: !1444)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !1594, line: 142, baseType: !1770, size: 128, offset: 1344)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !1594, line: 142, size: 128, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1770, file: !1594, line: 143, baseType: !109, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1770, file: !1594, line: 144, baseType: !868, size: 128, align: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !961, file: !962, line: 1067, baseType: !1591, size: 64, offset: 14528)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !961, file: !962, line: 1070, baseType: !1591, size: 64, offset: 14592)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !961, file: !962, line: 1074, baseType: !1618, size: 64, offset: 14656)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !961, file: !962, line: 1084, baseType: !1778, size: 128, offset: 14720)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 128, elements: !1779)
!1779 = !{!1780}
!1780 = !DISubrange(count: 16)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !961, file: !962, line: 1086, baseType: !1782, size: 64, offset: 14848)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !962, line: 55, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !961, file: !962, line: 1089, baseType: !1785, size: 64, offset: 14912)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1786, line: 12, size: 64, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1785, file: !1786, line: 13, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1786, line: 8, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !961, file: !962, line: 1090, baseType: !1792, size: 128, offset: 14976)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1793, line: 13, size: 128, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1792, file: !1793, line: 14, baseType: !344, size: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !961, file: !962, line: 1097, baseType: !1797, size: 64, offset: 15104)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !962, line: 50, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !961, file: !962, line: 1100, baseType: !1800, size: 64, offset: 15168)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !962, line: 1100, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !961, file: !962, line: 1103, baseType: !1803, size: 64, offset: 15232)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !962, line: 53, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !961, file: !962, line: 1107, baseType: !1806, size: 64, offset: 15296)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1808, line: 31, size: 576, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1809 = !{!1810, !1811, !1814, !1817, !1820, !1821, !1824, !1827, !1828}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1807, file: !1808, line: 32, baseType: !913, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1807, file: !1808, line: 33, baseType: !1812, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1808, line: 9, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1807, file: !1808, line: 34, baseType: !1815, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1808, line: 10, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1807, file: !1808, line: 35, baseType: !1818, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1808, line: 8, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1807, file: !1808, line: 36, baseType: !939, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1807, file: !1808, line: 37, baseType: !1822, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1620, line: 34, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1807, file: !1808, line: 38, baseType: !1825, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1808, line: 38, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1807, file: !1808, line: 39, baseType: !1825, size: 64, offset: 448)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1807, file: !1808, line: 40, baseType: !1829, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1808, line: 12, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !961, file: !962, line: 1110, baseType: !1832, size: 64, offset: 15360)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1834, line: 93, size: 8768, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1885, !1894, !1895, !1897, !1898, !1899, !1902, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1940, !1941, !1948, !1958, !1961, !1962, !1965, !1966, !1967, !1968, !1969, !1970}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1833, file: !1834, line: 94, baseType: !913, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1833, file: !1834, line: 95, baseType: !394, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1833, file: !1834, line: 96, baseType: !109, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1833, file: !1834, line: 97, baseType: !109, size: 32, offset: 96)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1833, file: !1834, line: 98, baseType: !344, size: 128, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1833, file: !1834, line: 100, baseType: !926, size: 192, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1833, file: !1834, line: 103, baseType: !960, size: 64, offset: 448)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1833, file: !1834, line: 106, baseType: !1844, size: 192, offset: 512)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1760, line: 32, size: 192, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1844, file: !1760, line: 33, baseType: !344, size: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1844, file: !1760, line: 34, baseType: !1848, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1849, line: 25, baseType: !1850)
!1849 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1849, line: 23, size: 64, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1850, file: !1849, line: 24, baseType: !1206, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1833, file: !1834, line: 109, baseType: !717, size: 64, offset: 704)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1833, file: !1834, line: 112, baseType: !109, size: 32, offset: 768)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1833, file: !1834, line: 114, baseType: !109, size: 32, offset: 800)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1833, file: !1834, line: 115, baseType: !960, size: 64, offset: 832)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1833, file: !1834, line: 118, baseType: !109, size: 32, offset: 896)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1833, file: !1834, line: 119, baseType: !7, size: 32, offset: 928)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1833, file: !1834, line: 121, baseType: !1860, size: 64, offset: 960)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1834, line: 80, size: 448, elements: !1862)
!1862 = !{!1863, !1864, !1870}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1861, file: !1834, line: 81, baseType: !394, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1861, file: !1834, line: 82, baseType: !1865, size: 128, offset: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1834, line: 75, size: 128, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1865, file: !1834, line: 76, baseType: !960, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1865, file: !1834, line: 77, baseType: !1869, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1861, file: !1834, line: 83, baseType: !1544, size: 256, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1833, file: !1834, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1833, file: !1834, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1833, file: !1834, line: 138, baseType: !7, size: 32, offset: 1056)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1833, file: !1834, line: 139, baseType: !344, size: 128, offset: 1088)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1833, file: !1834, line: 142, baseType: !1079, size: 512, offset: 1216)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1833, file: !1834, line: 143, baseType: !1087, size: 64, offset: 1728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1833, file: !1834, line: 150, baseType: !1878, size: 256, offset: 1792)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, size: 256, elements: !1883)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1834, line: 38, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1879, file: !1834, line: 39, baseType: !598, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1879, file: !1834, line: 40, baseType: !598, size: 64, offset: 64)
!1883 = !{!1884}
!1884 = !DISubrange(count: 2)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1833, file: !1834, line: 156, baseType: !1886, size: 192, offset: 2048)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1834, line: 66, size: 192, elements: !1887)
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1886, file: !1834, line: 67, baseType: !1889, size: 192)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1834, line: 47, size: 192, elements: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1889, file: !1834, line: 48, baseType: !816, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1889, file: !1834, line: 49, baseType: !816, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1889, file: !1834, line: 50, baseType: !816, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1833, file: !1834, line: 160, baseType: !1573, size: 640, offset: 2240)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1833, file: !1834, line: 163, baseType: !1896, size: 256, offset: 2880)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 256, elements: !922)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1833, file: !1834, line: 169, baseType: !909, size: 64, offset: 3136)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1833, file: !1834, line: 172, baseType: !109, size: 32, offset: 3200)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1833, file: !1834, line: 174, baseType: !1900, size: 64, offset: 3264)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1834, line: 174, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1833, file: !1834, line: 185, baseType: !1903, size: 64, offset: 3328)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !567, line: 860, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !567, line: 853, size: 64, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1904, file: !567, line: 858, baseType: !566, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1904, file: !567, line: 859, baseType: !374, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1833, file: !1834, line: 186, baseType: !598, size: 64, offset: 3392)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1833, file: !1834, line: 186, baseType: !598, size: 64, offset: 3456)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1833, file: !1834, line: 186, baseType: !598, size: 64, offset: 3520)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1833, file: !1834, line: 186, baseType: !598, size: 64, offset: 3584)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1833, file: !1834, line: 187, baseType: !598, size: 64, offset: 3648)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1833, file: !1834, line: 188, baseType: !598, size: 64, offset: 3712)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1833, file: !1834, line: 189, baseType: !1561, size: 192, offset: 3776)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1833, file: !1834, line: 190, baseType: !494, size: 64, offset: 3968)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1833, file: !1834, line: 190, baseType: !494, size: 64, offset: 4032)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1833, file: !1834, line: 190, baseType: !494, size: 64, offset: 4096)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1833, file: !1834, line: 190, baseType: !494, size: 64, offset: 4160)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1833, file: !1834, line: 191, baseType: !494, size: 64, offset: 4224)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1833, file: !1834, line: 191, baseType: !494, size: 64, offset: 4288)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1833, file: !1834, line: 191, baseType: !494, size: 64, offset: 4352)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1833, file: !1834, line: 191, baseType: !494, size: 64, offset: 4416)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1833, file: !1834, line: 192, baseType: !494, size: 64, offset: 4480)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1833, file: !1834, line: 192, baseType: !494, size: 64, offset: 4544)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1833, file: !1834, line: 192, baseType: !494, size: 64, offset: 4608)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1833, file: !1834, line: 192, baseType: !494, size: 64, offset: 4672)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1833, file: !1834, line: 193, baseType: !494, size: 64, offset: 4736)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1833, file: !1834, line: 193, baseType: !494, size: 64, offset: 4800)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1833, file: !1834, line: 194, baseType: !1930, size: 448, offset: 4864)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1931, line: 12, size: 448, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1930, file: !1931, line: 15, baseType: !598, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1930, file: !1931, line: 17, baseType: !598, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1930, file: !1931, line: 19, baseType: !598, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1930, file: !1931, line: 21, baseType: !598, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1930, file: !1931, line: 29, baseType: !598, size: 64, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1930, file: !1931, line: 35, baseType: !598, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1930, file: !1931, line: 44, baseType: !598, size: 64, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1833, file: !1834, line: 202, baseType: !600, size: 64, offset: 5312)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1833, file: !1834, line: 213, baseType: !1942, size: 2048, offset: 5376)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1943, size: 2048, elements: !1779)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1944, line: 43, size: 128, elements: !1945)
!1944 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1943, file: !1944, line: 44, baseType: !493, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1943, file: !1944, line: 45, baseType: !493, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1833, file: !1834, line: 216, baseType: !1949, size: 448, offset: 7424)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1834, line: 30, size: 448, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1949, file: !1834, line: 31, baseType: !109, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1949, file: !1834, line: 32, baseType: !480, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1949, file: !1834, line: 33, baseType: !494, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1949, file: !1834, line: 34, baseType: !598, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1949, file: !1834, line: 34, baseType: !598, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1949, file: !1834, line: 35, baseType: !494, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1949, file: !1834, line: 35, baseType: !494, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1833, file: !1834, line: 219, baseType: !1959, size: 64, offset: 7872)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1834, line: 219, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1833, file: !1834, line: 222, baseType: !7, size: 32, offset: 7936)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1833, file: !1834, line: 223, baseType: !1963, size: 64, offset: 8000)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1834, line: 223, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1833, file: !1834, line: 230, baseType: !1682, size: 8, offset: 8064)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1833, file: !1834, line: 231, baseType: !1408, size: 16, offset: 8080)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1833, file: !1834, line: 232, baseType: !1408, size: 16, offset: 8096)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1833, file: !1834, line: 234, baseType: !1255, size: 64, offset: 8128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1833, file: !1834, line: 237, baseType: !810, size: 256, offset: 8192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1833, file: !1834, line: 243, baseType: !1310, size: 320, offset: 8448)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !961, file: !962, line: 1111, baseType: !1972, size: 64, offset: 15424)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1834, line: 20, size: 16640, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1973, file: !1834, line: 21, baseType: !374, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1973, file: !1834, line: 22, baseType: !913, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1973, file: !1834, line: 23, baseType: !926, size: 192, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1973, file: !1834, line: 24, baseType: !1979, size: 16384, offset: 256)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1980, size: 16384, elements: !449)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1760, line: 51, size: 256, elements: !1981)
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1980, file: !1760, line: 52, baseType: !1983, size: 256)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1760, line: 37, size: 256, elements: !1984)
!1984 = !{!1985, !1992, !1993, !1999}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1983, file: !1760, line: 39, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1987, line: 83, baseType: !1988)
!1987 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1987, line: 82, baseType: !1990)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !109}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1983, file: !1760, line: 40, baseType: !494, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1983, file: !1760, line: 46, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1987, line: 86, baseType: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1987, line: 85, baseType: !1997)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1983, file: !1760, line: 48, baseType: !1848, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !961, file: !962, line: 1112, baseType: !1848, size: 64, offset: 15488)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !961, file: !962, line: 1113, baseType: !1848, size: 64, offset: 15552)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !961, file: !962, line: 1115, baseType: !1848, size: 64, offset: 15616)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !961, file: !962, line: 1116, baseType: !1844, size: 192, offset: 15680)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !961, file: !962, line: 1117, baseType: !494, size: 64, offset: 15872)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !961, file: !962, line: 1118, baseType: !491, size: 64, offset: 15936)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !961, file: !962, line: 1119, baseType: !7, size: 32, offset: 16000)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !961, file: !962, line: 1121, baseType: !871, size: 64, offset: 16064)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !961, file: !962, line: 1125, baseType: !2009, size: 64, offset: 16128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !962, line: 43, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !961, file: !962, line: 1127, baseType: !531, size: 32, offset: 16192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !961, file: !962, line: 1128, baseType: !7, size: 32, offset: 16224)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !961, file: !962, line: 1130, baseType: !2014, size: 128, offset: 16256)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2015, line: 37, size: 128, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2014, file: !2015, line: 38, baseType: !109, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2014, file: !2015, line: 39, baseType: !394, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2014, file: !2015, line: 40, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2015, line: 24, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !961, file: !962, line: 1131, baseType: !2023, size: 256, offset: 16384)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2024, line: 12, size: 256, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2025 = !{!2026, !2027, !2028, !2029}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2023, file: !2024, line: 13, baseType: !444, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2023, file: !2024, line: 14, baseType: !494, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2023, file: !2024, line: 15, baseType: !494, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2023, file: !2024, line: 16, baseType: !1682, size: 8, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !961, file: !962, line: 1134, baseType: !598, size: 64, offset: 16640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !961, file: !962, line: 1135, baseType: !598, size: 64, offset: 16704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !961, file: !962, line: 1138, baseType: !374, size: 32, offset: 16768)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !961, file: !962, line: 1141, baseType: !823, size: 32, offset: 16800)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !961, file: !962, line: 1143, baseType: !2035, size: 64, offset: 16832)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !962, line: 735, size: 64, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2035, file: !962, line: 736, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !961, file: !962, line: 1147, baseType: !1138, size: 128, offset: 16896)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !961, file: !962, line: 1149, baseType: !960, size: 64, offset: 17024)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !961, file: !962, line: 1151, baseType: !2042, size: 64, offset: 17088)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !962, line: 1151, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !961, file: !962, line: 1188, baseType: !516, size: 64, offset: 17152)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !961, file: !962, line: 1191, baseType: !2046, size: 64, offset: 17216)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !962, line: 44, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !961, file: !962, line: 1194, baseType: !2049, size: 64, offset: 17280)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !962, line: 45, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !961, file: !962, line: 1197, baseType: !2052, size: 64, offset: 17344)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !962, line: 61, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !961, file: !962, line: 1199, baseType: !2055, size: 64, offset: 17408)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2057, line: 99, size: 128, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2056, file: !2057, line: 100, baseType: !814, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2056, file: !2057, line: 101, baseType: !394, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2056, file: !2057, line: 103, baseType: !414, size: 16, offset: 96)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !961, file: !962, line: 1202, baseType: !2063, size: 64, offset: 17472)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !962, line: 48, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !961, file: !962, line: 1205, baseType: !494, size: 64, offset: 17536)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !961, file: !962, line: 1206, baseType: !2067, size: 64, offset: 17600)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1760, line: 14, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1760, line: 12, size: 384, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !1760, line: 13, baseType: !2072, size: 384)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !1760, line: 13, size: 384, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2072, file: !1760, line: 13, baseType: !109, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2072, file: !1760, line: 13, baseType: !109, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2072, file: !1760, line: 13, baseType: !109, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2072, file: !1760, line: 13, baseType: !2078, size: 256, offset: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2079, line: 37, size: 256, elements: !2080)
!2079 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2080 = !{!2081, !2086, !2099, !2105, !2114, !2141, !2146}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2078, file: !2079, line: 42, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2079, line: 39, size: 64, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2082, file: !2079, line: 40, baseType: !1527, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2082, file: !2079, line: 41, baseType: !537, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2078, file: !2079, line: 50, baseType: !2087, size: 192)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2079, line: 45, size: 192, elements: !2088)
!2088 = !{!2089, !2091, !2092, !2098}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2087, file: !2079, line: 46, baseType: !2090, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !478, line: 95, baseType: !109)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2087, file: !2079, line: 47, baseType: !109, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2087, file: !2079, line: 48, baseType: !2093, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2079, line: 11, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2079, line: 8, size: 64, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2094, file: !2079, line: 9, baseType: !109, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2094, file: !2079, line: 10, baseType: !516, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2087, file: !2079, line: 49, baseType: !109, size: 32, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2078, file: !2079, line: 57, baseType: !2100, size: 128)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2079, line: 53, size: 128, elements: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2100, file: !2079, line: 54, baseType: !1527, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2100, file: !2079, line: 55, baseType: !537, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2100, file: !2079, line: 56, baseType: !2093, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2078, file: !2079, line: 66, baseType: !2106, size: 256)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2079, line: 60, size: 256, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2113}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2106, file: !2079, line: 61, baseType: !1527, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2106, file: !2079, line: 62, baseType: !537, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2106, file: !2079, line: 63, baseType: !109, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2106, file: !2079, line: 64, baseType: !2112, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !478, line: 94, baseType: !479)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2106, file: !2079, line: 65, baseType: !2112, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2078, file: !2079, line: 105, baseType: !2115, size: 256)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2079, line: 69, size: 256, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2115, file: !2079, line: 70, baseType: !516, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2079, line: 79, baseType: !2119, size: 192, offset: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2079, line: 79, size: 192, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2130, !2135}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2119, file: !2079, line: 81, baseType: !109, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2119, file: !2079, line: 86, baseType: !1408, size: 16)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2119, file: !2079, line: 92, baseType: !2124, size: 192)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2079, line: 88, size: 192, elements: !2125)
!2125 = !{!2126, !2128, !2129}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2124, file: !2079, line: 89, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !1122)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2124, file: !2079, line: 90, baseType: !516, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2124, file: !2079, line: 91, baseType: !516, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2119, file: !2079, line: 97, baseType: !2131, size: 96)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2079, line: 94, size: 96, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2131, file: !2079, line: 95, baseType: !2127, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2131, file: !2079, line: 96, baseType: !595, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2119, file: !2079, line: 103, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2079, line: 99, size: 128, elements: !2137)
!2137 = !{!2138, !2139, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2136, file: !2079, line: 100, baseType: !494, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2136, file: !2079, line: 101, baseType: !595, size: 32, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2136, file: !2079, line: 102, baseType: !595, size: 32, offset: 96)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2078, file: !2079, line: 111, baseType: !2142, size: 128)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2079, line: 108, size: 128, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2142, file: !2079, line: 109, baseType: !480, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2142, file: !2079, line: 110, baseType: !109, size: 32, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2078, file: !2079, line: 118, baseType: !2147, size: 128)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !2079, line: 114, size: 128, elements: !2148)
!2148 = !{!2149, !2150, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2147, file: !2079, line: 115, baseType: !516, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2147, file: !2079, line: 116, baseType: !109, size: 32, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2147, file: !2079, line: 117, baseType: !7, size: 32, offset: 96)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !961, file: !962, line: 1208, baseType: !1930, size: 448, offset: 17664)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !961, file: !962, line: 1215, baseType: !598, size: 64, offset: 18112)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !961, file: !962, line: 1217, baseType: !598, size: 64, offset: 18176)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !961, file: !962, line: 1219, baseType: !598, size: 64, offset: 18240)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !961, file: !962, line: 1223, baseType: !2157, size: 64, offset: 18304)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2158, line: 99, baseType: !2159)
!2158 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2158, line: 99, size: 64, elements: !2160)
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2159, file: !2158, line: 99, baseType: !1206, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !961, file: !962, line: 1225, baseType: !566, size: 32, offset: 18368)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !961, file: !962, line: 1226, baseType: !109, size: 32, offset: 18400)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !961, file: !962, line: 1227, baseType: !109, size: 32, offset: 18432)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !961, file: !962, line: 1231, baseType: !2166, size: 64, offset: 18496)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !962, line: 1231, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !961, file: !962, line: 1233, baseType: !344, size: 128, offset: 18560)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !961, file: !962, line: 1240, baseType: !2170, size: 64, offset: 18688)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !962, line: 62, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !961, file: !962, line: 1242, baseType: !2173, size: 64, offset: 18752)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !962, line: 1242, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !961, file: !962, line: 1244, baseType: !344, size: 128, offset: 18816)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !961, file: !962, line: 1245, baseType: !2177, size: 64, offset: 18944)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !962, line: 51, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !961, file: !962, line: 1246, baseType: !810, size: 256, offset: 19008)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !961, file: !962, line: 1247, baseType: !7, size: 32, offset: 19264)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !961, file: !962, line: 1250, baseType: !2182, size: 64, offset: 19328)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !962, line: 57, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !961, file: !962, line: 1251, baseType: !810, size: 256, offset: 19392)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !961, file: !962, line: 1252, baseType: !344, size: 128, offset: 19648)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !961, file: !962, line: 1259, baseType: !2187, size: 64, offset: 19776)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !962, line: 54, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !961, file: !962, line: 1260, baseType: !1408, size: 16, offset: 19840)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !961, file: !962, line: 1261, baseType: !1408, size: 16, offset: 19856)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !961, file: !962, line: 1314, baseType: !2192, size: 64, offset: 19904)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2194, line: 62, size: 256, align: 256, elements: !2195)
!2194 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2193, file: !2194, line: 75, baseType: !595, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2193, file: !2194, line: 90, baseType: !595, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2193, file: !2194, line: 112, baseType: !599, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2193, file: !2194, line: 132, baseType: !595, size: 32, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2193, file: !2194, line: 140, baseType: !595, size: 32, offset: 160)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2193, file: !2194, line: 149, baseType: !595, size: 32, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2193, file: !2194, line: 154, baseType: !2203, offset: 224)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, elements: !1444)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !961, file: !962, line: 1315, baseType: !594, size: 32, offset: 19968)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !961, file: !962, line: 1316, baseType: !594, size: 32, offset: 20000)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !961, file: !962, line: 1321, baseType: !494, size: 64, offset: 20032)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !961, file: !962, line: 1325, baseType: !109, size: 32, offset: 20096)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !961, file: !962, line: 1326, baseType: !109, size: 32, offset: 20128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !961, file: !962, line: 1327, baseType: !109, size: 32, offset: 20160)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !961, file: !962, line: 1328, baseType: !109, size: 32, offset: 20192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !961, file: !962, line: 1329, baseType: !868, size: 128, align: 64, offset: 20224)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !961, file: !962, line: 1332, baseType: !2213, size: 128, offset: 20352)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2214, line: 51, size: 128, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2215 = !{!2216, !2221, !2222}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2213, file: !2214, line: 60, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2218, line: 7, size: 64, elements: !2219)
!2218 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2217, file: !2218, line: 12, baseType: !1203, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2213, file: !2214, line: 63, baseType: !1682, size: 8, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2213, file: !2214, line: 70, baseType: !1682, size: 8, offset: 72)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !961, file: !962, line: 1335, baseType: !2224, size: 64, offset: 20480)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !962, line: 59, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !961, file: !962, line: 1337, baseType: !2227, size: 128, offset: 20544)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2214, line: 39, size: 128, elements: !2228)
!2228 = !{!2229, !2513, !2514}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2227, file: !2214, line: 40, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2232)
!2232 = !{!2233, !2234, !2507, !2512}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !38, line: 75, baseType: !494, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 83, baseType: !2235, size: 320, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 83, size: 320, elements: !2236)
!2236 = !{!2237, !2258, !2272, !2276, !2506}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 84, baseType: !2238, size: 320)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 84, size: 320, elements: !2239)
!2239 = !{!2240, !2251, !2252, !2257}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 90, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 90, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2249, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2241, file: !38, line: 91, baseType: !344, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !38, line: 94, baseType: !2245, size: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !38, line: 94, size: 128, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2245, file: !38, line: 96, baseType: !516, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2245, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2241, file: !38, line: 102, baseType: !344, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2241, file: !38, line: 103, baseType: !344, size: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2238, file: !38, line: 106, baseType: !521, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 107, baseType: !2253, size: 64, offset: 192)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 107, size: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2253, file: !38, line: 108, baseType: !494, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2253, file: !38, line: 109, baseType: !494, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2238, file: !38, line: 117, baseType: !494, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 119, baseType: !2259, size: 320)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 119, size: 320, elements: !2260)
!2260 = !{!2261, !2262, !2265, !2266, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2259, file: !38, line: 124, baseType: !494, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2259, file: !38, line: 125, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2259, file: !38, line: 126, baseType: !494, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2259, file: !38, line: 127, baseType: !494, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 128, baseType: !2268, size: 64, offset: 256)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !38, line: 128, size: 64, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2268, file: !38, line: 133, baseType: !494, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2268, file: !38, line: 138, baseType: !814, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 141, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 141, size: 64, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2273, file: !38, line: 142, baseType: !494, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 144, baseType: !2277, size: 128)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 144, size: 128, elements: !2278)
!2278 = !{!2279, !2505}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2277, file: !38, line: 146, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !30, line: 126, size: 1216, elements: !2282)
!2282 = !{!2283, !2293, !2314, !2315, !2316, !2317, !2318, !2487, !2488, !2489}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2281, file: !30, line: 127, baseType: !2284, size: 384)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !30, line: 21, size: 384, elements: !2285)
!2285 = !{!2286, !2287, !2289, !2290, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2284, file: !30, line: 22, baseType: !494, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2284, file: !30, line: 23, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2284, file: !30, line: 24, baseType: !2288, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2284, file: !30, line: 25, baseType: !494, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2284, file: !30, line: 26, baseType: !494, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2284, file: !30, line: 27, baseType: !494, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2281, file: !30, line: 128, baseType: !2294, size: 128, offset: 384)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2295, line: 105, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2294, file: !2295, line: 110, baseType: !494, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2294, file: !2295, line: 118, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2295, line: 95, size: 448, elements: !2301)
!2301 = !{!2302, !2303, !2309, !2310, !2311, !2312, !2313}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2300, file: !2295, line: 96, baseType: !814, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2300, file: !2295, line: 97, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2295, line: 60, baseType: !2306)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2300, file: !2295, line: 98, baseType: !2304, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2300, file: !2295, line: 99, baseType: !1682, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2300, file: !2295, line: 100, baseType: !1682, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2300, file: !2295, line: 101, baseType: !868, size: 128, align: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2300, file: !2295, line: 102, baseType: !2308, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2281, file: !30, line: 129, baseType: !1544, size: 256, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2281, file: !30, line: 130, baseType: !29, size: 32, offset: 768)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !30, line: 131, baseType: !7, size: 32, offset: 800)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2281, file: !30, line: 132, baseType: !494, size: 64, offset: 832)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2281, file: !30, line: 133, baseType: !2319, size: 64, offset: 896)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !30, line: 77, size: 192, elements: !2322)
!2322 = !{!2323, !2327, !2483}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2321, file: !30, line: 83, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2230}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2321, file: !30, line: 89, baseType: !2328, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2334, line: 512, size: 896, elements: !2335)
!2334 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2335 = !{!2336, !2450, !2451, !2458, !2465, !2475, !2476, !2477, !2479, !2481}
!2336 = !DIDerivedType(tag: DW_TAG_member, scope: !2333, file: !2334, line: 513, baseType: !2337, size: 320)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2333, file: !2334, line: 513, size: 320, elements: !2338)
!2338 = !{!2339, !2446, !2447, !2448, !2449}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2337, file: !2334, line: 514, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2342)
!2342 = !{!2343, !2352, !2353, !2359, !2366, !2367, !2372, !2373, !2378, !2379, !2382, !2439, !2440, !2441, !2442, !2443, !2444}
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2341, file: !38, line: 628, baseType: !2344, size: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2341, file: !38, line: 628, size: 128, elements: !2345)
!2345 = !{!2346, !2351}
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !38, line: 629, baseType: !2347, size: 128)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !38, line: 629, size: 128, elements: !2348)
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2347, file: !38, line: 631, baseType: !494, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2347, file: !38, line: 632, baseType: !494, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2344, file: !38, line: 635, baseType: !868, size: 128, align: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2341, file: !38, line: 639, baseType: !1255, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2341, file: !38, line: 640, baseType: !2354, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1291, line: 297, baseType: !2355)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1291, line: 297, size: 64, elements: !2356)
!2356 = !{!2357}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2355, file: !1291, line: 297, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1296, line: 19, baseType: !494)
!2359 = !DIDerivedType(tag: DW_TAG_member, scope: !2341, file: !38, line: 646, baseType: !2360, size: 64, offset: 256)
!2360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2341, file: !38, line: 646, size: 64, elements: !2361)
!2361 = !{!2362, !2365}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2360, file: !38, line: 647, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2364)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !494)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2360, file: !38, line: 648, baseType: !2364, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2341, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2341, file: !38, line: 667, baseType: !2368, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2370)
!2370 = !{!2371}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2369, file: !38, line: 580, baseType: !1310, size: 320)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2341, file: !38, line: 670, baseType: !1682, size: 8, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2341, file: !38, line: 681, baseType: !2374, size: 256, offset: 512)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2341, file: !38, line: 678, size: 256, elements: !2375)
!2375 = !{!2376, !2377}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2374, file: !38, line: 679, baseType: !1009, size: 192, align: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2374, file: !38, line: 680, baseType: !494, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2341, file: !38, line: 689, baseType: !344, size: 128, offset: 768)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2341, file: !38, line: 691, baseType: !2380, size: 64, offset: 896)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2341, file: !38, line: 694, baseType: !2383, size: 64, offset: 960)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2385)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2334, line: 563, size: 1024, elements: !2386)
!2386 = !{!2387, !2391, !2392, !2396, !2400, !2404, !2405, !2409, !2413, !2417, !2418, !2419, !2423, !2427, !2431, !2435}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2385, file: !2334, line: 564, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !2340}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2385, file: !2334, line: 569, baseType: !2388, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2385, file: !2334, line: 571, baseType: !2393, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!109, !2340, !494}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2385, file: !2334, line: 572, baseType: !2397, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!109, !2340}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2385, file: !2334, line: 578, baseType: !2401, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!109, !2340, !494, !494, !494}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2385, file: !2334, line: 580, baseType: !2328, size: 64, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2385, file: !2334, line: 581, baseType: !2406, size: 64, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!2331, !2332, !7}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2385, file: !2334, line: 582, baseType: !2410, size: 64, offset: 448)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2331, !2332, !494, !494}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2385, file: !2334, line: 584, baseType: !2414, size: 64, offset: 512)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!494, !2340}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2385, file: !2334, line: 588, baseType: !2328, size: 64, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2385, file: !2334, line: 591, baseType: !2328, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2385, file: !2334, line: 597, baseType: !2420, size: 64, offset: 704)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!109, !2340, !494, !516, !109, !109}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2385, file: !2334, line: 603, baseType: !2424, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!363, !2340}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2385, file: !2334, line: 613, baseType: !2428, size: 64, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!109, !2340, !2187}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2385, file: !2334, line: 625, baseType: !2432, size: 64, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!2187, !2340, !494}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2385, file: !2334, line: 633, baseType: !2436, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!2230, !2340, !494}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2341, file: !38, line: 697, baseType: !494, size: 64, offset: 1024)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2341, file: !38, line: 699, baseType: !1282, size: 64, offset: 1088)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2341, file: !38, line: 700, baseType: !516, size: 64, offset: 1152)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2341, file: !38, line: 711, baseType: !814, size: 64, offset: 1216)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2341, file: !38, line: 717, baseType: !2187, size: 64, offset: 1280)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2341, file: !38, line: 722, baseType: !2445, offset: 1344)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !729)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2337, file: !2334, line: 515, baseType: !953, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2337, file: !2334, line: 516, baseType: !494, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2337, file: !2334, line: 517, baseType: !494, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2337, file: !2334, line: 518, baseType: !494, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !2334, line: 520, baseType: !37, size: 32, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2333, file: !2334, line: 522, baseType: !2452, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1296, line: 22, baseType: !2454)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1296, line: 22, size: 64, elements: !2455)
!2455 = !{!2456}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2454, file: !1296, line: 22, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1296, line: 15, baseType: !494)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2333, file: !2334, line: 524, baseType: !2459, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1291, line: 372, baseType: !2461)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 372, size: 64, elements: !2462)
!2462 = !{!2463}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2461, file: !1291, line: 372, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1296, line: 16, baseType: !494)
!2465 = !DIDerivedType(tag: DW_TAG_member, scope: !2333, file: !2334, line: 527, baseType: !2466, size: 64, offset: 512)
!2466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2333, file: !2334, line: 527, size: 64, elements: !2467)
!2467 = !{!2468, !2474}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2466, file: !2334, line: 528, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1296, line: 21, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1296, line: 21, size: 64, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2470, file: !1296, line: 21, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1296, line: 14, baseType: !494)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2466, file: !2334, line: 529, baseType: !2453, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2333, file: !2334, line: 534, baseType: !2230, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2333, file: !2334, line: 535, baseType: !2230, size: 64, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2333, file: !2334, line: 541, baseType: !2478, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2333, file: !2334, line: 545, baseType: !2480, size: 64, offset: 768)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2333, file: !2334, line: 549, baseType: !2482, size: 64, offset: 832)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1291, line: 520, baseType: !2230)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2321, file: !30, line: 100, baseType: !2484, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!109, !2280, !494, !494, !109}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2281, file: !30, line: 134, baseType: !516, size: 64, offset: 960)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2281, file: !30, line: 135, baseType: !109, size: 32, offset: 1024)
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !30, line: 136, baseType: !2490, size: 128, offset: 1088)
!2490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !30, line: 136, size: 128, elements: !2491)
!2491 = !{!2492, !2498}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2490, file: !30, line: 137, baseType: !2493, size: 128)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2494, line: 6, size: 128, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2495 = !{!2496, !2497}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2493, file: !2494, line: 7, baseType: !598, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2493, file: !2494, line: 8, baseType: !598, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2490, file: !30, line: 138, baseType: !2499)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2490, file: !30, line: 138, elements: !2500)
!2500 = !{!2501, !2503}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2499, file: !30, line: 138, baseType: !2502)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2499, file: !30, line: 138, elements: !729)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2499, file: !30, line: 138, baseType: !2504)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2493, elements: !1444)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2277, file: !38, line: 147, baseType: !516, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2235, file: !38, line: 161, baseType: !868, size: 128, align: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 164, baseType: !2508, size: 32, offset: 384)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 164, size: 32, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2508, file: !38, line: 169, baseType: !394, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2508, file: !38, line: 177, baseType: !7, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2231, file: !38, line: 181, baseType: !394, size: 32, offset: 416)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2227, file: !2214, line: 42, baseType: !595, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2227, file: !2214, line: 43, baseType: !595, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !961, file: !962, line: 1340, baseType: !2516, size: 64, offset: 20672)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !962, line: 69, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !961, file: !962, line: 1351, baseType: !109, size: 32, offset: 20736)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !961, file: !962, line: 1352, baseType: !109, size: 32, offset: 20768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !961, file: !962, line: 1354, baseType: !494, size: 64, offset: 20800)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !961, file: !962, line: 1364, baseType: !598, size: 64, offset: 20864)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !961, file: !962, line: 1365, baseType: !598, size: 64, offset: 20928)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !961, file: !962, line: 1412, baseType: !494, size: 64, offset: 20992)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !961, file: !962, line: 1453, baseType: !2525, size: 64, offset: 21056)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !962, line: 1453, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !961, file: !962, line: 1457, baseType: !2528, size: 64, offset: 21120)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !54, line: 61, size: 576, elements: !2530)
!2530 = !{!2531, !2532, !2551, !2554, !2555, !2588, !2598}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2529, file: !54, line: 62, baseType: !53, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !2529, file: !54, line: 64, baseType: !2533, size: 192, offset: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2529, file: !54, line: 64, size: 192, elements: !2534)
!2534 = !{!2535, !2546}
!2535 = !DIDerivedType(tag: DW_TAG_member, scope: !2533, file: !54, line: 65, baseType: !2536, size: 192)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !54, line: 65, size: 192, elements: !2537)
!2537 = !{!2538, !2545}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2536, file: !54, line: 66, baseType: !2539, size: 128)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2540, line: 50, size: 128, elements: !2541)
!2540 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2539, file: !2540, line: 52, baseType: !494, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2539, file: !2540, line: 54, baseType: !7, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2539, file: !2540, line: 55, baseType: !7, size: 32, offset: 96)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2536, file: !54, line: 67, baseType: !494, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2533, file: !54, line: 70, baseType: !2547, size: 192)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !54, line: 70, size: 192, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2547, file: !54, line: 71, baseType: !868, size: 128, align: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2547, file: !54, line: 72, baseType: !494, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2529, file: !54, line: 76, baseType: !2552, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !54, line: 76, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2529, file: !54, line: 77, baseType: !494, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2529, file: !54, line: 79, baseType: !2556, size: 64, offset: 384)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2540, line: 25, size: 256, elements: !2558)
!2558 = !{!2559, !2565, !2569}
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !2540, line: 26, baseType: !2560, size: 128)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !2540, line: 26, size: 128, elements: !2561)
!2561 = !{!2562, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2560, file: !2540, line: 27, baseType: !2563, size: 128)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 128, elements: !1779)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2560, file: !2540, line: 28, baseType: !2563, size: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2557, file: !2540, line: 31, baseType: !2566, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2540, line: 23, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !2540, line: 33, baseType: !2570, size: 64, offset: 192)
!2570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !2540, line: 33, size: 64, elements: !2571)
!2571 = !{!2572, !2578, !2583}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2570, file: !2540, line: 38, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2570, file: !2540, line: 34, size: 64, elements: !2574)
!2574 = !{!2575, !2576, !2577}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2573, file: !2540, line: 35, baseType: !1356, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2573, file: !2540, line: 36, baseType: !402, size: 8, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2573, file: !2540, line: 37, baseType: !402, size: 8, offset: 40)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2570, file: !2540, line: 42, baseType: !2579, size: 16)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2570, file: !2540, line: 39, size: 16, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2579, file: !2540, line: 40, baseType: !402, size: 8)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2579, file: !2540, line: 41, baseType: !402, size: 8, offset: 8)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2570, file: !2540, line: 46, baseType: !2584, size: 16)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2570, file: !2540, line: 43, size: 16, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2584, file: !2540, line: 44, baseType: !402, size: 8)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2584, file: !2540, line: 45, baseType: !402, size: 8, offset: 8)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2529, file: !54, line: 81, baseType: !2589, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !54, line: 85, size: 384, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2590, file: !54, line: 86, baseType: !2552, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2590, file: !54, line: 87, baseType: !494, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2590, file: !54, line: 88, baseType: !494, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2590, file: !54, line: 89, baseType: !494, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2590, file: !54, line: 90, baseType: !1682, size: 8, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2590, file: !54, line: 92, baseType: !2589, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2529, file: !54, line: 82, baseType: !7, size: 32, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !961, file: !962, line: 1463, baseType: !2600, offset: 21184)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !962, line: 739, elements: !729)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !961, file: !962, line: 1470, baseType: !868, size: 128, align: 64, offset: 21184)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !961, file: !962, line: 1471, baseType: !913, size: 32, offset: 21312)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !961, file: !962, line: 1472, baseType: !109, size: 32, offset: 21344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !961, file: !962, line: 1474, baseType: !960, size: 64, offset: 21376)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !961, file: !962, line: 1475, baseType: !2606, size: 320, offset: 21440)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2607, line: 11, size: 320, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2608 = !{!2609, !2610, !2611, !2616}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2606, file: !2607, line: 16, baseType: !721, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2606, file: !2607, line: 17, baseType: !494, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2606, file: !2607, line: 18, baseType: !2612, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !2615}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2606, file: !2607, line: 19, baseType: !594, size: 32, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !961, file: !962, line: 1478, baseType: !2618, size: 64, offset: 21760)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2620, line: 49, size: 512, elements: !2621)
!2620 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2628, !2629, !2630, !2632}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2619, file: !2620, line: 50, baseType: !2618, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2619, file: !2620, line: 51, baseType: !516, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2619, file: !2620, line: 52, baseType: !494, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2619, file: !2620, line: 53, baseType: !494, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2619, file: !2620, line: 54, baseType: !2627, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2619, file: !2620, line: 56, baseType: !7, size: 32, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2619, file: !2620, line: 58, baseType: !7, size: 32, offset: 352)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2619, file: !2620, line: 59, baseType: !2631, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !345, line: 159, baseType: !598)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2619, file: !2620, line: 60, baseType: !1389, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !961, file: !962, line: 1482, baseType: !913, size: 32, offset: 21824)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !961, file: !962, line: 1489, baseType: !516, size: 64, offset: 21888)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !961, file: !962, line: 1504, baseType: !516, size: 64, offset: 21952)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !961, file: !962, line: 1505, baseType: !599, size: 64, offset: 22016)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !961, file: !962, line: 1506, baseType: !598, size: 64, offset: 22080)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !961, file: !962, line: 1507, baseType: !599, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !961, file: !962, line: 1508, baseType: !599, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !961, file: !962, line: 1509, baseType: !599, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !961, file: !962, line: 1510, baseType: !868, size: 128, align: 64, offset: 22208)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !961, file: !962, line: 1511, baseType: !109, size: 32, offset: 22336)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !961, file: !962, line: 1515, baseType: !2644, size: 64, offset: 22400)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !863, line: 56, size: 64, elements: !2645)
!2645 = !{!2646}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2644, file: !863, line: 57, baseType: !866, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !961, file: !962, line: 1518, baseType: !2644, size: 64, offset: 22464)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !961, file: !962, line: 1528, baseType: !868, size: 128, align: 64, offset: 22528)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !961, file: !962, line: 1552, baseType: !2650, size: 35328, offset: 23040)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2651, line: 430, size: 35328, elements: !2652)
!2651 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2652 = !{!2653, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2682, !2683, !2684, !2685, !2686, !2687, !2690, !2691, !2692, !2693}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2650, file: !2651, line: 432, baseType: !2654, size: 192)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2655, size: 192, elements: !445)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2656, line: 16, size: 64, elements: !2657)
!2656 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2655, file: !2656, line: 17, baseType: !412, size: 16)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2655, file: !2656, line: 18, baseType: !412, size: 16, offset: 16)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2655, file: !2656, line: 19, baseType: !412, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2655, file: !2656, line: 19, baseType: !412, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2655, file: !2656, line: 19, baseType: !412, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2655, file: !2656, line: 19, baseType: !412, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2655, file: !2656, line: 19, baseType: !412, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2655, file: !2656, line: 20, baseType: !412, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2655, file: !2656, line: 20, baseType: !412, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2655, file: !2656, line: 20, baseType: !412, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2655, file: !2656, line: 20, baseType: !412, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2655, file: !2656, line: 20, baseType: !412, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2655, file: !2656, line: 20, baseType: !412, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2650, file: !2651, line: 436, baseType: !494, size: 64, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2650, file: !2651, line: 440, baseType: !414, size: 16, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2650, file: !2651, line: 441, baseType: !414, size: 16, offset: 272)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2650, file: !2651, line: 442, baseType: !414, size: 16, offset: 288)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2650, file: !2651, line: 443, baseType: !414, size: 16, offset: 304)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2650, file: !2651, line: 447, baseType: !494, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2650, file: !2651, line: 448, baseType: !494, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2650, file: !2651, line: 459, baseType: !2679, size: 256, offset: 448)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2680, size: 256, elements: !922)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2651, line: 428, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2650, file: !2651, line: 461, baseType: !494, size: 64, offset: 704)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2650, file: !2651, line: 463, baseType: !494, size: 64, offset: 768)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2650, file: !2651, line: 465, baseType: !494, size: 64, offset: 832)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2650, file: !2651, line: 466, baseType: !494, size: 64, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2650, file: !2651, line: 467, baseType: !494, size: 64, offset: 960)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2650, file: !2651, line: 473, baseType: !2688, size: 64, offset: 1024)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2651, line: 10, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2650, file: !2651, line: 480, baseType: !494, size: 64, offset: 1088)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2650, file: !2651, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2650, file: !2651, line: 491, baseType: !594, size: 32, offset: 1184)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2650, file: !2651, line: 501, baseType: !2694, size: 33792, offset: 1536)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2695, line: 448, size: 33792, elements: !2696)
!2695 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2696 = !{!2697, !2698, !2699, !2861, !2862, !2868, !2869}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2694, file: !2695, line: 461, baseType: !7, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2694, file: !2695, line: 468, baseType: !494, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2694, file: !2695, line: 476, baseType: !2700, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2695, line: 356, size: 33280, align: 512, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2701, file: !2695, line: 358, baseType: !7, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2701, file: !2695, line: 361, baseType: !7, size: 32, offset: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2701, file: !2695, line: 364, baseType: !598, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2701, file: !2695, line: 367, baseType: !598, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2701, file: !2695, line: 370, baseType: !598, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2701, file: !2695, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2701, file: !2695, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2701, file: !2695, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2701, file: !2695, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2701, file: !2695, line: 397, baseType: !2713, size: 32768, offset: 512)
!2713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2695, line: 348, size: 32768, elements: !2714)
!2714 = !{!2715, !2730, !2767, !2844, !2857}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2713, file: !2695, line: 349, baseType: !2716, size: 896)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2695, line: 12, size: 896, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2729}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2716, file: !2695, line: 13, baseType: !594, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2716, file: !2695, line: 14, baseType: !594, size: 32, offset: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2716, file: !2695, line: 15, baseType: !594, size: 32, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2716, file: !2695, line: 16, baseType: !594, size: 32, offset: 96)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2716, file: !2695, line: 17, baseType: !594, size: 32, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2716, file: !2695, line: 18, baseType: !594, size: 32, offset: 160)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2716, file: !2695, line: 19, baseType: !594, size: 32, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2716, file: !2695, line: 22, baseType: !2726, size: 640, offset: 224)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 640, elements: !2727)
!2727 = !{!2728}
!2728 = !DISubrange(count: 20)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2716, file: !2695, line: 25, baseType: !594, size: 32, offset: 864)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2713, file: !2695, line: 350, baseType: !2731, size: 4096, align: 128)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2695, line: 34, size: 4096, align: 128, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2752, !2753, !2754, !2756, !2758, !2762}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2731, file: !2695, line: 35, baseType: !412, size: 16)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2731, file: !2695, line: 36, baseType: !412, size: 16, offset: 16)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2731, file: !2695, line: 37, baseType: !412, size: 16, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2731, file: !2695, line: 38, baseType: !412, size: 16, offset: 48)
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !2731, file: !2695, line: 39, baseType: !2738, size: 128, offset: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2731, file: !2695, line: 39, size: 128, elements: !2739)
!2739 = !{!2740, !2745}
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2738, file: !2695, line: 40, baseType: !2741, size: 128)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !2695, line: 40, size: 128, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2741, file: !2695, line: 41, baseType: !598, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2741, file: !2695, line: 42, baseType: !598, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, scope: !2738, file: !2695, line: 44, baseType: !2746, size: 128)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !2695, line: 44, size: 128, elements: !2747)
!2747 = !{!2748, !2749, !2750, !2751}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2746, file: !2695, line: 45, baseType: !594, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2746, file: !2695, line: 46, baseType: !594, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2746, file: !2695, line: 47, baseType: !594, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2746, file: !2695, line: 48, baseType: !594, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2731, file: !2695, line: 51, baseType: !594, size: 32, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2731, file: !2695, line: 52, baseType: !594, size: 32, offset: 224)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2731, file: !2695, line: 55, baseType: !2755, size: 1024, offset: 256)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 1024, elements: !607)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2731, file: !2695, line: 58, baseType: !2757, size: 2048, offset: 1280)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 2048, elements: !449)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2731, file: !2695, line: 60, baseType: !2759, size: 384, offset: 3328)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 384, elements: !2760)
!2760 = !{!2761}
!2761 = !DISubrange(count: 12)
!2762 = !DIDerivedType(tag: DW_TAG_member, scope: !2731, file: !2695, line: 62, baseType: !2763, size: 384, offset: 3712)
!2763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2731, file: !2695, line: 62, size: 384, elements: !2764)
!2764 = !{!2765, !2766}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2763, file: !2695, line: 63, baseType: !2759, size: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2763, file: !2695, line: 64, baseType: !2759, size: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2713, file: !2695, line: 351, baseType: !2768, size: 1088)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2695, line: 79, size: 1088, elements: !2769)
!2769 = !{!2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2843}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2768, file: !2695, line: 80, baseType: !594, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2768, file: !2695, line: 81, baseType: !594, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2768, file: !2695, line: 82, baseType: !594, size: 32, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2768, file: !2695, line: 83, baseType: !594, size: 32, offset: 96)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2768, file: !2695, line: 84, baseType: !594, size: 32, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2768, file: !2695, line: 85, baseType: !594, size: 32, offset: 160)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2768, file: !2695, line: 86, baseType: !594, size: 32, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2768, file: !2695, line: 88, baseType: !2726, size: 640, offset: 224)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2768, file: !2695, line: 89, baseType: !402, size: 8, offset: 864)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2768, file: !2695, line: 90, baseType: !402, size: 8, offset: 872)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2768, file: !2695, line: 91, baseType: !402, size: 8, offset: 880)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2768, file: !2695, line: 92, baseType: !402, size: 8, offset: 888)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2768, file: !2695, line: 93, baseType: !402, size: 8, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2768, file: !2695, line: 94, baseType: !402, size: 8, offset: 904)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2768, file: !2695, line: 95, baseType: !2785, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2787, line: 11, size: 128, elements: !2788)
!2787 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2786, file: !2787, line: 12, baseType: !480, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2786, file: !2787, line: 13, baseType: !2791, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2793, line: 103, size: 1344, elements: !2794)
!2793 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2823, !2824, !2825}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2792, file: !2793, line: 109, baseType: !494, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2792, file: !2793, line: 110, baseType: !494, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2792, file: !2793, line: 111, baseType: !494, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2792, file: !2793, line: 112, baseType: !494, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2792, file: !2793, line: 113, baseType: !494, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2792, file: !2793, line: 114, baseType: !494, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2792, file: !2793, line: 117, baseType: !494, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2792, file: !2793, line: 118, baseType: !494, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2792, file: !2793, line: 119, baseType: !494, size: 64, offset: 512)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2792, file: !2793, line: 120, baseType: !494, size: 64, offset: 576)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2792, file: !2793, line: 121, baseType: !494, size: 64, offset: 640)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2792, file: !2793, line: 122, baseType: !494, size: 64, offset: 704)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2792, file: !2793, line: 123, baseType: !494, size: 64, offset: 768)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2792, file: !2793, line: 124, baseType: !494, size: 64, offset: 832)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2792, file: !2793, line: 125, baseType: !494, size: 64, offset: 896)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2792, file: !2793, line: 139, baseType: !494, size: 64, offset: 960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2792, file: !2793, line: 142, baseType: !494, size: 64, offset: 1024)
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !2793, line: 144, baseType: !2813, size: 64, offset: 1088)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2792, file: !2793, line: 144, size: 64, elements: !2814)
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2813, file: !2793, line: 146, baseType: !412, size: 16)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2813, file: !2793, line: 148, baseType: !598, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2813, file: !2793, line: 150, baseType: !2818, size: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2793, line: 59, size: 64, elements: !2819)
!2819 = !{!2820, !2821, !2822}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2818, file: !2793, line: 61, baseType: !598, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2818, file: !2793, line: 63, baseType: !598, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2818, file: !2793, line: 65, baseType: !598, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2792, file: !2793, line: 153, baseType: !494, size: 64, offset: 1152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2792, file: !2793, line: 154, baseType: !494, size: 64, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !2793, line: 156, baseType: !2826, size: 64, offset: 1280)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2792, file: !2793, line: 156, size: 64, elements: !2827)
!2827 = !{!2828, !2829, !2830}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2826, file: !2793, line: 158, baseType: !412, size: 16)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2826, file: !2793, line: 160, baseType: !598, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2826, file: !2793, line: 162, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2793, line: 69, size: 64, elements: !2832)
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2831, file: !2793, line: 71, baseType: !598, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2831, file: !2793, line: 73, baseType: !598, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2831, file: !2793, line: 75, baseType: !598, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2831, file: !2793, line: 77, baseType: !598, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2831, file: !2793, line: 80, baseType: !598, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2831, file: !2793, line: 83, baseType: !598, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2831, file: !2793, line: 86, baseType: !598, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2831, file: !2793, line: 88, baseType: !598, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2831, file: !2793, line: 93, baseType: !598, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2831, file: !2793, line: 100, baseType: !598, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2768, file: !2695, line: 96, baseType: !594, size: 32, offset: 1024)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2713, file: !2695, line: 352, baseType: !2845, size: 4608, align: 512)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2695, line: 333, size: 4608, align: 512, elements: !2846)
!2846 = !{!2847, !2848, !2855}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2845, file: !2695, line: 334, baseType: !2731, size: 4096, align: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2845, file: !2695, line: 335, baseType: !2849, size: 512, offset: 4096)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2695, line: 312, size: 512, elements: !2850)
!2850 = !{!2851, !2852, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2849, file: !2695, line: 313, baseType: !598, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2849, file: !2695, line: 314, baseType: !598, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2849, file: !2695, line: 315, baseType: !2854, size: 384, offset: 128)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 384, elements: !1669)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2845, file: !2695, line: 336, baseType: !2856, offset: 4608)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, elements: !1444)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2713, file: !2695, line: 353, baseType: !2858, size: 32768)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 32768, elements: !2859)
!2859 = !{!2860}
!2860 = !DISubrange(count: 4096)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2694, file: !2695, line: 484, baseType: !2700, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2694, file: !2695, line: 491, baseType: !2863, size: 128, offset: 256)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2695, line: 404, size: 128, elements: !2864)
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2863, file: !2695, line: 424, baseType: !598, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2863, file: !2695, line: 432, baseType: !7, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2863, file: !2695, line: 440, baseType: !7, size: 32, offset: 96)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2694, file: !2695, line: 498, baseType: !2863, size: 128, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2694, file: !2695, line: 508, baseType: !2701, size: 33280, align: 512, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !940, file: !941, line: 31, baseType: !2871, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2873, line: 11, flags: DIFlagFwdDecl)
!2873 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !940, file: !941, line: 32, baseType: !7, size: 32, offset: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !940, file: !941, line: 33, baseType: !939, size: 64, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !940, file: !941, line: 35, baseType: !2877, size: 64, offset: 640)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !941, line: 17, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !940, file: !941, line: 37, baseType: !1415, size: 64, offset: 704)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !940, file: !941, line: 38, baseType: !1758, size: 64, offset: 768)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !940, file: !941, line: 39, baseType: !109, size: 32, offset: 832)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !940, file: !941, line: 40, baseType: !2883, size: 192, offset: 896)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2884, line: 9, size: 192, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2885 = !{!2886, !2887, !2891, !2892}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2883, file: !2884, line: 10, baseType: !814, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2883, file: !2884, line: 11, baseType: !2888, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2890)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2884, line: 7, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2883, file: !2884, line: 12, baseType: !7, size: 32, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2883, file: !2884, line: 13, baseType: !913, size: 32, offset: 160)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !940, file: !941, line: 42, baseType: !109, size: 32, offset: 1088)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !885, file: !14, line: 951, baseType: !60, size: 32, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !885, file: !14, line: 952, baseType: !531, size: 32, offset: 160)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !885, file: !14, line: 952, baseType: !531, size: 32, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !885, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !856, file: !14, line: 1012, baseType: !1591, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !856, file: !14, line: 1013, baseType: !2900, size: 256, offset: 960)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2900, file: !14, line: 971, baseType: !494, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2900, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2900, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2900, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2900, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2900, file: !14, line: 976, baseType: !686, size: 64, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !856, file: !14, line: 1014, baseType: !2909, size: 128, offset: 1216)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2910, line: 8, size: 128, elements: !2911)
!2910 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2909, file: !2910, line: 9, baseType: !670, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2909, file: !2910, line: 10, baseType: !560, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !856, file: !14, line: 1015, baseType: !525, size: 64, offset: 1344)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !856, file: !14, line: 1016, baseType: !2916, size: 64, offset: 1408)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2918)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2919)
!2919 = !{!2920, !2921, !2925, !2929, !2933, !2961, !2962, !2968, !2981, !2989, !2993, !2994, !2998, !2999, !3003, !3008, !3009, !3013, !3017, !3023, !3024, !3028, !3029, !3033, !3037, !3041, !3047, !3051, !3055, !3059, !3063, !3064, !3070}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2918, file: !14, line: 1915, baseType: !339, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2918, file: !14, line: 1916, baseType: !2922, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!686, !1282, !686, !109}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2918, file: !14, line: 1917, baseType: !2926, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!476, !1282, !444, !491, !839}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2918, file: !14, line: 1918, baseType: !2930, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!476, !1282, !363, !491, !839}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2918, file: !14, line: 1919, baseType: !2934, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!476, !2937, !2959}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2946, !2947, !2948, !2949}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2938, file: !14, line: 374, baseType: !1282, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2938, file: !14, line: 375, baseType: !686, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2938, file: !14, line: 376, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !2937, !480}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2938, file: !14, line: 377, baseType: !516, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2938, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2938, file: !14, line: 379, baseType: !412, size: 16, offset: 288)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !14, line: 380, baseType: !2950, size: 64, offset: 320)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2938, file: !14, line: 380, size: 64, elements: !2951)
!2951 = !{!2952, !2955}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2950, file: !14, line: 386, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2950, file: !14, line: 395, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!476, !516}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2918, file: !14, line: 1920, baseType: !2934, size: 64, offset: 320)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2918, file: !14, line: 1921, baseType: !2963, size: 64, offset: 384)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!109, !2937, !2966, !7}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2918, file: !14, line: 1923, baseType: !2969, size: 64, offset: 448)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!109, !1282, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2974)
!2974 = !{!2975, !2980}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2973, file: !14, line: 1859, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2977)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!1682, !2972, !363, !109, !686, !598, !7}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2973, file: !14, line: 1860, baseType: !686, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2918, file: !14, line: 1924, baseType: !2982, size: 64, offset: 512)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!2985, !1282, !2987}
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2986, line: 59, baseType: !7)
!2986 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !701, line: 31, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2918, file: !14, line: 1925, baseType: !2990, size: 64, offset: 576)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!480, !1282, !7, !494}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2918, file: !14, line: 1926, baseType: !2990, size: 64, offset: 640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2918, file: !14, line: 1927, baseType: !2995, size: 64, offset: 704)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!109, !1282, !2340}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2918, file: !14, line: 1928, baseType: !494, size: 64, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2918, file: !14, line: 1929, baseType: !3000, size: 64, offset: 832)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!109, !525, !1282}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2918, file: !14, line: 1930, baseType: !3004, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!109, !1282, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !516)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2918, file: !14, line: 1931, baseType: !3000, size: 64, offset: 960)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2918, file: !14, line: 1932, baseType: !3010, size: 64, offset: 1024)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!109, !1282, !686, !686, !109}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2918, file: !14, line: 1933, baseType: !3014, size: 64, offset: 1088)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!109, !109, !1282, !109}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2918, file: !14, line: 1934, baseType: !3018, size: 64, offset: 1152)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!109, !1282, !109, !3021}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2918, file: !14, line: 1935, baseType: !1279, size: 64, offset: 1216)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2918, file: !14, line: 1936, baseType: !3025, size: 64, offset: 1280)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!109, !109}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2918, file: !14, line: 1937, baseType: !3018, size: 64, offset: 1344)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2918, file: !14, line: 1938, baseType: !3030, size: 64, offset: 1408)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!476, !2224, !1282, !839, !491, !7}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2918, file: !14, line: 1939, baseType: !3034, size: 64, offset: 1472)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!476, !1282, !839, !2224, !491, !7}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2918, file: !14, line: 1940, baseType: !3038, size: 64, offset: 1536)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !1282}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2918, file: !14, line: 1941, baseType: !3042, size: 64, offset: 1600)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!109, !1282, !109, !3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2918, file: !14, line: 1942, baseType: !3048, size: 64, offset: 1664)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!480, !1282, !109, !686, !686}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2918, file: !14, line: 1944, baseType: !3052, size: 64, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !798, !1282}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2918, file: !14, line: 1948, baseType: !3056, size: 64, offset: 1792)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!476, !1282, !686, !1282, !686, !491, !7}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2918, file: !14, line: 1950, baseType: !3060, size: 64, offset: 1856)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!686, !1282, !686, !1282, !686, !686, !7}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2918, file: !14, line: 1953, baseType: !3010, size: 64, offset: 1920)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2918, file: !14, line: 1954, baseType: !3065, size: 64, offset: 1984)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!109, !3068, !7}
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2918, file: !14, line: 1955, baseType: !3071, size: 64, offset: 2048)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!109, !3068, !2966, !7}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !856, file: !14, line: 1018, baseType: !598, size: 64, offset: 1472)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !856, file: !14, line: 1020, baseType: !516, size: 64, offset: 1536)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !856, file: !14, line: 1023, baseType: !516, size: 64, offset: 1600)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !856, file: !14, line: 1027, baseType: !3078, size: 64, offset: 1664)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !856, file: !14, line: 1029, baseType: !521, size: 64, offset: 1728)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !856, file: !14, line: 1030, baseType: !3081, size: 32, offset: 1792)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3082, line: 8, baseType: !594)
!3082 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !856, file: !14, line: 1031, baseType: !3081, size: 32, offset: 1824)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !799, file: !800, line: 29, baseType: !516, size: 64, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !741, file: !14, line: 2077, baseType: !795, size: 64, offset: 1088)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !741, file: !14, line: 2078, baseType: !795, size: 64, offset: 1152)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !741, file: !14, line: 2079, baseType: !795, size: 64, offset: 1216)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !741, file: !14, line: 2081, baseType: !3089, size: 64, offset: 1280)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!476, !676, !109, !444, !491, !686}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !741, file: !14, line: 2082, baseType: !3093, size: 64, offset: 1344)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!476, !676, !109, !363, !491, !686}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !741, file: !14, line: 2083, baseType: !3097, size: 64, offset: 1408)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!3100, !525}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3128, !3129, !3130}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3102, file: !69, line: 297, baseType: !721, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3102, file: !69, line: 298, baseType: !344, size: 128, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3102, file: !69, line: 299, baseType: !344, size: 128, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3102, file: !69, line: 300, baseType: !344, size: 128, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3102, file: !69, line: 301, baseType: !810, size: 256, offset: 512)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3102, file: !69, line: 302, baseType: !374, size: 32, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3102, file: !69, line: 303, baseType: !394, size: 32, offset: 800)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3102, file: !69, line: 304, baseType: !676, size: 64, offset: 832)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3102, file: !69, line: 305, baseType: !3113, size: 64, offset: 896)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !3114)
!3114 = !{!3115, !3127}
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !69, line: 69, baseType: !3116, size: 32)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !69, line: 69, size: 32, elements: !3117)
!3117 = !{!3118, !3119, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3116, file: !69, line: 70, baseType: !531, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3116, file: !69, line: 71, baseType: !540, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3116, file: !69, line: 72, baseType: !3121, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3122, line: 24, baseType: !3123)
!3122 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3122, line: 22, size: 32, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3123, file: !3122, line: 23, baseType: !3126, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3122, line: 20, baseType: !537)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3113, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3102, file: !69, line: 306, baseType: !686, size: 64, offset: 960)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3102, file: !69, line: 307, baseType: !494, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3102, file: !69, line: 308, baseType: !3131, size: 576, offset: 1088)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !3132)
!3132 = !{!3133, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3131, file: !69, line: 206, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !688)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3131, file: !69, line: 207, baseType: !3134, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3131, file: !69, line: 208, baseType: !3134, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3131, file: !69, line: 209, baseType: !3134, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3131, file: !69, line: 210, baseType: !3134, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3131, file: !69, line: 211, baseType: !3134, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3131, file: !69, line: 212, baseType: !3134, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3131, file: !69, line: 213, baseType: !1640, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3131, file: !69, line: 214, baseType: !1640, size: 64, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !741, file: !14, line: 2085, baseType: !3144, size: 64, offset: 1472)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!480, !676, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3149, line: 15, size: 256, elements: !3150)
!3149 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3150 = !{!3151, !3152, !3153, !3154, !3155}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3148, file: !3149, line: 16, baseType: !953, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3148, file: !3149, line: 19, baseType: !109, size: 32, offset: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3148, file: !3149, line: 26, baseType: !494, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3148, file: !3149, line: 33, baseType: !494, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3148, file: !3149, line: 36, baseType: !3156, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !741, file: !14, line: 2087, baseType: !3144, size: 64, offset: 1536)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !741, file: !14, line: 2089, baseType: !711, size: 64, offset: 1600)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !677, file: !14, line: 1198, baseType: !3161, size: 64, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3163)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !3164)
!3164 = !{!3165, !3169, !3173, !3177, !3178, !3179, !3180, !3181, !3186, !3191, !3195}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3163, file: !69, line: 325, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!109, !3101}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3163, file: !69, line: 326, baseType: !3170, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!3101, !676, !109}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3163, file: !69, line: 327, baseType: !3174, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !3101}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3163, file: !69, line: 328, baseType: !3166, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3163, file: !69, line: 329, baseType: !3166, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3163, file: !69, line: 330, baseType: !3166, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3163, file: !69, line: 331, baseType: !769, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3163, file: !69, line: 334, baseType: !3182, size: 64, offset: 448)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!3185, !525}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3163, file: !69, line: 335, baseType: !3187, size: 64, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!109, !525, !3190}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3163, file: !69, line: 337, baseType: !3192, size: 64, offset: 576)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!109, !525, !3185}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3163, file: !69, line: 339, baseType: !3196, size: 64, offset: 640)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!109, !676, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !677, file: !14, line: 1199, baseType: !3201, size: 64, offset: 512)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !3204)
!3204 = !{!3205, !3211, !3212, !3216, !3217, !3218, !3233, !3256, !3260, !3261, !3284}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3203, file: !69, line: 431, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!109, !676, !109, !109, !3209}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3203, file: !69, line: 432, baseType: !769, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3203, file: !69, line: 433, baseType: !3213, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!109, !676, !7}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3203, file: !69, line: 434, baseType: !3213, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3203, file: !69, line: 435, baseType: !769, size: 64, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3203, file: !69, line: 436, baseType: !3219, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!109, !676, !109, !3222}
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !3224)
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3223, file: !69, line: 418, baseType: !109, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3223, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3223, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3223, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3223, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3223, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3223, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3223, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3203, file: !69, line: 437, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!109, !676, !3113, !3237}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3238, file: !69, line: 346, baseType: !109, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3238, file: !69, line: 347, baseType: !598, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3238, file: !69, line: 348, baseType: !598, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3238, file: !69, line: 349, baseType: !598, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3238, file: !69, line: 350, baseType: !598, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3238, file: !69, line: 351, baseType: !598, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3238, file: !69, line: 352, baseType: !598, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3238, file: !69, line: 353, baseType: !820, size: 64, offset: 448)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3238, file: !69, line: 355, baseType: !820, size: 64, offset: 512)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3238, file: !69, line: 356, baseType: !109, size: 32, offset: 576)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3238, file: !69, line: 357, baseType: !109, size: 32, offset: 608)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3238, file: !69, line: 358, baseType: !598, size: 64, offset: 640)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3238, file: !69, line: 359, baseType: !598, size: 64, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3238, file: !69, line: 360, baseType: !598, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3238, file: !69, line: 361, baseType: !820, size: 64, offset: 832)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3238, file: !69, line: 362, baseType: !109, size: 32, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3203, file: !69, line: 438, baseType: !3257, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!109, !676, !3199, !3237}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3203, file: !69, line: 440, baseType: !3234, size: 64, offset: 512)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3203, file: !69, line: 441, baseType: !3262, size: 64, offset: 576)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!109, !676, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3266, file: !69, line: 412, baseType: !7, size: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3266, file: !69, line: 413, baseType: !3270, size: 1344, offset: 64)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3271, size: 1344, elements: !445)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3283}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3271, file: !69, line: 398, baseType: !7, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3271, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3271, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3271, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3271, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3271, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3271, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3271, file: !69, line: 406, baseType: !600, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3271, file: !69, line: 407, baseType: !3282, size: 64, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !345, line: 132, baseType: !598)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3271, file: !69, line: 408, baseType: !3282, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3203, file: !69, line: 442, baseType: !3213, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !677, file: !14, line: 1200, baseType: !3286, size: 64, offset: 576)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !677, file: !14, line: 1201, baseType: !494, size: 64, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !677, file: !14, line: 1202, baseType: !494, size: 64, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !677, file: !14, line: 1203, baseType: !494, size: 64, offset: 768)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !677, file: !14, line: 1204, baseType: !560, size: 64, offset: 832)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !677, file: !14, line: 1205, baseType: !1310, size: 320, offset: 896)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !677, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !677, file: !14, line: 1207, baseType: !394, size: 32, offset: 1248)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !677, file: !14, line: 1209, baseType: !516, size: 64, offset: 1280)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !677, file: !14, line: 1211, baseType: !3298, size: 64, offset: 1344)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !677, file: !14, line: 1223, baseType: !3303, size: 64, offset: 1408)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !577, line: 34, size: 64, elements: !3304)
!3304 = !{!3305}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3303, file: !577, line: 35, baseType: !580, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !677, file: !14, line: 1224, baseType: !344, size: 128, offset: 1472)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !677, file: !14, line: 1225, baseType: !3308, size: 64, offset: 1600)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !677, file: !14, line: 1226, baseType: !3311, size: 64, offset: 1664)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !677, file: !14, line: 1227, baseType: !3314, size: 64, offset: 1728)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !677, file: !14, line: 1228, baseType: !3317, size: 64, offset: 1792)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !677, file: !14, line: 1229, baseType: !721, size: 128, offset: 1856)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !677, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !677, file: !14, line: 1231, baseType: !3322, size: 2496, offset: 2048)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3328, !3360}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3322, file: !69, line: 522, baseType: !7, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3322, file: !69, line: 523, baseType: !1310, size: 320, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3322, file: !69, line: 524, baseType: !3327, size: 192, offset: 384)
!3327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 192, elements: !445)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3322, file: !69, line: 525, baseType: !3329, size: 1728, offset: 576)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3330, size: 1728, elements: !445)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3331)
!3331 = !{!3332, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3330, file: !69, line: 223, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3335)
!3335 = !{!3336, !3337, !3350, !3351}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3334, file: !69, line: 446, baseType: !109, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3334, file: !69, line: 447, baseType: !3338, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3340, file: !69, line: 313, baseType: !769, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3340, file: !69, line: 314, baseType: !769, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3340, file: !69, line: 315, baseType: !769, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3340, file: !69, line: 316, baseType: !769, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3340, file: !69, line: 317, baseType: !3166, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3340, file: !69, line: 318, baseType: !3166, size: 64, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3340, file: !69, line: 319, baseType: !3166, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3340, file: !69, line: 320, baseType: !3196, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3334, file: !69, line: 448, baseType: !339, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3334, file: !69, line: 449, baseType: !3333, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3330, file: !69, line: 224, baseType: !109, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3330, file: !69, line: 226, baseType: !344, size: 128, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3330, file: !69, line: 227, baseType: !494, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3330, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3330, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3330, file: !69, line: 230, baseType: !3134, size: 64, offset: 384)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3330, file: !69, line: 231, baseType: !3134, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3330, file: !69, line: 232, baseType: !516, size: 64, offset: 512)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3322, file: !69, line: 526, baseType: !3361, size: 192, offset: 2304)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3338, size: 192, elements: !445)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !677, file: !14, line: 1233, baseType: !3363, size: 2368, offset: 4544)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3364)
!3364 = !{!3365, !3366, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3363, file: !14, line: 1185, baseType: !414, size: 16)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3363, file: !14, line: 1186, baseType: !414, size: 16, offset: 16)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3363, file: !14, line: 1187, baseType: !3368, size: 2304, offset: 64)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3369, size: 2304, elements: !445)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3370, line: 12, size: 768, elements: !3371)
!3370 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3371 = !{!3372, !3380, !3382, !3387, !3388}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3369, file: !3370, line: 13, baseType: !3373, size: 384)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3374, line: 17, size: 384, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3375 = !{!3376, !3377, !3378, !3379}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3373, file: !3374, line: 18, baseType: !109, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3373, file: !3374, line: 19, baseType: !109, size: 32, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3373, file: !3374, line: 20, baseType: !926, size: 192, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3373, file: !3374, line: 22, baseType: !868, size: 128, align: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3369, file: !3370, line: 14, baseType: !3381, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3369, file: !3370, line: 15, baseType: !3383, size: 64, offset: 448)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3384, line: 16, size: 64, elements: !3385)
!3384 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3385 = !{!3386}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3383, file: !3384, line: 17, baseType: !960, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3369, file: !3370, line: 16, baseType: !926, size: 192, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3369, file: !3370, line: 17, baseType: !394, size: 32, offset: 704)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !677, file: !14, line: 1240, baseType: !516, size: 64, offset: 6912)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !677, file: !14, line: 1243, baseType: !594, size: 32, offset: 6976)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !677, file: !14, line: 1245, baseType: !1640, size: 64, offset: 7040)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !677, file: !14, line: 1246, baseType: !1640, size: 64, offset: 7104)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !677, file: !14, line: 1248, baseType: !595, size: 32, offset: 7168)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !677, file: !14, line: 1249, baseType: !3395, size: 64, offset: 7232)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !677, file: !14, line: 1252, baseType: !3398, size: 256, offset: 7296)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 256, elements: !607)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !677, file: !14, line: 1253, baseType: !3400, size: 128, offset: 7552)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3401, line: 21, baseType: !3402)
!3401 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3401, line: 19, size: 128, elements: !3403)
!3403 = !{!3404}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3402, file: !3401, line: 20, baseType: !3405, size: 128)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 128, elements: !1779)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !677, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !677, file: !14, line: 1261, baseType: !810, size: 256, offset: 7744)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !677, file: !14, line: 1267, baseType: !363, size: 64, offset: 8000)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !677, file: !14, line: 1269, baseType: !623, size: 64, offset: 8064)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !677, file: !14, line: 1271, baseType: !3411, size: 448, offset: 8128)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3149, line: 63, size: 448, elements: !3412)
!3412 = !{!3413, !3418, !3419, !3420, !3421, !3422, !3423}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3411, file: !3149, line: 64, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!494, !3417, !3147}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3411, file: !3149, line: 66, baseType: !3414, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3411, file: !3149, line: 69, baseType: !480, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3411, file: !3149, line: 70, baseType: !109, size: 32, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3411, file: !3149, line: 71, baseType: !7, size: 32, offset: 224)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3411, file: !3149, line: 74, baseType: !344, size: 128, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3411, file: !3149, line: 85, baseType: !3424, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !677, file: !14, line: 1274, baseType: !814, size: 64, offset: 8576)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !677, file: !14, line: 1280, baseType: !814, size: 64, offset: 8640)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !677, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !677, file: !14, line: 1286, baseType: !3081, size: 32, offset: 8736)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !677, file: !14, line: 1289, baseType: !3430, size: 64, offset: 8768)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1432, line: 18, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !677, file: !14, line: 1290, baseType: !717, size: 64, offset: 8832)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !677, file: !14, line: 1297, baseType: !1415, size: 64, offset: 8896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !677, file: !14, line: 1304, baseType: !3435, size: 64, offset: 8960)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3436, line: 49, size: 64, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3437 = !{!3438}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3435, file: !3436, line: 50, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3436, line: 41, size: 512, align: 512, elements: !3441)
!3441 = !{!3442, !3443, !3448}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3440, file: !3436, line: 43, baseType: !374, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3440, file: !3436, line: 45, baseType: !3444, size: 192, offset: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3436, line: 29, size: 192, elements: !3445)
!3445 = !{!3446, !3447}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3444, file: !3436, line: 30, baseType: !344, size: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3444, file: !3436, line: 32, baseType: !480, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3440, file: !3436, line: 46, baseType: !480, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !677, file: !14, line: 1305, baseType: !3435, size: 64, offset: 9024)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !677, file: !14, line: 1306, baseType: !868, size: 128, align: 64, offset: 9088)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !677, file: !14, line: 1307, baseType: !1431, size: 256, offset: 9216)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !677, file: !14, line: 1309, baseType: !810, size: 256, offset: 9472)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !677, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !677, file: !14, line: 1317, baseType: !374, size: 32, align: 512, offset: 10240)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !677, file: !14, line: 1318, baseType: !344, size: 128, offset: 10304)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !677, file: !14, line: 1320, baseType: !374, size: 32, offset: 10432)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !677, file: !14, line: 1321, baseType: !344, size: 128, offset: 10496)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !671, file: !672, line: 73, baseType: !109, size: 32, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !671, file: !672, line: 74, baseType: !3460, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1608, line: 42, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !625, file: !562, line: 141, baseType: !3464, size: 64, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!109, !3209, !1682}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !625, file: !562, line: 142, baseType: !3468, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!560, !560, !3471}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !561, file: !562, line: 96, baseType: !676, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !561, file: !562, line: 97, baseType: !494, size: 64, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !561, file: !562, line: 98, baseType: !516, size: 64, offset: 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !562, line: 100, baseType: !3477, size: 128, offset: 1024)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !562, line: 100, size: 128, elements: !3478)
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3477, file: !562, line: 101, baseType: !344, size: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3477, file: !562, line: 102, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !561, file: !562, line: 104, baseType: !344, size: 128, offset: 1152)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !561, file: !562, line: 105, baseType: !344, size: 128, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !561, file: !562, line: 113, baseType: !3485, size: 128, offset: 1408)
!3485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !562, line: 109, size: 128, elements: !3486)
!3486 = !{!3487, !3488, !3489}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3485, file: !562, line: 110, baseType: !721, size: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3485, file: !562, line: 111, baseType: !576, size: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3485, file: !562, line: 112, baseType: !868, size: 128, align: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !554, file: !14, line: 1968, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!363, !560, !525, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3496, line: 10, size: 128, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3497 = !{!3498, !3502}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3495, file: !3496, line: 11, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !516}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3495, file: !3496, line: 12, baseType: !516, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !554, file: !14, line: 1969, baseType: !3504, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!109, !3460, !525, !109}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !554, file: !14, line: 1970, baseType: !3508, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!548, !525, !109, !1682}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !554, file: !14, line: 1972, baseType: !3512, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!109, !560, !444, !109}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !554, file: !14, line: 1974, baseType: !3516, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!109, !3460, !525, !560, !486, !1682}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !554, file: !14, line: 1976, baseType: !3520, size: 64, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!109, !560, !525, !560}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !554, file: !14, line: 1977, baseType: !3524, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!109, !525, !560}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !554, file: !14, line: 1978, baseType: !3528, size: 64, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!109, !3460, !525, !560, !363}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !554, file: !14, line: 1980, baseType: !3532, size: 64, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!109, !3460, !525, !560, !486}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !554, file: !14, line: 1982, baseType: !3524, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !554, file: !14, line: 1983, baseType: !3537, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!109, !3460, !525, !560, !486, !681}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !554, file: !14, line: 1985, baseType: !3541, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!109, !3460, !525, !560, !525, !560, !7}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !554, file: !14, line: 1987, baseType: !3545, size: 64, offset: 832)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!109, !3460, !560, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3563, !3572, !3573, !3578, !3579, !3580}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3549, file: !14, line: 227, baseType: !7, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3549, file: !14, line: 228, baseType: !486, size: 16, offset: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !14, line: 241, baseType: !3554, size: 32, offset: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !14, line: 241, size: 32, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3554, file: !14, line: 242, baseType: !531, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3554, file: !14, line: 243, baseType: !3558, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3559, line: 16, baseType: !3560)
!3559 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3559, line: 14, size: 32, elements: !3561)
!3561 = !{!3562}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3560, file: !3559, line: 15, baseType: !536, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !14, line: 245, baseType: !3564, size: 32, offset: 96)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !14, line: 245, size: 32, elements: !3565)
!3565 = !{!3566, !3567}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3564, file: !14, line: 246, baseType: !540, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3564, file: !14, line: 247, baseType: !3568, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3559, line: 20, baseType: !3569)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3559, line: 18, size: 32, elements: !3570)
!3570 = !{!3571}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3569, file: !3559, line: 19, baseType: !544, size: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3549, file: !14, line: 249, baseType: !686, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3549, file: !14, line: 250, baseType: !3574, size: 128, offset: 192)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1641, line: 13, size: 128, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3574, file: !1641, line: 14, baseType: !1640, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3574, file: !1641, line: 15, baseType: !480, size: 64, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3549, file: !14, line: 251, baseType: !3574, size: 128, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3549, file: !14, line: 252, baseType: !3574, size: 128, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3549, file: !14, line: 259, baseType: !1282, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !554, file: !14, line: 1988, baseType: !3582, size: 64, offset: 896)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!109, !3460, !3209, !3585, !594, !7}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3587, line: 22, size: 1280, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3586, file: !3587, line: 23, baseType: !594, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3586, file: !3587, line: 24, baseType: !486, size: 16, offset: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3586, file: !3587, line: 25, baseType: !7, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3586, file: !3587, line: 26, baseType: !1648, size: 32, offset: 96)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3586, file: !3587, line: 27, baseType: !598, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3586, file: !3587, line: 28, baseType: !598, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3586, file: !3587, line: 41, baseType: !598, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3586, file: !3587, line: 42, baseType: !681, size: 32, offset: 320)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3586, file: !3587, line: 43, baseType: !681, size: 32, offset: 352)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3586, file: !3587, line: 44, baseType: !531, size: 32, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3586, file: !3587, line: 45, baseType: !540, size: 32, offset: 416)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3586, file: !3587, line: 46, baseType: !686, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3586, file: !3587, line: 47, baseType: !3574, size: 128, offset: 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3586, file: !3587, line: 48, baseType: !3574, size: 128, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3586, file: !3587, line: 49, baseType: !3574, size: 128, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3586, file: !3587, line: 50, baseType: !3574, size: 128, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3586, file: !3587, line: 51, baseType: !598, size: 64, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3586, file: !3587, line: 52, baseType: !598, size: 64, offset: 1088)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3586, file: !3587, line: 53, baseType: !594, size: 32, offset: 1152)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3586, file: !3587, line: 54, baseType: !594, size: 32, offset: 1184)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3586, file: !3587, line: 55, baseType: !598, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !554, file: !14, line: 1990, baseType: !3611, size: 64, offset: 960)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!476, !560, !444, !491}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !554, file: !14, line: 1991, baseType: !3615, size: 64, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!109, !525, !3618, !598, !598}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !554, file: !14, line: 1993, baseType: !3621, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!109, !525, !109}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !554, file: !14, line: 1994, baseType: !3625, size: 64, offset: 1152)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!109, !525, !560, !1282, !7, !486}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !554, file: !14, line: 1997, baseType: !3629, size: 64, offset: 1216)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!109, !3460, !525, !1282, !486}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !554, file: !14, line: 1999, baseType: !3633, size: 64, offset: 1280)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!548, !3460, !560, !109}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !554, file: !14, line: 2001, baseType: !3637, size: 64, offset: 1344)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!109, !3460, !560, !548, !109}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !554, file: !14, line: 2003, baseType: !3641, size: 64, offset: 1408)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!109, !3460, !560, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !554, file: !14, line: 2005, baseType: !3647, size: 64, offset: 1472)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!109, !560, !3644}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !554, file: !14, line: 2006, baseType: !3651, size: 64, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!3654, !525}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3655, file: !14, line: 3193, baseType: !948, size: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3655, file: !14, line: 3194, baseType: !594, size: 32, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !526, file: !14, line: 655, baseType: !676, size: 64, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !526, file: !14, line: 656, baseType: !521, size: 64, offset: 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !526, file: !14, line: 659, baseType: !516, size: 64, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !526, file: !14, line: 663, baseType: !494, size: 64, offset: 640)
!3663 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !14, line: 671, baseType: !3664, size: 32, offset: 704)
!3664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !14, line: 671, size: 32, elements: !3665)
!3665 = !{!3666, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3664, file: !14, line: 672, baseType: !3667, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3664, file: !14, line: 673, baseType: !7, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !526, file: !14, line: 675, baseType: !681, size: 32, offset: 736)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !526, file: !14, line: 676, baseType: !686, size: 64, offset: 768)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !526, file: !14, line: 677, baseType: !3574, size: 128, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !526, file: !14, line: 678, baseType: !3574, size: 128, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !526, file: !14, line: 679, baseType: !3574, size: 128, offset: 1088)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !526, file: !14, line: 680, baseType: !374, size: 32, offset: 1216)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !526, file: !14, line: 681, baseType: !414, size: 16, offset: 1248)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !526, file: !14, line: 682, baseType: !402, size: 8, offset: 1264)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !526, file: !14, line: 683, baseType: !402, size: 8, offset: 1272)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !526, file: !14, line: 684, baseType: !3282, size: 64, offset: 1280)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !526, file: !14, line: 691, baseType: !494, size: 64, offset: 1344)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !526, file: !14, line: 692, baseType: !1310, size: 320, offset: 1408)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !526, file: !14, line: 694, baseType: !494, size: 64, offset: 1728)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !526, file: !14, line: 695, baseType: !494, size: 64, offset: 1792)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !526, file: !14, line: 697, baseType: !721, size: 128, offset: 1856)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !526, file: !14, line: 698, baseType: !344, size: 128, offset: 1984)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !526, file: !14, line: 707, baseType: !344, size: 128, offset: 2112)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !526, file: !14, line: 708, baseType: !344, size: 128, offset: 2240)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !14, line: 709, baseType: !3688, size: 128, offset: 2368)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !14, line: 709, size: 128, elements: !3689)
!3689 = !{!3690, !3691}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3688, file: !14, line: 710, baseType: !717, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3688, file: !14, line: 711, baseType: !868, size: 128, align: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !526, file: !14, line: 713, baseType: !816, size: 64, offset: 2496)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !526, file: !14, line: 714, baseType: !816, size: 64, offset: 2560)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !526, file: !14, line: 715, baseType: !394, size: 32, offset: 2624)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !526, file: !14, line: 716, baseType: !394, size: 32, offset: 2656)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !526, file: !14, line: 717, baseType: !394, size: 32, offset: 2688)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !526, file: !14, line: 719, baseType: !394, size: 32, offset: 2720)
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !14, line: 721, baseType: !3699, size: 64, offset: 2752)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !14, line: 721, size: 64, elements: !3700)
!3700 = !{!3701, !3702}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3699, file: !14, line: 722, baseType: !2916, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3699, file: !14, line: 723, baseType: !748, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !526, file: !14, line: 725, baseType: !3704, size: 64, offset: 2816)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !526, file: !14, line: 726, baseType: !522, size: 1536, align: 64, offset: 2880)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !526, file: !14, line: 727, baseType: !344, size: 128, offset: 4416)
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !14, line: 728, baseType: !3709, size: 64, offset: 4544)
!3709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !14, line: 728, size: 64, elements: !3710)
!3710 = !{!3711, !3712, !3715, !3716}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3709, file: !14, line: 729, baseType: !2224, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3709, file: !14, line: 730, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3709, file: !14, line: 731, baseType: !444, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3709, file: !14, line: 732, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !526, file: !14, line: 735, baseType: !595, size: 32, offset: 4608)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !526, file: !14, line: 738, baseType: !595, size: 32, offset: 4640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !526, file: !14, line: 739, baseType: !3395, size: 64, offset: 4672)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !526, file: !14, line: 750, baseType: !516, size: 64, offset: 4736)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !522, file: !14, line: 474, baseType: !948, size: 128, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !522, file: !14, line: 475, baseType: !1310, size: 320, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !522, file: !14, line: 476, baseType: !953, size: 32, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !522, file: !14, line: 477, baseType: !394, size: 32, offset: 544)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !522, file: !14, line: 482, baseType: !1138, size: 128, offset: 576)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !522, file: !14, line: 483, baseType: !494, size: 64, offset: 704)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !522, file: !14, line: 484, baseType: !494, size: 64, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !522, file: !14, line: 485, baseType: !3729, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3731)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3732)
!3732 = !{!3733, !3737, !3807, !3811, !3815, !3821, !3825, !3829, !3834, !3838, !3842, !3846, !3847, !3851, !3855, !3859, !3864, !3868, !3875, !3876}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3731, file: !14, line: 405, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!109, !2230, !760}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3731, file: !14, line: 406, baseType: !3738, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!109, !1282, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3743)
!3743 = !{!3744, !3774, !3788}
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !38, line: 295, baseType: !3745, size: 512)
!3745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3742, file: !38, line: 295, size: 512, elements: !3746)
!3746 = !{!3747, !3773}
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !3745, file: !38, line: 296, baseType: !3748, size: 448)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3745, file: !38, line: 296, size: 448, elements: !3749)
!3749 = !{!3750, !3751, !3760, !3761, !3762, !3771, !3772}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3748, file: !38, line: 298, baseType: !494, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !3748, file: !38, line: 299, baseType: !3752, size: 128, offset: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3748, file: !38, line: 299, size: 128, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3752, file: !38, line: 300, baseType: !344, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !3752, file: !38, line: 302, baseType: !3756, size: 128)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3752, file: !38, line: 302, size: 128, elements: !3757)
!3757 = !{!3758, !3759}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3756, file: !38, line: 303, baseType: !516, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3756, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3748, file: !38, line: 310, baseType: !521, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3748, file: !38, line: 311, baseType: !494, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3748, file: !38, line: 312, baseType: !3763, size: 64, offset: 320)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3748, file: !38, line: 312, size: 64, elements: !3764)
!3764 = !{!3765, !3766}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3763, file: !38, line: 313, baseType: !516, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3763, file: !38, line: 314, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3768)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3769)
!3769 = !{!3770}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3768, file: !38, line: 256, baseType: !494, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3748, file: !38, line: 316, baseType: !394, size: 32, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3748, file: !38, line: 317, baseType: !394, size: 32, offset: 416)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3745, file: !38, line: 323, baseType: !2231, size: 512, align: 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !38, line: 325, baseType: !3775, size: 512, offset: 512)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3742, file: !38, line: 325, size: 512, elements: !3776)
!3776 = !{!3777, !3787}
!3777 = !DIDerivedType(tag: DW_TAG_member, scope: !3775, file: !38, line: 326, baseType: !3778, size: 320)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3775, file: !38, line: 326, size: 320, elements: !3779)
!3779 = !{!3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3778, file: !38, line: 327, baseType: !494, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3778, file: !38, line: 328, baseType: !494, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3778, file: !38, line: 329, baseType: !494, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3778, file: !38, line: 331, baseType: !394, size: 32, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3778, file: !38, line: 332, baseType: !394, size: 32, offset: 224)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3778, file: !38, line: 333, baseType: !394, size: 32, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3778, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3775, file: !38, line: 339, baseType: !2231, size: 512, align: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !38, line: 341, baseType: !3789, size: 512, offset: 1024)
!3789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3742, file: !38, line: 341, size: 512, elements: !3790)
!3790 = !{!3791, !3800, !3806}
!3791 = !DIDerivedType(tag: DW_TAG_member, scope: !3789, file: !38, line: 342, baseType: !3792, size: 384)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3789, file: !38, line: 342, size: 384, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3792, file: !38, line: 343, baseType: !494, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3792, file: !38, line: 344, baseType: !494, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3792, file: !38, line: 346, baseType: !516, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3792, file: !38, line: 347, baseType: !516, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3792, file: !38, line: 348, baseType: !516, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3792, file: !38, line: 349, baseType: !516, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, scope: !3789, file: !38, line: 352, baseType: !3801, size: 256)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3789, file: !38, line: 352, size: 256, elements: !3802)
!3802 = !{!3803, !3804, !3805}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3801, file: !38, line: 353, baseType: !494, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3801, file: !38, line: 354, baseType: !494, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3801, file: !38, line: 356, baseType: !344, size: 128, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3789, file: !38, line: 359, baseType: !2231, size: 512, align: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3731, file: !14, line: 409, baseType: !3808, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!109, !521, !760}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3731, file: !14, line: 412, baseType: !3812, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!1682, !521, !3741}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3731, file: !14, line: 414, baseType: !3816, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3819}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3731, file: !14, line: 416, baseType: !3822, size: 64, offset: 320)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!109, !1282, !521, !686, !7, !2627, !3046}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3731, file: !14, line: 419, baseType: !3826, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!109, !1282, !521, !686, !7, !7, !2230, !516}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3731, file: !14, line: 424, baseType: !3830, size: 64, offset: 448)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!3833, !521, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !345, line: 131, baseType: !598)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3731, file: !14, line: 425, baseType: !3835, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3741, !491, !491}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3731, file: !14, line: 426, baseType: !3839, size: 64, offset: 576)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!1682, !3741, !953}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3731, file: !14, line: 427, baseType: !3843, size: 64, offset: 640)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !3741}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3731, file: !14, line: 428, baseType: !2934, size: 64, offset: 704)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3731, file: !14, line: 433, baseType: !3848, size: 64, offset: 768)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!109, !521, !3741, !3741, !74}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3731, file: !14, line: 435, baseType: !3852, size: 64, offset: 832)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!109, !3741}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3731, file: !14, line: 436, baseType: !3856, size: 64, offset: 896)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!1682, !3741, !491, !491}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3731, file: !14, line: 438, baseType: !3860, size: 64, offset: 960)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !3741, !3863, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3731, file: !14, line: 439, baseType: !3865, size: 64, offset: 1024)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!109, !521, !2230}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3731, file: !14, line: 442, baseType: !3869, size: 64, offset: 1088)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!109, !3872, !1282, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3731, file: !14, line: 444, baseType: !3038, size: 64, offset: 1152)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3731, file: !14, line: 445, baseType: !3877, size: 64, offset: 1216)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!109, !2937, !2959}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !14, line: 486, baseType: !494, size: 64, offset: 896)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !522, file: !14, line: 487, baseType: !1310, size: 320, offset: 960)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !522, file: !14, line: 488, baseType: !3081, size: 32, offset: 1280)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !522, file: !14, line: 489, baseType: !374, size: 32, offset: 1312)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !522, file: !14, line: 490, baseType: !344, size: 128, offset: 1344)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !522, file: !14, line: 491, baseType: !516, size: 64, offset: 1472)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !511, file: !470, line: 180, baseType: !3887, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!476, !1282, !367, !510, !444, !686, !491}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !511, file: !470, line: 182, baseType: !3887, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !511, file: !470, line: 184, baseType: !3892, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!109, !1282, !367, !510, !2340}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !499, file: !470, line: 90, baseType: !3896, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !499, file: !470, line: 91, baseType: !3898, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !460, file: !360, line: 120, baseType: !3900, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!3903, !427}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3906)
!3906 = !{!3907, !3908, !3912, !3916, !3922, !3926}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3905, file: !82, line: 40, baseType: !81, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3905, file: !82, line: 41, baseType: !3909, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!1682}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3905, file: !82, line: 42, baseType: !3913, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!516}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3905, file: !82, line: 43, baseType: !3917, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!1389, !3920}
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3905, file: !82, line: 44, baseType: !3923, size: 64, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!1389}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3905, file: !82, line: 45, baseType: !3499, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !460, file: !360, line: 121, baseType: !3928, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!1389, !427}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !460, file: !360, line: 122, baseType: !3932, size: 64, offset: 320)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !427, !3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !359, file: !360, line: 70, baseType: !3938, size: 64, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !701, line: 190, size: 1152, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !4020, !4021, !4022, !4023, !4024, !4027}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3939, file: !701, line: 191, baseType: !394, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3939, file: !701, line: 192, baseType: !394, size: 32, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3939, file: !701, line: 202, baseType: !3938, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3939, file: !701, line: 203, baseType: !363, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3939, file: !701, line: 205, baseType: !1009, size: 192, align: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3939, file: !701, line: 207, baseType: !1389, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3939, file: !701, line: 208, baseType: !7, size: 32, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3939, file: !701, line: 209, baseType: !3949, size: 256, offset: 512)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3939, file: !701, line: 209, size: 256, elements: !3950)
!3950 = !{!3951, !3960, !3964}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3949, file: !701, line: 210, baseType: !3952, size: 256)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !701, line: 153, size: 256, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3959}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3952, file: !701, line: 154, baseType: !494, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3952, file: !701, line: 156, baseType: !1141, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3952, file: !701, line: 162, baseType: !3957, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !701, line: 162, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3952, file: !701, line: 167, baseType: !494, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3949, file: !701, line: 211, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !701, line: 170, size: 64, elements: !3962)
!3962 = !{!3963}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3961, file: !701, line: 171, baseType: !3938, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3949, file: !701, line: 212, baseType: !3965, size: 256)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !701, line: 174, size: 256, elements: !3966)
!3966 = !{!3967, !4015, !4018, !4019}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3965, file: !701, line: 175, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !701, line: 271, size: 768, elements: !3971)
!3971 = !{!3972, !3992, !3996, !3997, !3998, !3999, !4000, !4004, !4005, !4006, !4007, !4011}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3970, file: !701, line: 276, baseType: !3973, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!109, !3976}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !701, line: 251, size: 1216, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3977, file: !701, line: 253, baseType: !3938, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3977, file: !701, line: 254, baseType: !1282, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3977, file: !701, line: 255, baseType: !798, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3977, file: !701, line: 256, baseType: !516, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3977, file: !701, line: 259, baseType: !810, size: 256, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3977, file: !701, line: 260, baseType: !810, size: 256, offset: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3977, file: !701, line: 261, baseType: !109, size: 32, offset: 768)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3977, file: !701, line: 262, baseType: !344, size: 128, offset: 832)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3977, file: !701, line: 263, baseType: !444, size: 64, offset: 960)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3977, file: !701, line: 265, baseType: !491, size: 64, offset: 1024)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3977, file: !701, line: 266, baseType: !1682, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3977, file: !701, line: 267, baseType: !1682, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3977, file: !701, line: 268, baseType: !2383, size: 64, offset: 1152)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3970, file: !701, line: 277, baseType: !3993, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3976}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3970, file: !701, line: 290, baseType: !849, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3970, file: !701, line: 292, baseType: !836, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3970, file: !701, line: 293, baseType: !845, size: 64, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3970, file: !701, line: 294, baseType: !841, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3970, file: !701, line: 296, baseType: !4001, size: 64, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!476, !3976, !444, !491, !686}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3970, file: !701, line: 306, baseType: !491, size: 64, offset: 448)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3970, file: !701, line: 313, baseType: !1682, size: 8, offset: 512)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3970, file: !701, line: 314, baseType: !4001, size: 64, offset: 576)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3970, file: !701, line: 317, baseType: !4008, size: 64, offset: 640)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!2985, !3976, !2987}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3970, file: !701, line: 320, baseType: !4012, size: 64, offset: 704)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!109, !3976, !2340}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3965, file: !701, line: 176, baseType: !4016, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !701, line: 35, flags: DIFlagFwdDecl)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3965, file: !701, line: 177, baseType: !686, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3965, file: !701, line: 178, baseType: !3938, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3939, file: !701, line: 215, baseType: !516, size: 64, offset: 768)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3939, file: !701, line: 221, baseType: !598, size: 64, offset: 832)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3939, file: !701, line: 223, baseType: !414, size: 16, offset: 896)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3939, file: !701, line: 224, baseType: !486, size: 16, offset: 912)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3939, file: !701, line: 225, baseType: !4025, size: 64, offset: 960)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !701, line: 36, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3939, file: !701, line: 227, baseType: !868, size: 128, align: 64, offset: 1024)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !359, file: !360, line: 71, baseType: !4029, size: 32, offset: 448)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4030, line: 19, size: 32, elements: !4031)
!4030 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4031 = !{!4032}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4029, file: !4030, line: 20, baseType: !913, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !359, file: !360, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !359, file: !360, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !359, file: !360, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !359, file: !360, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !359, file: !360, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !356, file: !6, line: 47, baseType: !339, size: 64, offset: 512)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !356, file: !6, line: 48, baseType: !367, size: 64, offset: 576)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !356, file: !6, line: 49, baseType: !4041, size: 64, offset: 640)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !356, file: !6, line: 50, baseType: !1543, size: 64, offset: 704)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !340, file: !6, line: 418, baseType: !4045, size: 64, offset: 1408)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4047)
!4047 = !{!4048, !4049, !4054, !4058, !4062, !4066}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4046, file: !6, line: 54, baseType: !482, size: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4046, file: !6, line: 55, baseType: !4050, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!476, !4045, !4053, !444}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4046, file: !6, line: 57, baseType: !4055, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!476, !4045, !4053, !363, !491}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4046, file: !6, line: 59, baseType: !4059, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !339, !363}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4046, file: !6, line: 60, baseType: !4063, size: 64, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!109, !339}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4046, file: !6, line: 61, baseType: !4067, size: 64, offset: 384)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !339}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !340, file: !6, line: 419, baseType: !363, size: 64, offset: 1472)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !340, file: !6, line: 420, baseType: !363, size: 64, offset: 1536)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !340, file: !6, line: 421, baseType: !367, size: 64, offset: 1600)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !340, file: !6, line: 424, baseType: !4074, size: 64, offset: 1664)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4076)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !340, file: !6, line: 425, baseType: !4078, size: 64, offset: 1728)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !340, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !340, file: !6, line: 435, baseType: !810, size: 256, offset: 1856)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !340, file: !6, line: 437, baseType: !4083, size: 64, offset: 2112)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4085, line: 69, size: 320, elements: !4086)
!4085 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4086 = !{!4087, !4088, !4089, !4106, !4108, !4112, !4113}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4084, file: !4085, line: 70, baseType: !363, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4084, file: !4085, line: 71, baseType: !339, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4084, file: !4085, line: 72, baseType: !4090, size: 64, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4092)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4085, line: 47, size: 256, elements: !4093)
!4093 = !{!4094, !4095, !4101, !4105}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4092, file: !4085, line: 49, baseType: !7, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4092, file: !4085, line: 51, baseType: !4096, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!109, !363, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4092, file: !4085, line: 53, baseType: !4102, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!109, !444, !4099}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4092, file: !4085, line: 55, baseType: !3499, size: 64, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4084, file: !4085, line: 73, baseType: !4107, size: 16, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4084, file: !4085, line: 74, baseType: !4109, size: 8, offset: 208)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !403, line: 16, baseType: !4110)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !405, line: 20, baseType: !4111)
!4111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4084, file: !4085, line: 75, baseType: !402, size: 8, offset: 216)
!4113 = !DIDerivedType(tag: DW_TAG_member, scope: !4084, file: !4085, line: 76, baseType: !4114, size: 64, offset: 256)
!4114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4084, file: !4085, line: 76, size: 64, elements: !4115)
!4115 = !{!4116, !4117, !4124}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4114, file: !4085, line: 77, baseType: !516, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4114, file: !4085, line: 78, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4085, line: 86, size: 128, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4120, file: !4085, line: 87, baseType: !7, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4120, file: !4085, line: 88, baseType: !444, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4114, file: !4085, line: 79, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4085, line: 92, size: 256, elements: !4128)
!4128 = !{!4129, !4130, !4131, !4132, !4133}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4127, file: !4085, line: 94, baseType: !7, size: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4127, file: !4085, line: 95, baseType: !7, size: 32, offset: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4127, file: !4085, line: 96, baseType: !3381, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4127, file: !4085, line: 97, baseType: !4090, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4127, file: !4085, line: 98, baseType: !516, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !340, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !340, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !340, file: !6, line: 442, baseType: !4074, size: 64, offset: 2240)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !340, file: !6, line: 443, baseType: !4078, size: 64, offset: 2304)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !340, file: !6, line: 444, baseType: !1682, size: 8, offset: 2368)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !340, file: !6, line: 451, baseType: !1682, size: 8, offset: 2376)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !340, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !340, file: !6, line: 455, baseType: !4142, size: 64, offset: 2432)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4144, line: 23, size: 96, elements: !4145)
!4144 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4145 = !{!4146, !4147, !4148}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4143, file: !4144, line: 24, baseType: !109, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4143, file: !4144, line: 24, baseType: !109, size: 32, offset: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4143, file: !4144, line: 24, baseType: !109, size: 32, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !340, file: !6, line: 458, baseType: !4150, size: 64, offset: 2496)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!109}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !340, file: !6, line: 460, baseType: !4154, size: 4032, align: 512, offset: 2560)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4155, size: 4032, elements: !4169)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4156)
!4156 = !{!4157, !4158, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4155, file: !6, line: 363, baseType: !516, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4155, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4155, file: !6, line: 367, baseType: !4160, size: 448, offset: 128)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4161)
!4161 = !{!4162, !4163}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4160, file: !6, line: 320, baseType: !339, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4160, file: !6, line: 321, baseType: !4164, size: 384, offset: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4165, line: 40, size: 384, elements: !4166)
!4165 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4166 = !{!4167}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4164, file: !4165, line: 41, baseType: !4168, size: 384, align: 64)
!4168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, size: 384, align: 64, elements: !1883)
!4169 = !{!4170}
!4170 = !DISubrange(count: 7)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !340, file: !6, line: 463, baseType: !4172, size: 192, offset: 6592)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4173, line: 8, size: 192, elements: !4174)
!4173 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4174 = !{!4175, !4176, !4177}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4172, file: !4173, line: 10, baseType: !7, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4172, file: !4173, line: 11, baseType: !792, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4172, file: !4173, line: 12, baseType: !4178, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4180, line: 59, size: 48, elements: !4181)
!4180 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4181 = !{!4182, !4183, !4184, !4185, !4186, !4187}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4179, file: !4180, line: 60, baseType: !1406, size: 16)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4179, file: !4180, line: 61, baseType: !1406, size: 16, offset: 16)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4179, file: !4180, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4179, file: !4180, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4179, file: !4180, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4179, file: !4180, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !340, file: !6, line: 465, baseType: !494, size: 64, offset: 6784)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !340, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !340, file: !6, line: 470, baseType: !344, size: 128, offset: 6912)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !340, file: !6, line: 471, baseType: !4192, size: 64, offset: 7040)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4194, line: 33, size: 96, elements: !4195)
!4194 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4195 = !{!4196, !4197, !4198, !4199}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4193, file: !4194, line: 37, baseType: !109, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4193, file: !4194, line: 43, baseType: !109, size: 32, offset: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4193, file: !4194, line: 45, baseType: !414, size: 16, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4193, file: !4194, line: 47, baseType: !414, size: 16, offset: 80)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !340, file: !6, line: 476, baseType: !4201, size: 64, offset: 7104)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4203)
!4203 = !{!4204, !4220, !4221, !4222}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4202, file: !6, line: 379, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4207, line: 204, baseType: !4208)
!4207 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4207, line: 197, size: 192, elements: !4209)
!4209 = !{!4210, !4212, !4213, !4214, !4216, !4218}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4208, file: !4207, line: 198, baseType: !4211, size: 32)
!4211 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4207, line: 21, baseType: !595)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4208, file: !4207, line: 199, baseType: !406, size: 8, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4208, file: !4207, line: 200, baseType: !406, size: 8, offset: 40)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4208, file: !4207, line: 201, baseType: !4215, size: 16, offset: 48)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4207, line: 17, baseType: !413)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4208, file: !4207, line: 202, baseType: !4217, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4207, line: 16, baseType: !599)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4208, file: !4207, line: 203, baseType: !4219, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4207, line: 22, baseType: !599)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4202, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4202, file: !6, line: 381, baseType: !444, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4202, file: !6, line: 382, baseType: !444, size: 64, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !340, file: !6, line: 477, baseType: !4202, size: 256, offset: 7168)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !340, file: !6, line: 480, baseType: !4225, size: 64, offset: 7424)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !340, file: !6, line: 483, baseType: !4228, size: 64, offset: 7488)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !340, file: !6, line: 488, baseType: !444, size: 64, offset: 7552)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !340, file: !6, line: 492, baseType: !516, size: 64, offset: 7616)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !340, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !340, file: !6, line: 495, baseType: !516, size: 64, offset: 7744)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !340, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !340, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !340, file: !6, line: 500, baseType: !4237, size: 64, offset: 7872)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4239, line: 45, baseType: !4240)
!4239 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !340, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !340, file: !6, line: 504, baseType: !4243, size: 64, offset: 8000)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4246, line: 96, size: 192, elements: !4247)
!4246 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4247 = !{!4248, !4249, !4292, !4294}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4245, file: !4246, line: 97, baseType: !7, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4245, file: !4246, line: 98, baseType: !4250, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4246, line: 24, size: 3072, elements: !4252)
!4252 = !{!4253, !4255, !4256, !4257, !4258, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4289, !4290, !4291}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4251, file: !4246, line: 26, baseType: !4254, size: 128)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 128, elements: !1883)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4251, file: !4246, line: 27, baseType: !4254, size: 128, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4251, file: !4246, line: 28, baseType: !109, size: 32, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4251, file: !4246, line: 31, baseType: !374, size: 32, align: 512, offset: 512)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4251, file: !4246, line: 32, baseType: !4259, size: 960, offset: 576)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4260, line: 206, size: 960, elements: !4261)
!4260 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4261 = !{!4262, !4263, !4266, !4268, !4269, !4271}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4259, file: !4260, line: 207, baseType: !871, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4259, file: !4260, line: 208, baseType: !4264, size: 256, offset: 64)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4265, size: 256, elements: !922)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4259, file: !4260, line: 209, baseType: !4267, size: 256, offset: 320)
!4267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 256, elements: !922)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4259, file: !4260, line: 213, baseType: !480, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4259, file: !4260, line: 215, baseType: !4270, size: 256, offset: 640)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 256, elements: !922)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4259, file: !4260, line: 216, baseType: !402, size: 8, offset: 896)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4251, file: !4246, line: 33, baseType: !494, size: 64, offset: 1536)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4251, file: !4246, line: 34, baseType: !494, size: 64, offset: 1600)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4251, file: !4246, line: 35, baseType: !1682, size: 8, offset: 1664)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4251, file: !4246, line: 36, baseType: !2606, size: 320, offset: 1728)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4251, file: !4246, line: 37, baseType: !1431, size: 256, offset: 2048)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4251, file: !4246, line: 38, baseType: !868, size: 128, align: 64, offset: 2304)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4251, file: !4246, line: 39, baseType: !4279, size: 64, offset: 2432)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4246, line: 49, size: 768, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287, !4288}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4280, file: !4246, line: 50, baseType: !374, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4280, file: !4246, line: 51, baseType: !4267, size: 256, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4280, file: !4246, line: 53, baseType: !4267, size: 256, offset: 320)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4280, file: !4246, line: 54, baseType: !494, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4280, file: !4246, line: 55, baseType: !4279, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4280, file: !4246, line: 56, baseType: !109, size: 32, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4280, file: !4246, line: 57, baseType: !109, size: 32, offset: 736)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4251, file: !4246, line: 40, baseType: !494, size: 64, offset: 2496)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4251, file: !4246, line: 42, baseType: !109, size: 32, offset: 2560)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4251, file: !4246, line: 43, baseType: !4244, size: 64, offset: 2624)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4245, file: !4246, line: 99, baseType: !4293, offset: 128)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !728, line: 211, elements: !729)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4245, file: !4246, line: 100, baseType: !4295, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4246, line: 63, size: 3008, elements: !4297)
!4297 = !{!4298, !4299, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4327}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4296, file: !4246, line: 64, baseType: !4279, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4296, file: !4246, line: 65, baseType: !4300, size: 192, offset: 64)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4279, size: 192, elements: !445)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4296, file: !4246, line: 67, baseType: !109, size: 32, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4296, file: !4246, line: 68, baseType: !810, size: 256, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4296, file: !4246, line: 69, baseType: !374, size: 32, offset: 576)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4296, file: !4246, line: 70, baseType: !810, size: 256, offset: 640)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4296, file: !4246, line: 71, baseType: !494, size: 64, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4296, file: !4246, line: 72, baseType: !494, size: 64, offset: 960)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4296, file: !4246, line: 73, baseType: !494, size: 64, offset: 1024)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4296, file: !4246, line: 74, baseType: !494, size: 64, offset: 1088)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4296, file: !4246, line: 75, baseType: !494, size: 64, offset: 1152)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4296, file: !4246, line: 76, baseType: !494, size: 64, offset: 1216)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4296, file: !4246, line: 77, baseType: !494, size: 64, offset: 1280)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4296, file: !4246, line: 78, baseType: !494, size: 64, offset: 1344)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4296, file: !4246, line: 79, baseType: !1682, size: 8, offset: 1408)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4296, file: !4246, line: 80, baseType: !494, size: 64, offset: 1472)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4296, file: !4246, line: 81, baseType: !810, size: 256, offset: 1536)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4296, file: !4246, line: 82, baseType: !1544, size: 256, offset: 1792)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4296, file: !4246, line: 84, baseType: !394, size: 32, offset: 2048)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4296, file: !4246, line: 87, baseType: !494, size: 64, offset: 2112)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4296, file: !4246, line: 88, baseType: !494, size: 64, offset: 2176)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4296, file: !4246, line: 89, baseType: !4321, size: 704, offset: 2240)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1432, line: 111, size: 704, elements: !4322)
!4322 = !{!4323, !4324, !4325, !4326}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4321, file: !1432, line: 112, baseType: !1431, size: 256)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4321, file: !1432, line: 113, baseType: !2606, size: 320, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4321, file: !1432, line: 116, baseType: !3430, size: 64, offset: 576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4321, file: !1432, line: 117, baseType: !109, size: 32, offset: 640)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4296, file: !4246, line: 90, baseType: !4244, size: 64, offset: 2944)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !340, file: !6, line: 515, baseType: !4329, size: 64, offset: 8064)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4331, line: 117, size: 128, elements: !4332)
!4331 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4332 = !{!4333, !4334, !4335}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4330, file: !4331, line: 118, baseType: !1356, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4330, file: !4331, line: 119, baseType: !1356, size: 32, offset: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4330, file: !4331, line: 120, baseType: !480, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !340, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !340, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !340, file: !6, line: 520, baseType: !4339, size: 64, offset: 8192)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !340, file: !6, line: 523, baseType: !4341, size: 64, offset: 8256)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !340, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !340, file: !6, line: 525, baseType: !4346, size: 64, offset: 8384)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !340, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !340, file: !6, line: 533, baseType: !516, size: 64, offset: 8512)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !340, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !340, file: !6, line: 535, baseType: !4353, size: 64, offset: 8640)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !340, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !340, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !340, file: !6, line: 540, baseType: !4357, size: 64, offset: 8768)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4359, line: 32, size: 64, elements: !4360)
!4359 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4360 = !{!4361, !4362}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4358, file: !4359, line: 33, baseType: !1356, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4358, file: !4359, line: 34, baseType: !1356, size: 32, offset: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !340, file: !6, line: 563, baseType: !344, size: 128, offset: 8832)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !340, file: !6, line: 565, baseType: !344, size: 128, offset: 8960)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !340, file: !6, line: 568, baseType: !4366, size: 64, offset: 9088)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !340, file: !6, line: 570, baseType: !394, size: 32, offset: 9152)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object_vram", file: !4370, line: 105, size: 4992, elements: !4371)
!4370 = !DIFile(filename: "drivers/gpu/drm/virtio/virtgpu_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b84e5b532070663ed6372606d1c7820a")
!4371 = !{!4372, !6430, !6431, !6432}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4369, file: !4370, line: 106, baseType: !4373, size: 3584)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object", file: !4370, line: 87, size: 3584, elements: !4374)
!4374 = !{!4375, !6421, !6422, !6423, !6424, !6425, !6426, !6427, !6428, !6429}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4373, file: !4370, line: 88, baseType: !4376, size: 3264)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_shmem_object", file: !4377, line: 23, size: 3264, elements: !4378)
!4377 = !DIFile(filename: "./include/drm/drm_gem_shmem_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f80439fb30dfb375861e4726784d3d")
!4378 = !{!4379, !6411, !6412, !6413, !6414, !6415, !6416, !6417, !6418, !6419, !6420}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4376, file: !4377, line: 27, baseType: !4380, size: 2816)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !142, line: 264, size: 2816, elements: !4381)
!4381 = !{!4382, !4383, !4384, !6320, !6321, !6328, !6329, !6330, !6331, !6332, !6341, !6342, !6346, !6402, !6403}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4380, file: !142, line: 274, baseType: !4029, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !4380, file: !142, line: 287, baseType: !7, size: 32, offset: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4380, file: !142, line: 292, baseType: !4385, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !317, line: 50, size: 12736, elements: !4387)
!4387 = !{!4388, !4389, !4390, !4856, !4862, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !6271, !6272, !6273, !6311, !6314, !6315, !6318, !6319}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !4386, file: !317, line: 52, baseType: !109, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4386, file: !317, line: 55, baseType: !4029, size: 32, offset: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4386, file: !317, line: 58, baseType: !4391, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4399, !4400, !4453, !4538, !4539, !4540, !4541, !4542, !4549, !4641, !4654, !4664, !4668, !4670, !4671, !4672, !4676, !4683, !4684, !4687, !4690, !4694, !4798, !4799, !4800, !4801, !4802, !4803, !4833, !4834, !4835, !4838, !4841, !4850, !4851, !4852, !4853, !4854, !4855}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4392, file: !94, line: 706, baseType: !359, size: 512)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4392, file: !94, line: 707, baseType: !4391, size: 64, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4392, file: !94, line: 709, baseType: !4397, size: 64, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4392, file: !94, line: 711, baseType: !363, size: 64, offset: 640)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4392, file: !94, line: 712, baseType: !4401, size: 64, offset: 704)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4403)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4404)
!4404 = !{!4405, !4406, !4407, !4413, !4418, !4422}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4403, file: !94, line: 90, baseType: !363, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4403, file: !94, line: 91, baseType: !496, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4403, file: !94, line: 92, baseType: !4408, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!109, !4411, !439}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4392)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4403, file: !94, line: 93, baseType: !4414, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!444, !4411, !4417, !3935, !3936}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4403, file: !94, line: 95, baseType: !4419, size: 64, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{null, !4391}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4403, file: !94, line: 97, baseType: !4423, size: 64, offset: 320)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4426)
!4426 = !{!4427, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4425, file: !101, line: 287, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!109, !4391}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4425, file: !101, line: 288, baseType: !4419, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4425, file: !101, line: 289, baseType: !4428, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4425, file: !101, line: 290, baseType: !4428, size: 64, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4425, file: !101, line: 291, baseType: !4428, size: 64, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4425, file: !101, line: 292, baseType: !4428, size: 64, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4425, file: !101, line: 293, baseType: !4428, size: 64, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4425, file: !101, line: 294, baseType: !4428, size: 64, offset: 448)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4425, file: !101, line: 295, baseType: !4428, size: 64, offset: 512)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4425, file: !101, line: 296, baseType: !4428, size: 64, offset: 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4425, file: !101, line: 297, baseType: !4428, size: 64, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4425, file: !101, line: 298, baseType: !4428, size: 64, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4425, file: !101, line: 299, baseType: !4428, size: 64, offset: 768)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4425, file: !101, line: 300, baseType: !4428, size: 64, offset: 832)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4425, file: !101, line: 301, baseType: !4428, size: 64, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4425, file: !101, line: 302, baseType: !4428, size: 64, offset: 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4425, file: !101, line: 303, baseType: !4428, size: 64, offset: 1024)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4425, file: !101, line: 304, baseType: !4428, size: 64, offset: 1088)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4425, file: !101, line: 305, baseType: !4428, size: 64, offset: 1152)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4425, file: !101, line: 306, baseType: !4428, size: 64, offset: 1216)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4425, file: !101, line: 307, baseType: !4428, size: 64, offset: 1280)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4425, file: !101, line: 308, baseType: !4428, size: 64, offset: 1344)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4425, file: !101, line: 309, baseType: !4428, size: 64, offset: 1408)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4392, file: !94, line: 714, baseType: !4454, size: 64, offset: 768)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4457, line: 80, size: 1344, elements: !4458)
!4457 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4458 = !{!4459, !4460, !4461, !4462, !4463, !4464, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4537}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4456, file: !4457, line: 81, baseType: !363, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4456, file: !4457, line: 82, baseType: !363, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4456, file: !4457, line: 83, baseType: !496, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4456, file: !4457, line: 84, baseType: !496, size: 64, offset: 192)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4456, file: !4457, line: 85, baseType: !496, size: 64, offset: 256)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4456, file: !4457, line: 87, baseType: !4465, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!109, !4391, !4468}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4470)
!4470 = !{!4471, !4472, !4473, !4474, !4475, !4476, !4477, !4490, !4500, !4501, !4502, !4503, !4504, !4512, !4513, !4514, !4515, !4516, !4517}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4469, file: !88, line: 97, baseType: !363, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4469, file: !88, line: 98, baseType: !4454, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4469, file: !88, line: 100, baseType: !339, size: 64, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4469, file: !88, line: 101, baseType: !363, size: 64, offset: 192)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4469, file: !88, line: 103, baseType: !1682, size: 8, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4469, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4469, file: !88, line: 106, baseType: !4478, size: 64, offset: 320)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4481, line: 282, size: 1600, elements: !4482)
!4481 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4482 = !{!4483, !4484, !4485, !4489}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4480, file: !4481, line: 283, baseType: !3398, size: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4480, file: !4481, line: 284, baseType: !3398, size: 256, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4480, file: !4481, line: 285, baseType: !4486, size: 1024, offset: 512)
!4486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 1024, elements: !4487)
!4487 = !{!4488}
!4488 = !DISubrange(count: 128)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4480, file: !4481, line: 286, baseType: !1389, size: 64, offset: 1536)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4469, file: !88, line: 107, baseType: !4491, size: 64, offset: 384)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4481, line: 217, size: 256, elements: !4494)
!4494 = !{!4495, !4496, !4498, !4499}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4493, file: !4481, line: 218, baseType: !3405, size: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4493, file: !4481, line: 219, baseType: !4497, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4481, line: 15, baseType: !494)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4493, file: !4481, line: 220, baseType: !595, size: 32, offset: 192)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4493, file: !4481, line: 221, baseType: !595, size: 32, offset: 224)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4469, file: !88, line: 109, baseType: !4428, size: 64, offset: 448)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4469, file: !88, line: 110, baseType: !4419, size: 64, offset: 512)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4469, file: !88, line: 111, baseType: !4428, size: 64, offset: 576)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4469, file: !88, line: 112, baseType: !4419, size: 64, offset: 640)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4469, file: !88, line: 113, baseType: !4505, size: 64, offset: 704)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!109, !4391, !4508}
!4508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4509)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4510)
!4510 = !{!4511}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4509, file: !101, line: 59, baseType: !109, size: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4469, file: !88, line: 114, baseType: !4428, size: 64, offset: 768)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4469, file: !88, line: 115, baseType: !496, size: 64, offset: 832)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4469, file: !88, line: 116, baseType: !496, size: 64, offset: 896)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4469, file: !88, line: 118, baseType: !4423, size: 64, offset: 960)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4469, file: !88, line: 119, baseType: !4419, size: 64, offset: 1024)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4469, file: !88, line: 121, baseType: !4518, size: 64, offset: 1088)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4456, file: !4457, line: 88, baseType: !4408, size: 64, offset: 384)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4456, file: !4457, line: 89, baseType: !4428, size: 64, offset: 448)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4456, file: !4457, line: 90, baseType: !4419, size: 64, offset: 512)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4456, file: !4457, line: 91, baseType: !4419, size: 64, offset: 576)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4456, file: !4457, line: 92, baseType: !4419, size: 64, offset: 640)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4456, file: !4457, line: 94, baseType: !4428, size: 64, offset: 704)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4456, file: !4457, line: 95, baseType: !4428, size: 64, offset: 768)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4456, file: !4457, line: 97, baseType: !4505, size: 64, offset: 832)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4456, file: !4457, line: 98, baseType: !4428, size: 64, offset: 896)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4456, file: !4457, line: 100, baseType: !4428, size: 64, offset: 960)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4456, file: !4457, line: 102, baseType: !4428, size: 64, offset: 1024)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4456, file: !4457, line: 103, baseType: !4419, size: 64, offset: 1088)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4456, file: !4457, line: 105, baseType: !4423, size: 64, offset: 1152)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4456, file: !4457, line: 107, baseType: !4534, size: 64, offset: 1216)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4536)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4457, line: 107, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4456, file: !4457, line: 109, baseType: !1682, size: 8, offset: 1280)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4392, file: !94, line: 715, baseType: !4468, size: 64, offset: 832)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4392, file: !94, line: 717, baseType: !516, size: 64, offset: 896)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4392, file: !94, line: 719, baseType: !516, size: 64, offset: 960)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4392, file: !94, line: 721, baseType: !810, size: 256, offset: 1024)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4392, file: !94, line: 725, baseType: !4543, size: 448, offset: 1280)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4544)
!4544 = !{!4545, !4546, !4547, !4548}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4543, file: !94, line: 518, baseType: !344, size: 128)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4543, file: !94, line: 519, baseType: !344, size: 128, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4543, file: !94, line: 520, baseType: !344, size: 128, offset: 256)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4543, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4392, file: !94, line: 726, baseType: !4550, size: 2496, offset: 1728)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4634, !4638}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4550, file: !101, line: 664, baseType: !4508, size: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4550, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4550, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4550, file: !101, line: 667, baseType: !1682, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4550, file: !101, line: 668, baseType: !1682, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4550, file: !101, line: 669, baseType: !1682, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4550, file: !101, line: 670, baseType: !1682, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4550, file: !101, line: 671, baseType: !1682, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4550, file: !101, line: 672, baseType: !1682, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4550, file: !101, line: 673, baseType: !1682, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4550, file: !101, line: 674, baseType: !1682, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4550, file: !101, line: 675, baseType: !594, size: 32, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4550, file: !101, line: 676, baseType: !374, size: 32, offset: 96)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4550, file: !101, line: 678, baseType: !344, size: 128, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4550, file: !101, line: 679, baseType: !1544, size: 256, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4550, file: !101, line: 680, baseType: !4568, size: 64, offset: 512)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4570, line: 43, size: 1536, elements: !4571)
!4570 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4571 = !{!4572, !4573, !4574, !4575, !4576, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4569, file: !4570, line: 44, baseType: !363, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4569, file: !4570, line: 45, baseType: !109, size: 32, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4569, file: !4570, line: 46, baseType: !344, size: 128, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4569, file: !4570, line: 47, baseType: !374, size: 32, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4569, file: !4570, line: 48, baseType: !4577, size: 64, offset: 320)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4569, file: !4570, line: 49, baseType: !2606, size: 320, offset: 384)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4569, file: !4570, line: 50, baseType: !494, size: 64, offset: 704)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4569, file: !4570, line: 51, baseType: !1087, size: 64, offset: 768)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4569, file: !4570, line: 52, baseType: !1087, size: 64, offset: 832)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4569, file: !4570, line: 53, baseType: !1087, size: 64, offset: 896)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4569, file: !4570, line: 54, baseType: !1087, size: 64, offset: 960)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4569, file: !4570, line: 55, baseType: !1087, size: 64, offset: 1024)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4569, file: !4570, line: 56, baseType: !494, size: 64, offset: 1088)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4569, file: !4570, line: 57, baseType: !494, size: 64, offset: 1152)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4569, file: !4570, line: 58, baseType: !494, size: 64, offset: 1216)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4569, file: !4570, line: 59, baseType: !494, size: 64, offset: 1280)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4569, file: !4570, line: 60, baseType: !494, size: 64, offset: 1344)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4569, file: !4570, line: 61, baseType: !4391, size: 64, offset: 1408)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4569, file: !4570, line: 62, baseType: !1682, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4569, file: !4570, line: 63, baseType: !1682, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4550, file: !101, line: 681, baseType: !1682, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4550, file: !101, line: 682, baseType: !1682, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4550, file: !101, line: 683, baseType: !1682, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4550, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4550, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4550, file: !101, line: 690, baseType: !1079, size: 512, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4550, file: !101, line: 691, baseType: !598, size: 64, offset: 1152)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4550, file: !101, line: 692, baseType: !1431, size: 256, offset: 1216)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4550, file: !101, line: 693, baseType: !926, size: 192, offset: 1472)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4550, file: !101, line: 694, baseType: !4577, size: 64, offset: 1664)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4550, file: !101, line: 695, baseType: !394, size: 32, offset: 1728)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4550, file: !101, line: 696, baseType: !394, size: 32, offset: 1760)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4550, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4550, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4550, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4550, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4550, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4550, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4550, file: !101, line: 703, baseType: !1682, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4550, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4550, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4550, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4550, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4550, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4550, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4550, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4550, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4550, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4550, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4550, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4550, file: !101, line: 715, baseType: !598, size: 64, offset: 2048)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4550, file: !101, line: 716, baseType: !598, size: 64, offset: 2112)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4550, file: !101, line: 717, baseType: !598, size: 64, offset: 2176)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4550, file: !101, line: 718, baseType: !598, size: 64, offset: 2240)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4550, file: !101, line: 720, baseType: !4629, size: 64, offset: 2304)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4631)
!4631 = !{!4632, !4633}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4630, file: !101, line: 633, baseType: !374, size: 32)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4630, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4550, file: !101, line: 721, baseType: !4635, size: 64, offset: 2368)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{null, !4391, !1356}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4550, file: !101, line: 722, baseType: !4639, size: 64, offset: 2432)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4392, file: !94, line: 727, baseType: !4642, size: 64, offset: 4224)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4651, !4652, !4653}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4643, file: !101, line: 743, baseType: !4425, size: 1472)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4643, file: !101, line: 744, baseType: !4428, size: 64, offset: 1472)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4643, file: !101, line: 745, baseType: !4648, size: 64, offset: 1536)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !4391, !1682}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4643, file: !101, line: 746, baseType: !4428, size: 64, offset: 1600)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4643, file: !101, line: 747, baseType: !4419, size: 64, offset: 1664)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4643, file: !101, line: 748, baseType: !4419, size: 64, offset: 1728)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4392, file: !94, line: 736, baseType: !4655, size: 128, offset: 4288)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4656)
!4656 = !{!4657, !4661}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4655, file: !94, line: 531, baseType: !4658, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4660, line: 13, flags: DIFlagFwdDecl)
!4660 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4655, file: !94, line: 532, baseType: !4662, size: 64, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4392, file: !94, line: 738, baseType: !4665, size: 64, offset: 4416)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4667)
!4667 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4392, file: !94, line: 740, baseType: !4669, size: 64, offset: 4480)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4392, file: !94, line: 741, baseType: !598, size: 64, offset: 4544)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4392, file: !94, line: 746, baseType: !598, size: 64, offset: 4608)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4392, file: !94, line: 747, baseType: !4673, size: 64, offset: 4672)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4675)
!4675 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4392, file: !94, line: 749, baseType: !4677, size: 64, offset: 4736)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4679)
!4679 = !{!4680, !4681, !4682}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4678, file: !94, line: 433, baseType: !7, size: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4678, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4678, file: !94, line: 435, baseType: !494, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4392, file: !94, line: 751, baseType: !344, size: 128, offset: 4800)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4392, file: !94, line: 762, baseType: !4685, size: 64, offset: 4928)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4392, file: !94, line: 770, baseType: !4688, offset: 4992)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4689, line: 5, elements: !729)
!4689 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4392, file: !94, line: 772, baseType: !4691, size: 64, offset: 4992)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4693, line: 18, flags: DIFlagFwdDecl)
!4693 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4392, file: !94, line: 773, baseType: !4695, size: 64, offset: 5056)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4697, line: 41, size: 512, elements: !4698)
!4697 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4698 = !{!4699, !4700, !4794, !4795, !4796, !4797}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4696, file: !4697, line: 42, baseType: !4695, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4696, file: !4697, line: 43, baseType: !4701, size: 64, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4703)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4697, line: 125, size: 1408, elements: !4704)
!4704 = !{!4705, !4709, !4713, !4719, !4723, !4724, !4729, !4733, !4737, !4741, !4745, !4746, !4750, !4754, !4758, !4769, !4770, !4771, !4772, !4782, !4786, !4790}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4703, file: !4697, line: 126, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!4695, !4695}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4703, file: !4697, line: 127, baseType: !4710, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4695}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4703, file: !4697, line: 128, baseType: !4714, size: 64, offset: 128)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!1682, !4717}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4696)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4703, file: !4697, line: 129, baseType: !4720, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!1389, !4717, !4411}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4703, file: !4697, line: 131, baseType: !4714, size: 64, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4703, file: !4697, line: 133, baseType: !4725, size: 64, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!4728, !4717}
!4728 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4697, line: 132, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4703, file: !4697, line: 134, baseType: !4730, size: 64, offset: 384)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!1682, !4717, !363}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4703, file: !4697, line: 136, baseType: !4734, size: 64, offset: 448)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!109, !4717, !363, !7, !516, !491}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4703, file: !4697, line: 141, baseType: !4738, size: 64, offset: 512)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!109, !4717, !363, !4339, !491}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4703, file: !4697, line: 144, baseType: !4742, size: 64, offset: 576)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!363, !4717}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4703, file: !4697, line: 145, baseType: !4742, size: 64, offset: 640)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4703, file: !4697, line: 146, baseType: !4747, size: 64, offset: 704)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!4695, !4717}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4703, file: !4697, line: 148, baseType: !4751, size: 64, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!4695, !4717, !4695}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4703, file: !4697, line: 151, baseType: !4755, size: 64, offset: 832)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!4695, !4717, !363}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4703, file: !4697, line: 153, baseType: !4759, size: 64, offset: 896)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!109, !4717, !363, !363, !7, !7, !4762}
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4697, line: 94, size: 640, elements: !4764)
!4764 = !{!4765, !4766, !4767}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4763, file: !4697, line: 95, baseType: !4695, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4763, file: !4697, line: 96, baseType: !7, size: 32, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4763, file: !4697, line: 97, baseType: !4768, size: 512, offset: 128)
!4768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 512, elements: !1122)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4703, file: !4697, line: 158, baseType: !4751, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4703, file: !4697, line: 161, baseType: !4747, size: 64, offset: 1024)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4703, file: !4697, line: 163, baseType: !4706, size: 64, offset: 1088)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4703, file: !4697, line: 164, baseType: !4773, size: 64, offset: 1152)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!109, !4717, !4776}
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4697, line: 73, size: 128, elements: !4778)
!4778 = !{!4779, !4780, !4781}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4777, file: !4697, line: 74, baseType: !7, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4777, file: !4697, line: 75, baseType: !7, size: 32, offset: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4777, file: !4697, line: 76, baseType: !4717, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4703, file: !4697, line: 166, baseType: !4783, size: 64, offset: 1216)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!516, !4695, !109}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4703, file: !4697, line: 167, baseType: !4787, size: 64, offset: 1280)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!109, !4717, !7}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4703, file: !4697, line: 168, baseType: !4791, size: 64, offset: 1344)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!109, !4695}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4696, file: !4697, line: 44, baseType: !4391, size: 64, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4696, file: !4697, line: 45, baseType: !344, size: 128, offset: 192)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4696, file: !4697, line: 46, baseType: !344, size: 128, offset: 320)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4696, file: !4697, line: 47, baseType: !402, size: 8, offset: 448)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4392, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4392, file: !94, line: 778, baseType: !681, size: 32, offset: 5152)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4392, file: !94, line: 779, baseType: !594, size: 32, offset: 5184)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4392, file: !94, line: 781, baseType: !374, size: 32, offset: 5216)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4392, file: !94, line: 782, baseType: !344, size: 128, offset: 5248)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4392, file: !94, line: 784, baseType: !4804, size: 64, offset: 5376)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4806)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4807, line: 52, size: 768, elements: !4808)
!4807 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4808 = !{!4809, !4810, !4811, !4812, !4813, !4817, !4821, !4822, !4823, !4824, !4828, !4832}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4806, file: !4807, line: 53, baseType: !363, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4806, file: !4807, line: 55, baseType: !496, size: 64, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4806, file: !4807, line: 56, baseType: !496, size: 64, offset: 128)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4806, file: !4807, line: 58, baseType: !4408, size: 64, offset: 192)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4806, file: !4807, line: 59, baseType: !4814, size: 64, offset: 256)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!444, !4411, !4417}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4806, file: !4807, line: 61, baseType: !4818, size: 64, offset: 320)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{null, !4804}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4806, file: !4807, line: 62, baseType: !4419, size: 64, offset: 384)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4806, file: !4807, line: 64, baseType: !4428, size: 64, offset: 448)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4806, file: !4807, line: 66, baseType: !3903, size: 64, offset: 512)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4806, file: !4807, line: 67, baseType: !4825, size: 64, offset: 576)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!1389, !4411}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4806, file: !4807, line: 69, baseType: !4829, size: 64, offset: 640)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !4411, !3935, !3936}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4806, file: !4807, line: 71, baseType: !4423, size: 64, offset: 704)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4392, file: !94, line: 785, baseType: !496, size: 64, offset: 5440)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4392, file: !94, line: 787, baseType: !4419, size: 64, offset: 5504)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4392, file: !94, line: 788, baseType: !4836, size: 64, offset: 5568)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4392, file: !94, line: 789, baseType: !4839, size: 64, offset: 5632)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4392, file: !94, line: 791, baseType: !4842, size: 64, offset: 5696)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4844)
!4844 = !{!4845, !4846, !4847, !4848, !4849}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4843, file: !94, line: 598, baseType: !116, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4843, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4843, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4843, file: !94, line: 601, baseType: !1682, size: 8, offset: 96)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4843, file: !94, line: 602, baseType: !1682, size: 8, offset: 104)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4392, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4392, file: !94, line: 795, baseType: !1682, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4392, file: !94, line: 796, baseType: !1682, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4392, file: !94, line: 797, baseType: !1682, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4392, file: !94, line: 798, baseType: !1682, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4392, file: !94, line: 799, baseType: !1682, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4386, file: !317, line: 73, baseType: !4857, size: 256, offset: 128)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4386, file: !317, line: 66, size: 256, elements: !4858)
!4858 = !{!4859, !4860, !4861}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4857, file: !317, line: 68, baseType: !344, size: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4857, file: !317, line: 70, baseType: !516, size: 64, offset: 128)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4857, file: !317, line: 72, baseType: !374, size: 32, offset: 192)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4386, file: !317, line: 76, baseType: !4863, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4865)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4866, line: 178, size: 1664, elements: !4867)
!4866 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!4867 = !{!4868, !4872, !4945, !4949, !4953, !4954, !4955, !4959, !4960, !4964, !4969, !4973, !4978, !4984, !5007, !5021, !5027, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5082, !5083}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4865, file: !4866, line: 195, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!109, !4385, !494}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4865, file: !4866, line: 215, baseType: !4873, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!109, !4385, !4876}
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4878, line: 166, size: 2944, elements: !4879)
!4878 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4906, !4907, !4908, !4909, !4912, !4913, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4877, file: !4878, line: 176, baseType: !1682, size: 8)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4877, file: !4878, line: 183, baseType: !1682, size: 8, offset: 8)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4877, file: !4878, line: 191, baseType: !1682, size: 8, offset: 16)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4877, file: !4878, line: 194, baseType: !1682, size: 8, offset: 24)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4877, file: !4878, line: 202, baseType: !1682, size: 8, offset: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4877, file: !4878, line: 209, baseType: !1682, size: 8, offset: 40)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4877, file: !4878, line: 220, baseType: !1682, size: 8, offset: 48)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4877, file: !4878, line: 231, baseType: !1682, size: 8, offset: 56)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !4877, file: !4878, line: 243, baseType: !1682, size: 8, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4877, file: !4878, line: 268, baseType: !4890, size: 64, offset: 128)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4892, line: 65, size: 1280, elements: !4893)
!4892 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4893 = !{!4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4891, file: !4892, line: 66, baseType: !4029, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4891, file: !4892, line: 67, baseType: !4385, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4891, file: !4892, line: 72, baseType: !444, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4891, file: !4892, line: 77, baseType: !109, size: 32, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4891, file: !4892, line: 82, baseType: !944, size: 192, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4891, file: !4892, line: 83, baseType: !516, size: 64, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4891, file: !4892, line: 99, baseType: !4890, size: 64, offset: 512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4891, file: !4892, line: 107, baseType: !109, size: 32, offset: 576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4891, file: !4892, line: 116, baseType: !344, size: 128, offset: 640)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4891, file: !4892, line: 128, baseType: !344, size: 128, offset: 768)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4891, file: !4892, line: 139, baseType: !944, size: 192, offset: 896)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4891, file: !4892, line: 147, baseType: !944, size: 192, offset: 1088)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !4877, file: !4878, line: 271, baseType: !374, size: 32, offset: 192)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4877, file: !4878, line: 281, baseType: !909, size: 64, offset: 256)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4877, file: !4878, line: 284, baseType: !598, size: 64, offset: 320)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4877, file: !4878, line: 287, baseType: !4910, size: 32, offset: 384)
!4910 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4911, line: 85, baseType: !7)
!4911 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4877, file: !4878, line: 295, baseType: !344, size: 128, offset: 448)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4877, file: !4878, line: 298, baseType: !4914, size: 64, offset: 576)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4878, line: 77, size: 640, elements: !4916)
!4916 = !{!4917, !4918, !4919, !4920, !4921, !4922, !4923}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4915, file: !4878, line: 79, baseType: !109, size: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4915, file: !4878, line: 80, baseType: !109, size: 32, offset: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4915, file: !4878, line: 81, baseType: !4391, size: 64, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4915, file: !4878, line: 82, baseType: !4385, size: 64, offset: 128)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4915, file: !4878, line: 84, baseType: !560, size: 64, offset: 192)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4915, file: !4878, line: 86, baseType: !344, size: 128, offset: 256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4915, file: !4878, line: 87, baseType: !810, size: 256, offset: 384)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4877, file: !4878, line: 306, baseType: !944, size: 192, offset: 640)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4877, file: !4878, line: 309, baseType: !374, size: 32, offset: 832)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4877, file: !4878, line: 312, baseType: !944, size: 192, offset: 896)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4877, file: !4878, line: 314, baseType: !374, size: 32, offset: 1088)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4877, file: !4878, line: 317, baseType: !1282, size: 64, offset: 1152)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4877, file: !4878, line: 325, baseType: !516, size: 64, offset: 1216)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4877, file: !4878, line: 336, baseType: !344, size: 128, offset: 1280)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4877, file: !4878, line: 339, baseType: !810, size: 256, offset: 1408)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4877, file: !4878, line: 349, baseType: !344, size: 128, offset: 1664)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4877, file: !4878, line: 352, baseType: !926, size: 192, offset: 1792)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4877, file: !4878, line: 363, baseType: !344, size: 128, offset: 1984)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4877, file: !4878, line: 373, baseType: !344, size: 128, offset: 2112)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4877, file: !4878, line: 382, baseType: !109, size: 32, offset: 2240)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4877, file: !4878, line: 385, baseType: !810, size: 256, offset: 2304)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4877, file: !4878, line: 392, baseType: !4939, size: 384, offset: 2560)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !4940, line: 45, size: 384, elements: !4941)
!4940 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!4941 = !{!4942, !4943, !4944}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4939, file: !4940, line: 47, baseType: !810, size: 256)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !4939, file: !4940, line: 48, baseType: !1141, size: 64, offset: 256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4939, file: !4940, line: 49, baseType: !1141, size: 64, offset: 320)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4865, file: !4866, line: 229, baseType: !4946, size: 64, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{null, !4385, !4876}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4865, file: !4866, line: 257, baseType: !4950, size: 64, offset: 192)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{null, !4385}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4865, file: !4866, line: 274, baseType: !4950, size: 64, offset: 256)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4865, file: !4866, line: 286, baseType: !4950, size: 64, offset: 320)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4865, file: !4866, line: 293, baseType: !4956, size: 64, offset: 384)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{null, !4385, !4876, !1682}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4865, file: !4866, line: 300, baseType: !4946, size: 64, offset: 448)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4865, file: !4866, line: 307, baseType: !4961, size: 64, offset: 512)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{null, !4914}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4865, file: !4866, line: 316, baseType: !4965, size: 64, offset: 576)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!4968, !4385, !491}
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4865, file: !4866, line: 324, baseType: !4970, size: 64, offset: 640)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!109, !4385, !4876, !1648, !1648, !792}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4865, file: !4866, line: 331, baseType: !4974, size: 64, offset: 704)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!109, !4385, !4876, !109, !4977}
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4865, file: !4866, line: 341, baseType: !4979, size: 64, offset: 768)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!4968, !4385, !4982}
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !4866, line: 41, flags: DIFlagFwdDecl)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4865, file: !4866, line: 349, baseType: !4985, size: 64, offset: 832)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!4968, !4385, !4988, !4990}
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !4866, line: 42, flags: DIFlagFwdDecl)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4992, line: 39, size: 128, elements: !4993)
!4992 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4993 = !{!4994, !5005, !5006}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4991, file: !4992, line: 40, baseType: !4995, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4992, line: 11, size: 256, elements: !4997)
!4997 = !{!4998, !4999, !5000, !5001, !5003, !5004}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4996, file: !4992, line: 12, baseType: !494, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4996, file: !4992, line: 13, baseType: !7, size: 32, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4996, file: !4992, line: 14, baseType: !7, size: 32, offset: 96)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4996, file: !4992, line: 15, baseType: !5002, size: 64, offset: 128)
!5002 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !345, line: 149, baseType: !598)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4996, file: !4992, line: 17, baseType: !7, size: 32, offset: 192)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4996, file: !4992, line: 20, baseType: !7, size: 32, offset: 224)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4991, file: !4992, line: 41, baseType: !7, size: 32, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4991, file: !4992, line: 42, baseType: !7, size: 32, offset: 96)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4865, file: !4866, line: 375, baseType: !5008, size: 64, offset: 896)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!109, !4876, !4385, !5011}
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !230, line: 1036, size: 256, elements: !5013)
!5013 = !{!5014, !5015, !5016, !5017, !5018, !5019, !5020}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5012, file: !230, line: 1037, baseType: !595, size: 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5012, file: !230, line: 1038, baseType: !595, size: 32, offset: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5012, file: !230, line: 1039, baseType: !595, size: 32, offset: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5012, file: !230, line: 1040, baseType: !595, size: 32, offset: 96)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5012, file: !230, line: 1042, baseType: !595, size: 32, offset: 128)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !5012, file: !230, line: 1043, baseType: !595, size: 32, offset: 160)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5012, file: !230, line: 1044, baseType: !599, size: 64, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4865, file: !4866, line: 393, baseType: !5022, size: 64, offset: 960)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!109, !4876, !4385, !1648, !5025}
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !345, line: 113, baseType: !598)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4865, file: !4866, line: 402, baseType: !5028, size: 64, offset: 1024)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !5031, !4876}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !5033, line: 76, size: 256, elements: !5034)
!5033 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!5034 = !{!5035, !5056, !5060, !5061}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5032, file: !5033, line: 78, baseType: !5036, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !5031, !5039}
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5041, line: 79, size: 128, elements: !5042)
!5041 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5042 = !{!5043, !5044}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5040, file: !5041, line: 80, baseType: !363, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5040, file: !5041, line: 81, baseType: !5045, size: 64, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5047, line: 5, baseType: !5048)
!5047 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5049)
!5049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5050, size: 192, elements: !1207)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5051)
!5051 = !{!5052, !5053, !5054, !5055}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5050, file: !3, line: 32, baseType: !7, size: 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5050, file: !3, line: 32, baseType: !7, size: 32, offset: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5050, file: !3, line: 32, baseType: !516, size: 64, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5050, file: !3, line: 32, baseType: !516, size: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5032, file: !5033, line: 79, baseType: !5057, size: 64, offset: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{null, !5031, !363}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5032, file: !5033, line: 80, baseType: !516, size: 64, offset: 128)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5032, file: !5033, line: 81, baseType: !363, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4865, file: !4866, line: 405, baseType: !109, size: 32, offset: 1088)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4865, file: !4866, line: 407, baseType: !109, size: 32, offset: 1120)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4865, file: !4866, line: 409, baseType: !109, size: 32, offset: 1152)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4865, file: !4866, line: 411, baseType: !444, size: 64, offset: 1216)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4865, file: !4866, line: 413, baseType: !444, size: 64, offset: 1280)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4865, file: !4866, line: 415, baseType: !444, size: 64, offset: 1344)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4865, file: !4866, line: 423, baseType: !594, size: 32, offset: 1408)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4865, file: !4866, line: 433, baseType: !5070, size: 64, offset: 1472)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5072)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !147, line: 145, size: 192, elements: !5073)
!5073 = !{!5074, !5075, !5076, !5081}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5072, file: !147, line: 146, baseType: !7, size: 32)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5072, file: !147, line: 147, baseType: !146, size: 32, offset: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5072, file: !147, line: 148, baseType: !5077, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !147, line: 54, baseType: !5079)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!109, !4385, !516, !4876}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5072, file: !147, line: 149, baseType: !363, size: 64, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4865, file: !4866, line: 435, baseType: !109, size: 32, offset: 1536)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4865, file: !4866, line: 444, baseType: !2916, size: 64, offset: 1600)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !4386, file: !317, line: 88, baseType: !516, size: 64, offset: 448)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4386, file: !317, line: 98, baseType: !4914, size: 64, offset: 512)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !4386, file: !317, line: 107, baseType: !4914, size: 64, offset: 576)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4386, file: !317, line: 110, baseType: !4914, size: 64, offset: 640)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4386, file: !317, line: 117, baseType: !1682, size: 8, offset: 704)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4386, file: !317, line: 125, baseType: !4890, size: 64, offset: 768)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4386, file: !317, line: 135, baseType: !594, size: 32, offset: 832)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !4386, file: !317, line: 143, baseType: !1682, size: 8, offset: 864)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !4386, file: !317, line: 146, baseType: !525, size: 64, offset: 896)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4386, file: !317, line: 149, baseType: !444, size: 64, offset: 960)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !4386, file: !317, line: 159, baseType: !810, size: 256, offset: 1024)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !4386, file: !317, line: 166, baseType: !810, size: 256, offset: 1280)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !4386, file: !317, line: 174, baseType: !394, size: 32, offset: 1536)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !4386, file: !317, line: 177, baseType: !810, size: 256, offset: 1600)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4386, file: !317, line: 183, baseType: !344, size: 128, offset: 1856)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !4386, file: !317, line: 191, baseType: !344, size: 128, offset: 1984)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !4386, file: !317, line: 198, baseType: !810, size: 256, offset: 2112)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !4386, file: !317, line: 205, baseType: !344, size: 128, offset: 2368)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !4386, file: !317, line: 220, baseType: !1682, size: 8, offset: 2496)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !4386, file: !317, line: 230, baseType: !5104, size: 64, offset: 2560)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !317, line: 15, flags: DIFlagFwdDecl)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !4386, file: !317, line: 237, baseType: !374, size: 32, offset: 2624)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !4386, file: !317, line: 242, baseType: !374, size: 32, offset: 2656)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4386, file: !317, line: 265, baseType: !594, size: 32, offset: 2688)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !4386, file: !317, line: 268, baseType: !344, size: 128, offset: 2752)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4386, file: !317, line: 276, baseType: !374, size: 32, offset: 2880)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !4386, file: !317, line: 279, baseType: !7, size: 32, offset: 2912)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !4386, file: !317, line: 282, baseType: !5113, size: 8704, offset: 2944)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5114, line: 375, size: 8704, elements: !5115)
!5114 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5115 = !{!5116, !5117, !5136, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !6193, !6194, !6195, !6196, !6197, !6198, !6199, !6200, !6201, !6202, !6203, !6204, !6205, !6206, !6207, !6208, !6209, !6210, !6211, !6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230, !6231, !6232, !6233, !6234, !6235, !6236, !6237, !6238, !6239, !6240, !6241, !6242, !6243, !6244, !6245, !6246, !6247, !6248, !6249, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257, !6258, !6259, !6260, !6261, !6262, !6263, !6264, !6265, !6266, !6267}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5113, file: !5114, line: 386, baseType: !810, size: 256)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5113, file: !5114, line: 396, baseType: !5118, size: 448, offset: 256)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5119, line: 85, size: 448, elements: !5120)
!5119 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5120 = !{!5121, !5135}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5118, file: !5119, line: 89, baseType: !5122, size: 320)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5123, line: 47, size: 320, elements: !5124)
!5123 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5124 = !{!5125, !5126}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5122, file: !5123, line: 48, baseType: !810, size: 256)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5122, file: !5123, line: 49, baseType: !5127, size: 64, offset: 256)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5123, line: 55, size: 192, elements: !5129)
!5129 = !{!5130, !5131, !5132, !5133, !5134}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5128, file: !5123, line: 56, baseType: !960, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5128, file: !5123, line: 57, baseType: !494, size: 64, offset: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5128, file: !5123, line: 58, baseType: !7, size: 32, offset: 128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5128, file: !5123, line: 59, baseType: !414, size: 16, offset: 160)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5128, file: !5123, line: 60, baseType: !414, size: 16, offset: 176)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5118, file: !5119, line: 95, baseType: !344, size: 128, offset: 320)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5113, file: !5114, line: 406, baseType: !5137, size: 64, offset: 704)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5119, line: 46, size: 512, elements: !5139)
!5139 = !{!5140, !5141, !5143, !5146, !5147, !5148}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5138, file: !5119, line: 48, baseType: !5128, size: 192)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5138, file: !5119, line: 55, baseType: !5142, size: 64, offset: 192)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5138, file: !5119, line: 61, baseType: !5144, size: 32, offset: 256)
!5144 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5145, line: 27, baseType: !594)
!5145 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5138, file: !5119, line: 66, baseType: !344, size: 128, offset: 320)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5138, file: !5119, line: 71, baseType: !1682, size: 8, offset: 448)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5138, file: !5119, line: 74, baseType: !1682, size: 8, offset: 456)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5113, file: !5114, line: 414, baseType: !810, size: 256, offset: 768)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5113, file: !5114, line: 422, baseType: !944, size: 192, offset: 1024)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5113, file: !5114, line: 430, baseType: !944, size: 192, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5113, file: !5114, line: 433, baseType: !810, size: 256, offset: 1408)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5113, file: !5114, line: 435, baseType: !109, size: 32, offset: 1664)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5113, file: !5114, line: 437, baseType: !344, size: 128, offset: 1728)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5113, file: !5114, line: 443, baseType: !374, size: 32, offset: 1856)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5113, file: !5114, line: 448, baseType: !109, size: 32, offset: 1888)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5113, file: !5114, line: 452, baseType: !5158, size: 128, offset: 1920)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !945, line: 246, size: 128, elements: !5159)
!5159 = !{!5160}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5158, file: !945, line: 247, baseType: !948, size: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5113, file: !5114, line: 460, baseType: !344, size: 128, offset: 2048)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5113, file: !5114, line: 470, baseType: !2644, size: 64, offset: 2176)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5113, file: !5114, line: 474, baseType: !1431, size: 256, offset: 2240)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5113, file: !5114, line: 482, baseType: !109, size: 32, offset: 2496)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5113, file: !5114, line: 490, baseType: !344, size: 128, offset: 2560)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5113, file: !5114, line: 499, baseType: !109, size: 32, offset: 2688)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5113, file: !5114, line: 506, baseType: !344, size: 128, offset: 2752)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5113, file: !5114, line: 514, baseType: !109, size: 32, offset: 2880)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5113, file: !5114, line: 521, baseType: !344, size: 128, offset: 2944)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5113, file: !5114, line: 530, baseType: !344, size: 128, offset: 3072)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5113, file: !5114, line: 539, baseType: !344, size: 128, offset: 3200)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5113, file: !5114, line: 541, baseType: !109, size: 32, offset: 3328)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5113, file: !5114, line: 541, baseType: !109, size: 32, offset: 3360)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5113, file: !5114, line: 542, baseType: !109, size: 32, offset: 3392)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5113, file: !5114, line: 542, baseType: !109, size: 32, offset: 3424)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5113, file: !5114, line: 543, baseType: !5177, size: 64, offset: 3456)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5179)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5114, line: 47, size: 576, elements: !5180)
!5180 = !{!5181, !5300, !5304, !5305, !5347, !6180, !6184, !6188, !6192}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5179, file: !5114, line: 83, baseType: !5182, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!5185, !4385, !4876, !5285}
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5187, line: 117, size: 1600, elements: !5188)
!5187 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5cd71656f00b65d2ac7e671422852fe")
!5188 = !{!5189, !5190, !5191, !5226, !5227, !5249, !5273, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5186, file: !5187, line: 121, baseType: !4385, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5186, file: !5187, line: 126, baseType: !344, size: 128, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5186, file: !5187, line: 131, baseType: !5192, size: 256, offset: 192)
!5192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5193, line: 55, size: 256, elements: !5194)
!5193 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5194 = !{!5195, !5196, !5197, !5220, !5221}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5192, file: !5193, line: 56, baseType: !1648, size: 32)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5192, file: !5193, line: 57, baseType: !1648, size: 32, offset: 32)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5192, file: !5193, line: 58, baseType: !5198, size: 64, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5193, line: 67, size: 3136, elements: !5200)
!5200 = !{!5201, !5202, !5218}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5199, file: !5193, line: 73, baseType: !109, size: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5199, file: !5193, line: 82, baseType: !5203, size: 1536, offset: 64)
!5203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5204, size: 1536, elements: !5216)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5206, line: 80, size: 960, elements: !5207)
!5206 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5207 = !{!5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5205, file: !5206, line: 84, baseType: !344, size: 128)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5205, file: !5206, line: 89, baseType: !5192, size: 256, offset: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5205, file: !5206, line: 166, baseType: !1648, size: 32, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5205, file: !5206, line: 171, baseType: !3398, size: 256, offset: 416)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5205, file: !5206, line: 176, baseType: !1648, size: 32, offset: 672)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5205, file: !5206, line: 184, baseType: !5025, size: 64, offset: 704)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5205, file: !5206, line: 189, baseType: !4385, size: 64, offset: 768)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5205, file: !5206, line: 197, baseType: !344, size: 128, offset: 832)
!5216 = !{!5217}
!5217 = !DISubrange(count: 24)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5199, file: !5193, line: 106, baseType: !5219, size: 1536, offset: 1600)
!5219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5026, size: 1536, elements: !5216)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5192, file: !5193, line: 59, baseType: !4029, size: 32, offset: 128)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5192, file: !5193, line: 60, baseType: !5222, size: 64, offset: 192)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{null, !5225}
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5186, file: !5187, line: 136, baseType: !1778, size: 128, offset: 448)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5186, file: !5187, line: 141, baseType: !5228, size: 64, offset: 576)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5230)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5231, line: 61, size: 192, elements: !5232)
!5231 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!5232 = !{!5233, !5234, !5235, !5236, !5242, !5243, !5244, !5245, !5246, !5247, !5248}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5230, file: !5231, line: 63, baseType: !594, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5230, file: !5231, line: 72, baseType: !402, size: 8, offset: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !5230, file: !5231, line: 75, baseType: !402, size: 8, offset: 40)
!5236 = !DIDerivedType(tag: DW_TAG_member, scope: !5230, file: !5231, line: 77, baseType: !5237, size: 32, offset: 48)
!5237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5230, file: !5231, line: 77, size: 32, elements: !5238)
!5238 = !{!5239, !5241}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !5237, file: !5231, line: 86, baseType: !5240, size: 32)
!5240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 32, elements: !922)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !5237, file: !5231, line: 112, baseType: !5240, size: 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !5230, file: !5231, line: 121, baseType: !5240, size: 32, offset: 80)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !5230, file: !5231, line: 129, baseType: !5240, size: 32, offset: 112)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !5230, file: !5231, line: 132, baseType: !402, size: 8, offset: 144)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !5230, file: !5231, line: 134, baseType: !402, size: 8, offset: 152)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !5230, file: !5231, line: 137, baseType: !1682, size: 8, offset: 160)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !5230, file: !5231, line: 140, baseType: !1682, size: 8, offset: 168)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !5230, file: !5231, line: 143, baseType: !1682, size: 8, offset: 176)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5186, file: !5187, line: 145, baseType: !5250, size: 64, offset: 640)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5252)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !5187, line: 42, size: 192, elements: !5253)
!5253 = !{!5254, !5258, !5262}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5252, file: !5187, line: 53, baseType: !5255, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !5185}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !5252, file: !5187, line: 73, baseType: !5259, size: 64, offset: 64)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!109, !5185, !4876, !3381}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !5252, file: !5187, line: 97, baseType: !5263, size: 64, offset: 128)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!109, !5185, !4876, !7, !7, !5266, !7}
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4911, line: 96, size: 64, elements: !5268)
!5268 = !{!5269, !5270, !5271, !5272}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5267, file: !4911, line: 97, baseType: !414, size: 16)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5267, file: !4911, line: 98, baseType: !414, size: 16, offset: 16)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5267, file: !4911, line: 99, baseType: !414, size: 16, offset: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5267, file: !4911, line: 100, baseType: !414, size: 16, offset: 48)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5186, file: !5187, line: 150, baseType: !5274, size: 128, offset: 704)
!5274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !922)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5186, file: !5187, line: 168, baseType: !5274, size: 128, offset: 832)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5186, file: !5187, line: 175, baseType: !5026, size: 64, offset: 960)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5186, file: !5187, line: 180, baseType: !7, size: 32, offset: 1024)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5186, file: !5187, line: 185, baseType: !7, size: 32, offset: 1056)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5186, file: !5187, line: 190, baseType: !109, size: 32, offset: 1088)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !5186, file: !5187, line: 196, baseType: !109, size: 32, offset: 1120)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !5186, file: !5187, line: 202, baseType: !109, size: 32, offset: 1152)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !5186, file: !5187, line: 206, baseType: !344, size: 128, offset: 1216)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5186, file: !5187, line: 213, baseType: !5284, size: 256, offset: 1344)
!5284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4968, size: 256, elements: !922)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5287)
!5287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !230, line: 703, size: 832, elements: !5288)
!5288 = !{!5289, !5290, !5291, !5292, !5293, !5294, !5296, !5297, !5298}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5287, file: !230, line: 705, baseType: !595, size: 32)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5287, file: !230, line: 707, baseType: !595, size: 32, offset: 32)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5287, file: !230, line: 709, baseType: !595, size: 32, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5287, file: !230, line: 714, baseType: !595, size: 32, offset: 96)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5287, file: !230, line: 719, baseType: !595, size: 32, offset: 128)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5287, file: !230, line: 725, baseType: !5295, size: 128, offset: 160)
!5295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 128, elements: !922)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5287, file: !230, line: 727, baseType: !5295, size: 128, offset: 288)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5287, file: !230, line: 729, baseType: !5295, size: 128, offset: 416)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5287, file: !230, line: 735, baseType: !5299, size: 256, offset: 576)
!5299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 256, elements: !922)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5179, file: !5114, line: 98, baseType: !5301, size: 64, offset: 64)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!5228, !5285}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5179, file: !5114, line: 114, baseType: !4950, size: 64, offset: 128)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5179, file: !5114, line: 124, baseType: !5306, size: 64, offset: 192)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!154, !4385, !5309}
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5311)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !155, line: 252, size: 960, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !5311, file: !155, line: 258, baseType: !109, size: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !5311, file: !155, line: 259, baseType: !412, size: 16, offset: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !5311, file: !155, line: 260, baseType: !412, size: 16, offset: 48)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !5311, file: !155, line: 261, baseType: !412, size: 16, offset: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !5311, file: !155, line: 262, baseType: !412, size: 16, offset: 80)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !5311, file: !155, line: 263, baseType: !412, size: 16, offset: 96)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !5311, file: !155, line: 264, baseType: !412, size: 16, offset: 112)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !5311, file: !155, line: 265, baseType: !412, size: 16, offset: 128)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !5311, file: !155, line: 266, baseType: !412, size: 16, offset: 144)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !5311, file: !155, line: 267, baseType: !412, size: 16, offset: 160)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !5311, file: !155, line: 268, baseType: !412, size: 16, offset: 176)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5311, file: !155, line: 303, baseType: !594, size: 32, offset: 192)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !5311, file: !155, line: 320, baseType: !109, size: 32, offset: 224)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !5311, file: !155, line: 321, baseType: !412, size: 16, offset: 256)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !5311, file: !155, line: 322, baseType: !412, size: 16, offset: 272)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !5311, file: !155, line: 323, baseType: !412, size: 16, offset: 288)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !5311, file: !155, line: 324, baseType: !412, size: 16, offset: 304)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !5311, file: !155, line: 325, baseType: !412, size: 16, offset: 320)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !5311, file: !155, line: 326, baseType: !412, size: 16, offset: 336)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !5311, file: !155, line: 327, baseType: !412, size: 16, offset: 352)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !5311, file: !155, line: 328, baseType: !412, size: 16, offset: 368)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !5311, file: !155, line: 329, baseType: !412, size: 16, offset: 384)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !5311, file: !155, line: 330, baseType: !412, size: 16, offset: 400)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !5311, file: !155, line: 331, baseType: !412, size: 16, offset: 416)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !5311, file: !155, line: 332, baseType: !412, size: 16, offset: 432)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !5311, file: !155, line: 333, baseType: !412, size: 16, offset: 448)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5311, file: !155, line: 341, baseType: !412, size: 16, offset: 464)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5311, file: !155, line: 349, baseType: !412, size: 16, offset: 480)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5311, file: !155, line: 378, baseType: !402, size: 8, offset: 496)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !5311, file: !155, line: 389, baseType: !1682, size: 8, offset: 504)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5311, file: !155, line: 396, baseType: !344, size: 128, offset: 512)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5311, file: !155, line: 403, baseType: !3398, size: 256, offset: 640)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5311, file: !155, line: 411, baseType: !154, size: 32, offset: 896)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5311, file: !155, line: 418, baseType: !197, size: 32, offset: 928)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5179, file: !5114, line: 201, baseType: !5348, size: 64, offset: 256)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!109, !4385, !5351}
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5353, line: 365, size: 960, elements: !5354)
!5353 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28de65f10f2586a2044f2cca3eae067c")
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361, !6117, !6128, !6129, !6138, !6139, !6177, !6178, !6179}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5352, file: !5353, line: 366, baseType: !4029, size: 32)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5352, file: !5353, line: 368, baseType: !4385, size: 64, offset: 64)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !5352, file: !5353, line: 378, baseType: !1682, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !5352, file: !5353, line: 390, baseType: !1682, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !5352, file: !5353, line: 391, baseType: !1682, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !5352, file: !5353, line: 400, baseType: !1682, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !5352, file: !5353, line: 401, baseType: !5362, size: 64, offset: 192)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !5353, line: 160, size: 256, elements: !5364)
!5364 = !{!5365, !6114, !6115, !6116}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5363, file: !5353, line: 161, baseType: !5366, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !295, line: 603, size: 5312, elements: !5368)
!5368 = !{!5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5958, !5959, !5960, !6099, !6100, !6101, !6102, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5367, file: !295, line: 605, baseType: !4385, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5367, file: !295, line: 614, baseType: !344, size: 128, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5367, file: !295, line: 617, baseType: !444, size: 64, offset: 192)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5367, file: !295, line: 628, baseType: !5118, size: 448, offset: 256)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5367, file: !295, line: 631, baseType: !5192, size: 256, offset: 704)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5367, file: !295, line: 637, baseType: !1648, size: 32, offset: 960)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !5367, file: !295, line: 639, baseType: !4977, size: 64, offset: 1024)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !5367, file: !295, line: 641, baseType: !7, size: 32, offset: 1088)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !5367, file: !295, line: 646, baseType: !1682, size: 8, offset: 1120)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !5367, file: !295, line: 649, baseType: !5025, size: 64, offset: 1152)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !5367, file: !295, line: 651, baseType: !7, size: 32, offset: 1216)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5367, file: !295, line: 660, baseType: !5381, size: 64, offset: 1280)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !5383, line: 932, size: 8064, elements: !5384)
!5383 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!5384 = !{!5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5916, !5917, !5919, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5951, !5952, !5953, !5954, !5955}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5382, file: !5383, line: 934, baseType: !4385, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5382, file: !5383, line: 936, baseType: !4691, size: 64, offset: 64)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5382, file: !5383, line: 944, baseType: !344, size: 128, offset: 128)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5382, file: !5383, line: 947, baseType: !444, size: 64, offset: 256)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5382, file: !5383, line: 959, baseType: !5118, size: 448, offset: 320)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5382, file: !5383, line: 962, baseType: !5192, size: 256, offset: 768)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5382, file: !5383, line: 971, baseType: !5366, size: 64, offset: 1024)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !5382, file: !5383, line: 980, baseType: !5366, size: 64, offset: 1088)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5382, file: !5383, line: 986, baseType: !7, size: 32, offset: 1152)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !5382, file: !5383, line: 995, baseType: !109, size: 32, offset: 1184)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !5382, file: !5383, line: 1003, baseType: !109, size: 32, offset: 1216)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5382, file: !5383, line: 1013, baseType: !1682, size: 8, offset: 1248)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5382, file: !5383, line: 1023, baseType: !5311, size: 960, offset: 1280)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5382, file: !5383, line: 1039, baseType: !5311, size: 960, offset: 2240)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5382, file: !5383, line: 1048, baseType: !109, size: 32, offset: 3200)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5382, file: !5383, line: 1056, baseType: !109, size: 32, offset: 3232)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5382, file: !5383, line: 1059, baseType: !5402, size: 64, offset: 3264)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5404)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !5383, line: 402, size: 1536, elements: !5405)
!5405 = !{!5406, !5410, !5414, !5418, !5422, !5427, !5428, !5821, !5825, !5829, !5833, !5867, !5871, !5875, !5881, !5885, !5886, !5890, !5895, !5901, !5905, !5909, !5910, !5911}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5404, file: !5383, line: 413, baseType: !5407, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{null, !5381}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5404, file: !5383, line: 436, baseType: !5411, size: 64, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!109, !5381, !4876, !1648, !1648, !1648}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5404, file: !5383, line: 458, baseType: !5415, size: 64, offset: 128)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!109, !5381, !4876, !1648, !1648, !1648, !1625, !1625}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5404, file: !5383, line: 478, baseType: !5419, size: 64, offset: 192)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!109, !5381, !109, !109}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5404, file: !5383, line: 493, baseType: !5423, size: 64, offset: 256)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!109, !5381, !5426, !5426, !5426, !1648, !5137}
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5404, file: !5383, line: 504, baseType: !5407, size: 64, offset: 320)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5404, file: !5383, line: 520, baseType: !5429, size: 64, offset: 384)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!109, !5432, !5137}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !5383, line: 1193, size: 384, elements: !5434)
!5434 = !{!5435, !5436, !5437, !5439, !5440, !5441, !5820}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5433, file: !5383, line: 1194, baseType: !5185, size: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5433, file: !5383, line: 1195, baseType: !5381, size: 64, offset: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5433, file: !5383, line: 1196, baseType: !5438, size: 64, offset: 128)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5433, file: !5383, line: 1198, baseType: !1648, size: 32, offset: 192)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5433, file: !5383, line: 1199, baseType: !1648, size: 32, offset: 224)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5433, file: !5383, line: 1201, baseType: !5442, size: 64, offset: 256)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !207, line: 1494, size: 10880, elements: !5445)
!5445 = !{!5446, !5447, !5448, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5549, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5716, !5728, !5729, !5730, !5732, !5733, !5737, !5759, !5760, !5764, !5765, !5766, !5767, !5768, !5770, !5771, !5773, !5775, !5776, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5796, !5797, !5798, !5799, !5800, !5801, !5803, !5804, !5805}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5444, file: !207, line: 1496, baseType: !4385, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5444, file: !207, line: 1498, baseType: !4391, size: 64, offset: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5444, file: !207, line: 1500, baseType: !5449, size: 64, offset: 128)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5451)
!5451 = !{!5452, !5453, !5457}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5450, file: !94, line: 107, baseType: !482, size: 128)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5450, file: !94, line: 108, baseType: !5454, size: 64, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!476, !4391, !5449, !444}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5450, file: !94, line: 110, baseType: !5458, size: 64, offset: 192)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!476, !4391, !5449, !363, !491}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5444, file: !207, line: 1508, baseType: !4695, size: 64, offset: 192)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5444, file: !207, line: 1518, baseType: !344, size: 128, offset: 256)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5444, file: !207, line: 1526, baseType: !344, size: 128, offset: 384)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5444, file: !207, line: 1529, baseType: !5192, size: 256, offset: 512)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5444, file: !207, line: 1532, baseType: !444, size: 64, offset: 768)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5444, file: !207, line: 1539, baseType: !810, size: 256, offset: 832)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5444, file: !207, line: 1547, baseType: !7, size: 32, offset: 1088)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5444, file: !207, line: 1553, baseType: !109, size: 32, offset: 1120)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5444, file: !207, line: 1555, baseType: !109, size: 32, offset: 1152)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5444, file: !207, line: 1561, baseType: !1682, size: 8, offset: 1184)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5444, file: !207, line: 1567, baseType: !1682, size: 8, offset: 1192)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5444, file: !207, line: 1573, baseType: !1682, size: 8, offset: 1200)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5444, file: !207, line: 1581, baseType: !1682, size: 8, offset: 1208)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5444, file: !207, line: 1589, baseType: !206, size: 32, offset: 1216)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5444, file: !207, line: 1596, baseType: !344, size: 128, offset: 1280)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5444, file: !207, line: 1603, baseType: !212, size: 32, offset: 1408)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5444, file: !207, line: 1611, baseType: !344, size: 128, offset: 1472)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5444, file: !207, line: 1622, baseType: !5479, size: 1536, offset: 1600)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !207, line: 651, size: 1536, elements: !5480)
!5480 = !{!5481, !5482, !5483, !5484, !5485, !5486, !5487, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5531, !5532, !5537, !5542, !5543, !5544, !5545, !5547, !5548}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5479, file: !207, line: 655, baseType: !7, size: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5479, file: !207, line: 660, baseType: !7, size: 32, offset: 32)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5479, file: !207, line: 665, baseType: !7, size: 32, offset: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5479, file: !207, line: 670, baseType: !217, size: 32, offset: 96)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5479, file: !207, line: 684, baseType: !109, size: 32, offset: 128)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5479, file: !207, line: 692, baseType: !594, size: 32, offset: 160)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5479, file: !207, line: 699, baseType: !5488, size: 64, offset: 192)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5479, file: !207, line: 703, baseType: !7, size: 32, offset: 256)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5479, file: !207, line: 710, baseType: !594, size: 32, offset: 288)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5479, file: !207, line: 716, baseType: !109, size: 32, offset: 320)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5479, file: !207, line: 721, baseType: !1682, size: 8, offset: 352)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5479, file: !207, line: 729, baseType: !1682, size: 8, offset: 360)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5479, file: !207, line: 737, baseType: !1682, size: 8, offset: 368)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5479, file: !207, line: 742, baseType: !1682, size: 8, offset: 376)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5479, file: !207, line: 748, baseType: !1682, size: 8, offset: 384)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5479, file: !207, line: 754, baseType: !402, size: 8, offset: 392)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5479, file: !207, line: 760, baseType: !402, size: 8, offset: 400)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5479, file: !207, line: 765, baseType: !402, size: 8, offset: 408)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5479, file: !207, line: 770, baseType: !5502, size: 768, offset: 448)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !207, line: 293, size: 768, elements: !5503)
!5503 = !{!5504, !5514, !5515, !5516, !5517, !5518, !5519}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5502, file: !207, line: 295, baseType: !5505, size: 32)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !207, line: 231, size: 32, elements: !5506)
!5506 = !{!5507, !5508, !5509}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5505, file: !207, line: 235, baseType: !1682, size: 8)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5505, file: !207, line: 239, baseType: !1682, size: 8, offset: 8)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5505, file: !207, line: 243, baseType: !5510, size: 16, offset: 16)
!5510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !207, line: 214, size: 16, elements: !5511)
!5511 = !{!5512, !5513}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5510, file: !207, line: 218, baseType: !1682, size: 8)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5510, file: !207, line: 222, baseType: !1682, size: 8, offset: 8)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5502, file: !207, line: 303, baseType: !4267, size: 256, offset: 64)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5502, file: !207, line: 311, baseType: !4267, size: 256, offset: 320)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5502, file: !207, line: 314, baseType: !402, size: 8, offset: 576)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5502, file: !207, line: 317, baseType: !402, size: 8, offset: 584)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5502, file: !207, line: 320, baseType: !402, size: 8, offset: 592)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5502, file: !207, line: 323, baseType: !5520, size: 128, offset: 608)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !207, line: 253, size: 128, elements: !5521)
!5521 = !{!5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5520, file: !207, line: 255, baseType: !1682, size: 8)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5520, file: !207, line: 258, baseType: !1682, size: 8, offset: 8)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5520, file: !207, line: 264, baseType: !1682, size: 8, offset: 16)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5520, file: !207, line: 269, baseType: !402, size: 8, offset: 24)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5520, file: !207, line: 272, baseType: !402, size: 8, offset: 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5520, file: !207, line: 275, baseType: !109, size: 32, offset: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5520, file: !207, line: 278, baseType: !402, size: 8, offset: 96)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5520, file: !207, line: 281, baseType: !402, size: 8, offset: 104)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5520, file: !207, line: 284, baseType: !402, size: 8, offset: 112)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5479, file: !207, line: 775, baseType: !1682, size: 8, offset: 1216)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5479, file: !207, line: 780, baseType: !5533, size: 32, offset: 1232)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !207, line: 383, size: 32, elements: !5534)
!5534 = !{!5535, !5536}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5533, file: !207, line: 384, baseType: !412, size: 16)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5533, file: !207, line: 385, baseType: !412, size: 16, offset: 16)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5479, file: !207, line: 785, baseType: !5538, size: 64, offset: 1280)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !207, line: 399, size: 64, elements: !5539)
!5539 = !{!5540, !5541}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5538, file: !207, line: 400, baseType: !594, size: 32)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5538, file: !207, line: 401, baseType: !594, size: 32, offset: 32)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5479, file: !207, line: 792, baseType: !402, size: 8, offset: 1344)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5479, file: !207, line: 797, baseType: !402, size: 8, offset: 1352)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5479, file: !207, line: 803, baseType: !594, size: 32, offset: 1376)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5479, file: !207, line: 808, baseType: !5546, size: 64, offset: 1408)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5479, file: !207, line: 813, baseType: !109, size: 32, offset: 1472)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5479, file: !207, line: 818, baseType: !594, size: 32, offset: 1504)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5444, file: !207, line: 1625, baseType: !5550, size: 64, offset: 3136)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5552)
!5552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !207, line: 1034, size: 1024, elements: !5553)
!5553 = !{!5554, !5558, !5562, !5566, !5567, !5571, !5575, !5579, !5580, !5581, !5683, !5687, !5691, !5697, !5701, !5702}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5552, file: !207, line: 1051, baseType: !5555, size: 64)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{!109, !5443, !109}
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5552, file: !207, line: 1063, baseType: !5559, size: 64, offset: 64)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{null, !5443}
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5552, file: !207, line: 1096, baseType: !5563, size: 64, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!212, !5443, !1682}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5552, file: !207, line: 1113, baseType: !5559, size: 64, offset: 192)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5552, file: !207, line: 1138, baseType: !5568, size: 64, offset: 256)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!109, !5443, !1648, !1648}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5552, file: !207, line: 1154, baseType: !5572, size: 64, offset: 320)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!109, !5443, !5204, !5026}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5552, file: !207, line: 1173, baseType: !5576, size: 64, offset: 384)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!109, !5443}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5552, file: !207, line: 1186, baseType: !5559, size: 64, offset: 448)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5552, file: !207, line: 1196, baseType: !5559, size: 64, offset: 512)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5552, file: !207, line: 1229, baseType: !5582, size: 64, offset: 576)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!5585, !5443}
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !207, line: 884, size: 1280, elements: !5587)
!5587 = !{!5588, !5589, !5590, !5624, !5625, !5626, !5640, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5670, !5671, !5672, !5673}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5586, file: !207, line: 886, baseType: !5443, size: 64)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5586, file: !207, line: 894, baseType: !5381, size: 64, offset: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5586, file: !207, line: 912, baseType: !5591, size: 64, offset: 128)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5593, line: 98, size: 960, elements: !5594)
!5593 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74b3d858470ff421c0475e349d8db40a")
!5594 = !{!5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5620}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5592, file: !5593, line: 99, baseType: !4385, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5592, file: !5593, line: 100, baseType: !344, size: 128, offset: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5592, file: !5593, line: 102, baseType: !5192, size: 256, offset: 192)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5592, file: !5593, line: 103, baseType: !444, size: 64, offset: 448)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5592, file: !5593, line: 130, baseType: !109, size: 32, offset: 512)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5592, file: !5593, line: 136, baseType: !7, size: 32, offset: 544)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5592, file: !5593, line: 149, baseType: !1648, size: 32, offset: 576)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5592, file: !5593, line: 170, baseType: !1648, size: 32, offset: 608)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5592, file: !5593, line: 177, baseType: !5381, size: 64, offset: 640)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5592, file: !5593, line: 183, baseType: !344, size: 128, offset: 704)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5592, file: !5593, line: 185, baseType: !5606, size: 64, offset: 832)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5608)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5593, line: 40, size: 256, elements: !5609)
!5609 = !{!5610, !5614, !5615, !5619}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5608, file: !5593, line: 48, baseType: !5611, size: 64)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5612, size: 64)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{null, !5591}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5608, file: !5593, line: 57, baseType: !5611, size: 64, offset: 64)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5608, file: !5593, line: 72, baseType: !5616, size: 64, offset: 128)
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!109, !5591}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5608, file: !5593, line: 83, baseType: !5611, size: 64, offset: 192)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5592, file: !5593, line: 186, baseType: !5621, size: 64, offset: 896)
!5621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5622, size: 64)
!5622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5623)
!5623 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !5593, line: 186, flags: DIFlagFwdDecl)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5586, file: !207, line: 918, baseType: !225, size: 32, offset: 192)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5586, file: !207, line: 921, baseType: !5351, size: 64, offset: 256)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5586, file: !207, line: 928, baseType: !5627, size: 64, offset: 320)
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5628, size: 64)
!5628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !5353, line: 72, size: 1152, elements: !5629)
!5629 = !{!5630, !5631, !5632, !5633, !5634, !5635, !5636, !5639}
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5628, file: !5353, line: 78, baseType: !5381, size: 64)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5628, file: !5353, line: 87, baseType: !4029, size: 32, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !5628, file: !5353, line: 101, baseType: !1544, size: 256, offset: 128)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !5628, file: !5353, line: 119, baseType: !1544, size: 256, offset: 384)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !5628, file: !5353, line: 133, baseType: !1544, size: 256, offset: 640)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !5628, file: !5353, line: 141, baseType: !344, size: 128, offset: 896)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5628, file: !5353, line: 148, baseType: !5637, size: 64, offset: 1024)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !5383, line: 58, flags: DIFlagFwdDecl)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !5628, file: !5353, line: 157, baseType: !1682, size: 8, offset: 1088)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5586, file: !207, line: 931, baseType: !5641, size: 448, offset: 384)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !207, line: 867, size: 448, elements: !5642)
!5642 = !{!5643, !5644, !5645, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5641, file: !207, line: 868, baseType: !229, size: 32)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5641, file: !207, line: 869, baseType: !229, size: 32, offset: 32)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5641, file: !207, line: 870, baseType: !5646, size: 128, offset: 64)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !207, line: 831, size: 128, elements: !5647)
!5647 = !{!5648, !5649, !5650, !5651}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5646, file: !207, line: 835, baseType: !7, size: 32)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5646, file: !207, line: 840, baseType: !7, size: 32, offset: 32)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5646, file: !207, line: 845, baseType: !7, size: 32, offset: 64)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5646, file: !207, line: 850, baseType: !7, size: 32, offset: 96)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5641, file: !207, line: 871, baseType: !7, size: 32, offset: 192)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5641, file: !207, line: 872, baseType: !7, size: 32, offset: 224)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5641, file: !207, line: 873, baseType: !7, size: 32, offset: 256)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5641, file: !207, line: 874, baseType: !7, size: 32, offset: 288)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5641, file: !207, line: 875, baseType: !7, size: 32, offset: 320)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5641, file: !207, line: 876, baseType: !7, size: 32, offset: 352)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5641, file: !207, line: 877, baseType: !7, size: 32, offset: 384)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5641, file: !207, line: 878, baseType: !7, size: 32, offset: 416)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5586, file: !207, line: 945, baseType: !1682, size: 8, offset: 832)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5586, file: !207, line: 954, baseType: !197, size: 32, offset: 864)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5586, file: !207, line: 962, baseType: !7, size: 32, offset: 896)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5586, file: !207, line: 968, baseType: !7, size: 32, offset: 928)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5586, file: !207, line: 974, baseType: !7, size: 32, offset: 960)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5586, file: !207, line: 980, baseType: !7, size: 32, offset: 992)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5586, file: !207, line: 987, baseType: !245, size: 32, offset: 1024)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5586, file: !207, line: 1000, baseType: !5668, size: 64, offset: 1088)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !207, line: 1000, flags: DIFlagFwdDecl)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5586, file: !207, line: 1006, baseType: !402, size: 8, offset: 1152)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5586, file: !207, line: 1012, baseType: !402, size: 8, offset: 1160)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5586, file: !207, line: 1018, baseType: !265, size: 32, offset: 1184)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5586, file: !207, line: 1024, baseType: !5674, size: 64, offset: 1216)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !5206, line: 216, size: 704, elements: !5676)
!5676 = !{!5677, !5678, !5679, !5680, !5681, !5682}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5675, file: !5206, line: 217, baseType: !5192, size: 256)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5675, file: !5206, line: 218, baseType: !4385, size: 64, offset: 256)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5675, file: !5206, line: 219, baseType: !344, size: 128, offset: 320)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5675, file: !5206, line: 220, baseType: !344, size: 128, offset: 448)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5675, file: !5206, line: 221, baseType: !491, size: 64, offset: 576)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5675, file: !5206, line: 222, baseType: !516, size: 64, offset: 640)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5552, file: !207, line: 1239, baseType: !5684, size: 64, offset: 640)
!5684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5685, size: 64)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{null, !5443, !5585}
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5552, file: !207, line: 1284, baseType: !5688, size: 64, offset: 704)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!109, !5443, !5585, !5204, !5026}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5552, file: !207, line: 1307, baseType: !5692, size: 64, offset: 768)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!109, !5443, !5695, !5204, !5025}
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5586)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5552, file: !207, line: 1321, baseType: !5698, size: 64, offset: 832)
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DISubroutineType(types: !5700)
!5700 = !{null, !5031, !5695}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5552, file: !207, line: 1330, baseType: !5559, size: 64, offset: 896)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5552, file: !207, line: 1337, baseType: !5703, size: 64, offset: 960)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{null, !5443, !560}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5444, file: !207, line: 1632, baseType: !5674, size: 64, offset: 3200)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5444, file: !207, line: 1635, baseType: !5199, size: 3136, offset: 3264)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5444, file: !207, line: 1641, baseType: !5204, size: 64, offset: 6400)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5444, file: !207, line: 1652, baseType: !5204, size: 64, offset: 6464)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5444, file: !207, line: 1658, baseType: !5204, size: 64, offset: 6528)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5444, file: !207, line: 1666, baseType: !5674, size: 64, offset: 6592)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5444, file: !207, line: 1672, baseType: !5204, size: 64, offset: 6656)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5444, file: !207, line: 1675, baseType: !5714, size: 64, offset: 6720)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !207, line: 46, flags: DIFlagFwdDecl)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5444, file: !207, line: 1678, baseType: !5717, size: 192, offset: 6784)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5718, line: 54, size: 192, elements: !5719)
!5718 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5719 = !{!5720, !5726, !5727}
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5717, file: !5718, line: 55, baseType: !5721, size: 64)
!5721 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5718, line: 51, baseType: !5722)
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5723, size: 64)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!109, !5725, !494, !516}
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5717, file: !5718, line: 56, baseType: !5725, size: 64, offset: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5717, file: !5718, line: 57, baseType: !109, size: 32, offset: 128)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5444, file: !207, line: 1684, baseType: !5204, size: 64, offset: 6976)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5444, file: !207, line: 1690, baseType: !5204, size: 64, offset: 7040)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5444, file: !207, line: 1717, baseType: !5731, size: 8, offset: 7104)
!5731 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !345, line: 108, baseType: !402)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5444, file: !207, line: 1725, baseType: !109, size: 32, offset: 7136)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5444, file: !207, line: 1728, baseType: !5734, size: 64, offset: 7168)
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5736)
!5736 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !207, line: 37, flags: DIFlagFwdDecl)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5444, file: !207, line: 1731, baseType: !5738, size: 768, offset: 7232)
!5738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !207, line: 1348, size: 768, elements: !5739)
!5739 = !{!5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758}
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5738, file: !207, line: 1354, baseType: !3398, size: 256)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5738, file: !207, line: 1361, baseType: !1682, size: 8, offset: 256)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5738, file: !207, line: 1368, baseType: !1682, size: 8, offset: 264)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5738, file: !207, line: 1375, baseType: !1682, size: 8, offset: 272)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5738, file: !207, line: 1382, baseType: !7, size: 32, offset: 288)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5738, file: !207, line: 1389, baseType: !109, size: 32, offset: 320)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5738, file: !207, line: 1396, baseType: !109, size: 32, offset: 352)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5738, file: !207, line: 1403, baseType: !109, size: 32, offset: 384)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5738, file: !207, line: 1410, baseType: !109, size: 32, offset: 416)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5738, file: !207, line: 1417, baseType: !1682, size: 8, offset: 448)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5738, file: !207, line: 1424, baseType: !1682, size: 8, offset: 456)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5738, file: !207, line: 1432, baseType: !1682, size: 8, offset: 464)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5738, file: !207, line: 1440, baseType: !1682, size: 8, offset: 472)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5738, file: !207, line: 1448, baseType: !271, size: 32, offset: 480)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5738, file: !207, line: 1458, baseType: !7, size: 32, offset: 512)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5738, file: !207, line: 1466, baseType: !277, size: 32, offset: 544)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5738, file: !207, line: 1471, baseType: !5646, size: 128, offset: 576)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5738, file: !207, line: 1476, baseType: !284, size: 32, offset: 704)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5738, file: !207, line: 1483, baseType: !1682, size: 8, offset: 736)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5444, file: !207, line: 1733, baseType: !271, size: 32, offset: 8000)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5444, file: !207, line: 1741, baseType: !5761, size: 64, offset: 8064)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5763)
!5763 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !207, line: 1741, flags: DIFlagFwdDecl)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5444, file: !207, line: 1746, baseType: !810, size: 256, offset: 8128)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5444, file: !207, line: 1749, baseType: !598, size: 64, offset: 8384)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5444, file: !207, line: 1756, baseType: !594, size: 32, offset: 8448)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5444, file: !207, line: 1764, baseType: !5591, size: 64, offset: 8512)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5444, file: !207, line: 1768, baseType: !5769, size: 1024, offset: 8576)
!5769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5731, size: 1024, elements: !4487)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5444, file: !207, line: 1770, baseType: !810, size: 256, offset: 9600)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5444, file: !207, line: 1773, baseType: !5772, size: 16, offset: 9856)
!5772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1682, size: 16, elements: !1883)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5444, file: !207, line: 1778, baseType: !5774, size: 64, offset: 9888)
!5774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !1883)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5444, file: !207, line: 1783, baseType: !5774, size: 64, offset: 9952)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5444, file: !207, line: 1794, baseType: !5777, size: 64, offset: 10048)
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5778, size: 64)
!5778 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !207, line: 48, flags: DIFlagFwdDecl)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5444, file: !207, line: 1800, baseType: !109, size: 32, offset: 10112)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5444, file: !207, line: 1803, baseType: !7, size: 32, offset: 10144)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5444, file: !207, line: 1810, baseType: !1682, size: 8, offset: 10176)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5444, file: !207, line: 1816, baseType: !402, size: 8, offset: 10184)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5444, file: !207, line: 1819, baseType: !560, size: 64, offset: 10240)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5444, file: !207, line: 1835, baseType: !5585, size: 64, offset: 10304)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5444, file: !207, line: 1852, baseType: !5674, size: 64, offset: 10368)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5444, file: !207, line: 1855, baseType: !1682, size: 8, offset: 10432)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5444, file: !207, line: 1857, baseType: !5788, size: 64, offset: 10496)
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !207, line: 2058, size: 256, elements: !5790)
!5790 = !{!5791, !5792, !5793, !5794}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5789, file: !207, line: 2059, baseType: !4029, size: 32)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5789, file: !207, line: 2060, baseType: !4385, size: 64, offset: 64)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5789, file: !207, line: 2061, baseType: !109, size: 32, offset: 128)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5789, file: !207, line: 2062, baseType: !5795, size: 64, offset: 160)
!5795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 64, elements: !1122)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5444, file: !207, line: 1859, baseType: !1682, size: 8, offset: 10560)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5444, file: !207, line: 1863, baseType: !5731, size: 8, offset: 10568)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5444, file: !207, line: 1863, baseType: !5731, size: 8, offset: 10576)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5444, file: !207, line: 1866, baseType: !5731, size: 8, offset: 10584)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5444, file: !207, line: 1866, baseType: !5731, size: 8, offset: 10592)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5444, file: !207, line: 1869, baseType: !5802, size: 16, offset: 10608)
!5802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !345, line: 109, baseType: !412)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5444, file: !207, line: 1869, baseType: !5802, size: 16, offset: 10624)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5444, file: !207, line: 1878, baseType: !862, size: 64, offset: 10688)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5444, file: !207, line: 1881, baseType: !5806, size: 96, offset: 10752)
!5806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !198, line: 383, size: 96, elements: !5807)
!5807 = !{!5808, !5809}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5806, file: !198, line: 387, baseType: !595, size: 32)
!5809 = !DIDerivedType(tag: DW_TAG_member, scope: !5806, file: !198, line: 391, baseType: !5810, size: 64, offset: 32)
!5810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5806, file: !198, line: 391, size: 64, elements: !5811)
!5811 = !{!5812}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5810, file: !198, line: 392, baseType: !5813, size: 64)
!5813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !198, line: 370, size: 64, elements: !5814)
!5814 = !{!5815, !5816, !5817, !5818, !5819}
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5813, file: !198, line: 371, baseType: !404, size: 8)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5813, file: !198, line: 372, baseType: !404, size: 8, offset: 8)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5813, file: !198, line: 373, baseType: !413, size: 16, offset: 16)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5813, file: !198, line: 374, baseType: !413, size: 16, offset: 32)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5813, file: !198, line: 375, baseType: !413, size: 16, offset: 48)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5433, file: !5383, line: 1202, baseType: !491, size: 64, offset: 320)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5404, file: !5383, line: 576, baseType: !5822, size: 64, offset: 448)
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5823, size: 64)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!109, !5381, !5185, !5637, !1648, !5137}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5404, file: !5383, line: 595, baseType: !5826, size: 64, offset: 512)
!5826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5827, size: 64)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!109, !5381, !5185, !5637, !1648, !1648, !5137}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5404, file: !5383, line: 615, baseType: !5830, size: 64, offset: 576)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!109, !5381, !5204, !5026}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5404, file: !5383, line: 649, baseType: !5834, size: 64, offset: 640)
!5834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5835, size: 64)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!5837, !5381}
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!5838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !5383, line: 81, size: 2688, elements: !5839)
!5839 = !{!5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5838, file: !5383, line: 83, baseType: !5381, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5838, file: !5383, line: 90, baseType: !1682, size: 8, offset: 64)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5838, file: !5383, line: 105, baseType: !1682, size: 8, offset: 72)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5838, file: !5383, line: 111, baseType: !1682, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5838, file: !5383, line: 123, baseType: !1682, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5838, file: !5383, line: 130, baseType: !1682, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5838, file: !5383, line: 141, baseType: !1682, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5838, file: !5383, line: 147, baseType: !1682, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5838, file: !5383, line: 153, baseType: !1682, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5838, file: !5383, line: 189, baseType: !1682, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5838, file: !5383, line: 195, baseType: !594, size: 32, offset: 96)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5838, file: !5383, line: 201, baseType: !594, size: 32, offset: 128)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5838, file: !5383, line: 207, baseType: !594, size: 32, offset: 160)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5838, file: !5383, line: 222, baseType: !5311, size: 960, offset: 192)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5838, file: !5383, line: 239, baseType: !5311, size: 960, offset: 1152)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5838, file: !5383, line: 245, baseType: !5674, size: 64, offset: 2112)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5838, file: !5383, line: 254, baseType: !5674, size: 64, offset: 2176)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5838, file: !5383, line: 262, baseType: !5674, size: 64, offset: 2240)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5838, file: !5383, line: 275, baseType: !5674, size: 64, offset: 2304)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5838, file: !5383, line: 283, baseType: !594, size: 32, offset: 2368)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5838, file: !5383, line: 291, baseType: !1682, size: 8, offset: 2400)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5838, file: !5383, line: 300, baseType: !1682, size: 8, offset: 2408)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5838, file: !5383, line: 311, baseType: !1682, size: 8, offset: 2416)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5838, file: !5383, line: 318, baseType: !294, size: 32, offset: 2432)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5838, file: !5383, line: 375, baseType: !5637, size: 64, offset: 2496)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5838, file: !5383, line: 384, baseType: !5627, size: 64, offset: 2560)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5838, file: !5383, line: 387, baseType: !5351, size: 64, offset: 2624)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5404, file: !5383, line: 659, baseType: !5868, size: 64, offset: 704)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{null, !5381, !5837}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5404, file: !5383, line: 704, baseType: !5872, size: 64, offset: 768)
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!109, !5381, !5837, !5204, !5026}
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5404, file: !5383, line: 726, baseType: !5876, size: 64, offset: 832)
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5877, size: 64)
!5877 = !DISubroutineType(types: !5878)
!5878 = !{!109, !5381, !5879, !5204, !5025}
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5838)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5404, file: !5383, line: 744, baseType: !5882, size: 64, offset: 896)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{!109, !5381}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5404, file: !5383, line: 755, baseType: !5407, size: 64, offset: 960)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5404, file: !5383, line: 784, baseType: !5887, size: 64, offset: 1024)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!109, !5381, !363}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5404, file: !5383, line: 800, baseType: !5891, size: 64, offset: 1088)
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!109, !5381, !363, !5894}
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5404, file: !5383, line: 822, baseType: !5896, size: 64, offset: 1152)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!5899, !5381, !5894}
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5404, file: !5383, line: 834, baseType: !5902, size: 64, offset: 1216)
!5902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{null, !5031, !5879}
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5404, file: !5383, line: 861, baseType: !5906, size: 64, offset: 1280)
!5906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5907, size: 64)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!594, !5381}
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5404, file: !5383, line: 874, baseType: !5882, size: 64, offset: 1344)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5404, file: !5383, line: 882, baseType: !5407, size: 64, offset: 1408)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5404, file: !5383, line: 920, baseType: !5912, size: 64, offset: 1472)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{!1682, !5381, !792, !5915, !1682}
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5382, file: !5383, line: 1068, baseType: !1648, size: 32, offset: 3328)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !5382, file: !5383, line: 1077, baseType: !5918, size: 64, offset: 3392)
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5382, file: !5383, line: 1080, baseType: !5920, size: 64, offset: 3456)
!5920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5921, size: 64)
!5921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5922)
!5922 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !5383, line: 63, flags: DIFlagFwdDecl)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5382, file: !5383, line: 1083, baseType: !5199, size: 3136, offset: 3520)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5382, file: !5383, line: 1089, baseType: !5204, size: 64, offset: 6656)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5382, file: !5383, line: 1104, baseType: !5837, size: 64, offset: 6720)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !5382, file: !5383, line: 1121, baseType: !344, size: 128, offset: 6784)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !5382, file: !5383, line: 1128, baseType: !374, size: 32, offset: 6912)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5382, file: !5383, line: 1135, baseType: !560, size: 64, offset: 6976)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !5382, file: !5383, line: 1142, baseType: !5930, size: 576, offset: 7040)
!5930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5931, line: 53, size: 576, elements: !5932)
!5931 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!5932 = !{!5933, !5934, !5935, !5936, !5937, !5947, !5948, !5949, !5950}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5930, file: !5931, line: 54, baseType: !374, size: 32)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5930, file: !5931, line: 55, baseType: !363, size: 64, offset: 64)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5930, file: !5931, line: 56, baseType: !1682, size: 8, offset: 128)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5930, file: !5931, line: 56, baseType: !1682, size: 8, offset: 136)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5930, file: !5931, line: 57, baseType: !5938, size: 64, offset: 192)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5931, line: 33, size: 384, elements: !5940)
!5940 = !{!5941, !5942, !5943}
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5939, file: !5931, line: 34, baseType: !1682, size: 8)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5939, file: !5931, line: 35, baseType: !1648, size: 32, offset: 32)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5939, file: !5931, line: 36, baseType: !5944, size: 320, offset: 64)
!5944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1648, size: 320, elements: !5945)
!5945 = !{!5946}
!5946 = !DISubrange(count: 10)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5930, file: !5931, line: 58, baseType: !109, size: 32, offset: 256)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5930, file: !5931, line: 58, baseType: !109, size: 32, offset: 288)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5930, file: !5931, line: 59, baseType: !491, size: 64, offset: 320)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5930, file: !5931, line: 60, baseType: !926, size: 192, offset: 384)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !5382, file: !5383, line: 1149, baseType: !7, size: 32, offset: 7616)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !5382, file: !5383, line: 1156, baseType: !374, size: 32, offset: 7648)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !5382, file: !5383, line: 1163, baseType: !494, size: 64, offset: 7680)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !5382, file: !5383, line: 1170, baseType: !3398, size: 256, offset: 7744)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !5382, file: !5383, line: 1177, baseType: !5956, size: 64, offset: 8000)
!5956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5957, size: 64)
!5957 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !5383, line: 44, flags: DIFlagFwdDecl)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5367, file: !295, line: 669, baseType: !5185, size: 64, offset: 1344)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !5367, file: !295, line: 677, baseType: !5185, size: 64, offset: 1408)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5367, file: !295, line: 680, baseType: !5961, size: 64, offset: 1472)
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5963)
!5963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !295, line: 279, size: 832, elements: !5964)
!5964 = !{!5965, !5969, !5973, !5977, !5978, !5982, !6072, !6076, !6080, !6086, !6090, !6091, !6095}
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5963, file: !295, line: 306, baseType: !5966, size: 64)
!5966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5967, size: 64)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!109, !5366, !5381, !5185, !109, !109, !7, !7, !1648, !1648, !1648, !1648, !5137}
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5963, file: !295, line: 329, baseType: !5970, size: 64, offset: 64)
!5970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5971, size: 64)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!109, !5366, !5137}
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5963, file: !295, line: 339, baseType: !5974, size: 64, offset: 128)
!5974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5975, size: 64)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{null, !5366}
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5963, file: !295, line: 351, baseType: !5974, size: 64, offset: 192)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5963, file: !295, line: 367, baseType: !5979, size: 64, offset: 256)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = !DISubroutineType(types: !5981)
!5981 = !{!109, !5366, !5204, !5026}
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5963, file: !295, line: 401, baseType: !5983, size: 64, offset: 320)
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5984, size: 64)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{!5986, !5366}
!5986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5987, size: 64)
!5987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !295, line: 52, size: 1280, elements: !5988)
!5988 = !{!5989, !5990, !5991, !5992, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057, !6058, !6059, !6067, !6068, !6069, !6070, !6071}
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5987, file: !295, line: 54, baseType: !5366, size: 64)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5987, file: !295, line: 62, baseType: !5381, size: 64, offset: 64)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5987, file: !295, line: 70, baseType: !5185, size: 64, offset: 128)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5987, file: !295, line: 83, baseType: !5993, size: 64, offset: 192)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5994, size: 64)
!5994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !5995, line: 65, size: 512, elements: !5996)
!5995 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!5996 = !{!5997, !5998, !6031, !6037, !6038, !6039, !6040, !6041}
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5994, file: !5995, line: 66, baseType: !2480, size: 64)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5994, file: !5995, line: 67, baseType: !5999, size: 64, offset: 64)
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6001)
!6001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !5995, line: 125, size: 640, elements: !6002)
!6002 = !{!6003, !6004, !6008, !6009, !6013, !6014, !6018, !6022, !6026, !6027}
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !6001, file: !5995, line: 132, baseType: !1682, size: 8)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !6001, file: !5995, line: 143, baseType: !6005, size: 64, offset: 64)
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6006, size: 64)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!363, !5993}
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !6001, file: !5995, line: 155, baseType: !6005, size: 64, offset: 128)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !6001, file: !5995, line: 192, baseType: !6010, size: 64, offset: 192)
!6010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6011, size: 64)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!1682, !5993}
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !6001, file: !5995, line: 209, baseType: !6010, size: 64, offset: 256)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !6001, file: !5995, line: 227, baseType: !6015, size: 64, offset: 320)
!6015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6016, size: 64)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!480, !5993, !1682, !480}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !6001, file: !5995, line: 238, baseType: !6019, size: 64, offset: 384)
!6019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6020, size: 64)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{null, !5993}
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !6001, file: !5995, line: 248, baseType: !6023, size: 64, offset: 448)
!6023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6024, size: 64)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{null, !5993, !444, !109}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !6001, file: !5995, line: 258, baseType: !6023, size: 64, offset: 512)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !6001, file: !5995, line: 279, baseType: !6028, size: 64, offset: 576)
!6028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6029, size: 64)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{null, !5993, !1087}
!6031 = !DIDerivedType(tag: DW_TAG_member, scope: !5994, file: !5995, line: 84, baseType: !6032, size: 128, offset: 128)
!6032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5994, file: !5995, line: 84, size: 128, elements: !6033)
!6033 = !{!6034, !6035, !6036}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !6032, file: !5995, line: 85, baseType: !344, size: 128)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !6032, file: !5995, line: 87, baseType: !1087, size: 64)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6032, file: !5995, line: 89, baseType: !868, size: 128, align: 64)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5994, file: !5995, line: 91, baseType: !598, size: 64, offset: 256)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !5994, file: !5995, line: 92, baseType: !598, size: 64, offset: 320)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5994, file: !5995, line: 93, baseType: !494, size: 64, offset: 384)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5994, file: !5995, line: 94, baseType: !4029, size: 32, offset: 448)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5994, file: !5995, line: 95, baseType: !109, size: 32, offset: 480)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5987, file: !295, line: 92, baseType: !1625, size: 32, offset: 256)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5987, file: !295, line: 99, baseType: !1625, size: 32, offset: 288)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5987, file: !295, line: 103, baseType: !1648, size: 32, offset: 320)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5987, file: !295, line: 103, baseType: !1648, size: 32, offset: 352)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5987, file: !295, line: 109, baseType: !1648, size: 32, offset: 384)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5987, file: !295, line: 114, baseType: !1648, size: 32, offset: 416)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5987, file: !295, line: 117, baseType: !1648, size: 32, offset: 448)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5987, file: !295, line: 117, baseType: !1648, size: 32, offset: 480)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5987, file: !295, line: 125, baseType: !412, size: 16, offset: 512)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5987, file: !295, line: 133, baseType: !5802, size: 16, offset: 528)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5987, file: !295, line: 140, baseType: !7, size: 32, offset: 544)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5987, file: !295, line: 155, baseType: !7, size: 32, offset: 576)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5987, file: !295, line: 164, baseType: !7, size: 32, offset: 608)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5987, file: !295, line: 171, baseType: !299, size: 32, offset: 640)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5987, file: !295, line: 178, baseType: !306, size: 32, offset: 672)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5987, file: !295, line: 191, baseType: !5674, size: 64, offset: 704)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5987, file: !295, line: 201, baseType: !1682, size: 8, offset: 768)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5987, file: !295, line: 223, baseType: !6060, size: 128, offset: 800)
!6060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !6061, line: 46, size: 128, elements: !6062)
!6061 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!6062 = !{!6063, !6064, !6065, !6066}
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !6060, file: !6061, line: 47, baseType: !109, size: 32)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !6060, file: !6061, line: 47, baseType: !109, size: 32, offset: 32)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !6060, file: !6061, line: 47, baseType: !109, size: 32, offset: 64)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !6060, file: !6061, line: 47, baseType: !109, size: 32, offset: 96)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5987, file: !295, line: 223, baseType: !6060, size: 128, offset: 928)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5987, file: !295, line: 231, baseType: !1682, size: 8, offset: 1056)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5987, file: !295, line: 238, baseType: !294, size: 32, offset: 1088)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5987, file: !295, line: 246, baseType: !5627, size: 64, offset: 1152)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5987, file: !295, line: 249, baseType: !5351, size: 64, offset: 1216)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5963, file: !295, line: 411, baseType: !6073, size: 64, offset: 384)
!6073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6074, size: 64)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{null, !5366, !5986}
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5963, file: !295, line: 456, baseType: !6077, size: 64, offset: 448)
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6078, size: 64)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{!109, !5366, !5986, !5204, !5026}
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5963, file: !295, line: 479, baseType: !6081, size: 64, offset: 512)
!6081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6082, size: 64)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!109, !5366, !6084, !5204, !5025}
!6084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6085, size: 64)
!6085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5987)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5963, file: !295, line: 496, baseType: !6087, size: 64, offset: 576)
!6087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6088, size: 64)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!109, !5366}
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5963, file: !295, line: 507, baseType: !5974, size: 64, offset: 640)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5963, file: !295, line: 518, baseType: !6092, size: 64, offset: 704)
!6092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6093, size: 64)
!6093 = !DISubroutineType(types: !6094)
!6094 = !{null, !5031, !6084}
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5963, file: !295, line: 537, baseType: !6096, size: 64, offset: 768)
!6096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6097, size: 64)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{!1682, !5366, !1648, !5026}
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5367, file: !295, line: 683, baseType: !5199, size: 3136, offset: 1536)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5367, file: !295, line: 686, baseType: !311, size: 32, offset: 4672)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5367, file: !295, line: 692, baseType: !7, size: 32, offset: 4704)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5367, file: !295, line: 695, baseType: !6103, size: 64, offset: 4736)
!6103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6104, size: 64)
!6104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6105)
!6105 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !295, line: 695, flags: DIFlagFwdDecl)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5367, file: !295, line: 710, baseType: !5986, size: 64, offset: 4800)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !5367, file: !295, line: 717, baseType: !5204, size: 64, offset: 4864)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !5367, file: !295, line: 723, baseType: !5204, size: 64, offset: 4928)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !5367, file: !295, line: 729, baseType: !5204, size: 64, offset: 4992)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !5367, file: !295, line: 737, baseType: !5204, size: 64, offset: 5056)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !5367, file: !295, line: 746, baseType: !5204, size: 64, offset: 5120)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !5367, file: !295, line: 754, baseType: !5204, size: 64, offset: 5184)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5367, file: !295, line: 760, baseType: !5204, size: 64, offset: 5248)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5363, file: !5353, line: 162, baseType: !5986, size: 64, offset: 64)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5363, file: !5353, line: 162, baseType: !5986, size: 64, offset: 128)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5363, file: !5353, line: 162, baseType: !5986, size: 64, offset: 192)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !5352, file: !5353, line: 402, baseType: !6118, size: 64, offset: 256)
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6119, size: 64)
!6119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !5353, line: 165, size: 448, elements: !6120)
!6120 = !{!6121, !6122, !6123, !6124, !6125, !6126, !6127}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6119, file: !5353, line: 166, baseType: !5381, size: 64)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6119, file: !5353, line: 167, baseType: !5837, size: 64, offset: 64)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !6119, file: !5353, line: 167, baseType: !5837, size: 64, offset: 128)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !6119, file: !5353, line: 167, baseType: !5837, size: 64, offset: 192)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !6119, file: !5353, line: 177, baseType: !5627, size: 64, offset: 256)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !6119, file: !5353, line: 179, baseType: !1355, size: 64, offset: 320)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !6119, file: !5353, line: 180, baseType: !598, size: 64, offset: 384)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5352, file: !5353, line: 403, baseType: !109, size: 32, offset: 320)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5352, file: !5353, line: 404, baseType: !6130, size: 64, offset: 384)
!6130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6131, size: 64)
!6131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !5353, line: 183, size: 320, elements: !6132)
!6132 = !{!6133, !6134, !6135, !6136, !6137}
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6131, file: !5353, line: 184, baseType: !5443, size: 64)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6131, file: !5353, line: 185, baseType: !5585, size: 64, offset: 64)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !6131, file: !5353, line: 185, baseType: !5585, size: 64, offset: 128)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !6131, file: !5353, line: 185, baseType: !5585, size: 64, offset: 192)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !6131, file: !5353, line: 193, baseType: !1355, size: 64, offset: 256)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !5352, file: !5353, line: 405, baseType: !109, size: 32, offset: 448)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !5352, file: !5353, line: 406, baseType: !6140, size: 64, offset: 512)
!6140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6141, size: 64)
!6141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !5353, line: 343, size: 256, elements: !6142)
!6142 = !{!6143, !6174, !6175, !6176}
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6141, file: !5353, line: 344, baseType: !6144, size: 64)
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !5353, line: 286, size: 704, elements: !6146)
!6146 = !{!6147, !6148, !6149, !6155}
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6145, file: !5353, line: 291, baseType: !344, size: 128)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6145, file: !5353, line: 296, baseType: !5118, size: 448, offset: 128)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6145, file: !5353, line: 301, baseType: !6150, size: 64, offset: 576)
!6150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6151, size: 64)
!6151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !5353, line: 331, size: 128, elements: !6152)
!6152 = !{!6153, !6154}
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6151, file: !5353, line: 335, baseType: !5351, size: 64)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !6151, file: !5353, line: 340, baseType: !6144, size: 64, offset: 64)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !6145, file: !5353, line: 309, baseType: !6156, size: 64, offset: 640)
!6156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6157, size: 64)
!6157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6158)
!6158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !5353, line: 209, size: 192, elements: !6159)
!6159 = !{!6160, !6164, !6168}
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !6158, file: !5353, line: 221, baseType: !6161, size: 64)
!6161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6162, size: 64)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!6150, !6144}
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !6158, file: !5353, line: 228, baseType: !6165, size: 64, offset: 64)
!6165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6166, size: 64)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{null, !6144, !6150}
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !6158, file: !5353, line: 240, baseType: !6169, size: 64, offset: 128)
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{null, !5031, !6172}
!6172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6173, size: 64)
!6173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6151)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6141, file: !5353, line: 345, baseType: !6150, size: 64, offset: 64)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !6141, file: !5353, line: 345, baseType: !6150, size: 64, offset: 128)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !6141, file: !5353, line: 345, baseType: !6150, size: 64, offset: 192)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5352, file: !5353, line: 408, baseType: !5137, size: 64, offset: 576)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !5352, file: !5353, line: 420, baseType: !5627, size: 64, offset: 640)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !5352, file: !5353, line: 428, baseType: !1431, size: 256, offset: 704)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5179, file: !5114, line: 283, baseType: !6181, size: 64, offset: 320)
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6182, size: 64)
!6182 = !DISubroutineType(types: !6183)
!6183 = !{!109, !4385, !5351, !1682}
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5179, file: !5114, line: 302, baseType: !6185, size: 64, offset: 384)
!6185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6186, size: 64)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!5351, !4385}
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5179, file: !5114, line: 323, baseType: !6189, size: 64, offset: 448)
!6189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6190, size: 64)
!6190 = !DISubroutineType(types: !6191)
!6191 = !{null, !5351}
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5179, file: !5114, line: 338, baseType: !6189, size: 64, offset: 512)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5113, file: !5114, line: 546, baseType: !1682, size: 8, offset: 3520)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5113, file: !5114, line: 547, baseType: !1682, size: 8, offset: 3528)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5113, file: !5114, line: 548, baseType: !1682, size: 8, offset: 3536)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5113, file: !5114, line: 549, baseType: !4321, size: 704, offset: 3584)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5113, file: !5114, line: 557, baseType: !810, size: 256, offset: 4288)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5113, file: !5114, line: 565, baseType: !344, size: 128, offset: 4544)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5113, file: !5114, line: 573, baseType: !5204, size: 64, offset: 4672)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5113, file: !5114, line: 578, baseType: !5204, size: 64, offset: 4736)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5113, file: !5114, line: 583, baseType: !5204, size: 64, offset: 4800)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5113, file: !5114, line: 589, baseType: !5204, size: 64, offset: 4864)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5113, file: !5114, line: 594, baseType: !5204, size: 64, offset: 4928)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5113, file: !5114, line: 599, baseType: !5204, size: 64, offset: 4992)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5113, file: !5114, line: 604, baseType: !5204, size: 64, offset: 5056)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5113, file: !5114, line: 609, baseType: !5204, size: 64, offset: 5120)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5113, file: !5114, line: 614, baseType: !5204, size: 64, offset: 5184)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5113, file: !5114, line: 619, baseType: !5204, size: 64, offset: 5248)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5113, file: !5114, line: 624, baseType: !5204, size: 64, offset: 5312)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5113, file: !5114, line: 629, baseType: !5204, size: 64, offset: 5376)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5113, file: !5114, line: 634, baseType: !5204, size: 64, offset: 5440)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5113, file: !5114, line: 639, baseType: !5204, size: 64, offset: 5504)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5113, file: !5114, line: 644, baseType: !5204, size: 64, offset: 5568)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5113, file: !5114, line: 649, baseType: !5204, size: 64, offset: 5632)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5113, file: !5114, line: 655, baseType: !5204, size: 64, offset: 5696)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5113, file: !5114, line: 660, baseType: !5204, size: 64, offset: 5760)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5113, file: !5114, line: 669, baseType: !5204, size: 64, offset: 5824)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5113, file: !5114, line: 675, baseType: !5204, size: 64, offset: 5888)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5113, file: !5114, line: 681, baseType: !5204, size: 64, offset: 5952)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5113, file: !5114, line: 686, baseType: !5204, size: 64, offset: 6016)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5113, file: !5114, line: 692, baseType: !5204, size: 64, offset: 6080)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5113, file: !5114, line: 697, baseType: !5204, size: 64, offset: 6144)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5113, file: !5114, line: 703, baseType: !5204, size: 64, offset: 6208)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5113, file: !5114, line: 709, baseType: !5204, size: 64, offset: 6272)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5113, file: !5114, line: 714, baseType: !5204, size: 64, offset: 6336)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5113, file: !5114, line: 722, baseType: !5204, size: 64, offset: 6400)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5113, file: !5114, line: 728, baseType: !5204, size: 64, offset: 6464)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5113, file: !5114, line: 734, baseType: !5204, size: 64, offset: 6528)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5113, file: !5114, line: 739, baseType: !5204, size: 64, offset: 6592)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5113, file: !5114, line: 744, baseType: !5204, size: 64, offset: 6656)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5113, file: !5114, line: 749, baseType: !5204, size: 64, offset: 6720)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5113, file: !5114, line: 754, baseType: !5204, size: 64, offset: 6784)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5113, file: !5114, line: 759, baseType: !5204, size: 64, offset: 6848)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5113, file: !5114, line: 764, baseType: !5204, size: 64, offset: 6912)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5113, file: !5114, line: 769, baseType: !5204, size: 64, offset: 6976)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5113, file: !5114, line: 774, baseType: !5204, size: 64, offset: 7040)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5113, file: !5114, line: 778, baseType: !5204, size: 64, offset: 7104)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5113, file: !5114, line: 784, baseType: !5204, size: 64, offset: 7168)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5113, file: !5114, line: 789, baseType: !5204, size: 64, offset: 7232)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5113, file: !5114, line: 794, baseType: !5204, size: 64, offset: 7296)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5113, file: !5114, line: 799, baseType: !5204, size: 64, offset: 7360)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5113, file: !5114, line: 804, baseType: !5204, size: 64, offset: 7424)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5113, file: !5114, line: 810, baseType: !5204, size: 64, offset: 7488)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5113, file: !5114, line: 816, baseType: !5204, size: 64, offset: 7552)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5113, file: !5114, line: 821, baseType: !5204, size: 64, offset: 7616)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5113, file: !5114, line: 827, baseType: !5204, size: 64, offset: 7680)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5113, file: !5114, line: 832, baseType: !5204, size: 64, offset: 7744)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5113, file: !5114, line: 839, baseType: !5204, size: 64, offset: 7808)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5113, file: !5114, line: 846, baseType: !5204, size: 64, offset: 7872)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5113, file: !5114, line: 853, baseType: !5204, size: 64, offset: 7936)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5113, file: !5114, line: 861, baseType: !5204, size: 64, offset: 8000)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5113, file: !5114, line: 869, baseType: !5204, size: 64, offset: 8064)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5113, file: !5114, line: 876, baseType: !5204, size: 64, offset: 8128)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5113, file: !5114, line: 882, baseType: !5204, size: 64, offset: 8192)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5113, file: !5114, line: 888, baseType: !5204, size: 64, offset: 8256)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5113, file: !5114, line: 891, baseType: !1648, size: 32, offset: 8320)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5113, file: !5114, line: 891, baseType: !1648, size: 32, offset: 8352)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5113, file: !5114, line: 899, baseType: !1682, size: 8, offset: 8384)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5113, file: !5114, line: 913, baseType: !1682, size: 8, offset: 8392)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5113, file: !5114, line: 919, baseType: !1682, size: 8, offset: 8400)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5113, file: !5114, line: 929, baseType: !1682, size: 8, offset: 8408)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5113, file: !5114, line: 937, baseType: !1682, size: 8, offset: 8416)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5113, file: !5114, line: 943, baseType: !5204, size: 64, offset: 8448)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5113, file: !5114, line: 946, baseType: !1648, size: 32, offset: 8512)
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5113, file: !5114, line: 946, baseType: !1648, size: 32, offset: 8544)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5113, file: !5114, line: 955, baseType: !5351, size: 64, offset: 8576)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5113, file: !5114, line: 957, baseType: !6268, size: 64, offset: 8640)
!6268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6269, size: 64)
!6269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6270)
!6270 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5114, line: 957, flags: DIFlagFwdDecl)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !4386, file: !317, line: 285, baseType: !810, size: 256, offset: 11648)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !4386, file: !317, line: 288, baseType: !944, size: 192, offset: 11904)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !4386, file: !317, line: 291, baseType: !6274, size: 64, offset: 12096)
!6274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6275, size: 64)
!6275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !6276, line: 59, size: 1984, elements: !6277)
!6276 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!6277 = !{!6278, !6279}
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !6275, file: !6276, line: 60, baseType: !888, size: 64)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !6275, file: !6276, line: 61, baseType: !6280, size: 1920, offset: 64)
!6280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !6281, line: 190, size: 1920, elements: !6282)
!6281 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!6282 = !{!6283, !6305, !6306, !6307, !6308, !6309, !6310}
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !6280, file: !6281, line: 200, baseType: !6284, size: 64)
!6284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6285, size: 64)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{null, !6287, !494, !4669, !4669}
!6287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6288, size: 64)
!6288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6289)
!6289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !6281, line: 157, size: 1344, elements: !6290)
!6290 = !{!6291, !6292, !6293, !6294, !6296, !6297, !6298, !6299, !6300, !6301, !6302, !6303, !6304}
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !6289, file: !6281, line: 159, baseType: !494, size: 64)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6289, file: !6281, line: 161, baseType: !598, size: 64, offset: 64)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6289, file: !6281, line: 163, baseType: !598, size: 64, offset: 128)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !6289, file: !6281, line: 165, baseType: !6295, size: 64, offset: 192)
!6295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6280, size: 64)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !6289, file: !6281, line: 166, baseType: !344, size: 128, offset: 256)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !6289, file: !6281, line: 167, baseType: !344, size: 128, offset: 384)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !6289, file: !6281, line: 168, baseType: !1009, size: 192, align: 64, offset: 512)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !6289, file: !6281, line: 169, baseType: !1009, size: 192, align: 64, offset: 704)
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !6289, file: !6281, line: 170, baseType: !1009, size: 192, align: 64, offset: 896)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !6289, file: !6281, line: 171, baseType: !598, size: 64, offset: 1088)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !6289, file: !6281, line: 172, baseType: !598, size: 64, offset: 1152)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !6289, file: !6281, line: 173, baseType: !598, size: 64, offset: 1216)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6289, file: !6281, line: 174, baseType: !494, size: 64, offset: 1280)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !6280, file: !6281, line: 206, baseType: !344, size: 128, offset: 64)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !6280, file: !6281, line: 209, baseType: !6289, size: 1344, offset: 192)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !6280, file: !6281, line: 211, baseType: !1138, size: 128, offset: 1536)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !6280, file: !6281, line: 212, baseType: !1138, size: 128, offset: 1664)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !6280, file: !6281, line: 213, baseType: !1141, size: 64, offset: 1792)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !6280, file: !6281, line: 215, baseType: !494, size: 64, offset: 1856)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !4386, file: !317, line: 294, baseType: !6312, size: 64, offset: 12160)
!6312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6313, size: 64)
!6313 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !317, line: 17, flags: DIFlagFwdDecl)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !4386, file: !317, line: 304, baseType: !316, size: 32, offset: 12224)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !4386, file: !317, line: 312, baseType: !6316, size: 64, offset: 12288)
!6316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6317, size: 64)
!6317 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !317, line: 18, flags: DIFlagFwdDecl)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4386, file: !317, line: 319, baseType: !810, size: 256, offset: 12352)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4386, file: !317, line: 327, baseType: !344, size: 128, offset: 12608)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4380, file: !142, line: 302, baseType: !1282, size: 64, offset: 128)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !4380, file: !142, line: 314, baseType: !6322, size: 1536, offset: 192)
!6322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !6276, line: 52, size: 1536, elements: !6323)
!6323 = !{!6324, !6325, !6326, !6327}
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !6322, file: !6276, line: 53, baseType: !888, size: 64)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !6322, file: !6276, line: 54, baseType: !6289, size: 1344, offset: 64)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !6322, file: !6276, line: 55, baseType: !1141, size: 64, offset: 1408)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !6322, file: !6276, line: 56, baseType: !516, size: 64, offset: 1472)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4380, file: !142, line: 322, baseType: !491, size: 64, offset: 1728)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4380, file: !142, line: 331, baseType: !109, size: 32, offset: 1792)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !4380, file: !142, line: 344, baseType: !4982, size: 64, offset: 1856)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !4380, file: !142, line: 364, baseType: !4988, size: 64, offset: 1920)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4380, file: !142, line: 373, baseType: !6333, size: 64, offset: 1984)
!6333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6334, size: 64)
!6334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !6335, line: 155, size: 384, elements: !6336)
!6335 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!6336 = !{!6337, !6338}
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6334, file: !6335, line: 166, baseType: !5122, size: 320)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !6334, file: !6335, line: 178, baseType: !6339, size: 64, offset: 320)
!6339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6340, size: 64)
!6340 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !6335, line: 50, flags: DIFlagFwdDecl)
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !4380, file: !142, line: 382, baseType: !6334, size: 384, offset: 2048)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !4380, file: !142, line: 398, baseType: !6343, size: 128, offset: 2432)
!6343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4380, file: !142, line: 392, size: 128, elements: !6344)
!6344 = !{!6345}
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6343, file: !142, line: 393, baseType: !344, size: 128)
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4380, file: !142, line: 409, baseType: !6347, size: 64, offset: 2560)
!6347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6348, size: 64)
!6348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6349)
!6349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !142, line: 69, size: 896, elements: !6350)
!6350 = !{!6351, !6355, !6359, !6363, !6369, !6373, !6377, !6378, !6382, !6388, !6392, !6396, !6397, !6401}
!6351 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6349, file: !142, line: 77, baseType: !6352, size: 64)
!6352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6353, size: 64)
!6353 = !DISubroutineType(types: !6354)
!6354 = !{null, !4968}
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !6349, file: !142, line: 86, baseType: !6356, size: 64, offset: 64)
!6356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6357, size: 64)
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!109, !4968, !4876}
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !6349, file: !142, line: 95, baseType: !6360, size: 64, offset: 128)
!6360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6361, size: 64)
!6361 = !DISubroutineType(types: !6362)
!6362 = !{null, !4968, !4876}
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !6349, file: !142, line: 110, baseType: !6364, size: 64, offset: 192)
!6364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6365, size: 64)
!6365 = !DISubroutineType(types: !6366)
!6366 = !{null, !5031, !7, !6367}
!6367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6368, size: 64)
!6368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4380)
!6369 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !6349, file: !142, line: 121, baseType: !6370, size: 64, offset: 256)
!6370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6371, size: 64)
!6371 = !DISubroutineType(types: !6372)
!6372 = !{!4982, !4968, !109}
!6373 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !6349, file: !142, line: 130, baseType: !6374, size: 64, offset: 320)
!6374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6375, size: 64)
!6375 = !DISubroutineType(types: !6376)
!6376 = !{!109, !4968}
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !6349, file: !142, line: 139, baseType: !6352, size: 64, offset: 384)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !6349, file: !142, line: 153, baseType: !6379, size: 64, offset: 448)
!6379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6380, size: 64)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!4990, !4968}
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !6349, file: !142, line: 163, baseType: !6383, size: 64, offset: 512)
!6383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6384, size: 64)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!109, !4968, !6386}
!6386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6387, size: 64)
!6387 = !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !142, line: 44, flags: DIFlagFwdDecl)
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !6349, file: !142, line: 173, baseType: !6389, size: 64, offset: 576)
!6389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6390, size: 64)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{null, !4968, !6386}
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !6349, file: !142, line: 186, baseType: !6393, size: 64, offset: 640)
!6393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6394, size: 64)
!6394 = !DISubroutineType(types: !6395)
!6395 = !{!109, !4968, !2340}
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !6349, file: !142, line: 196, baseType: !6374, size: 64, offset: 704)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6349, file: !142, line: 209, baseType: !6398, size: 64, offset: 768)
!6398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6399, size: 64)
!6399 = !DISubroutineType(types: !6400)
!6400 = !{!141, !4968}
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !6349, file: !142, line: 218, baseType: !2383, size: 64, offset: 832)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !4380, file: !142, line: 416, baseType: !344, size: 128, offset: 2624)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4380, file: !142, line: 423, baseType: !6404, size: 64, offset: 2752)
!6404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6405, size: 64)
!6405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !142, line: 230, size: 256, elements: !6406)
!6406 = !{!6407, !6409, !6410}
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6405, file: !142, line: 238, baseType: !6408, size: 64)
!6408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6405, file: !142, line: 246, baseType: !480, size: 64, offset: 64)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6405, file: !142, line: 253, baseType: !344, size: 128, offset: 128)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4376, file: !4377, line: 32, baseType: !2627, size: 64, offset: 2816)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "pages_use_count", scope: !4376, file: !4377, line: 40, baseType: !7, size: 32, offset: 2880)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "madv", scope: !4376, file: !4377, line: 49, baseType: !109, size: 32, offset: 2912)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "madv_list", scope: !4376, file: !4377, line: 56, baseType: !344, size: 128, offset: 2944)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !4376, file: !4377, line: 61, baseType: !4990, size: 64, offset: 3072)
!6416 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4376, file: !4377, line: 66, baseType: !516, size: 64, offset: 3136)
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "vmap_use_count", scope: !4376, file: !4377, line: 74, baseType: !7, size: 32, offset: 3200)
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "pages_mark_dirty_on_put", scope: !4376, file: !4377, line: 81, baseType: !1682, size: 1, offset: 3232, flags: DIFlagBitField, extraData: i64 3232)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "pages_mark_accessed_on_put", scope: !4376, file: !4377, line: 88, baseType: !1682, size: 1, offset: 3233, flags: DIFlagBitField, extraData: i64 3232)
!6420 = !DIDerivedType(tag: DW_TAG_member, name: "map_wc", scope: !4376, file: !4377, line: 93, baseType: !1682, size: 1, offset: 3234, flags: DIFlagBitField, extraData: i64 3232)
!6421 = !DIDerivedType(tag: DW_TAG_member, name: "hw_res_handle", scope: !4373, file: !4370, line: 89, baseType: !1648, size: 32, offset: 3264)
!6422 = !DIDerivedType(tag: DW_TAG_member, name: "dumb", scope: !4373, file: !4370, line: 90, baseType: !1682, size: 8, offset: 3296)
!6423 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !4373, file: !4370, line: 91, baseType: !1682, size: 8, offset: 3304)
!6424 = !DIDerivedType(tag: DW_TAG_member, name: "host3d_blob", scope: !4373, file: !4370, line: 92, baseType: !1682, size: 8, offset: 3312)
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "guest_blob", scope: !4373, file: !4370, line: 92, baseType: !1682, size: 8, offset: 3320)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "blob_mem", scope: !4373, file: !4370, line: 93, baseType: !1648, size: 32, offset: 3328)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "blob_flags", scope: !4373, file: !4370, line: 93, baseType: !1648, size: 32, offset: 3360)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_state", scope: !4373, file: !4370, line: 95, baseType: !109, size: 32, offset: 3392)
!6429 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !4373, file: !4370, line: 96, baseType: !3400, size: 128, offset: 3424)
!6430 = !DIDerivedType(tag: DW_TAG_member, name: "map_state", scope: !4369, file: !4370, line: 107, baseType: !1648, size: 32, offset: 3584)
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "map_info", scope: !4369, file: !4370, line: 108, baseType: !1648, size: 32, offset: 3616)
!6432 = !DIDerivedType(tag: DW_TAG_member, name: "vram_node", scope: !4369, file: !4370, line: 109, baseType: !6289, size: 1344, offset: 3648)
!6433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!6434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !345, line: 42, baseType: !494)
!6435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!6436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!6437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !2986, line: 40, baseType: !599)
!6438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2986, line: 38, baseType: !595)
!6439 = !{!6440, !6442, !6447, !0, !6695, !6697, !6699, !6704, !6709}
!6440 = !DIGlobalVariableExpression(var: !6441, expr: !DIExpression())
!6441 = distinct !DIGlobalVariable(name: "__param_virglhack", scope: !2, file: !3, line: 32, type: !4100, isLocal: true, isDefinition: true, align: 64)
!6442 = !DIGlobalVariableExpression(var: !6443, expr: !DIExpression())
!6443 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_virglhacktype319", scope: !2, file: !3, line: 32, type: !6444, isLocal: true, isDefinition: true, align: 8)
!6444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 272, elements: !6445)
!6445 = !{!6446}
!6446 = !DISubrange(count: 34)
!6447 = !DIGlobalVariableExpression(var: !6448, expr: !DIExpression())
!6448 = distinct !DIGlobalVariable(name: "seqno", scope: !6449, file: !3, line: 45, type: !394, isLocal: true, isDefinition: true)
!6449 = distinct !DISubprogram(name: "virtio_gpu_resource_id_get", scope: !3, file: !3, line: 34, type: !6450, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6687)
!6450 = !DISubroutineType(types: !6451)
!6451 = !{!109, !6452, !4977}
!6452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6453, size: 64)
!6453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_device", file: !4370, line: 224, size: 338496, elements: !6454)
!6454 = !{!6455, !6456, !6586, !6637, !6638, !6646, !6647, !6648, !6649, !6650, !6651, !6652, !6653, !6661, !6662, !6663, !6664, !6665, !6666, !6667, !6668, !6669, !6670, !6671, !6672, !6673, !6674, !6675, !6682, !6683, !6684, !6685, !6686}
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "ddev", scope: !6453, file: !4370, line: 225, baseType: !4385, size: 64)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !6453, file: !4370, line: 227, baseType: !6457, size: 64, offset: 64)
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6458, size: 64)
!6458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device", file: !6459, line: 122, size: 6400, elements: !6460)
!6459 = !DIFile(filename: "./include/linux/virtio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e5ffaaf59c73222e5165cb3fb97a1c")
!6460 = !{!6461, !6462, !6463, !6464, !6465, !6466, !6467, !6468, !6473, !6579, !6583, !6584, !6585}
!6461 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6458, file: !6459, line: 123, baseType: !109, size: 32)
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !6458, file: !6459, line: 124, baseType: !1682, size: 8, offset: 32)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "config_enabled", scope: !6458, file: !6459, line: 125, baseType: !1682, size: 8, offset: 40)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "config_change_pending", scope: !6458, file: !6459, line: 126, baseType: !1682, size: 8, offset: 48)
!6465 = !DIDerivedType(tag: DW_TAG_member, name: "config_lock", scope: !6458, file: !6459, line: 127, baseType: !374, size: 32, offset: 64)
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "vqs_list_lock", scope: !6458, file: !6459, line: 128, baseType: !374, size: 32, offset: 96)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6458, file: !6459, line: 129, baseType: !4392, size: 5824, offset: 128)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6458, file: !6459, line: 130, baseType: !6469, size: 64, offset: 5952)
!6469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device_id", file: !4481, line: 449, size: 64, elements: !6470)
!6470 = !{!6471, !6472}
!6471 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !6469, file: !4481, line: 450, baseType: !595, size: 32)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !6469, file: !4481, line: 451, baseType: !595, size: 32, offset: 32)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !6458, file: !6459, line: 131, baseType: !6474, size: 64, offset: 6016)
!6474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6475, size: 64)
!6475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6476)
!6476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_config_ops", file: !6477, line: 97, size: 1088, elements: !6478)
!6477 = !DIFile(filename: "./include/linux/virtio_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b12f5288db5f9b29a3869a2adb1ae6a1")
!6478 = !{!6479, !6483, !6487, !6491, !6495, !6499, !6503, !6541, !6542, !6543, !6547, !6551, !6555, !6561, !6565, !6574, !6578}
!6479 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !6476, file: !6477, line: 98, baseType: !6480, size: 64)
!6480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6481, size: 64)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{null, !6457, !7, !516, !7}
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !6476, file: !6477, line: 100, baseType: !6484, size: 64, offset: 64)
!6484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6485, size: 64)
!6485 = !DISubroutineType(types: !6486)
!6486 = !{null, !6457, !7, !1389, !7}
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !6476, file: !6477, line: 102, baseType: !6488, size: 64, offset: 128)
!6488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6489, size: 64)
!6489 = !DISubroutineType(types: !6490)
!6490 = !{!594, !6457}
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !6476, file: !6477, line: 103, baseType: !6492, size: 64, offset: 192)
!6492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6493, size: 64)
!6493 = !DISubroutineType(types: !6494)
!6494 = !{!402, !6457}
!6495 = !DIDerivedType(tag: DW_TAG_member, name: "set_status", scope: !6476, file: !6477, line: 104, baseType: !6496, size: 64, offset: 256)
!6496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6497, size: 64)
!6497 = !DISubroutineType(types: !6498)
!6498 = !{null, !6457, !402}
!6499 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6476, file: !6477, line: 105, baseType: !6500, size: 64, offset: 320)
!6500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6501, size: 64)
!6501 = !DISubroutineType(types: !6502)
!6502 = !{null, !6457}
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "find_vqs", scope: !6476, file: !6477, line: 106, baseType: !6504, size: 64, offset: 384)
!6504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6505, size: 64)
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!109, !6457, !7, !6507, !6523, !5899, !6526, !6528}
!6507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6508, size: 64)
!6508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6509, size: 64)
!6509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtqueue", file: !6459, line: 30, size: 512, elements: !6510)
!6510 = !{!6511, !6512, !6516, !6517, !6518, !6519, !6520, !6521, !6522}
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6509, file: !6459, line: 31, baseType: !344, size: 128)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !6509, file: !6459, line: 32, baseType: !6513, size: 64, offset: 128)
!6513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6514, size: 64)
!6514 = !DISubroutineType(types: !6515)
!6515 = !{null, !6508}
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6509, file: !6459, line: 33, baseType: !363, size: 64, offset: 192)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !6509, file: !6459, line: 34, baseType: !6457, size: 64, offset: 256)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6509, file: !6459, line: 35, baseType: !7, size: 32, offset: 320)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !6509, file: !6459, line: 36, baseType: !7, size: 32, offset: 352)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "num_max", scope: !6509, file: !6459, line: 37, baseType: !7, size: 32, offset: 384)
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6509, file: !6459, line: 38, baseType: !1682, size: 8, offset: 416)
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6509, file: !6459, line: 39, baseType: !516, size: 64, offset: 448)
!6523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6524, size: 64)
!6524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6525, size: 64)
!6525 = !DIDerivedType(tag: DW_TAG_typedef, name: "vq_callback_t", file: !6477, line: 19, baseType: !6514)
!6526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6527, size: 64)
!6527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!6528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6529, size: 64)
!6529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity", file: !6530, line: 285, size: 384, elements: !6531)
!6530 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!6531 = !{!6532, !6533, !6534, !6535, !6536, !6540}
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vectors", scope: !6529, file: !6530, line: 286, baseType: !7, size: 32)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "post_vectors", scope: !6529, file: !6530, line: 287, baseType: !7, size: 32, offset: 32)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sets", scope: !6529, file: !6530, line: 288, baseType: !7, size: 32, offset: 64)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "set_size", scope: !6529, file: !6530, line: 289, baseType: !5274, size: 128, offset: 96)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "calc_sets", scope: !6529, file: !6530, line: 290, baseType: !6537, size: 64, offset: 256)
!6537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6538, size: 64)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{null, !6528, !7}
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6529, file: !6530, line: 291, baseType: !516, size: 64, offset: 320)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "del_vqs", scope: !6476, file: !6477, line: 110, baseType: !6500, size: 64, offset: 448)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize_cbs", scope: !6476, file: !6477, line: 111, baseType: !6500, size: 64, offset: 512)
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !6476, file: !6477, line: 112, baseType: !6544, size: 64, offset: 576)
!6544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6545, size: 64)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!598, !6457}
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_features", scope: !6476, file: !6477, line: 113, baseType: !6548, size: 64, offset: 640)
!6548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6549, size: 64)
!6549 = !DISubroutineType(types: !6550)
!6550 = !{!109, !6457}
!6551 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !6476, file: !6477, line: 114, baseType: !6552, size: 64, offset: 704)
!6552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6553, size: 64)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!363, !6457}
!6555 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_affinity", scope: !6476, file: !6477, line: 115, baseType: !6556, size: 64, offset: 768)
!6556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6557, size: 64)
!6557 = !DISubroutineType(types: !6558)
!6558 = !{!109, !6508, !6559}
!6559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6560, size: 64)
!6560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!6561 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_affinity", scope: !6476, file: !6477, line: 117, baseType: !6562, size: 64, offset: 832)
!6562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6563, size: 64)
!6563 = !DISubroutineType(types: !6564)
!6564 = !{!6559, !6457, !109}
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "get_shm_region", scope: !6476, file: !6477, line: 119, baseType: !6566, size: 64, offset: 896)
!6566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6567, size: 64)
!6567 = !DISubroutineType(types: !6568)
!6568 = !{!1682, !6457, !6569, !402}
!6569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6570, size: 64)
!6570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_shm_region", file: !6477, line: 14, size: 128, elements: !6571)
!6571 = !{!6572, !6573}
!6572 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !6570, file: !6477, line: 15, baseType: !598, size: 64)
!6573 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6570, file: !6477, line: 16, baseType: !598, size: 64, offset: 64)
!6574 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vq_and_reset", scope: !6476, file: !6477, line: 121, baseType: !6575, size: 64, offset: 960)
!6575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6576, size: 64)
!6576 = !DISubroutineType(types: !6577)
!6577 = !{!109, !6508}
!6578 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vq_after_reset", scope: !6476, file: !6477, line: 122, baseType: !6575, size: 64, offset: 1024)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "vringh_config", scope: !6458, file: !6459, line: 132, baseType: !6580, size: 64, offset: 6080)
!6580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6581, size: 64)
!6581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6582)
!6582 = !DICompositeType(tag: DW_TAG_structure_type, name: "vringh_config_ops", file: !6459, line: 132, flags: DIFlagFwdDecl)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !6458, file: !6459, line: 133, baseType: !344, size: 128, offset: 6144)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !6458, file: !6459, line: 134, baseType: !598, size: 64, offset: 6272)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6458, file: !6459, line: 135, baseType: !516, size: 64, offset: 6336)
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "outputs", scope: !6453, file: !4370, line: 229, baseType: !6587, size: 332800, offset: 128)
!6587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6588, size: 332800, elements: !1779)
!6588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_output", file: !4370, line: 172, size: 20800, elements: !6589)
!6589 = !{!6590, !6591, !6592, !6593, !6594, !6607, !6631, !6634, !6635, !6636}
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6588, file: !4370, line: 173, baseType: !109, size: 32)
!6591 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6588, file: !4370, line: 174, baseType: !5382, size: 8064, offset: 64)
!6592 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !6588, file: !4370, line: 175, baseType: !5444, size: 10880, offset: 8128)
!6593 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !6588, file: !4370, line: 176, baseType: !5592, size: 960, offset: 19008)
!6594 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6588, file: !4370, line: 177, baseType: !6595, size: 192, offset: 19968)
!6595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_display_one", file: !6596, line: 239, size: 192, elements: !6597)
!6596 = !DIFile(filename: "./include/uapi/linux/virtio_gpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f627377b5ecd90545846f35499995ce8")
!6597 = !{!6598, !6605, !6606}
!6598 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !6595, file: !6596, line: 240, baseType: !6599, size: 128)
!6599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_rect", file: !6596, line: 167, size: 128, elements: !6600)
!6600 = !{!6601, !6602, !6603, !6604}
!6601 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6599, file: !6596, line: 168, baseType: !6438, size: 32)
!6602 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !6599, file: !6596, line: 169, baseType: !6438, size: 32, offset: 32)
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6599, file: !6596, line: 170, baseType: !6438, size: 32, offset: 64)
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6599, file: !6596, line: 171, baseType: !6438, size: 32, offset: 96)
!6605 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6595, file: !6596, line: 241, baseType: !6438, size: 32, offset: 128)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6595, file: !6596, line: 242, baseType: !6438, size: 32, offset: 160)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !6588, file: !4370, line: 178, baseType: !6608, size: 448, offset: 20160)
!6608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_update_cursor", file: !6596, line: 156, size: 448, elements: !6609)
!6609 = !{!6610, !6620, !6627, !6628, !6629, !6630}
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !6608, file: !6596, line: 157, baseType: !6611, size: 192)
!6611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_ctrl_hdr", file: !6596, line: 137, size: 192, elements: !6612)
!6612 = !{!6613, !6614, !6615, !6616, !6617, !6618}
!6613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6611, file: !6596, line: 138, baseType: !6438, size: 32)
!6614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6611, file: !6596, line: 139, baseType: !6438, size: 32, offset: 32)
!6615 = !DIDerivedType(tag: DW_TAG_member, name: "fence_id", scope: !6611, file: !6596, line: 140, baseType: !6437, size: 64, offset: 64)
!6616 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !6611, file: !6596, line: 141, baseType: !6438, size: 32, offset: 128)
!6617 = !DIDerivedType(tag: DW_TAG_member, name: "ring_idx", scope: !6611, file: !6596, line: 142, baseType: !404, size: 8, offset: 160)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6611, file: !6596, line: 143, baseType: !6619, size: 24, offset: 168)
!6619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 24, elements: !445)
!6620 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !6608, file: !6596, line: 158, baseType: !6621, size: 128, offset: 192)
!6621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_cursor_pos", file: !6596, line: 148, size: 128, elements: !6622)
!6622 = !{!6623, !6624, !6625, !6626}
!6623 = !DIDerivedType(tag: DW_TAG_member, name: "scanout_id", scope: !6621, file: !6596, line: 149, baseType: !6438, size: 32)
!6624 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6621, file: !6596, line: 150, baseType: !6438, size: 32, offset: 32)
!6625 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !6621, file: !6596, line: 151, baseType: !6438, size: 32, offset: 64)
!6626 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6621, file: !6596, line: 152, baseType: !6438, size: 32, offset: 96)
!6627 = !DIDerivedType(tag: DW_TAG_member, name: "resource_id", scope: !6608, file: !6596, line: 159, baseType: !6438, size: 32, offset: 320)
!6628 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !6608, file: !6596, line: 160, baseType: !6438, size: 32, offset: 352)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !6608, file: !6596, line: 161, baseType: !6438, size: 32, offset: 384)
!6630 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6608, file: !6596, line: 162, baseType: !6438, size: 32, offset: 416)
!6631 = !DIDerivedType(tag: DW_TAG_member, name: "edid", scope: !6588, file: !4370, line: 179, baseType: !6632, size: 64, offset: 20608)
!6632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6633, size: 64)
!6633 = !DICompositeType(tag: DW_TAG_structure_type, name: "edid", file: !207, line: 47, flags: DIFlagFwdDecl)
!6634 = !DIDerivedType(tag: DW_TAG_member, name: "cur_x", scope: !6588, file: !4370, line: 180, baseType: !109, size: 32, offset: 20672)
!6635 = !DIDerivedType(tag: DW_TAG_member, name: "cur_y", scope: !6588, file: !4370, line: 181, baseType: !109, size: 32, offset: 20704)
!6636 = !DIDerivedType(tag: DW_TAG_member, name: "needs_modeset", scope: !6588, file: !4370, line: 182, baseType: !1682, size: 8, offset: 20736)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "num_scanouts", scope: !6453, file: !4370, line: 230, baseType: !1648, size: 32, offset: 332928)
!6638 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlq", scope: !6453, file: !4370, line: 232, baseType: !6639, size: 640, offset: 332992)
!6639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_queue", file: !4370, line: 201, size: 640, elements: !6640)
!6640 = !{!6641, !6642, !6643, !6644, !6645}
!6641 = !DIDerivedType(tag: DW_TAG_member, name: "vq", scope: !6639, file: !4370, line: 202, baseType: !6508, size: 64)
!6642 = !DIDerivedType(tag: DW_TAG_member, name: "qlock", scope: !6639, file: !4370, line: 203, baseType: !374, size: 32, offset: 64)
!6643 = !DIDerivedType(tag: DW_TAG_member, name: "ack_queue", scope: !6639, file: !4370, line: 204, baseType: !926, size: 192, offset: 128)
!6644 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue_work", scope: !6639, file: !4370, line: 205, baseType: !1431, size: 256, offset: 320)
!6645 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !6639, file: !4370, line: 206, baseType: !1648, size: 32, offset: 576)
!6646 = !DIDerivedType(tag: DW_TAG_member, name: "cursorq", scope: !6453, file: !4370, line: 233, baseType: !6639, size: 640, offset: 333632)
!6647 = !DIDerivedType(tag: DW_TAG_member, name: "vbufs", scope: !6453, file: !4370, line: 234, baseType: !2871, size: 64, offset: 334272)
!6648 = !DIDerivedType(tag: DW_TAG_member, name: "pending_commands", scope: !6453, file: !4370, line: 236, baseType: !394, size: 32, offset: 334336)
!6649 = !DIDerivedType(tag: DW_TAG_member, name: "resource_ida", scope: !6453, file: !4370, line: 238, baseType: !5158, size: 128, offset: 334400)
!6650 = !DIDerivedType(tag: DW_TAG_member, name: "resp_wq", scope: !6453, file: !4370, line: 240, baseType: !926, size: 192, offset: 334528)
!6651 = !DIDerivedType(tag: DW_TAG_member, name: "display_info_lock", scope: !6453, file: !4370, line: 242, baseType: !374, size: 32, offset: 334720)
!6652 = !DIDerivedType(tag: DW_TAG_member, name: "display_info_pending", scope: !6453, file: !4370, line: 243, baseType: !1682, size: 8, offset: 334752)
!6653 = !DIDerivedType(tag: DW_TAG_member, name: "fence_drv", scope: !6453, file: !4370, line: 245, baseType: !6654, size: 384, offset: 334784)
!6654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_fence_driver", file: !4370, line: 131, size: 384, elements: !6655)
!6655 = !{!6656, !6657, !6658, !6659, !6660}
!6656 = !DIDerivedType(tag: DW_TAG_member, name: "last_fence_id", scope: !6654, file: !4370, line: 132, baseType: !816, size: 64)
!6657 = !DIDerivedType(tag: DW_TAG_member, name: "current_fence_id", scope: !6654, file: !4370, line: 133, baseType: !5026, size: 64, offset: 64)
!6658 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6654, file: !4370, line: 134, baseType: !5026, size: 64, offset: 128)
!6659 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !6654, file: !4370, line: 135, baseType: !344, size: 128, offset: 192)
!6660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6654, file: !4370, line: 136, baseType: !374, size: 32, offset: 320)
!6661 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id_ida", scope: !6453, file: !4370, line: 247, baseType: !5158, size: 128, offset: 335168)
!6662 = !DIDerivedType(tag: DW_TAG_member, name: "has_virgl_3d", scope: !6453, file: !4370, line: 249, baseType: !1682, size: 8, offset: 335296)
!6663 = !DIDerivedType(tag: DW_TAG_member, name: "has_edid", scope: !6453, file: !4370, line: 250, baseType: !1682, size: 8, offset: 335304)
!6664 = !DIDerivedType(tag: DW_TAG_member, name: "has_indirect", scope: !6453, file: !4370, line: 251, baseType: !1682, size: 8, offset: 335312)
!6665 = !DIDerivedType(tag: DW_TAG_member, name: "has_resource_assign_uuid", scope: !6453, file: !4370, line: 252, baseType: !1682, size: 8, offset: 335320)
!6666 = !DIDerivedType(tag: DW_TAG_member, name: "has_resource_blob", scope: !6453, file: !4370, line: 253, baseType: !1682, size: 8, offset: 335328)
!6667 = !DIDerivedType(tag: DW_TAG_member, name: "has_host_visible", scope: !6453, file: !4370, line: 254, baseType: !1682, size: 8, offset: 335336)
!6668 = !DIDerivedType(tag: DW_TAG_member, name: "has_context_init", scope: !6453, file: !4370, line: 255, baseType: !1682, size: 8, offset: 335344)
!6669 = !DIDerivedType(tag: DW_TAG_member, name: "host_visible_region", scope: !6453, file: !4370, line: 256, baseType: !6570, size: 128, offset: 335360)
!6670 = !DIDerivedType(tag: DW_TAG_member, name: "host_visible_mm", scope: !6453, file: !4370, line: 257, baseType: !6280, size: 1920, offset: 335488)
!6671 = !DIDerivedType(tag: DW_TAG_member, name: "config_changed_work", scope: !6453, file: !4370, line: 259, baseType: !1431, size: 256, offset: 337408)
!6672 = !DIDerivedType(tag: DW_TAG_member, name: "obj_free_work", scope: !6453, file: !4370, line: 261, baseType: !1431, size: 256, offset: 337664)
!6673 = !DIDerivedType(tag: DW_TAG_member, name: "obj_free_lock", scope: !6453, file: !4370, line: 262, baseType: !374, size: 32, offset: 337920)
!6674 = !DIDerivedType(tag: DW_TAG_member, name: "obj_free_list", scope: !6453, file: !4370, line: 263, baseType: !344, size: 128, offset: 337984)
!6675 = !DIDerivedType(tag: DW_TAG_member, name: "capsets", scope: !6453, file: !4370, line: 265, baseType: !6676, size: 64, offset: 338112)
!6676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6677, size: 64)
!6677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_drv_capset", file: !4370, line: 209, size: 96, elements: !6678)
!6678 = !{!6679, !6680, !6681}
!6679 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6677, file: !4370, line: 210, baseType: !1648, size: 32)
!6680 = !DIDerivedType(tag: DW_TAG_member, name: "max_version", scope: !6677, file: !4370, line: 211, baseType: !1648, size: 32, offset: 32)
!6681 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !6677, file: !4370, line: 212, baseType: !1648, size: 32, offset: 64)
!6682 = !DIDerivedType(tag: DW_TAG_member, name: "num_capsets", scope: !6453, file: !4370, line: 266, baseType: !1648, size: 32, offset: 338176)
!6683 = !DIDerivedType(tag: DW_TAG_member, name: "capset_id_mask", scope: !6453, file: !4370, line: 267, baseType: !5026, size: 64, offset: 338240)
!6684 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cache", scope: !6453, file: !4370, line: 268, baseType: !344, size: 128, offset: 338304)
!6685 = !DIDerivedType(tag: DW_TAG_member, name: "resource_export_lock", scope: !6453, file: !4370, line: 271, baseType: !374, size: 32, offset: 338432)
!6686 = !DIDerivedType(tag: DW_TAG_member, name: "host_visible_lock", scope: !6453, file: !4370, line: 273, baseType: !374, size: 32, offset: 338464)
!6687 = !{!6688, !6689, !6690, !6693}
!6688 = !DILocalVariable(name: "vgdev", arg: 1, scope: !6449, file: !3, line: 34, type: !6452)
!6689 = !DILocalVariable(name: "resid", arg: 2, scope: !6449, file: !3, line: 34, type: !4977)
!6690 = !DILocalVariable(name: "handle", scope: !6691, file: !3, line: 46, type: !109)
!6691 = distinct !DILexicalBlock(scope: !6692, file: !3, line: 36, column: 43)
!6692 = distinct !DILexicalBlock(scope: !6449, file: !3, line: 36, column: 6)
!6693 = !DILocalVariable(name: "handle", scope: !6694, file: !3, line: 49, type: !109)
!6694 = distinct !DILexicalBlock(scope: !6692, file: !3, line: 48, column: 9)
!6695 = !DIGlobalVariableExpression(var: !6696, expr: !DIExpression())
!6696 = distinct !DIGlobalVariable(name: "virtio_gpu_virglrenderer_workaround", scope: !2, file: !3, line: 31, type: !109, isLocal: true, isDefinition: true)
!6697 = !DIGlobalVariableExpression(var: !6698, expr: !DIExpression())
!6698 = distinct !DIGlobalVariable(name: "virtio_gpu_shmem_funcs", scope: !2, file: !3, line: 100, type: !6348, isLocal: true, isDefinition: true)
!6699 = !DIGlobalVariableExpression(var: !6700, expr: !DIExpression())
!6700 = distinct !DIGlobalVariable(scope: null, file: !329, line: 480, type: !6701, isLocal: true, isDefinition: true)
!6701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 168, elements: !6702)
!6702 = !{!6703}
!6703 = !DISubrange(count: 21)
!6704 = !DIGlobalVariableExpression(var: !6705, expr: !DIExpression())
!6705 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !6706, isLocal: true, isDefinition: true)
!6706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 232, elements: !6707)
!6707 = !{!6708}
!6708 = !DISubrange(count: 29)
!6709 = !DIGlobalVariableExpression(var: !6710, expr: !DIExpression())
!6710 = distinct !DIGlobalVariable(scope: null, file: !6477, line: 143, type: !6711, isLocal: true, isDefinition: true)
!6711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 240, elements: !6712)
!6712 = !{!6713}
!6713 = !DISubrange(count: 30)
!6714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 168, elements: !6702)
!6715 = !{i32 7, !"Dwarf Version", i32 5}
!6716 = !{i32 2, !"Debug Info Version", i32 3}
!6717 = !{i32 1, !"wchar_size", i32 2}
!6718 = !{i32 8, !"cf-protection-branch", i32 1}
!6719 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6720 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6721 = !{i32 1, !"Code Model", i32 2}
!6722 = !{i32 1, !"override-stack-alignment", i32 8}
!6723 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6724 = !DILocation(line: 34, column: 58, scope: !6449)
!6725 = !DILocation(line: 34, column: 75, scope: !6449)
!6726 = !DILocation(line: 36, column: 6, scope: !6692)
!6727 = !DILocation(line: 36, column: 6, scope: !6449)
!6728 = !DILocation(line: 46, column: 3, scope: !6691)
!6729 = !DILocation(line: 46, column: 7, scope: !6691)
!6730 = !DILocation(line: 46, column: 16, scope: !6691)
!6731 = !DILocation(line: 47, column: 12, scope: !6691)
!6732 = !DILocation(line: 47, column: 19, scope: !6691)
!6733 = !DILocation(line: 47, column: 4, scope: !6691)
!6734 = !DILocation(line: 47, column: 10, scope: !6691)
!6735 = !DILocation(line: 48, column: 2, scope: !6692)
!6736 = !DILocation(line: 48, column: 2, scope: !6691)
!6737 = !DILocation(line: 49, column: 3, scope: !6694)
!6738 = !DILocation(line: 49, column: 7, scope: !6694)
!6739 = !DILocation(line: 49, column: 27, scope: !6694)
!6740 = !DILocation(line: 49, column: 34, scope: !6694)
!6741 = !DILocation(line: 49, column: 16, scope: !6694)
!6742 = !DILocation(line: 50, column: 7, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 50, column: 7)
!6744 = !DILocation(line: 50, column: 14, scope: !6743)
!6745 = !DILocation(line: 50, column: 7, scope: !6694)
!6746 = !DILocation(line: 51, column: 11, scope: !6743)
!6747 = !DILocation(line: 51, column: 4, scope: !6743)
!6748 = !DILocation(line: 52, column: 12, scope: !6694)
!6749 = !DILocation(line: 52, column: 19, scope: !6694)
!6750 = !DILocation(line: 52, column: 4, scope: !6694)
!6751 = !DILocation(line: 52, column: 10, scope: !6694)
!6752 = !DILocation(line: 53, column: 2, scope: !6692)
!6753 = !DILocation(line: 54, column: 2, scope: !6449)
!6754 = !DILocation(line: 55, column: 1, scope: !6449)
!6755 = distinct !DISubprogram(name: "atomic_inc_return", scope: !6756, file: !6756, line: 450, type: !6757, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6756 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6757 = !DISubroutineType(types: !6758)
!6758 = !{!109, !6759}
!6759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!6760 = !{!6761}
!6761 = !DILocalVariable(name: "v", arg: 1, scope: !6755, file: !6756, line: 450, type: !6759)
!6762 = !DILocation(line: 450, column: 29, scope: !6755)
!6763 = !DILocation(line: 452, column: 2, scope: !6755)
!6764 = !DILocation(line: 452, column: 2, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6755, file: !6756, line: 452, column: 2)
!6766 = !DILocation(line: 453, column: 31, scope: !6755)
!6767 = !DILocation(line: 453, column: 2, scope: !6755)
!6768 = !DILocation(line: 454, column: 31, scope: !6755)
!6769 = !DILocation(line: 454, column: 9, scope: !6755)
!6770 = !DILocation(line: 454, column: 2, scope: !6755)
!6771 = distinct !DISubprogram(name: "ida_alloc", scope: !945, file: !945, line: 273, type: !6772, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6775)
!6772 = !DISubroutineType(types: !6773)
!6773 = !{!109, !6774, !953}
!6774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!6775 = !{!6776, !6777}
!6776 = !DILocalVariable(name: "ida", arg: 1, scope: !6771, file: !945, line: 273, type: !6774)
!6777 = !DILocalVariable(name: "gfp", arg: 2, scope: !6771, file: !945, line: 273, type: !953)
!6778 = !DILocation(line: 273, column: 41, scope: !6771)
!6779 = !DILocation(line: 273, column: 52, scope: !6771)
!6780 = !DILocation(line: 275, column: 25, scope: !6771)
!6781 = !DILocation(line: 275, column: 37, scope: !6771)
!6782 = !DILocation(line: 275, column: 9, scope: !6771)
!6783 = !DILocation(line: 275, column: 2, scope: !6771)
!6784 = distinct !DISubprogram(name: "virtio_gpu_cleanup_object", scope: !3, file: !3, line: 64, type: !6785, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6787)
!6785 = !DISubroutineType(types: !6786)
!6786 = !{null, !6433}
!6787 = !{!6788, !6789, !6790, !6794}
!6788 = !DILocalVariable(name: "bo", arg: 1, scope: !6784, file: !3, line: 64, type: !6433)
!6789 = !DILocalVariable(name: "vgdev", scope: !6784, file: !3, line: 66, type: !6452)
!6790 = !DILocalVariable(name: "vram", scope: !6791, file: !3, line: 72, type: !4368)
!6791 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 71, column: 37)
!6792 = distinct !DILexicalBlock(scope: !6793, file: !3, line: 71, column: 13)
!6793 = distinct !DILexicalBlock(scope: !6784, file: !3, line: 69, column: 6)
!6794 = !DILocalVariable(name: "__mptr", scope: !6795, file: !3, line: 72, type: !516)
!6795 = distinct !DILexicalBlock(scope: !6791, file: !3, line: 72, column: 41)
!6796 = !DILocation(line: 64, column: 58, scope: !6784)
!6797 = !DILocation(line: 66, column: 2, scope: !6784)
!6798 = !DILocation(line: 66, column: 28, scope: !6784)
!6799 = !DILocation(line: 66, column: 36, scope: !6784)
!6800 = !DILocation(line: 66, column: 40, scope: !6784)
!6801 = !DILocation(line: 66, column: 45, scope: !6784)
!6802 = !DILocation(line: 66, column: 50, scope: !6784)
!6803 = !DILocation(line: 66, column: 55, scope: !6784)
!6804 = !DILocation(line: 68, column: 29, scope: !6784)
!6805 = !DILocation(line: 68, column: 36, scope: !6784)
!6806 = !DILocation(line: 68, column: 40, scope: !6784)
!6807 = !DILocation(line: 68, column: 2, scope: !6784)
!6808 = !DILocation(line: 69, column: 26, scope: !6793)
!6809 = !DILocation(line: 69, column: 6, scope: !6793)
!6810 = !DILocation(line: 69, column: 6, scope: !6784)
!6811 = !DILocation(line: 70, column: 23, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6793, file: !3, line: 69, column: 31)
!6813 = !DILocation(line: 70, column: 27, scope: !6812)
!6814 = !DILocation(line: 70, column: 3, scope: !6812)
!6815 = !DILocation(line: 71, column: 2, scope: !6812)
!6816 = !DILocation(line: 71, column: 32, scope: !6792)
!6817 = !DILocation(line: 71, column: 13, scope: !6792)
!6818 = !DILocation(line: 71, column: 13, scope: !6793)
!6819 = !DILocation(line: 72, column: 3, scope: !6791)
!6820 = !DILocation(line: 72, column: 34, scope: !6791)
!6821 = !DILocation(line: 72, column: 41, scope: !6795)
!6822 = !DILocation(line: 72, column: 41, scope: !6791)
!6823 = !DILocation(line: 74, column: 14, scope: !6791)
!6824 = !DILocation(line: 74, column: 21, scope: !6791)
!6825 = !DILocation(line: 74, column: 3, scope: !6791)
!6826 = !DILocation(line: 75, column: 30, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6791, file: !3, line: 75, column: 7)
!6828 = !DILocation(line: 75, column: 36, scope: !6827)
!6829 = !DILocation(line: 75, column: 7, scope: !6827)
!6830 = !DILocation(line: 75, column: 7, scope: !6791)
!6831 = !DILocation(line: 76, column: 24, scope: !6827)
!6832 = !DILocation(line: 76, column: 30, scope: !6827)
!6833 = !DILocation(line: 76, column: 4, scope: !6827)
!6834 = !DILocation(line: 78, column: 16, scope: !6791)
!6835 = !DILocation(line: 78, column: 23, scope: !6791)
!6836 = !DILocation(line: 78, column: 3, scope: !6791)
!6837 = !DILocation(line: 80, column: 29, scope: !6791)
!6838 = !DILocation(line: 80, column: 35, scope: !6791)
!6839 = !DILocation(line: 80, column: 40, scope: !6791)
!6840 = !DILocation(line: 80, column: 45, scope: !6791)
!6841 = !DILocation(line: 80, column: 3, scope: !6791)
!6842 = !DILocation(line: 81, column: 27, scope: !6791)
!6843 = !DILocation(line: 81, column: 33, scope: !6791)
!6844 = !DILocation(line: 81, column: 38, scope: !6791)
!6845 = !DILocation(line: 81, column: 43, scope: !6791)
!6846 = !DILocation(line: 81, column: 3, scope: !6791)
!6847 = !DILocation(line: 82, column: 9, scope: !6791)
!6848 = !DILocation(line: 82, column: 3, scope: !6791)
!6849 = !DILocation(line: 83, column: 2, scope: !6792)
!6850 = !DILocation(line: 83, column: 2, scope: !6791)
!6851 = !DILocation(line: 84, column: 1, scope: !6784)
!6852 = distinct !DISubprogram(name: "virtio_gpu_resource_id_put", scope: !3, file: !3, line: 57, type: !6853, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6855)
!6853 = !DISubroutineType(types: !6854)
!6854 = !{null, !6452, !1648}
!6855 = !{!6856, !6857}
!6856 = !DILocalVariable(name: "vgdev", arg: 1, scope: !6852, file: !3, line: 57, type: !6452)
!6857 = !DILocalVariable(name: "id", arg: 2, scope: !6852, file: !3, line: 57, type: !1648)
!6858 = !DILocation(line: 57, column: 66, scope: !6852)
!6859 = !DILocation(line: 57, column: 82, scope: !6852)
!6860 = !DILocation(line: 59, column: 7, scope: !6861)
!6861 = distinct !DILexicalBlock(scope: !6852, file: !3, line: 59, column: 6)
!6862 = !DILocation(line: 59, column: 6, scope: !6852)
!6863 = !DILocation(line: 60, column: 13, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6861, file: !3, line: 59, column: 44)
!6865 = !DILocation(line: 60, column: 20, scope: !6864)
!6866 = !DILocation(line: 60, column: 34, scope: !6864)
!6867 = !DILocation(line: 60, column: 37, scope: !6864)
!6868 = !DILocation(line: 60, column: 3, scope: !6864)
!6869 = !DILocation(line: 61, column: 2, scope: !6864)
!6870 = !DILocation(line: 62, column: 1, scope: !6852)
!6871 = distinct !DISubprogram(name: "virtio_gpu_is_shmem", scope: !3, file: !3, line: 115, type: !6872, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6874)
!6872 = !DISubroutineType(types: !6873)
!6873 = !{!1682, !6433}
!6874 = !{!6875}
!6875 = !DILocalVariable(name: "bo", arg: 1, scope: !6871, file: !3, line: 115, type: !6433)
!6876 = !DILocation(line: 115, column: 52, scope: !6871)
!6877 = !DILocation(line: 117, column: 9, scope: !6871)
!6878 = !DILocation(line: 117, column: 13, scope: !6871)
!6879 = !DILocation(line: 117, column: 18, scope: !6871)
!6880 = !DILocation(line: 117, column: 23, scope: !6871)
!6881 = !DILocation(line: 117, column: 29, scope: !6871)
!6882 = !DILocation(line: 117, column: 2, scope: !6871)
!6883 = !DISubprogram(name: "drm_gem_shmem_free", scope: !4377, file: !4377, line: 100, type: !6884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{null, !6436}
!6886 = !DISubprogram(name: "virtio_gpu_is_vram", scope: !4370, file: !4370, line: 485, type: !6872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6887 = distinct !DISubprogram(name: "spin_lock", scope: !6888, file: !6888, line: 349, type: !6889, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6891)
!6888 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6889 = !DISubroutineType(types: !6890)
!6890 = !{null, !2480}
!6891 = !{!6892}
!6892 = !DILocalVariable(name: "lock", arg: 1, scope: !6887, file: !6888, line: 349, type: !2480)
!6893 = !DILocation(line: 349, column: 51, scope: !6887)
!6894 = !DILocation(line: 351, column: 2, scope: !6887)
!6895 = !DILocation(line: 352, column: 1, scope: !6887)
!6896 = distinct !DISubprogram(name: "drm_mm_node_allocated", scope: !6281, file: !6281, line: 258, type: !6897, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6899)
!6897 = !DISubroutineType(types: !6898)
!6898 = !{!1682, !6287}
!6899 = !{!6900}
!6900 = !DILocalVariable(name: "node", arg: 1, scope: !6896, file: !6281, line: 258, type: !6287)
!6901 = !DILocation(line: 258, column: 68, scope: !6896)
!6902 = !DILocation(line: 260, column: 9, scope: !6896)
!6903 = !DILocation(line: 260, column: 2, scope: !6896)
!6904 = !DISubprogram(name: "drm_mm_remove_node", scope: !6281, file: !6281, line: 465, type: !6905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6905 = !DISubroutineType(types: !6906)
!6906 = !{null, !6907}
!6907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6289, size: 64)
!6908 = distinct !DISubprogram(name: "spin_unlock", scope: !6888, file: !6888, line: 389, type: !6889, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6909)
!6909 = !{!6910}
!6910 = !DILocalVariable(name: "lock", arg: 1, scope: !6908, file: !6888, line: 389, type: !2480)
!6911 = !DILocation(line: 389, column: 53, scope: !6908)
!6912 = !DILocation(line: 391, column: 2, scope: !6908)
!6913 = !DILocation(line: 392, column: 1, scope: !6908)
!6914 = !DISubprogram(name: "drm_gem_free_mmap_offset", scope: !142, file: !142, line: 513, type: !6353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6915 = !DISubprogram(name: "drm_gem_object_release", scope: !142, file: !142, line: 462, type: !6353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6916 = !DISubprogram(name: "kfree", scope: !329, file: !329, line: 227, type: !6917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6917 = !DISubroutineType(types: !6918)
!6918 = !{null, !1389}
!6919 = distinct !DISubprogram(name: "virtio_gpu_create_object", scope: !3, file: !3, line: 120, type: !4966, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6920)
!6920 = !{!6921, !6922, !6923, !6928}
!6921 = !DILocalVariable(name: "dev", arg: 1, scope: !6919, file: !3, line: 120, type: !4385)
!6922 = !DILocalVariable(name: "size", arg: 2, scope: !6919, file: !3, line: 121, type: !491)
!6923 = !DILocalVariable(name: "shmem", scope: !6919, file: !3, line: 123, type: !6924)
!6924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6925, size: 64)
!6925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object_shmem", file: !4370, line: 101, size: 3584, elements: !6926)
!6926 = !{!6927}
!6927 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6925, file: !4370, line: 102, baseType: !4373, size: 3584)
!6928 = !DILocalVariable(name: "dshmem", scope: !6919, file: !3, line: 124, type: !6436)
!6929 = !DILocation(line: 120, column: 68, scope: !6919)
!6930 = !DILocation(line: 121, column: 14, scope: !6919)
!6931 = !DILocation(line: 123, column: 2, scope: !6919)
!6932 = !DILocation(line: 123, column: 34, scope: !6919)
!6933 = !DILocation(line: 124, column: 2, scope: !6919)
!6934 = !DILocation(line: 124, column: 31, scope: !6919)
!6935 = !DILocation(line: 126, column: 10, scope: !6919)
!6936 = !DILocation(line: 126, column: 8, scope: !6919)
!6937 = !DILocation(line: 127, column: 7, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6919, file: !3, line: 127, column: 6)
!6939 = !DILocation(line: 127, column: 6, scope: !6919)
!6940 = !DILocation(line: 128, column: 10, scope: !6938)
!6941 = !DILocation(line: 128, column: 3, scope: !6938)
!6942 = !DILocation(line: 130, column: 12, scope: !6919)
!6943 = !DILocation(line: 130, column: 19, scope: !6919)
!6944 = !DILocation(line: 130, column: 24, scope: !6919)
!6945 = !DILocation(line: 130, column: 9, scope: !6919)
!6946 = !DILocation(line: 131, column: 2, scope: !6919)
!6947 = !DILocation(line: 131, column: 10, scope: !6919)
!6948 = !DILocation(line: 131, column: 15, scope: !6919)
!6949 = !DILocation(line: 131, column: 21, scope: !6919)
!6950 = !DILocation(line: 132, column: 10, scope: !6919)
!6951 = !DILocation(line: 132, column: 18, scope: !6919)
!6952 = !DILocation(line: 132, column: 2, scope: !6919)
!6953 = !DILocation(line: 133, column: 1, scope: !6919)
!6954 = distinct !DISubprogram(name: "kzalloc", scope: !329, file: !329, line: 719, type: !6955, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6957)
!6955 = !DISubroutineType(types: !6956)
!6956 = !{!516, !491, !953}
!6957 = !{!6958, !6959}
!6958 = !DILocalVariable(name: "size", arg: 1, scope: !6954, file: !329, line: 719, type: !491)
!6959 = !DILocalVariable(name: "flags", arg: 2, scope: !6954, file: !329, line: 719, type: !953)
!6960 = !DILocation(line: 719, column: 52, scope: !6954)
!6961 = !DILocation(line: 719, column: 64, scope: !6954)
!6962 = !DILocation(line: 721, column: 17, scope: !6954)
!6963 = !DILocation(line: 721, column: 23, scope: !6954)
!6964 = !DILocation(line: 721, column: 29, scope: !6954)
!6965 = !DILocation(line: 721, column: 9, scope: !6954)
!6966 = !DILocation(line: 721, column: 2, scope: !6954)
!6967 = distinct !DISubprogram(name: "ERR_PTR", scope: !6968, file: !6968, line: 39, type: !6969, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6971)
!6968 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6969 = !DISubroutineType(types: !6970)
!6970 = !{!516, !480}
!6971 = !{!6972}
!6972 = !DILocalVariable(name: "error", arg: 1, scope: !6967, file: !6968, line: 39, type: !480)
!6973 = !DILocation(line: 39, column: 48, scope: !6967)
!6974 = !DILocation(line: 41, column: 18, scope: !6967)
!6975 = !DILocation(line: 41, column: 9, scope: !6967)
!6976 = !DILocation(line: 41, column: 2, scope: !6967)
!6977 = distinct !DISubprogram(name: "virtio_gpu_object_create", scope: !3, file: !3, line: 179, type: !6978, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7035)
!6978 = !DISubroutineType(types: !6979)
!6979 = !{!109, !6452, !6980, !7001, !7002}
!6980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6981, size: 64)
!6981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object_params", file: !4370, line: 61, size: 576, elements: !6982)
!6982 = !{!6983, !6984, !6985, !6986, !6987, !6988, !6989, !6990, !6991, !6992, !6993, !6994, !6995, !6996, !6997, !6998, !6999, !7000}
!6983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6981, file: !4370, line: 62, baseType: !494, size: 64)
!6984 = !DIDerivedType(tag: DW_TAG_member, name: "dumb", scope: !6981, file: !4370, line: 63, baseType: !1682, size: 8, offset: 64)
!6985 = !DIDerivedType(tag: DW_TAG_member, name: "virgl", scope: !6981, file: !4370, line: 65, baseType: !1682, size: 8, offset: 72)
!6986 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !6981, file: !4370, line: 66, baseType: !1682, size: 8, offset: 80)
!6987 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6981, file: !4370, line: 69, baseType: !1648, size: 32, offset: 96)
!6988 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6981, file: !4370, line: 70, baseType: !1648, size: 32, offset: 128)
!6989 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6981, file: !4370, line: 71, baseType: !1648, size: 32, offset: 160)
!6990 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !6981, file: !4370, line: 72, baseType: !1648, size: 32, offset: 192)
!6991 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !6981, file: !4370, line: 73, baseType: !1648, size: 32, offset: 224)
!6992 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6981, file: !4370, line: 74, baseType: !1648, size: 32, offset: 256)
!6993 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !6981, file: !4370, line: 75, baseType: !1648, size: 32, offset: 288)
!6994 = !DIDerivedType(tag: DW_TAG_member, name: "last_level", scope: !6981, file: !4370, line: 76, baseType: !1648, size: 32, offset: 320)
!6995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !6981, file: !4370, line: 77, baseType: !1648, size: 32, offset: 352)
!6996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6981, file: !4370, line: 78, baseType: !1648, size: 32, offset: 384)
!6997 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !6981, file: !4370, line: 81, baseType: !1648, size: 32, offset: 416)
!6998 = !DIDerivedType(tag: DW_TAG_member, name: "blob_mem", scope: !6981, file: !4370, line: 82, baseType: !1648, size: 32, offset: 448)
!6999 = !DIDerivedType(tag: DW_TAG_member, name: "blob_flags", scope: !6981, file: !4370, line: 83, baseType: !1648, size: 32, offset: 480)
!7000 = !DIDerivedType(tag: DW_TAG_member, name: "blob_id", scope: !6981, file: !4370, line: 84, baseType: !5026, size: 64, offset: 512)
!7001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6433, size: 64)
!7002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7003, size: 64)
!7003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_fence", file: !4370, line: 144, size: 960, elements: !7004)
!7004 = !{!7005, !7006, !7007, !7008, !7009, !7032, !7034}
!7005 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !7003, file: !4370, line: 145, baseType: !5994, size: 512)
!7006 = !DIDerivedType(tag: DW_TAG_member, name: "ring_idx", scope: !7003, file: !4370, line: 146, baseType: !1648, size: 32, offset: 512)
!7007 = !DIDerivedType(tag: DW_TAG_member, name: "fence_id", scope: !7003, file: !4370, line: 147, baseType: !5026, size: 64, offset: 576)
!7008 = !DIDerivedType(tag: DW_TAG_member, name: "emit_fence_info", scope: !7003, file: !4370, line: 148, baseType: !1682, size: 8, offset: 640)
!7009 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !7003, file: !4370, line: 149, baseType: !7010, size: 64, offset: 704)
!7010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7011, size: 64)
!7011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_fence_event", file: !4370, line: 139, size: 640, elements: !7012)
!7012 = !{!7013, !7031}
!7013 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !7011, file: !4370, line: 140, baseType: !7014, size: 576)
!7014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_event", file: !4878, line: 97, size: 576, elements: !7015)
!7015 = !{!7016, !7017, !7021, !7027, !7028, !7029, !7030}
!7016 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !7014, file: !4878, line: 105, baseType: !1543, size: 64)
!7017 = !DIDerivedType(tag: DW_TAG_member, name: "completion_release", scope: !7014, file: !4878, line: 114, baseType: !7018, size: 64, offset: 64)
!7018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7019, size: 64)
!7019 = !DISubroutineType(types: !7020)
!7020 = !{null, !1543}
!7021 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !7014, file: !4878, line: 124, baseType: !7022, size: 64, offset: 128)
!7022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7023, size: 64)
!7023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event", file: !4911, line: 1226, size: 64, elements: !7024)
!7024 = !{!7025, !7026}
!7025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7023, file: !4911, line: 1227, baseType: !595, size: 32)
!7026 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !7023, file: !4911, line: 1228, baseType: !595, size: 32, offset: 32)
!7027 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !7014, file: !4878, line: 132, baseType: !5993, size: 64, offset: 192)
!7028 = !DIDerivedType(tag: DW_TAG_member, name: "file_priv", scope: !7014, file: !4878, line: 140, baseType: !4876, size: 64, offset: 256)
!7029 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !7014, file: !4878, line: 149, baseType: !344, size: 128, offset: 320)
!7030 = !DIDerivedType(tag: DW_TAG_member, name: "pending_link", scope: !7014, file: !4878, line: 158, baseType: !344, size: 128, offset: 448)
!7031 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !7011, file: !4370, line: 141, baseType: !7023, size: 64, offset: 576)
!7032 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !7003, file: !4370, line: 150, baseType: !7033, size: 64, offset: 768)
!7033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6654, size: 64)
!7034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7003, file: !4370, line: 151, baseType: !344, size: 128, offset: 832)
!7035 = !{!7036, !7037, !7038, !7039, !7040, !7050, !7051, !7052, !7059, !7060, !7061, !7063, !7065, !7066, !7067, !7068}
!7036 = !DILocalVariable(name: "vgdev", arg: 1, scope: !6977, file: !3, line: 179, type: !6452)
!7037 = !DILocalVariable(name: "params", arg: 2, scope: !6977, file: !3, line: 180, type: !6980)
!7038 = !DILocalVariable(name: "bo_ptr", arg: 3, scope: !6977, file: !3, line: 181, type: !7001)
!7039 = !DILocalVariable(name: "fence", arg: 4, scope: !6977, file: !3, line: 182, type: !7002)
!7040 = !DILocalVariable(name: "objs", scope: !6977, file: !3, line: 184, type: !7041)
!7041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7042, size: 64)
!7042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object_array", file: !4370, line: 118, size: 384, elements: !7043)
!7043 = !{!7044, !7045, !7046, !7047, !7048}
!7044 = !DIDerivedType(tag: DW_TAG_member, name: "ticket", scope: !7042, file: !4370, line: 119, baseType: !5128, size: 192)
!7045 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7042, file: !4370, line: 120, baseType: !344, size: 128, offset: 192)
!7046 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !7042, file: !4370, line: 121, baseType: !594, size: 32, offset: 320)
!7047 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !7042, file: !4370, line: 121, baseType: !594, size: 32, offset: 352)
!7048 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !7042, file: !4370, line: 122, baseType: !7049, offset: 384)
!7049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4968, elements: !1444)
!7050 = !DILocalVariable(name: "shmem_obj", scope: !6977, file: !3, line: 185, type: !6436)
!7051 = !DILocalVariable(name: "bo", scope: !6977, file: !3, line: 186, type: !6433)
!7052 = !DILocalVariable(name: "ents", scope: !6977, file: !3, line: 187, type: !7053)
!7053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7054, size: 64)
!7054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_mem_entry", file: !6596, line: 215, size: 128, elements: !7055)
!7055 = !{!7056, !7057, !7058}
!7056 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !7054, file: !6596, line: 216, baseType: !6437, size: 64)
!7057 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !7054, file: !6596, line: 217, baseType: !6438, size: 32, offset: 64)
!7058 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !7054, file: !6596, line: 218, baseType: !6438, size: 32, offset: 96)
!7059 = !DILocalVariable(name: "nents", scope: !6977, file: !3, line: 188, type: !7)
!7060 = !DILocalVariable(name: "ret", scope: !6977, file: !3, line: 189, type: !109)
!7061 = !DILocalVariable(name: "__y", scope: !7062, file: !3, line: 193, type: !494)
!7062 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 193, column: 17)
!7063 = !DILocalVariable(name: "__mptr", scope: !7064, file: !3, line: 197, type: !516)
!7064 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 197, column: 7)
!7065 = !DILabel(scope: !6977, name: "err_put_objs", file: !3, line: 240)
!7066 = !DILabel(scope: !6977, name: "err_free_entry", file: !3, line: 242)
!7067 = !DILabel(scope: !6977, name: "err_put_id", file: !3, line: 244)
!7068 = !DILabel(scope: !6977, name: "err_free_gem", file: !3, line: 246)
!7069 = !DILocation(line: 179, column: 56, scope: !6977)
!7070 = !DILocation(line: 180, column: 42, scope: !6977)
!7071 = !DILocation(line: 181, column: 36, scope: !6977)
!7072 = !DILocation(line: 182, column: 34, scope: !6977)
!7073 = !DILocation(line: 184, column: 2, scope: !6977)
!7074 = !DILocation(line: 184, column: 34, scope: !6977)
!7075 = !DILocation(line: 185, column: 2, scope: !6977)
!7076 = !DILocation(line: 185, column: 31, scope: !6977)
!7077 = !DILocation(line: 186, column: 2, scope: !6977)
!7078 = !DILocation(line: 186, column: 28, scope: !6977)
!7079 = !DILocation(line: 187, column: 2, scope: !6977)
!7080 = !DILocation(line: 187, column: 31, scope: !6977)
!7081 = !DILocation(line: 188, column: 2, scope: !6977)
!7082 = !DILocation(line: 188, column: 15, scope: !6977)
!7083 = !DILocation(line: 189, column: 2, scope: !6977)
!7084 = !DILocation(line: 189, column: 6, scope: !6977)
!7085 = !DILocation(line: 191, column: 3, scope: !6977)
!7086 = !DILocation(line: 191, column: 10, scope: !6977)
!7087 = !DILocation(line: 193, column: 17, scope: !7062)
!7088 = !DILocation(line: 193, column: 17, scope: !6977)
!7089 = !DILocation(line: 193, column: 2, scope: !6977)
!7090 = !DILocation(line: 193, column: 10, scope: !6977)
!7091 = !DILocation(line: 193, column: 15, scope: !6977)
!7092 = !DILocation(line: 194, column: 35, scope: !6977)
!7093 = !DILocation(line: 194, column: 42, scope: !6977)
!7094 = !DILocation(line: 194, column: 48, scope: !6977)
!7095 = !DILocation(line: 194, column: 56, scope: !6977)
!7096 = !DILocation(line: 194, column: 14, scope: !6977)
!7097 = !DILocation(line: 194, column: 12, scope: !6977)
!7098 = !DILocation(line: 195, column: 13, scope: !7099)
!7099 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 195, column: 6)
!7100 = !DILocation(line: 195, column: 6, scope: !7099)
!7101 = !DILocation(line: 195, column: 6, scope: !6977)
!7102 = !DILocation(line: 196, column: 18, scope: !7099)
!7103 = !DILocation(line: 196, column: 10, scope: !7099)
!7104 = !DILocation(line: 196, column: 3, scope: !7099)
!7105 = !DILocation(line: 197, column: 7, scope: !7064)
!7106 = !DILocation(line: 197, column: 7, scope: !6977)
!7107 = !DILocation(line: 197, column: 5, scope: !6977)
!7108 = !DILocation(line: 199, column: 35, scope: !6977)
!7109 = !DILocation(line: 199, column: 43, scope: !6977)
!7110 = !DILocation(line: 199, column: 47, scope: !6977)
!7111 = !DILocation(line: 199, column: 8, scope: !6977)
!7112 = !DILocation(line: 199, column: 6, scope: !6977)
!7113 = !DILocation(line: 200, column: 6, scope: !7114)
!7114 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 200, column: 6)
!7115 = !DILocation(line: 200, column: 10, scope: !7114)
!7116 = !DILocation(line: 200, column: 6, scope: !6977)
!7117 = !DILocation(line: 201, column: 3, scope: !7114)
!7118 = !DILocation(line: 203, column: 13, scope: !6977)
!7119 = !DILocation(line: 203, column: 21, scope: !6977)
!7120 = !{i8 0, i8 2}
!7121 = !DILocation(line: 203, column: 2, scope: !6977)
!7122 = !DILocation(line: 203, column: 6, scope: !6977)
!7123 = !DILocation(line: 203, column: 11, scope: !6977)
!7124 = !DILocation(line: 205, column: 37, scope: !6977)
!7125 = !DILocation(line: 205, column: 44, scope: !6977)
!7126 = !DILocation(line: 205, column: 8, scope: !6977)
!7127 = !DILocation(line: 205, column: 6, scope: !6977)
!7128 = !DILocation(line: 206, column: 6, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 206, column: 6)
!7130 = !DILocation(line: 206, column: 10, scope: !7129)
!7131 = !DILocation(line: 206, column: 6, scope: !6977)
!7132 = !DILocation(line: 207, column: 3, scope: !7129)
!7133 = !DILocation(line: 209, column: 6, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 209, column: 6)
!7135 = !DILocation(line: 209, column: 6, scope: !6977)
!7136 = !DILocation(line: 210, column: 7, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !7134, file: !3, line: 209, column: 13)
!7138 = !DILocation(line: 211, column: 10, scope: !7137)
!7139 = !DILocation(line: 211, column: 8, scope: !7137)
!7140 = !DILocation(line: 212, column: 8, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7137, file: !3, line: 212, column: 7)
!7142 = !DILocation(line: 212, column: 7, scope: !7137)
!7143 = !DILocation(line: 213, column: 4, scope: !7141)
!7144 = !DILocation(line: 214, column: 28, scope: !7137)
!7145 = !DILocation(line: 214, column: 35, scope: !7137)
!7146 = !DILocation(line: 214, column: 39, scope: !7137)
!7147 = !DILocation(line: 214, column: 44, scope: !7137)
!7148 = !DILocation(line: 214, column: 3, scope: !7137)
!7149 = !DILocation(line: 216, column: 36, scope: !7137)
!7150 = !DILocation(line: 216, column: 9, scope: !7137)
!7151 = !DILocation(line: 216, column: 7, scope: !7137)
!7152 = !DILocation(line: 217, column: 7, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7137, file: !3, line: 217, column: 7)
!7154 = !DILocation(line: 217, column: 11, scope: !7153)
!7155 = !DILocation(line: 217, column: 7, scope: !7137)
!7156 = !DILocation(line: 218, column: 4, scope: !7153)
!7157 = !DILocation(line: 219, column: 2, scope: !7137)
!7158 = !DILocation(line: 221, column: 6, scope: !7159)
!7159 = distinct !DILexicalBlock(scope: !6977, file: !3, line: 221, column: 6)
!7160 = !DILocation(line: 221, column: 14, scope: !7159)
!7161 = !DILocation(line: 221, column: 6, scope: !6977)
!7162 = !DILocation(line: 222, column: 7, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7164, file: !3, line: 222, column: 7)
!7164 = distinct !DILexicalBlock(scope: !7159, file: !3, line: 221, column: 20)
!7165 = !DILocation(line: 222, column: 15, scope: !7163)
!7166 = !DILocation(line: 222, column: 24, scope: !7163)
!7167 = !DILocation(line: 222, column: 7, scope: !7164)
!7168 = !DILocation(line: 223, column: 4, scope: !7163)
!7169 = !DILocation(line: 223, column: 8, scope: !7163)
!7170 = !DILocation(line: 223, column: 19, scope: !7163)
!7171 = !DILocation(line: 225, column: 39, scope: !7164)
!7172 = !DILocation(line: 225, column: 46, scope: !7164)
!7173 = !DILocation(line: 225, column: 50, scope: !7164)
!7174 = !DILocation(line: 226, column: 11, scope: !7164)
!7175 = !DILocation(line: 226, column: 17, scope: !7164)
!7176 = !DILocation(line: 225, column: 3, scope: !7164)
!7177 = !DILocation(line: 227, column: 2, scope: !7164)
!7178 = !DILocation(line: 227, column: 13, scope: !7179)
!7179 = distinct !DILexicalBlock(scope: !7159, file: !3, line: 227, column: 13)
!7180 = !DILocation(line: 227, column: 21, scope: !7179)
!7181 = !DILocation(line: 227, column: 13, scope: !7159)
!7182 = !DILocation(line: 228, column: 37, scope: !7183)
!7183 = distinct !DILexicalBlock(scope: !7179, file: !3, line: 227, column: 28)
!7184 = !DILocation(line: 228, column: 44, scope: !7183)
!7185 = !DILocation(line: 228, column: 48, scope: !7183)
!7186 = !DILocation(line: 229, column: 9, scope: !7183)
!7187 = !DILocation(line: 229, column: 15, scope: !7183)
!7188 = !DILocation(line: 228, column: 3, scope: !7183)
!7189 = !DILocation(line: 230, column: 28, scope: !7183)
!7190 = !DILocation(line: 230, column: 35, scope: !7183)
!7191 = !DILocation(line: 230, column: 39, scope: !7183)
!7192 = !DILocation(line: 230, column: 45, scope: !7183)
!7193 = !DILocation(line: 230, column: 3, scope: !7183)
!7194 = !DILocation(line: 231, column: 2, scope: !7183)
!7195 = !DILocation(line: 232, column: 34, scope: !7196)
!7196 = distinct !DILexicalBlock(scope: !7179, file: !3, line: 231, column: 9)
!7197 = !DILocation(line: 232, column: 41, scope: !7196)
!7198 = !DILocation(line: 232, column: 45, scope: !7196)
!7199 = !DILocation(line: 233, column: 13, scope: !7196)
!7200 = !DILocation(line: 233, column: 19, scope: !7196)
!7201 = !DILocation(line: 232, column: 3, scope: !7196)
!7202 = !DILocation(line: 234, column: 28, scope: !7196)
!7203 = !DILocation(line: 234, column: 35, scope: !7196)
!7204 = !DILocation(line: 234, column: 39, scope: !7196)
!7205 = !DILocation(line: 234, column: 45, scope: !7196)
!7206 = !DILocation(line: 234, column: 3, scope: !7196)
!7207 = !DILocation(line: 237, column: 12, scope: !6977)
!7208 = !DILocation(line: 237, column: 3, scope: !6977)
!7209 = !DILocation(line: 237, column: 10, scope: !6977)
!7210 = !DILocation(line: 238, column: 2, scope: !6977)
!7211 = !DILocation(line: 240, column: 1, scope: !6977)
!7212 = !DILocation(line: 241, column: 28, scope: !6977)
!7213 = !DILocation(line: 241, column: 2, scope: !6977)
!7214 = !DILocation(line: 242, column: 1, scope: !6977)
!7215 = !DILocation(line: 243, column: 9, scope: !6977)
!7216 = !DILocation(line: 243, column: 2, scope: !6977)
!7217 = !DILocation(line: 244, column: 1, scope: !6977)
!7218 = !DILocation(line: 245, column: 29, scope: !6977)
!7219 = !DILocation(line: 245, column: 36, scope: !6977)
!7220 = !DILocation(line: 245, column: 40, scope: !6977)
!7221 = !DILocation(line: 245, column: 2, scope: !6977)
!7222 = !DILocation(line: 246, column: 1, scope: !6977)
!7223 = !DILocation(line: 247, column: 21, scope: !6977)
!7224 = !DILocation(line: 247, column: 2, scope: !6977)
!7225 = !DILocation(line: 248, column: 9, scope: !6977)
!7226 = !DILocation(line: 248, column: 2, scope: !6977)
!7227 = !DILocation(line: 249, column: 1, scope: !6977)
!7228 = !DISubprogram(name: "drm_gem_shmem_create", scope: !4377, file: !4377, line: 99, type: !7229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7229 = !DISubroutineType(types: !7230)
!7230 = !{!6436, !4385, !491}
!7231 = distinct !DISubprogram(name: "IS_ERR", scope: !6968, file: !6968, line: 59, type: !7232, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7234)
!7232 = !DISubroutineType(types: !7233)
!7233 = !{!1682, !1389}
!7234 = !{!7235}
!7235 = !DILocalVariable(name: "ptr", arg: 1, scope: !7231, file: !6968, line: 59, type: !1389)
!7236 = !DILocation(line: 59, column: 60, scope: !7231)
!7237 = !DILocation(line: 61, column: 9, scope: !7231)
!7238 = !DILocation(line: 61, column: 2, scope: !7231)
!7239 = distinct !DISubprogram(name: "PTR_ERR", scope: !6968, file: !6968, line: 49, type: !7240, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7242)
!7240 = !DISubroutineType(types: !7241)
!7241 = !{!480, !1389}
!7242 = !{!7243}
!7243 = !DILocalVariable(name: "ptr", arg: 1, scope: !7239, file: !6968, line: 49, type: !1389)
!7244 = !DILocation(line: 49, column: 61, scope: !7239)
!7245 = !DILocation(line: 51, column: 16, scope: !7239)
!7246 = !DILocation(line: 51, column: 9, scope: !7239)
!7247 = !DILocation(line: 51, column: 2, scope: !7239)
!7248 = distinct !DISubprogram(name: "virtio_gpu_object_shmem_init", scope: !3, file: !3, line: 135, type: !7249, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7252)
!7249 = !DISubroutineType(types: !7250)
!7250 = !{!109, !6452, !6433, !7251, !3381}
!7251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7053, size: 64)
!7252 = !{!7253, !7254, !7255, !7256, !7257, !7258, !7259, !7260}
!7253 = !DILocalVariable(name: "vgdev", arg: 1, scope: !7248, file: !3, line: 135, type: !6452)
!7254 = !DILocalVariable(name: "bo", arg: 2, scope: !7248, file: !3, line: 136, type: !6433)
!7255 = !DILocalVariable(name: "ents", arg: 3, scope: !7248, file: !3, line: 137, type: !7251)
!7256 = !DILocalVariable(name: "nents", arg: 4, scope: !7248, file: !3, line: 138, type: !3381)
!7257 = !DILocalVariable(name: "use_dma_api", scope: !7248, file: !3, line: 140, type: !1682)
!7258 = !DILocalVariable(name: "sg", scope: !7248, file: !3, line: 141, type: !4995)
!7259 = !DILocalVariable(name: "pages", scope: !7248, file: !3, line: 142, type: !4990)
!7260 = !DILocalVariable(name: "si", scope: !7248, file: !3, line: 143, type: !109)
!7261 = !DILocation(line: 135, column: 67, scope: !7248)
!7262 = !DILocation(line: 136, column: 32, scope: !7248)
!7263 = !DILocation(line: 137, column: 36, scope: !7248)
!7264 = !DILocation(line: 138, column: 20, scope: !7248)
!7265 = !DILocation(line: 140, column: 2, scope: !7248)
!7266 = !DILocation(line: 140, column: 7, scope: !7248)
!7267 = !DILocation(line: 140, column: 43, scope: !7248)
!7268 = !DILocation(line: 140, column: 50, scope: !7248)
!7269 = !DILocation(line: 140, column: 22, scope: !7248)
!7270 = !DILocation(line: 140, column: 21, scope: !7248)
!7271 = !DILocation(line: 141, column: 2, scope: !7248)
!7272 = !DILocation(line: 141, column: 22, scope: !7248)
!7273 = !DILocation(line: 142, column: 2, scope: !7248)
!7274 = !DILocation(line: 142, column: 19, scope: !7248)
!7275 = !DILocation(line: 143, column: 2, scope: !7248)
!7276 = !DILocation(line: 143, column: 6, scope: !7248)
!7277 = !DILocation(line: 145, column: 39, scope: !7248)
!7278 = !DILocation(line: 145, column: 43, scope: !7248)
!7279 = !DILocation(line: 145, column: 10, scope: !7248)
!7280 = !DILocation(line: 145, column: 8, scope: !7248)
!7281 = !DILocation(line: 146, column: 13, scope: !7282)
!7282 = distinct !DILexicalBlock(scope: !7248, file: !3, line: 146, column: 6)
!7283 = !DILocation(line: 146, column: 6, scope: !7282)
!7284 = !DILocation(line: 146, column: 6, scope: !7248)
!7285 = !DILocation(line: 147, column: 18, scope: !7282)
!7286 = !DILocation(line: 147, column: 10, scope: !7282)
!7287 = !DILocation(line: 147, column: 3, scope: !7282)
!7288 = !DILocation(line: 149, column: 6, scope: !7289)
!7289 = distinct !DILexicalBlock(scope: !7248, file: !3, line: 149, column: 6)
!7290 = !DILocation(line: 149, column: 6, scope: !7248)
!7291 = !DILocation(line: 150, column: 12, scope: !7289)
!7292 = !DILocation(line: 150, column: 19, scope: !7289)
!7293 = !DILocation(line: 150, column: 4, scope: !7289)
!7294 = !DILocation(line: 150, column: 10, scope: !7289)
!7295 = !DILocation(line: 150, column: 3, scope: !7289)
!7296 = !DILocation(line: 152, column: 12, scope: !7289)
!7297 = !DILocation(line: 152, column: 19, scope: !7289)
!7298 = !DILocation(line: 152, column: 4, scope: !7289)
!7299 = !DILocation(line: 152, column: 10, scope: !7289)
!7300 = !DILocation(line: 154, column: 26, scope: !7248)
!7301 = !DILocation(line: 154, column: 25, scope: !7248)
!7302 = !DILocation(line: 154, column: 10, scope: !7248)
!7303 = !DILocation(line: 154, column: 3, scope: !7248)
!7304 = !DILocation(line: 154, column: 8, scope: !7248)
!7305 = !DILocation(line: 157, column: 9, scope: !7306)
!7306 = distinct !DILexicalBlock(scope: !7248, file: !3, line: 157, column: 6)
!7307 = !DILocation(line: 157, column: 8, scope: !7306)
!7308 = !DILocation(line: 157, column: 7, scope: !7306)
!7309 = !DILocation(line: 157, column: 6, scope: !7248)
!7310 = !DILocation(line: 158, column: 3, scope: !7311)
!7311 = distinct !DILexicalBlock(scope: !7306, file: !3, line: 157, column: 16)
!7312 = !DILocation(line: 159, column: 3, scope: !7311)
!7313 = !DILocation(line: 162, column: 6, scope: !7314)
!7314 = distinct !DILexicalBlock(scope: !7248, file: !3, line: 162, column: 6)
!7315 = !DILocation(line: 162, column: 6, scope: !7248)
!7316 = !DILocation(line: 163, column: 3, scope: !7317)
!7317 = distinct !DILexicalBlock(scope: !7318, file: !3, line: 163, column: 3)
!7318 = distinct !DILexicalBlock(scope: !7314, file: !3, line: 162, column: 19)
!7319 = !DILocation(line: 163, column: 3, scope: !7320)
!7320 = distinct !DILexicalBlock(scope: !7317, file: !3, line: 163, column: 3)
!7321 = !DILocation(line: 164, column: 23, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !7320, file: !3, line: 163, column: 42)
!7323 = !DILocation(line: 164, column: 6, scope: !7322)
!7324 = !DILocation(line: 164, column: 5, scope: !7322)
!7325 = !DILocation(line: 164, column: 12, scope: !7322)
!7326 = !DILocation(line: 164, column: 4, scope: !7322)
!7327 = !DILocation(line: 164, column: 16, scope: !7322)
!7328 = !DILocation(line: 164, column: 21, scope: !7322)
!7329 = !DILocation(line: 165, column: 25, scope: !7322)
!7330 = !DILocation(line: 165, column: 6, scope: !7322)
!7331 = !DILocation(line: 165, column: 5, scope: !7322)
!7332 = !DILocation(line: 165, column: 12, scope: !7322)
!7333 = !DILocation(line: 165, column: 4, scope: !7322)
!7334 = !DILocation(line: 165, column: 16, scope: !7322)
!7335 = !DILocation(line: 165, column: 23, scope: !7322)
!7336 = !DILocation(line: 166, column: 6, scope: !7322)
!7337 = !DILocation(line: 166, column: 5, scope: !7322)
!7338 = !DILocation(line: 166, column: 12, scope: !7322)
!7339 = !DILocation(line: 166, column: 4, scope: !7322)
!7340 = !DILocation(line: 166, column: 16, scope: !7322)
!7341 = !DILocation(line: 166, column: 24, scope: !7322)
!7342 = !DILocation(line: 167, column: 3, scope: !7322)
!7343 = distinct !{!7343, !7316, !7344, !7345, !7346}
!7344 = !DILocation(line: 167, column: 3, scope: !7317)
!7345 = !{!"llvm.loop.mustprogress"}
!7346 = !{!"llvm.loop.unroll.disable"}
!7347 = !DILocation(line: 168, column: 2, scope: !7318)
!7348 = !DILocation(line: 169, column: 3, scope: !7349)
!7349 = distinct !DILexicalBlock(scope: !7350, file: !3, line: 169, column: 3)
!7350 = distinct !DILexicalBlock(scope: !7314, file: !3, line: 168, column: 9)
!7351 = !DILocation(line: 169, column: 3, scope: !7352)
!7352 = distinct !DILexicalBlock(scope: !7349, file: !3, line: 169, column: 3)
!7353 = !DILocation(line: 170, column: 23, scope: !7354)
!7354 = distinct !DILexicalBlock(scope: !7352, file: !3, line: 169, column: 38)
!7355 = !DILocation(line: 170, column: 6, scope: !7354)
!7356 = !DILocation(line: 170, column: 5, scope: !7354)
!7357 = !DILocation(line: 170, column: 12, scope: !7354)
!7358 = !DILocation(line: 170, column: 4, scope: !7354)
!7359 = !DILocation(line: 170, column: 16, scope: !7354)
!7360 = !DILocation(line: 170, column: 21, scope: !7354)
!7361 = !DILocation(line: 171, column: 25, scope: !7354)
!7362 = !DILocation(line: 171, column: 6, scope: !7354)
!7363 = !DILocation(line: 171, column: 5, scope: !7354)
!7364 = !DILocation(line: 171, column: 12, scope: !7354)
!7365 = !DILocation(line: 171, column: 4, scope: !7354)
!7366 = !DILocation(line: 171, column: 16, scope: !7354)
!7367 = !DILocation(line: 171, column: 23, scope: !7354)
!7368 = !DILocation(line: 172, column: 6, scope: !7354)
!7369 = !DILocation(line: 172, column: 5, scope: !7354)
!7370 = !DILocation(line: 172, column: 12, scope: !7354)
!7371 = !DILocation(line: 172, column: 4, scope: !7354)
!7372 = !DILocation(line: 172, column: 16, scope: !7354)
!7373 = !DILocation(line: 172, column: 24, scope: !7354)
!7374 = !DILocation(line: 173, column: 3, scope: !7354)
!7375 = distinct !{!7375, !7348, !7376, !7345, !7346}
!7376 = !DILocation(line: 173, column: 3, scope: !7349)
!7377 = !DILocation(line: 176, column: 2, scope: !7248)
!7378 = !DILocation(line: 177, column: 1, scope: !7248)
!7379 = !DISubprogram(name: "virtio_gpu_array_alloc", scope: !4370, file: !4370, line: 310, type: !7380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7380 = !DISubroutineType(types: !7381)
!7381 = !{!7041, !594}
!7382 = !DISubprogram(name: "virtio_gpu_array_add_obj", scope: !4370, file: !4370, line: 313, type: !7383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7383 = !DISubroutineType(types: !7384)
!7384 = !{null, !7041, !4968}
!7385 = !DISubprogram(name: "virtio_gpu_array_lock_resv", scope: !4370, file: !4370, line: 315, type: !7386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7386 = !DISubroutineType(types: !7387)
!7387 = !{!109, !7041}
!7388 = !DISubprogram(name: "virtio_gpu_cmd_resource_create_blob", scope: !4370, file: !4370, line: 422, type: !7389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7389 = !DISubroutineType(types: !7390)
!7390 = !{null, !6452, !6433, !6980, !7053, !1648}
!7391 = !DISubprogram(name: "virtio_gpu_cmd_resource_create_3d", scope: !4370, file: !4370, line: 397, type: !7392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7392 = !DISubroutineType(types: !7393)
!7393 = !{null, !6452, !6433, !6980, !7041, !7002}
!7394 = !DISubprogram(name: "virtio_gpu_object_attach", scope: !4370, file: !4370, line: 350, type: !7395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7395 = !DISubroutineType(types: !7396)
!7396 = !{null, !6452, !6433, !7053, !7}
!7397 = !DISubprogram(name: "virtio_gpu_cmd_create_resource", scope: !4370, file: !4370, line: 327, type: !7392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7398 = !DISubprogram(name: "virtio_gpu_array_put_free", scope: !4370, file: !4370, line: 319, type: !7399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7399 = !DISubroutineType(types: !7400)
!7400 = !{null, !7041}
!7401 = !DISubprogram(name: "kvfree", scope: !329, file: !329, line: 766, type: !6917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7402 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7403, file: !7403, line: 94, type: !7404, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7409)
!7403 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7404 = !DISubroutineType(types: !7405)
!7405 = !{null, !7406, !491}
!7406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7407, size: 64)
!7407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7408)
!7408 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7409 = !{!7410, !7411}
!7410 = !DILocalVariable(name: "v", arg: 1, scope: !7402, file: !7403, line: 94, type: !7406)
!7411 = !DILocalVariable(name: "size", arg: 2, scope: !7402, file: !7403, line: 94, type: !491)
!7412 = !DILocation(line: 94, column: 79, scope: !7402)
!7413 = !DILocation(line: 94, column: 89, scope: !7402)
!7414 = !DILocation(line: 96, column: 20, scope: !7402)
!7415 = !DILocation(line: 96, column: 23, scope: !7402)
!7416 = !DILocation(line: 96, column: 2, scope: !7402)
!7417 = !DILocation(line: 97, column: 2, scope: !7402)
!7418 = !DILocation(line: 98, column: 1, scope: !7402)
!7419 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !7420, file: !7420, line: 996, type: !6757, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7421)
!7420 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7421 = !{!7422}
!7422 = !DILocalVariable(name: "v", arg: 1, scope: !7419, file: !7420, line: 996, type: !6759)
!7423 = !DILocation(line: 996, column: 33, scope: !7419)
!7424 = !DILocation(line: 1007, column: 34, scope: !7419)
!7425 = !DILocation(line: 1007, column: 9, scope: !7419)
!7426 = !DILocation(line: 1007, column: 2, scope: !7419)
!7427 = distinct !DISubprogram(name: "kasan_check_write", scope: !7428, file: !7428, line: 44, type: !7429, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7431)
!7428 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7429 = !DISubroutineType(types: !7430)
!7430 = !{!1682, !7406, !7}
!7431 = !{!7432, !7433}
!7432 = !DILocalVariable(name: "p", arg: 1, scope: !7427, file: !7428, line: 44, type: !7406)
!7433 = !DILocalVariable(name: "size", arg: 2, scope: !7427, file: !7428, line: 44, type: !7)
!7434 = !DILocation(line: 44, column: 59, scope: !7427)
!7435 = !DILocation(line: 44, column: 75, scope: !7427)
!7436 = !DILocation(line: 46, column: 2, scope: !7427)
!7437 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7438, file: !7438, line: 229, type: !7439, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7441)
!7438 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7439 = !DISubroutineType(types: !7440)
!7440 = !{null, !7406, !491, !109}
!7441 = !{!7442, !7443, !7444}
!7442 = !DILocalVariable(name: "ptr", arg: 1, scope: !7437, file: !7438, line: 229, type: !7406)
!7443 = !DILocalVariable(name: "size", arg: 2, scope: !7437, file: !7438, line: 229, type: !491)
!7444 = !DILocalVariable(name: "type", arg: 3, scope: !7437, file: !7438, line: 230, type: !109)
!7445 = !DILocation(line: 229, column: 60, scope: !7437)
!7446 = !DILocation(line: 229, column: 72, scope: !7437)
!7447 = !DILocation(line: 230, column: 15, scope: !7437)
!7448 = !DILocation(line: 230, column: 23, scope: !7437)
!7449 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !7420, file: !7420, line: 548, type: !7450, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7452)
!7450 = !DISubroutineType(types: !7451)
!7451 = !{!109, !109, !6759}
!7452 = !{!7453, !7454}
!7453 = !DILocalVariable(name: "i", arg: 1, scope: !7449, file: !7420, line: 548, type: !109)
!7454 = !DILocalVariable(name: "v", arg: 2, scope: !7449, file: !7420, line: 548, type: !6759)
!7455 = !DILocation(line: 548, column: 27, scope: !7449)
!7456 = !DILocation(line: 548, column: 40, scope: !7449)
!7457 = !DILocation(line: 551, column: 32, scope: !7449)
!7458 = !DILocation(line: 551, column: 35, scope: !7449)
!7459 = !DILocation(line: 551, column: 9, scope: !7449)
!7460 = !DILocation(line: 551, column: 2, scope: !7449)
!7461 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !7462, file: !7462, line: 83, type: !7450, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7463)
!7462 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7463 = !{!7464, !7465, !7466}
!7464 = !DILocalVariable(name: "i", arg: 1, scope: !7461, file: !7462, line: 83, type: !109)
!7465 = !DILocalVariable(name: "v", arg: 2, scope: !7461, file: !7462, line: 83, type: !6759)
!7466 = !DILocalVariable(name: "__ret", scope: !7467, file: !7462, line: 85, type: !109)
!7467 = distinct !DILexicalBlock(scope: !7461, file: !7462, line: 85, column: 13)
!7468 = !DILocation(line: 83, column: 55, scope: !7461)
!7469 = !DILocation(line: 83, column: 68, scope: !7461)
!7470 = !DILocation(line: 85, column: 9, scope: !7461)
!7471 = !DILocation(line: 85, column: 13, scope: !7467)
!7472 = !{i64 2148551546, i64 2148551585, i64 2148551606, i64 2148551643, i64 2148551666, i64 2148551675}
!7473 = !DILocation(line: 85, column: 13, scope: !7461)
!7474 = !DILocation(line: 85, column: 11, scope: !7461)
!7475 = !DILocation(line: 85, column: 2, scope: !7461)
!7476 = !DISubprogram(name: "ida_alloc_range", scope: !945, file: !945, line: 257, type: !7477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7477 = !DISubroutineType(types: !7478)
!7478 = !{!109, !6774, !7, !7, !953}
!7479 = !DISubprogram(name: "ida_free", scope: !945, file: !945, line: 258, type: !7480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7480 = !DISubroutineType(types: !7481)
!7481 = !{null, !6774, !7}
!7482 = !DISubprogram(name: "_raw_spin_lock", scope: !7483, file: !7483, line: 22, type: !7484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7483 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7484 = !DISubroutineType(types: !7485)
!7485 = !{null, !7486}
!7486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!7487 = distinct !DISubprogram(name: "const_test_bit", scope: !7488, file: !7488, line: 166, type: !7489, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7494)
!7488 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7489 = !DISubroutineType(types: !7490)
!7490 = !{!1682, !494, !7491}
!7491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7492, size: 64)
!7492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7493)
!7493 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !494)
!7494 = !{!7495, !7496, !7497, !7498, !7499}
!7495 = !DILocalVariable(name: "nr", arg: 1, scope: !7487, file: !7488, line: 166, type: !494)
!7496 = !DILocalVariable(name: "addr", arg: 2, scope: !7487, file: !7488, line: 166, type: !7491)
!7497 = !DILocalVariable(name: "p", scope: !7487, file: !7488, line: 168, type: !6435)
!7498 = !DILocalVariable(name: "mask", scope: !7487, file: !7488, line: 169, type: !494)
!7499 = !DILocalVariable(name: "val", scope: !7487, file: !7488, line: 170, type: !494)
!7500 = !DILocation(line: 166, column: 30, scope: !7487)
!7501 = !DILocation(line: 166, column: 64, scope: !7487)
!7502 = !DILocation(line: 168, column: 2, scope: !7487)
!7503 = !DILocation(line: 168, column: 23, scope: !7487)
!7504 = !DILocation(line: 168, column: 50, scope: !7487)
!7505 = !DILocation(line: 168, column: 57, scope: !7487)
!7506 = !DILocation(line: 168, column: 55, scope: !7487)
!7507 = !DILocation(line: 169, column: 2, scope: !7487)
!7508 = !DILocation(line: 169, column: 16, scope: !7487)
!7509 = !DILocation(line: 169, column: 23, scope: !7487)
!7510 = !DILocation(line: 170, column: 2, scope: !7487)
!7511 = !DILocation(line: 170, column: 16, scope: !7487)
!7512 = !DILocation(line: 170, column: 23, scope: !7487)
!7513 = !DILocation(line: 170, column: 22, scope: !7487)
!7514 = !DILocation(line: 172, column: 12, scope: !7487)
!7515 = !DILocation(line: 172, column: 18, scope: !7487)
!7516 = !DILocation(line: 172, column: 16, scope: !7487)
!7517 = !DILocation(line: 172, column: 10, scope: !7487)
!7518 = !DILocation(line: 172, column: 9, scope: !7487)
!7519 = !DILocation(line: 173, column: 1, scope: !7487)
!7520 = !DILocation(line: 172, column: 2, scope: !7487)
!7521 = distinct !DISubprogram(name: "_test_bit", scope: !7522, file: !7522, line: 139, type: !7489, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7523)
!7522 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7523 = !{!7524, !7525}
!7524 = !DILocalVariable(name: "nr", arg: 1, scope: !7521, file: !7522, line: 139, type: !494)
!7525 = !DILocalVariable(name: "addr", arg: 2, scope: !7521, file: !7522, line: 139, type: !7491)
!7526 = !DILocation(line: 139, column: 25, scope: !7521)
!7527 = !DILocation(line: 139, column: 59, scope: !7521)
!7528 = !DILocation(line: 141, column: 25, scope: !7521)
!7529 = !DILocation(line: 141, column: 32, scope: !7521)
!7530 = !DILocation(line: 141, column: 30, scope: !7521)
!7531 = !DILocation(line: 141, column: 2, scope: !7521)
!7532 = !DILocation(line: 142, column: 23, scope: !7521)
!7533 = !DILocation(line: 142, column: 27, scope: !7521)
!7534 = !DILocation(line: 142, column: 9, scope: !7521)
!7535 = !DILocation(line: 142, column: 2, scope: !7521)
!7536 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7403, file: !7403, line: 66, type: !7404, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7537)
!7537 = !{!7538, !7539}
!7538 = !DILocalVariable(name: "v", arg: 1, scope: !7536, file: !7403, line: 66, type: !7406)
!7539 = !DILocalVariable(name: "size", arg: 2, scope: !7536, file: !7403, line: 66, type: !491)
!7540 = !DILocation(line: 66, column: 73, scope: !7536)
!7541 = !DILocation(line: 66, column: 83, scope: !7536)
!7542 = !DILocation(line: 68, column: 19, scope: !7536)
!7543 = !DILocation(line: 68, column: 22, scope: !7536)
!7544 = !DILocation(line: 68, column: 2, scope: !7536)
!7545 = !DILocation(line: 69, column: 2, scope: !7536)
!7546 = !DILocation(line: 70, column: 1, scope: !7536)
!7547 = distinct !DISubprogram(name: "arch_test_bit", scope: !7548, file: !7548, line: 237, type: !7489, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7549)
!7548 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7549 = !{!7550, !7551}
!7550 = !DILocalVariable(name: "nr", arg: 1, scope: !7547, file: !7548, line: 237, type: !494)
!7551 = !DILocalVariable(name: "addr", arg: 2, scope: !7547, file: !7548, line: 237, type: !7491)
!7552 = !DILocation(line: 237, column: 29, scope: !7547)
!7553 = !DILocation(line: 237, column: 63, scope: !7547)
!7554 = !DILocation(line: 239, column: 30, scope: !7547)
!7555 = !DILocation(line: 239, column: 9, scope: !7547)
!7556 = !DILocation(line: 239, column: 54, scope: !7547)
!7557 = !DILocation(line: 239, column: 58, scope: !7547)
!7558 = !DILocation(line: 239, column: 36, scope: !7547)
!7559 = !DILocation(line: 240, column: 26, scope: !7547)
!7560 = !DILocation(line: 240, column: 30, scope: !7547)
!7561 = !DILocation(line: 240, column: 8, scope: !7547)
!7562 = !DILocation(line: 239, column: 2, scope: !7547)
!7563 = distinct !DISubprogram(name: "kasan_check_read", scope: !7428, file: !7428, line: 40, type: !7429, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7564)
!7564 = !{!7565, !7566}
!7565 = !DILocalVariable(name: "p", arg: 1, scope: !7563, file: !7428, line: 40, type: !7406)
!7566 = !DILocalVariable(name: "size", arg: 2, scope: !7563, file: !7428, line: 40, type: !7)
!7567 = !DILocation(line: 40, column: 58, scope: !7563)
!7568 = !DILocation(line: 40, column: 74, scope: !7563)
!7569 = !DILocation(line: 42, column: 2, scope: !7563)
!7570 = distinct !DISubprogram(name: "constant_test_bit", scope: !7548, file: !7548, line: 204, type: !7571, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7573)
!7571 = !DISubroutineType(types: !7572)
!7572 = !{!1682, !480, !7491}
!7573 = !{!7574, !7575}
!7574 = !DILocalVariable(name: "nr", arg: 1, scope: !7570, file: !7548, line: 204, type: !480)
!7575 = !DILocalVariable(name: "addr", arg: 2, scope: !7570, file: !7548, line: 204, type: !7491)
!7576 = !DILocation(line: 204, column: 52, scope: !7570)
!7577 = !DILocation(line: 204, column: 86, scope: !7570)
!7578 = !DILocation(line: 206, column: 19, scope: !7570)
!7579 = !DILocation(line: 206, column: 22, scope: !7570)
!7580 = !DILocation(line: 206, column: 15, scope: !7570)
!7581 = !DILocation(line: 207, column: 4, scope: !7570)
!7582 = !DILocation(line: 207, column: 9, scope: !7570)
!7583 = !DILocation(line: 207, column: 12, scope: !7570)
!7584 = !DILocation(line: 206, column: 44, scope: !7570)
!7585 = !DILocation(line: 207, column: 37, scope: !7570)
!7586 = !DILocation(line: 206, column: 2, scope: !7570)
!7587 = distinct !DISubprogram(name: "variable_test_bit", scope: !7548, file: !7548, line: 224, type: !7571, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7588)
!7588 = !{!7589, !7590, !7591}
!7589 = !DILocalVariable(name: "nr", arg: 1, scope: !7587, file: !7548, line: 224, type: !480)
!7590 = !DILocalVariable(name: "addr", arg: 2, scope: !7587, file: !7548, line: 224, type: !7491)
!7591 = !DILocalVariable(name: "oldbit", scope: !7587, file: !7548, line: 226, type: !1682)
!7592 = !DILocation(line: 224, column: 52, scope: !7587)
!7593 = !DILocation(line: 224, column: 86, scope: !7587)
!7594 = !DILocation(line: 226, column: 2, scope: !7587)
!7595 = !DILocation(line: 226, column: 7, scope: !7587)
!7596 = !DILocation(line: 231, column: 33, scope: !7587)
!7597 = !DILocation(line: 231, column: 46, scope: !7587)
!7598 = !DILocation(line: 228, column: 2, scope: !7587)
!7599 = !{i64 2148087427, i64 2148087501}
!7600 = !DILocation(line: 233, column: 9, scope: !7587)
!7601 = !DILocation(line: 234, column: 1, scope: !7587)
!7602 = !DILocation(line: 233, column: 2, scope: !7587)
!7603 = !DISubprogram(name: "_raw_spin_unlock", scope: !7483, file: !7483, line: 39, type: !7484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7604 = distinct !DISubprogram(name: "virtio_gpu_free_object", scope: !3, file: !3, line: 86, type: !6353, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7605)
!7605 = !{!7606, !7607, !7608, !7610}
!7606 = !DILocalVariable(name: "obj", arg: 1, scope: !7604, file: !3, line: 86, type: !4968)
!7607 = !DILocalVariable(name: "bo", scope: !7604, file: !3, line: 88, type: !6433)
!7608 = !DILocalVariable(name: "__mptr", scope: !7609, file: !3, line: 88, type: !516)
!7609 = distinct !DILexicalBlock(scope: !7604, file: !3, line: 88, column: 33)
!7610 = !DILocalVariable(name: "vgdev", scope: !7604, file: !3, line: 89, type: !6452)
!7611 = !DILocation(line: 86, column: 59, scope: !7604)
!7612 = !DILocation(line: 88, column: 2, scope: !7604)
!7613 = !DILocation(line: 88, column: 28, scope: !7604)
!7614 = !DILocation(line: 88, column: 33, scope: !7609)
!7615 = !DILocation(line: 88, column: 33, scope: !7604)
!7616 = !DILocation(line: 89, column: 2, scope: !7604)
!7617 = !DILocation(line: 89, column: 28, scope: !7604)
!7618 = !DILocation(line: 89, column: 36, scope: !7604)
!7619 = !DILocation(line: 89, column: 40, scope: !7604)
!7620 = !DILocation(line: 89, column: 45, scope: !7604)
!7621 = !DILocation(line: 89, column: 50, scope: !7604)
!7622 = !DILocation(line: 89, column: 55, scope: !7604)
!7623 = !DILocation(line: 91, column: 6, scope: !7624)
!7624 = distinct !DILexicalBlock(scope: !7604, file: !3, line: 91, column: 6)
!7625 = !DILocation(line: 91, column: 10, scope: !7624)
!7626 = !DILocation(line: 91, column: 6, scope: !7604)
!7627 = !DILocation(line: 92, column: 33, scope: !7628)
!7628 = distinct !DILexicalBlock(scope: !7624, file: !3, line: 91, column: 19)
!7629 = !DILocation(line: 92, column: 40, scope: !7628)
!7630 = !DILocation(line: 92, column: 3, scope: !7628)
!7631 = !DILocation(line: 93, column: 21, scope: !7628)
!7632 = !DILocation(line: 93, column: 3, scope: !7628)
!7633 = !DILocation(line: 95, column: 3, scope: !7628)
!7634 = !DILocation(line: 97, column: 28, scope: !7604)
!7635 = !DILocation(line: 97, column: 2, scope: !7604)
!7636 = !DILocation(line: 98, column: 1, scope: !7604)
!7637 = distinct !DISubprogram(name: "drm_gem_shmem_object_print_info", scope: !4377, file: !4377, line: 157, type: !6365, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7638)
!7638 = !{!7639, !7640, !7641, !7642, !7645}
!7639 = !DILocalVariable(name: "p", arg: 1, scope: !7637, file: !4377, line: 157, type: !5031)
!7640 = !DILocalVariable(name: "indent", arg: 2, scope: !7637, file: !4377, line: 157, type: !7)
!7641 = !DILocalVariable(name: "obj", arg: 3, scope: !7637, file: !4377, line: 158, type: !6367)
!7642 = !DILocalVariable(name: "shmem", scope: !7637, file: !4377, line: 160, type: !7643)
!7643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7644, size: 64)
!7644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4376)
!7645 = !DILocalVariable(name: "__mptr", scope: !7646, file: !4377, line: 160, type: !516)
!7646 = distinct !DILexicalBlock(scope: !7637, file: !4377, line: 160, column: 45)
!7647 = !DILocation(line: 157, column: 72, scope: !7637)
!7648 = !DILocation(line: 157, column: 88, scope: !7637)
!7649 = !DILocation(line: 158, column: 39, scope: !7637)
!7650 = !DILocation(line: 160, column: 2, scope: !7637)
!7651 = !DILocation(line: 160, column: 37, scope: !7637)
!7652 = !DILocation(line: 160, column: 45, scope: !7646)
!7653 = !DILocation(line: 160, column: 45, scope: !7637)
!7654 = !DILocation(line: 162, column: 27, scope: !7637)
!7655 = !DILocation(line: 162, column: 34, scope: !7637)
!7656 = !DILocation(line: 162, column: 37, scope: !7637)
!7657 = !DILocation(line: 162, column: 2, scope: !7637)
!7658 = !DILocation(line: 163, column: 1, scope: !7637)
!7659 = distinct !DISubprogram(name: "drm_gem_shmem_object_pin", scope: !4377, file: !4377, line: 172, type: !6375, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7660)
!7660 = !{!7661, !7662, !7663}
!7661 = !DILocalVariable(name: "obj", arg: 1, scope: !7659, file: !4377, line: 172, type: !4968)
!7662 = !DILocalVariable(name: "shmem", scope: !7659, file: !4377, line: 174, type: !6436)
!7663 = !DILocalVariable(name: "__mptr", scope: !7664, file: !4377, line: 174, type: !516)
!7664 = distinct !DILexicalBlock(scope: !7659, file: !4377, line: 174, column: 39)
!7665 = !DILocation(line: 172, column: 67, scope: !7659)
!7666 = !DILocation(line: 174, column: 2, scope: !7659)
!7667 = !DILocation(line: 174, column: 31, scope: !7659)
!7668 = !DILocation(line: 174, column: 39, scope: !7664)
!7669 = !DILocation(line: 174, column: 39, scope: !7659)
!7670 = !DILocation(line: 176, column: 27, scope: !7659)
!7671 = !DILocation(line: 176, column: 9, scope: !7659)
!7672 = !DILocation(line: 177, column: 1, scope: !7659)
!7673 = !DILocation(line: 176, column: 2, scope: !7659)
!7674 = distinct !DISubprogram(name: "drm_gem_shmem_object_unpin", scope: !4377, file: !4377, line: 186, type: !6353, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7675)
!7675 = !{!7676, !7677, !7678}
!7676 = !DILocalVariable(name: "obj", arg: 1, scope: !7674, file: !4377, line: 186, type: !4968)
!7677 = !DILocalVariable(name: "shmem", scope: !7674, file: !4377, line: 188, type: !6436)
!7678 = !DILocalVariable(name: "__mptr", scope: !7679, file: !4377, line: 188, type: !516)
!7679 = distinct !DILexicalBlock(scope: !7674, file: !4377, line: 188, column: 39)
!7680 = !DILocation(line: 186, column: 70, scope: !7674)
!7681 = !DILocation(line: 188, column: 2, scope: !7674)
!7682 = !DILocation(line: 188, column: 31, scope: !7674)
!7683 = !DILocation(line: 188, column: 39, scope: !7679)
!7684 = !DILocation(line: 188, column: 39, scope: !7674)
!7685 = !DILocation(line: 190, column: 22, scope: !7674)
!7686 = !DILocation(line: 190, column: 2, scope: !7674)
!7687 = !DILocation(line: 191, column: 1, scope: !7674)
!7688 = distinct !DISubprogram(name: "drm_gem_shmem_object_get_sg_table", scope: !4377, file: !4377, line: 203, type: !6380, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7689)
!7689 = !{!7690, !7691, !7692}
!7690 = !DILocalVariable(name: "obj", arg: 1, scope: !7688, file: !4377, line: 203, type: !4968)
!7691 = !DILocalVariable(name: "shmem", scope: !7688, file: !4377, line: 205, type: !6436)
!7692 = !DILocalVariable(name: "__mptr", scope: !7693, file: !4377, line: 205, type: !516)
!7693 = distinct !DILexicalBlock(scope: !7688, file: !4377, line: 205, column: 39)
!7694 = !DILocation(line: 203, column: 89, scope: !7688)
!7695 = !DILocation(line: 205, column: 2, scope: !7688)
!7696 = !DILocation(line: 205, column: 31, scope: !7688)
!7697 = !DILocation(line: 205, column: 39, scope: !7693)
!7698 = !DILocation(line: 205, column: 39, scope: !7688)
!7699 = !DILocation(line: 207, column: 36, scope: !7688)
!7700 = !DILocation(line: 207, column: 9, scope: !7688)
!7701 = !DILocation(line: 208, column: 1, scope: !7688)
!7702 = !DILocation(line: 207, column: 2, scope: !7688)
!7703 = distinct !DISubprogram(name: "drm_gem_shmem_object_vmap", scope: !4377, file: !4377, line: 221, type: !6384, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7704)
!7704 = !{!7705, !7706, !7707, !7708}
!7705 = !DILocalVariable(name: "obj", arg: 1, scope: !7703, file: !4377, line: 221, type: !4968)
!7706 = !DILocalVariable(name: "map", arg: 2, scope: !7703, file: !4377, line: 222, type: !6386)
!7707 = !DILocalVariable(name: "shmem", scope: !7703, file: !4377, line: 224, type: !6436)
!7708 = !DILocalVariable(name: "__mptr", scope: !7709, file: !4377, line: 224, type: !516)
!7709 = distinct !DILexicalBlock(scope: !7703, file: !4377, line: 224, column: 39)
!7710 = !DILocation(line: 221, column: 68, scope: !7703)
!7711 = !DILocation(line: 222, column: 28, scope: !7703)
!7712 = !DILocation(line: 224, column: 2, scope: !7703)
!7713 = !DILocation(line: 224, column: 31, scope: !7703)
!7714 = !DILocation(line: 224, column: 39, scope: !7709)
!7715 = !DILocation(line: 224, column: 39, scope: !7703)
!7716 = !DILocation(line: 226, column: 28, scope: !7703)
!7717 = !DILocation(line: 226, column: 35, scope: !7703)
!7718 = !DILocation(line: 226, column: 9, scope: !7703)
!7719 = !DILocation(line: 227, column: 1, scope: !7703)
!7720 = !DILocation(line: 226, column: 2, scope: !7703)
!7721 = distinct !DISubprogram(name: "drm_gem_shmem_object_vunmap", scope: !4377, file: !4377, line: 237, type: !6390, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7722)
!7722 = !{!7723, !7724, !7725, !7726}
!7723 = !DILocalVariable(name: "obj", arg: 1, scope: !7721, file: !4377, line: 237, type: !4968)
!7724 = !DILocalVariable(name: "map", arg: 2, scope: !7721, file: !4377, line: 238, type: !6386)
!7725 = !DILocalVariable(name: "shmem", scope: !7721, file: !4377, line: 240, type: !6436)
!7726 = !DILocalVariable(name: "__mptr", scope: !7727, file: !4377, line: 240, type: !516)
!7727 = distinct !DILexicalBlock(scope: !7721, file: !4377, line: 240, column: 39)
!7728 = !DILocation(line: 237, column: 71, scope: !7721)
!7729 = !DILocation(line: 238, column: 31, scope: !7721)
!7730 = !DILocation(line: 240, column: 2, scope: !7721)
!7731 = !DILocation(line: 240, column: 31, scope: !7721)
!7732 = !DILocation(line: 240, column: 39, scope: !7727)
!7733 = !DILocation(line: 240, column: 39, scope: !7721)
!7734 = !DILocation(line: 242, column: 23, scope: !7721)
!7735 = !DILocation(line: 242, column: 30, scope: !7721)
!7736 = !DILocation(line: 242, column: 2, scope: !7721)
!7737 = !DILocation(line: 243, column: 1, scope: !7721)
!7738 = distinct !DISubprogram(name: "drm_gem_shmem_object_mmap", scope: !4377, file: !4377, line: 256, type: !6394, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7739)
!7739 = !{!7740, !7741, !7742, !7743}
!7740 = !DILocalVariable(name: "obj", arg: 1, scope: !7738, file: !4377, line: 256, type: !4968)
!7741 = !DILocalVariable(name: "vma", arg: 2, scope: !7738, file: !4377, line: 256, type: !2340)
!7742 = !DILocalVariable(name: "shmem", scope: !7738, file: !4377, line: 258, type: !6436)
!7743 = !DILocalVariable(name: "__mptr", scope: !7744, file: !4377, line: 258, type: !516)
!7744 = distinct !DILexicalBlock(scope: !7738, file: !4377, line: 258, column: 39)
!7745 = !DILocation(line: 256, column: 68, scope: !7738)
!7746 = !DILocation(line: 256, column: 96, scope: !7738)
!7747 = !DILocation(line: 258, column: 2, scope: !7738)
!7748 = !DILocation(line: 258, column: 31, scope: !7738)
!7749 = !DILocation(line: 258, column: 39, scope: !7744)
!7750 = !DILocation(line: 258, column: 39, scope: !7738)
!7751 = !DILocation(line: 260, column: 28, scope: !7738)
!7752 = !DILocation(line: 260, column: 35, scope: !7738)
!7753 = !DILocation(line: 260, column: 9, scope: !7738)
!7754 = !DILocation(line: 261, column: 1, scope: !7738)
!7755 = !DILocation(line: 260, column: 2, scope: !7738)
!7756 = !DISubprogram(name: "virtio_gpu_cmd_unref_resource", scope: !4370, file: !4370, line: 332, type: !7757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7757 = !DISubroutineType(types: !7758)
!7758 = !{null, !6452, !6433}
!7759 = !DISubprogram(name: "virtio_gpu_notify", scope: !4370, file: !4370, line: 409, type: !7760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7760 = !DISubroutineType(types: !7761)
!7761 = !{null, !6452}
!7762 = !DISubprogram(name: "drm_gem_shmem_print_info", scope: !4377, file: !4377, line: 125, type: !7763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7763 = !DISubroutineType(types: !7764)
!7764 = !{null, !7643, !5031, !7}
!7765 = !DISubprogram(name: "drm_gem_shmem_pin", scope: !4377, file: !4377, line: 103, type: !7766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7766 = !DISubroutineType(types: !7767)
!7767 = !{!109, !6436}
!7768 = !DISubprogram(name: "drm_gem_shmem_unpin", scope: !4377, file: !4377, line: 104, type: !6884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7769 = !DISubprogram(name: "drm_gem_shmem_get_sg_table", scope: !4377, file: !4377, line: 122, type: !7770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7770 = !DISubroutineType(types: !7771)
!7771 = !{!4990, !6436}
!7772 = !DISubprogram(name: "drm_gem_shmem_vmap", scope: !4377, file: !4377, line: 105, type: !7773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7773 = !DISubroutineType(types: !7774)
!7774 = !{!109, !6436, !6386}
!7775 = !DISubprogram(name: "drm_gem_shmem_vunmap", scope: !4377, file: !4377, line: 107, type: !7776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7776 = !DISubroutineType(types: !7777)
!7777 = !{null, !6436, !6386}
!7778 = !DISubprogram(name: "drm_gem_shmem_mmap", scope: !4377, file: !4377, line: 109, type: !7779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7779 = !DISubroutineType(types: !7780)
!7780 = !{!109, !6436, !2340}
!7781 = distinct !DISubprogram(name: "kmalloc", scope: !329, file: !329, line: 591, type: !6955, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7782)
!7782 = !{!7783, !7784, !7785}
!7783 = !DILocalVariable(name: "size", arg: 1, scope: !7781, file: !329, line: 591, type: !491)
!7784 = !DILocalVariable(name: "flags", arg: 2, scope: !7781, file: !329, line: 591, type: !953)
!7785 = !DILocalVariable(name: "index", scope: !7786, file: !329, line: 594, type: !7)
!7786 = distinct !DILexicalBlock(scope: !7787, file: !329, line: 593, column: 42)
!7787 = distinct !DILexicalBlock(scope: !7781, file: !329, line: 593, column: 6)
!7788 = !DILocation(line: 591, column: 61, scope: !7781)
!7789 = !DILocation(line: 591, column: 73, scope: !7781)
!7790 = !DILocation(line: 593, column: 27, scope: !7787)
!7791 = !DILocation(line: 593, column: 6, scope: !7787)
!7792 = !DILocation(line: 593, column: 33, scope: !7787)
!7793 = !DILocation(line: 593, column: 36, scope: !7787)
!7794 = !DILocation(line: 593, column: 6, scope: !7781)
!7795 = !DILocation(line: 594, column: 3, scope: !7786)
!7796 = !DILocation(line: 594, column: 16, scope: !7786)
!7797 = !DILocation(line: 596, column: 7, scope: !7798)
!7798 = distinct !DILexicalBlock(scope: !7786, file: !329, line: 596, column: 7)
!7799 = !DILocation(line: 596, column: 12, scope: !7798)
!7800 = !DILocation(line: 596, column: 7, scope: !7786)
!7801 = !DILocation(line: 597, column: 25, scope: !7798)
!7802 = !DILocation(line: 597, column: 31, scope: !7798)
!7803 = !DILocation(line: 597, column: 11, scope: !7798)
!7804 = !DILocation(line: 597, column: 4, scope: !7798)
!7805 = !DILocation(line: 599, column: 11, scope: !7786)
!7806 = !DILocation(line: 599, column: 9, scope: !7786)
!7807 = !DILocation(line: 601, column: 33, scope: !7786)
!7808 = !DILocation(line: 601, column: 40, scope: !7786)
!7809 = !DILocation(line: 601, column: 20, scope: !7786)
!7810 = !DILocation(line: 601, column: 5, scope: !7786)
!7811 = !DILocation(line: 601, column: 51, scope: !7786)
!7812 = !DILocation(line: 602, column: 5, scope: !7786)
!7813 = !DILocation(line: 602, column: 12, scope: !7786)
!7814 = !DILocation(line: 600, column: 10, scope: !7786)
!7815 = !DILocation(line: 600, column: 3, scope: !7786)
!7816 = !DILocation(line: 603, column: 2, scope: !7787)
!7817 = !DILocation(line: 604, column: 19, scope: !7781)
!7818 = !DILocation(line: 604, column: 25, scope: !7781)
!7819 = !DILocation(line: 604, column: 9, scope: !7781)
!7820 = !DILocation(line: 604, column: 2, scope: !7781)
!7821 = !DILocation(line: 605, column: 1, scope: !7781)
!7822 = !DISubprogram(name: "kmalloc_large", scope: !329, file: !329, line: 531, type: !6955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7823 = distinct !DISubprogram(name: "__kmalloc_index", scope: !329, file: !329, line: 444, type: !7824, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7826)
!7824 = !DISubroutineType(types: !7825)
!7825 = !{!7, !491, !1682}
!7826 = !{!7827, !7828}
!7827 = !DILocalVariable(name: "size", arg: 1, scope: !7823, file: !329, line: 444, type: !491)
!7828 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7823, file: !329, line: 445, type: !1682)
!7829 = !DILocation(line: 444, column: 60, scope: !7823)
!7830 = !DILocation(line: 445, column: 16, scope: !7823)
!7831 = !DILocation(line: 447, column: 7, scope: !7832)
!7832 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 447, column: 6)
!7833 = !DILocation(line: 447, column: 6, scope: !7823)
!7834 = !DILocation(line: 448, column: 3, scope: !7832)
!7835 = !DILocation(line: 450, column: 6, scope: !7836)
!7836 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 450, column: 6)
!7837 = !DILocation(line: 450, column: 11, scope: !7836)
!7838 = !DILocation(line: 450, column: 6, scope: !7823)
!7839 = !DILocation(line: 451, column: 3, scope: !7836)
!7840 = !DILocation(line: 453, column: 32, scope: !7841)
!7841 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 453, column: 6)
!7842 = !DILocation(line: 453, column: 37, scope: !7841)
!7843 = !DILocation(line: 453, column: 42, scope: !7841)
!7844 = !DILocation(line: 453, column: 45, scope: !7841)
!7845 = !DILocation(line: 453, column: 50, scope: !7841)
!7846 = !DILocation(line: 453, column: 6, scope: !7823)
!7847 = !DILocation(line: 454, column: 3, scope: !7841)
!7848 = !DILocation(line: 455, column: 32, scope: !7849)
!7849 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 455, column: 6)
!7850 = !DILocation(line: 455, column: 37, scope: !7849)
!7851 = !DILocation(line: 455, column: 43, scope: !7849)
!7852 = !DILocation(line: 455, column: 46, scope: !7849)
!7853 = !DILocation(line: 455, column: 51, scope: !7849)
!7854 = !DILocation(line: 455, column: 6, scope: !7823)
!7855 = !DILocation(line: 456, column: 3, scope: !7849)
!7856 = !DILocation(line: 457, column: 6, scope: !7857)
!7857 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 457, column: 6)
!7858 = !DILocation(line: 457, column: 11, scope: !7857)
!7859 = !DILocation(line: 457, column: 6, scope: !7823)
!7860 = !DILocation(line: 457, column: 26, scope: !7857)
!7861 = !DILocation(line: 458, column: 6, scope: !7862)
!7862 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 458, column: 6)
!7863 = !DILocation(line: 458, column: 11, scope: !7862)
!7864 = !DILocation(line: 458, column: 6, scope: !7823)
!7865 = !DILocation(line: 458, column: 26, scope: !7862)
!7866 = !DILocation(line: 459, column: 6, scope: !7867)
!7867 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 459, column: 6)
!7868 = !DILocation(line: 459, column: 11, scope: !7867)
!7869 = !DILocation(line: 459, column: 6, scope: !7823)
!7870 = !DILocation(line: 459, column: 26, scope: !7867)
!7871 = !DILocation(line: 460, column: 6, scope: !7872)
!7872 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 460, column: 6)
!7873 = !DILocation(line: 460, column: 11, scope: !7872)
!7874 = !DILocation(line: 460, column: 6, scope: !7823)
!7875 = !DILocation(line: 460, column: 26, scope: !7872)
!7876 = !DILocation(line: 461, column: 6, scope: !7877)
!7877 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 461, column: 6)
!7878 = !DILocation(line: 461, column: 11, scope: !7877)
!7879 = !DILocation(line: 461, column: 6, scope: !7823)
!7880 = !DILocation(line: 461, column: 26, scope: !7877)
!7881 = !DILocation(line: 462, column: 6, scope: !7882)
!7882 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 462, column: 6)
!7883 = !DILocation(line: 462, column: 11, scope: !7882)
!7884 = !DILocation(line: 462, column: 6, scope: !7823)
!7885 = !DILocation(line: 462, column: 26, scope: !7882)
!7886 = !DILocation(line: 463, column: 6, scope: !7887)
!7887 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 463, column: 6)
!7888 = !DILocation(line: 463, column: 11, scope: !7887)
!7889 = !DILocation(line: 463, column: 6, scope: !7823)
!7890 = !DILocation(line: 463, column: 26, scope: !7887)
!7891 = !DILocation(line: 464, column: 6, scope: !7892)
!7892 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 464, column: 6)
!7893 = !DILocation(line: 464, column: 11, scope: !7892)
!7894 = !DILocation(line: 464, column: 6, scope: !7823)
!7895 = !DILocation(line: 464, column: 26, scope: !7892)
!7896 = !DILocation(line: 465, column: 6, scope: !7897)
!7897 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 465, column: 6)
!7898 = !DILocation(line: 465, column: 11, scope: !7897)
!7899 = !DILocation(line: 465, column: 6, scope: !7823)
!7900 = !DILocation(line: 465, column: 26, scope: !7897)
!7901 = !DILocation(line: 466, column: 6, scope: !7902)
!7902 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 466, column: 6)
!7903 = !DILocation(line: 466, column: 11, scope: !7902)
!7904 = !DILocation(line: 466, column: 6, scope: !7823)
!7905 = !DILocation(line: 466, column: 26, scope: !7902)
!7906 = !DILocation(line: 467, column: 6, scope: !7907)
!7907 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 467, column: 6)
!7908 = !DILocation(line: 467, column: 11, scope: !7907)
!7909 = !DILocation(line: 467, column: 6, scope: !7823)
!7910 = !DILocation(line: 467, column: 26, scope: !7907)
!7911 = !DILocation(line: 468, column: 6, scope: !7912)
!7912 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 468, column: 6)
!7913 = !DILocation(line: 468, column: 11, scope: !7912)
!7914 = !DILocation(line: 468, column: 6, scope: !7823)
!7915 = !DILocation(line: 468, column: 26, scope: !7912)
!7916 = !DILocation(line: 469, column: 6, scope: !7917)
!7917 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 469, column: 6)
!7918 = !DILocation(line: 469, column: 11, scope: !7917)
!7919 = !DILocation(line: 469, column: 6, scope: !7823)
!7920 = !DILocation(line: 469, column: 26, scope: !7917)
!7921 = !DILocation(line: 470, column: 6, scope: !7922)
!7922 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 470, column: 6)
!7923 = !DILocation(line: 470, column: 11, scope: !7922)
!7924 = !DILocation(line: 470, column: 6, scope: !7823)
!7925 = !DILocation(line: 470, column: 26, scope: !7922)
!7926 = !DILocation(line: 471, column: 6, scope: !7927)
!7927 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 471, column: 6)
!7928 = !DILocation(line: 471, column: 11, scope: !7927)
!7929 = !DILocation(line: 471, column: 6, scope: !7823)
!7930 = !DILocation(line: 471, column: 26, scope: !7927)
!7931 = !DILocation(line: 472, column: 6, scope: !7932)
!7932 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 472, column: 6)
!7933 = !DILocation(line: 472, column: 11, scope: !7932)
!7934 = !DILocation(line: 472, column: 6, scope: !7823)
!7935 = !DILocation(line: 472, column: 26, scope: !7932)
!7936 = !DILocation(line: 473, column: 6, scope: !7937)
!7937 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 473, column: 6)
!7938 = !DILocation(line: 473, column: 11, scope: !7937)
!7939 = !DILocation(line: 473, column: 6, scope: !7823)
!7940 = !DILocation(line: 473, column: 26, scope: !7937)
!7941 = !DILocation(line: 474, column: 6, scope: !7942)
!7942 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 474, column: 6)
!7943 = !DILocation(line: 474, column: 11, scope: !7942)
!7944 = !DILocation(line: 474, column: 6, scope: !7823)
!7945 = !DILocation(line: 474, column: 27, scope: !7942)
!7946 = !DILocation(line: 475, column: 6, scope: !7947)
!7947 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 475, column: 6)
!7948 = !DILocation(line: 475, column: 11, scope: !7947)
!7949 = !DILocation(line: 475, column: 6, scope: !7823)
!7950 = !DILocation(line: 475, column: 32, scope: !7947)
!7951 = !DILocation(line: 477, column: 50, scope: !7952)
!7952 = distinct !DILexicalBlock(scope: !7823, file: !329, line: 477, column: 6)
!7953 = !DILocation(line: 477, column: 6, scope: !7823)
!7954 = !DILocation(line: 478, column: 3, scope: !7952)
!7955 = !DILocation(line: 478, column: 3, scope: !7956)
!7956 = distinct !DILexicalBlock(scope: !7957, file: !329, line: 478, column: 3)
!7957 = distinct !DILexicalBlock(scope: !7952, file: !329, line: 478, column: 3)
!7958 = !{i32 -2141584002}
!7959 = !DILocation(line: 478, column: 3, scope: !7957)
!7960 = !DILocation(line: 480, column: 3, scope: !7952)
!7961 = !DILocation(line: 480, column: 3, scope: !7962)
!7962 = distinct !DILexicalBlock(scope: !7952, file: !329, line: 480, column: 3)
!7963 = !DILocation(line: 480, column: 3, scope: !7964)
!7964 = distinct !DILexicalBlock(scope: !7962, file: !329, line: 480, column: 3)
!7965 = !DILocation(line: 480, column: 3, scope: !7966)
!7966 = distinct !DILexicalBlock(scope: !7962, file: !329, line: 480, column: 3)
!7967 = !{i64 2153383497, i64 2153383526, i64 2153383572, i64 2153383630, i64 2153383684, i64 2153383738, i64 2153383793, i64 2153383824}
!7968 = !DILocation(line: 483, column: 2, scope: !7823)
!7969 = !DILocation(line: 484, column: 1, scope: !7823)
!7970 = !DISubprogram(name: "kmalloc_trace", scope: !329, file: !329, line: 525, type: !7971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7971 = !DISubroutineType(types: !7972)
!7972 = !{!516, !2871, !953, !491}
!7973 = distinct !DISubprogram(name: "kmalloc_type", scope: !329, file: !329, line: 401, type: !7974, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7976)
!7974 = !DISubroutineType(types: !7975)
!7975 = !{!328, !953, !494}
!7976 = !{!7977, !7978}
!7977 = !DILocalVariable(name: "flags", arg: 1, scope: !7973, file: !329, line: 401, type: !953)
!7978 = !DILocalVariable(name: "caller", arg: 2, scope: !7973, file: !329, line: 401, type: !494)
!7979 = !DILocation(line: 401, column: 67, scope: !7973)
!7980 = !DILocation(line: 401, column: 88, scope: !7973)
!7981 = !DILocation(line: 407, column: 6, scope: !7982)
!7982 = distinct !DILexicalBlock(scope: !7973, file: !329, line: 407, column: 6)
!7983 = !DILocation(line: 407, column: 6, scope: !7973)
!7984 = !DILocation(line: 413, column: 3, scope: !7982)
!7985 = !DILocation(line: 423, column: 38, scope: !7986)
!7986 = distinct !DILexicalBlock(scope: !7973, file: !329, line: 423, column: 6)
!7987 = !DILocation(line: 423, column: 44, scope: !7986)
!7988 = !DILocation(line: 423, column: 6, scope: !7973)
!7989 = !DILocation(line: 424, column: 3, scope: !7986)
!7990 = !DILocation(line: 426, column: 3, scope: !7991)
!7991 = distinct !DILexicalBlock(scope: !7973, file: !329, line: 425, column: 6)
!7992 = !DILocation(line: 429, column: 1, scope: !7973)
!7993 = !DISubprogram(name: "__kmalloc", scope: !329, file: !329, line: 488, type: !6955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7994 = !DISubprogram(name: "__compiletime_assert_229", scope: !329, file: !329, line: 478, type: !1997, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7995 = distinct !DISubprogram(name: "virtio_has_dma_quirk", scope: !6477, file: !6477, line: 200, type: !7996, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8000)
!7996 = !DISubroutineType(types: !7997)
!7997 = !{!1682, !7998}
!7998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7999, size: 64)
!7999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6458)
!8000 = !{!8001}
!8001 = !DILocalVariable(name: "vdev", arg: 1, scope: !7995, file: !6477, line: 200, type: !7998)
!8002 = !DILocation(line: 200, column: 69, scope: !7995)
!8003 = !DILocation(line: 206, column: 29, scope: !7995)
!8004 = !DILocation(line: 206, column: 10, scope: !7995)
!8005 = !DILocation(line: 206, column: 9, scope: !7995)
!8006 = !DILocation(line: 206, column: 2, scope: !7995)
!8007 = !DISubprogram(name: "drm_gem_shmem_get_pages_sgt", scope: !4377, file: !4377, line: 123, type: !7770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!8008 = distinct !DISubprogram(name: "kvmalloc_array", scope: !329, file: !329, line: 749, type: !8009, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8011)
!8009 = !DISubroutineType(types: !8010)
!8010 = !{!516, !491, !491, !953}
!8011 = !{!8012, !8013, !8014, !8015}
!8012 = !DILocalVariable(name: "n", arg: 1, scope: !8008, file: !329, line: 749, type: !491)
!8013 = !DILocalVariable(name: "size", arg: 2, scope: !8008, file: !329, line: 749, type: !491)
!8014 = !DILocalVariable(name: "flags", arg: 3, scope: !8008, file: !329, line: 749, type: !953)
!8015 = !DILocalVariable(name: "bytes", scope: !8008, file: !329, line: 751, type: !491)
!8016 = !DILocation(line: 749, column: 62, scope: !8008)
!8017 = !DILocation(line: 749, column: 72, scope: !8008)
!8018 = !DILocation(line: 749, column: 84, scope: !8008)
!8019 = !DILocation(line: 751, column: 2, scope: !8008)
!8020 = !DILocation(line: 751, column: 9, scope: !8008)
!8021 = !DILocation(line: 753, column: 6, scope: !8022)
!8022 = distinct !DILexicalBlock(scope: !8008, file: !329, line: 753, column: 6)
!8023 = !DILocation(line: 753, column: 6, scope: !8008)
!8024 = !DILocation(line: 754, column: 3, scope: !8022)
!8025 = !DILocation(line: 756, column: 18, scope: !8008)
!8026 = !DILocation(line: 756, column: 25, scope: !8008)
!8027 = !DILocation(line: 756, column: 9, scope: !8008)
!8028 = !DILocation(line: 756, column: 2, scope: !8008)
!8029 = !DILocation(line: 757, column: 1, scope: !8008)
!8030 = !DISubprogram(name: "__drm_err", scope: !5033, file: !5033, line: 573, type: !8031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!8031 = !DISubroutineType(types: !8032)
!8032 = !{null, !363, null}
!8033 = !DISubprogram(name: "sg_next", scope: !4992, file: !4992, line: 421, type: !8034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!8034 = !DISubroutineType(types: !8035)
!8035 = !{!4995, !4995}
!8036 = distinct !DISubprogram(name: "sg_phys", scope: !4992, file: !4992, line: 387, type: !8037, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8039)
!8037 = !DISubroutineType(types: !8038)
!8038 = !{!5002, !4995}
!8039 = !{!8040}
!8040 = !DILocalVariable(name: "sg", arg: 1, scope: !8036, file: !4992, line: 387, type: !4995)
!8041 = !DILocation(line: 387, column: 54, scope: !8036)
!8042 = !DILocation(line: 389, column: 9, scope: !8036)
!8043 = !DILocation(line: 389, column: 37, scope: !8036)
!8044 = !DILocation(line: 389, column: 41, scope: !8036)
!8045 = !DILocation(line: 389, column: 35, scope: !8036)
!8046 = !DILocation(line: 389, column: 2, scope: !8036)
!8047 = distinct !DISubprogram(name: "virtio_has_feature", scope: !6477, file: !6477, line: 187, type: !8048, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8050)
!8048 = !DISubroutineType(types: !8049)
!8049 = !{!1682, !7998, !7}
!8050 = !{!8051, !8052}
!8051 = !DILocalVariable(name: "vdev", arg: 1, scope: !8047, file: !6477, line: 187, type: !7998)
!8052 = !DILocalVariable(name: "fbit", arg: 2, scope: !8047, file: !6477, line: 188, type: !7)
!8053 = !DILocation(line: 187, column: 67, scope: !8047)
!8054 = !DILocation(line: 188, column: 24, scope: !8047)
!8055 = !DILocation(line: 190, column: 6, scope: !8056)
!8056 = distinct !DILexicalBlock(scope: !8047, file: !6477, line: 190, column: 6)
!8057 = !DILocation(line: 190, column: 11, scope: !8056)
!8058 = !DILocation(line: 190, column: 6, scope: !8047)
!8059 = !DILocation(line: 191, column: 39, scope: !8056)
!8060 = !DILocation(line: 191, column: 45, scope: !8056)
!8061 = !DILocation(line: 191, column: 3, scope: !8056)
!8062 = !DILocation(line: 193, column: 27, scope: !8047)
!8063 = !DILocation(line: 193, column: 33, scope: !8047)
!8064 = !DILocation(line: 193, column: 9, scope: !8047)
!8065 = !DILocation(line: 193, column: 2, scope: !8047)
!8066 = !DISubprogram(name: "virtio_check_driver_offered_feature", scope: !6477, file: !6477, line: 126, type: !8067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!8067 = !DISubroutineType(types: !8068)
!8068 = !{null, !7998, !7}
!8069 = distinct !DISubprogram(name: "__virtio_test_bit", scope: !6477, file: !6477, line: 136, type: !8048, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8070)
!8070 = !{!8071, !8072}
!8071 = !DILocalVariable(name: "vdev", arg: 1, scope: !8069, file: !6477, line: 136, type: !7998)
!8072 = !DILocalVariable(name: "fbit", arg: 2, scope: !8069, file: !6477, line: 137, type: !7)
!8073 = !DILocation(line: 136, column: 66, scope: !8069)
!8074 = !DILocation(line: 137, column: 23, scope: !8069)
!8075 = !DILocation(line: 140, column: 27, scope: !8076)
!8076 = distinct !DILexicalBlock(scope: !8069, file: !6477, line: 140, column: 6)
!8077 = !DILocation(line: 140, column: 6, scope: !8076)
!8078 = !DILocation(line: 140, column: 6, scope: !8069)
!8079 = !DILocation(line: 141, column: 3, scope: !8076)
!8080 = !DILocation(line: 141, column: 3, scope: !8081)
!8081 = distinct !DILexicalBlock(scope: !8082, file: !6477, line: 141, column: 3)
!8082 = distinct !DILexicalBlock(scope: !8076, file: !6477, line: 141, column: 3)
!8083 = !DILocation(line: 141, column: 3, scope: !8082)
!8084 = !{i32 -2140349678}
!8085 = !DILocation(line: 143, column: 3, scope: !8076)
!8086 = !DILocation(line: 143, column: 3, scope: !8087)
!8087 = distinct !DILexicalBlock(scope: !8088, file: !6477, line: 143, column: 3)
!8088 = distinct !DILexicalBlock(scope: !8076, file: !6477, line: 143, column: 3)
!8089 = !DILocation(line: 143, column: 3, scope: !8088)
!8090 = !DILocation(line: 143, column: 3, scope: !8091)
!8091 = distinct !DILexicalBlock(scope: !8087, file: !6477, line: 143, column: 3)
!8092 = !DILocation(line: 143, column: 3, scope: !8093)
!8093 = distinct !DILexicalBlock(scope: !8091, file: !6477, line: 143, column: 3)
!8094 = !DILocation(line: 143, column: 3, scope: !8095)
!8095 = distinct !DILexicalBlock(scope: !8091, file: !6477, line: 143, column: 3)
!8096 = !{i64 2154617919, i64 2154617948, i64 2154617994, i64 2154618052, i64 2154618106, i64 2154618160, i64 2154618215, i64 2154618246}
!8097 = !DILocation(line: 145, column: 9, scope: !8069)
!8098 = !DILocation(line: 145, column: 15, scope: !8069)
!8099 = !DILocation(line: 145, column: 26, scope: !8069)
!8100 = !DILocation(line: 145, column: 24, scope: !8069)
!8101 = !DILocation(line: 145, column: 2, scope: !8069)
!8102 = !DISubprogram(name: "__compiletime_assert_289", scope: !6477, file: !6477, line: 141, type: !1997, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!8103 = distinct !DISubprogram(name: "__must_check_overflow", scope: !8104, file: !8104, line: 51, type: !8105, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8107)
!8104 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!8105 = !DISubroutineType(types: !8106)
!8106 = !{!1682, !1682}
!8107 = !{!8108}
!8108 = !DILocalVariable(name: "overflow", arg: 1, scope: !8103, file: !8104, line: 51, type: !1682)
!8109 = !DILocation(line: 51, column: 60, scope: !8103)
!8110 = !DILocation(line: 53, column: 9, scope: !8103)
!8111 = !DILocation(line: 53, column: 2, scope: !8103)
!8112 = distinct !DISubprogram(name: "kvmalloc", scope: !329, file: !329, line: 736, type: !6955, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8113)
!8113 = !{!8114, !8115}
!8114 = !DILocalVariable(name: "size", arg: 1, scope: !8112, file: !329, line: 736, type: !491)
!8115 = !DILocalVariable(name: "flags", arg: 2, scope: !8112, file: !329, line: 736, type: !953)
!8116 = !DILocation(line: 736, column: 53, scope: !8112)
!8117 = !DILocation(line: 736, column: 65, scope: !8112)
!8118 = !DILocation(line: 738, column: 23, scope: !8112)
!8119 = !DILocation(line: 738, column: 29, scope: !8112)
!8120 = !DILocation(line: 738, column: 9, scope: !8112)
!8121 = !DILocation(line: 738, column: 2, scope: !8112)
!8122 = !DISubprogram(name: "kvmalloc_node", scope: !329, file: !329, line: 735, type: !8123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!8123 = !DISubroutineType(types: !8124)
!8124 = !{!516, !491, !953, !109}
!8125 = distinct !DISubprogram(name: "sg_page", scope: !4992, file: !4992, line: 168, type: !8126, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8128)
!8126 = !DISubroutineType(types: !8127)
!8127 = !{!2230, !4995}
!8128 = !{!8129}
!8129 = !DILocalVariable(name: "sg", arg: 1, scope: !8125, file: !4992, line: 168, type: !4995)
!8130 = !DILocation(line: 168, column: 56, scope: !8125)
!8131 = !DILocation(line: 173, column: 26, scope: !8125)
!8132 = !DILocation(line: 173, column: 31, scope: !8125)
!8133 = !DILocation(line: 173, column: 41, scope: !8125)
!8134 = !DILocation(line: 173, column: 9, scope: !8125)
!8135 = !DILocation(line: 173, column: 2, scope: !8125)
