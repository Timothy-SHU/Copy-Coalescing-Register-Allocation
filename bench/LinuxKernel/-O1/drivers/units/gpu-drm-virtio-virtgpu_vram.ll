; ModuleID = 'drivers/gpu/drm/virtio/virtgpu_vram.c'
source_filename = "drivers/gpu/drm/virtio/virtgpu_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.22, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.24, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.22 = type { i32 }
%union.anon.24 = type { i64, [88 x i8] }
%struct.static_call_key = type { ptr, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.virtio_gpu_object = type { %struct.drm_gem_shmem_object, i32, i8, i8, i8, i8, i32, i32, i32, %struct.uuid_t }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, ptr, i32, i32, %struct.list_head, ptr, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.15, ptr, %struct.list_head, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.15 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.16, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.16 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.virtio_gpu_device = type { ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.17 }
%union.anon.17 = type { %struct.hdr_static_metadata }
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
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.virtio_gpu_object_vram = type { %struct.virtio_gpu_object, i32, i32, %struct.drm_mm_node }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.virtio_gpu_object_params = type { i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pgprot = type { i64 }
%struct.vm_area_struct = type { %union.anon.18, ptr, %struct.pgprot, %union.anon.20, i32, ptr, i8, %struct.anon.21, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i64, i64 }
%union.anon.20 = type { i64 }
%struct.anon.21 = type { %struct.rb_node, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.23 = type { i8, i8, i8, i8 }
%struct.vma_lock = type { %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_struct = type { %struct.anon.26, [0 x i64] }
%struct.anon.26 = type { %struct.anon.27, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.27 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.28, i32, ptr }
%union.anon.28 = type { %struct.spinlock }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }

@virtio_gpu_vram_funcs = internal constant %struct.drm_gem_object_funcs { ptr @virtio_gpu_vram_free, ptr @virtio_gpu_gem_object_open, ptr @virtio_gpu_gem_object_close, ptr null, ptr @virtgpu_gem_prime_export, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtio_gpu_vram_mmap, ptr null, ptr null, ptr null }, align 8, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6464
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1, !dbg !6469
@virtio_gpu_vram_vm_ops = internal constant %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6478
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !6474
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @virtio_gpu_vram_map_dma_buf(ptr noundef %bo, ptr noundef %dev, i32 noundef %dir) #0 align 16 !dbg !6489 {
entry:
  %retval = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  %vgdev = alloca ptr, align 8
  %vram = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %sgt = alloca ptr, align 8
  %addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6493, metadata !DIExpression()), !dbg !6741
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6494, metadata !DIExpression()), !dbg !6742
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6495, metadata !DIExpression()), !dbg !6743
  call void @llvm.lifetime.start.p0(i64 8, ptr %vgdev) #15, !dbg !6744
  call void @llvm.dbg.declare(metadata ptr %vgdev, metadata !6496, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6746
  %base = getelementptr inbounds %struct.virtio_gpu_object, ptr %0, i32 0, i32 0, !dbg !6747
  %base1 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base, i32 0, i32 0, !dbg !6748
  %dev2 = getelementptr inbounds %struct.drm_gem_object, ptr %base1, i32 0, i32 2, !dbg !6749
  %1 = load ptr, ptr %dev2, align 8, !dbg !6749
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5, !dbg !6750
  %2 = load ptr, ptr %dev_private, align 8, !dbg !6750
  store ptr %2, ptr %vgdev, align 8, !dbg !6745
  call void @llvm.lifetime.start.p0(i64 8, ptr %vram) #15, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %vram, metadata !6734, metadata !DIExpression()), !dbg !6752
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6735, metadata !DIExpression()), !dbg !6753
  %3 = load ptr, ptr %bo.addr, align 8, !dbg !6753
  store ptr %3, ptr %__mptr, align 8, !dbg !6753
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6753
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !6753
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6754
  %5 = load ptr, ptr %tmp, align 8, !dbg !6753
  store ptr %5, ptr %vram, align 8, !dbg !6752
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgt) #15, !dbg !6755
  call void @llvm.dbg.declare(metadata ptr %sgt, metadata !6737, metadata !DIExpression()), !dbg !6756
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #15, !dbg !6757
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6738, metadata !DIExpression()), !dbg !6758
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6759
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6739, metadata !DIExpression()), !dbg !6760
  %call = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #16, !dbg !6761
  store ptr %call, ptr %sgt, align 8, !dbg !6762
  %6 = load ptr, ptr %sgt, align 8, !dbg !6763
  %tobool = icmp ne ptr %6, null, !dbg !6763
  br i1 %tobool, label %if.end, label %if.then, !dbg !6765

if.then:                                          ; preds = %entry
  %call3 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !6766
  store ptr %call3, ptr %retval, align 8, !dbg !6767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6767

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %bo.addr, align 8, !dbg !6768
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object, ptr %7, i32 0, i32 7, !dbg !6770
  %8 = load i32, ptr %blob_flags, align 4, !dbg !6770
  %and = and i32 %8, 1, !dbg !6771
  %tobool4 = icmp ne i32 %and, 0, !dbg !6771
  br i1 %tobool4, label %if.end10, label %if.then5, !dbg !6772

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6773
  %call6 = call zeroext i1 @is_virtio_device(ptr noundef %9) #17, !dbg !6776
  br i1 %call6, label %lor.lhs.false, label %if.then8, !dbg !6777

lor.lhs.false:                                    ; preds = %if.then5
  %10 = load ptr, ptr %vgdev, align 8, !dbg !6778
  %has_resource_assign_uuid = getelementptr inbounds %struct.virtio_gpu_device, ptr %10, i32 0, i32 17, !dbg !6779
  %11 = load i8, ptr %has_resource_assign_uuid, align 1, !dbg !6779, !range !6780, !noundef !1124
  %tobool7 = trunc i8 %11 to i1, !dbg !6779
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6781

if.then8:                                         ; preds = %lor.lhs.false, %if.then5
  store i32 -5, ptr %ret, align 4, !dbg !6782
  br label %out, !dbg !6784

if.end9:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %sgt, align 8, !dbg !6785
  store ptr %12, ptr %retval, align 8, !dbg !6786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6786

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %sgt, align 8, !dbg !6787
  %call11 = call i32 @sg_alloc_table(ptr noundef %13, i32 noundef 1, i32 noundef 3264) #17, !dbg !6788
  store i32 %call11, ptr %ret, align 4, !dbg !6789
  %14 = load i32, ptr %ret, align 4, !dbg !6790
  %tobool12 = icmp ne i32 %14, 0, !dbg !6790
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6792

if.then13:                                        ; preds = %if.end10
  br label %out, !dbg !6793

if.end14:                                         ; preds = %if.end10
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6794
  %16 = load ptr, ptr %vram, align 8, !dbg !6795
  %vram_node = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %16, i32 0, i32 3, !dbg !6796
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %vram_node, i32 0, i32 1, !dbg !6797
  %17 = load i64, ptr %start, align 8, !dbg !6797
  %18 = load ptr, ptr %vram, align 8, !dbg !6798
  %vram_node15 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %18, i32 0, i32 3, !dbg !6799
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %vram_node15, i32 0, i32 2, !dbg !6800
  %19 = load i64, ptr %size, align 8, !dbg !6800
  %20 = load i32, ptr %dir.addr, align 4, !dbg !6801
  %call16 = call i64 @dma_map_resource(ptr noundef %15, i64 noundef %17, i64 noundef %19, i32 noundef %20, i64 noundef 32) #17, !dbg !6802
  store i64 %call16, ptr %addr, align 8, !dbg !6803
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !6804
  %22 = load i64, ptr %addr, align 8, !dbg !6805
  %call17 = call i32 @dma_mapping_error(ptr noundef %21, i64 noundef %22) #17, !dbg !6806
  store i32 %call17, ptr %ret, align 4, !dbg !6807
  %23 = load i32, ptr %ret, align 4, !dbg !6808
  %tobool18 = icmp ne i32 %23, 0, !dbg !6808
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !6810

if.then19:                                        ; preds = %if.end14
  br label %out, !dbg !6811

if.end20:                                         ; preds = %if.end14
  %24 = load ptr, ptr %sgt, align 8, !dbg !6812
  %sgl = getelementptr inbounds %struct.sg_table, ptr %24, i32 0, i32 0, !dbg !6813
  %25 = load ptr, ptr %sgl, align 8, !dbg !6813
  %26 = load ptr, ptr %vram, align 8, !dbg !6814
  %vram_node21 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %26, i32 0, i32 3, !dbg !6815
  %size22 = getelementptr inbounds %struct.drm_mm_node, ptr %vram_node21, i32 0, i32 2, !dbg !6816
  %27 = load i64, ptr %size22, align 8, !dbg !6816
  %conv = trunc i64 %27 to i32, !dbg !6814
  call void @sg_set_page(ptr noundef %25, ptr noundef null, i32 noundef %conv, i32 noundef 0) #17, !dbg !6817
  %28 = load i64, ptr %addr, align 8, !dbg !6818
  %29 = load ptr, ptr %sgt, align 8, !dbg !6819
  %sgl23 = getelementptr inbounds %struct.sg_table, ptr %29, i32 0, i32 0, !dbg !6819
  %30 = load ptr, ptr %sgl23, align 8, !dbg !6819
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 3, !dbg !6819
  store i64 %28, ptr %dma_address, align 8, !dbg !6820
  %31 = load ptr, ptr %vram, align 8, !dbg !6821
  %vram_node24 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %31, i32 0, i32 3, !dbg !6822
  %size25 = getelementptr inbounds %struct.drm_mm_node, ptr %vram_node24, i32 0, i32 2, !dbg !6823
  %32 = load i64, ptr %size25, align 8, !dbg !6823
  %conv26 = trunc i64 %32 to i32, !dbg !6821
  %33 = load ptr, ptr %sgt, align 8, !dbg !6824
  %sgl27 = getelementptr inbounds %struct.sg_table, ptr %33, i32 0, i32 0, !dbg !6824
  %34 = load ptr, ptr %sgl27, align 8, !dbg !6824
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 4, !dbg !6824
  store i32 %conv26, ptr %dma_length, align 8, !dbg !6825
  %35 = load ptr, ptr %sgt, align 8, !dbg !6826
  store ptr %35, ptr %retval, align 8, !dbg !6827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6827

out:                                              ; preds = %if.then19, %if.then13, %if.then8
  call void @llvm.dbg.label(metadata !6740), !dbg !6828
  %36 = load ptr, ptr %sgt, align 8, !dbg !6829
  call void @sg_free_table(ptr noundef %36) #17, !dbg !6830
  %37 = load ptr, ptr %sgt, align 8, !dbg !6831
  call void @kfree(ptr noundef %37) #17, !dbg !6832
  %38 = load i32, ptr %ret, align 4, !dbg !6833
  %conv28 = sext i32 %38 to i64, !dbg !6833
  %call29 = call ptr @ERR_PTR(i64 noundef %conv28) #17, !dbg !6834
  store ptr %call29, ptr %retval, align 8, !dbg !6835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6835

cleanup:                                          ; preds = %out, %if.end20, %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6836
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #15, !dbg !6836
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgt) #15, !dbg !6836
  call void @llvm.lifetime.end.p0(i64 8, ptr %vram) #15, !dbg !6836
  call void @llvm.lifetime.end.p0(i64 8, ptr %vgdev) #15, !dbg !6836
  %39 = load ptr, ptr %retval, align 8, !dbg !6836
  ret ptr %39, !dbg !6836
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !6837 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6841, metadata !DIExpression()), !dbg !6843
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6842, metadata !DIExpression()), !dbg !6844
  %0 = load i64, ptr %size.addr, align 8, !dbg !6845
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6846
  %or = or i32 %1, 256, !dbg !6847
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !6848
  ret ptr %call, !dbg !6849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6850 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6855, metadata !DIExpression()), !dbg !6856
  %0 = load i64, ptr %error.addr, align 8, !dbg !6857
  %1 = inttoptr i64 %0 to ptr, !dbg !6858
  ret ptr %1, !dbg !6859
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6860 dso_local zeroext i1 @is_virtio_device(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6863 dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6866 dso_local i64 @dma_map_resource(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_mapping_error(ptr noundef %dev, i64 noundef %dma_addr) #4 align 16 !dbg !6870 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6874, metadata !DIExpression()), !dbg !6876
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !6875, metadata !DIExpression()), !dbg !6877
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6878
  %1 = load i64, ptr %dma_addr.addr, align 8, !dbg !6879
  call void @debug_dma_mapping_error(ptr noundef %0, i64 noundef %1) #17, !dbg !6880
  %2 = load i64, ptr %dma_addr.addr, align 8, !dbg !6881
  %cmp = icmp eq i64 %2, -1, !dbg !6881
  %lnot = xor i1 %cmp, true, !dbg !6881
  %lnot1 = xor i1 %lnot, true, !dbg !6881
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6881
  %conv = sext i32 %lnot.ext to i64, !dbg !6881
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6881
  %tobool = icmp ne i64 %expval, 0, !dbg !6881
  br i1 %tobool, label %if.then, label %if.end, !dbg !6883

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6884
  br label %return, !dbg !6884

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6885
  br label %return, !dbg !6885

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6886
  ret i32 %3, !dbg !6886
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_set_page(ptr noundef %sg, ptr noundef %page, i32 noundef %len, i32 noundef %offset) #4 align 16 !dbg !6887 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !6891, metadata !DIExpression()), !dbg !6895
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6892, metadata !DIExpression()), !dbg !6896
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6893, metadata !DIExpression()), !dbg !6897
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6894, metadata !DIExpression()), !dbg !6898
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !6899
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6900
  call void @sg_assign_page(ptr noundef %0, ptr noundef %1) #17, !dbg !6901
  %2 = load i32, ptr %offset.addr, align 4, !dbg !6902
  %3 = load ptr, ptr %sg.addr, align 8, !dbg !6903
  %offset1 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1, !dbg !6904
  store i32 %2, ptr %offset1, align 8, !dbg !6905
  %4 = load i32, ptr %len.addr, align 4, !dbg !6906
  %5 = load ptr, ptr %sg.addr, align 8, !dbg !6907
  %length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2, !dbg !6908
  store i32 %4, ptr %length, align 4, !dbg !6909
  ret void, !dbg !6910
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6911 dso_local void @sg_free_table(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6914 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @virtio_gpu_vram_unmap_dma_buf(ptr noundef %dev, ptr noundef %sgt, i32 noundef %dir) #0 align 16 !dbg !6917 {
entry:
  %dev.addr = alloca ptr, align 8
  %sgt.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6921, metadata !DIExpression()), !dbg !6924
  store ptr %sgt, ptr %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgt.addr, metadata !6922, metadata !DIExpression()), !dbg !6925
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6923, metadata !DIExpression()), !dbg !6926
  %0 = load ptr, ptr %sgt.addr, align 8, !dbg !6927
  %nents = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1, !dbg !6929
  %1 = load i32, ptr %nents, align 8, !dbg !6929
  %tobool = icmp ne i32 %1, 0, !dbg !6927
  br i1 %tobool, label %if.then, label %if.end, !dbg !6930

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6931
  %3 = load ptr, ptr %sgt.addr, align 8, !dbg !6933
  %sgl = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 0, !dbg !6933
  %4 = load ptr, ptr %sgl, align 8, !dbg !6933
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3, !dbg !6933
  %5 = load i64, ptr %dma_address, align 8, !dbg !6933
  %6 = load ptr, ptr %sgt.addr, align 8, !dbg !6934
  %sgl1 = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 0, !dbg !6934
  %7 = load ptr, ptr %sgl1, align 8, !dbg !6934
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4, !dbg !6934
  %8 = load i32, ptr %dma_length, align 8, !dbg !6934
  %conv = zext i32 %8 to i64, !dbg !6934
  %9 = load i32, ptr %dir.addr, align 4, !dbg !6935
  call void @dma_unmap_resource(ptr noundef %2, i64 noundef %5, i64 noundef %conv, i32 noundef %9, i64 noundef 32) #17, !dbg !6936
  br label %if.end, !dbg !6937

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %sgt.addr, align 8, !dbg !6938
  call void @sg_free_table(ptr noundef %10) #17, !dbg !6939
  %11 = load ptr, ptr %sgt.addr, align 8, !dbg !6940
  call void @kfree(ptr noundef %11) #17, !dbg !6941
  ret void, !dbg !6942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6943 dso_local void @dma_unmap_resource(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @virtio_gpu_is_vram(ptr noundef %bo) #0 align 16 !dbg !6946 {
entry:
  %bo.addr = alloca ptr, align 8
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6950, metadata !DIExpression()), !dbg !6951
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !6952
  %base = getelementptr inbounds %struct.virtio_gpu_object, ptr %0, i32 0, i32 0, !dbg !6953
  %base1 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base, i32 0, i32 0, !dbg !6954
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %base1, i32 0, i32 12, !dbg !6955
  %1 = load ptr, ptr %funcs, align 8, !dbg !6955
  %cmp = icmp eq ptr %1, @virtio_gpu_vram_funcs, !dbg !6956
  ret i1 %cmp, !dbg !6957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @virtio_gpu_vram_create(ptr noundef %vgdev, ptr noundef %params, ptr noundef %bo_ptr) #0 align 16 !dbg !6958 {
entry:
  %retval = alloca i32, align 4
  %vgdev.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %bo_ptr.addr = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %vram = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vgdev, ptr %vgdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vgdev.addr, metadata !6984, metadata !DIExpression()), !dbg !6990
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !6985, metadata !DIExpression()), !dbg !6991
  store ptr %bo_ptr, ptr %bo_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo_ptr.addr, metadata !6986, metadata !DIExpression()), !dbg !6992
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !6993
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6987, metadata !DIExpression()), !dbg !6994
  call void @llvm.lifetime.start.p0(i64 8, ptr %vram) #15, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %vram, metadata !6988, metadata !DIExpression()), !dbg !6996
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6997
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6989, metadata !DIExpression()), !dbg !6998
  %call = call noalias ptr @kzalloc(i64 noundef 624, i32 noundef 3264) #16, !dbg !6999
  store ptr %call, ptr %vram, align 8, !dbg !7000
  %0 = load ptr, ptr %vram, align 8, !dbg !7001
  %tobool = icmp ne ptr %0, null, !dbg !7001
  br i1 %tobool, label %if.end, label %if.then, !dbg !7003

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !7004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7004

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vram, align 8, !dbg !7005
  %base = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %1, i32 0, i32 0, !dbg !7006
  %base1 = getelementptr inbounds %struct.virtio_gpu_object, ptr %base, i32 0, i32 0, !dbg !7007
  %base2 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base1, i32 0, i32 0, !dbg !7008
  store ptr %base2, ptr %obj, align 8, !dbg !7009
  %2 = load ptr, ptr %obj, align 8, !dbg !7010
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %2, i32 0, i32 12, !dbg !7011
  store ptr @virtio_gpu_vram_funcs, ptr %funcs, align 8, !dbg !7012
  %3 = load ptr, ptr %params.addr, align 8, !dbg !7013
  %size = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %3, i32 0, i32 0, !dbg !7013
  %4 = load i64, ptr %size, align 8, !dbg !7013
  %add = add i64 %4, 4095, !dbg !7013
  %and = and i64 %add, -4096, !dbg !7013
  %5 = load ptr, ptr %params.addr, align 8, !dbg !7014
  %size3 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %5, i32 0, i32 0, !dbg !7015
  store i64 %and, ptr %size3, align 8, !dbg !7016
  %6 = load ptr, ptr %vgdev.addr, align 8, !dbg !7017
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %6, i32 0, i32 0, !dbg !7018
  %7 = load ptr, ptr %ddev, align 8, !dbg !7018
  %8 = load ptr, ptr %obj, align 8, !dbg !7019
  %9 = load ptr, ptr %params.addr, align 8, !dbg !7020
  %size4 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %9, i32 0, i32 0, !dbg !7021
  %10 = load i64, ptr %size4, align 8, !dbg !7021
  call void @drm_gem_private_object_init(ptr noundef %7, ptr noundef %8, i64 noundef %10) #17, !dbg !7022
  %11 = load ptr, ptr %obj, align 8, !dbg !7023
  %call5 = call i32 @drm_gem_create_mmap_offset(ptr noundef %11) #17, !dbg !7024
  store i32 %call5, ptr %ret, align 4, !dbg !7025
  %12 = load i32, ptr %ret, align 4, !dbg !7026
  %tobool6 = icmp ne i32 %12, 0, !dbg !7026
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !7028

if.then7:                                         ; preds = %if.end
  %13 = load ptr, ptr %vram, align 8, !dbg !7029
  call void @kfree(ptr noundef %13) #17, !dbg !7031
  %14 = load i32, ptr %ret, align 4, !dbg !7032
  store i32 %14, ptr %retval, align 4, !dbg !7033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7033

if.end8:                                          ; preds = %if.end
  %15 = load ptr, ptr %vgdev.addr, align 8, !dbg !7034
  %16 = load ptr, ptr %vram, align 8, !dbg !7035
  %base9 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %16, i32 0, i32 0, !dbg !7036
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %base9, i32 0, i32 1, !dbg !7037
  %call10 = call i32 @virtio_gpu_resource_id_get(ptr noundef %15, ptr noundef %hw_res_handle) #17, !dbg !7038
  store i32 %call10, ptr %ret, align 4, !dbg !7039
  %17 = load i32, ptr %ret, align 4, !dbg !7040
  %tobool11 = icmp ne i32 %17, 0, !dbg !7040
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !7042

if.then12:                                        ; preds = %if.end8
  %18 = load ptr, ptr %vram, align 8, !dbg !7043
  call void @kfree(ptr noundef %18) #17, !dbg !7045
  %19 = load i32, ptr %ret, align 4, !dbg !7046
  store i32 %19, ptr %retval, align 4, !dbg !7047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7047

if.end13:                                         ; preds = %if.end8
  %20 = load ptr, ptr %vgdev.addr, align 8, !dbg !7048
  %21 = load ptr, ptr %vram, align 8, !dbg !7049
  %base14 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %21, i32 0, i32 0, !dbg !7050
  %22 = load ptr, ptr %params.addr, align 8, !dbg !7051
  call void @virtio_gpu_cmd_resource_create_blob(ptr noundef %20, ptr noundef %base14, ptr noundef %22, ptr noundef null, i32 noundef 0) #17, !dbg !7052
  %23 = load ptr, ptr %params.addr, align 8, !dbg !7053
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %23, i32 0, i32 16, !dbg !7055
  %24 = load i32, ptr %blob_flags, align 4, !dbg !7055
  %and15 = and i32 %24, 1, !dbg !7056
  %tobool16 = icmp ne i32 %and15, 0, !dbg !7056
  br i1 %tobool16, label %if.then17, label %if.end23, !dbg !7057

if.then17:                                        ; preds = %if.end13
  %25 = load ptr, ptr %vram, align 8, !dbg !7058
  %base18 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %25, i32 0, i32 0, !dbg !7060
  %call19 = call i32 @virtio_gpu_vram_map(ptr noundef %base18) #17, !dbg !7061
  store i32 %call19, ptr %ret, align 4, !dbg !7062
  %26 = load i32, ptr %ret, align 4, !dbg !7063
  %tobool20 = icmp ne i32 %26, 0, !dbg !7063
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !7065

if.then21:                                        ; preds = %if.then17
  %27 = load ptr, ptr %obj, align 8, !dbg !7066
  call void @virtio_gpu_vram_free(ptr noundef %27) #17, !dbg !7068
  %28 = load i32, ptr %ret, align 4, !dbg !7069
  store i32 %28, ptr %retval, align 4, !dbg !7070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7070

if.end22:                                         ; preds = %if.then17
  br label %if.end23, !dbg !7071

if.end23:                                         ; preds = %if.end22, %if.end13
  %29 = load ptr, ptr %vram, align 8, !dbg !7072
  %base24 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %29, i32 0, i32 0, !dbg !7073
  %30 = load ptr, ptr %bo_ptr.addr, align 8, !dbg !7074
  store ptr %base24, ptr %30, align 8, !dbg !7075
  store i32 0, ptr %retval, align 4, !dbg !7076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7076

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7077
  call void @llvm.lifetime.end.p0(i64 8, ptr %vram) #15, !dbg !7077
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !7077
  %31 = load i32, ptr %retval, align 4, !dbg !7077
  ret i32 %31, !dbg !7077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7078 dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7081 dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7082 dso_local i32 @virtio_gpu_resource_id_get(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7085 dso_local void @virtio_gpu_cmd_resource_create_blob(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_gpu_vram_map(ptr noundef %bo) #0 align 16 !dbg !7094 {
entry:
  %retval = alloca i32, align 4
  %bo.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %offset = alloca i64, align 8
  %objs = alloca ptr, align 8
  %vgdev = alloca ptr, align 8
  %vram = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !7098, metadata !DIExpression()), !dbg !7116
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !7117
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7099, metadata !DIExpression()), !dbg !7118
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #15, !dbg !7119
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !7100, metadata !DIExpression()), !dbg !7120
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !7121
  call void @llvm.dbg.declare(metadata ptr %objs, metadata !7101, metadata !DIExpression()), !dbg !7122
  call void @llvm.lifetime.start.p0(i64 8, ptr %vgdev) #15, !dbg !7123
  call void @llvm.dbg.declare(metadata ptr %vgdev, metadata !7111, metadata !DIExpression()), !dbg !7124
  %0 = load ptr, ptr %bo.addr, align 8, !dbg !7125
  %base = getelementptr inbounds %struct.virtio_gpu_object, ptr %0, i32 0, i32 0, !dbg !7126
  %base1 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base, i32 0, i32 0, !dbg !7127
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %base1, i32 0, i32 2, !dbg !7128
  %1 = load ptr, ptr %dev, align 8, !dbg !7128
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5, !dbg !7129
  %2 = load ptr, ptr %dev_private, align 8, !dbg !7129
  store ptr %2, ptr %vgdev, align 8, !dbg !7124
  call void @llvm.lifetime.start.p0(i64 8, ptr %vram) #15, !dbg !7130
  call void @llvm.dbg.declare(metadata ptr %vram, metadata !7112, metadata !DIExpression()), !dbg !7131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7132
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7113, metadata !DIExpression()), !dbg !7132
  %3 = load ptr, ptr %bo.addr, align 8, !dbg !7132
  store ptr %3, ptr %__mptr, align 8, !dbg !7132
  %4 = load ptr, ptr %__mptr, align 8, !dbg !7132
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !7132
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7133
  %5 = load ptr, ptr %tmp, align 8, !dbg !7132
  store ptr %5, ptr %vram, align 8, !dbg !7131
  %6 = load ptr, ptr %vgdev, align 8, !dbg !7134
  %has_host_visible = getelementptr inbounds %struct.virtio_gpu_device, ptr %6, i32 0, i32 19, !dbg !7136
  %7 = load i8, ptr %has_host_visible, align 1, !dbg !7136, !range !6780, !noundef !1124
  %tobool = trunc i8 %7 to i1, !dbg !7136
  br i1 %tobool, label %if.end, label %if.then, !dbg !7137

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !7138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7138

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %vgdev, align 8, !dbg !7139
  %host_visible_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %8, i32 0, i32 32, !dbg !7140
  call void @spin_lock(ptr noundef %host_visible_lock) #17, !dbg !7141
  %9 = load ptr, ptr %vgdev, align 8, !dbg !7142
  %host_visible_mm = getelementptr inbounds %struct.virtio_gpu_device, ptr %9, i32 0, i32 22, !dbg !7143
  %10 = load ptr, ptr %vram, align 8, !dbg !7144
  %vram_node = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %10, i32 0, i32 3, !dbg !7145
  %11 = load ptr, ptr %bo.addr, align 8, !dbg !7146
  %base2 = getelementptr inbounds %struct.virtio_gpu_object, ptr %11, i32 0, i32 0, !dbg !7147
  %base3 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base2, i32 0, i32 0, !dbg !7148
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %base3, i32 0, i32 5, !dbg !7149
  %12 = load i64, ptr %size, align 8, !dbg !7149
  %call = call i32 @drm_mm_insert_node(ptr noundef %host_visible_mm, ptr noundef %vram_node, i64 noundef %12) #17, !dbg !7150
  store i32 %call, ptr %ret, align 4, !dbg !7151
  %13 = load ptr, ptr %vgdev, align 8, !dbg !7152
  %host_visible_lock4 = getelementptr inbounds %struct.virtio_gpu_device, ptr %13, i32 0, i32 32, !dbg !7153
  call void @spin_unlock(ptr noundef %host_visible_lock4) #17, !dbg !7154
  %14 = load i32, ptr %ret, align 4, !dbg !7155
  %tobool5 = icmp ne i32 %14, 0, !dbg !7155
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !7157

if.then6:                                         ; preds = %if.end
  %15 = load i32, ptr %ret, align 4, !dbg !7158
  store i32 %15, ptr %retval, align 4, !dbg !7159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7159

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @virtio_gpu_array_alloc(i32 noundef 1) #17, !dbg !7160
  store ptr %call8, ptr %objs, align 8, !dbg !7161
  %16 = load ptr, ptr %objs, align 8, !dbg !7162
  %tobool9 = icmp ne ptr %16, null, !dbg !7162
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !7164

if.then10:                                        ; preds = %if.end7
  store i32 -12, ptr %ret, align 4, !dbg !7165
  br label %err_remove_node, !dbg !7167

if.end11:                                         ; preds = %if.end7
  %17 = load ptr, ptr %objs, align 8, !dbg !7168
  %18 = load ptr, ptr %bo.addr, align 8, !dbg !7169
  %base12 = getelementptr inbounds %struct.virtio_gpu_object, ptr %18, i32 0, i32 0, !dbg !7170
  %base13 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %base12, i32 0, i32 0, !dbg !7171
  call void @virtio_gpu_array_add_obj(ptr noundef %17, ptr noundef %base13) #17, !dbg !7172
  %19 = load ptr, ptr %vram, align 8, !dbg !7173
  %vram_node14 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %19, i32 0, i32 3, !dbg !7174
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %vram_node14, i32 0, i32 1, !dbg !7175
  %20 = load i64, ptr %start, align 8, !dbg !7175
  %21 = load ptr, ptr %vgdev, align 8, !dbg !7176
  %host_visible_region = getelementptr inbounds %struct.virtio_gpu_device, ptr %21, i32 0, i32 21, !dbg !7177
  %addr = getelementptr inbounds %struct.virtio_shm_region, ptr %host_visible_region, i32 0, i32 0, !dbg !7178
  %22 = load i64, ptr %addr, align 8, !dbg !7178
  %sub = sub i64 %20, %22, !dbg !7179
  store i64 %sub, ptr %offset, align 8, !dbg !7180
  %23 = load ptr, ptr %vgdev, align 8, !dbg !7181
  %24 = load ptr, ptr %objs, align 8, !dbg !7182
  %25 = load i64, ptr %offset, align 8, !dbg !7183
  %call15 = call i32 @virtio_gpu_cmd_map(ptr noundef %23, ptr noundef %24, i64 noundef %25) #17, !dbg !7184
  store i32 %call15, ptr %ret, align 4, !dbg !7185
  %26 = load i32, ptr %ret, align 4, !dbg !7186
  %tobool16 = icmp ne i32 %26, 0, !dbg !7186
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !7188

if.then17:                                        ; preds = %if.end11
  %27 = load ptr, ptr %objs, align 8, !dbg !7189
  call void @virtio_gpu_array_put_free(ptr noundef %27) #17, !dbg !7191
  br label %err_remove_node, !dbg !7192

if.end18:                                         ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !7193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7193

err_remove_node:                                  ; preds = %if.then17, %if.then10
  call void @llvm.dbg.label(metadata !7115), !dbg !7194
  %28 = load ptr, ptr %vgdev, align 8, !dbg !7195
  %host_visible_lock19 = getelementptr inbounds %struct.virtio_gpu_device, ptr %28, i32 0, i32 32, !dbg !7196
  call void @spin_lock(ptr noundef %host_visible_lock19) #17, !dbg !7197
  %29 = load ptr, ptr %vram, align 8, !dbg !7198
  %vram_node20 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %29, i32 0, i32 3, !dbg !7199
  call void @drm_mm_remove_node(ptr noundef %vram_node20) #17, !dbg !7200
  %30 = load ptr, ptr %vgdev, align 8, !dbg !7201
  %host_visible_lock21 = getelementptr inbounds %struct.virtio_gpu_device, ptr %30, i32 0, i32 32, !dbg !7202
  call void @spin_unlock(ptr noundef %host_visible_lock21) #17, !dbg !7203
  %31 = load i32, ptr %ret, align 4, !dbg !7204
  store i32 %31, ptr %retval, align 4, !dbg !7205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7205

cleanup:                                          ; preds = %err_remove_node, %if.end18, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vram) #15, !dbg !7206
  call void @llvm.lifetime.end.p0(i64 8, ptr %vgdev) #15, !dbg !7206
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !7206
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #15, !dbg !7206
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7206
  %32 = load i32, ptr %retval, align 4, !dbg !7206
  ret i32 %32, !dbg !7206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_gpu_vram_free(ptr noundef %obj) #0 align 16 !dbg !7207 {
entry:
  %obj.addr = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %vgdev = alloca ptr, align 8
  %vram = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %unmap = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7209, metadata !DIExpression()), !dbg !7218
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #15, !dbg !7219
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !7210, metadata !DIExpression()), !dbg !7220
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7221
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7211, metadata !DIExpression()), !dbg !7221
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7221
  store ptr %0, ptr %__mptr, align 8, !dbg !7221
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7221
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7221
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7221
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7222
  %2 = load ptr, ptr %tmp, align 8, !dbg !7221
  store ptr %2, ptr %bo, align 8, !dbg !7220
  call void @llvm.lifetime.start.p0(i64 8, ptr %vgdev) #15, !dbg !7223
  call void @llvm.dbg.declare(metadata ptr %vgdev, metadata !7213, metadata !DIExpression()), !dbg !7224
  %3 = load ptr, ptr %obj.addr, align 8, !dbg !7225
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2, !dbg !7226
  %4 = load ptr, ptr %dev, align 8, !dbg !7226
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5, !dbg !7227
  %5 = load ptr, ptr %dev_private, align 8, !dbg !7227
  store ptr %5, ptr %vgdev, align 8, !dbg !7224
  call void @llvm.lifetime.start.p0(i64 8, ptr %vram) #15, !dbg !7228
  call void @llvm.dbg.declare(metadata ptr %vram, metadata !7214, metadata !DIExpression()), !dbg !7229
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !7230
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !7215, metadata !DIExpression()), !dbg !7230
  %6 = load ptr, ptr %bo, align 8, !dbg !7230
  store ptr %6, ptr %__mptr1, align 8, !dbg !7230
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !7230
  %add.ptr3 = getelementptr i8, ptr %7, i64 0, !dbg !7230
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !7230
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !7231
  %8 = load ptr, ptr %tmp2, align 8, !dbg !7230
  store ptr %8, ptr %vram, align 8, !dbg !7229
  call void @llvm.lifetime.start.p0(i64 1, ptr %unmap) #15, !dbg !7232
  call void @llvm.dbg.declare(metadata ptr %unmap, metadata !7217, metadata !DIExpression()), !dbg !7233
  %9 = load ptr, ptr %bo, align 8, !dbg !7234
  %created = getelementptr inbounds %struct.virtio_gpu_object, ptr %9, i32 0, i32 3, !dbg !7236
  %10 = load i8, ptr %created, align 1, !dbg !7236, !range !6780, !noundef !1124
  %tobool = trunc i8 %10 to i1, !dbg !7236
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7237

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %vgdev, align 8, !dbg !7238
  %host_visible_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %11, i32 0, i32 32, !dbg !7240
  call void @spin_lock(ptr noundef %host_visible_lock) #17, !dbg !7241
  %12 = load ptr, ptr %vram, align 8, !dbg !7242
  %vram_node = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %12, i32 0, i32 3, !dbg !7243
  %call = call zeroext i1 @drm_mm_node_allocated(ptr noundef %vram_node) #17, !dbg !7244
  %frombool = zext i1 %call to i8, !dbg !7245
  store i8 %frombool, ptr %unmap, align 1, !dbg !7245
  %13 = load ptr, ptr %vgdev, align 8, !dbg !7246
  %host_visible_lock4 = getelementptr inbounds %struct.virtio_gpu_device, ptr %13, i32 0, i32 32, !dbg !7247
  call void @spin_unlock(ptr noundef %host_visible_lock4) #17, !dbg !7248
  %14 = load i8, ptr %unmap, align 1, !dbg !7249, !range !6780, !noundef !1124
  %tobool5 = trunc i8 %14 to i1, !dbg !7249
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !7251

if.then6:                                         ; preds = %if.then
  %15 = load ptr, ptr %vgdev, align 8, !dbg !7252
  %16 = load ptr, ptr %bo, align 8, !dbg !7253
  call void @virtio_gpu_cmd_unmap(ptr noundef %15, ptr noundef %16) #17, !dbg !7254
  br label %if.end, !dbg !7254

if.end:                                           ; preds = %if.then6, %if.then
  %17 = load ptr, ptr %vgdev, align 8, !dbg !7255
  %18 = load ptr, ptr %bo, align 8, !dbg !7256
  call void @virtio_gpu_cmd_unref_resource(ptr noundef %17, ptr noundef %18) #17, !dbg !7257
  %19 = load ptr, ptr %vgdev, align 8, !dbg !7258
  call void @virtio_gpu_notify(ptr noundef %19) #17, !dbg !7259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7260

if.end7:                                          ; preds = %entry
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7261
  br label %cleanup, !dbg !7261

cleanup:                                          ; preds = %if.end7, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %unmap) #15, !dbg !7261
  call void @llvm.lifetime.end.p0(i64 8, ptr %vram) #15, !dbg !7261
  call void @llvm.lifetime.end.p0(i64 8, ptr %vgdev) #15, !dbg !7261
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #15, !dbg !7261
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7261

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !7262 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7264, metadata !DIExpression()), !dbg !7269
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7265, metadata !DIExpression()), !dbg !7270
  %0 = load i64, ptr %size.addr, align 8, !dbg !7271
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7272
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7273

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7274
  %tobool = icmp ne i64 %2, 0, !dbg !7274
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7275

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !7276
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7266, metadata !DIExpression()), !dbg !7277
  %3 = load i64, ptr %size.addr, align 8, !dbg !7278
  %cmp = icmp ugt i64 %3, 8192, !dbg !7280
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7281

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7282
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7283
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !7284
  store ptr %call, ptr %retval, align 8, !dbg !7285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7285

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7286
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !7286
  store i32 %call2, ptr %index, align 4, !dbg !7287
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7288
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7289
  %9 = ptrtoint ptr %8 to i64, !dbg !7289
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !7290
  %idxprom = zext i32 %call3 to i64, !dbg !7291
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7291
  %10 = load i32, ptr %index, align 4, !dbg !7292
  %idxprom4 = zext i32 %10 to i64, !dbg !7291
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7291
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7291
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7293
  %13 = load i64, ptr %size.addr, align 8, !dbg !7294
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !7295
  store ptr %call6, ptr %retval, align 8, !dbg !7296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7296

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !7297
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7298
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7299
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !7300
  store ptr %call8, ptr %retval, align 8, !dbg !7301
  br label %return, !dbg !7301

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7302
  ret ptr %16, !dbg !7302
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7303 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !7304 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7308, metadata !DIExpression()), !dbg !7310
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7309, metadata !DIExpression()), !dbg !7311
  %0 = load i64, ptr %size.addr, align 8, !dbg !7312
  %tobool = icmp ne i64 %0, 0, !dbg !7312
  br i1 %tobool, label %if.end, label %if.then, !dbg !7314

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7315
  br label %return, !dbg !7315

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7316
  %cmp = icmp ule i64 %1, 8, !dbg !7318
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7319

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7320
  br label %return, !dbg !7320

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7321
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7323
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7324

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7325
  %cmp4 = icmp ule i64 %3, 96, !dbg !7326
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7327

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7328
  br label %return, !dbg !7328

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7329
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7331
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7332

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7333
  %cmp9 = icmp ule i64 %5, 192, !dbg !7334
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7335

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7336
  br label %return, !dbg !7336

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7337
  %cmp12 = icmp ule i64 %6, 8, !dbg !7339
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7340

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7341
  br label %return, !dbg !7341

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7342
  %cmp15 = icmp ule i64 %7, 16, !dbg !7344
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7345

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7346
  br label %return, !dbg !7346

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7347
  %cmp18 = icmp ule i64 %8, 32, !dbg !7349
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7350

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7351
  br label %return, !dbg !7351

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7352
  %cmp21 = icmp ule i64 %9, 64, !dbg !7354
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7355

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7356
  br label %return, !dbg !7356

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7357
  %cmp24 = icmp ule i64 %10, 128, !dbg !7359
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7360

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7361
  br label %return, !dbg !7361

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7362
  %cmp27 = icmp ule i64 %11, 256, !dbg !7364
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7365

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7366
  br label %return, !dbg !7366

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7367
  %cmp30 = icmp ule i64 %12, 512, !dbg !7369
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7370

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7371
  br label %return, !dbg !7371

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7372
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7374
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7375

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7376
  br label %return, !dbg !7376

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7377
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7379
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7380

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7381
  br label %return, !dbg !7381

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7382
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7384
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7385

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7386
  br label %return, !dbg !7386

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7387
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7389
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7390

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7391
  br label %return, !dbg !7391

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7392
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7394
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7395

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7396
  br label %return, !dbg !7396

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7397
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7399
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7400

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7401
  br label %return, !dbg !7401

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7402
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7404
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7405

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7406
  br label %return, !dbg !7406

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7407
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7409
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7410

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7411
  br label %return, !dbg !7411

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7412
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7414
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7415

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7416
  br label %return, !dbg !7416

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7417
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7419
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7420

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7421
  br label %return, !dbg !7421

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7422
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7424
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7425

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7426
  br label %return, !dbg !7426

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7427
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7429
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7430

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7431
  br label %return, !dbg !7431

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7432, !range !6780, !noundef !1124
  %tobool69 = trunc i8 %25 to i1, !dbg !7432
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7434

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7435

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #19, !dbg !7436, !srcloc !7439
  unreachable, !dbg !7436

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7440

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7441

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7442

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7444

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7442

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #15, !dbg !7446, !srcloc !7448
  br label %do.end75, !dbg !7446

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7442

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7449
  br label %return, !dbg !7449

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7450
  ret i32 %26, !dbg !7450
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7451 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !7454 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7458, metadata !DIExpression()), !dbg !7460
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7459, metadata !DIExpression()), !dbg !7461
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7462
  %and = and i32 %0, 17, !dbg !7462
  %cmp = icmp eq i32 %and, 0, !dbg !7462
  %lnot = xor i1 %cmp, true, !dbg !7462
  %lnot1 = xor i1 %lnot, true, !dbg !7462
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7462
  %conv = sext i32 %lnot.ext to i64, !dbg !7462
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7462
  %tobool = icmp ne i64 %expval, 0, !dbg !7462
  br i1 %tobool, label %if.then, label %if.end, !dbg !7464

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7465
  br label %return, !dbg !7465

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7466
  %and2 = and i32 %1, 1, !dbg !7468
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7468
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7469

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7470
  br label %return, !dbg !7470

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7471
  br label %return, !dbg !7471

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7473
  ret i32 %2, !dbg !7473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7474 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7475 dso_local void @__compiletime_assert_206() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_dma_mapping_error(ptr noundef %dev, i64 noundef %dma_addr) #4 align 16 !dbg !7476 {
entry:
  %dev.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7480, metadata !DIExpression()), !dbg !7482
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !7481, metadata !DIExpression()), !dbg !7483
  ret void, !dbg !7484
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_assign_page(ptr noundef %sg, ptr noundef %page) #4 align 16 !dbg !7485 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %page_link = alloca i64, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !7489, metadata !DIExpression()), !dbg !7492
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7490, metadata !DIExpression()), !dbg !7493
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_link) #15, !dbg !7494
  call void @llvm.dbg.declare(metadata ptr %page_link, metadata !7491, metadata !DIExpression()), !dbg !7495
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !7496
  %page_link1 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !7497
  %1 = load i64, ptr %page_link1, align 8, !dbg !7497
  %and = and i64 %1, 3, !dbg !7498
  store i64 %and, ptr %page_link, align 8, !dbg !7495
  br label %do.body, !dbg !7499

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7500
  %3 = ptrtoint ptr %2 to i64, !dbg !7500
  %and2 = and i64 %3, 3, !dbg !7500
  %tobool = icmp ne i64 %and2, 0, !dbg !7500
  %lnot = xor i1 %tobool, true, !dbg !7500
  %lnot3 = xor i1 %lnot, true, !dbg !7500
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7500
  %conv = sext i32 %lnot.ext to i64, !dbg !7500
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7500
  %tobool4 = icmp ne i64 %expval, 0, !dbg !7500
  br i1 %tobool4, label %if.then, label %if.end, !dbg !7503

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !7500

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !7504

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !7506

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !7506

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !7504

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 115, i32 0, i64 12) #15, !dbg !7508, !srcloc !7510
  br label %do.cond8, !dbg !7508

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !7508

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !7504

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !7504

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !7504

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !7503

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !7503

do.end13:                                         ; preds = %do.cond12
  %4 = load i64, ptr %page_link, align 8, !dbg !7511
  %5 = load ptr, ptr %page.addr, align 8, !dbg !7512
  %6 = ptrtoint ptr %5 to i64, !dbg !7513
  %or = or i64 %4, %6, !dbg !7514
  %7 = load ptr, ptr %sg.addr, align 8, !dbg !7515
  %page_link14 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 0, !dbg !7516
  store i64 %or, ptr %page_link14, align 8, !dbg !7517
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_link) #15, !dbg !7518
  ret void, !dbg !7518
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @virtio_gpu_gem_object_open(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_gem_object_close(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @virtgpu_gem_prime_export(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_gpu_vram_mmap(ptr noundef %obj, ptr noundef %vma) #0 align 16 !dbg !7519 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %vgdev = alloca ptr, align 8
  %bo = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %vram = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %vm_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp21 = alloca %struct.pgprot, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %tmp30 = alloca %struct.pgprot, align 8
  %.compoundliteral41 = alloca %struct.pgprot, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !7521, metadata !DIExpression()), !dbg !7552
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7522, metadata !DIExpression()), !dbg !7553
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !7554
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7523, metadata !DIExpression()), !dbg !7555
  call void @llvm.lifetime.start.p0(i64 8, ptr %vgdev) #15, !dbg !7556
  call void @llvm.dbg.declare(metadata ptr %vgdev, metadata !7524, metadata !DIExpression()), !dbg !7557
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !7558
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2, !dbg !7559
  %1 = load ptr, ptr %dev, align 8, !dbg !7559
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5, !dbg !7560
  %2 = load ptr, ptr %dev_private, align 8, !dbg !7560
  store ptr %2, ptr %vgdev, align 8, !dbg !7557
  call void @llvm.lifetime.start.p0(i64 8, ptr %bo) #15, !dbg !7561
  call void @llvm.dbg.declare(metadata ptr %bo, metadata !7525, metadata !DIExpression()), !dbg !7562
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7563
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7526, metadata !DIExpression()), !dbg !7563
  %3 = load ptr, ptr %obj.addr, align 8, !dbg !7563
  store ptr %3, ptr %__mptr, align 8, !dbg !7563
  %4 = load ptr, ptr %__mptr, align 8, !dbg !7563
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !7563
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7564
  %5 = load ptr, ptr %tmp, align 8, !dbg !7563
  store ptr %5, ptr %bo, align 8, !dbg !7562
  call void @llvm.lifetime.start.p0(i64 8, ptr %vram) #15, !dbg !7565
  call void @llvm.dbg.declare(metadata ptr %vram, metadata !7528, metadata !DIExpression()), !dbg !7566
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !7567
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !7529, metadata !DIExpression()), !dbg !7567
  %6 = load ptr, ptr %bo, align 8, !dbg !7567
  store ptr %6, ptr %__mptr1, align 8, !dbg !7567
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !7567
  %add.ptr3 = getelementptr i8, ptr %7, i64 0, !dbg !7567
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !7567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !7568
  %8 = load ptr, ptr %tmp2, align 8, !dbg !7567
  store ptr %8, ptr %vram, align 8, !dbg !7566
  call void @llvm.lifetime.start.p0(i64 8, ptr %vm_size) #15, !dbg !7569
  call void @llvm.dbg.declare(metadata ptr %vm_size, metadata !7531, metadata !DIExpression()), !dbg !7570
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !7571
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 0, !dbg !7572
  %vm_end = getelementptr inbounds %struct.anon.19, ptr %10, i32 0, i32 1, !dbg !7572
  %11 = load i64, ptr %vm_end, align 8, !dbg !7572
  %12 = load ptr, ptr %vma.addr, align 8, !dbg !7573
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 0, !dbg !7574
  %vm_start = getelementptr inbounds %struct.anon.19, ptr %13, i32 0, i32 0, !dbg !7574
  %14 = load i64, ptr %vm_start, align 8, !dbg !7574
  %sub = sub i64 %11, %14, !dbg !7575
  store i64 %sub, ptr %vm_size, align 8, !dbg !7570
  %15 = load ptr, ptr %bo, align 8, !dbg !7576
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object, ptr %15, i32 0, i32 7, !dbg !7578
  %16 = load i32, ptr %blob_flags, align 4, !dbg !7578
  %and = and i32 %16, 1, !dbg !7579
  %tobool = icmp ne i32 %and, 0, !dbg !7579
  br i1 %tobool, label %if.end, label %if.then, !dbg !7580

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !7581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !7581

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !7582

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7583

do.body4:                                         ; preds = %do.body
  call void @might_resched() #17, !dbg !7584
  br label %do.cond, !dbg !7584

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !7584

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %vram, align 8, !dbg !7586
  %map_state = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %17, i32 0, i32 1, !dbg !7586
  %18 = load i32, ptr %map_state, align 8, !dbg !7586
  %cmp = icmp ne i32 %18, 0, !dbg !7586
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !7583

if.then5:                                         ; preds = %do.end
  br label %do.end14, !dbg !7586

if.end6:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #15, !dbg !7588
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !7532, metadata !DIExpression()), !dbg !7588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !7588
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7546, metadata !DIExpression()), !dbg !7588
  store i64 0, ptr %__ret, align 8, !dbg !7588
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !7588
  br label %for.cond, !dbg !7588

for.cond:                                         ; preds = %cleanup.cont, %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #15, !dbg !7589
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !7547, metadata !DIExpression()), !dbg !7589
  %19 = load ptr, ptr %vgdev, align 8, !dbg !7589
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %19, i32 0, i32 9, !dbg !7589
  %call = call i64 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef %__wq_entry, i32 noundef 2) #17, !dbg !7589
  store i64 %call, ptr %__int, align 8, !dbg !7589
  %20 = load ptr, ptr %vram, align 8, !dbg !7590
  %map_state7 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %20, i32 0, i32 1, !dbg !7590
  %21 = load i32, ptr %map_state7, align 8, !dbg !7590
  %cmp8 = icmp ne i32 %21, 0, !dbg !7590
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !7589

if.then9:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7590

if.end10:                                         ; preds = %for.cond
  call void @schedule() #17, !dbg !7589
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7592
  br label %cleanup, !dbg !7592

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #15, !dbg !7592
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !7592, !llvm.loop !7593

for.end:                                          ; preds = %cleanup
  %22 = load ptr, ptr %vgdev, align 8, !dbg !7588
  %resp_wq11 = getelementptr inbounds %struct.virtio_gpu_device, ptr %22, i32 0, i32 9, !dbg !7588
  call void @finish_wait(ptr noundef %resp_wq11, ptr noundef %__wq_entry) #17, !dbg !7588
  br label %__out, !dbg !7588

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !7551), !dbg !7588
  %23 = load i64, ptr %__ret, align 8, !dbg !7588
  store i64 %23, ptr %tmp12, align 8, !dbg !7588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !7583
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #15, !dbg !7583
  %24 = load i64, ptr %tmp12, align 8, !dbg !7588
  br label %do.cond13, !dbg !7583

do.cond13:                                        ; preds = %__out
  br label %do.end14, !dbg !7583

do.end14:                                         ; preds = %do.cond13, %if.then5
  %25 = load ptr, ptr %vram, align 8, !dbg !7596
  %map_state15 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %25, i32 0, i32 1, !dbg !7598
  %26 = load i32, ptr %map_state15, align 8, !dbg !7598
  %cmp16 = icmp ne i32 %26, 1, !dbg !7599
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !7600

if.then17:                                        ; preds = %do.end14
  store i32 -22, ptr %retval, align 4, !dbg !7601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !7601

if.end18:                                         ; preds = %do.end14
  %27 = load ptr, ptr %obj.addr, align 8, !dbg !7602
  %vma_node = getelementptr inbounds %struct.drm_gem_object, ptr %27, i32 0, i32 4, !dbg !7603
  %call19 = call i64 @drm_vma_node_start(ptr noundef %vma_node) #17, !dbg !7604
  %28 = load ptr, ptr %vma.addr, align 8, !dbg !7605
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %28, i32 0, i32 11, !dbg !7606
  %29 = load i64, ptr %vm_pgoff, align 8, !dbg !7607
  %sub20 = sub i64 %29, %call19, !dbg !7607
  store i64 %sub20, ptr %vm_pgoff, align 8, !dbg !7607
  %30 = load ptr, ptr %vma.addr, align 8, !dbg !7608
  call void @vm_flags_set(ptr noundef %30, i64 noundef 268697600) #17, !dbg !7609
  %31 = load ptr, ptr %vma.addr, align 8, !dbg !7610
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %31, i32 0, i32 2, !dbg !7611
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp21) #15, !dbg !7612
  %32 = load ptr, ptr %vma.addr, align 8, !dbg !7613
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %32, i32 0, i32 3, !dbg !7614
  %34 = load i64, ptr %33, align 8, !dbg !7614
  %call22 = call i64 @vm_get_page_prot(i64 noundef %34) #17, !dbg !7612
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %tmp21, i32 0, i32 0, !dbg !7612
  store i64 %call22, ptr %coerce.dive, align 8, !dbg !7612
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vm_page_prot, ptr align 8 %tmp21, i64 8, i1 false), !dbg !7612
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp21) #15, !dbg !7612
  %35 = load ptr, ptr %vma.addr, align 8, !dbg !7615
  %vm_page_prot23 = getelementptr inbounds %struct.vm_area_struct, ptr %35, i32 0, i32 2, !dbg !7616
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !7617
  %36 = load ptr, ptr %vma.addr, align 8, !dbg !7617
  %vm_page_prot24 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 2, !dbg !7617
  %pgprot25 = getelementptr inbounds %struct.pgprot, ptr %vm_page_prot24, i32 0, i32 0, !dbg !7617
  %37 = load i64, ptr %pgprot25, align 8, !dbg !7617
  %call26 = call i64 @cc_mkdec(i64 noundef %37) #17, !dbg !7617
  store i64 %call26, ptr %pgprot, align 8, !dbg !7617
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vm_page_prot23, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !7617
  %38 = load ptr, ptr %vma.addr, align 8, !dbg !7618
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %38, i32 0, i32 10, !dbg !7619
  store ptr @virtio_gpu_vram_vm_ops, ptr %vm_ops, align 8, !dbg !7620
  %39 = load ptr, ptr %vram, align 8, !dbg !7621
  %map_info = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %39, i32 0, i32 2, !dbg !7623
  %40 = load i32, ptr %map_info, align 4, !dbg !7623
  %cmp27 = icmp eq i32 %40, 3, !dbg !7624
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !7625

if.then28:                                        ; preds = %if.end18
  %41 = load ptr, ptr %vma.addr, align 8, !dbg !7626
  %vm_page_prot29 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 2, !dbg !7627
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp30) #15, !dbg !7628
  %42 = load ptr, ptr %vma.addr, align 8, !dbg !7629
  %vm_page_prot31 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 2, !dbg !7630
  %coerce.dive32 = getelementptr inbounds %struct.pgprot, ptr %vm_page_prot31, i32 0, i32 0, !dbg !7628
  %43 = load i64, ptr %coerce.dive32, align 8, !dbg !7628
  %call33 = call i64 @pgprot_writecombine(i64 %43) #17, !dbg !7628
  %coerce.dive34 = getelementptr inbounds %struct.pgprot, ptr %tmp30, i32 0, i32 0, !dbg !7628
  store i64 %call33, ptr %coerce.dive34, align 8, !dbg !7628
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vm_page_prot29, ptr align 8 %tmp30, i64 8, i1 false), !dbg !7628
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp30) #15, !dbg !7628
  br label %if.end48, !dbg !7626

if.else:                                          ; preds = %if.end18
  %44 = load ptr, ptr %vram, align 8, !dbg !7631
  %map_info35 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %44, i32 0, i32 2, !dbg !7633
  %45 = load i32, ptr %map_info35, align 4, !dbg !7633
  %cmp36 = icmp eq i32 %45, 2, !dbg !7634
  br i1 %cmp36, label %if.then37, label %if.end47, !dbg !7635

if.then37:                                        ; preds = %if.else
  %46 = load ptr, ptr %vma.addr, align 8, !dbg !7636
  %vm_page_prot38 = getelementptr inbounds %struct.vm_area_struct, ptr %46, i32 0, i32 2, !dbg !7637
  %47 = load i8, ptr getelementptr inbounds (%struct.anon.23, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !7638
  %conv = zext i8 %47 to i32, !dbg !7638
  %cmp39 = icmp sgt i32 %conv, 3, !dbg !7638
  br i1 %cmp39, label %cond.true, label %cond.false, !dbg !7638

cond.true:                                        ; preds = %if.then37
  %pgprot42 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral41, i32 0, i32 0, !dbg !7638
  %48 = load ptr, ptr %vma.addr, align 8, !dbg !7638
  %vm_page_prot43 = getelementptr inbounds %struct.vm_area_struct, ptr %48, i32 0, i32 2, !dbg !7638
  %pgprot44 = getelementptr inbounds %struct.pgprot, ptr %vm_page_prot43, i32 0, i32 0, !dbg !7638
  %49 = load i64, ptr %pgprot44, align 8, !dbg !7638
  %call45 = call i64 @cachemode2protval(i32 noundef 2) #17, !dbg !7638
  %or = or i64 %49, %call45, !dbg !7638
  store i64 %or, ptr %pgprot42, align 8, !dbg !7638
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vm_page_prot38, ptr align 8 %.compoundliteral41, i64 8, i1 false), !dbg !7638
  br label %cond.end, !dbg !7638

cond.false:                                       ; preds = %if.then37
  %50 = load ptr, ptr %vma.addr, align 8, !dbg !7638
  %vm_page_prot46 = getelementptr inbounds %struct.vm_area_struct, ptr %50, i32 0, i32 2, !dbg !7638
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vm_page_prot38, ptr align 8 %vm_page_prot46, i64 8, i1 false), !dbg !7638
  br label %cond.end, !dbg !7638

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end47, !dbg !7636

if.end47:                                         ; preds = %cond.end, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then28
  %51 = load i64, ptr %vm_size, align 8, !dbg !7639
  %52 = load ptr, ptr %vram, align 8, !dbg !7641
  %vram_node = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %52, i32 0, i32 3, !dbg !7642
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %vram_node, i32 0, i32 2, !dbg !7643
  %53 = load i64, ptr %size, align 8, !dbg !7643
  %cmp49 = icmp ne i64 %51, %53, !dbg !7644
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !7645

if.then51:                                        ; preds = %if.end48
  store i32 -22, ptr %retval, align 4, !dbg !7646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !7646

if.end52:                                         ; preds = %if.end48
  %54 = load ptr, ptr %vma.addr, align 8, !dbg !7647
  %55 = load ptr, ptr %vma.addr, align 8, !dbg !7648
  %56 = getelementptr inbounds %struct.vm_area_struct, ptr %55, i32 0, i32 0, !dbg !7649
  %vm_start53 = getelementptr inbounds %struct.anon.19, ptr %56, i32 0, i32 0, !dbg !7649
  %57 = load i64, ptr %vm_start53, align 8, !dbg !7649
  %58 = load ptr, ptr %vram, align 8, !dbg !7650
  %vram_node54 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %58, i32 0, i32 3, !dbg !7651
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %vram_node54, i32 0, i32 1, !dbg !7652
  %59 = load i64, ptr %start, align 8, !dbg !7652
  %shr = lshr i64 %59, 12, !dbg !7653
  %60 = load i64, ptr %vm_size, align 8, !dbg !7654
  %61 = load ptr, ptr %vma.addr, align 8, !dbg !7655
  %vm_page_prot55 = getelementptr inbounds %struct.vm_area_struct, ptr %61, i32 0, i32 2, !dbg !7656
  %coerce.dive56 = getelementptr inbounds %struct.pgprot, ptr %vm_page_prot55, i32 0, i32 0, !dbg !7657
  %62 = load i64, ptr %coerce.dive56, align 8, !dbg !7657
  %call57 = call i32 @io_remap_pfn_range(ptr noundef %54, i64 noundef %57, i64 noundef %shr, i64 noundef %60, i64 %62) #17, !dbg !7657
  store i32 %call57, ptr %ret, align 4, !dbg !7658
  %63 = load i32, ptr %ret, align 4, !dbg !7659
  store i32 %63, ptr %retval, align 4, !dbg !7660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !7660

cleanup58:                                        ; preds = %if.end52, %if.then51, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vm_size) #15, !dbg !7661
  call void @llvm.lifetime.end.p0(i64 8, ptr %vram) #15, !dbg !7661
  call void @llvm.lifetime.end.p0(i64 8, ptr %bo) #15, !dbg !7661
  call void @llvm.lifetime.end.p0(i64 8, ptr %vgdev) #15, !dbg !7661
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7661
  %64 = load i32, ptr %retval, align 4, !dbg !7661
  ret i32 %64, !dbg !7661

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #9 align 16 !dbg !6476 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !7662
  %0 = load ptr, ptr %tmp, align 8, !dbg !7662
  %call = call i32 %0() #17, !dbg !7664
  ret void, !dbg !7665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7666 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7669 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7673 dso_local void @schedule() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7674 dso_local void @finish_wait(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_vma_node_start(ptr noundef %node) #4 align 16 !dbg !7677 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7683, metadata !DIExpression()), !dbg !7684
  %0 = load ptr, ptr %node.addr, align 8, !dbg !7685
  %vm_node = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 1, !dbg !7686
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %vm_node, i32 0, i32 1, !dbg !7687
  %1 = load i64, ptr %start, align 8, !dbg !7687
  ret i64 %1, !dbg !7688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_flags_set(ptr noundef %vma, i64 noundef %flags) #4 align 16 !dbg !7689 {
entry:
  %vma.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7693, metadata !DIExpression()), !dbg !7695
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7694, metadata !DIExpression()), !dbg !7696
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7697
  call void @vma_start_write(ptr noundef %0) #17, !dbg !7698
  %1 = load i64, ptr %flags.addr, align 8, !dbg !7699
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !7700
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 3, !dbg !7700
  %4 = load i64, ptr %3, align 8, !dbg !7701
  %or = or i64 %4, %1, !dbg !7701
  store i64 %or, ptr %3, align 8, !dbg !7701
  ret void, !dbg !7702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7703 dso_local i64 @vm_get_page_prot(i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkdec(i64 noundef %val) #4 align 16 !dbg !7706 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7711, metadata !DIExpression()), !dbg !7712
  %0 = load i64, ptr %val.addr, align 8, !dbg !7713
  ret i64 %0, !dbg !7714
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7715 dso_local i64 @pgprot_writecombine(i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7718 dso_local i64 @cachemode2protval(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @io_remap_pfn_range(ptr noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 noundef %size, i64 %prot.coerce) #4 align 16 !dbg !7721 {
entry:
  %prot = alloca %struct.pgprot, align 8
  %vma.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7725, metadata !DIExpression()), !dbg !7730
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7726, metadata !DIExpression()), !dbg !7731
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !7727, metadata !DIExpression()), !dbg !7732
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7728, metadata !DIExpression()), !dbg !7733
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !7729, metadata !DIExpression()), !dbg !7734
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7735
  %1 = load i64, ptr %addr.addr, align 8, !dbg !7736
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !7737
  %3 = load i64, ptr %size.addr, align 8, !dbg !7738
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !7739
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !7739
  %4 = load i64, ptr %pgprot1, align 8, !dbg !7739
  %call = call i64 @cc_mkdec(i64 noundef %4) #17, !dbg !7739
  store i64 %call, ptr %pgprot, align 8, !dbg !7739
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !7740
  %5 = load i64, ptr %coerce.dive2, align 8, !dbg !7740
  %call3 = call i32 @remap_pfn_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 %5) #17, !dbg !7740
  ret i32 %call3, !dbg !7741
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_start_write(ptr noundef %vma) #4 align 16 !dbg !7742 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7744, metadata !DIExpression()), !dbg !7746
  call void @llvm.lifetime.start.p0(i64 4, ptr %mm_lock_seq) #15, !dbg !7747
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq, metadata !7745, metadata !DIExpression()), !dbg !7748
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7749
  %call = call zeroext i1 @__is_vma_write_locked(ptr noundef %0, ptr noundef %mm_lock_seq) #17, !dbg !7751
  br i1 %call, label %if.then, label %if.end, !dbg !7752

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7753

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !7754
  %vm_lock = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 5, !dbg !7755
  %2 = load ptr, ptr %vm_lock, align 8, !dbg !7755
  %lock = getelementptr inbounds %struct.vma_lock, ptr %2, i32 0, i32 0, !dbg !7756
  call void @down_write(ptr noundef %lock) #17, !dbg !7757
  br label %do.body, !dbg !7758

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !7759

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !7761

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !7761

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !7759

do.body2:                                         ; preds = %do.end
  %3 = load i32, ptr %mm_lock_seq, align 4, !dbg !7763
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !7763
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 4, !dbg !7763
  store volatile i32 %3, ptr %vm_lock_seq, align 8, !dbg !7763
  br label %do.cond3, !dbg !7763

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !7763

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !7759

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !7759

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !7765
  %vm_lock7 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 5, !dbg !7766
  %6 = load ptr, ptr %vm_lock7, align 8, !dbg !7766
  %lock8 = getelementptr inbounds %struct.vma_lock, ptr %6, i32 0, i32 0, !dbg !7767
  call void @up_write(ptr noundef %lock8) #17, !dbg !7768
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7769
  br label %cleanup, !dbg !7769

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mm_lock_seq) #15, !dbg !7769
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7769

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__is_vma_write_locked(ptr noundef %vma, ptr noundef %mm_lock_seq) #0 align 16 !dbg !7770 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7774, metadata !DIExpression()), !dbg !7776
  store ptr %mm_lock_seq, ptr %mm_lock_seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq.addr, metadata !7775, metadata !DIExpression()), !dbg !7777
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7778
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !7779
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !7779
  call void @mmap_assert_write_locked(ptr noundef %1) #17, !dbg !7780
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !7781
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1, !dbg !7782
  %3 = load ptr, ptr %vm_mm1, align 8, !dbg !7782
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !7783
  %mm_lock_seq2 = getelementptr inbounds %struct.anon.26, ptr %4, i32 0, i32 18, !dbg !7783
  %5 = load i32, ptr %mm_lock_seq2, align 8, !dbg !7783
  %6 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !7784
  store i32 %5, ptr %6, align 4, !dbg !7785
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !7786
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 4, !dbg !7787
  %8 = load i32, ptr %vm_lock_seq, align 8, !dbg !7787
  %9 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !7788
  %10 = load i32, ptr %9, align 4, !dbg !7789
  %cmp = icmp eq i32 %8, %10, !dbg !7790
  ret i1 %cmp, !dbg !7791
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7792 dso_local void @down_write(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7796 dso_local void @up_write(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #4 align 16 !dbg !7797 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7802, metadata !DIExpression()), !dbg !7803
  br label %do.body, !dbg !7804

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7805
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !7805
  %mmap_lock = getelementptr inbounds %struct.anon.26, ptr %1, i32 0, i32 16, !dbg !7805
  br label %do.end, !dbg !7805

do.end:                                           ; preds = %do.body
  ret void, !dbg !7807
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7808 dso_local i32 @remap_pfn_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #9 align 16 !dbg !7809 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7814, metadata !DIExpression()), !dbg !7815
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7816
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7816
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !7816
  ret void, !dbg !7817
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_mm_insert_node(ptr noundef %mm, ptr noundef %node, i64 noundef %size) #4 align 16 !dbg !7818 {
entry:
  %mm.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7823, metadata !DIExpression()), !dbg !7826
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7824, metadata !DIExpression()), !dbg !7827
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7825, metadata !DIExpression()), !dbg !7828
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7829
  %1 = load ptr, ptr %node.addr, align 8, !dbg !7830
  %2 = load i64, ptr %size.addr, align 8, !dbg !7831
  %call = call i32 @drm_mm_insert_node_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0, i64 noundef 0, i32 noundef 0) #17, !dbg !7832
  ret i32 %call, !dbg !7833
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #9 align 16 !dbg !7834 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7836, metadata !DIExpression()), !dbg !7837
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7838
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7838
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !7838
  ret void, !dbg !7839
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7840 dso_local ptr @virtio_gpu_array_alloc(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7843 dso_local void @virtio_gpu_array_add_obj(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7846 dso_local i32 @virtio_gpu_cmd_map(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7849 dso_local void @virtio_gpu_array_put_free(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7852 dso_local void @drm_mm_remove_node(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7855 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_mm_insert_node_generic(ptr noundef %mm, ptr noundef %node, i64 noundef %size, i64 noundef %alignment, i64 noundef %color, i32 noundef %mode) #4 align 16 !dbg !7860 {
entry:
  %mm.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7864, metadata !DIExpression()), !dbg !7870
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7865, metadata !DIExpression()), !dbg !7871
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7866, metadata !DIExpression()), !dbg !7872
  store i64 %alignment, ptr %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !7867, metadata !DIExpression()), !dbg !7873
  store i64 %color, ptr %color.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !7868, metadata !DIExpression()), !dbg !7874
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7869, metadata !DIExpression()), !dbg !7875
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7876
  %1 = load ptr, ptr %node.addr, align 8, !dbg !7877
  %2 = load i64, ptr %size.addr, align 8, !dbg !7878
  %3 = load i64, ptr %alignment.addr, align 8, !dbg !7879
  %4 = load i64, ptr %color.addr, align 8, !dbg !7880
  %5 = load i32, ptr %mode.addr, align 4, !dbg !7881
  %call = call i32 @drm_mm_insert_node_in_range(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 0, i64 noundef -1, i32 noundef %5) #17, !dbg !7882
  ret i32 %call, !dbg !7883
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7884 dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7887 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_mm_node_allocated(ptr noundef %node) #4 align 16 !dbg !7888 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7892, metadata !DIExpression()), !dbg !7893
  %0 = load ptr, ptr %node.addr, align 8, !dbg !7894
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 12, !dbg !7894
  %1 = ptrtoint ptr %flags to i64, !dbg !7894
  %cmp = icmp ne i64 %1, 0, !dbg !7894
  %conv = zext i1 %cmp to i32, !dbg !7894
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7894
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !7894

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !7894
  %flags1 = getelementptr inbounds %struct.drm_mm_node, ptr %3, i32 0, i32 12, !dbg !7894
  %4 = ptrtoint ptr %flags1 to i64, !dbg !7894
  %cmp2 = icmp ne i64 %4, 0, !dbg !7894
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7894

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %node.addr, align 8, !dbg !7894
  %flags5 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 12, !dbg !7894
  %6 = load i64, ptr %flags5, align 8, !dbg !7894
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7894
  br i1 %7, label %cond.true, label %cond.false, !dbg !7894

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %node.addr, align 8, !dbg !7894
  %flags6 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 12, !dbg !7894
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #17, !dbg !7894
  %conv7 = zext i1 %call to i32, !dbg !7894
  br label %cond.end, !dbg !7894

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %node.addr, align 8, !dbg !7894
  %flags8 = getelementptr inbounds %struct.drm_mm_node, ptr %9, i32 0, i32 12, !dbg !7894
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #17, !dbg !7894
  %conv10 = zext i1 %call9 to i32, !dbg !7894
  br label %cond.end, !dbg !7894

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !7894
  %tobool = icmp ne i32 %cond, 0, !dbg !7894
  ret i1 %tobool, !dbg !7895
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7896 dso_local void @virtio_gpu_cmd_unmap(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7899 dso_local void @virtio_gpu_cmd_unref_resource(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7900 dso_local void @virtio_gpu_notify(ptr noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7903 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7911, metadata !DIExpression()), !dbg !7916
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7912, metadata !DIExpression()), !dbg !7917
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !7918
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7913, metadata !DIExpression()), !dbg !7919
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7920
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7921
  %div = udiv i64 %1, 64, !dbg !7921
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7922
  store ptr %add.ptr, ptr %p, align 8, !dbg !7919
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !7923
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7914, metadata !DIExpression()), !dbg !7924
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7925
  %rem = urem i64 %2, 64, !dbg !7925
  %shl = shl i64 1, %rem, !dbg !7925
  store i64 %shl, ptr %mask, align 8, !dbg !7924
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !7926
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7915, metadata !DIExpression()), !dbg !7927
  %3 = load ptr, ptr %p, align 8, !dbg !7928
  %4 = load i64, ptr %3, align 8, !dbg !7929
  store i64 %4, ptr %val, align 8, !dbg !7927
  %5 = load i64, ptr %val, align 8, !dbg !7930
  %6 = load i64, ptr %mask, align 8, !dbg !7931
  %and = and i64 %5, %6, !dbg !7932
  %tobool = icmp ne i64 %and, 0, !dbg !7933
  %lnot = xor i1 %tobool, true, !dbg !7933
  %lnot1 = xor i1 %lnot, true, !dbg !7934
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !7935
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !7935
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !7935
  ret i1 %lnot1, !dbg !7936
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7937 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7940, metadata !DIExpression()), !dbg !7942
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7941, metadata !DIExpression()), !dbg !7943
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7944
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7945
  %div = udiv i64 %1, 64, !dbg !7945
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7946
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7947
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7948
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7949
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7950
  ret i1 %call, !dbg !7951
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !7952 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7960, metadata !DIExpression()), !dbg !7962
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7961, metadata !DIExpression()), !dbg !7963
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7964
  %1 = load i64, ptr %size.addr, align 8, !dbg !7965
  %conv = trunc i64 %1 to i32, !dbg !7965
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7966
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7967
  %3 = load i64, ptr %size.addr, align 8, !dbg !7967
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7967
  ret void, !dbg !7968
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7969 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7972, metadata !DIExpression()), !dbg !7974
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7973, metadata !DIExpression()), !dbg !7975
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7976
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7977
  br i1 %1, label %cond.true, label %cond.false, !dbg !7977

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7978
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7979
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7980
  %conv = zext i1 %call to i32, !dbg !7980
  br label %cond.end, !dbg !7977

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7981
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7982
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !7983
  %conv2 = zext i1 %call1 to i32, !dbg !7983
  br label %cond.end, !dbg !7977

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7977
  %tobool = icmp ne i32 %cond, 0, !dbg !7977
  ret i1 %tobool, !dbg !7984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7985 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7990, metadata !DIExpression()), !dbg !7992
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7991, metadata !DIExpression()), !dbg !7993
  ret i1 true, !dbg !7994
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7995 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !8000, metadata !DIExpression()), !dbg !8003
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !8001, metadata !DIExpression()), !dbg !8004
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !8002, metadata !DIExpression()), !dbg !8005
  ret void, !dbg !8006
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !8007 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !8011, metadata !DIExpression()), !dbg !8013
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !8012, metadata !DIExpression()), !dbg !8014
  %0 = load i64, ptr %nr.addr, align 8, !dbg !8015
  %and = and i64 %0, 63, !dbg !8016
  %shl = shl i64 1, %and, !dbg !8017
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !8018
  %2 = load i64, ptr %nr.addr, align 8, !dbg !8019
  %shr = ashr i64 %2, 6, !dbg !8020
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !8018
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !8018
  %and1 = and i64 %shl, %3, !dbg !8021
  %cmp = icmp ne i64 %and1, 0, !dbg !8022
  ret i1 %cmp, !dbg !8023
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !8024 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !8026, metadata !DIExpression()), !dbg !8029
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !8027, metadata !DIExpression()), !dbg !8030
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !8031
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !8028, metadata !DIExpression()), !dbg !8032
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !8033
  %1 = load i64, ptr %nr.addr, align 8, !dbg !8034
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !8035, !srcloc !8036
  %3 = icmp ult i8 %2, 2, !dbg !8035
  call void @llvm.assume(i1 %3), !dbg !8035
  store i8 %2, ptr %oldbit, align 1, !dbg !8035
  %4 = load i8, ptr %oldbit, align 1, !dbg !8037, !range !6780, !noundef !1124
  %tobool = trunc i8 %4 to i1, !dbg !8037
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !8038
  ret i1 %tobool, !dbg !8039
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6480, !6481, !6482, !6483, !6484, !6485, !6486, !6487}
!llvm.ident = !{!6488}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "virtio_gpu_vram_funcs", scope: !2, file: !3, line: 128, type: !6373, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/virtio/.virtgpu_vram.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/virtio/virtio-gpu\22 -D KBUILD_BASENAME=\22virtgpu_vram\22 -D KBUILD_MODNAME=\22virtio_gpu\22 -D __KBUILD_MODNAME=kmod_virtio_gpu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/virtio/virtgpu_vram.ll drivers/gpu/drm/virtio/virtgpu_vram.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !365, globals: !6463, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/virtio/virtgpu_vram.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c5fb4ca57dca61a4f60344b7580f086")
!4 = !{!5, !13, !18, !23, !29, !37, !53, !60, !68, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !149, !192, !201, !207, !212, !220, !224, !240, !260, !266, !272, !279, !289, !294, !301, !306, !311, !318, !323, !330, !335, !345, !355}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !142, line: 80, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed9f6851df8ea62f4629791b091b99c")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "DRM_AUTH", value: 1)
!145 = !DIEnumerator(name: "DRM_MASTER", value: 2)
!146 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4)
!147 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16)
!148 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !150, line: 91, baseType: !109, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!152 = !DIEnumerator(name: "MODE_OK", value: 0)
!153 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!154 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!155 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!156 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!157 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!158 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!159 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!160 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!161 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!162 = !DIEnumerator(name: "MODE_MEM", value: 10)
!163 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!164 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!165 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!166 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!167 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!168 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!169 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!170 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!171 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!172 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!173 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!174 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!175 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!176 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!177 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!178 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!179 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!180 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!181 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!182 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!183 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!184 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!185 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!186 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!187 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!188 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!189 = !DIEnumerator(name: "MODE_STALE", value: -3)
!190 = !DIEnumerator(name: "MODE_BAD", value: -2)
!191 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !193, line: 96, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!194 = !{!195, !196, !197, !198, !199, !200}
!195 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!196 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!197 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!198 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!199 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!200 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !202, line: 98, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!205 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!206 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !202, line: 63, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "connector_status_connected", value: 1)
!210 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!211 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !202, line: 137, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!215 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!216 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!217 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!218 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!219 = !DIEnumerator(name: "SubPixelNone", value: 5)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !202, line: 337, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223}
!222 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!223 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !225, line: 387, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!227 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!228 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!229 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!230 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!231 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!232 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!233 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!234 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!235 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!236 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!237 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!238 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!239 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !202, line: 502, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!242 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!243 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!244 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!245 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!246 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!247 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!248 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!249 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!250 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!251 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!252 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!253 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!254 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!255 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!256 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!257 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!258 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!259 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !202, line: 421, baseType: !7, size: 32, elements: !261)
!261 = !{!262, !263, !264, !265}
!262 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!263 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!264 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!265 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !202, line: 50, baseType: !7, size: 32, elements: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!269 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!270 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!271 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !202, line: 363, baseType: !109, size: 32, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!275 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!276 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!277 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!278 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !202, line: 156, baseType: !7, size: 32, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288}
!281 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!282 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!283 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!284 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!285 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!286 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!287 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!288 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !290, line: 38, baseType: !7, size: 32, elements: !291)
!290 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!291 = !{!292, !293}
!292 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!293 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !295, line: 78, baseType: !7, size: 32, elements: !296)
!295 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!296 = !{!297, !298, !299, !300}
!297 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!298 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!299 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!300 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !295, line: 85, baseType: !7, size: 32, elements: !302)
!302 = !{!303, !304, !305}
!303 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!304 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!305 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !290, line: 563, baseType: !7, size: 32, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!309 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!310 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !312, line: 30, baseType: !7, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!313 = !{!314, !315, !316, !317}
!314 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!315 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!316 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!317 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !319, line: 61, baseType: !7, size: 32, elements: !320)
!319 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!320 = !{!321, !322}
!321 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!322 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !324, line: 5, baseType: !7, size: 32, elements: !325)
!324 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!325 = !{!326, !327, !328, !329}
!326 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!327 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!328 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!329 = !DIEnumerator(name: "DMA_NONE", value: 3)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !331, line: 10, baseType: !7, size: 32, elements: !332)
!331 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!332 = !{!333, !334}
!333 = !DIEnumerator(name: "false", value: 0)
!334 = !DIEnumerator(name: "true", value: 1)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !336, line: 364, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!337 = !{!338, !339, !340, !341, !342, !343, !344}
!338 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!339 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!340 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!341 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!342 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!343 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!344 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !346, line: 168, baseType: !7, size: 32, elements: !347)
!346 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!347 = !{!348, !349, !350, !351, !352, !353, !354}
!348 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0)
!349 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1)
!350 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2)
!351 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3)
!352 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4)
!353 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5)
!354 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8)
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mm_insert_mode", file: !356, line: 70, baseType: !7, size: 32, elements: !357)
!356 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!357 = !{!358, !359, !360, !361, !362, !363, !364}
!358 = !DIEnumerator(name: "DRM_MM_INSERT_BEST", value: 0)
!359 = !DIEnumerator(name: "DRM_MM_INSERT_LOW", value: 1)
!360 = !DIEnumerator(name: "DRM_MM_INSERT_HIGH", value: 2)
!361 = !DIEnumerator(name: "DRM_MM_INSERT_EVICT", value: 3)
!362 = !DIEnumerator(name: "DRM_MM_INSERT_ONCE", value: 2147483648, isUnsigned: true)
!363 = !DIEnumerator(name: "DRM_MM_INSERT_HIGHEST", value: 2147483650, isUnsigned: true)
!364 = !DIEnumerator(name: "DRM_MM_INSERT_LOWEST", value: 2147483649, isUnsigned: true)
!365 = !{!366, !367, !1397, !545, !5028, !6458, !6459, !648, !6461, !6462, !1186}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object_vram", file: !369, line: 105, size: 4992, elements: !370)
!369 = !DIFile(filename: "drivers/gpu/drm/virtio/virtgpu_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b84e5b532070663ed6372606d1c7820a")
!370 = !{!371, !6455, !6456, !6457}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !368, file: !369, line: 106, baseType: !372, size: 3584)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object", file: !369, line: 87, size: 3584, elements: !373)
!373 = !{!374, !6446, !6447, !6448, !6449, !6450, !6451, !6452, !6453, !6454}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !372, file: !369, line: 88, baseType: !375, size: 3264)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_shmem_object", file: !376, line: 23, size: 3264, elements: !377)
!376 = !DIFile(filename: "./include/drm/drm_gem_shmem_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f80439fb30dfb375861e4726784d3d")
!377 = !{!378, !6436, !6437, !6438, !6439, !6440, !6441, !6442, !6443, !6444, !6445}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !375, file: !376, line: 27, baseType: !379, size: 2816)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !319, line: 264, size: 2816, elements: !380)
!380 = !{!381, !396, !397, !6345, !6346, !6353, !6354, !6355, !6356, !6357, !6366, !6367, !6371, !6427, !6428}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !379, file: !319, line: 274, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !383, line: 19, size: 32, elements: !384)
!383 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !382, file: !383, line: 20, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !387, line: 113, baseType: !388)
!387 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !387, line: 111, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !388, file: !387, line: 112, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !392, line: 174, baseType: !393)
!392 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 172, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !393, file: !392, line: 173, baseType: !109, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !379, file: !319, line: 287, baseType: !7, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !379, file: !319, line: 292, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !312, line: 50, size: 12736, elements: !400)
!400 = !{!401, !402, !403, !4882, !4888, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !6297, !6298, !6299, !6336, !6339, !6340, !6343, !6344}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !399, file: !312, line: 52, baseType: !109, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !399, file: !312, line: 55, baseType: !382, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !399, file: !312, line: 58, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !406)
!406 = !{!407, !4421, !4422, !4425, !4426, !4479, !4564, !4565, !4566, !4567, !4568, !4575, !4667, !4680, !4690, !4694, !4696, !4697, !4698, !4702, !4709, !4710, !4713, !4716, !4720, !4824, !4825, !4826, !4827, !4828, !4829, !4859, !4860, !4861, !4864, !4867, !4876, !4877, !4878, !4879, !4880, !4881}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !405, file: !94, line: 706, baseType: !408, size: 512)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !409, line: 64, size: 512, elements: !410)
!409 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!410 = !{!411, !415, !421, !423, !508, !4323, !4415, !4416, !4417, !4418, !4419, !4420}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !409, line: 65, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !408, file: !409, line: 66, baseType: !416, size: 128, offset: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !392, line: 190, size: 128, elements: !417)
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !392, line: 191, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !416, file: !392, line: 191, baseType: !419, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !408, file: !409, line: 67, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !408, file: !409, line: 68, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !409, line: 168, size: 768, elements: !426)
!426 = !{!427, !428, !467, !468}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !425, file: !409, line: 169, baseType: !416, size: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !425, file: !409, line: 170, baseType: !429, size: 32, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !430, line: 29, baseType: !431)
!430 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !430, line: 17, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !430, line: 18, baseType: !434, size: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !430, line: 18, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !434, file: !430, line: 19, baseType: !437, size: 32)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !438, line: 14, size: 32, elements: !439)
!438 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !437, file: !438, line: 15, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !442, line: 44, baseType: !443)
!442 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !442, line: 14, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !442, line: 15, baseType: !446, size: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !442, line: 15, size: 32, elements: !447)
!447 = !{!448, !449, !459}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !442, line: 16, baseType: !391, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !442, line: 24, baseType: !450, size: 16)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !442, line: 24, size: 16, elements: !451)
!451 = !{!452, !458}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !450, file: !442, line: 25, baseType: !453, size: 8)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !454, line: 17, baseType: !455)
!454 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !456, line: 21, baseType: !457)
!456 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!457 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !450, file: !442, line: 26, baseType: !453, size: 8, offset: 8)
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !442, line: 28, baseType: !460, size: 32)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !442, line: 28, size: 32, elements: !461)
!461 = !{!462, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !460, file: !442, line: 29, baseType: !463, size: 16)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !454, line: 19, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !456, line: 24, baseType: !465)
!465 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !460, file: !442, line: 30, baseType: !463, size: 16, offset: 16)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !425, file: !409, line: 171, baseType: !408, size: 512, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !425, file: !409, line: 172, baseType: !469, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !409, line: 133, size: 192, elements: !472)
!472 = !{!473, !480, !485}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !471, file: !409, line: 134, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!109, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !471, file: !409, line: 135, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!412, !478}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !471, file: !409, line: 136, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!109, !478, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !409, line: 125, size: 20736, elements: !492)
!492 = !{!493, !498, !502, !503, !507}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !491, file: !409, line: 126, baseType: !494, size: 192)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 192, elements: !496)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!496 = !{!497}
!497 = !DISubrange(count: 3)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !491, file: !409, line: 127, baseType: !499, size: 4096, offset: 192)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 4096, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !491, file: !409, line: 128, baseType: !109, size: 32, offset: 4288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !491, file: !409, line: 129, baseType: !504, size: 16384, offset: 4320)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 16384, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 2048)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !491, file: !409, line: 130, baseType: !109, size: 32, offset: 20704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !408, file: !409, line: 69, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !409, line: 116, size: 384, elements: !512)
!512 = !{!513, !517, !546, !4285, !4313, !4317}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !511, file: !409, line: 117, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !422}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !511, file: !409, line: 118, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !521, line: 254, size: 128, elements: !522)
!521 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!522 = !{!523, !538}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !520, file: !521, line: 255, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!527, !422, !532, !495}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !392, line: 66, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !529, line: 73, baseType: !530)
!529 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !529, line: 15, baseType: !531)
!531 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !521, line: 30, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !533, file: !521, line: 31, baseType: !412, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !533, file: !521, line: 32, baseType: !537, size: 16, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !392, line: 24, baseType: !465)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !520, file: !521, line: 256, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!527, !422, !532, !412, !542}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !392, line: 61, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !529, line: 72, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !529, line: 16, baseType: !545)
!545 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !511, file: !409, line: 119, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !521, line: 84, size: 320, elements: !551)
!551 = !{!552, !553, !557, !4281, !4283}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !550, file: !521, line: 85, baseType: !412, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !550, file: !521, line: 86, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!537, !422, !532, !109}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !550, file: !521, line: 88, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!537, !422, !561, !109}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !521, line: 175, size: 512, elements: !563)
!563 = !{!564, !565, !566, !567, !4272, !4276, !4277}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !562, file: !521, line: 176, baseType: !533, size: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !521, line: 177, baseType: !542, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !562, file: !521, line: 178, baseType: !366, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !562, file: !521, line: 179, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !573)
!573 = !{!574, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4266, !4267, !4268, !4269, !4270, !4271}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !572, file: !14, line: 473, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !577)
!577 = !{!578, !579, !580, !588, !589, !596, !597, !600, !601, !4045, !4046, !4047, !4048, !4049, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4089, !4092, !4093, !4094, !4103, !4104, !4105, !4106}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !576, file: !14, line: 642, baseType: !537, size: 16)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !576, file: !14, line: 643, baseType: !465, size: 16, offset: 16)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !576, file: !14, line: 644, baseType: !581, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !582, line: 23, baseType: !583)
!582 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 21, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !583, file: !582, line: 22, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !392, line: 37, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !529, line: 49, baseType: !7)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !576, file: !14, line: 645, baseType: !416, size: 128, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !576, file: !14, line: 646, baseType: !590, size: 32, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !582, line: 28, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 26, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !591, file: !582, line: 27, baseType: !594, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !392, line: 38, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !529, line: 50, baseType: !7)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !576, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !576, file: !14, line: 650, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !576, file: !14, line: 651, baseType: !598, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !576, file: !14, line: 654, baseType: !602, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !605)
!605 = !{!606, !3879, !3889, !3893, !3897, !3901, !3905, !3909, !3913, !3917, !3921, !3922, !3926, !3930, !3967, !3996, !4000, !4006, !4010, !4014, !4018, !4022, !4026, !4032, !4036}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !604, file: !14, line: 1967, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!610, !575, !610, !7}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !612, line: 82, size: 1536, elements: !613)
!612 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!613 = !{!614, !615, !625, !633, !634, !654, !655, !659, !672, !3862, !3863, !3864, !3865, !3871, !3872, !3873}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !611, file: !612, line: 84, baseType: !7, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !611, file: !612, line: 85, baseType: !616, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !617, line: 275, baseType: !618)
!617 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !617, line: 275, size: 32, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !618, file: !617, line: 275, baseType: !621, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !617, line: 69, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !617, line: 64, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !622, file: !617, line: 65, baseType: !7, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !611, file: !612, line: 86, baseType: !626, size: 128, offset: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !627, line: 38, size: 128, elements: !628)
!627 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!628 = !{!629, !631}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !626, file: !627, line: 39, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !626, file: !627, line: 39, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !611, file: !612, line: 87, baseType: !610, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !611, file: !612, line: 88, baseType: !635, size: 128, offset: 256)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !612, line: 49, size: 128, elements: !636)
!636 = !{!637, !651}
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !612, line: 50, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !612, line: 50, size: 64, elements: !639)
!639 = !{!640, !647}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !612, line: 51, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !612, line: 51, size: 64, elements: !642)
!642 = !{!643, !646}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !641, file: !612, line: 52, baseType: !644, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !454, line: 21, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !456, line: 27, baseType: !7)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !641, file: !612, line: 52, baseType: !644, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !638, file: !612, line: 54, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !454, line: 23, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !456, line: 31, baseType: !650)
!650 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !635, file: !612, line: 56, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !611, file: !612, line: 89, baseType: !575, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !611, file: !612, line: 91, baseType: !656, size: 256, offset: 448)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 256, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !611, file: !612, line: 94, baseType: !660, size: 64, offset: 704)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !661, line: 25, size: 64, elements: !662)
!661 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !661, line: 26, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !661, line: 26, size: 64, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !664, file: !661, line: 28, baseType: !649, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !661, line: 30, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !661, line: 30, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !661, line: 31, baseType: !429, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !661, line: 32, baseType: !109, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !611, file: !612, line: 95, baseType: !673, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !612, line: 128, size: 1024, align: 512, elements: !676)
!676 = !{!677, !681, !682, !689, !695, !699, !703, !707, !708, !712, !716, !3852, !3856}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !675, file: !612, line: 129, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!109, !610, !7}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !675, file: !612, line: 130, baseType: !678, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !675, file: !612, line: 131, baseType: !683, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!109, !686, !688}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !675, file: !612, line: 132, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!109, !686, !7, !412, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !675, file: !612, line: 134, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!109, !686}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !675, file: !612, line: 135, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!109, !610}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !675, file: !612, line: 136, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !610}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !675, file: !612, line: 137, baseType: !704, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !675, file: !612, line: 138, baseType: !709, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !610, !575}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !675, file: !612, line: 139, baseType: !713, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!495, !610, !495, !109}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !675, file: !612, line: 140, baseType: !717, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!720, !3851}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !722, line: 70, size: 256, elements: !723)
!722 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!723 = !{!724, !725, !3847, !3848}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !721, file: !722, line: 71, baseType: !610, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !721, file: !722, line: 72, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !728)
!728 = !{!729, !730, !733, !734, !735, !739, !1218, !3552, !3592, !3677, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3694, !3698, !3699, !3702, !3705, !3708, !3711, !3712, !3713, !3754, !3780, !3781, !3782, !3783, !3784, !3785, !3788, !3790, !3797, !3798, !3799, !3800, !3801, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !727, file: !14, line: 1191, baseType: !416, size: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !727, file: !14, line: 1192, baseType: !731, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !392, line: 21, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !392, line: 18, baseType: !644)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !727, file: !14, line: 1193, baseType: !457, size: 8, offset: 160)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !727, file: !14, line: 1194, baseType: !545, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !727, file: !14, line: 1195, baseType: !736, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !392, line: 52, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !529, line: 88, baseType: !738)
!738 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !727, file: !14, line: 1196, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !742)
!742 = !{!743, !744, !745, !751, !755, !759, !763, !1203, !1204, !1208, !1210, !1211, !1212, !1214, !1215, !1216, !1217}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !741, file: !14, line: 2367, baseType: !412, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !741, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !741, file: !14, line: 2376, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!109, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !722, line: 21, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !741, file: !14, line: 2377, baseType: !752, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !741, file: !14, line: 2378, baseType: !756, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!610, !740, !109, !412, !366}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !741, file: !14, line: 2380, baseType: !760, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !726}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !741, file: !14, line: 2381, baseType: !764, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !766)
!766 = !{!767, !768, !769, !773, !795, !821, !822, !823, !824, !828, !833, !834, !854, !910, !911, !912, !913, !914, !917, !918, !919, !927, !931, !958, !979, !980, !981, !982, !991, !1014, !1015, !1018, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1032, !1033, !1161, !1169, !1170, !1171, !1173, !1177, !1178, !1182, !1183, !1184, !1185, !1187, !1188, !1189, !1196, !1197, !1198, !1202}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !765, file: !6, line: 403, baseType: !5, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !765, file: !6, line: 406, baseType: !416, size: 128, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !765, file: !6, line: 409, baseType: !770, size: 448, offset: 192)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 448, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 56)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !765, file: !6, line: 417, baseType: !774, size: 768, offset: 640)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !775)
!775 = !{!776, !777, !778, !779, !782}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !774, file: !6, line: 46, baseType: !408, size: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !774, file: !6, line: 47, baseType: !764, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !774, file: !6, line: 48, baseType: !422, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !774, file: !6, line: 49, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !774, file: !6, line: 50, baseType: !783, size: 64, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !785, line: 26, size: 256, elements: !786)
!785 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !784, file: !785, line: 27, baseType: !7, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !784, file: !785, line: 28, baseType: !789, size: 192, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !790, line: 43, size: 192, elements: !791)
!790 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!791 = !{!792, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !790, line: 44, baseType: !793, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !438, line: 23, baseType: !437)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !789, file: !790, line: 45, baseType: !416, size: 128, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !765, file: !6, line: 418, baseType: !796, size: 64, offset: 1408)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !798)
!798 = !{!799, !800, !805, !809, !813, !817}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !797, file: !6, line: 54, baseType: !533, size: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !797, file: !6, line: 55, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!527, !796, !804, !495}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !797, file: !6, line: 57, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!527, !796, !804, !412, !542}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !797, file: !6, line: 59, baseType: !810, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !764, !412}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !797, file: !6, line: 60, baseType: !814, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!109, !764}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !797, file: !6, line: 61, baseType: !818, size: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !764}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !765, file: !6, line: 419, baseType: !412, size: 64, offset: 1472)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !765, file: !6, line: 420, baseType: !412, size: 64, offset: 1536)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !765, file: !6, line: 421, baseType: !422, size: 64, offset: 1600)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !765, file: !6, line: 424, baseType: !825, size: 64, offset: 1664)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !765, file: !6, line: 425, baseType: !829, size: 64, offset: 1728)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !454, line: 20, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !456, line: 26, baseType: !109)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !765, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !765, file: !6, line: 435, baseType: !835, size: 256, offset: 1856)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !836, line: 66, size: 256, elements: !837)
!836 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!837 = !{!838, !847, !848, !853}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !835, file: !836, line: 67, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !840, line: 13, baseType: !841)
!840 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !392, line: 181, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 179, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !842, file: !392, line: 180, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !454, line: 22, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !456, line: 30, baseType: !738)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !835, file: !836, line: 68, baseType: !793, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !835, file: !836, line: 70, baseType: !849, size: 32, offset: 96)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !850, line: 15, size: 32, elements: !851)
!850 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !849, file: !850, line: 20, baseType: !391, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !835, file: !836, line: 72, baseType: !416, size: 128, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !765, file: !6, line: 437, baseType: !855, size: 64, offset: 2112)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !857, line: 69, size: 320, elements: !858)
!857 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!858 = !{!859, !860, !861, !881, !883, !887, !888}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !856, file: !857, line: 70, baseType: !412, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !856, file: !857, line: 71, baseType: !764, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !856, file: !857, line: 72, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !857, line: 47, size: 256, elements: !865)
!865 = !{!866, !867, !873, !877}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !857, line: 49, baseType: !7, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !864, file: !857, line: 51, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!109, !412, !871}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !864, file: !857, line: 53, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!109, !495, !871}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !864, file: !857, line: 55, baseType: !878, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !366}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !856, file: !857, line: 73, baseType: !882, size: 16, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !856, file: !857, line: 74, baseType: !884, size: 8, offset: 208)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !454, line: 16, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !456, line: 20, baseType: !886)
!886 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !857, line: 75, baseType: !453, size: 8, offset: 216)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 76, baseType: !889, size: 64, offset: 256)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 76, size: 64, elements: !890)
!890 = !{!891, !892, !899}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !889, file: !857, line: 77, baseType: !366, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !889, file: !857, line: 78, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !857, line: 86, size: 128, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !895, file: !857, line: 87, baseType: !7, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !895, file: !857, line: 88, baseType: !495, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !889, file: !857, line: 79, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !857, line: 92, size: 256, elements: !903)
!903 = !{!904, !905, !906, !908, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !902, file: !857, line: 94, baseType: !7, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !902, file: !857, line: 95, baseType: !7, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !902, file: !857, line: 96, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !902, file: !857, line: 97, baseType: !862, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !902, file: !857, line: 98, baseType: !366, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !765, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !765, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !765, file: !6, line: 442, baseType: !825, size: 64, offset: 2240)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !765, file: !6, line: 443, baseType: !829, size: 64, offset: 2304)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !765, file: !6, line: 444, baseType: !915, size: 8, offset: 2368)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !392, line: 35, baseType: !916)
!916 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !765, file: !6, line: 451, baseType: !915, size: 8, offset: 2376)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !765, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !765, file: !6, line: 455, baseType: !920, size: 64, offset: 2432)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !922, line: 23, size: 96, elements: !923)
!922 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !921, file: !922, line: 24, baseType: !109, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !921, file: !922, line: 24, baseType: !109, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !921, file: !922, line: 24, baseType: !109, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !765, file: !6, line: 458, baseType: !928, size: 64, offset: 2496)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!109}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !765, file: !6, line: 460, baseType: !932, size: 4032, align: 512, offset: 2560)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 4032, elements: !956)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !933, file: !6, line: 363, baseType: !366, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !933, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !933, file: !6, line: 367, baseType: !938, size: 448, offset: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !938, file: !6, line: 320, baseType: !764, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !938, file: !6, line: 321, baseType: !942, size: 384, offset: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !943, line: 40, size: 384, elements: !944)
!943 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !942, file: !943, line: 41, baseType: !946, size: 384, align: 64)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 384, align: 64, elements: !954)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !948, line: 5, size: 192, align: 64, elements: !949)
!948 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!949 = !{!950, !951, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !947, file: !948, line: 6, baseType: !545, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !947, file: !948, line: 7, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !947, file: !948, line: 8, baseType: !952, size: 64, offset: 128)
!954 = !{!955}
!955 = !DISubrange(count: 2)
!956 = !{!957}
!957 = !DISubrange(count: 7)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !765, file: !6, line: 463, baseType: !959, size: 192, offset: 6592)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !960, line: 8, size: 192, elements: !961)
!960 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!961 = !{!962, !963, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !959, file: !960, line: 10, baseType: !7, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !959, file: !960, line: 11, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !959, file: !960, line: 12, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !968, line: 59, size: 48, elements: !969)
!968 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!969 = !{!970, !974, !975, !976, !977, !978}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !967, file: !968, line: 60, baseType: !971, size: 16)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !454, line: 18, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !456, line: 23, baseType: !973)
!973 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !967, file: !968, line: 61, baseType: !971, size: 16, offset: 16)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !967, file: !968, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !967, file: !968, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !967, file: !968, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !967, file: !968, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !765, file: !6, line: 465, baseType: !545, size: 64, offset: 6784)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !765, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !765, file: !6, line: 470, baseType: !416, size: 128, offset: 6912)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !765, file: !6, line: 471, baseType: !983, size: 64, offset: 7040)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !985, line: 33, size: 96, elements: !986)
!985 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!986 = !{!987, !988, !989, !990}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !984, file: !985, line: 37, baseType: !109, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !984, file: !985, line: 43, baseType: !109, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !984, file: !985, line: 45, baseType: !465, size: 16, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !985, line: 47, baseType: !465, size: 16, offset: 80)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !765, file: !6, line: 476, baseType: !992, size: 64, offset: 7104)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !994)
!994 = !{!995, !1011, !1012, !1013}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !993, file: !6, line: 379, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !998, line: 204, baseType: !999)
!998 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !998, line: 197, size: 192, elements: !1000)
!1000 = !{!1001, !1003, !1004, !1005, !1007, !1009}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !999, file: !998, line: 198, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !998, line: 21, baseType: !645)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !999, file: !998, line: 199, baseType: !457, size: 8, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !999, file: !998, line: 200, baseType: !457, size: 8, offset: 40)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !999, file: !998, line: 201, baseType: !1006, size: 16, offset: 48)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !998, line: 17, baseType: !464)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !999, file: !998, line: 202, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !998, line: 16, baseType: !649)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !999, file: !998, line: 203, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !998, line: 22, baseType: !649)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !993, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !993, file: !6, line: 381, baseType: !495, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !993, file: !6, line: 382, baseType: !495, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !765, file: !6, line: 477, baseType: !993, size: 256, offset: 7168)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !765, file: !6, line: 480, baseType: !1016, size: 64, offset: 7424)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !765, file: !6, line: 483, baseType: !1019, size: 64, offset: 7488)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !765, file: !6, line: 488, baseType: !495, size: 64, offset: 7552)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !765, file: !6, line: 492, baseType: !366, size: 64, offset: 7616)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !765, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !765, file: !6, line: 495, baseType: !366, size: 64, offset: 7744)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !765, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !765, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !765, file: !6, line: 500, baseType: !1028, size: 64, offset: 7872)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1030, line: 45, baseType: !1031)
!1030 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !765, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !765, file: !6, line: 504, baseType: !1034, size: 64, offset: 8000)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1037, line: 96, size: 192, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1038 = !{!1039, !1040, !1121, !1125}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1036, file: !1037, line: 97, baseType: !7, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1036, file: !1037, line: 98, baseType: !1041, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1037, line: 24, size: 3072, elements: !1043)
!1043 = !{!1044, !1046, !1047, !1048, !1049, !1073, !1074, !1075, !1076, !1094, !1106, !1107, !1118, !1119, !1120}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1042, file: !1037, line: 26, baseType: !1045, size: 128)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 128, elements: !954)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1042, file: !1037, line: 27, baseType: !1045, size: 128, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1042, file: !1037, line: 28, baseType: !109, size: 32, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1042, file: !1037, line: 31, baseType: !429, size: 32, align: 512, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1042, file: !1037, line: 32, baseType: !1050, size: 960, offset: 576)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1051, line: 206, size: 960, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1052 = !{!1053, !1062, !1067, !1069, !1070, !1072}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1050, file: !1051, line: 207, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !392, line: 232, size: 128, align: 64, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !392, line: 233, baseType: !1054, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1055, file: !392, line: 234, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !1054}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1050, file: !1051, line: 208, baseType: !1063, size: 256, offset: 64)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 256, elements: !1065)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1065 = !{!1066}
!1066 = !DISubrange(count: 4)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1050, file: !1051, line: 209, baseType: !1068, size: 256, offset: 320)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 256, elements: !1065)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1050, file: !1051, line: 213, baseType: !531, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1050, file: !1051, line: 215, baseType: !1071, size: 256, offset: 640)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 256, elements: !1065)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !1051, line: 216, baseType: !453, size: 8, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1042, file: !1037, line: 33, baseType: !545, size: 64, offset: 1536)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1042, file: !1037, line: 34, baseType: !545, size: 64, offset: 1600)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1042, file: !1037, line: 35, baseType: !915, size: 8, offset: 1664)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1042, file: !1037, line: 36, baseType: !1077, size: 320, offset: 1728)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1078, line: 11, size: 320, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1079 = !{!1080, !1087, !1088, !1093}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1077, file: !1078, line: 16, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !392, line: 198, size: 128, elements: !1082)
!1082 = !{!1083, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !392, line: 199, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1081, file: !392, line: 199, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1077, file: !1078, line: 17, baseType: !545, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1077, file: !1078, line: 18, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 19, baseType: !644, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1042, file: !1037, line: 37, baseType: !1095, size: 256, offset: 2048)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1096, line: 98, size: 256, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1095, file: !1096, line: 99, baseType: !839, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1095, file: !1096, line: 100, baseType: !416, size: 128, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1095, file: !1096, line: 101, baseType: !1101, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1096, line: 21, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1042, file: !1037, line: 38, baseType: !1055, size: 128, align: 64, offset: 2304)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1042, file: !1037, line: 39, baseType: !1108, size: 64, offset: 2432)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1037, line: 49, size: 768, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1109, file: !1037, line: 50, baseType: !429, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1109, file: !1037, line: 51, baseType: !1068, size: 256, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1109, file: !1037, line: 53, baseType: !1068, size: 256, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1109, file: !1037, line: 54, baseType: !545, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1109, file: !1037, line: 55, baseType: !1108, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1109, file: !1037, line: 56, baseType: !109, size: 32, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1109, file: !1037, line: 57, baseType: !109, size: 32, offset: 736)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1042, file: !1037, line: 40, baseType: !545, size: 64, offset: 2496)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1042, file: !1037, line: 42, baseType: !109, size: 32, offset: 2560)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1042, file: !1037, line: 43, baseType: !1035, size: 64, offset: 2624)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1036, file: !1037, line: 99, baseType: !1122, offset: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1123, line: 211, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1124 = !{}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1036, file: !1037, line: 100, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1037, line: 63, size: 3008, elements: !1128)
!1128 = !{!1129, !1130, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1160}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1127, file: !1037, line: 64, baseType: !1108, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1127, file: !1037, line: 65, baseType: !1131, size: 192, offset: 64)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 192, elements: !496)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1127, file: !1037, line: 67, baseType: !109, size: 32, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1127, file: !1037, line: 68, baseType: !835, size: 256, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1127, file: !1037, line: 69, baseType: !429, size: 32, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1127, file: !1037, line: 70, baseType: !835, size: 256, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1127, file: !1037, line: 71, baseType: !545, size: 64, offset: 896)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1127, file: !1037, line: 72, baseType: !545, size: 64, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1127, file: !1037, line: 73, baseType: !545, size: 64, offset: 1024)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1127, file: !1037, line: 74, baseType: !545, size: 64, offset: 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1127, file: !1037, line: 75, baseType: !545, size: 64, offset: 1152)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1127, file: !1037, line: 76, baseType: !545, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1127, file: !1037, line: 77, baseType: !545, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1127, file: !1037, line: 78, baseType: !545, size: 64, offset: 1344)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1127, file: !1037, line: 79, baseType: !915, size: 8, offset: 1408)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1127, file: !1037, line: 80, baseType: !545, size: 64, offset: 1472)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1127, file: !1037, line: 81, baseType: !835, size: 256, offset: 1536)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1127, file: !1037, line: 82, baseType: !784, size: 256, offset: 1792)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1127, file: !1037, line: 84, baseType: !391, size: 32, offset: 2048)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1127, file: !1037, line: 87, baseType: !545, size: 64, offset: 2112)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1127, file: !1037, line: 88, baseType: !545, size: 64, offset: 2176)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1127, file: !1037, line: 89, baseType: !1152, size: 704, offset: 2240)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1096, line: 111, size: 704, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1159}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1152, file: !1096, line: 112, baseType: !1095, size: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1152, file: !1096, line: 113, baseType: !1077, size: 320, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1152, file: !1096, line: 116, baseType: !1157, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1096, line: 18, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1152, file: !1096, line: 117, baseType: !109, size: 32, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1127, file: !1037, line: 90, baseType: !1035, size: 64, offset: 2944)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !765, file: !6, line: 515, baseType: !1162, size: 64, offset: 8064)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1164, line: 117, size: 128, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1163, file: !1164, line: 118, baseType: !831, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1163, file: !1164, line: 119, baseType: !831, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1163, file: !1164, line: 120, baseType: !531, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !765, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !765, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !765, file: !6, line: 520, baseType: !1172, size: 64, offset: 8192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !765, file: !6, line: 523, baseType: !1174, size: 64, offset: 8256)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !765, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !765, file: !6, line: 525, baseType: !1179, size: 64, offset: 8384)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !765, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !765, file: !6, line: 533, baseType: !366, size: 64, offset: 8512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !765, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !765, file: !6, line: 535, baseType: !1186, size: 64, offset: 8640)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !765, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !765, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !765, file: !6, line: 540, baseType: !1190, size: 64, offset: 8768)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1192, line: 32, size: 64, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1191, file: !1192, line: 33, baseType: !831, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1191, file: !1192, line: 34, baseType: !831, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !765, file: !6, line: 563, baseType: !416, size: 128, offset: 8832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !765, file: !6, line: 565, baseType: !416, size: 128, offset: 8960)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !765, file: !6, line: 568, baseType: !1199, size: 64, offset: 9088)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !765, file: !6, line: 570, baseType: !391, size: 32, offset: 9152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !14, line: 2382, baseType: !740, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !741, file: !14, line: 2383, baseType: !1205, size: 64, offset: 512)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !392, line: 194, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1205, file: !392, line: 195, baseType: !1084, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !741, file: !14, line: 2385, baseType: !1209, offset: 576)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1123, line: 206, elements: !1124)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !741, file: !14, line: 2386, baseType: !1209, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !741, file: !14, line: 2387, baseType: !1209, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !741, file: !14, line: 2388, baseType: !1213, offset: 576)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, elements: !496)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !741, file: !14, line: 2390, baseType: !1209, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !741, file: !14, line: 2391, baseType: !1209, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !741, file: !14, line: 2392, baseType: !1209, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !741, file: !14, line: 2393, baseType: !1209, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !727, file: !14, line: 1197, baseType: !1219, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1222)
!1222 = !{!1223, !1227, !1231, !1232, !1236, !1242, !1246, !1247, !1248, !1252, !1256, !1260, !1261, !1262, !1268, !1272, !1273, !3477, !3478, !3479, !3480, !3484, !3488, !3535, !3550, !3551}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1221, file: !14, line: 2058, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!575, !726}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1221, file: !14, line: 2059, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !575}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1221, file: !14, line: 2060, baseType: !1228, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1221, file: !14, line: 2062, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !575, !109}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1221, file: !14, line: 2063, baseType: !1237, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!109, !575, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1221, file: !14, line: 2064, baseType: !1243, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!109, !575}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1221, file: !14, line: 2065, baseType: !1228, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1221, file: !14, line: 2066, baseType: !760, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1221, file: !14, line: 2067, baseType: !1249, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!109, !726, !109}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1221, file: !14, line: 2068, baseType: !1253, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!109, !726, !13}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1221, file: !14, line: 2069, baseType: !1257, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!109, !726}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1221, file: !14, line: 2070, baseType: !1253, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1221, file: !14, line: 2071, baseType: !1257, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1221, file: !14, line: 2072, baseType: !1263, size: 64, offset: 832)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!109, !610, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1221, file: !14, line: 2073, baseType: !1269, size: 64, offset: 896)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!109, !726, !964, !495}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1221, file: !14, line: 2074, baseType: !760, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1221, file: !14, line: 2076, baseType: !1274, size: 64, offset: 1024)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!109, !1277, !610}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1279, line: 17, size: 960, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1311, !1312, !3476}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1278, file: !1279, line: 18, baseType: !495, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1278, file: !1279, line: 19, baseType: !542, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1278, file: !1279, line: 20, baseType: !542, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1278, file: !1279, line: 21, baseType: !542, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1278, file: !1279, line: 22, baseType: !542, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1278, file: !1279, line: 23, baseType: !736, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1278, file: !1279, line: 24, baseType: !736, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1278, file: !1279, line: 25, baseType: !835, size: 256, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1278, file: !1279, line: 26, baseType: !1290, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1279, line: 32, size: 256, elements: !1293)
!1293 = !{!1294, !1299, !1303, !1307}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1292, file: !1279, line: 33, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!366, !1277, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1292, file: !1279, line: 34, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1277, !366}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1292, file: !1279, line: 35, baseType: !1304, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!366, !1277, !366, !1298}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1292, file: !1279, line: 36, baseType: !1308, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!109, !1277, !366}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1278, file: !1279, line: 27, baseType: !109, size: 32, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1278, file: !1279, line: 28, baseType: !1313, size: 64, offset: 832)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1316)
!1316 = !{!1317, !1328, !1329, !1331, !1332, !1333, !1334, !1335, !3290, !3291, !3300, !3306, !3307, !3466, !3467, !3468, !3469, !3471, !3472, !3475}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !14, line: 995, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1315, file: !14, line: 995, size: 128, elements: !1319)
!1319 = !{!1320, !1326, !1327}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1318, file: !14, line: 996, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1322, line: 60, size: 64, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1321, file: !1322, line: 61, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1318, file: !14, line: 997, baseType: !1055, size: 128, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1318, file: !14, line: 998, baseType: !7, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1315, file: !14, line: 1005, baseType: !429, size: 32, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1315, file: !14, line: 1006, baseType: !1330, size: 32, offset: 160)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !392, line: 156, baseType: !7)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1315, file: !14, line: 1007, baseType: !839, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1315, file: !14, line: 1008, baseType: !835, size: 256, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1315, file: !14, line: 1009, baseType: !736, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1315, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1315, file: !14, line: 1011, baseType: !1336, size: 256, offset: 640)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1337)
!1337 = !{!1338, !1359, !3286, !3287, !3288, !3289}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1336, file: !14, line: 949, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1340, line: 34, baseType: !1341)
!1340 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 25, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1341, file: !1340, line: 26, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1345, line: 27, baseType: !1346)
!1345 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1345, line: 13, size: 64, elements: !1347)
!1347 = !{!1348, !1358}
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1345, line: 14, baseType: !1349, size: 32)
!1349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1345, line: 14, size: 32, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1349, file: !1345, line: 15, baseType: !391, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1349, file: !1345, line: 16, baseType: !1353, size: 32)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1349, file: !1345, line: 16, size: 32, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1353, file: !1345, line: 18, baseType: !453, size: 8)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1353, file: !1345, line: 19, baseType: !1357, size: 24, offset: 8)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 24, elements: !496)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1346, file: !1345, line: 26, baseType: !441, size: 32, offset: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1336, file: !14, line: 950, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1368, !1369, !1376, !1377}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1361, file: !61, line: 61, baseType: !386, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1361, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1361, file: !61, line: 63, baseType: !429, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1361, file: !61, line: 65, baseType: !1367, size: 256, offset: 128)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1205, size: 256, elements: !1065)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1361, file: !61, line: 66, baseType: !1205, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1361, file: !61, line: 68, baseType: !1370, size: 192, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1371, line: 41, baseType: !1372)
!1371 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1371, line: 37, size: 192, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1372, file: !1371, line: 38, baseType: !429, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1372, file: !1371, line: 39, baseType: !416, size: 128, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1361, file: !61, line: 69, baseType: !1055, size: 128, align: 64, offset: 640)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1361, file: !61, line: 70, baseType: !1378, offset: 768)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, elements: !1864)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1379, file: !61, line: 55, baseType: !109, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1379, file: !61, line: 56, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1385, line: 26, size: 1152, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1386 = !{!1387, !1401, !1402, !1403, !3262, !3266, !3267, !3268, !3271, !3272, !3273, !3274, !3285}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1384, file: !1385, line: 27, baseType: !1388, size: 192)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1389, line: 19, size: 192, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1390 = !{!1391, !1399, !1400}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1388, file: !1389, line: 20, baseType: !1392, size: 128)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1393, line: 296, size: 128, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1394 = !{!1395, !1396, !1398}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1392, file: !1393, line: 297, baseType: !429, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1392, file: !1393, line: 299, baseType: !1397, size: 32, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !392, line: 154, baseType: !7)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1392, file: !1393, line: 300, baseType: !366, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1388, file: !1389, line: 21, baseType: !7, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1388, file: !1389, line: 22, baseType: !7, size: 32, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1384, file: !1385, line: 28, baseType: !1055, size: 128, align: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1384, file: !1385, line: 29, baseType: !7, size: 32, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1384, file: !1385, line: 30, baseType: !1404, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1406, line: 746, size: 58368, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1407 = !{!1408, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1488, !1499, !1594, !1598, !1601, !1632, !1633, !1634, !1635, !1646, !1648, !1649, !1650, !1651, !1652, !1653, !1664, !1665, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1682, !1683, !1690, !1691, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1945, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1993, !1999, !2181, !2182, !2183, !2184, !2188, !2191, !2198, !2203, !2206, !2209, !2212, !2238, !2376, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2414, !2415, !2416, !2425, !2433, !2434, !2435, !2436, !2437, !2442, !2443, !2444, !2447, !2448, !2451, !2454, !2457, !2465, !2468, !2469, !2555, !2556, !2557, !2558, !2559, !2565, !2566, !2567, !2568, !2571, !2572, !2575, !2578, !2579, !2582, !2583, !2584, !2587, !2588, !2589, !2592, !2593, !2594, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2626, !2629, !2918, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2930, !3002, !3004, !3005, !3006, !3007, !3008, !3009, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3039, !3040, !3041}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1405, file: !1406, line: 752, baseType: !1409, size: 192)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1410, line: 56, size: 192, elements: !1411)
!1410 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1411 = !{!1412, !1413, !1414, !1415}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1409, file: !1410, line: 57, baseType: !545, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1409, file: !1410, line: 58, baseType: !545, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1409, file: !1410, line: 59, baseType: !644, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1409, file: !1410, line: 61, baseType: !644, size: 32, offset: 160)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1405, file: !1406, line: 754, baseType: !7, size: 32, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1405, file: !1406, line: 767, baseType: !366, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1405, file: !1406, line: 768, baseType: !386, size: 32, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1406, line: 770, baseType: !7, size: 32, offset: 352)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1405, file: !1406, line: 771, baseType: !7, size: 32, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1405, file: !1406, line: 774, baseType: !109, size: 32, offset: 416)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1405, file: !1406, line: 775, baseType: !1423, size: 128, offset: 448)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1424, line: 58, size: 128, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1425 = !{!1426, !1427, !1432, !1433}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1423, file: !1424, line: 59, baseType: !1321, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 60, baseType: !1428, size: 32, offset: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 60, size: 32, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1428, file: !1424, line: 61, baseType: !7, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1428, file: !1424, line: 62, baseType: !391, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1423, file: !1424, line: 65, baseType: !463, size: 16, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1423, file: !1424, line: 65, baseType: !463, size: 16, offset: 112)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1405, file: !1406, line: 776, baseType: !7, size: 32, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1405, file: !1406, line: 777, baseType: !545, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1405, file: !1406, line: 778, baseType: !1404, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1405, file: !1406, line: 787, baseType: !109, size: 32, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1405, file: !1406, line: 788, baseType: !109, size: 32, offset: 800)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1405, file: !1406, line: 790, baseType: !109, size: 32, offset: 832)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1405, file: !1406, line: 792, baseType: !109, size: 32, offset: 864)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1405, file: !1406, line: 793, baseType: !109, size: 32, offset: 896)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1405, file: !1406, line: 794, baseType: !109, size: 32, offset: 928)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1405, file: !1406, line: 795, baseType: !7, size: 32, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1405, file: !1406, line: 797, baseType: !1445, size: 2048, offset: 1024)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1406, line: 551, size: 2048, elements: !1446)
!1446 = !{!1447, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1467, !1470, !1471, !1472}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1445, file: !1406, line: 553, baseType: !1448, size: 128)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1406, line: 411, size: 128, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1448, file: !1406, line: 412, baseType: !545, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1448, file: !1406, line: 413, baseType: !644, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1445, file: !1406, line: 554, baseType: !947, size: 192, align: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1445, file: !1406, line: 555, baseType: !648, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1445, file: !1406, line: 556, baseType: !648, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1445, file: !1406, line: 558, baseType: !416, size: 128, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1445, file: !1406, line: 559, baseType: !7, size: 32, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1445, file: !1406, line: 561, baseType: !648, size: 64, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1445, file: !1406, line: 562, baseType: !648, size: 64, offset: 704)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1445, file: !1406, line: 563, baseType: !648, size: 64, offset: 768)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1445, file: !1406, line: 564, baseType: !648, size: 64, offset: 832)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1445, file: !1406, line: 565, baseType: !845, size: 64, offset: 896)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1445, file: !1406, line: 566, baseType: !648, size: 64, offset: 960)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1445, file: !1406, line: 568, baseType: !648, size: 64, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1445, file: !1406, line: 571, baseType: !109, size: 32, offset: 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1445, file: !1406, line: 572, baseType: !1466, size: 64, offset: 1152)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1445, file: !1406, line: 574, baseType: !1468, size: 64, offset: 1216)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1406, line: 49, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1445, file: !1406, line: 576, baseType: !1468, size: 64, offset: 1280)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1445, file: !1406, line: 578, baseType: !545, size: 64, offset: 1344)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1445, file: !1406, line: 588, baseType: !1473, size: 512, align: 512, offset: 1536)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1406, line: 497, size: 512, align: 512, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1473, file: !1406, line: 498, baseType: !648, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1473, file: !1406, line: 499, baseType: !648, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1473, file: !1406, line: 500, baseType: !648, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1473, file: !1406, line: 501, baseType: !644, size: 32, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1473, file: !1406, line: 502, baseType: !644, size: 32, offset: 224)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1473, file: !1406, line: 503, baseType: !545, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1473, file: !1406, line: 504, baseType: !545, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1473, file: !1406, line: 505, baseType: !545, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1473, file: !1406, line: 506, baseType: !1484, size: 64, align: 64, offset: 448)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1406, line: 445, size: 64, align: 64, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1484, file: !1406, line: 446, baseType: !7, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1484, file: !1406, line: 447, baseType: !7, size: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1405, file: !1406, line: 798, baseType: !1489, size: 384, offset: 3072)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1406, line: 592, size: 384, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1489, file: !1406, line: 593, baseType: !416, size: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1489, file: !1406, line: 594, baseType: !545, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1489, file: !1406, line: 595, baseType: !545, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1489, file: !1406, line: 596, baseType: !7, size: 32, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1489, file: !1406, line: 597, baseType: !465, size: 16, offset: 288)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1489, file: !1406, line: 598, baseType: !465, size: 16, offset: 304)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1489, file: !1406, line: 600, baseType: !1498, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1405, file: !1406, line: 799, baseType: !1500, size: 1792, offset: 3456)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1406, line: 610, size: 1792, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1591, !1592}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1500, file: !1406, line: 611, baseType: !947, size: 192, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1500, file: !1406, line: 618, baseType: !648, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1500, file: !1406, line: 619, baseType: !648, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1500, file: !1406, line: 620, baseType: !648, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1500, file: !1406, line: 621, baseType: !648, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1500, file: !1406, line: 622, baseType: !648, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1500, file: !1406, line: 629, baseType: !845, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1500, file: !1406, line: 630, baseType: !648, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !1406, line: 631, baseType: !7, size: 32, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1500, file: !1406, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1500, file: !1406, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1500, file: !1406, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1500, file: !1406, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1500, file: !1406, line: 662, baseType: !1516, size: 512, offset: 704)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1517)
!1517 = !{!1518, !1526, !1527, !1532, !1587, !1588, !1589, !1590}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1516, file: !19, line: 119, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1520, line: 9, size: 256, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1519, file: !1520, line: 10, baseType: !947, size: 192, align: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1519, file: !1520, line: 11, baseType: !1524, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1525, line: 29, baseType: !845)
!1525 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1516, file: !19, line: 120, baseType: !1524, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1516, file: !19, line: 121, baseType: !1528, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!18, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1516, file: !19, line: 122, baseType: !1533, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1535)
!1535 = !{!1536, !1561, !1562, !1565, !1570, !1571, !1582, !1586}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1534, file: !19, line: 160, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1538, file: !19, line: 216, baseType: !793, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1538, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1538, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1538, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1538, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1538, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1538, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1538, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1538, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1538, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1538, file: !19, line: 227, baseType: !465, size: 16, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1538, file: !19, line: 228, baseType: !465, size: 16, offset: 208)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1538, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1538, file: !19, line: 235, baseType: !1524, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1538, file: !19, line: 236, baseType: !1531, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1538, file: !19, line: 237, baseType: !1524, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1538, file: !19, line: 238, baseType: !1531, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1538, file: !19, line: 239, baseType: !1558, size: 4096, align: 512, offset: 512)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1534, size: 4096, align: 512, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 8)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1534, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1534, file: !19, line: 162, baseType: !1563, size: 32, offset: 96)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !392, line: 32, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !529, line: 96, baseType: !109)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1534, file: !19, line: 163, baseType: !1566, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !617, line: 274, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !617, line: 274, size: 32, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1567, file: !617, line: 274, baseType: !621, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1534, file: !19, line: 164, baseType: !1531, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1534, file: !19, line: 165, baseType: !1572, size: 128, offset: 256)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1520, line: 14, size: 128, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1572, file: !1520, line: 15, baseType: !1575, size: 128)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !948, line: 26, size: 128, elements: !1576)
!1576 = !{!1577, !1581}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1575, file: !948, line: 27, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !948, line: 12, size: 64, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1578, file: !948, line: 13, baseType: !952, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1575, file: !948, line: 28, baseType: !952, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1534, file: !19, line: 166, baseType: !1583, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1524}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1534, file: !19, line: 167, baseType: !1524, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1516, file: !19, line: 123, baseType: !453, size: 8, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1516, file: !19, line: 124, baseType: !453, size: 8, offset: 456)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1516, file: !19, line: 125, baseType: !453, size: 8, offset: 464)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1516, file: !19, line: 126, baseType: !453, size: 8, offset: 472)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1500, file: !1406, line: 671, baseType: !1516, size: 512, offset: 1216)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1500, file: !1406, line: 679, baseType: !1593, size: 64, offset: 1728)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1405, file: !1406, line: 800, baseType: !1595, size: 64, offset: 5248)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1406, line: 800, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1405, file: !1406, line: 809, baseType: !1599, size: 64, offset: 5312)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1406, line: 70, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1405, file: !1406, line: 825, baseType: !1602, size: 2048, align: 512, offset: 5632)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1406, line: 509, size: 2048, align: 512, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1602, file: !1406, line: 511, baseType: !648, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1602, file: !1406, line: 512, baseType: !648, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1602, file: !1406, line: 513, baseType: !648, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1602, file: !1406, line: 514, baseType: !648, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1602, file: !1406, line: 515, baseType: !648, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1602, file: !1406, line: 516, baseType: !648, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1602, file: !1406, line: 518, baseType: !648, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1602, file: !1406, line: 519, baseType: !648, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1602, file: !1406, line: 520, baseType: !845, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1602, file: !1406, line: 522, baseType: !648, size: 64, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1602, file: !1406, line: 523, baseType: !648, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1602, file: !1406, line: 524, baseType: !845, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1602, file: !1406, line: 526, baseType: !845, size: 64, offset: 768)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1602, file: !1406, line: 527, baseType: !648, size: 64, offset: 832)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1602, file: !1406, line: 529, baseType: !648, size: 64, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1602, file: !1406, line: 530, baseType: !648, size: 64, offset: 960)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1602, file: !1406, line: 531, baseType: !648, size: 64, offset: 1024)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1602, file: !1406, line: 532, baseType: !648, size: 64, offset: 1088)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1602, file: !1406, line: 533, baseType: !648, size: 64, offset: 1152)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1602, file: !1406, line: 535, baseType: !648, size: 64, offset: 1216)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1602, file: !1406, line: 536, baseType: !648, size: 64, offset: 1280)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1602, file: !1406, line: 537, baseType: !648, size: 64, offset: 1344)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1602, file: !1406, line: 538, baseType: !648, size: 64, offset: 1408)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1602, file: !1406, line: 539, baseType: !648, size: 64, offset: 1472)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1602, file: !1406, line: 540, baseType: !648, size: 64, offset: 1536)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1602, file: !1406, line: 541, baseType: !648, size: 64, offset: 1600)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1602, file: !1406, line: 542, baseType: !648, size: 64, offset: 1664)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1602, file: !1406, line: 543, baseType: !648, size: 64, offset: 1728)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1405, file: !1406, line: 833, baseType: !7, size: 32, offset: 7680)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1405, file: !1406, line: 836, baseType: !7, size: 32, offset: 7712)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1405, file: !1406, line: 837, baseType: !109, size: 32, offset: 7744)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1405, file: !1406, line: 838, baseType: !1636, size: 64, offset: 7808)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1639, line: 19, baseType: !1640)
!1639 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1639, line: 19, size: 64, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1640, file: !1639, line: 19, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 64, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 1)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1405, file: !1406, line: 839, baseType: !1647, size: 64, offset: 7872)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1405, file: !1406, line: 840, baseType: !1638, size: 64, offset: 7936)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1405, file: !1406, line: 841, baseType: !366, size: 64, offset: 8000)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1405, file: !1406, line: 843, baseType: !465, size: 16, offset: 8064)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1405, file: !1406, line: 845, baseType: !465, size: 16, offset: 8080)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1405, file: !1406, line: 848, baseType: !109, size: 32, offset: 8096)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1405, file: !1406, line: 849, baseType: !1654, size: 32, offset: 8128)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1406, line: 718, size: 32, elements: !1655)
!1655 = !{!1656, !1663}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1654, file: !1406, line: 724, baseType: !1657, size: 32)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1406, line: 719, size: 32, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1657, file: !1406, line: 720, baseType: !453, size: 8)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1657, file: !1406, line: 721, baseType: !453, size: 8, offset: 8)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1657, file: !1406, line: 722, baseType: !453, size: 8, offset: 16)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1657, file: !1406, line: 723, baseType: !453, size: 8, offset: 24)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1654, file: !1406, line: 725, baseType: !644, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1405, file: !1406, line: 850, baseType: !416, size: 128, offset: 8192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1405, file: !1406, line: 851, baseType: !1666, size: 64, offset: 8320)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1406, line: 60, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1405, file: !1406, line: 855, baseType: !545, size: 64, offset: 8384)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1405, file: !1406, line: 856, baseType: !453, size: 8, offset: 8448)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1405, file: !1406, line: 857, baseType: !453, size: 8, offset: 8456)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1405, file: !1406, line: 858, baseType: !109, size: 32, offset: 8480)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1405, file: !1406, line: 859, baseType: !416, size: 128, offset: 8512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1405, file: !1406, line: 860, baseType: !109, size: 32, offset: 8640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1405, file: !1406, line: 861, baseType: !416, size: 128, offset: 8704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1405, file: !1406, line: 873, baseType: !1676, size: 256, offset: 8832)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1406, line: 376, size: 256, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1676, file: !1406, line: 381, baseType: !545, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1676, file: !1406, line: 384, baseType: !650, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1676, file: !1406, line: 389, baseType: !650, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1676, file: !1406, line: 392, baseType: !650, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1405, file: !1406, line: 875, baseType: !416, size: 128, offset: 9088)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1405, file: !1406, line: 877, baseType: !1684, size: 320, offset: 9216)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1685, line: 86, size: 320, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1684, file: !1685, line: 87, baseType: !109, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1684, file: !1685, line: 88, baseType: !416, size: 128, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1684, file: !1685, line: 89, baseType: !416, size: 128, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1405, file: !1406, line: 878, baseType: !947, size: 192, align: 64, offset: 9536)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1405, file: !1406, line: 881, baseType: !1692, size: 64, offset: 9728)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1694)
!1694 = !{!1695, !1862}
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !38, line: 734, baseType: !1696, size: 10240)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !38, line: 734, size: 10240, elements: !1697)
!1697 = !{!1698, !1702, !1715, !1720, !1721, !1722, !1723, !1724, !1725, !1733, !1734, !1735, !1741, !1742, !1743, !1744, !1745, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1782, !1792, !1795, !1840, !1841, !1842, !1845, !1848, !1849, !1852, !1853, !1854, !1860, !1861}
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !38, line: 739, baseType: !1699, size: 512, align: 512)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !38, line: 739, size: 512, align: 512, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1699, file: !38, line: 747, baseType: !391, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1696, file: !38, line: 750, baseType: !1703, size: 128, offset: 512)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1704, line: 218, size: 128, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1705 = !{!1706, !1713, !1714}
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !1704, line: 219, baseType: !1707, size: 32)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !1704, line: 219, size: 32, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1707, file: !1704, line: 220, baseType: !429, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1707, file: !1704, line: 221, baseType: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1704, line: 197, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1704, line: 197, elements: !1124)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1703, file: !1704, line: 223, baseType: !7, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1703, file: !1704, line: 224, baseType: !366, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1696, file: !38, line: 752, baseType: !1716, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!545, !1719, !545, !545, !545, !545}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1696, file: !38, line: 756, baseType: !545, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1696, file: !38, line: 757, baseType: !545, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1696, file: !38, line: 760, baseType: !545, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1696, file: !38, line: 761, baseType: !545, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1696, file: !38, line: 763, baseType: !545, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1696, file: !38, line: 764, baseType: !1726, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !346, line: 299, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 299, size: 64, elements: !1729)
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1728, file: !346, line: 299, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1732, line: 18, baseType: !545)
!1732 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1696, file: !38, line: 773, baseType: !391, size: 32, offset: 1088)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1696, file: !38, line: 785, baseType: !391, size: 32, offset: 1120)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1696, file: !38, line: 795, baseType: !1736, size: 64, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1737, file: !38, line: 727, baseType: !648, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1737, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1696, file: !38, line: 801, baseType: !545, size: 64, offset: 1216)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1696, file: !38, line: 804, baseType: !839, size: 64, offset: 1280)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1696, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1696, file: !38, line: 808, baseType: !429, size: 32, offset: 1376)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1696, file: !38, line: 823, baseType: !1746, size: 320, offset: 1408)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1747, line: 48, size: 320, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1748 = !{!1749, !1750, !1751, !1752, !1753}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1746, file: !1747, line: 49, baseType: !839, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1746, file: !1747, line: 55, baseType: !839, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1746, file: !1747, line: 57, baseType: !849, size: 32, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1746, file: !1747, line: 59, baseType: !793, size: 32, offset: 160)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1746, file: !1747, line: 60, baseType: !416, size: 128, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1696, file: !38, line: 825, baseType: !416, size: 128, offset: 1728)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1696, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1696, file: !38, line: 849, baseType: !545, size: 64, offset: 1920)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1696, file: !38, line: 850, baseType: !545, size: 64, offset: 1984)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1696, file: !38, line: 852, baseType: !545, size: 64, offset: 2048)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1696, file: !38, line: 853, baseType: !545, size: 64, offset: 2112)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1696, file: !38, line: 854, baseType: !841, size: 64, offset: 2176)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1696, file: !38, line: 855, baseType: !545, size: 64, offset: 2240)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1696, file: !38, line: 856, baseType: !545, size: 64, offset: 2304)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1696, file: !38, line: 857, baseType: !545, size: 64, offset: 2368)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1696, file: !38, line: 858, baseType: !545, size: 64, offset: 2432)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1696, file: !38, line: 865, baseType: !621, size: 32, offset: 2496)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1696, file: !38, line: 867, baseType: !429, size: 32, offset: 2528)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1696, file: !38, line: 869, baseType: !545, size: 64, offset: 2560)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1696, file: !38, line: 869, baseType: !545, size: 64, offset: 2624)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1696, file: !38, line: 869, baseType: !545, size: 64, offset: 2688)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1696, file: !38, line: 869, baseType: !545, size: 64, offset: 2752)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1696, file: !38, line: 870, baseType: !545, size: 64, offset: 2816)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1696, file: !38, line: 870, baseType: !545, size: 64, offset: 2880)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1696, file: !38, line: 870, baseType: !545, size: 64, offset: 2944)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1696, file: !38, line: 871, baseType: !545, size: 64, offset: 3008)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1696, file: !38, line: 871, baseType: !545, size: 64, offset: 3072)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1696, file: !38, line: 871, baseType: !545, size: 64, offset: 3136)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1696, file: !38, line: 871, baseType: !545, size: 64, offset: 3200)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1696, file: !38, line: 873, baseType: !1779, size: 3328, offset: 3264)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 3328, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 52)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1696, file: !38, line: 875, baseType: !1783, size: 1280, offset: 6592)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 1280, elements: !1065)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1785, line: 22, size: 320, elements: !1786)
!1785 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1786 = !{!1787, !1788, !1789, !1790}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1784, file: !1785, line: 23, baseType: !793, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1784, file: !1785, line: 24, baseType: !845, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1784, file: !1785, line: 26, baseType: !416, size: 128, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1784, file: !1785, line: 28, baseType: !1791, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1696, file: !38, line: 877, baseType: !1793, size: 64, offset: 7872)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1696, file: !38, line: 880, baseType: !1796, size: 1088, offset: 7936)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1797, line: 72, baseType: !1798)
!1797 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 23, size: 1088, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1807, !1808, !1809, !1810, !1837, !1838, !1839}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1798, file: !1797, line: 28, baseType: !648, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1798, file: !1797, line: 38, baseType: !841, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1798, file: !1797, line: 40, baseType: !545, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1798, file: !1797, line: 43, baseType: !1746, size: 320, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1798, file: !1797, line: 44, baseType: !1805, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1797, line: 44, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !1797, line: 48, baseType: !545, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1798, file: !1797, line: 59, baseType: !835, size: 256, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1798, file: !1797, line: 60, baseType: !366, size: 64, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1798, file: !1797, line: 61, baseType: !1811, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1814, line: 13, size: 1216, elements: !1815)
!1814 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1821, !1822, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1813, file: !1814, line: 14, baseType: !366, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1813, file: !1814, line: 15, baseType: !545, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1813, file: !1814, line: 17, baseType: !545, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1813, file: !1814, line: 17, baseType: !545, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1813, file: !1814, line: 18, baseType: !545, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1813, file: !1814, line: 18, baseType: !545, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1813, file: !1814, line: 19, baseType: !1823, size: 64, offset: 384)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1813, file: !1814, line: 21, baseType: !531, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1813, file: !1814, line: 23, baseType: !531, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1813, file: !1814, line: 24, baseType: !531, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1813, file: !1814, line: 25, baseType: !531, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1813, file: !1814, line: 26, baseType: !531, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1813, file: !1814, line: 27, baseType: !531, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1813, file: !1814, line: 28, baseType: !531, size: 64, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1813, file: !1814, line: 29, baseType: !531, size: 64, offset: 896)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1813, file: !1814, line: 30, baseType: !531, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1813, file: !1814, line: 31, baseType: !531, size: 64, offset: 1024)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1813, file: !1814, line: 32, baseType: !531, size: 64, offset: 1088)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1813, file: !1814, line: 33, baseType: !531, size: 64, offset: 1152)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1798, file: !1797, line: 63, baseType: !391, size: 32, offset: 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1798, file: !1797, line: 69, baseType: !463, size: 16, offset: 1056)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1798, file: !1797, line: 70, baseType: !971, size: 16, offset: 1072)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !38, line: 882, baseType: !545, size: 64, offset: 9024)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1696, file: !38, line: 885, baseType: !429, size: 32, offset: 9088)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1696, file: !38, line: 886, baseType: !1843, size: 64, offset: 9152)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1696, file: !38, line: 901, baseType: !1846, size: 64, offset: 9216)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1696, file: !38, line: 904, baseType: !1719, size: 64, offset: 9280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1696, file: !38, line: 906, baseType: !1850, size: 64, offset: 9344)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1696, file: !38, line: 930, baseType: !391, size: 32, offset: 9408)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1696, file: !38, line: 933, baseType: !391, size: 32, offset: 9440)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1696, file: !38, line: 935, baseType: !1855, size: 64, offset: 9472)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !54, line: 103, size: 64, elements: !1856)
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1855, file: !54, line: 104, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !54, line: 101, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1696, file: !38, line: 940, baseType: !839, size: 64, offset: 9536)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1696, file: !38, line: 942, baseType: !1095, size: 256, offset: 9600)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1693, file: !38, line: 986, baseType: !1863, offset: 10240)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, elements: !1864)
!1864 = !{!1865}
!1865 = !DISubrange(count: -1)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1405, file: !1406, line: 882, baseType: !1692, size: 64, offset: 9792)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1405, file: !1406, line: 884, baseType: !109, size: 32, offset: 9856)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1405, file: !1406, line: 885, baseType: !109, size: 32, offset: 9888)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1405, file: !1406, line: 886, baseType: !109, size: 32, offset: 9920)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1405, file: !1406, line: 888, baseType: !109, size: 32, offset: 9952)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1405, file: !1406, line: 890, baseType: !545, size: 64, offset: 9984)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1405, file: !1406, line: 893, baseType: !7, size: 32, offset: 10048)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1405, file: !1406, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1405, file: !1406, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1405, file: !1406, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1405, file: !1406, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1405, file: !1406, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1405, file: !1406, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1405, file: !1406, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1405, file: !1406, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1405, file: !1406, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1405, file: !1406, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1405, file: !1406, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1405, file: !1406, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1405, file: !1406, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1405, file: !1406, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1405, file: !1406, line: 969, baseType: !545, size: 64, offset: 10176)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1405, file: !1406, line: 971, baseType: !1889, size: 448, offset: 10240)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !24, line: 25, size: 448, elements: !1890)
!1890 = !{!1891, !1892, !1897}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1889, file: !24, line: 26, baseType: !545, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1889, file: !24, line: 27, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!531, !1896}
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !24, line: 28, baseType: !1898, size: 320, offset: 128)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1889, file: !24, line: 28, size: 320, elements: !1899)
!1899 = !{!1900, !1910, !1935}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1898, file: !24, line: 37, baseType: !1901, size: 320)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1898, file: !24, line: 30, size: 320, elements: !1902)
!1902 = !{!1903, !1905, !1906, !1907, !1908, !1909}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1901, file: !24, line: 31, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1901, file: !24, line: 32, baseType: !644, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !24, line: 33, baseType: !644, size: 32, offset: 96)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1901, file: !24, line: 34, baseType: !644, size: 32, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1901, file: !24, line: 35, baseType: !648, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1901, file: !24, line: 36, baseType: !1904, size: 64, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1898, file: !24, line: 47, baseType: !1911, size: 192)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1898, file: !24, line: 39, size: 192, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1934}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1911, file: !24, line: 40, baseType: !1563, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1911, file: !24, line: 41, baseType: !23, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !24, line: 42, baseType: !1916, size: 64, offset: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !24, line: 42, size: 64, elements: !1917)
!1917 = !{!1918, !1926}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1916, file: !24, line: 43, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1921, line: 7, size: 128, elements: !1922)
!1921 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1922 = !{!1923, !1925}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1920, file: !1921, line: 8, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !529, line: 93, baseType: !738)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1920, file: !1921, line: 9, baseType: !738, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1916, file: !24, line: 44, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1929, line: 7, size: 64, elements: !1930)
!1929 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1930 = !{!1931, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1928, file: !1929, line: 8, baseType: !1932, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1929, line: 5, baseType: !831)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1928, file: !1929, line: 9, baseType: !831, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1911, file: !24, line: 46, baseType: !648, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1898, file: !24, line: 55, baseType: !1936, size: 256)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1898, file: !24, line: 49, size: 256, elements: !1937)
!1937 = !{!1938, !1941, !1942, !1943, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1936, file: !24, line: 50, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !24, line: 14, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1936, file: !24, line: 51, baseType: !109, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1936, file: !24, line: 52, baseType: !109, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1936, file: !24, line: 53, baseType: !545, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1936, file: !24, line: 54, baseType: !545, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1405, file: !1406, line: 973, baseType: !1946, size: 32, offset: 10688)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !392, line: 27, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !529, line: 28, baseType: !109)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1405, file: !1406, line: 974, baseType: !1946, size: 32, offset: 10720)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1405, file: !1406, line: 978, baseType: !545, size: 64, offset: 10752)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1405, file: !1406, line: 987, baseType: !1404, size: 64, offset: 10816)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1405, file: !1406, line: 990, baseType: !1404, size: 64, offset: 10880)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1405, file: !1406, line: 995, baseType: !416, size: 128, offset: 10944)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1405, file: !1406, line: 996, baseType: !416, size: 128, offset: 11072)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1405, file: !1406, line: 997, baseType: !1404, size: 64, offset: 11200)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1405, file: !1406, line: 1005, baseType: !416, size: 128, offset: 11264)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1405, file: !1406, line: 1006, baseType: !416, size: 128, offset: 11392)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1405, file: !1406, line: 1009, baseType: !1360, size: 64, offset: 11520)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1405, file: !1406, line: 1010, baseType: !1959, size: 512, offset: 11584)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 512, elements: !1065)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1405, file: !1406, line: 1011, baseType: !416, size: 128, offset: 12096)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1405, file: !1406, line: 1012, baseType: !416, size: 128, offset: 12224)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1405, file: !1406, line: 1014, baseType: !783, size: 64, offset: 12352)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1405, file: !1406, line: 1017, baseType: !964, size: 64, offset: 12416)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1405, file: !1406, line: 1020, baseType: !964, size: 64, offset: 12480)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1405, file: !1406, line: 1023, baseType: !366, size: 64, offset: 12544)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1405, file: !1406, line: 1025, baseType: !648, size: 64, offset: 12608)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1405, file: !1406, line: 1026, baseType: !648, size: 64, offset: 12672)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1405, file: !1406, line: 1031, baseType: !648, size: 64, offset: 12736)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1405, file: !1406, line: 1032, baseType: !1970, size: 192, offset: 12800)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1406, line: 324, size: 192, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1970, file: !1406, line: 326, baseType: !648, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1970, file: !1406, line: 327, baseType: !648, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1970, file: !1406, line: 328, baseType: !793, size: 32, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1405, file: !1406, line: 1041, baseType: !545, size: 64, offset: 12992)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1405, file: !1406, line: 1042, baseType: !545, size: 64, offset: 13056)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1405, file: !1406, line: 1045, baseType: !648, size: 64, offset: 13120)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1405, file: !1406, line: 1048, baseType: !648, size: 64, offset: 13184)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1405, file: !1406, line: 1051, baseType: !545, size: 64, offset: 13248)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1405, file: !1406, line: 1052, baseType: !545, size: 64, offset: 13312)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1405, file: !1406, line: 1055, baseType: !1982, size: 640, offset: 13376)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1983, line: 132, size: 640, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1984 = !{!1985, !1991, !1992}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1982, file: !1983, line: 133, baseType: !1986, size: 576)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1987, size: 576, elements: !496)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1983, line: 117, size: 192, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1987, file: !1983, line: 118, baseType: !648, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1987, file: !1983, line: 119, baseType: !1572, size: 128, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1982, file: !1983, line: 134, baseType: !7, size: 32, offset: 576)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1982, file: !1983, line: 135, baseType: !7, size: 32, offset: 608)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1405, file: !1406, line: 1058, baseType: !1994, size: 448, offset: 14016)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1983, line: 144, size: 448, elements: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1994, file: !1983, line: 145, baseType: !1055, size: 128, align: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1994, file: !1983, line: 146, baseType: !835, size: 256, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1994, file: !1983, line: 147, baseType: !7, size: 32, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1405, file: !1406, line: 1064, baseType: !2000, size: 64, offset: 14464)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2003, line: 110, size: 1472, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2021, !2022, !2023, !2024, !2025, !2026, !2136, !2137, !2138, !2139, !2140, !2163, !2164, !2168, !2176}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2002, file: !2003, line: 111, baseType: !839, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2002, file: !2003, line: 112, baseType: !581, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2002, file: !2003, line: 113, baseType: !590, size: 32, offset: 96)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2002, file: !2003, line: 114, baseType: !581, size: 32, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2002, file: !2003, line: 115, baseType: !590, size: 32, offset: 160)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2002, file: !2003, line: 116, baseType: !581, size: 32, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2002, file: !2003, line: 117, baseType: !590, size: 32, offset: 224)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2002, file: !2003, line: 118, baseType: !581, size: 32, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2002, file: !2003, line: 119, baseType: !590, size: 32, offset: 288)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2002, file: !2003, line: 120, baseType: !7, size: 32, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2002, file: !2003, line: 121, baseType: !2016, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2017, line: 24, baseType: !2018)
!2017 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2017, line: 24, size: 64, elements: !2019)
!2019 = !{!2020}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2018, file: !2017, line: 24, baseType: !648, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2002, file: !2003, line: 122, baseType: !2016, size: 64, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2002, file: !2003, line: 123, baseType: !2016, size: 64, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2002, file: !2003, line: 124, baseType: !2016, size: 64, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2002, file: !2003, line: 125, baseType: !2016, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2002, file: !2003, line: 127, baseType: !457, size: 8, offset: 704)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2002, file: !2003, line: 129, baseType: !2027, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2029, line: 195, size: 1728, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2030 = !{!2031, !2032, !2035, !2040, !2041, !2044, !2045, !2052, !2053, !2054, !2055, !2058, !2059, !2060, !2061, !2062, !2100, !2121}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2028, file: !2029, line: 196, baseType: !386, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2028, file: !2029, line: 197, baseType: !2033, size: 32, offset: 32)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2029, line: 28, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !392, line: 104, baseType: !831)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 198, baseType: !2036, size: 192, offset: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 198, size: 192, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2036, file: !2029, line: 199, baseType: !416, size: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2036, file: !2029, line: 200, baseType: !947, size: 192, align: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2028, file: !2029, line: 205, baseType: !1746, size: 320, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2028, file: !2029, line: 206, baseType: !2042, size: 64, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2029, line: 206, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2028, file: !2029, line: 207, baseType: !366, size: 64, offset: 640)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 208, baseType: !2046, size: 64, offset: 704)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 208, size: 64, elements: !2047)
!2047 = !{!2048, !2051}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2046, file: !2029, line: 209, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2050, line: 8, baseType: !846)
!2050 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2046, file: !2029, line: 210, baseType: !2049, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2028, file: !2029, line: 212, baseType: !2049, size: 64, offset: 768)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2028, file: !2029, line: 213, baseType: !581, size: 32, offset: 832)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2028, file: !2029, line: 214, baseType: !590, size: 32, offset: 864)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2028, file: !2029, line: 215, baseType: !2056, size: 32, offset: 896)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2029, line: 31, baseType: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !392, line: 110, baseType: !644)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2028, file: !2029, line: 216, baseType: !465, size: 16, offset: 928)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2028, file: !2029, line: 217, baseType: !465, size: 16, offset: 944)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2028, file: !2029, line: 221, baseType: !973, size: 16, offset: 960)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2028, file: !2029, line: 228, baseType: !545, size: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 245, baseType: !2063, size: 320, offset: 1088)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 245, size: 320, elements: !2064)
!2064 = !{!2065, !2092}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2063, file: !2029, line: 246, baseType: !2066, size: 320)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2029, line: 114, size: 320, elements: !2067)
!2067 = !{!2068, !2069, !2081, !2084, !2091}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2066, file: !2029, line: 116, baseType: !545, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2029, line: 117, baseType: !2070, size: 64, offset: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !2029, line: 117, size: 64, elements: !2071)
!2071 = !{!2072, !2080}
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !2029, line: 118, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !2029, line: 118, size: 64, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2073, file: !2029, line: 120, baseType: !463, size: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2073, file: !2029, line: 121, baseType: !2077, size: 48, offset: 16)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 48, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 6)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2070, file: !2029, line: 127, baseType: !545, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2066, file: !2029, line: 129, baseType: !2082, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2029, line: 102, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2066, file: !2029, line: 130, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2029, line: 108, size: 192, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2086, file: !2029, line: 109, baseType: !1055, size: 128, align: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2086, file: !2029, line: 110, baseType: !386, size: 32, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2086, file: !2029, line: 111, baseType: !915, size: 8, offset: 160)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2066, file: !2029, line: 131, baseType: !412, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !2029, line: 247, baseType: !2093, size: 320)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2063, file: !2029, line: 247, size: 320, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2093, file: !2029, line: 248, baseType: !545, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2093, file: !2029, line: 249, baseType: !545, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2093, file: !2029, line: 250, baseType: !2082, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2093, file: !2029, line: 251, baseType: !2085, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2093, file: !2029, line: 252, baseType: !495, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 260, baseType: !2101, size: 256, offset: 1408)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 260, size: 256, elements: !2102)
!2102 = !{!2103, !2109}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2101, file: !2029, line: 261, baseType: !2104, size: 256)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2029, line: 134, size: 256, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2104, file: !2029, line: 135, baseType: !366, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2104, file: !2029, line: 136, baseType: !2108, size: 256)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !1065)
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !2029, line: 262, baseType: !2110, size: 256)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2101, file: !2029, line: 262, size: 256, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2110, file: !2029, line: 264, baseType: !416, size: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2110, file: !2029, line: 265, baseType: !2114, size: 128, offset: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2115, line: 22, size: 128, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2116 = !{!2117, !2120}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2114, file: !2115, line: 23, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2115, line: 23, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2114, file: !2115, line: 24, baseType: !545, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2028, file: !2029, line: 280, baseType: !2122, size: 64, offset: 1664)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2029, line: 176, size: 192, elements: !2124)
!2124 = !{!2125, !2134, !2135}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2123, file: !2029, line: 177, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2029, line: 171, baseType: !2127)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!109, !2027, !2130, !2132, !2027}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2123, file: !2029, line: 178, baseType: !2027, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2123, file: !2029, line: 179, baseType: !2082, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2002, file: !2003, line: 130, baseType: !2027, size: 64, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2002, file: !2003, line: 131, baseType: !2027, size: 64, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2002, file: !2003, line: 132, baseType: !2027, size: 64, offset: 960)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2002, file: !2003, line: 135, baseType: !366, size: 64, offset: 1024)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2002, file: !2003, line: 137, baseType: !2141, size: 64, offset: 1088)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2143, line: 14, size: 1088, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2142, file: !2143, line: 15, baseType: !386, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2142, file: !2143, line: 17, baseType: !1784, size: 320, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2142, file: !2143, line: 19, baseType: !545, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2142, file: !2143, line: 20, baseType: !839, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2142, file: !2143, line: 23, baseType: !1081, size: 128, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2142, file: !2143, line: 24, baseType: !581, size: 32, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2142, file: !2143, line: 29, baseType: !839, size: 64, offset: 704)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2142, file: !2143, line: 36, baseType: !2153, size: 320, offset: 768)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2154, line: 15, size: 320, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2153, file: !2154, line: 16, baseType: !793, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2153, file: !2154, line: 18, baseType: !109, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2153, file: !2154, line: 19, baseType: !109, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2153, file: !2154, line: 20, baseType: !109, size: 32, offset: 96)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2153, file: !2154, line: 21, baseType: !109, size: 32, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2153, file: !2154, line: 22, baseType: !545, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 23, baseType: !545, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2002, file: !2003, line: 138, baseType: !1846, size: 64, offset: 1152)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2002, file: !2003, line: 139, baseType: !2165, size: 64, offset: 1216)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2167, line: 16, flags: DIFlagFwdDecl)
!2167 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2002, file: !2003, line: 140, baseType: !2169, size: 64, offset: 1280)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2003, line: 25, size: 64, elements: !2171)
!2171 = !{!2172, !2173, !2174}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2170, file: !2003, line: 26, baseType: !391, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2170, file: !2003, line: 27, baseType: !109, size: 32, offset: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2170, file: !2003, line: 28, baseType: !2175, offset: 64)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, elements: !1864)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2002, file: !2003, line: 142, baseType: !2177, size: 128, offset: 1344)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2002, file: !2003, line: 142, size: 128, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2177, file: !2003, line: 143, baseType: !109, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2177, file: !2003, line: 144, baseType: !1055, size: 128, align: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1405, file: !1406, line: 1067, baseType: !2000, size: 64, offset: 14528)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1405, file: !1406, line: 1070, baseType: !2000, size: 64, offset: 14592)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1405, file: !1406, line: 1074, baseType: !2027, size: 64, offset: 14656)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1405, file: !1406, line: 1084, baseType: !2185, size: 128, offset: 14720)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 128, elements: !2186)
!2186 = !{!2187}
!2187 = !DISubrange(count: 16)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1405, file: !1406, line: 1086, baseType: !2189, size: 64, offset: 14848)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1406, line: 55, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1405, file: !1406, line: 1089, baseType: !2192, size: 64, offset: 14912)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2193, line: 12, size: 64, elements: !2194)
!2193 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2192, file: !2193, line: 13, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2193, line: 8, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1405, file: !1406, line: 1090, baseType: !2199, size: 128, offset: 14976)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2200, line: 13, size: 128, elements: !2201)
!2200 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2199, file: !2200, line: 14, baseType: !416, size: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1405, file: !1406, line: 1097, baseType: !2204, size: 64, offset: 15104)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1406, line: 50, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1405, file: !1406, line: 1100, baseType: !2207, size: 64, offset: 15168)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1406, line: 1100, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1405, file: !1406, line: 1103, baseType: !2210, size: 64, offset: 15232)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1406, line: 53, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1405, file: !1406, line: 1107, baseType: !2213, size: 64, offset: 15296)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2215, line: 31, size: 576, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2216 = !{!2217, !2218, !2221, !2224, !2227, !2228, !2231, !2234, !2235}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2214, file: !2215, line: 32, baseType: !386, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2214, file: !2215, line: 33, baseType: !2219, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2215, line: 9, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2214, file: !2215, line: 34, baseType: !2222, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2215, line: 10, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2214, file: !2215, line: 35, baseType: !2225, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2215, line: 8, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2214, file: !2215, line: 36, baseType: !1383, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2214, file: !2215, line: 37, baseType: !2229, size: 64, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2029, line: 34, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2214, file: !2215, line: 38, baseType: !2232, size: 64, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2215, line: 38, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2214, file: !2215, line: 39, baseType: !2232, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2214, file: !2215, line: 40, baseType: !2236, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2215, line: 12, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1405, file: !1406, line: 1110, baseType: !2239, size: 64, offset: 15360)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2241, line: 93, size: 8768, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2290, !2299, !2300, !2302, !2303, !2304, !2307, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2345, !2346, !2353, !2363, !2366, !2367, !2370, !2371, !2372, !2373, !2374, !2375}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2240, file: !2241, line: 94, baseType: !386, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2240, file: !2241, line: 95, baseType: !391, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2240, file: !2241, line: 96, baseType: !109, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2240, file: !2241, line: 97, baseType: !109, size: 32, offset: 96)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2240, file: !2241, line: 98, baseType: !416, size: 128, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2240, file: !2241, line: 100, baseType: !1370, size: 192, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2240, file: !2241, line: 103, baseType: !1404, size: 64, offset: 448)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2240, file: !2241, line: 106, baseType: !2251, size: 192, offset: 512)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2167, line: 32, size: 192, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2251, file: !2167, line: 33, baseType: !416, size: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2251, file: !2167, line: 34, baseType: !2255, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2256, line: 25, baseType: !2257)
!2256 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2256, line: 23, size: 64, elements: !2258)
!2258 = !{!2259}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2257, file: !2256, line: 24, baseType: !1643, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2240, file: !2241, line: 109, baseType: !1205, size: 64, offset: 704)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2240, file: !2241, line: 112, baseType: !109, size: 32, offset: 768)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2240, file: !2241, line: 114, baseType: !109, size: 32, offset: 800)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2240, file: !2241, line: 115, baseType: !1404, size: 64, offset: 832)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2240, file: !2241, line: 118, baseType: !109, size: 32, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !2241, line: 119, baseType: !7, size: 32, offset: 928)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2240, file: !2241, line: 121, baseType: !2267, size: 64, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2241, line: 80, size: 448, elements: !2269)
!2269 = !{!2270, !2271, !2277}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2268, file: !2241, line: 81, baseType: !391, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2268, file: !2241, line: 82, baseType: !2272, size: 128, offset: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2241, line: 75, size: 128, elements: !2273)
!2273 = !{!2274, !2275}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2272, file: !2241, line: 76, baseType: !1404, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2272, file: !2241, line: 77, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2268, file: !2241, line: 83, baseType: !784, size: 256, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2240, file: !2241, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2240, file: !2241, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2240, file: !2241, line: 138, baseType: !7, size: 32, offset: 1056)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2240, file: !2241, line: 139, baseType: !416, size: 128, offset: 1088)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2240, file: !2241, line: 142, baseType: !1516, size: 512, offset: 1216)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2240, file: !2241, line: 143, baseType: !1524, size: 64, offset: 1728)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2240, file: !2241, line: 150, baseType: !2285, size: 256, offset: 1792)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2286, size: 256, elements: !954)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2241, line: 38, size: 128, elements: !2287)
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2286, file: !2241, line: 39, baseType: !648, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2286, file: !2241, line: 40, baseType: !648, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2240, file: !2241, line: 156, baseType: !2291, size: 192, offset: 2048)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2241, line: 66, size: 192, elements: !2292)
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2291, file: !2241, line: 67, baseType: !2294, size: 192)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2241, line: 47, size: 192, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2294, file: !2241, line: 48, baseType: !841, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2294, file: !2241, line: 49, baseType: !841, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2294, file: !2241, line: 50, baseType: !841, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2240, file: !2241, line: 160, baseType: !1982, size: 640, offset: 2240)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2240, file: !2241, line: 163, baseType: !2301, size: 256, offset: 2880)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 256, elements: !1065)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2240, file: !2241, line: 169, baseType: !1360, size: 64, offset: 3136)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2240, file: !2241, line: 172, baseType: !109, size: 32, offset: 3200)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2240, file: !2241, line: 174, baseType: !2305, size: 64, offset: 3264)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2241, line: 174, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2240, file: !2241, line: 185, baseType: !2308, size: 64, offset: 3328)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !617, line: 860, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !617, line: 853, size: 64, elements: !2310)
!2310 = !{!2311, !2312}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2309, file: !617, line: 858, baseType: !616, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2309, file: !617, line: 859, baseType: !429, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2240, file: !2241, line: 186, baseType: !648, size: 64, offset: 3392)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2240, file: !2241, line: 186, baseType: !648, size: 64, offset: 3456)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2240, file: !2241, line: 186, baseType: !648, size: 64, offset: 3520)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2240, file: !2241, line: 186, baseType: !648, size: 64, offset: 3584)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2240, file: !2241, line: 187, baseType: !648, size: 64, offset: 3648)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2240, file: !2241, line: 188, baseType: !648, size: 64, offset: 3712)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2240, file: !2241, line: 189, baseType: !1970, size: 192, offset: 3776)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2240, file: !2241, line: 190, baseType: !545, size: 64, offset: 3968)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2240, file: !2241, line: 190, baseType: !545, size: 64, offset: 4032)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2240, file: !2241, line: 190, baseType: !545, size: 64, offset: 4096)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2240, file: !2241, line: 190, baseType: !545, size: 64, offset: 4160)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2240, file: !2241, line: 191, baseType: !545, size: 64, offset: 4224)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2240, file: !2241, line: 191, baseType: !545, size: 64, offset: 4288)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2240, file: !2241, line: 191, baseType: !545, size: 64, offset: 4352)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2240, file: !2241, line: 191, baseType: !545, size: 64, offset: 4416)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2240, file: !2241, line: 192, baseType: !545, size: 64, offset: 4480)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2240, file: !2241, line: 192, baseType: !545, size: 64, offset: 4544)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2240, file: !2241, line: 192, baseType: !545, size: 64, offset: 4608)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2240, file: !2241, line: 192, baseType: !545, size: 64, offset: 4672)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2240, file: !2241, line: 193, baseType: !545, size: 64, offset: 4736)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2240, file: !2241, line: 193, baseType: !545, size: 64, offset: 4800)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2240, file: !2241, line: 194, baseType: !2335, size: 448, offset: 4864)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2336, line: 12, size: 448, elements: !2337)
!2336 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2335, file: !2336, line: 15, baseType: !648, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2335, file: !2336, line: 17, baseType: !648, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2335, file: !2336, line: 19, baseType: !648, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2335, file: !2336, line: 21, baseType: !648, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2335, file: !2336, line: 29, baseType: !648, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2335, file: !2336, line: 35, baseType: !648, size: 64, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2335, file: !2336, line: 44, baseType: !648, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2240, file: !2241, line: 202, baseType: !650, size: 64, offset: 5312)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2240, file: !2241, line: 213, baseType: !2347, size: 2048, offset: 5376)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2348, size: 2048, elements: !2186)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2349, line: 43, size: 128, elements: !2350)
!2349 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2348, file: !2349, line: 44, baseType: !544, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2348, file: !2349, line: 45, baseType: !544, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2240, file: !2241, line: 216, baseType: !2354, size: 448, offset: 7424)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2241, line: 30, size: 448, elements: !2355)
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2354, file: !2241, line: 31, baseType: !109, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2354, file: !2241, line: 32, baseType: !531, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2354, file: !2241, line: 33, baseType: !545, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2354, file: !2241, line: 34, baseType: !648, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2354, file: !2241, line: 34, baseType: !648, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2354, file: !2241, line: 35, baseType: !545, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2354, file: !2241, line: 35, baseType: !545, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2240, file: !2241, line: 219, baseType: !2364, size: 64, offset: 7872)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2241, line: 219, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2240, file: !2241, line: 222, baseType: !7, size: 32, offset: 7936)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2240, file: !2241, line: 223, baseType: !2368, size: 64, offset: 8000)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2241, line: 223, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2240, file: !2241, line: 230, baseType: !915, size: 8, offset: 8064)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2240, file: !2241, line: 231, baseType: !973, size: 16, offset: 8080)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2240, file: !2241, line: 232, baseType: !973, size: 16, offset: 8096)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2240, file: !2241, line: 234, baseType: !1692, size: 64, offset: 8128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2240, file: !2241, line: 237, baseType: !835, size: 256, offset: 8192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2240, file: !2241, line: 243, baseType: !1746, size: 320, offset: 8448)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1405, file: !1406, line: 1111, baseType: !2377, size: 64, offset: 15424)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2241, line: 20, size: 16640, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2383}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2378, file: !2241, line: 21, baseType: !429, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2378, file: !2241, line: 22, baseType: !386, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2378, file: !2241, line: 23, baseType: !1370, size: 192, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2378, file: !2241, line: 24, baseType: !2384, size: 16384, offset: 256)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2385, size: 16384, elements: !500)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2167, line: 51, size: 256, elements: !2386)
!2386 = !{!2387}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2385, file: !2167, line: 52, baseType: !2388, size: 256)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2167, line: 37, size: 256, elements: !2389)
!2389 = !{!2390, !2397, !2398, !2402}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2388, file: !2167, line: 39, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2392, line: 83, baseType: !2393)
!2392 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2392, line: 82, baseType: !2395)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !109}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2388, file: !2167, line: 40, baseType: !545, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2388, file: !2167, line: 46, baseType: !2399, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2392, line: 86, baseType: !2400)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2392, line: 85, baseType: !1200)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2388, file: !2167, line: 48, baseType: !2255, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1405, file: !1406, line: 1112, baseType: !2255, size: 64, offset: 15488)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1405, file: !1406, line: 1113, baseType: !2255, size: 64, offset: 15552)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1405, file: !1406, line: 1115, baseType: !2255, size: 64, offset: 15616)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1405, file: !1406, line: 1116, baseType: !2251, size: 192, offset: 15680)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1405, file: !1406, line: 1117, baseType: !545, size: 64, offset: 15872)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1405, file: !1406, line: 1118, baseType: !542, size: 64, offset: 15936)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1405, file: !1406, line: 1119, baseType: !7, size: 32, offset: 16000)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1405, file: !1406, line: 1121, baseType: !1054, size: 64, offset: 16064)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1405, file: !1406, line: 1125, baseType: !2412, size: 64, offset: 16128)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1406, line: 43, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1405, file: !1406, line: 1127, baseType: !581, size: 32, offset: 16192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1405, file: !1406, line: 1128, baseType: !7, size: 32, offset: 16224)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1405, file: !1406, line: 1130, baseType: !2417, size: 128, offset: 16256)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2418, line: 37, size: 128, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2417, file: !2418, line: 38, baseType: !109, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2417, file: !2418, line: 39, baseType: !391, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2417, file: !2418, line: 40, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2418, line: 24, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1405, file: !1406, line: 1131, baseType: !2426, size: 256, offset: 16384)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2427, line: 12, size: 256, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2426, file: !2427, line: 13, baseType: !495, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2426, file: !2427, line: 14, baseType: !545, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2426, file: !2427, line: 15, baseType: !545, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2426, file: !2427, line: 16, baseType: !915, size: 8, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1405, file: !1406, line: 1134, baseType: !648, size: 64, offset: 16640)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1405, file: !1406, line: 1135, baseType: !648, size: 64, offset: 16704)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1405, file: !1406, line: 1138, baseType: !429, size: 32, offset: 16768)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1405, file: !1406, line: 1141, baseType: !793, size: 32, offset: 16800)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1405, file: !1406, line: 1143, baseType: !2438, size: 64, offset: 16832)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1406, line: 735, size: 64, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2438, file: !1406, line: 736, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1405, file: !1406, line: 1147, baseType: !1575, size: 128, offset: 16896)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1405, file: !1406, line: 1149, baseType: !1404, size: 64, offset: 17024)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1405, file: !1406, line: 1151, baseType: !2445, size: 64, offset: 17088)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1406, line: 1151, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1405, file: !1406, line: 1188, baseType: !366, size: 64, offset: 17152)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1405, file: !1406, line: 1191, baseType: !2449, size: 64, offset: 17216)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1406, line: 44, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1405, file: !1406, line: 1194, baseType: !2452, size: 64, offset: 17280)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1406, line: 45, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1405, file: !1406, line: 1197, baseType: !2455, size: 64, offset: 17344)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1406, line: 61, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1405, file: !1406, line: 1199, baseType: !2458, size: 64, offset: 17408)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2460, line: 99, size: 128, elements: !2461)
!2460 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2461 = !{!2462, !2463, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2459, file: !2460, line: 100, baseType: !839, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2459, file: !2460, line: 101, baseType: !391, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2459, file: !2460, line: 103, baseType: !465, size: 16, offset: 96)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1405, file: !1406, line: 1202, baseType: !2466, size: 64, offset: 17472)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1406, line: 48, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1405, file: !1406, line: 1205, baseType: !545, size: 64, offset: 17536)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1405, file: !1406, line: 1206, baseType: !2470, size: 64, offset: 17600)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2167, line: 14, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2167, line: 12, size: 384, elements: !2473)
!2473 = !{!2474}
!2474 = !DIDerivedType(tag: DW_TAG_member, scope: !2472, file: !2167, line: 13, baseType: !2475, size: 384)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !2167, line: 13, size: 384, elements: !2476)
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2475, file: !2167, line: 13, baseType: !109, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2475, file: !2167, line: 13, baseType: !109, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2475, file: !2167, line: 13, baseType: !109, size: 32, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2475, file: !2167, line: 13, baseType: !2481, size: 256, offset: 128)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2482, line: 37, size: 256, elements: !2483)
!2482 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2483 = !{!2484, !2489, !2502, !2508, !2517, !2544, !2549}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2481, file: !2482, line: 42, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2482, line: 39, size: 64, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2485, file: !2482, line: 40, baseType: !1947, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2485, file: !2482, line: 41, baseType: !587, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2481, file: !2482, line: 50, baseType: !2490, size: 192)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2482, line: 45, size: 192, elements: !2491)
!2491 = !{!2492, !2494, !2495, !2501}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2490, file: !2482, line: 46, baseType: !2493, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !529, line: 95, baseType: !109)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2490, file: !2482, line: 47, baseType: !109, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2490, file: !2482, line: 48, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2482, line: 11, baseType: !2497)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2482, line: 8, size: 64, elements: !2498)
!2498 = !{!2499, !2500}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2497, file: !2482, line: 9, baseType: !109, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2497, file: !2482, line: 10, baseType: !366, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2490, file: !2482, line: 49, baseType: !109, size: 32, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2481, file: !2482, line: 57, baseType: !2503, size: 128)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2482, line: 53, size: 128, elements: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2503, file: !2482, line: 54, baseType: !1947, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2503, file: !2482, line: 55, baseType: !587, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2503, file: !2482, line: 56, baseType: !2496, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2481, file: !2482, line: 66, baseType: !2509, size: 256)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2482, line: 60, size: 256, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2516}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2509, file: !2482, line: 61, baseType: !1947, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2509, file: !2482, line: 62, baseType: !587, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2509, file: !2482, line: 63, baseType: !109, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2509, file: !2482, line: 64, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !529, line: 94, baseType: !530)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2509, file: !2482, line: 65, baseType: !2515, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2481, file: !2482, line: 105, baseType: !2518, size: 256)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2482, line: 69, size: 256, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2518, file: !2482, line: 70, baseType: !366, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2518, file: !2482, line: 79, baseType: !2522, size: 192, offset: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2518, file: !2482, line: 79, size: 192, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2533, !2538}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2522, file: !2482, line: 81, baseType: !109, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2522, file: !2482, line: 86, baseType: !973, size: 16)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2522, file: !2482, line: 92, baseType: !2527, size: 192)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2522, file: !2482, line: 88, size: 192, elements: !2528)
!2528 = !{!2529, !2531, !2532}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2527, file: !2482, line: 89, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 64, elements: !1559)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2527, file: !2482, line: 90, baseType: !366, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2527, file: !2482, line: 91, baseType: !366, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2522, file: !2482, line: 97, baseType: !2534, size: 96)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2522, file: !2482, line: 94, size: 96, elements: !2535)
!2535 = !{!2536, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2534, file: !2482, line: 95, baseType: !2530, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2534, file: !2482, line: 96, baseType: !645, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2522, file: !2482, line: 103, baseType: !2539, size: 128)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2522, file: !2482, line: 99, size: 128, elements: !2540)
!2540 = !{!2541, !2542, !2543}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2539, file: !2482, line: 100, baseType: !545, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2539, file: !2482, line: 101, baseType: !645, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2539, file: !2482, line: 102, baseType: !645, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2481, file: !2482, line: 111, baseType: !2545, size: 128)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2482, line: 108, size: 128, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2545, file: !2482, line: 109, baseType: !531, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2545, file: !2482, line: 110, baseType: !109, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2481, file: !2482, line: 118, baseType: !2550, size: 128)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2482, line: 114, size: 128, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2550, file: !2482, line: 115, baseType: !366, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2550, file: !2482, line: 116, baseType: !109, size: 32, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2550, file: !2482, line: 117, baseType: !7, size: 32, offset: 96)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1405, file: !1406, line: 1208, baseType: !2335, size: 448, offset: 17664)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1405, file: !1406, line: 1215, baseType: !648, size: 64, offset: 18112)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1405, file: !1406, line: 1217, baseType: !648, size: 64, offset: 18176)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1405, file: !1406, line: 1219, baseType: !648, size: 64, offset: 18240)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1405, file: !1406, line: 1223, baseType: !2560, size: 64, offset: 18304)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2561, line: 99, baseType: !2562)
!2561 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2561, line: 99, size: 64, elements: !2563)
!2563 = !{!2564}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2562, file: !2561, line: 99, baseType: !1643, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1405, file: !1406, line: 1225, baseType: !616, size: 32, offset: 18368)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1405, file: !1406, line: 1226, baseType: !109, size: 32, offset: 18400)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1405, file: !1406, line: 1227, baseType: !109, size: 32, offset: 18432)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1405, file: !1406, line: 1231, baseType: !2569, size: 64, offset: 18496)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1406, line: 1231, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1405, file: !1406, line: 1233, baseType: !416, size: 128, offset: 18560)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1405, file: !1406, line: 1240, baseType: !2573, size: 64, offset: 18688)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1406, line: 62, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1405, file: !1406, line: 1242, baseType: !2576, size: 64, offset: 18752)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1406, line: 1242, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1405, file: !1406, line: 1244, baseType: !416, size: 128, offset: 18816)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1405, file: !1406, line: 1245, baseType: !2580, size: 64, offset: 18944)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1406, line: 51, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1405, file: !1406, line: 1246, baseType: !835, size: 256, offset: 19008)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1405, file: !1406, line: 1247, baseType: !7, size: 32, offset: 19264)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1405, file: !1406, line: 1250, baseType: !2585, size: 64, offset: 19328)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1406, line: 57, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1405, file: !1406, line: 1251, baseType: !835, size: 256, offset: 19392)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1405, file: !1406, line: 1252, baseType: !416, size: 128, offset: 19648)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1405, file: !1406, line: 1259, baseType: !2590, size: 64, offset: 19776)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1405, file: !1406, line: 1260, baseType: !973, size: 16, offset: 19840)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1405, file: !1406, line: 1261, baseType: !973, size: 16, offset: 19856)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1405, file: !1406, line: 1314, baseType: !2595, size: 64, offset: 19904)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2597, line: 62, size: 256, align: 256, elements: !2598)
!2597 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2596, file: !2597, line: 75, baseType: !645, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2596, file: !2597, line: 90, baseType: !645, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2596, file: !2597, line: 112, baseType: !649, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !2597, line: 132, baseType: !645, size: 32, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2596, file: !2597, line: 140, baseType: !645, size: 32, offset: 160)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2596, file: !2597, line: 149, baseType: !645, size: 32, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2596, file: !2597, line: 154, baseType: !2606, offset: 224)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, elements: !1864)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1405, file: !1406, line: 1315, baseType: !644, size: 32, offset: 19968)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1405, file: !1406, line: 1316, baseType: !644, size: 32, offset: 20000)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1405, file: !1406, line: 1321, baseType: !545, size: 64, offset: 20032)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1405, file: !1406, line: 1325, baseType: !109, size: 32, offset: 20096)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1405, file: !1406, line: 1326, baseType: !109, size: 32, offset: 20128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1405, file: !1406, line: 1327, baseType: !109, size: 32, offset: 20160)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1405, file: !1406, line: 1328, baseType: !109, size: 32, offset: 20192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1405, file: !1406, line: 1329, baseType: !1055, size: 128, align: 64, offset: 20224)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1405, file: !1406, line: 1332, baseType: !2616, size: 128, offset: 20352)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2617, line: 51, size: 128, elements: !2618)
!2617 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2618 = !{!2619, !2624, !2625}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2616, file: !2617, line: 60, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2621, line: 7, size: 64, elements: !2622)
!2621 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2620, file: !2621, line: 12, baseType: !1640, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2616, file: !2617, line: 63, baseType: !915, size: 8, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2616, file: !2617, line: 70, baseType: !915, size: 8, offset: 72)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1405, file: !1406, line: 1335, baseType: !2627, size: 64, offset: 20480)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1406, line: 59, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1405, file: !1406, line: 1337, baseType: !2630, size: 128, offset: 20544)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2617, line: 39, size: 128, elements: !2631)
!2631 = !{!2632, !2916, !2917}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2630, file: !2617, line: 40, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2635)
!2635 = !{!2636, !2637, !2910, !2915}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2634, file: !38, line: 75, baseType: !545, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !38, line: 83, baseType: !2638, size: 320, offset: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !38, line: 83, size: 320, elements: !2639)
!2639 = !{!2640, !2661, !2675, !2679, !2909}
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !38, line: 84, baseType: !2641, size: 320)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2638, file: !38, line: 84, size: 320, elements: !2642)
!2642 = !{!2643, !2654, !2655, !2660}
!2643 = !DIDerivedType(tag: DW_TAG_member, scope: !2641, file: !38, line: 90, baseType: !2644, size: 128)
!2644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2641, file: !38, line: 90, size: 128, elements: !2645)
!2645 = !{!2646, !2647, !2652, !2653}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2644, file: !38, line: 91, baseType: !416, size: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !38, line: 94, baseType: !2648, size: 128)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2644, file: !38, line: 94, size: 128, elements: !2649)
!2649 = !{!2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2648, file: !38, line: 96, baseType: !366, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2648, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2644, file: !38, line: 102, baseType: !416, size: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2644, file: !38, line: 103, baseType: !416, size: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2641, file: !38, line: 106, baseType: !571, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !2641, file: !38, line: 107, baseType: !2656, size: 64, offset: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2641, file: !38, line: 107, size: 64, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2656, file: !38, line: 108, baseType: !545, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2656, file: !38, line: 109, baseType: !545, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2641, file: !38, line: 117, baseType: !545, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !38, line: 119, baseType: !2662, size: 320)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2638, file: !38, line: 119, size: 320, elements: !2663)
!2663 = !{!2664, !2665, !2668, !2669, !2670}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2662, file: !38, line: 124, baseType: !545, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2662, file: !38, line: 125, baseType: !2666, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2662, file: !38, line: 126, baseType: !545, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2662, file: !38, line: 127, baseType: !545, size: 64, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2662, file: !38, line: 128, baseType: !2671, size: 64, offset: 256)
!2671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2662, file: !38, line: 128, size: 64, elements: !2672)
!2672 = !{!2673, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2671, file: !38, line: 133, baseType: !545, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2671, file: !38, line: 138, baseType: !839, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !38, line: 141, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2638, file: !38, line: 141, size: 64, elements: !2677)
!2677 = !{!2678}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2676, file: !38, line: 142, baseType: !545, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !38, line: 144, baseType: !2680, size: 128)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2638, file: !38, line: 144, size: 128, elements: !2681)
!2681 = !{!2682, !2908}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2680, file: !38, line: 146, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !30, line: 126, size: 1216, elements: !2685)
!2685 = !{!2686, !2696, !2717, !2718, !2719, !2720, !2721, !2890, !2891, !2892}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2684, file: !30, line: 127, baseType: !2687, size: 384)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !30, line: 21, size: 384, elements: !2688)
!2688 = !{!2689, !2690, !2692, !2693, !2694, !2695}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2687, file: !30, line: 22, baseType: !545, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2687, file: !30, line: 23, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2687, file: !30, line: 24, baseType: !2691, size: 64, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2687, file: !30, line: 25, baseType: !545, size: 64, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2687, file: !30, line: 26, baseType: !545, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2687, file: !30, line: 27, baseType: !545, size: 64, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2684, file: !30, line: 128, baseType: !2697, size: 128, offset: 384)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2698, line: 105, size: 128, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2697, file: !2698, line: 110, baseType: !545, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2697, file: !2698, line: 118, baseType: !2702, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2698, line: 95, size: 448, elements: !2704)
!2704 = !{!2705, !2706, !2712, !2713, !2714, !2715, !2716}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2703, file: !2698, line: 96, baseType: !839, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2703, file: !2698, line: 97, baseType: !2707, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2698, line: 60, baseType: !2709)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2703, file: !2698, line: 98, baseType: !2707, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2703, file: !2698, line: 99, baseType: !915, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2703, file: !2698, line: 100, baseType: !915, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2703, file: !2698, line: 101, baseType: !1055, size: 128, align: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2703, file: !2698, line: 102, baseType: !2711, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2684, file: !30, line: 129, baseType: !784, size: 256, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2684, file: !30, line: 130, baseType: !29, size: 32, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2684, file: !30, line: 131, baseType: !7, size: 32, offset: 800)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2684, file: !30, line: 132, baseType: !545, size: 64, offset: 832)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2684, file: !30, line: 133, baseType: !2722, size: 64, offset: 896)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !30, line: 77, size: 192, elements: !2725)
!2725 = !{!2726, !2730, !2886}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2724, file: !30, line: 83, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !2633}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2724, file: !30, line: 89, baseType: !2731, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!2734, !2735}
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2737, line: 512, size: 896, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2738 = !{!2739, !2853, !2854, !2861, !2868, !2878, !2879, !2880, !2882, !2884}
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !2736, file: !2737, line: 513, baseType: !2740, size: 320)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2736, file: !2737, line: 513, size: 320, elements: !2741)
!2741 = !{!2742, !2849, !2850, !2851, !2852}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2740, file: !2737, line: 514, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2745)
!2745 = !{!2746, !2755, !2756, !2762, !2769, !2770, !2775, !2776, !2781, !2782, !2785, !2842, !2843, !2844, !2845, !2846, !2847}
!2746 = !DIDerivedType(tag: DW_TAG_member, scope: !2744, file: !38, line: 628, baseType: !2747, size: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !38, line: 628, size: 128, elements: !2748)
!2748 = !{!2749, !2754}
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2747, file: !38, line: 629, baseType: !2750, size: 128)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !38, line: 629, size: 128, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2750, file: !38, line: 631, baseType: !545, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2750, file: !38, line: 632, baseType: !545, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2747, file: !38, line: 635, baseType: !1055, size: 128, align: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2744, file: !38, line: 639, baseType: !1692, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2744, file: !38, line: 640, baseType: !2757, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !346, line: 297, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !346, line: 297, size: 64, elements: !2759)
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2758, file: !346, line: 297, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1732, line: 19, baseType: !545)
!2762 = !DIDerivedType(tag: DW_TAG_member, scope: !2744, file: !38, line: 646, baseType: !2763, size: 64, offset: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !38, line: 646, size: 64, elements: !2764)
!2764 = !{!2765, !2768}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2763, file: !38, line: 647, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !545)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2763, file: !38, line: 648, baseType: !2767, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2744, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2744, file: !38, line: 667, baseType: !2771, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2773)
!2773 = !{!2774}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2772, file: !38, line: 580, baseType: !1746, size: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2744, file: !38, line: 670, baseType: !915, size: 8, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2744, file: !38, line: 681, baseType: !2777, size: 256, offset: 512)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2744, file: !38, line: 678, size: 256, elements: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2777, file: !38, line: 679, baseType: !947, size: 192, align: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2777, file: !38, line: 680, baseType: !545, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2744, file: !38, line: 689, baseType: !416, size: 128, offset: 768)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2744, file: !38, line: 691, baseType: !2783, size: 64, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2744, file: !38, line: 694, baseType: !2786, size: 64, offset: 960)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2737, line: 563, size: 1024, elements: !2789)
!2789 = !{!2790, !2794, !2795, !2799, !2803, !2807, !2808, !2812, !2816, !2820, !2821, !2822, !2826, !2830, !2834, !2838}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2788, file: !2737, line: 564, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2743}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2788, file: !2737, line: 569, baseType: !2791, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2788, file: !2737, line: 571, baseType: !2796, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!109, !2743, !545}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2788, file: !2737, line: 572, baseType: !2800, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!109, !2743}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2788, file: !2737, line: 578, baseType: !2804, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!109, !2743, !545, !545, !545}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2788, file: !2737, line: 580, baseType: !2731, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2788, file: !2737, line: 581, baseType: !2809, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!2734, !2735, !7}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2788, file: !2737, line: 582, baseType: !2813, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!2734, !2735, !545, !545}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2788, file: !2737, line: 584, baseType: !2817, size: 64, offset: 512)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!545, !2743}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2788, file: !2737, line: 588, baseType: !2731, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2788, file: !2737, line: 591, baseType: !2731, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2788, file: !2737, line: 597, baseType: !2823, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!109, !2743, !545, !366, !109, !109}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2788, file: !2737, line: 603, baseType: !2827, size: 64, offset: 768)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!412, !2743}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2788, file: !2737, line: 613, baseType: !2831, size: 64, offset: 832)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!109, !2743, !2590}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2788, file: !2737, line: 625, baseType: !2835, size: 64, offset: 896)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!2590, !2743, !545}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2788, file: !2737, line: 633, baseType: !2839, size: 64, offset: 960)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!2633, !2743, !545}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2744, file: !38, line: 697, baseType: !545, size: 64, offset: 1024)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2744, file: !38, line: 699, baseType: !1719, size: 64, offset: 1088)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2744, file: !38, line: 700, baseType: !366, size: 64, offset: 1152)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2744, file: !38, line: 711, baseType: !839, size: 64, offset: 1216)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2744, file: !38, line: 717, baseType: !2590, size: 64, offset: 1280)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2744, file: !38, line: 722, baseType: !2848, offset: 1344)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1124)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2740, file: !2737, line: 515, baseType: !1397, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2740, file: !2737, line: 516, baseType: !545, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2740, file: !2737, line: 517, baseType: !545, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2740, file: !2737, line: 518, baseType: !545, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2736, file: !2737, line: 520, baseType: !37, size: 32, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2736, file: !2737, line: 522, baseType: !2855, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1732, line: 22, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1732, line: 22, size: 64, elements: !2858)
!2858 = !{!2859}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2857, file: !1732, line: 22, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1732, line: 15, baseType: !545)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2736, file: !2737, line: 524, baseType: !2862, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !346, line: 372, baseType: !2864)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 372, size: 64, elements: !2865)
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2864, file: !346, line: 372, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1732, line: 16, baseType: !545)
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !2736, file: !2737, line: 527, baseType: !2869, size: 64, offset: 512)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2736, file: !2737, line: 527, size: 64, elements: !2870)
!2870 = !{!2871, !2877}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2869, file: !2737, line: 528, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1732, line: 21, baseType: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1732, line: 21, size: 64, elements: !2874)
!2874 = !{!2875}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2873, file: !1732, line: 21, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1732, line: 14, baseType: !545)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2869, file: !2737, line: 529, baseType: !2856, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2736, file: !2737, line: 534, baseType: !2633, size: 64, offset: 576)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2736, file: !2737, line: 535, baseType: !2633, size: 64, offset: 640)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2736, file: !2737, line: 541, baseType: !2881, size: 64, offset: 704)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2736, file: !2737, line: 545, baseType: !2883, size: 64, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2736, file: !2737, line: 549, baseType: !2885, size: 64, offset: 832)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !346, line: 520, baseType: !2633)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2724, file: !30, line: 100, baseType: !2887, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!109, !2683, !545, !545, !109}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2684, file: !30, line: 134, baseType: !366, size: 64, offset: 960)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2684, file: !30, line: 135, baseType: !109, size: 32, offset: 1024)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !30, line: 136, baseType: !2893, size: 128, offset: 1088)
!2893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2684, file: !30, line: 136, size: 128, elements: !2894)
!2894 = !{!2895, !2901}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2893, file: !30, line: 137, baseType: !2896, size: 128)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2897, line: 6, size: 128, elements: !2898)
!2897 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2896, file: !2897, line: 7, baseType: !648, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2896, file: !2897, line: 8, baseType: !648, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2893, file: !30, line: 138, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2893, file: !30, line: 138, elements: !2903)
!2903 = !{!2904, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2902, file: !30, line: 138, baseType: !2905)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2902, file: !30, line: 138, elements: !1124)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2902, file: !30, line: 138, baseType: !2907)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2896, elements: !1864)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2680, file: !38, line: 147, baseType: !366, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2638, file: !38, line: 161, baseType: !1055, size: 128, align: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !38, line: 164, baseType: !2911, size: 32, offset: 384)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !38, line: 164, size: 32, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2911, file: !38, line: 169, baseType: !391, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2911, file: !38, line: 177, baseType: !7, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2634, file: !38, line: 181, baseType: !391, size: 32, offset: 416)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2630, file: !2617, line: 42, baseType: !645, size: 32, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2630, file: !2617, line: 43, baseType: !645, size: 32, offset: 96)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1405, file: !1406, line: 1340, baseType: !2919, size: 64, offset: 20672)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1406, line: 69, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1405, file: !1406, line: 1351, baseType: !109, size: 32, offset: 20736)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1405, file: !1406, line: 1352, baseType: !109, size: 32, offset: 20768)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1405, file: !1406, line: 1354, baseType: !545, size: 64, offset: 20800)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1405, file: !1406, line: 1364, baseType: !648, size: 64, offset: 20864)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1405, file: !1406, line: 1365, baseType: !648, size: 64, offset: 20928)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1405, file: !1406, line: 1412, baseType: !545, size: 64, offset: 20992)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1405, file: !1406, line: 1453, baseType: !2928, size: 64, offset: 21056)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1406, line: 1453, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1405, file: !1406, line: 1457, baseType: !2931, size: 64, offset: 21120)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !54, line: 61, size: 576, elements: !2933)
!2933 = !{!2934, !2935, !2954, !2957, !2958, !2991, !3001}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2932, file: !54, line: 62, baseType: !53, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !54, line: 64, baseType: !2936, size: 192, offset: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2932, file: !54, line: 64, size: 192, elements: !2937)
!2937 = !{!2938, !2949}
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !2936, file: !54, line: 65, baseType: !2939, size: 192)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2936, file: !54, line: 65, size: 192, elements: !2940)
!2940 = !{!2941, !2948}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2939, file: !54, line: 66, baseType: !2942, size: 128)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2943, line: 50, size: 128, elements: !2944)
!2943 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2944 = !{!2945, !2946, !2947}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2942, file: !2943, line: 52, baseType: !545, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2942, file: !2943, line: 54, baseType: !7, size: 32, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2942, file: !2943, line: 55, baseType: !7, size: 32, offset: 96)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2939, file: !54, line: 67, baseType: !545, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2936, file: !54, line: 70, baseType: !2950, size: 192)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2936, file: !54, line: 70, size: 192, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2950, file: !54, line: 71, baseType: !1055, size: 128, align: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2950, file: !54, line: 72, baseType: !545, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2932, file: !54, line: 76, baseType: !2955, size: 64, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !54, line: 76, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2932, file: !54, line: 77, baseType: !545, size: 64, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2932, file: !54, line: 79, baseType: !2959, size: 64, offset: 384)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2943, line: 25, size: 256, elements: !2961)
!2961 = !{!2962, !2968, !2972}
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2960, file: !2943, line: 26, baseType: !2963, size: 128)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2960, file: !2943, line: 26, size: 128, elements: !2964)
!2964 = !{!2965, !2967}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2963, file: !2943, line: 27, baseType: !2966, size: 128)
!2966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 128, elements: !2186)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2963, file: !2943, line: 28, baseType: !2966, size: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2960, file: !2943, line: 31, baseType: !2969, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2971)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2943, line: 23, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2960, file: !2943, line: 33, baseType: !2973, size: 64, offset: 192)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2960, file: !2943, line: 33, size: 64, elements: !2974)
!2974 = !{!2975, !2981, !2986}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2973, file: !2943, line: 38, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !2943, line: 34, size: 64, elements: !2977)
!2977 = !{!2978, !2979, !2980}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2976, file: !2943, line: 35, baseType: !831, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2976, file: !2943, line: 36, baseType: !453, size: 8, offset: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2976, file: !2943, line: 37, baseType: !453, size: 8, offset: 40)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2973, file: !2943, line: 42, baseType: !2982, size: 16)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !2943, line: 39, size: 16, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2982, file: !2943, line: 40, baseType: !453, size: 8)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2982, file: !2943, line: 41, baseType: !453, size: 8, offset: 8)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2973, file: !2943, line: 46, baseType: !2987, size: 16)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !2943, line: 43, size: 16, elements: !2988)
!2988 = !{!2989, !2990}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2987, file: !2943, line: 44, baseType: !453, size: 8)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2987, file: !2943, line: 45, baseType: !453, size: 8, offset: 8)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2932, file: !54, line: 81, baseType: !2992, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !54, line: 85, size: 384, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2993, file: !54, line: 86, baseType: !2955, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2993, file: !54, line: 87, baseType: !545, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2993, file: !54, line: 88, baseType: !545, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2993, file: !54, line: 89, baseType: !545, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2993, file: !54, line: 90, baseType: !915, size: 8, offset: 256)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2993, file: !54, line: 92, baseType: !2992, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2932, file: !54, line: 82, baseType: !7, size: 32, offset: 512)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1405, file: !1406, line: 1463, baseType: !3003, offset: 21184)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1406, line: 739, elements: !1124)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1405, file: !1406, line: 1470, baseType: !1055, size: 128, align: 64, offset: 21184)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1405, file: !1406, line: 1471, baseType: !386, size: 32, offset: 21312)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1405, file: !1406, line: 1472, baseType: !109, size: 32, offset: 21344)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1405, file: !1406, line: 1474, baseType: !1404, size: 64, offset: 21376)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1405, file: !1406, line: 1475, baseType: !1077, size: 320, offset: 21440)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1405, file: !1406, line: 1478, baseType: !3010, size: 64, offset: 21760)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3012, line: 49, size: 512, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3020, !3021, !3022, !3024}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3011, file: !3012, line: 50, baseType: !3010, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3011, file: !3012, line: 51, baseType: !366, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3011, file: !3012, line: 52, baseType: !545, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3011, file: !3012, line: 53, baseType: !545, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3011, file: !3012, line: 54, baseType: !3019, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3011, file: !3012, line: 56, baseType: !7, size: 32, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3011, file: !3012, line: 58, baseType: !7, size: 32, offset: 352)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3011, file: !3012, line: 59, baseType: !3023, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !392, line: 159, baseType: !648)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3011, file: !3012, line: 60, baseType: !1823, size: 64, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1405, file: !1406, line: 1482, baseType: !386, size: 32, offset: 21824)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1405, file: !1406, line: 1489, baseType: !366, size: 64, offset: 21888)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1405, file: !1406, line: 1504, baseType: !366, size: 64, offset: 21952)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1405, file: !1406, line: 1505, baseType: !649, size: 64, offset: 22016)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1405, file: !1406, line: 1506, baseType: !648, size: 64, offset: 22080)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1405, file: !1406, line: 1507, baseType: !649, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1405, file: !1406, line: 1508, baseType: !649, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1405, file: !1406, line: 1509, baseType: !649, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1405, file: !1406, line: 1510, baseType: !1055, size: 128, align: 64, offset: 22208)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1405, file: !1406, line: 1511, baseType: !109, size: 32, offset: 22336)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1405, file: !1406, line: 1515, baseType: !3036, size: 64, offset: 22400)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1322, line: 56, size: 64, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3036, file: !1322, line: 57, baseType: !1325, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1405, file: !1406, line: 1518, baseType: !3036, size: 64, offset: 22464)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1405, file: !1406, line: 1528, baseType: !1055, size: 128, align: 64, offset: 22528)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1405, file: !1406, line: 1552, baseType: !3042, size: 35328, offset: 23040)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3043, line: 430, size: 35328, elements: !3044)
!3043 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3044 = !{!3045, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3074, !3075, !3076, !3077, !3078, !3079, !3082, !3083, !3084, !3085}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3042, file: !3043, line: 432, baseType: !3046, size: 192)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3047, size: 192, elements: !496)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3048, line: 16, size: 64, elements: !3049)
!3048 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3047, file: !3048, line: 17, baseType: !463, size: 16)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3047, file: !3048, line: 18, baseType: !463, size: 16, offset: 16)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3047, file: !3048, line: 19, baseType: !463, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3047, file: !3048, line: 19, baseType: !463, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3047, file: !3048, line: 19, baseType: !463, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3047, file: !3048, line: 19, baseType: !463, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3047, file: !3048, line: 19, baseType: !463, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3047, file: !3048, line: 20, baseType: !463, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3047, file: !3048, line: 20, baseType: !463, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3047, file: !3048, line: 20, baseType: !463, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3047, file: !3048, line: 20, baseType: !463, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3047, file: !3048, line: 20, baseType: !463, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3047, file: !3048, line: 20, baseType: !463, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3042, file: !3043, line: 436, baseType: !545, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3042, file: !3043, line: 440, baseType: !465, size: 16, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3042, file: !3043, line: 441, baseType: !465, size: 16, offset: 272)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3042, file: !3043, line: 442, baseType: !465, size: 16, offset: 288)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3042, file: !3043, line: 443, baseType: !465, size: 16, offset: 304)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3042, file: !3043, line: 447, baseType: !545, size: 64, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3042, file: !3043, line: 448, baseType: !545, size: 64, offset: 384)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3042, file: !3043, line: 459, baseType: !3071, size: 256, offset: 448)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3072, size: 256, elements: !1065)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3043, line: 428, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3042, file: !3043, line: 461, baseType: !545, size: 64, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3042, file: !3043, line: 463, baseType: !545, size: 64, offset: 768)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3042, file: !3043, line: 465, baseType: !545, size: 64, offset: 832)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3042, file: !3043, line: 466, baseType: !545, size: 64, offset: 896)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3042, file: !3043, line: 467, baseType: !545, size: 64, offset: 960)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3042, file: !3043, line: 473, baseType: !3080, size: 64, offset: 1024)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3043, line: 10, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3042, file: !3043, line: 480, baseType: !545, size: 64, offset: 1088)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3042, file: !3043, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3042, file: !3043, line: 491, baseType: !644, size: 32, offset: 1184)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3042, file: !3043, line: 501, baseType: !3086, size: 33792, offset: 1536)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3087, line: 448, size: 33792, elements: !3088)
!3087 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3088 = !{!3089, !3090, !3091, !3253, !3254, !3260, !3261}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3086, file: !3087, line: 461, baseType: !7, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3086, file: !3087, line: 468, baseType: !545, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3086, file: !3087, line: 476, baseType: !3092, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3087, line: 356, size: 33280, align: 512, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3093, file: !3087, line: 358, baseType: !7, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3093, file: !3087, line: 361, baseType: !7, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3093, file: !3087, line: 364, baseType: !648, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3093, file: !3087, line: 367, baseType: !648, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3093, file: !3087, line: 370, baseType: !648, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3093, file: !3087, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3093, file: !3087, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3093, file: !3087, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3093, file: !3087, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3093, file: !3087, line: 397, baseType: !3105, size: 32768, offset: 512)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3087, line: 348, size: 32768, elements: !3106)
!3106 = !{!3107, !3122, !3159, !3236, !3249}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3105, file: !3087, line: 349, baseType: !3108, size: 896)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3087, line: 12, size: 896, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3121}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3108, file: !3087, line: 13, baseType: !644, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3108, file: !3087, line: 14, baseType: !644, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3108, file: !3087, line: 15, baseType: !644, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3108, file: !3087, line: 16, baseType: !644, size: 32, offset: 96)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3108, file: !3087, line: 17, baseType: !644, size: 32, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3108, file: !3087, line: 18, baseType: !644, size: 32, offset: 160)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3108, file: !3087, line: 19, baseType: !644, size: 32, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3108, file: !3087, line: 22, baseType: !3118, size: 640, offset: 224)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 640, elements: !3119)
!3119 = !{!3120}
!3120 = !DISubrange(count: 20)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3108, file: !3087, line: 25, baseType: !644, size: 32, offset: 864)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3105, file: !3087, line: 350, baseType: !3123, size: 4096, align: 128)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3087, line: 34, size: 4096, align: 128, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3144, !3145, !3146, !3148, !3150, !3154}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3123, file: !3087, line: 35, baseType: !463, size: 16)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3123, file: !3087, line: 36, baseType: !463, size: 16, offset: 16)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3123, file: !3087, line: 37, baseType: !463, size: 16, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3123, file: !3087, line: 38, baseType: !463, size: 16, offset: 48)
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !3087, line: 39, baseType: !3130, size: 128, offset: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3123, file: !3087, line: 39, size: 128, elements: !3131)
!3131 = !{!3132, !3137}
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !3087, line: 40, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !3087, line: 40, size: 128, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3133, file: !3087, line: 41, baseType: !648, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3133, file: !3087, line: 42, baseType: !648, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !3087, line: 44, baseType: !3138, size: 128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !3087, line: 44, size: 128, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3138, file: !3087, line: 45, baseType: !644, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3138, file: !3087, line: 46, baseType: !644, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3138, file: !3087, line: 47, baseType: !644, size: 32, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3138, file: !3087, line: 48, baseType: !644, size: 32, offset: 96)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3123, file: !3087, line: 51, baseType: !644, size: 32, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3123, file: !3087, line: 52, baseType: !644, size: 32, offset: 224)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3123, file: !3087, line: 55, baseType: !3147, size: 1024, offset: 256)
!3147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 1024, elements: !657)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3123, file: !3087, line: 58, baseType: !3149, size: 2048, offset: 1280)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 2048, elements: !500)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3123, file: !3087, line: 60, baseType: !3151, size: 384, offset: 3328)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 384, elements: !3152)
!3152 = !{!3153}
!3153 = !DISubrange(count: 12)
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !3087, line: 62, baseType: !3155, size: 384, offset: 3712)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3123, file: !3087, line: 62, size: 384, elements: !3156)
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3155, file: !3087, line: 63, baseType: !3151, size: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3155, file: !3087, line: 64, baseType: !3151, size: 384)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3105, file: !3087, line: 351, baseType: !3160, size: 1088)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3087, line: 79, size: 1088, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3235}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3160, file: !3087, line: 80, baseType: !644, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3160, file: !3087, line: 81, baseType: !644, size: 32, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3160, file: !3087, line: 82, baseType: !644, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3160, file: !3087, line: 83, baseType: !644, size: 32, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3160, file: !3087, line: 84, baseType: !644, size: 32, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3160, file: !3087, line: 85, baseType: !644, size: 32, offset: 160)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3160, file: !3087, line: 86, baseType: !644, size: 32, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3160, file: !3087, line: 88, baseType: !3118, size: 640, offset: 224)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3160, file: !3087, line: 89, baseType: !453, size: 8, offset: 864)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3160, file: !3087, line: 90, baseType: !453, size: 8, offset: 872)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3160, file: !3087, line: 91, baseType: !453, size: 8, offset: 880)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3160, file: !3087, line: 92, baseType: !453, size: 8, offset: 888)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3160, file: !3087, line: 93, baseType: !453, size: 8, offset: 896)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3160, file: !3087, line: 94, baseType: !453, size: 8, offset: 904)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3160, file: !3087, line: 95, baseType: !3177, size: 64, offset: 960)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3179, line: 11, size: 128, elements: !3180)
!3179 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3178, file: !3179, line: 12, baseType: !531, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3178, file: !3179, line: 13, baseType: !3183, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3185, line: 103, size: 1344, elements: !3186)
!3185 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3215, !3216, !3217}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3184, file: !3185, line: 109, baseType: !545, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3184, file: !3185, line: 110, baseType: !545, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3184, file: !3185, line: 111, baseType: !545, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3184, file: !3185, line: 112, baseType: !545, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3184, file: !3185, line: 113, baseType: !545, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3184, file: !3185, line: 114, baseType: !545, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3184, file: !3185, line: 117, baseType: !545, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3184, file: !3185, line: 118, baseType: !545, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3184, file: !3185, line: 119, baseType: !545, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3184, file: !3185, line: 120, baseType: !545, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3184, file: !3185, line: 121, baseType: !545, size: 64, offset: 640)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3184, file: !3185, line: 122, baseType: !545, size: 64, offset: 704)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3184, file: !3185, line: 123, baseType: !545, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3184, file: !3185, line: 124, baseType: !545, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3184, file: !3185, line: 125, baseType: !545, size: 64, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3184, file: !3185, line: 139, baseType: !545, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3184, file: !3185, line: 142, baseType: !545, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !3185, line: 144, baseType: !3205, size: 64, offset: 1088)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3184, file: !3185, line: 144, size: 64, elements: !3206)
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3205, file: !3185, line: 146, baseType: !463, size: 16)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3205, file: !3185, line: 148, baseType: !648, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3205, file: !3185, line: 150, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3185, line: 59, size: 64, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3210, file: !3185, line: 61, baseType: !648, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3210, file: !3185, line: 63, baseType: !648, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3210, file: !3185, line: 65, baseType: !648, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3184, file: !3185, line: 153, baseType: !545, size: 64, offset: 1152)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3184, file: !3185, line: 154, baseType: !545, size: 64, offset: 1216)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !3185, line: 156, baseType: !3218, size: 64, offset: 1280)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3184, file: !3185, line: 156, size: 64, elements: !3219)
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3218, file: !3185, line: 158, baseType: !463, size: 16)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3218, file: !3185, line: 160, baseType: !648, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3218, file: !3185, line: 162, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3185, line: 69, size: 64, elements: !3224)
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3223, file: !3185, line: 71, baseType: !648, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3223, file: !3185, line: 73, baseType: !648, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3223, file: !3185, line: 75, baseType: !648, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3223, file: !3185, line: 77, baseType: !648, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3223, file: !3185, line: 80, baseType: !648, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3223, file: !3185, line: 83, baseType: !648, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3223, file: !3185, line: 86, baseType: !648, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3223, file: !3185, line: 88, baseType: !648, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3223, file: !3185, line: 93, baseType: !648, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3223, file: !3185, line: 100, baseType: !648, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3160, file: !3087, line: 96, baseType: !644, size: 32, offset: 1024)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3105, file: !3087, line: 352, baseType: !3237, size: 4608, align: 512)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3087, line: 333, size: 4608, align: 512, elements: !3238)
!3238 = !{!3239, !3240, !3247}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3237, file: !3087, line: 334, baseType: !3123, size: 4096, align: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3237, file: !3087, line: 335, baseType: !3241, size: 512, offset: 4096)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3087, line: 312, size: 512, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3241, file: !3087, line: 313, baseType: !648, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3241, file: !3087, line: 314, baseType: !648, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3241, file: !3087, line: 315, baseType: !3246, size: 384, offset: 128)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 384, elements: !2078)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3237, file: !3087, line: 336, baseType: !3248, offset: 4608)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, elements: !1864)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3105, file: !3087, line: 353, baseType: !3250, size: 32768)
!3250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 32768, elements: !3251)
!3251 = !{!3252}
!3252 = !DISubrange(count: 4096)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3086, file: !3087, line: 484, baseType: !3092, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3086, file: !3087, line: 491, baseType: !3255, size: 128, offset: 256)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3087, line: 404, size: 128, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3255, file: !3087, line: 424, baseType: !648, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3255, file: !3087, line: 432, baseType: !7, size: 32, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3255, file: !3087, line: 440, baseType: !7, size: 32, offset: 96)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3086, file: !3087, line: 498, baseType: !3255, size: 128, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3086, file: !3087, line: 508, baseType: !3093, size: 33280, align: 512, offset: 512)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1384, file: !1385, line: 31, baseType: !3263, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3265, line: 11, flags: DIFlagFwdDecl)
!3265 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1384, file: !1385, line: 32, baseType: !7, size: 32, offset: 512)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1384, file: !1385, line: 33, baseType: !1383, size: 64, offset: 576)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1384, file: !1385, line: 35, baseType: !3269, size: 64, offset: 640)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1385, line: 17, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1384, file: !1385, line: 37, baseType: !1846, size: 64, offset: 704)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1384, file: !1385, line: 38, baseType: !2165, size: 64, offset: 768)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1384, file: !1385, line: 39, baseType: !109, size: 32, offset: 832)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1384, file: !1385, line: 40, baseType: !3275, size: 192, offset: 896)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3276, line: 9, size: 192, elements: !3277)
!3276 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3277 = !{!3278, !3279, !3283, !3284}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3275, file: !3276, line: 10, baseType: !839, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3275, file: !3276, line: 11, baseType: !3280, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3282)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3276, line: 7, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3275, file: !3276, line: 12, baseType: !7, size: 32, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3275, file: !3276, line: 13, baseType: !386, size: 32, offset: 160)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1384, file: !1385, line: 42, baseType: !109, size: 32, offset: 1088)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1336, file: !14, line: 951, baseType: !60, size: 32, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1336, file: !14, line: 952, baseType: !581, size: 32, offset: 160)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1336, file: !14, line: 952, baseType: !581, size: 32, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1336, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1315, file: !14, line: 1012, baseType: !2000, size: 64, offset: 896)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1315, file: !14, line: 1013, baseType: !3292, size: 256, offset: 960)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3292, file: !14, line: 971, baseType: !545, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3292, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3292, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3292, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3292, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3292, file: !14, line: 976, baseType: !736, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1315, file: !14, line: 1014, baseType: !3301, size: 128, offset: 1216)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3302, line: 8, size: 128, elements: !3303)
!3302 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3301, file: !3302, line: 9, baseType: !720, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3301, file: !3302, line: 10, baseType: !610, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1315, file: !14, line: 1015, baseType: !575, size: 64, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1315, file: !14, line: 1016, baseType: !3308, size: 64, offset: 1408)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3310)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3311)
!3311 = !{!3312, !3313, !3317, !3321, !3325, !3353, !3354, !3360, !3373, !3381, !3385, !3386, !3390, !3391, !3395, !3400, !3401, !3405, !3409, !3415, !3416, !3420, !3421, !3425, !3429, !3433, !3439, !3443, !3447, !3451, !3455, !3456, !3462}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3310, file: !14, line: 1915, baseType: !764, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3310, file: !14, line: 1916, baseType: !3314, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!736, !1719, !736, !109}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3310, file: !14, line: 1917, baseType: !3318, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!527, !1719, !495, !542, !1298}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3310, file: !14, line: 1918, baseType: !3322, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!527, !1719, !412, !542, !1298}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3310, file: !14, line: 1919, baseType: !3326, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!527, !3329, !3351}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3338, !3339, !3340, !3341}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3330, file: !14, line: 374, baseType: !1719, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3330, file: !14, line: 375, baseType: !736, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3330, file: !14, line: 376, baseType: !3335, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !3329, !531}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3330, file: !14, line: 377, baseType: !366, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3330, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3330, file: !14, line: 379, baseType: !463, size: 16, offset: 288)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !14, line: 380, baseType: !3342, size: 64, offset: 320)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !14, line: 380, size: 64, elements: !3343)
!3343 = !{!3344, !3347}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3342, file: !14, line: 386, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3342, file: !14, line: 395, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!527, !366}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3310, file: !14, line: 1920, baseType: !3326, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3310, file: !14, line: 1921, baseType: !3355, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!109, !3329, !3358, !7}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3310, file: !14, line: 1923, baseType: !3361, size: 64, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!109, !1719, !3364}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3366)
!3366 = !{!3367, !3372}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3365, file: !14, line: 1859, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3369)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!915, !3364, !412, !109, !736, !648, !7}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3365, file: !14, line: 1860, baseType: !736, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3310, file: !14, line: 1924, baseType: !3374, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!3377, !1719, !3379}
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3378, line: 59, baseType: !7)
!3378 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3310, file: !14, line: 1925, baseType: !3382, size: 64, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!531, !1719, !7, !545}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3310, file: !14, line: 1926, baseType: !3382, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3310, file: !14, line: 1927, baseType: !3387, size: 64, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!109, !1719, !2743}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3310, file: !14, line: 1928, baseType: !545, size: 64, offset: 768)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3310, file: !14, line: 1929, baseType: !3392, size: 64, offset: 832)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!109, !575, !1719}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3310, file: !14, line: 1930, baseType: !3396, size: 64, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!109, !1719, !3399}
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !366)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3310, file: !14, line: 1931, baseType: !3392, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3310, file: !14, line: 1932, baseType: !3402, size: 64, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!109, !1719, !736, !736, !109}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3310, file: !14, line: 1933, baseType: !3406, size: 64, offset: 1088)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!109, !109, !1719, !109}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3310, file: !14, line: 1934, baseType: !3410, size: 64, offset: 1152)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!109, !1719, !109, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3310, file: !14, line: 1935, baseType: !1716, size: 64, offset: 1216)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3310, file: !14, line: 1936, baseType: !3417, size: 64, offset: 1280)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!109, !109}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3310, file: !14, line: 1937, baseType: !3410, size: 64, offset: 1344)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3310, file: !14, line: 1938, baseType: !3422, size: 64, offset: 1408)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!527, !2627, !1719, !1298, !542, !7}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3310, file: !14, line: 1939, baseType: !3426, size: 64, offset: 1472)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!527, !1719, !1298, !2627, !542, !7}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3310, file: !14, line: 1940, baseType: !3430, size: 64, offset: 1536)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{null, !1719}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3310, file: !14, line: 1941, baseType: !3434, size: 64, offset: 1600)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!109, !1719, !109, !3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3310, file: !14, line: 1942, baseType: !3440, size: 64, offset: 1664)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!531, !1719, !109, !736, !736}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3310, file: !14, line: 1944, baseType: !3444, size: 64, offset: 1728)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !1277, !1719}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3310, file: !14, line: 1948, baseType: !3448, size: 64, offset: 1792)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!527, !1719, !736, !1719, !736, !542, !7}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3310, file: !14, line: 1950, baseType: !3452, size: 64, offset: 1856)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!736, !1719, !736, !1719, !736, !736, !7}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3310, file: !14, line: 1953, baseType: !3402, size: 64, offset: 1920)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3310, file: !14, line: 1954, baseType: !3457, size: 64, offset: 1984)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!109, !3460, !7}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3310, file: !14, line: 1955, baseType: !3463, size: 64, offset: 2048)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!109, !3460, !3358, !7}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1315, file: !14, line: 1018, baseType: !648, size: 64, offset: 1472)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1315, file: !14, line: 1020, baseType: !366, size: 64, offset: 1536)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1315, file: !14, line: 1023, baseType: !366, size: 64, offset: 1600)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1315, file: !14, line: 1027, baseType: !3470, size: 64, offset: 1664)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1315, file: !14, line: 1029, baseType: !571, size: 64, offset: 1728)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1315, file: !14, line: 1030, baseType: !3473, size: 32, offset: 1792)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3474, line: 8, baseType: !644)
!3474 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1315, file: !14, line: 1031, baseType: !3473, size: 32, offset: 1824)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1278, file: !1279, line: 29, baseType: !366, size: 64, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1221, file: !14, line: 2077, baseType: !1274, size: 64, offset: 1088)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1221, file: !14, line: 2078, baseType: !1274, size: 64, offset: 1152)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1221, file: !14, line: 2079, baseType: !1274, size: 64, offset: 1216)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1221, file: !14, line: 2081, baseType: !3481, size: 64, offset: 1280)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!527, !726, !109, !495, !542, !736}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1221, file: !14, line: 2082, baseType: !3485, size: 64, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!527, !726, !109, !412, !542, !736}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1221, file: !14, line: 2083, baseType: !3489, size: 64, offset: 1408)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!3492, !575}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3520, !3521, !3522}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3494, file: !69, line: 297, baseType: !1081, size: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3494, file: !69, line: 298, baseType: !416, size: 128, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3494, file: !69, line: 299, baseType: !416, size: 128, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3494, file: !69, line: 300, baseType: !416, size: 128, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3494, file: !69, line: 301, baseType: !835, size: 256, offset: 512)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3494, file: !69, line: 302, baseType: !429, size: 32, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3494, file: !69, line: 303, baseType: !391, size: 32, offset: 800)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3494, file: !69, line: 304, baseType: !726, size: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3494, file: !69, line: 305, baseType: !3505, size: 64, offset: 896)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !3506)
!3506 = !{!3507, !3519}
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3505, file: !69, line: 69, baseType: !3508, size: 32)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3505, file: !69, line: 69, size: 32, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3508, file: !69, line: 70, baseType: !581, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3508, file: !69, line: 71, baseType: !590, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3508, file: !69, line: 72, baseType: !3513, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3514, line: 24, baseType: !3515)
!3514 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3514, line: 22, size: 32, elements: !3516)
!3516 = !{!3517}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3515, file: !3514, line: 23, baseType: !3518, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3514, line: 20, baseType: !587)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3505, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3494, file: !69, line: 306, baseType: !736, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3494, file: !69, line: 307, baseType: !545, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3494, file: !69, line: 308, baseType: !3523, size: 576, offset: 1088)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !3524)
!3524 = !{!3525, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3523, file: !69, line: 206, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !738)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3523, file: !69, line: 207, baseType: !3526, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3523, file: !69, line: 208, baseType: !3526, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3523, file: !69, line: 209, baseType: !3526, size: 64, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3523, file: !69, line: 210, baseType: !3526, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3523, file: !69, line: 211, baseType: !3526, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3523, file: !69, line: 212, baseType: !3526, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3523, file: !69, line: 213, baseType: !2049, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3523, file: !69, line: 214, baseType: !2049, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1221, file: !14, line: 2085, baseType: !3536, size: 64, offset: 1472)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!531, !726, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3541, line: 15, size: 256, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3542 = !{!3543, !3544, !3545, !3546, !3547}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3540, file: !3541, line: 16, baseType: !1397, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3540, file: !3541, line: 19, baseType: !109, size: 32, offset: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3540, file: !3541, line: 26, baseType: !545, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3540, file: !3541, line: 33, baseType: !545, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3540, file: !3541, line: 36, baseType: !3548, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1221, file: !14, line: 2087, baseType: !3536, size: 64, offset: 1536)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1221, file: !14, line: 2089, baseType: !760, size: 64, offset: 1600)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !727, file: !14, line: 1198, baseType: !3553, size: 64, offset: 448)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3555)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !3556)
!3556 = !{!3557, !3561, !3565, !3569, !3570, !3571, !3572, !3573, !3578, !3583, !3587}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3555, file: !69, line: 325, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!109, !3493}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3555, file: !69, line: 326, baseType: !3562, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!3493, !726, !109}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3555, file: !69, line: 327, baseType: !3566, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{null, !3493}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3555, file: !69, line: 328, baseType: !3558, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3555, file: !69, line: 329, baseType: !3558, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3555, file: !69, line: 330, baseType: !3558, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3555, file: !69, line: 331, baseType: !1249, size: 64, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3555, file: !69, line: 334, baseType: !3574, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!3577, !575}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3555, file: !69, line: 335, baseType: !3579, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!109, !575, !3582}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3555, file: !69, line: 337, baseType: !3584, size: 64, offset: 576)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!109, !575, !3577}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3555, file: !69, line: 339, baseType: !3588, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!109, !726, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !727, file: !14, line: 1199, baseType: !3593, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !3596)
!3596 = !{!3597, !3603, !3604, !3608, !3609, !3610, !3625, !3648, !3652, !3653, !3676}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3595, file: !69, line: 431, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!109, !726, !109, !109, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3595, file: !69, line: 432, baseType: !1249, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3595, file: !69, line: 433, baseType: !3605, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!109, !726, !7}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3595, file: !69, line: 434, baseType: !3605, size: 64, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3595, file: !69, line: 435, baseType: !1249, size: 64, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3595, file: !69, line: 436, baseType: !3611, size: 64, offset: 320)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!109, !726, !109, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3615, file: !69, line: 418, baseType: !109, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3615, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3615, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3615, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3615, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3615, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3615, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3615, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3595, file: !69, line: 437, baseType: !3626, size: 64, offset: 384)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!109, !726, !3505, !3629}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3630, file: !69, line: 346, baseType: !109, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3630, file: !69, line: 347, baseType: !648, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3630, file: !69, line: 348, baseType: !648, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3630, file: !69, line: 349, baseType: !648, size: 64, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3630, file: !69, line: 350, baseType: !648, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3630, file: !69, line: 351, baseType: !648, size: 64, offset: 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3630, file: !69, line: 352, baseType: !648, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3630, file: !69, line: 353, baseType: !845, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3630, file: !69, line: 355, baseType: !845, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3630, file: !69, line: 356, baseType: !109, size: 32, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3630, file: !69, line: 357, baseType: !109, size: 32, offset: 608)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3630, file: !69, line: 358, baseType: !648, size: 64, offset: 640)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3630, file: !69, line: 359, baseType: !648, size: 64, offset: 704)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3630, file: !69, line: 360, baseType: !648, size: 64, offset: 768)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3630, file: !69, line: 361, baseType: !845, size: 64, offset: 832)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3630, file: !69, line: 362, baseType: !109, size: 32, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3595, file: !69, line: 438, baseType: !3649, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!109, !726, !3591, !3629}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3595, file: !69, line: 440, baseType: !3626, size: 64, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3595, file: !69, line: 441, baseType: !3654, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!109, !726, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3658, file: !69, line: 412, baseType: !7, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3658, file: !69, line: 413, baseType: !3662, size: 1344, offset: 64)
!3662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3663, size: 1344, elements: !496)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3675}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !69, line: 398, baseType: !7, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3663, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3663, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3663, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3663, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3663, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3663, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3663, file: !69, line: 406, baseType: !650, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3663, file: !69, line: 407, baseType: !3674, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !392, line: 132, baseType: !648)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3663, file: !69, line: 408, baseType: !3674, size: 64, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3595, file: !69, line: 442, baseType: !3605, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !727, file: !14, line: 1200, baseType: !3678, size: 64, offset: 576)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3680)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !727, file: !14, line: 1201, baseType: !545, size: 64, offset: 640)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !727, file: !14, line: 1202, baseType: !545, size: 64, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !727, file: !14, line: 1203, baseType: !545, size: 64, offset: 768)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !727, file: !14, line: 1204, baseType: !610, size: 64, offset: 832)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !727, file: !14, line: 1205, baseType: !1746, size: 320, offset: 896)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !727, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !727, file: !14, line: 1207, baseType: !391, size: 32, offset: 1248)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !727, file: !14, line: 1209, baseType: !366, size: 64, offset: 1280)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !727, file: !14, line: 1211, baseType: !3690, size: 64, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3693)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !727, file: !14, line: 1223, baseType: !3695, size: 64, offset: 1408)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !627, line: 34, size: 64, elements: !3696)
!3696 = !{!3697}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3695, file: !627, line: 35, baseType: !630, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !727, file: !14, line: 1224, baseType: !416, size: 128, offset: 1472)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !727, file: !14, line: 1225, baseType: !3700, size: 64, offset: 1600)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !727, file: !14, line: 1226, baseType: !3703, size: 64, offset: 1664)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !727, file: !14, line: 1227, baseType: !3706, size: 64, offset: 1728)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !727, file: !14, line: 1228, baseType: !3709, size: 64, offset: 1792)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !727, file: !14, line: 1229, baseType: !1081, size: 128, offset: 1856)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !727, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !727, file: !14, line: 1231, baseType: !3714, size: 2496, offset: 2048)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3720, !3752}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3714, file: !69, line: 522, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3714, file: !69, line: 523, baseType: !1746, size: 320, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3714, file: !69, line: 524, baseType: !3719, size: 192, offset: 384)
!3719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 192, elements: !496)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3714, file: !69, line: 525, baseType: !3721, size: 1728, offset: 576)
!3721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3722, size: 1728, elements: !496)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3723)
!3723 = !{!3724, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3722, file: !69, line: 223, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3727)
!3727 = !{!3728, !3729, !3742, !3743}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3726, file: !69, line: 446, baseType: !109, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3726, file: !69, line: 447, baseType: !3730, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3732, file: !69, line: 313, baseType: !1249, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3732, file: !69, line: 314, baseType: !1249, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3732, file: !69, line: 315, baseType: !1249, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3732, file: !69, line: 316, baseType: !1249, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3732, file: !69, line: 317, baseType: !3558, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3732, file: !69, line: 318, baseType: !3558, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3732, file: !69, line: 319, baseType: !3558, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3732, file: !69, line: 320, baseType: !3588, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3726, file: !69, line: 448, baseType: !764, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3726, file: !69, line: 449, baseType: !3725, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3722, file: !69, line: 224, baseType: !109, size: 32, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3722, file: !69, line: 226, baseType: !416, size: 128, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3722, file: !69, line: 227, baseType: !545, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3722, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3722, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3722, file: !69, line: 230, baseType: !3526, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3722, file: !69, line: 231, baseType: !3526, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3722, file: !69, line: 232, baseType: !366, size: 64, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3714, file: !69, line: 526, baseType: !3753, size: 192, offset: 2304)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3730, size: 192, elements: !496)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !727, file: !14, line: 1233, baseType: !3755, size: 2368, offset: 4544)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3756)
!3756 = !{!3757, !3758, !3759}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3755, file: !14, line: 1185, baseType: !465, size: 16)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3755, file: !14, line: 1186, baseType: !465, size: 16, offset: 16)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3755, file: !14, line: 1187, baseType: !3760, size: 2304, offset: 64)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3761, size: 2304, elements: !496)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3762, line: 12, size: 768, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3763 = !{!3764, !3772, !3773, !3778, !3779}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3761, file: !3762, line: 13, baseType: !3765, size: 384)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3766, line: 17, size: 384, elements: !3767)
!3766 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3767 = !{!3768, !3769, !3770, !3771}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3765, file: !3766, line: 18, baseType: !109, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3765, file: !3766, line: 19, baseType: !109, size: 32, offset: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3765, file: !3766, line: 20, baseType: !1370, size: 192, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3765, file: !3766, line: 22, baseType: !1055, size: 128, align: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3761, file: !3762, line: 14, baseType: !907, size: 64, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3761, file: !3762, line: 15, baseType: !3774, size: 64, offset: 448)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3775, line: 16, size: 64, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3776 = !{!3777}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3774, file: !3775, line: 17, baseType: !1404, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3761, file: !3762, line: 16, baseType: !1370, size: 192, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3761, file: !3762, line: 17, baseType: !391, size: 32, offset: 704)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !727, file: !14, line: 1240, baseType: !366, size: 64, offset: 6912)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !727, file: !14, line: 1243, baseType: !644, size: 32, offset: 6976)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !727, file: !14, line: 1245, baseType: !2049, size: 64, offset: 7040)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !727, file: !14, line: 1246, baseType: !2049, size: 64, offset: 7104)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !727, file: !14, line: 1248, baseType: !645, size: 32, offset: 7168)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !727, file: !14, line: 1249, baseType: !3786, size: 64, offset: 7232)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !727, file: !14, line: 1252, baseType: !3789, size: 256, offset: 7296)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 256, elements: !657)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !727, file: !14, line: 1253, baseType: !3791, size: 128, offset: 7552)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3792, line: 21, baseType: !3793)
!3792 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3792, line: 19, size: 128, elements: !3794)
!3794 = !{!3795}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3793, file: !3792, line: 20, baseType: !3796, size: 128)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 128, elements: !2186)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !727, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !727, file: !14, line: 1261, baseType: !835, size: 256, offset: 7744)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !727, file: !14, line: 1267, baseType: !412, size: 64, offset: 8000)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !727, file: !14, line: 1269, baseType: !673, size: 64, offset: 8064)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !727, file: !14, line: 1271, baseType: !3802, size: 448, offset: 8128)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3541, line: 63, size: 448, elements: !3803)
!3803 = !{!3804, !3809, !3810, !3811, !3812, !3813, !3814}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3802, file: !3541, line: 64, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!545, !3808, !3539}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3802, file: !3541, line: 66, baseType: !3805, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3802, file: !3541, line: 69, baseType: !531, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3802, file: !3541, line: 70, baseType: !109, size: 32, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3802, file: !3541, line: 71, baseType: !7, size: 32, offset: 224)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3802, file: !3541, line: 74, baseType: !416, size: 128, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3802, file: !3541, line: 85, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !727, file: !14, line: 1274, baseType: !839, size: 64, offset: 8576)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !727, file: !14, line: 1280, baseType: !839, size: 64, offset: 8640)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !727, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !727, file: !14, line: 1286, baseType: !3473, size: 32, offset: 8736)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !727, file: !14, line: 1289, baseType: !1157, size: 64, offset: 8768)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !727, file: !14, line: 1290, baseType: !1205, size: 64, offset: 8832)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !727, file: !14, line: 1297, baseType: !1846, size: 64, offset: 8896)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !727, file: !14, line: 1304, baseType: !3824, size: 64, offset: 8960)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3825, line: 49, size: 64, elements: !3826)
!3825 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3826 = !{!3827}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3824, file: !3825, line: 50, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3825, line: 41, size: 512, align: 512, elements: !3830)
!3830 = !{!3831, !3832, !3837}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3829, file: !3825, line: 43, baseType: !429, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3829, file: !3825, line: 45, baseType: !3833, size: 192, offset: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3825, line: 29, size: 192, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3833, file: !3825, line: 30, baseType: !416, size: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3833, file: !3825, line: 32, baseType: !531, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3829, file: !3825, line: 46, baseType: !531, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !727, file: !14, line: 1305, baseType: !3824, size: 64, offset: 9024)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !727, file: !14, line: 1306, baseType: !1055, size: 128, align: 64, offset: 9088)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !727, file: !14, line: 1307, baseType: !1095, size: 256, offset: 9216)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !727, file: !14, line: 1309, baseType: !835, size: 256, offset: 9472)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !727, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !727, file: !14, line: 1317, baseType: !429, size: 32, align: 512, offset: 10240)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !727, file: !14, line: 1318, baseType: !416, size: 128, offset: 10304)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !727, file: !14, line: 1320, baseType: !429, size: 32, offset: 10432)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !727, file: !14, line: 1321, baseType: !416, size: 128, offset: 10496)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !721, file: !722, line: 73, baseType: !109, size: 32, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !721, file: !722, line: 74, baseType: !3849, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2017, line: 42, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !675, file: !612, line: 141, baseType: !3853, size: 64, offset: 704)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!109, !3601, !915}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !675, file: !612, line: 142, baseType: !3857, size: 64, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!610, !610, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !611, file: !612, line: 96, baseType: !726, size: 64, offset: 832)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !611, file: !612, line: 97, baseType: !545, size: 64, offset: 896)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !611, file: !612, line: 98, baseType: !366, size: 64, offset: 960)
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !612, line: 100, baseType: !3866, size: 128, offset: 1024)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !612, line: 100, size: 128, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3866, file: !612, line: 101, baseType: !416, size: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3866, file: !612, line: 102, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !611, file: !612, line: 104, baseType: !416, size: 128, offset: 1152)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !611, file: !612, line: 105, baseType: !416, size: 128, offset: 1280)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !611, file: !612, line: 113, baseType: !3874, size: 128, offset: 1408)
!3874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !612, line: 109, size: 128, elements: !3875)
!3875 = !{!3876, !3877, !3878}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3874, file: !612, line: 110, baseType: !1081, size: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3874, file: !612, line: 111, baseType: !626, size: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3874, file: !612, line: 112, baseType: !1055, size: 128, align: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !604, file: !14, line: 1968, baseType: !3880, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!412, !610, !575, !3883}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3885, line: 10, size: 128, elements: !3886)
!3885 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3884, file: !3885, line: 11, baseType: !878, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3884, file: !3885, line: 12, baseType: !366, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !604, file: !14, line: 1969, baseType: !3890, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!109, !3849, !575, !109}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !604, file: !14, line: 1970, baseType: !3894, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!598, !575, !109, !915}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !604, file: !14, line: 1972, baseType: !3898, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!109, !610, !495, !109}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !604, file: !14, line: 1974, baseType: !3902, size: 64, offset: 320)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!109, !3849, !575, !610, !537, !915}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !604, file: !14, line: 1976, baseType: !3906, size: 64, offset: 384)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!109, !610, !575, !610}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !604, file: !14, line: 1977, baseType: !3910, size: 64, offset: 448)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!109, !575, !610}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !604, file: !14, line: 1978, baseType: !3914, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!109, !3849, !575, !610, !412}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !604, file: !14, line: 1980, baseType: !3918, size: 64, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!109, !3849, !575, !610, !537}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !604, file: !14, line: 1982, baseType: !3910, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !604, file: !14, line: 1983, baseType: !3923, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!109, !3849, !575, !610, !537, !731}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !604, file: !14, line: 1985, baseType: !3927, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!109, !3849, !575, !610, !575, !610, !7}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !604, file: !14, line: 1987, baseType: !3931, size: 64, offset: 832)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!109, !3849, !610, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3949, !3958, !3959, !3964, !3965, !3966}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3935, file: !14, line: 227, baseType: !7, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3935, file: !14, line: 228, baseType: !537, size: 16, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !14, line: 241, baseType: !3940, size: 32, offset: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !14, line: 241, size: 32, elements: !3941)
!3941 = !{!3942, !3943}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3940, file: !14, line: 242, baseType: !581, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3940, file: !14, line: 243, baseType: !3944, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3945, line: 16, baseType: !3946)
!3945 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3945, line: 14, size: 32, elements: !3947)
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3946, file: !3945, line: 15, baseType: !586, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !14, line: 245, baseType: !3950, size: 32, offset: 96)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !14, line: 245, size: 32, elements: !3951)
!3951 = !{!3952, !3953}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3950, file: !14, line: 246, baseType: !590, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3950, file: !14, line: 247, baseType: !3954, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3945, line: 20, baseType: !3955)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3945, line: 18, size: 32, elements: !3956)
!3956 = !{!3957}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3955, file: !3945, line: 19, baseType: !594, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3935, file: !14, line: 249, baseType: !736, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3935, file: !14, line: 250, baseType: !3960, size: 128, offset: 192)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2050, line: 13, size: 128, elements: !3961)
!3961 = !{!3962, !3963}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3960, file: !2050, line: 14, baseType: !2049, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3960, file: !2050, line: 15, baseType: !531, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3935, file: !14, line: 251, baseType: !3960, size: 128, offset: 320)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3935, file: !14, line: 252, baseType: !3960, size: 128, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3935, file: !14, line: 259, baseType: !1719, size: 64, offset: 576)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !604, file: !14, line: 1988, baseType: !3968, size: 64, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!109, !3849, !3601, !3971, !644, !7}
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3973, line: 22, size: 1280, elements: !3974)
!3973 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3972, file: !3973, line: 23, baseType: !644, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3972, file: !3973, line: 24, baseType: !537, size: 16, offset: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3972, file: !3973, line: 25, baseType: !7, size: 32, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3972, file: !3973, line: 26, baseType: !2057, size: 32, offset: 96)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3972, file: !3973, line: 27, baseType: !648, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3972, file: !3973, line: 28, baseType: !648, size: 64, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3972, file: !3973, line: 41, baseType: !648, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3972, file: !3973, line: 42, baseType: !731, size: 32, offset: 320)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3972, file: !3973, line: 43, baseType: !731, size: 32, offset: 352)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3972, file: !3973, line: 44, baseType: !581, size: 32, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3972, file: !3973, line: 45, baseType: !590, size: 32, offset: 416)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3972, file: !3973, line: 46, baseType: !736, size: 64, offset: 448)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3972, file: !3973, line: 47, baseType: !3960, size: 128, offset: 512)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3972, file: !3973, line: 48, baseType: !3960, size: 128, offset: 640)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3972, file: !3973, line: 49, baseType: !3960, size: 128, offset: 768)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3972, file: !3973, line: 50, baseType: !3960, size: 128, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3972, file: !3973, line: 51, baseType: !648, size: 64, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3972, file: !3973, line: 52, baseType: !648, size: 64, offset: 1088)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3972, file: !3973, line: 53, baseType: !644, size: 32, offset: 1152)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3972, file: !3973, line: 54, baseType: !644, size: 32, offset: 1184)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3972, file: !3973, line: 55, baseType: !648, size: 64, offset: 1216)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !604, file: !14, line: 1990, baseType: !3997, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!527, !610, !495, !542}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !604, file: !14, line: 1991, baseType: !4001, size: 64, offset: 1024)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!109, !575, !4004, !648, !648}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !604, file: !14, line: 1993, baseType: !4007, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!109, !575, !109}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !604, file: !14, line: 1994, baseType: !4011, size: 64, offset: 1152)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!109, !575, !610, !1719, !7, !537}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !604, file: !14, line: 1997, baseType: !4015, size: 64, offset: 1216)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!109, !3849, !575, !1719, !537}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !604, file: !14, line: 1999, baseType: !4019, size: 64, offset: 1280)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!598, !3849, !610, !109}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !604, file: !14, line: 2001, baseType: !4023, size: 64, offset: 1344)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!109, !3849, !610, !598, !109}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !604, file: !14, line: 2003, baseType: !4027, size: 64, offset: 1408)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!109, !3849, !610, !4030}
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !604, file: !14, line: 2005, baseType: !4033, size: 64, offset: 1472)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!109, !610, !4030}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !604, file: !14, line: 2006, baseType: !4037, size: 64, offset: 1536)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!4040, !575}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4042)
!4042 = !{!4043, !4044}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4041, file: !14, line: 3193, baseType: !1392, size: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4041, file: !14, line: 3194, baseType: !644, size: 32, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !576, file: !14, line: 655, baseType: !726, size: 64, offset: 448)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !576, file: !14, line: 656, baseType: !571, size: 64, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !576, file: !14, line: 659, baseType: !366, size: 64, offset: 576)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !576, file: !14, line: 663, baseType: !545, size: 64, offset: 640)
!4049 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !14, line: 671, baseType: !4050, size: 32, offset: 704)
!4050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !14, line: 671, size: 32, elements: !4051)
!4051 = !{!4052, !4054}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4050, file: !14, line: 672, baseType: !4053, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4050, file: !14, line: 673, baseType: !7, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !576, file: !14, line: 675, baseType: !731, size: 32, offset: 736)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !576, file: !14, line: 676, baseType: !736, size: 64, offset: 768)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !576, file: !14, line: 677, baseType: !3960, size: 128, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !576, file: !14, line: 678, baseType: !3960, size: 128, offset: 960)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !576, file: !14, line: 679, baseType: !3960, size: 128, offset: 1088)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !576, file: !14, line: 680, baseType: !429, size: 32, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !576, file: !14, line: 681, baseType: !465, size: 16, offset: 1248)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !576, file: !14, line: 682, baseType: !453, size: 8, offset: 1264)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !576, file: !14, line: 683, baseType: !453, size: 8, offset: 1272)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !576, file: !14, line: 684, baseType: !3674, size: 64, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !576, file: !14, line: 691, baseType: !545, size: 64, offset: 1344)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !576, file: !14, line: 692, baseType: !1746, size: 320, offset: 1408)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !576, file: !14, line: 694, baseType: !545, size: 64, offset: 1728)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !576, file: !14, line: 695, baseType: !545, size: 64, offset: 1792)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !576, file: !14, line: 697, baseType: !1081, size: 128, offset: 1856)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !576, file: !14, line: 698, baseType: !416, size: 128, offset: 1984)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !576, file: !14, line: 707, baseType: !416, size: 128, offset: 2112)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !576, file: !14, line: 708, baseType: !416, size: 128, offset: 2240)
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !14, line: 709, baseType: !4074, size: 128, offset: 2368)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !14, line: 709, size: 128, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4074, file: !14, line: 710, baseType: !1205, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4074, file: !14, line: 711, baseType: !1055, size: 128, align: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !576, file: !14, line: 713, baseType: !841, size: 64, offset: 2496)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !576, file: !14, line: 714, baseType: !841, size: 64, offset: 2560)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !576, file: !14, line: 715, baseType: !391, size: 32, offset: 2624)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !576, file: !14, line: 716, baseType: !391, size: 32, offset: 2656)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !576, file: !14, line: 717, baseType: !391, size: 32, offset: 2688)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !576, file: !14, line: 719, baseType: !391, size: 32, offset: 2720)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !14, line: 721, baseType: !4085, size: 64, offset: 2752)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !14, line: 721, size: 64, elements: !4086)
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4085, file: !14, line: 722, baseType: !3308, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4085, file: !14, line: 723, baseType: !1228, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !576, file: !14, line: 725, baseType: !4090, size: 64, offset: 2816)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !576, file: !14, line: 726, baseType: !572, size: 1536, align: 64, offset: 2880)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !576, file: !14, line: 727, baseType: !416, size: 128, offset: 4416)
!4094 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !14, line: 728, baseType: !4095, size: 64, offset: 4544)
!4095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !14, line: 728, size: 64, elements: !4096)
!4096 = !{!4097, !4098, !4101, !4102}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4095, file: !14, line: 729, baseType: !2627, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4095, file: !14, line: 730, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4095, file: !14, line: 731, baseType: !495, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4095, file: !14, line: 732, baseType: !7, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !576, file: !14, line: 735, baseType: !645, size: 32, offset: 4608)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !576, file: !14, line: 738, baseType: !645, size: 32, offset: 4640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !576, file: !14, line: 739, baseType: !3786, size: 64, offset: 4672)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !576, file: !14, line: 750, baseType: !366, size: 64, offset: 4736)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !572, file: !14, line: 474, baseType: !1392, size: 128, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !572, file: !14, line: 475, baseType: !1746, size: 320, offset: 192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !572, file: !14, line: 476, baseType: !1397, size: 32, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !572, file: !14, line: 477, baseType: !391, size: 32, offset: 544)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !572, file: !14, line: 482, baseType: !1575, size: 128, offset: 576)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !572, file: !14, line: 483, baseType: !545, size: 64, offset: 704)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !572, file: !14, line: 484, baseType: !545, size: 64, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !572, file: !14, line: 485, baseType: !4115, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4118)
!4118 = !{!4119, !4123, !4193, !4197, !4201, !4207, !4211, !4215, !4220, !4224, !4228, !4232, !4233, !4237, !4241, !4245, !4250, !4254, !4261, !4262}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4117, file: !14, line: 405, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!109, !2633, !1240}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4117, file: !14, line: 406, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!109, !1719, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !4129)
!4129 = !{!4130, !4160, !4174}
!4130 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !38, line: 295, baseType: !4131, size: 512)
!4131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4128, file: !38, line: 295, size: 512, elements: !4132)
!4132 = !{!4133, !4159}
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !4131, file: !38, line: 296, baseType: !4134, size: 448)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !38, line: 296, size: 448, elements: !4135)
!4135 = !{!4136, !4137, !4146, !4147, !4148, !4157, !4158}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4134, file: !38, line: 298, baseType: !545, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !38, line: 299, baseType: !4138, size: 128, offset: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4134, file: !38, line: 299, size: 128, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4138, file: !38, line: 300, baseType: !416, size: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4138, file: !38, line: 302, baseType: !4142, size: 128)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !38, line: 302, size: 128, elements: !4143)
!4143 = !{!4144, !4145}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4142, file: !38, line: 303, baseType: !366, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4142, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4134, file: !38, line: 310, baseType: !571, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4134, file: !38, line: 311, baseType: !545, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !38, line: 312, baseType: !4149, size: 64, offset: 320)
!4149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4134, file: !38, line: 312, size: 64, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4149, file: !38, line: 313, baseType: !366, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4149, file: !38, line: 314, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !4155)
!4155 = !{!4156}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4154, file: !38, line: 256, baseType: !545, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4134, file: !38, line: 316, baseType: !391, size: 32, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4134, file: !38, line: 317, baseType: !391, size: 32, offset: 416)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4131, file: !38, line: 323, baseType: !2634, size: 512, align: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !38, line: 325, baseType: !4161, size: 512, offset: 512)
!4161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4128, file: !38, line: 325, size: 512, elements: !4162)
!4162 = !{!4163, !4173}
!4163 = !DIDerivedType(tag: DW_TAG_member, scope: !4161, file: !38, line: 326, baseType: !4164, size: 320)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !38, line: 326, size: 320, elements: !4165)
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4164, file: !38, line: 327, baseType: !545, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4164, file: !38, line: 328, baseType: !545, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4164, file: !38, line: 329, baseType: !545, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4164, file: !38, line: 331, baseType: !391, size: 32, offset: 192)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4164, file: !38, line: 332, baseType: !391, size: 32, offset: 224)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4164, file: !38, line: 333, baseType: !391, size: 32, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4164, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4161, file: !38, line: 339, baseType: !2634, size: 512, align: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !38, line: 341, baseType: !4175, size: 512, offset: 1024)
!4175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4128, file: !38, line: 341, size: 512, elements: !4176)
!4176 = !{!4177, !4186, !4192}
!4177 = !DIDerivedType(tag: DW_TAG_member, scope: !4175, file: !38, line: 342, baseType: !4178, size: 384)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4175, file: !38, line: 342, size: 384, elements: !4179)
!4179 = !{!4180, !4181, !4182, !4183, !4184, !4185}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4178, file: !38, line: 343, baseType: !545, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4178, file: !38, line: 344, baseType: !545, size: 64, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4178, file: !38, line: 346, baseType: !366, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4178, file: !38, line: 347, baseType: !366, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4178, file: !38, line: 348, baseType: !366, size: 64, offset: 256)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4178, file: !38, line: 349, baseType: !366, size: 64, offset: 320)
!4186 = !DIDerivedType(tag: DW_TAG_member, scope: !4175, file: !38, line: 352, baseType: !4187, size: 256)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4175, file: !38, line: 352, size: 256, elements: !4188)
!4188 = !{!4189, !4190, !4191}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4187, file: !38, line: 353, baseType: !545, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4187, file: !38, line: 354, baseType: !545, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4187, file: !38, line: 356, baseType: !416, size: 128, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4175, file: !38, line: 359, baseType: !2634, size: 512, align: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4117, file: !14, line: 409, baseType: !4194, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!109, !571, !1240}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4117, file: !14, line: 412, baseType: !4198, size: 64, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!915, !571, !4127}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4117, file: !14, line: 414, baseType: !4202, size: 64, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4117, file: !14, line: 416, baseType: !4208, size: 64, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!109, !1719, !571, !736, !7, !3019, !3438}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4117, file: !14, line: 419, baseType: !4212, size: 64, offset: 384)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!109, !1719, !571, !736, !7, !7, !2633, !366}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4117, file: !14, line: 424, baseType: !4216, size: 64, offset: 448)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!4219, !571, !4219}
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !392, line: 131, baseType: !648)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4117, file: !14, line: 425, baseType: !4221, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !4127, !542, !542}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4117, file: !14, line: 426, baseType: !4225, size: 64, offset: 576)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!915, !4127, !1397}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4117, file: !14, line: 427, baseType: !4229, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4127}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4117, file: !14, line: 428, baseType: !3326, size: 64, offset: 704)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4117, file: !14, line: 433, baseType: !4234, size: 64, offset: 768)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!109, !571, !4127, !4127, !74}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4117, file: !14, line: 435, baseType: !4238, size: 64, offset: 832)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!109, !4127}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4117, file: !14, line: 436, baseType: !4242, size: 64, offset: 896)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!915, !4127, !542, !542}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4117, file: !14, line: 438, baseType: !4246, size: 64, offset: 960)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4127, !4249, !4249}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4117, file: !14, line: 439, baseType: !4251, size: 64, offset: 1024)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!109, !571, !2633}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4117, file: !14, line: 442, baseType: !4255, size: 64, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!109, !4258, !1719, !4260}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4117, file: !14, line: 444, baseType: !3430, size: 64, offset: 1152)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4117, file: !14, line: 445, baseType: !4263, size: 64, offset: 1216)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!109, !3329, !3351}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !14, line: 486, baseType: !545, size: 64, offset: 896)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !572, file: !14, line: 487, baseType: !1746, size: 320, offset: 960)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !572, file: !14, line: 488, baseType: !3473, size: 32, offset: 1280)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !572, file: !14, line: 489, baseType: !429, size: 32, offset: 1312)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !572, file: !14, line: 490, baseType: !416, size: 128, offset: 1344)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !572, file: !14, line: 491, baseType: !366, size: 64, offset: 1472)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !562, file: !521, line: 180, baseType: !4273, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!527, !1719, !422, !561, !495, !736, !542}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !562, file: !521, line: 182, baseType: !4273, size: 64, offset: 384)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !562, file: !521, line: 184, baseType: !4278, size: 64, offset: 448)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!109, !1719, !422, !561, !2743}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !550, file: !521, line: 90, baseType: !4282, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !550, file: !521, line: 91, baseType: !4284, size: 64, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !511, file: !409, line: 120, baseType: !4286, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!4289, !478}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4291)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4292)
!4292 = !{!4293, !4294, !4298, !4302, !4308, !4312}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4291, file: !82, line: 40, baseType: !81, size: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4291, file: !82, line: 41, baseType: !4295, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!915}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4291, file: !82, line: 42, baseType: !4299, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!366}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4291, file: !82, line: 43, baseType: !4303, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!1823, !4306}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4291, file: !82, line: 44, baseType: !4309, size: 64, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!1823}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4291, file: !82, line: 45, baseType: !878, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !511, file: !409, line: 121, baseType: !4314, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!1823, !478}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !511, file: !409, line: 122, baseType: !4318, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !478, !4321, !4322}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !408, file: !409, line: 70, baseType: !4324, size: 64, offset: 384)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4326, line: 190, size: 1152, elements: !4327)
!4326 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4407, !4408, !4409, !4410, !4411, !4414}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4325, file: !4326, line: 191, baseType: !391, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4325, file: !4326, line: 192, baseType: !391, size: 32, offset: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4325, file: !4326, line: 202, baseType: !4324, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4325, file: !4326, line: 203, baseType: !412, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4325, file: !4326, line: 205, baseType: !947, size: 192, align: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4325, file: !4326, line: 207, baseType: !1823, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4325, file: !4326, line: 208, baseType: !7, size: 32, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, scope: !4325, file: !4326, line: 209, baseType: !4336, size: 256, offset: 512)
!4336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4325, file: !4326, line: 209, size: 256, elements: !4337)
!4337 = !{!4338, !4347, !4351}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4336, file: !4326, line: 210, baseType: !4339, size: 256)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4326, line: 153, size: 256, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4346}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4339, file: !4326, line: 154, baseType: !545, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4339, file: !4326, line: 156, baseType: !1578, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4339, file: !4326, line: 162, baseType: !4344, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4326, line: 162, flags: DIFlagFwdDecl)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4339, file: !4326, line: 167, baseType: !545, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4336, file: !4326, line: 211, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4326, line: 170, size: 64, elements: !4349)
!4349 = !{!4350}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4348, file: !4326, line: 171, baseType: !4324, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4336, file: !4326, line: 212, baseType: !4352, size: 256)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4326, line: 174, size: 256, elements: !4353)
!4353 = !{!4354, !4402, !4405, !4406}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4352, file: !4326, line: 175, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4357)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4326, line: 271, size: 768, elements: !4358)
!4358 = !{!4359, !4379, !4383, !4384, !4385, !4386, !4387, !4391, !4392, !4393, !4394, !4398}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4357, file: !4326, line: 276, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!109, !4363}
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4326, line: 251, size: 1216, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4364, file: !4326, line: 253, baseType: !4324, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4364, file: !4326, line: 254, baseType: !1719, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4364, file: !4326, line: 255, baseType: !1277, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4364, file: !4326, line: 256, baseType: !366, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4364, file: !4326, line: 259, baseType: !835, size: 256, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4364, file: !4326, line: 260, baseType: !835, size: 256, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4364, file: !4326, line: 261, baseType: !109, size: 32, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4364, file: !4326, line: 262, baseType: !416, size: 128, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4364, file: !4326, line: 263, baseType: !495, size: 64, offset: 960)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4364, file: !4326, line: 265, baseType: !542, size: 64, offset: 1024)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4364, file: !4326, line: 266, baseType: !915, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4364, file: !4326, line: 267, baseType: !915, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4364, file: !4326, line: 268, baseType: !2786, size: 64, offset: 1152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4357, file: !4326, line: 277, baseType: !4380, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !4363}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4357, file: !4326, line: 290, baseType: !1308, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4357, file: !4326, line: 292, baseType: !1295, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4357, file: !4326, line: 293, baseType: !1304, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4357, file: !4326, line: 294, baseType: !1300, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4357, file: !4326, line: 296, baseType: !4388, size: 64, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!527, !4363, !495, !542, !736}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4357, file: !4326, line: 306, baseType: !542, size: 64, offset: 448)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4357, file: !4326, line: 313, baseType: !915, size: 8, offset: 512)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4357, file: !4326, line: 314, baseType: !4388, size: 64, offset: 576)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4357, file: !4326, line: 317, baseType: !4395, size: 64, offset: 640)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!3377, !4363, !3379}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4357, file: !4326, line: 320, baseType: !4399, size: 64, offset: 704)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!109, !4363, !2743}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4352, file: !4326, line: 176, baseType: !4403, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4326, line: 35, flags: DIFlagFwdDecl)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4352, file: !4326, line: 177, baseType: !736, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4352, file: !4326, line: 178, baseType: !4324, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4325, file: !4326, line: 215, baseType: !366, size: 64, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4325, file: !4326, line: 221, baseType: !648, size: 64, offset: 832)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4325, file: !4326, line: 223, baseType: !465, size: 16, offset: 896)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4325, file: !4326, line: 224, baseType: !537, size: 16, offset: 912)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4325, file: !4326, line: 225, baseType: !4412, size: 64, offset: 960)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4326, line: 36, flags: DIFlagFwdDecl)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4325, file: !4326, line: 227, baseType: !1055, size: 128, align: 64, offset: 1024)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !408, file: !409, line: 71, baseType: !382, size: 32, offset: 448)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !408, file: !409, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !408, file: !409, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !408, file: !409, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !408, file: !409, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !408, file: !409, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !405, file: !94, line: 707, baseType: !404, size: 64, offset: 512)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !405, file: !94, line: 709, baseType: !4423, size: 64, offset: 576)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !405, file: !94, line: 711, baseType: !412, size: 64, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !94, line: 712, baseType: !4427, size: 64, offset: 704)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4429)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4430)
!4430 = !{!4431, !4432, !4433, !4439, !4444, !4448}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4429, file: !94, line: 90, baseType: !412, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4429, file: !94, line: 91, baseType: !547, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4429, file: !94, line: 92, baseType: !4434, size: 64, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!109, !4437, !490}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4429, file: !94, line: 93, baseType: !4440, size: 64, offset: 192)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!495, !4437, !4443, !4321, !4322}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4429, file: !94, line: 95, baseType: !4445, size: 64, offset: 256)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !404}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4429, file: !94, line: 97, baseType: !4449, size: 64, offset: 320)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4451)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4452)
!4452 = !{!4453, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4451, file: !101, line: 287, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!109, !404}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4451, file: !101, line: 288, baseType: !4445, size: 64, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4451, file: !101, line: 289, baseType: !4454, size: 64, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4451, file: !101, line: 290, baseType: !4454, size: 64, offset: 192)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4451, file: !101, line: 291, baseType: !4454, size: 64, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4451, file: !101, line: 292, baseType: !4454, size: 64, offset: 320)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4451, file: !101, line: 293, baseType: !4454, size: 64, offset: 384)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4451, file: !101, line: 294, baseType: !4454, size: 64, offset: 448)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4451, file: !101, line: 295, baseType: !4454, size: 64, offset: 512)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4451, file: !101, line: 296, baseType: !4454, size: 64, offset: 576)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4451, file: !101, line: 297, baseType: !4454, size: 64, offset: 640)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4451, file: !101, line: 298, baseType: !4454, size: 64, offset: 704)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4451, file: !101, line: 299, baseType: !4454, size: 64, offset: 768)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4451, file: !101, line: 300, baseType: !4454, size: 64, offset: 832)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4451, file: !101, line: 301, baseType: !4454, size: 64, offset: 896)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4451, file: !101, line: 302, baseType: !4454, size: 64, offset: 960)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4451, file: !101, line: 303, baseType: !4454, size: 64, offset: 1024)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4451, file: !101, line: 304, baseType: !4454, size: 64, offset: 1088)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4451, file: !101, line: 305, baseType: !4454, size: 64, offset: 1152)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4451, file: !101, line: 306, baseType: !4454, size: 64, offset: 1216)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4451, file: !101, line: 307, baseType: !4454, size: 64, offset: 1280)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4451, file: !101, line: 308, baseType: !4454, size: 64, offset: 1344)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4451, file: !101, line: 309, baseType: !4454, size: 64, offset: 1408)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !405, file: !94, line: 714, baseType: !4480, size: 64, offset: 768)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4482)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4483, line: 80, size: 1344, elements: !4484)
!4483 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4563}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4482, file: !4483, line: 81, baseType: !412, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4482, file: !4483, line: 82, baseType: !412, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4482, file: !4483, line: 83, baseType: !547, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4482, file: !4483, line: 84, baseType: !547, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4482, file: !4483, line: 85, baseType: !547, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4482, file: !4483, line: 87, baseType: !4491, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!109, !404, !4494}
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4496)
!4496 = !{!4497, !4498, !4499, !4500, !4501, !4502, !4503, !4516, !4526, !4527, !4528, !4529, !4530, !4538, !4539, !4540, !4541, !4542, !4543}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4495, file: !88, line: 97, baseType: !412, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4495, file: !88, line: 98, baseType: !4480, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4495, file: !88, line: 100, baseType: !764, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4495, file: !88, line: 101, baseType: !412, size: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4495, file: !88, line: 103, baseType: !915, size: 8, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4495, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4495, file: !88, line: 106, baseType: !4504, size: 64, offset: 320)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4507, line: 282, size: 1600, elements: !4508)
!4507 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4508 = !{!4509, !4510, !4511, !4515}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4506, file: !4507, line: 283, baseType: !3789, size: 256)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4506, file: !4507, line: 284, baseType: !3789, size: 256, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4506, file: !4507, line: 285, baseType: !4512, size: 1024, offset: 512)
!4512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !4513)
!4513 = !{!4514}
!4514 = !DISubrange(count: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4506, file: !4507, line: 286, baseType: !1823, size: 64, offset: 1536)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4495, file: !88, line: 107, baseType: !4517, size: 64, offset: 384)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4519)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4507, line: 217, size: 256, elements: !4520)
!4520 = !{!4521, !4522, !4524, !4525}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4519, file: !4507, line: 218, baseType: !3796, size: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4519, file: !4507, line: 219, baseType: !4523, size: 64, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4507, line: 15, baseType: !545)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4519, file: !4507, line: 220, baseType: !645, size: 32, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4519, file: !4507, line: 221, baseType: !645, size: 32, offset: 224)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4495, file: !88, line: 109, baseType: !4454, size: 64, offset: 448)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4495, file: !88, line: 110, baseType: !4445, size: 64, offset: 512)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4495, file: !88, line: 111, baseType: !4454, size: 64, offset: 576)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4495, file: !88, line: 112, baseType: !4445, size: 64, offset: 640)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4495, file: !88, line: 113, baseType: !4531, size: 64, offset: 704)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!109, !404, !4534}
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4535)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4536)
!4536 = !{!4537}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4535, file: !101, line: 59, baseType: !109, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4495, file: !88, line: 114, baseType: !4454, size: 64, offset: 768)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4495, file: !88, line: 115, baseType: !547, size: 64, offset: 832)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4495, file: !88, line: 116, baseType: !547, size: 64, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4495, file: !88, line: 118, baseType: !4449, size: 64, offset: 960)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4495, file: !88, line: 119, baseType: !4445, size: 64, offset: 1024)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4495, file: !88, line: 121, baseType: !4544, size: 64, offset: 1088)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4482, file: !4483, line: 88, baseType: !4434, size: 64, offset: 384)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4482, file: !4483, line: 89, baseType: !4454, size: 64, offset: 448)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4482, file: !4483, line: 90, baseType: !4445, size: 64, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4482, file: !4483, line: 91, baseType: !4445, size: 64, offset: 576)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4482, file: !4483, line: 92, baseType: !4445, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4482, file: !4483, line: 94, baseType: !4454, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4482, file: !4483, line: 95, baseType: !4454, size: 64, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4482, file: !4483, line: 97, baseType: !4531, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4482, file: !4483, line: 98, baseType: !4454, size: 64, offset: 896)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4482, file: !4483, line: 100, baseType: !4454, size: 64, offset: 960)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4482, file: !4483, line: 102, baseType: !4454, size: 64, offset: 1024)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4482, file: !4483, line: 103, baseType: !4445, size: 64, offset: 1088)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4482, file: !4483, line: 105, baseType: !4449, size: 64, offset: 1152)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4482, file: !4483, line: 107, baseType: !4560, size: 64, offset: 1216)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4562)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4483, line: 107, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4482, file: !4483, line: 109, baseType: !915, size: 8, offset: 1280)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !405, file: !94, line: 715, baseType: !4494, size: 64, offset: 832)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !405, file: !94, line: 717, baseType: !366, size: 64, offset: 896)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !405, file: !94, line: 719, baseType: !366, size: 64, offset: 960)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !405, file: !94, line: 721, baseType: !835, size: 256, offset: 1024)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !405, file: !94, line: 725, baseType: !4569, size: 448, offset: 1280)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4570)
!4570 = !{!4571, !4572, !4573, !4574}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4569, file: !94, line: 518, baseType: !416, size: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4569, file: !94, line: 519, baseType: !416, size: 128, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4569, file: !94, line: 520, baseType: !416, size: 128, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4569, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !405, file: !94, line: 726, baseType: !4576, size: 2496, offset: 1728)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4577)
!4577 = !{!4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4660, !4664}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4576, file: !101, line: 664, baseType: !4534, size: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4576, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4576, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4576, file: !101, line: 667, baseType: !915, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4576, file: !101, line: 668, baseType: !915, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4576, file: !101, line: 669, baseType: !915, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4576, file: !101, line: 670, baseType: !915, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4576, file: !101, line: 671, baseType: !915, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4576, file: !101, line: 672, baseType: !915, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4576, file: !101, line: 673, baseType: !915, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4576, file: !101, line: 674, baseType: !915, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4576, file: !101, line: 675, baseType: !644, size: 32, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4576, file: !101, line: 676, baseType: !429, size: 32, offset: 96)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4576, file: !101, line: 678, baseType: !416, size: 128, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4576, file: !101, line: 679, baseType: !784, size: 256, offset: 256)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4576, file: !101, line: 680, baseType: !4594, size: 64, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4596, line: 43, size: 1536, elements: !4597)
!4596 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4597 = !{!4598, !4599, !4600, !4601, !4602, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4595, file: !4596, line: 44, baseType: !412, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4595, file: !4596, line: 45, baseType: !109, size: 32, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4595, file: !4596, line: 46, baseType: !416, size: 128, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4595, file: !4596, line: 47, baseType: !429, size: 32, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4595, file: !4596, line: 48, baseType: !4603, size: 64, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4595, file: !4596, line: 49, baseType: !1077, size: 320, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4595, file: !4596, line: 50, baseType: !545, size: 64, offset: 704)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4595, file: !4596, line: 51, baseType: !1524, size: 64, offset: 768)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4595, file: !4596, line: 52, baseType: !1524, size: 64, offset: 832)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4595, file: !4596, line: 53, baseType: !1524, size: 64, offset: 896)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4595, file: !4596, line: 54, baseType: !1524, size: 64, offset: 960)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4595, file: !4596, line: 55, baseType: !1524, size: 64, offset: 1024)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4595, file: !4596, line: 56, baseType: !545, size: 64, offset: 1088)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4595, file: !4596, line: 57, baseType: !545, size: 64, offset: 1152)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4595, file: !4596, line: 58, baseType: !545, size: 64, offset: 1216)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4595, file: !4596, line: 59, baseType: !545, size: 64, offset: 1280)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4595, file: !4596, line: 60, baseType: !545, size: 64, offset: 1344)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4595, file: !4596, line: 61, baseType: !404, size: 64, offset: 1408)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4595, file: !4596, line: 62, baseType: !915, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4595, file: !4596, line: 63, baseType: !915, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4576, file: !101, line: 681, baseType: !915, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4576, file: !101, line: 682, baseType: !915, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4576, file: !101, line: 683, baseType: !915, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4576, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4576, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4576, file: !101, line: 690, baseType: !1516, size: 512, offset: 640)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4576, file: !101, line: 691, baseType: !648, size: 64, offset: 1152)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4576, file: !101, line: 692, baseType: !1095, size: 256, offset: 1216)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4576, file: !101, line: 693, baseType: !1370, size: 192, offset: 1472)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4576, file: !101, line: 694, baseType: !4603, size: 64, offset: 1664)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4576, file: !101, line: 695, baseType: !391, size: 32, offset: 1728)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4576, file: !101, line: 696, baseType: !391, size: 32, offset: 1760)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4576, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4576, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4576, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4576, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4576, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4576, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4576, file: !101, line: 703, baseType: !915, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4576, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4576, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4576, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4576, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4576, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4576, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4576, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4576, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4576, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4576, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4576, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4576, file: !101, line: 715, baseType: !648, size: 64, offset: 2048)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4576, file: !101, line: 716, baseType: !648, size: 64, offset: 2112)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4576, file: !101, line: 717, baseType: !648, size: 64, offset: 2176)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4576, file: !101, line: 718, baseType: !648, size: 64, offset: 2240)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4576, file: !101, line: 720, baseType: !4655, size: 64, offset: 2304)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4657)
!4657 = !{!4658, !4659}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4656, file: !101, line: 633, baseType: !429, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4656, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4576, file: !101, line: 721, baseType: !4661, size: 64, offset: 2368)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !404, !831}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4576, file: !101, line: 722, baseType: !4665, size: 64, offset: 2432)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !405, file: !94, line: 727, baseType: !4668, size: 64, offset: 4224)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4677, !4678, !4679}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4669, file: !101, line: 743, baseType: !4451, size: 1472)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4669, file: !101, line: 744, baseType: !4454, size: 64, offset: 1472)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4669, file: !101, line: 745, baseType: !4674, size: 64, offset: 1536)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !404, !915}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4669, file: !101, line: 746, baseType: !4454, size: 64, offset: 1600)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4669, file: !101, line: 747, baseType: !4445, size: 64, offset: 1664)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4669, file: !101, line: 748, baseType: !4445, size: 64, offset: 1728)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !405, file: !94, line: 736, baseType: !4681, size: 128, offset: 4288)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4682)
!4682 = !{!4683, !4687}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4681, file: !94, line: 531, baseType: !4684, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4686, line: 13, flags: DIFlagFwdDecl)
!4686 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4681, file: !94, line: 532, baseType: !4688, size: 64, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !405, file: !94, line: 738, baseType: !4691, size: 64, offset: 4416)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4693)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !405, file: !94, line: 740, baseType: !4695, size: 64, offset: 4480)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !405, file: !94, line: 741, baseType: !648, size: 64, offset: 4544)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !405, file: !94, line: 746, baseType: !648, size: 64, offset: 4608)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !405, file: !94, line: 747, baseType: !4699, size: 64, offset: 4672)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4701)
!4701 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !405, file: !94, line: 749, baseType: !4703, size: 64, offset: 4736)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4705)
!4705 = !{!4706, !4707, !4708}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4704, file: !94, line: 433, baseType: !7, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4704, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4704, file: !94, line: 435, baseType: !545, size: 64, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !405, file: !94, line: 751, baseType: !416, size: 128, offset: 4800)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !405, file: !94, line: 762, baseType: !4711, size: 64, offset: 4928)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !405, file: !94, line: 770, baseType: !4714, offset: 4992)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4715, line: 5, elements: !1124)
!4715 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !405, file: !94, line: 772, baseType: !4717, size: 64, offset: 4992)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4719, line: 18, flags: DIFlagFwdDecl)
!4719 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !405, file: !94, line: 773, baseType: !4721, size: 64, offset: 5056)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4723, line: 41, size: 512, elements: !4724)
!4723 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4724 = !{!4725, !4726, !4820, !4821, !4822, !4823}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4722, file: !4723, line: 42, baseType: !4721, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4722, file: !4723, line: 43, baseType: !4727, size: 64, offset: 64)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4729)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4723, line: 125, size: 1408, elements: !4730)
!4730 = !{!4731, !4735, !4739, !4745, !4749, !4750, !4755, !4759, !4763, !4767, !4771, !4772, !4776, !4780, !4784, !4795, !4796, !4797, !4798, !4808, !4812, !4816}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4729, file: !4723, line: 126, baseType: !4732, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!4721, !4721}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4729, file: !4723, line: 127, baseType: !4736, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !4721}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4729, file: !4723, line: 128, baseType: !4740, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!915, !4743}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4722)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4729, file: !4723, line: 129, baseType: !4746, size: 64, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!1823, !4743, !4437}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4729, file: !4723, line: 131, baseType: !4740, size: 64, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4729, file: !4723, line: 133, baseType: !4751, size: 64, offset: 320)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!4754, !4743}
!4754 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4723, line: 132, flags: DIFlagFwdDecl)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4729, file: !4723, line: 134, baseType: !4756, size: 64, offset: 384)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!915, !4743, !412}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4729, file: !4723, line: 136, baseType: !4760, size: 64, offset: 448)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!109, !4743, !412, !7, !366, !542}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4729, file: !4723, line: 141, baseType: !4764, size: 64, offset: 512)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!109, !4743, !412, !1172, !542}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4729, file: !4723, line: 144, baseType: !4768, size: 64, offset: 576)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!412, !4743}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4729, file: !4723, line: 145, baseType: !4768, size: 64, offset: 640)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4729, file: !4723, line: 146, baseType: !4773, size: 64, offset: 704)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!4721, !4743}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4729, file: !4723, line: 148, baseType: !4777, size: 64, offset: 768)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!4721, !4743, !4721}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4729, file: !4723, line: 151, baseType: !4781, size: 64, offset: 832)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!4721, !4743, !412}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4729, file: !4723, line: 153, baseType: !4785, size: 64, offset: 896)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!109, !4743, !412, !412, !7, !7, !4788}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4723, line: 94, size: 640, elements: !4790)
!4790 = !{!4791, !4792, !4793}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4789, file: !4723, line: 95, baseType: !4721, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4789, file: !4723, line: 96, baseType: !7, size: 32, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4789, file: !4723, line: 97, baseType: !4794, size: 512, offset: 128)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 512, elements: !1559)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4729, file: !4723, line: 158, baseType: !4777, size: 64, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4729, file: !4723, line: 161, baseType: !4773, size: 64, offset: 1024)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4729, file: !4723, line: 163, baseType: !4732, size: 64, offset: 1088)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4729, file: !4723, line: 164, baseType: !4799, size: 64, offset: 1152)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!109, !4743, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4723, line: 73, size: 128, elements: !4804)
!4804 = !{!4805, !4806, !4807}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4803, file: !4723, line: 74, baseType: !7, size: 32)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4803, file: !4723, line: 75, baseType: !7, size: 32, offset: 32)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4803, file: !4723, line: 76, baseType: !4743, size: 64, offset: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4729, file: !4723, line: 166, baseType: !4809, size: 64, offset: 1216)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!366, !4721, !109}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4729, file: !4723, line: 167, baseType: !4813, size: 64, offset: 1280)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!109, !4743, !7}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4729, file: !4723, line: 168, baseType: !4817, size: 64, offset: 1344)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!109, !4721}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4722, file: !4723, line: 44, baseType: !404, size: 64, offset: 128)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4722, file: !4723, line: 45, baseType: !416, size: 128, offset: 192)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4722, file: !4723, line: 46, baseType: !416, size: 128, offset: 320)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4722, file: !4723, line: 47, baseType: !453, size: 8, offset: 448)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !405, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !405, file: !94, line: 778, baseType: !731, size: 32, offset: 5152)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !405, file: !94, line: 779, baseType: !644, size: 32, offset: 5184)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !405, file: !94, line: 781, baseType: !429, size: 32, offset: 5216)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !405, file: !94, line: 782, baseType: !416, size: 128, offset: 5248)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !405, file: !94, line: 784, baseType: !4830, size: 64, offset: 5376)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4832)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4833, line: 52, size: 768, elements: !4834)
!4833 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4834 = !{!4835, !4836, !4837, !4838, !4839, !4843, !4847, !4848, !4849, !4850, !4854, !4858}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4832, file: !4833, line: 53, baseType: !412, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4832, file: !4833, line: 55, baseType: !547, size: 64, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4832, file: !4833, line: 56, baseType: !547, size: 64, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4832, file: !4833, line: 58, baseType: !4434, size: 64, offset: 192)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4832, file: !4833, line: 59, baseType: !4840, size: 64, offset: 256)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!495, !4437, !4443}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4832, file: !4833, line: 61, baseType: !4844, size: 64, offset: 320)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{null, !4830}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4832, file: !4833, line: 62, baseType: !4445, size: 64, offset: 384)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4832, file: !4833, line: 64, baseType: !4454, size: 64, offset: 448)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4832, file: !4833, line: 66, baseType: !4289, size: 64, offset: 512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4832, file: !4833, line: 67, baseType: !4851, size: 64, offset: 576)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!1823, !4437}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4832, file: !4833, line: 69, baseType: !4855, size: 64, offset: 640)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !4437, !4321, !4322}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4832, file: !4833, line: 71, baseType: !4449, size: 64, offset: 704)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !405, file: !94, line: 785, baseType: !547, size: 64, offset: 5440)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !405, file: !94, line: 787, baseType: !4445, size: 64, offset: 5504)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !405, file: !94, line: 788, baseType: !4862, size: 64, offset: 5568)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !405, file: !94, line: 789, baseType: !4865, size: 64, offset: 5632)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !405, file: !94, line: 791, baseType: !4868, size: 64, offset: 5696)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4870)
!4870 = !{!4871, !4872, !4873, !4874, !4875}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4869, file: !94, line: 598, baseType: !116, size: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4869, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4869, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4869, file: !94, line: 601, baseType: !915, size: 8, offset: 96)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4869, file: !94, line: 602, baseType: !915, size: 8, offset: 104)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !405, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !405, file: !94, line: 795, baseType: !915, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !405, file: !94, line: 796, baseType: !915, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !405, file: !94, line: 797, baseType: !915, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !405, file: !94, line: 798, baseType: !915, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !405, file: !94, line: 799, baseType: !915, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !399, file: !312, line: 73, baseType: !4883, size: 256, offset: 128)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !312, line: 66, size: 256, elements: !4884)
!4884 = !{!4885, !4886, !4887}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4883, file: !312, line: 68, baseType: !416, size: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4883, file: !312, line: 70, baseType: !366, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4883, file: !312, line: 72, baseType: !429, size: 32, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !399, file: !312, line: 76, baseType: !4889, size: 64, offset: 384)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4891)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4892, line: 178, size: 1664, elements: !4893)
!4892 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!4893 = !{!4894, !4898, !4971, !4975, !4979, !4980, !4981, !4985, !4986, !4990, !4995, !4999, !5004, !5010, !5033, !5047, !5053, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5108, !5109}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4891, file: !4892, line: 195, baseType: !4895, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!109, !398, !545}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4891, file: !4892, line: 215, baseType: !4899, size: 64, offset: 64)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!109, !398, !4902}
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4904, line: 166, size: 2944, elements: !4905)
!4904 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4932, !4933, !4934, !4935, !4938, !4939, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4903, file: !4904, line: 176, baseType: !915, size: 8)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4903, file: !4904, line: 183, baseType: !915, size: 8, offset: 8)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4903, file: !4904, line: 191, baseType: !915, size: 8, offset: 16)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4903, file: !4904, line: 194, baseType: !915, size: 8, offset: 24)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4903, file: !4904, line: 202, baseType: !915, size: 8, offset: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4903, file: !4904, line: 209, baseType: !915, size: 8, offset: 40)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4903, file: !4904, line: 220, baseType: !915, size: 8, offset: 48)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4903, file: !4904, line: 231, baseType: !915, size: 8, offset: 56)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !4903, file: !4904, line: 243, baseType: !915, size: 8, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4903, file: !4904, line: 268, baseType: !4916, size: 64, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4918, line: 65, size: 1280, elements: !4919)
!4918 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4917, file: !4918, line: 66, baseType: !382, size: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4917, file: !4918, line: 67, baseType: !398, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4917, file: !4918, line: 72, baseType: !495, size: 64, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4917, file: !4918, line: 77, baseType: !109, size: 32, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4917, file: !4918, line: 82, baseType: !1388, size: 192, offset: 256)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4917, file: !4918, line: 83, baseType: !366, size: 64, offset: 448)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4917, file: !4918, line: 99, baseType: !4916, size: 64, offset: 512)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4917, file: !4918, line: 107, baseType: !109, size: 32, offset: 576)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4917, file: !4918, line: 116, baseType: !416, size: 128, offset: 640)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4917, file: !4918, line: 128, baseType: !416, size: 128, offset: 768)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4917, file: !4918, line: 139, baseType: !1388, size: 192, offset: 896)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4917, file: !4918, line: 147, baseType: !1388, size: 192, offset: 1088)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !4903, file: !4904, line: 271, baseType: !429, size: 32, offset: 192)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4903, file: !4904, line: 281, baseType: !1360, size: 64, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4903, file: !4904, line: 284, baseType: !648, size: 64, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4903, file: !4904, line: 287, baseType: !4936, size: 32, offset: 384)
!4936 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4937, line: 85, baseType: !7)
!4937 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4903, file: !4904, line: 295, baseType: !416, size: 128, offset: 448)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4903, file: !4904, line: 298, baseType: !4940, size: 64, offset: 576)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4904, line: 77, size: 640, elements: !4942)
!4942 = !{!4943, !4944, !4945, !4946, !4947, !4948, !4949}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4941, file: !4904, line: 79, baseType: !109, size: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4941, file: !4904, line: 80, baseType: !109, size: 32, offset: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4941, file: !4904, line: 81, baseType: !404, size: 64, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4941, file: !4904, line: 82, baseType: !398, size: 64, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4941, file: !4904, line: 84, baseType: !610, size: 64, offset: 192)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4941, file: !4904, line: 86, baseType: !416, size: 128, offset: 256)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4941, file: !4904, line: 87, baseType: !835, size: 256, offset: 384)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4903, file: !4904, line: 306, baseType: !1388, size: 192, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4903, file: !4904, line: 309, baseType: !429, size: 32, offset: 832)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4903, file: !4904, line: 312, baseType: !1388, size: 192, offset: 896)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4903, file: !4904, line: 314, baseType: !429, size: 32, offset: 1088)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4903, file: !4904, line: 317, baseType: !1719, size: 64, offset: 1152)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4903, file: !4904, line: 325, baseType: !366, size: 64, offset: 1216)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4903, file: !4904, line: 336, baseType: !416, size: 128, offset: 1280)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4903, file: !4904, line: 339, baseType: !835, size: 256, offset: 1408)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4903, file: !4904, line: 349, baseType: !416, size: 128, offset: 1664)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4903, file: !4904, line: 352, baseType: !1370, size: 192, offset: 1792)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4903, file: !4904, line: 363, baseType: !416, size: 128, offset: 1984)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4903, file: !4904, line: 373, baseType: !416, size: 128, offset: 2112)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4903, file: !4904, line: 382, baseType: !109, size: 32, offset: 2240)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4903, file: !4904, line: 385, baseType: !835, size: 256, offset: 2304)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4903, file: !4904, line: 392, baseType: !4965, size: 384, offset: 2560)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !4966, line: 45, size: 384, elements: !4967)
!4966 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!4967 = !{!4968, !4969, !4970}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4965, file: !4966, line: 47, baseType: !835, size: 256)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !4965, file: !4966, line: 48, baseType: !1578, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4965, file: !4966, line: 49, baseType: !1578, size: 64, offset: 320)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4891, file: !4892, line: 229, baseType: !4972, size: 64, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !398, !4902}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4891, file: !4892, line: 257, baseType: !4976, size: 64, offset: 192)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{null, !398}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4891, file: !4892, line: 274, baseType: !4976, size: 64, offset: 256)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4891, file: !4892, line: 286, baseType: !4976, size: 64, offset: 320)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4891, file: !4892, line: 293, baseType: !4982, size: 64, offset: 384)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{null, !398, !4902, !915}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4891, file: !4892, line: 300, baseType: !4972, size: 64, offset: 448)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4891, file: !4892, line: 307, baseType: !4987, size: 64, offset: 512)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{null, !4940}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4891, file: !4892, line: 316, baseType: !4991, size: 64, offset: 576)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!4994, !398, !542}
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4891, file: !4892, line: 324, baseType: !4996, size: 64, offset: 640)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!109, !398, !4902, !2057, !2057, !964}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4891, file: !4892, line: 331, baseType: !5000, size: 64, offset: 704)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!109, !398, !4902, !109, !5003}
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4891, file: !4892, line: 341, baseType: !5005, size: 64, offset: 768)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!4994, !398, !5008}
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !4892, line: 41, flags: DIFlagFwdDecl)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4891, file: !4892, line: 349, baseType: !5011, size: 64, offset: 832)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!4994, !398, !5014, !5016}
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !4892, line: 42, flags: DIFlagFwdDecl)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5018, line: 39, size: 128, elements: !5019)
!5018 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5019 = !{!5020, !5031, !5032}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5017, file: !5018, line: 40, baseType: !5021, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5018, line: 11, size: 256, elements: !5023)
!5023 = !{!5024, !5025, !5026, !5027, !5029, !5030}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5022, file: !5018, line: 12, baseType: !545, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5022, file: !5018, line: 13, baseType: !7, size: 32, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5022, file: !5018, line: 14, baseType: !7, size: 32, offset: 96)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5022, file: !5018, line: 15, baseType: !5028, size: 64, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !392, line: 149, baseType: !648)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5022, file: !5018, line: 17, baseType: !7, size: 32, offset: 192)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5022, file: !5018, line: 20, baseType: !7, size: 32, offset: 224)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5017, file: !5018, line: 41, baseType: !7, size: 32, offset: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5017, file: !5018, line: 42, baseType: !7, size: 32, offset: 96)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4891, file: !4892, line: 375, baseType: !5034, size: 64, offset: 896)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!109, !4902, !398, !5037}
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !225, line: 1036, size: 256, elements: !5039)
!5039 = !{!5040, !5041, !5042, !5043, !5044, !5045, !5046}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5038, file: !225, line: 1037, baseType: !645, size: 32)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5038, file: !225, line: 1038, baseType: !645, size: 32, offset: 32)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5038, file: !225, line: 1039, baseType: !645, size: 32, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5038, file: !225, line: 1040, baseType: !645, size: 32, offset: 96)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5038, file: !225, line: 1042, baseType: !645, size: 32, offset: 128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !5038, file: !225, line: 1043, baseType: !645, size: 32, offset: 160)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5038, file: !225, line: 1044, baseType: !649, size: 64, offset: 192)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4891, file: !4892, line: 393, baseType: !5048, size: 64, offset: 960)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!109, !4902, !398, !2057, !5051}
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !392, line: 113, baseType: !648)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4891, file: !4892, line: 402, baseType: !5054, size: 64, offset: 1024)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !5057, !4902}
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !5059, line: 76, size: 256, elements: !5060)
!5059 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!5060 = !{!5061, !5082, !5086, !5087}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5058, file: !5059, line: 78, baseType: !5062, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{null, !5057, !5065}
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5067, line: 79, size: 128, elements: !5068)
!5067 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5068 = !{!5069, !5070}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5066, file: !5067, line: 80, baseType: !412, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5066, file: !5067, line: 81, baseType: !5071, size: 64, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5073, line: 5, baseType: !5074)
!5073 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5075)
!5075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5076, size: 192, elements: !1644)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5081}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5076, file: !3, baseType: !7, size: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5076, file: !3, baseType: !7, size: 32, offset: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5076, file: !3, baseType: !366, size: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5076, file: !3, baseType: !366, size: 64, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5058, file: !5059, line: 79, baseType: !5083, size: 64, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{null, !5057, !412}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5058, file: !5059, line: 80, baseType: !366, size: 64, offset: 128)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5058, file: !5059, line: 81, baseType: !412, size: 64, offset: 192)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4891, file: !4892, line: 405, baseType: !109, size: 32, offset: 1088)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4891, file: !4892, line: 407, baseType: !109, size: 32, offset: 1120)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4891, file: !4892, line: 409, baseType: !109, size: 32, offset: 1152)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4891, file: !4892, line: 411, baseType: !495, size: 64, offset: 1216)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4891, file: !4892, line: 413, baseType: !495, size: 64, offset: 1280)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4891, file: !4892, line: 415, baseType: !495, size: 64, offset: 1344)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4891, file: !4892, line: 423, baseType: !644, size: 32, offset: 1408)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4891, file: !4892, line: 433, baseType: !5096, size: 64, offset: 1472)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5098)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !142, line: 145, size: 192, elements: !5099)
!5099 = !{!5100, !5101, !5102, !5107}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5098, file: !142, line: 146, baseType: !7, size: 32)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5098, file: !142, line: 147, baseType: !141, size: 32, offset: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5098, file: !142, line: 148, baseType: !5103, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !142, line: 54, baseType: !5105)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!109, !398, !366, !4902}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5098, file: !142, line: 149, baseType: !412, size: 64, offset: 128)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4891, file: !4892, line: 435, baseType: !109, size: 32, offset: 1536)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4891, file: !4892, line: 444, baseType: !3308, size: 64, offset: 1600)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !399, file: !312, line: 88, baseType: !366, size: 64, offset: 448)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !399, file: !312, line: 98, baseType: !4940, size: 64, offset: 512)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !399, file: !312, line: 107, baseType: !4940, size: 64, offset: 576)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !399, file: !312, line: 110, baseType: !4940, size: 64, offset: 640)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !399, file: !312, line: 117, baseType: !915, size: 8, offset: 704)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !399, file: !312, line: 125, baseType: !4916, size: 64, offset: 768)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !399, file: !312, line: 135, baseType: !644, size: 32, offset: 832)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !399, file: !312, line: 143, baseType: !915, size: 8, offset: 864)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !399, file: !312, line: 146, baseType: !575, size: 64, offset: 896)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !399, file: !312, line: 149, baseType: !495, size: 64, offset: 960)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !399, file: !312, line: 159, baseType: !835, size: 256, offset: 1024)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !399, file: !312, line: 166, baseType: !835, size: 256, offset: 1280)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !399, file: !312, line: 174, baseType: !391, size: 32, offset: 1536)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !399, file: !312, line: 177, baseType: !835, size: 256, offset: 1600)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !399, file: !312, line: 183, baseType: !416, size: 128, offset: 1856)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !399, file: !312, line: 191, baseType: !416, size: 128, offset: 1984)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !399, file: !312, line: 198, baseType: !835, size: 256, offset: 2112)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !399, file: !312, line: 205, baseType: !416, size: 128, offset: 2368)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !399, file: !312, line: 220, baseType: !915, size: 8, offset: 2496)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !399, file: !312, line: 230, baseType: !5130, size: 64, offset: 2560)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !312, line: 15, flags: DIFlagFwdDecl)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !399, file: !312, line: 237, baseType: !429, size: 32, offset: 2624)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !399, file: !312, line: 242, baseType: !429, size: 32, offset: 2656)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !399, file: !312, line: 265, baseType: !644, size: 32, offset: 2688)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !399, file: !312, line: 268, baseType: !416, size: 128, offset: 2752)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !399, file: !312, line: 276, baseType: !429, size: 32, offset: 2880)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !399, file: !312, line: 279, baseType: !7, size: 32, offset: 2912)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !399, file: !312, line: 282, baseType: !5139, size: 8704, offset: 2944)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5140, line: 375, size: 8704, elements: !5141)
!5140 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5141 = !{!5142, !5143, !5162, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230, !6231, !6232, !6233, !6234, !6235, !6236, !6237, !6238, !6239, !6240, !6241, !6242, !6243, !6244, !6245, !6246, !6247, !6248, !6249, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257, !6258, !6259, !6260, !6261, !6262, !6263, !6264, !6265, !6266, !6267, !6268, !6269, !6270, !6271, !6272, !6273, !6274, !6275, !6276, !6277, !6278, !6279, !6280, !6281, !6282, !6283, !6284, !6285, !6286, !6287, !6288, !6289, !6290, !6291, !6292, !6293}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5139, file: !5140, line: 386, baseType: !835, size: 256)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5139, file: !5140, line: 396, baseType: !5144, size: 448, offset: 256)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5145, line: 85, size: 448, elements: !5146)
!5145 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5146 = !{!5147, !5161}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5144, file: !5145, line: 89, baseType: !5148, size: 320)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5149, line: 47, size: 320, elements: !5150)
!5149 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5150 = !{!5151, !5152}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5148, file: !5149, line: 48, baseType: !835, size: 256)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5148, file: !5149, line: 49, baseType: !5153, size: 64, offset: 256)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5149, line: 55, size: 192, elements: !5155)
!5155 = !{!5156, !5157, !5158, !5159, !5160}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5154, file: !5149, line: 56, baseType: !1404, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5154, file: !5149, line: 57, baseType: !545, size: 64, offset: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5154, file: !5149, line: 58, baseType: !7, size: 32, offset: 128)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5154, file: !5149, line: 59, baseType: !465, size: 16, offset: 160)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5154, file: !5149, line: 60, baseType: !465, size: 16, offset: 176)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5144, file: !5145, line: 95, baseType: !416, size: 128, offset: 320)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5139, file: !5140, line: 406, baseType: !5163, size: 64, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5145, line: 46, size: 512, elements: !5165)
!5165 = !{!5166, !5167, !5169, !5172, !5173, !5174}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5164, file: !5145, line: 48, baseType: !5154, size: 192)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5164, file: !5145, line: 55, baseType: !5168, size: 64, offset: 192)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5164, file: !5145, line: 61, baseType: !5170, size: 32, offset: 256)
!5170 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5171, line: 27, baseType: !644)
!5171 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5164, file: !5145, line: 66, baseType: !416, size: 128, offset: 320)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5164, file: !5145, line: 71, baseType: !915, size: 8, offset: 448)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5164, file: !5145, line: 74, baseType: !915, size: 8, offset: 456)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5139, file: !5140, line: 414, baseType: !835, size: 256, offset: 768)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5139, file: !5140, line: 422, baseType: !1388, size: 192, offset: 1024)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5139, file: !5140, line: 430, baseType: !1388, size: 192, offset: 1216)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5139, file: !5140, line: 433, baseType: !835, size: 256, offset: 1408)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5139, file: !5140, line: 435, baseType: !109, size: 32, offset: 1664)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5139, file: !5140, line: 437, baseType: !416, size: 128, offset: 1728)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5139, file: !5140, line: 443, baseType: !429, size: 32, offset: 1856)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5139, file: !5140, line: 448, baseType: !109, size: 32, offset: 1888)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5139, file: !5140, line: 452, baseType: !5184, size: 128, offset: 1920)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1389, line: 246, size: 128, elements: !5185)
!5185 = !{!5186}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5184, file: !1389, line: 247, baseType: !1392, size: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5139, file: !5140, line: 460, baseType: !416, size: 128, offset: 2048)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5139, file: !5140, line: 470, baseType: !3036, size: 64, offset: 2176)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5139, file: !5140, line: 474, baseType: !1095, size: 256, offset: 2240)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5139, file: !5140, line: 482, baseType: !109, size: 32, offset: 2496)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5139, file: !5140, line: 490, baseType: !416, size: 128, offset: 2560)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5139, file: !5140, line: 499, baseType: !109, size: 32, offset: 2688)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5139, file: !5140, line: 506, baseType: !416, size: 128, offset: 2752)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5139, file: !5140, line: 514, baseType: !109, size: 32, offset: 2880)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5139, file: !5140, line: 521, baseType: !416, size: 128, offset: 2944)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5139, file: !5140, line: 530, baseType: !416, size: 128, offset: 3072)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5139, file: !5140, line: 539, baseType: !416, size: 128, offset: 3200)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5139, file: !5140, line: 541, baseType: !109, size: 32, offset: 3328)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5139, file: !5140, line: 541, baseType: !109, size: 32, offset: 3360)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5139, file: !5140, line: 542, baseType: !109, size: 32, offset: 3392)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5139, file: !5140, line: 542, baseType: !109, size: 32, offset: 3424)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5139, file: !5140, line: 543, baseType: !5203, size: 64, offset: 3456)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5205)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5140, line: 47, size: 576, elements: !5206)
!5206 = !{!5207, !5326, !5330, !5331, !5373, !6206, !6210, !6214, !6218}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5205, file: !5140, line: 83, baseType: !5208, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!5211, !398, !4902, !5311}
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5213, line: 117, size: 1600, elements: !5214)
!5213 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5cd71656f00b65d2ac7e671422852fe")
!5214 = !{!5215, !5216, !5217, !5252, !5253, !5275, !5299, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5212, file: !5213, line: 121, baseType: !398, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5212, file: !5213, line: 126, baseType: !416, size: 128, offset: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5212, file: !5213, line: 131, baseType: !5218, size: 256, offset: 192)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5219, line: 55, size: 256, elements: !5220)
!5219 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5220 = !{!5221, !5222, !5223, !5246, !5247}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5218, file: !5219, line: 56, baseType: !2057, size: 32)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5218, file: !5219, line: 57, baseType: !2057, size: 32, offset: 32)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5218, file: !5219, line: 58, baseType: !5224, size: 64, offset: 64)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5219, line: 67, size: 3136, elements: !5226)
!5226 = !{!5227, !5228, !5244}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5225, file: !5219, line: 73, baseType: !109, size: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5225, file: !5219, line: 82, baseType: !5229, size: 1536, offset: 64)
!5229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5230, size: 1536, elements: !5242)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5232, line: 80, size: 960, elements: !5233)
!5232 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5231, file: !5232, line: 84, baseType: !416, size: 128)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5231, file: !5232, line: 89, baseType: !5218, size: 256, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5231, file: !5232, line: 166, baseType: !2057, size: 32, offset: 384)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5231, file: !5232, line: 171, baseType: !3789, size: 256, offset: 416)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5231, file: !5232, line: 176, baseType: !2057, size: 32, offset: 672)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5231, file: !5232, line: 184, baseType: !5051, size: 64, offset: 704)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5231, file: !5232, line: 189, baseType: !398, size: 64, offset: 768)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5231, file: !5232, line: 197, baseType: !416, size: 128, offset: 832)
!5242 = !{!5243}
!5243 = !DISubrange(count: 24)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5225, file: !5219, line: 106, baseType: !5245, size: 1536, offset: 1600)
!5245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5052, size: 1536, elements: !5242)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5218, file: !5219, line: 59, baseType: !382, size: 32, offset: 128)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5218, file: !5219, line: 60, baseType: !5248, size: 64, offset: 192)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{null, !5251}
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5212, file: !5213, line: 136, baseType: !2185, size: 128, offset: 448)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5212, file: !5213, line: 141, baseType: !5254, size: 64, offset: 576)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5256)
!5256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5257, line: 61, size: 192, elements: !5258)
!5257 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!5258 = !{!5259, !5260, !5261, !5262, !5268, !5269, !5270, !5271, !5272, !5273, !5274}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5256, file: !5257, line: 63, baseType: !644, size: 32)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5256, file: !5257, line: 72, baseType: !453, size: 8, offset: 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !5256, file: !5257, line: 75, baseType: !453, size: 8, offset: 40)
!5262 = !DIDerivedType(tag: DW_TAG_member, scope: !5256, file: !5257, line: 77, baseType: !5263, size: 32, offset: 48)
!5263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5256, file: !5257, line: 77, size: 32, elements: !5264)
!5264 = !{!5265, !5267}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !5263, file: !5257, line: 86, baseType: !5266, size: 32)
!5266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 32, elements: !1065)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !5263, file: !5257, line: 112, baseType: !5266, size: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !5256, file: !5257, line: 121, baseType: !5266, size: 32, offset: 80)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !5256, file: !5257, line: 129, baseType: !5266, size: 32, offset: 112)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !5256, file: !5257, line: 132, baseType: !453, size: 8, offset: 144)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !5256, file: !5257, line: 134, baseType: !453, size: 8, offset: 152)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !5256, file: !5257, line: 137, baseType: !915, size: 8, offset: 160)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !5256, file: !5257, line: 140, baseType: !915, size: 8, offset: 168)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !5256, file: !5257, line: 143, baseType: !915, size: 8, offset: 176)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5212, file: !5213, line: 145, baseType: !5276, size: 64, offset: 640)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5278)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !5213, line: 42, size: 192, elements: !5279)
!5279 = !{!5280, !5284, !5288}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5278, file: !5213, line: 53, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{null, !5211}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !5278, file: !5213, line: 73, baseType: !5285, size: 64, offset: 64)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!109, !5211, !4902, !907}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !5278, file: !5213, line: 97, baseType: !5289, size: 64, offset: 128)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!109, !5211, !4902, !7, !7, !5292, !7}
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4937, line: 96, size: 64, elements: !5294)
!5294 = !{!5295, !5296, !5297, !5298}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5293, file: !4937, line: 97, baseType: !465, size: 16)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5293, file: !4937, line: 98, baseType: !465, size: 16, offset: 16)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5293, file: !4937, line: 99, baseType: !465, size: 16, offset: 32)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5293, file: !4937, line: 100, baseType: !465, size: 16, offset: 48)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5212, file: !5213, line: 150, baseType: !5300, size: 128, offset: 704)
!5300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1065)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5212, file: !5213, line: 168, baseType: !5300, size: 128, offset: 832)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5212, file: !5213, line: 175, baseType: !5052, size: 64, offset: 960)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5212, file: !5213, line: 180, baseType: !7, size: 32, offset: 1024)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5212, file: !5213, line: 185, baseType: !7, size: 32, offset: 1056)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5212, file: !5213, line: 190, baseType: !109, size: 32, offset: 1088)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !5212, file: !5213, line: 196, baseType: !109, size: 32, offset: 1120)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !5212, file: !5213, line: 202, baseType: !109, size: 32, offset: 1152)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !5212, file: !5213, line: 206, baseType: !416, size: 128, offset: 1216)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5212, file: !5213, line: 213, baseType: !5310, size: 256, offset: 1344)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4994, size: 256, elements: !1065)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5313)
!5313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !225, line: 703, size: 832, elements: !5314)
!5314 = !{!5315, !5316, !5317, !5318, !5319, !5320, !5322, !5323, !5324}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5313, file: !225, line: 705, baseType: !645, size: 32)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5313, file: !225, line: 707, baseType: !645, size: 32, offset: 32)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5313, file: !225, line: 709, baseType: !645, size: 32, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5313, file: !225, line: 714, baseType: !645, size: 32, offset: 96)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5313, file: !225, line: 719, baseType: !645, size: 32, offset: 128)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5313, file: !225, line: 725, baseType: !5321, size: 128, offset: 160)
!5321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 128, elements: !1065)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5313, file: !225, line: 727, baseType: !5321, size: 128, offset: 288)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5313, file: !225, line: 729, baseType: !5321, size: 128, offset: 416)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5313, file: !225, line: 735, baseType: !5325, size: 256, offset: 576)
!5325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 256, elements: !1065)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5205, file: !5140, line: 98, baseType: !5327, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!5254, !5311}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5205, file: !5140, line: 114, baseType: !4976, size: 64, offset: 128)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5205, file: !5140, line: 124, baseType: !5332, size: 64, offset: 192)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!149, !398, !5335}
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5337)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !150, line: 252, size: 960, elements: !5338)
!5338 = !{!5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !5337, file: !150, line: 258, baseType: !109, size: 32)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !5337, file: !150, line: 259, baseType: !463, size: 16, offset: 32)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !5337, file: !150, line: 260, baseType: !463, size: 16, offset: 48)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !5337, file: !150, line: 261, baseType: !463, size: 16, offset: 64)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !5337, file: !150, line: 262, baseType: !463, size: 16, offset: 80)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !5337, file: !150, line: 263, baseType: !463, size: 16, offset: 96)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !5337, file: !150, line: 264, baseType: !463, size: 16, offset: 112)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !5337, file: !150, line: 265, baseType: !463, size: 16, offset: 128)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !5337, file: !150, line: 266, baseType: !463, size: 16, offset: 144)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !5337, file: !150, line: 267, baseType: !463, size: 16, offset: 160)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !5337, file: !150, line: 268, baseType: !463, size: 16, offset: 176)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5337, file: !150, line: 303, baseType: !644, size: 32, offset: 192)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !5337, file: !150, line: 320, baseType: !109, size: 32, offset: 224)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !5337, file: !150, line: 321, baseType: !463, size: 16, offset: 256)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !5337, file: !150, line: 322, baseType: !463, size: 16, offset: 272)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !5337, file: !150, line: 323, baseType: !463, size: 16, offset: 288)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !5337, file: !150, line: 324, baseType: !463, size: 16, offset: 304)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !5337, file: !150, line: 325, baseType: !463, size: 16, offset: 320)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !5337, file: !150, line: 326, baseType: !463, size: 16, offset: 336)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !5337, file: !150, line: 327, baseType: !463, size: 16, offset: 352)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !5337, file: !150, line: 328, baseType: !463, size: 16, offset: 368)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !5337, file: !150, line: 329, baseType: !463, size: 16, offset: 384)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !5337, file: !150, line: 330, baseType: !463, size: 16, offset: 400)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !5337, file: !150, line: 331, baseType: !463, size: 16, offset: 416)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !5337, file: !150, line: 332, baseType: !463, size: 16, offset: 432)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !5337, file: !150, line: 333, baseType: !463, size: 16, offset: 448)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5337, file: !150, line: 341, baseType: !463, size: 16, offset: 464)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5337, file: !150, line: 349, baseType: !463, size: 16, offset: 480)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5337, file: !150, line: 378, baseType: !453, size: 8, offset: 496)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !5337, file: !150, line: 389, baseType: !915, size: 8, offset: 504)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5337, file: !150, line: 396, baseType: !416, size: 128, offset: 512)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5337, file: !150, line: 403, baseType: !3789, size: 256, offset: 640)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5337, file: !150, line: 411, baseType: !149, size: 32, offset: 896)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5337, file: !150, line: 418, baseType: !192, size: 32, offset: 928)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5205, file: !5140, line: 201, baseType: !5374, size: 64, offset: 256)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{!109, !398, !5377}
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5379, line: 365, size: 960, elements: !5380)
!5379 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28de65f10f2586a2044f2cca3eae067c")
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5386, !5387, !6143, !6154, !6155, !6164, !6165, !6203, !6204, !6205}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5378, file: !5379, line: 366, baseType: !382, size: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5378, file: !5379, line: 368, baseType: !398, size: 64, offset: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !5378, file: !5379, line: 378, baseType: !915, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !5378, file: !5379, line: 390, baseType: !915, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !5378, file: !5379, line: 391, baseType: !915, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !5378, file: !5379, line: 400, baseType: !915, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !5378, file: !5379, line: 401, baseType: !5388, size: 64, offset: 192)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !5379, line: 160, size: 256, elements: !5390)
!5390 = !{!5391, !6140, !6141, !6142}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5389, file: !5379, line: 161, baseType: !5392, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !290, line: 603, size: 5312, elements: !5394)
!5394 = !{!5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5984, !5985, !5986, !6125, !6126, !6127, !6128, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5393, file: !290, line: 605, baseType: !398, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5393, file: !290, line: 614, baseType: !416, size: 128, offset: 64)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5393, file: !290, line: 617, baseType: !495, size: 64, offset: 192)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5393, file: !290, line: 628, baseType: !5144, size: 448, offset: 256)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5393, file: !290, line: 631, baseType: !5218, size: 256, offset: 704)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5393, file: !290, line: 637, baseType: !2057, size: 32, offset: 960)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !5393, file: !290, line: 639, baseType: !5003, size: 64, offset: 1024)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !5393, file: !290, line: 641, baseType: !7, size: 32, offset: 1088)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !5393, file: !290, line: 646, baseType: !915, size: 8, offset: 1120)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !5393, file: !290, line: 649, baseType: !5051, size: 64, offset: 1152)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !5393, file: !290, line: 651, baseType: !7, size: 32, offset: 1216)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5393, file: !290, line: 660, baseType: !5407, size: 64, offset: 1280)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !5409, line: 932, size: 8064, elements: !5410)
!5409 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!5410 = !{!5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5942, !5943, !5945, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5977, !5978, !5979, !5980, !5981}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5408, file: !5409, line: 934, baseType: !398, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5408, file: !5409, line: 936, baseType: !4717, size: 64, offset: 64)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5408, file: !5409, line: 944, baseType: !416, size: 128, offset: 128)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5408, file: !5409, line: 947, baseType: !495, size: 64, offset: 256)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5408, file: !5409, line: 959, baseType: !5144, size: 448, offset: 320)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5408, file: !5409, line: 962, baseType: !5218, size: 256, offset: 768)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5408, file: !5409, line: 971, baseType: !5392, size: 64, offset: 1024)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !5408, file: !5409, line: 980, baseType: !5392, size: 64, offset: 1088)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5408, file: !5409, line: 986, baseType: !7, size: 32, offset: 1152)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !5408, file: !5409, line: 995, baseType: !109, size: 32, offset: 1184)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !5408, file: !5409, line: 1003, baseType: !109, size: 32, offset: 1216)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5408, file: !5409, line: 1013, baseType: !915, size: 8, offset: 1248)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5408, file: !5409, line: 1023, baseType: !5337, size: 960, offset: 1280)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5408, file: !5409, line: 1039, baseType: !5337, size: 960, offset: 2240)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5408, file: !5409, line: 1048, baseType: !109, size: 32, offset: 3200)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5408, file: !5409, line: 1056, baseType: !109, size: 32, offset: 3232)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5408, file: !5409, line: 1059, baseType: !5428, size: 64, offset: 3264)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5430)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !5409, line: 402, size: 1536, elements: !5431)
!5431 = !{!5432, !5436, !5440, !5444, !5448, !5453, !5454, !5847, !5851, !5855, !5859, !5893, !5897, !5901, !5907, !5911, !5912, !5916, !5921, !5927, !5931, !5935, !5936, !5937}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5430, file: !5409, line: 413, baseType: !5433, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{null, !5407}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5430, file: !5409, line: 436, baseType: !5437, size: 64, offset: 64)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!109, !5407, !4902, !2057, !2057, !2057}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5430, file: !5409, line: 458, baseType: !5441, size: 64, offset: 128)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!109, !5407, !4902, !2057, !2057, !2057, !2034, !2034}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5430, file: !5409, line: 478, baseType: !5445, size: 64, offset: 192)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!109, !5407, !109, !109}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5430, file: !5409, line: 493, baseType: !5449, size: 64, offset: 256)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!109, !5407, !5452, !5452, !5452, !2057, !5163}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5430, file: !5409, line: 504, baseType: !5433, size: 64, offset: 320)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5430, file: !5409, line: 520, baseType: !5455, size: 64, offset: 384)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!109, !5458, !5163}
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !5409, line: 1193, size: 384, elements: !5460)
!5460 = !{!5461, !5462, !5463, !5465, !5466, !5467, !5846}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5459, file: !5409, line: 1194, baseType: !5211, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5459, file: !5409, line: 1195, baseType: !5407, size: 64, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5459, file: !5409, line: 1196, baseType: !5464, size: 64, offset: 128)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5459, file: !5409, line: 1198, baseType: !2057, size: 32, offset: 192)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5459, file: !5409, line: 1199, baseType: !2057, size: 32, offset: 224)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5459, file: !5409, line: 1201, baseType: !5468, size: 64, offset: 256)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !202, line: 1494, size: 10880, elements: !5471)
!5471 = !{!5472, !5473, !5474, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5575, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5742, !5754, !5755, !5756, !5758, !5759, !5763, !5785, !5786, !5790, !5791, !5792, !5793, !5794, !5796, !5797, !5799, !5801, !5802, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5822, !5823, !5824, !5825, !5826, !5827, !5829, !5830, !5831}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5470, file: !202, line: 1496, baseType: !398, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5470, file: !202, line: 1498, baseType: !404, size: 64, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5470, file: !202, line: 1500, baseType: !5475, size: 64, offset: 128)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5477)
!5477 = !{!5478, !5479, !5483}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5476, file: !94, line: 107, baseType: !533, size: 128)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5476, file: !94, line: 108, baseType: !5480, size: 64, offset: 128)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!527, !404, !5475, !495}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5476, file: !94, line: 110, baseType: !5484, size: 64, offset: 192)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!527, !404, !5475, !412, !542}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5470, file: !202, line: 1508, baseType: !4721, size: 64, offset: 192)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5470, file: !202, line: 1518, baseType: !416, size: 128, offset: 256)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5470, file: !202, line: 1526, baseType: !416, size: 128, offset: 384)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5470, file: !202, line: 1529, baseType: !5218, size: 256, offset: 512)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5470, file: !202, line: 1532, baseType: !495, size: 64, offset: 768)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5470, file: !202, line: 1539, baseType: !835, size: 256, offset: 832)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5470, file: !202, line: 1547, baseType: !7, size: 32, offset: 1088)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5470, file: !202, line: 1553, baseType: !109, size: 32, offset: 1120)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5470, file: !202, line: 1555, baseType: !109, size: 32, offset: 1152)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5470, file: !202, line: 1561, baseType: !915, size: 8, offset: 1184)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5470, file: !202, line: 1567, baseType: !915, size: 8, offset: 1192)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5470, file: !202, line: 1573, baseType: !915, size: 8, offset: 1200)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5470, file: !202, line: 1581, baseType: !915, size: 8, offset: 1208)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5470, file: !202, line: 1589, baseType: !201, size: 32, offset: 1216)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5470, file: !202, line: 1596, baseType: !416, size: 128, offset: 1280)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5470, file: !202, line: 1603, baseType: !207, size: 32, offset: 1408)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5470, file: !202, line: 1611, baseType: !416, size: 128, offset: 1472)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5470, file: !202, line: 1622, baseType: !5505, size: 1536, offset: 1600)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !202, line: 651, size: 1536, elements: !5506)
!5506 = !{!5507, !5508, !5509, !5510, !5511, !5512, !5513, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5557, !5558, !5563, !5568, !5569, !5570, !5571, !5573, !5574}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5505, file: !202, line: 655, baseType: !7, size: 32)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5505, file: !202, line: 660, baseType: !7, size: 32, offset: 32)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5505, file: !202, line: 665, baseType: !7, size: 32, offset: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5505, file: !202, line: 670, baseType: !212, size: 32, offset: 96)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5505, file: !202, line: 684, baseType: !109, size: 32, offset: 128)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5505, file: !202, line: 692, baseType: !644, size: 32, offset: 160)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5505, file: !202, line: 699, baseType: !5514, size: 64, offset: 192)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5505, file: !202, line: 703, baseType: !7, size: 32, offset: 256)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5505, file: !202, line: 710, baseType: !644, size: 32, offset: 288)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5505, file: !202, line: 716, baseType: !109, size: 32, offset: 320)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5505, file: !202, line: 721, baseType: !915, size: 8, offset: 352)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5505, file: !202, line: 729, baseType: !915, size: 8, offset: 360)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5505, file: !202, line: 737, baseType: !915, size: 8, offset: 368)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5505, file: !202, line: 742, baseType: !915, size: 8, offset: 376)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5505, file: !202, line: 748, baseType: !915, size: 8, offset: 384)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5505, file: !202, line: 754, baseType: !453, size: 8, offset: 392)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5505, file: !202, line: 760, baseType: !453, size: 8, offset: 400)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5505, file: !202, line: 765, baseType: !453, size: 8, offset: 408)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5505, file: !202, line: 770, baseType: !5528, size: 768, offset: 448)
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !202, line: 293, size: 768, elements: !5529)
!5529 = !{!5530, !5540, !5541, !5542, !5543, !5544, !5545}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5528, file: !202, line: 295, baseType: !5531, size: 32)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !202, line: 231, size: 32, elements: !5532)
!5532 = !{!5533, !5534, !5535}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5531, file: !202, line: 235, baseType: !915, size: 8)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5531, file: !202, line: 239, baseType: !915, size: 8, offset: 8)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5531, file: !202, line: 243, baseType: !5536, size: 16, offset: 16)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !202, line: 214, size: 16, elements: !5537)
!5537 = !{!5538, !5539}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5536, file: !202, line: 218, baseType: !915, size: 8)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5536, file: !202, line: 222, baseType: !915, size: 8, offset: 8)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5528, file: !202, line: 303, baseType: !1068, size: 256, offset: 64)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5528, file: !202, line: 311, baseType: !1068, size: 256, offset: 320)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5528, file: !202, line: 314, baseType: !453, size: 8, offset: 576)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5528, file: !202, line: 317, baseType: !453, size: 8, offset: 584)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5528, file: !202, line: 320, baseType: !453, size: 8, offset: 592)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5528, file: !202, line: 323, baseType: !5546, size: 128, offset: 608)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !202, line: 253, size: 128, elements: !5547)
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5546, file: !202, line: 255, baseType: !915, size: 8)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5546, file: !202, line: 258, baseType: !915, size: 8, offset: 8)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5546, file: !202, line: 264, baseType: !915, size: 8, offset: 16)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5546, file: !202, line: 269, baseType: !453, size: 8, offset: 24)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5546, file: !202, line: 272, baseType: !453, size: 8, offset: 32)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5546, file: !202, line: 275, baseType: !109, size: 32, offset: 64)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5546, file: !202, line: 278, baseType: !453, size: 8, offset: 96)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5546, file: !202, line: 281, baseType: !453, size: 8, offset: 104)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5546, file: !202, line: 284, baseType: !453, size: 8, offset: 112)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5505, file: !202, line: 775, baseType: !915, size: 8, offset: 1216)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5505, file: !202, line: 780, baseType: !5559, size: 32, offset: 1232)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !202, line: 383, size: 32, elements: !5560)
!5560 = !{!5561, !5562}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5559, file: !202, line: 384, baseType: !463, size: 16)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5559, file: !202, line: 385, baseType: !463, size: 16, offset: 16)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5505, file: !202, line: 785, baseType: !5564, size: 64, offset: 1280)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !202, line: 399, size: 64, elements: !5565)
!5565 = !{!5566, !5567}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5564, file: !202, line: 400, baseType: !644, size: 32)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5564, file: !202, line: 401, baseType: !644, size: 32, offset: 32)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5505, file: !202, line: 792, baseType: !453, size: 8, offset: 1344)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5505, file: !202, line: 797, baseType: !453, size: 8, offset: 1352)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5505, file: !202, line: 803, baseType: !644, size: 32, offset: 1376)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5505, file: !202, line: 808, baseType: !5572, size: 64, offset: 1408)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5505, file: !202, line: 813, baseType: !109, size: 32, offset: 1472)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5505, file: !202, line: 818, baseType: !644, size: 32, offset: 1504)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5470, file: !202, line: 1625, baseType: !5576, size: 64, offset: 3136)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5578)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !202, line: 1034, size: 1024, elements: !5579)
!5579 = !{!5580, !5584, !5588, !5592, !5593, !5597, !5601, !5605, !5606, !5607, !5709, !5713, !5717, !5723, !5727, !5728}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5578, file: !202, line: 1051, baseType: !5581, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!109, !5469, !109}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5578, file: !202, line: 1063, baseType: !5585, size: 64, offset: 64)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{null, !5469}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5578, file: !202, line: 1096, baseType: !5589, size: 64, offset: 128)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!207, !5469, !915}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5578, file: !202, line: 1113, baseType: !5585, size: 64, offset: 192)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5578, file: !202, line: 1138, baseType: !5594, size: 64, offset: 256)
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5595, size: 64)
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!109, !5469, !2057, !2057}
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5578, file: !202, line: 1154, baseType: !5598, size: 64, offset: 320)
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5599, size: 64)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!109, !5469, !5230, !5052}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5578, file: !202, line: 1173, baseType: !5602, size: 64, offset: 384)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5603, size: 64)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!109, !5469}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5578, file: !202, line: 1186, baseType: !5585, size: 64, offset: 448)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5578, file: !202, line: 1196, baseType: !5585, size: 64, offset: 512)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5578, file: !202, line: 1229, baseType: !5608, size: 64, offset: 576)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!5611, !5469}
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5612, size: 64)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !202, line: 884, size: 1280, elements: !5613)
!5613 = !{!5614, !5615, !5616, !5650, !5651, !5652, !5666, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5696, !5697, !5698, !5699}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5612, file: !202, line: 886, baseType: !5469, size: 64)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5612, file: !202, line: 894, baseType: !5407, size: 64, offset: 64)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5612, file: !202, line: 912, baseType: !5617, size: 64, offset: 128)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5619, line: 98, size: 960, elements: !5620)
!5619 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74b3d858470ff421c0475e349d8db40a")
!5620 = !{!5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5646}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5618, file: !5619, line: 99, baseType: !398, size: 64)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5618, file: !5619, line: 100, baseType: !416, size: 128, offset: 64)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5618, file: !5619, line: 102, baseType: !5218, size: 256, offset: 192)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5618, file: !5619, line: 103, baseType: !495, size: 64, offset: 448)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5618, file: !5619, line: 130, baseType: !109, size: 32, offset: 512)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5618, file: !5619, line: 136, baseType: !7, size: 32, offset: 544)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5618, file: !5619, line: 149, baseType: !2057, size: 32, offset: 576)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5618, file: !5619, line: 170, baseType: !2057, size: 32, offset: 608)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5618, file: !5619, line: 177, baseType: !5407, size: 64, offset: 640)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5618, file: !5619, line: 183, baseType: !416, size: 128, offset: 704)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5618, file: !5619, line: 185, baseType: !5632, size: 64, offset: 832)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5634)
!5634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5619, line: 40, size: 256, elements: !5635)
!5635 = !{!5636, !5640, !5641, !5645}
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5634, file: !5619, line: 48, baseType: !5637, size: 64)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{null, !5617}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5634, file: !5619, line: 57, baseType: !5637, size: 64, offset: 64)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5634, file: !5619, line: 72, baseType: !5642, size: 64, offset: 128)
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!109, !5617}
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5634, file: !5619, line: 83, baseType: !5637, size: 64, offset: 192)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5618, file: !5619, line: 186, baseType: !5647, size: 64, offset: 896)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5649)
!5649 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !5619, line: 186, flags: DIFlagFwdDecl)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5612, file: !202, line: 918, baseType: !220, size: 32, offset: 192)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5612, file: !202, line: 921, baseType: !5377, size: 64, offset: 256)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5612, file: !202, line: 928, baseType: !5653, size: 64, offset: 320)
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !5379, line: 72, size: 1152, elements: !5655)
!5655 = !{!5656, !5657, !5658, !5659, !5660, !5661, !5662, !5665}
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5654, file: !5379, line: 78, baseType: !5407, size: 64)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5654, file: !5379, line: 87, baseType: !382, size: 32, offset: 64)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !5654, file: !5379, line: 101, baseType: !784, size: 256, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !5654, file: !5379, line: 119, baseType: !784, size: 256, offset: 384)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !5654, file: !5379, line: 133, baseType: !784, size: 256, offset: 640)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !5654, file: !5379, line: 141, baseType: !416, size: 128, offset: 896)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5654, file: !5379, line: 148, baseType: !5663, size: 64, offset: 1024)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !5409, line: 58, flags: DIFlagFwdDecl)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !5654, file: !5379, line: 157, baseType: !915, size: 8, offset: 1088)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5612, file: !202, line: 931, baseType: !5667, size: 448, offset: 384)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !202, line: 867, size: 448, elements: !5668)
!5668 = !{!5669, !5670, !5671, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5667, file: !202, line: 868, baseType: !224, size: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5667, file: !202, line: 869, baseType: !224, size: 32, offset: 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5667, file: !202, line: 870, baseType: !5672, size: 128, offset: 64)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !202, line: 831, size: 128, elements: !5673)
!5673 = !{!5674, !5675, !5676, !5677}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5672, file: !202, line: 835, baseType: !7, size: 32)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5672, file: !202, line: 840, baseType: !7, size: 32, offset: 32)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5672, file: !202, line: 845, baseType: !7, size: 32, offset: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5672, file: !202, line: 850, baseType: !7, size: 32, offset: 96)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5667, file: !202, line: 871, baseType: !7, size: 32, offset: 192)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5667, file: !202, line: 872, baseType: !7, size: 32, offset: 224)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5667, file: !202, line: 873, baseType: !7, size: 32, offset: 256)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5667, file: !202, line: 874, baseType: !7, size: 32, offset: 288)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5667, file: !202, line: 875, baseType: !7, size: 32, offset: 320)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5667, file: !202, line: 876, baseType: !7, size: 32, offset: 352)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5667, file: !202, line: 877, baseType: !7, size: 32, offset: 384)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5667, file: !202, line: 878, baseType: !7, size: 32, offset: 416)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5612, file: !202, line: 945, baseType: !915, size: 8, offset: 832)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5612, file: !202, line: 954, baseType: !192, size: 32, offset: 864)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5612, file: !202, line: 962, baseType: !7, size: 32, offset: 896)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5612, file: !202, line: 968, baseType: !7, size: 32, offset: 928)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5612, file: !202, line: 974, baseType: !7, size: 32, offset: 960)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5612, file: !202, line: 980, baseType: !7, size: 32, offset: 992)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5612, file: !202, line: 987, baseType: !240, size: 32, offset: 1024)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5612, file: !202, line: 1000, baseType: !5694, size: 64, offset: 1088)
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5695 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !202, line: 1000, flags: DIFlagFwdDecl)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5612, file: !202, line: 1006, baseType: !453, size: 8, offset: 1152)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5612, file: !202, line: 1012, baseType: !453, size: 8, offset: 1160)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5612, file: !202, line: 1018, baseType: !260, size: 32, offset: 1184)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5612, file: !202, line: 1024, baseType: !5700, size: 64, offset: 1216)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !5232, line: 216, size: 704, elements: !5702)
!5702 = !{!5703, !5704, !5705, !5706, !5707, !5708}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5701, file: !5232, line: 217, baseType: !5218, size: 256)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5701, file: !5232, line: 218, baseType: !398, size: 64, offset: 256)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5701, file: !5232, line: 219, baseType: !416, size: 128, offset: 320)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5701, file: !5232, line: 220, baseType: !416, size: 128, offset: 448)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5701, file: !5232, line: 221, baseType: !542, size: 64, offset: 576)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5701, file: !5232, line: 222, baseType: !366, size: 64, offset: 640)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5578, file: !202, line: 1239, baseType: !5710, size: 64, offset: 640)
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{null, !5469, !5611}
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5578, file: !202, line: 1284, baseType: !5714, size: 64, offset: 704)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!109, !5469, !5611, !5230, !5052}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5578, file: !202, line: 1307, baseType: !5718, size: 64, offset: 768)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DISubroutineType(types: !5720)
!5720 = !{!109, !5469, !5721, !5230, !5051}
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5612)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5578, file: !202, line: 1321, baseType: !5724, size: 64, offset: 832)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{null, !5057, !5721}
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5578, file: !202, line: 1330, baseType: !5585, size: 64, offset: 896)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5578, file: !202, line: 1337, baseType: !5729, size: 64, offset: 960)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{null, !5469, !610}
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5470, file: !202, line: 1632, baseType: !5700, size: 64, offset: 3200)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5470, file: !202, line: 1635, baseType: !5225, size: 3136, offset: 3264)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5470, file: !202, line: 1641, baseType: !5230, size: 64, offset: 6400)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5470, file: !202, line: 1652, baseType: !5230, size: 64, offset: 6464)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5470, file: !202, line: 1658, baseType: !5230, size: 64, offset: 6528)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5470, file: !202, line: 1666, baseType: !5700, size: 64, offset: 6592)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5470, file: !202, line: 1672, baseType: !5230, size: 64, offset: 6656)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5470, file: !202, line: 1675, baseType: !5740, size: 64, offset: 6720)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5741, size: 64)
!5741 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !202, line: 46, flags: DIFlagFwdDecl)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5470, file: !202, line: 1678, baseType: !5743, size: 192, offset: 6784)
!5743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5744, line: 54, size: 192, elements: !5745)
!5744 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5745 = !{!5746, !5752, !5753}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5743, file: !5744, line: 55, baseType: !5747, size: 64)
!5747 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5744, line: 51, baseType: !5748)
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5749 = !DISubroutineType(types: !5750)
!5750 = !{!109, !5751, !545, !366}
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5743, file: !5744, line: 56, baseType: !5751, size: 64, offset: 64)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5743, file: !5744, line: 57, baseType: !109, size: 32, offset: 128)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5470, file: !202, line: 1684, baseType: !5230, size: 64, offset: 6976)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5470, file: !202, line: 1690, baseType: !5230, size: 64, offset: 7040)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5470, file: !202, line: 1717, baseType: !5757, size: 8, offset: 7104)
!5757 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !392, line: 108, baseType: !453)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5470, file: !202, line: 1725, baseType: !109, size: 32, offset: 7136)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5470, file: !202, line: 1728, baseType: !5760, size: 64, offset: 7168)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5762)
!5762 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !202, line: 37, flags: DIFlagFwdDecl)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5470, file: !202, line: 1731, baseType: !5764, size: 768, offset: 7232)
!5764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !202, line: 1348, size: 768, elements: !5765)
!5765 = !{!5766, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5764, file: !202, line: 1354, baseType: !3789, size: 256)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5764, file: !202, line: 1361, baseType: !915, size: 8, offset: 256)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5764, file: !202, line: 1368, baseType: !915, size: 8, offset: 264)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5764, file: !202, line: 1375, baseType: !915, size: 8, offset: 272)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5764, file: !202, line: 1382, baseType: !7, size: 32, offset: 288)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5764, file: !202, line: 1389, baseType: !109, size: 32, offset: 320)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5764, file: !202, line: 1396, baseType: !109, size: 32, offset: 352)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5764, file: !202, line: 1403, baseType: !109, size: 32, offset: 384)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5764, file: !202, line: 1410, baseType: !109, size: 32, offset: 416)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5764, file: !202, line: 1417, baseType: !915, size: 8, offset: 448)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5764, file: !202, line: 1424, baseType: !915, size: 8, offset: 456)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5764, file: !202, line: 1432, baseType: !915, size: 8, offset: 464)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5764, file: !202, line: 1440, baseType: !915, size: 8, offset: 472)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5764, file: !202, line: 1448, baseType: !266, size: 32, offset: 480)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5764, file: !202, line: 1458, baseType: !7, size: 32, offset: 512)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5764, file: !202, line: 1466, baseType: !272, size: 32, offset: 544)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5764, file: !202, line: 1471, baseType: !5672, size: 128, offset: 576)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5764, file: !202, line: 1476, baseType: !279, size: 32, offset: 704)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5764, file: !202, line: 1483, baseType: !915, size: 8, offset: 736)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5470, file: !202, line: 1733, baseType: !266, size: 32, offset: 8000)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5470, file: !202, line: 1741, baseType: !5787, size: 64, offset: 8064)
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5789)
!5789 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !202, line: 1741, flags: DIFlagFwdDecl)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5470, file: !202, line: 1746, baseType: !835, size: 256, offset: 8128)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5470, file: !202, line: 1749, baseType: !648, size: 64, offset: 8384)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5470, file: !202, line: 1756, baseType: !644, size: 32, offset: 8448)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5470, file: !202, line: 1764, baseType: !5617, size: 64, offset: 8512)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5470, file: !202, line: 1768, baseType: !5795, size: 1024, offset: 8576)
!5795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5757, size: 1024, elements: !4513)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5470, file: !202, line: 1770, baseType: !835, size: 256, offset: 9600)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5470, file: !202, line: 1773, baseType: !5798, size: 16, offset: 9856)
!5798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 16, elements: !954)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5470, file: !202, line: 1778, baseType: !5800, size: 64, offset: 9888)
!5800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !954)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5470, file: !202, line: 1783, baseType: !5800, size: 64, offset: 9952)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5470, file: !202, line: 1794, baseType: !5803, size: 64, offset: 10048)
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !202, line: 48, flags: DIFlagFwdDecl)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5470, file: !202, line: 1800, baseType: !109, size: 32, offset: 10112)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5470, file: !202, line: 1803, baseType: !7, size: 32, offset: 10144)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5470, file: !202, line: 1810, baseType: !915, size: 8, offset: 10176)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5470, file: !202, line: 1816, baseType: !453, size: 8, offset: 10184)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5470, file: !202, line: 1819, baseType: !610, size: 64, offset: 10240)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5470, file: !202, line: 1835, baseType: !5611, size: 64, offset: 10304)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5470, file: !202, line: 1852, baseType: !5700, size: 64, offset: 10368)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5470, file: !202, line: 1855, baseType: !915, size: 8, offset: 10432)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5470, file: !202, line: 1857, baseType: !5814, size: 64, offset: 10496)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !202, line: 2058, size: 256, elements: !5816)
!5816 = !{!5817, !5818, !5819, !5820}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5815, file: !202, line: 2059, baseType: !382, size: 32)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5815, file: !202, line: 2060, baseType: !398, size: 64, offset: 64)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5815, file: !202, line: 2061, baseType: !109, size: 32, offset: 128)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5815, file: !202, line: 2062, baseType: !5821, size: 64, offset: 160)
!5821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 64, elements: !1559)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5470, file: !202, line: 1859, baseType: !915, size: 8, offset: 10560)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5470, file: !202, line: 1863, baseType: !5757, size: 8, offset: 10568)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5470, file: !202, line: 1863, baseType: !5757, size: 8, offset: 10576)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5470, file: !202, line: 1866, baseType: !5757, size: 8, offset: 10584)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5470, file: !202, line: 1866, baseType: !5757, size: 8, offset: 10592)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5470, file: !202, line: 1869, baseType: !5828, size: 16, offset: 10608)
!5828 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !392, line: 109, baseType: !463)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5470, file: !202, line: 1869, baseType: !5828, size: 16, offset: 10624)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5470, file: !202, line: 1878, baseType: !1321, size: 64, offset: 10688)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5470, file: !202, line: 1881, baseType: !5832, size: 96, offset: 10752)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !193, line: 383, size: 96, elements: !5833)
!5833 = !{!5834, !5835}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5832, file: !193, line: 387, baseType: !645, size: 32)
!5835 = !DIDerivedType(tag: DW_TAG_member, scope: !5832, file: !193, line: 391, baseType: !5836, size: 64, offset: 32)
!5836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5832, file: !193, line: 391, size: 64, elements: !5837)
!5837 = !{!5838}
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5836, file: !193, line: 392, baseType: !5839, size: 64)
!5839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !193, line: 370, size: 64, elements: !5840)
!5840 = !{!5841, !5842, !5843, !5844, !5845}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5839, file: !193, line: 371, baseType: !455, size: 8)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5839, file: !193, line: 372, baseType: !455, size: 8, offset: 8)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5839, file: !193, line: 373, baseType: !464, size: 16, offset: 16)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5839, file: !193, line: 374, baseType: !464, size: 16, offset: 32)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5839, file: !193, line: 375, baseType: !464, size: 16, offset: 48)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5459, file: !5409, line: 1202, baseType: !542, size: 64, offset: 320)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5430, file: !5409, line: 576, baseType: !5848, size: 64, offset: 448)
!5848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5849, size: 64)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!109, !5407, !5211, !5663, !2057, !5163}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5430, file: !5409, line: 595, baseType: !5852, size: 64, offset: 512)
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!109, !5407, !5211, !5663, !2057, !2057, !5163}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5430, file: !5409, line: 615, baseType: !5856, size: 64, offset: 576)
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5857, size: 64)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{!109, !5407, !5230, !5052}
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5430, file: !5409, line: 649, baseType: !5860, size: 64, offset: 640)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!5863, !5407}
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !5409, line: 81, size: 2688, elements: !5865)
!5865 = !{!5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5864, file: !5409, line: 83, baseType: !5407, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5864, file: !5409, line: 90, baseType: !915, size: 8, offset: 64)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5864, file: !5409, line: 105, baseType: !915, size: 8, offset: 72)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5864, file: !5409, line: 111, baseType: !915, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5864, file: !5409, line: 123, baseType: !915, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5864, file: !5409, line: 130, baseType: !915, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5864, file: !5409, line: 141, baseType: !915, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5864, file: !5409, line: 147, baseType: !915, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5864, file: !5409, line: 153, baseType: !915, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5864, file: !5409, line: 189, baseType: !915, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5864, file: !5409, line: 195, baseType: !644, size: 32, offset: 96)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5864, file: !5409, line: 201, baseType: !644, size: 32, offset: 128)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5864, file: !5409, line: 207, baseType: !644, size: 32, offset: 160)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5864, file: !5409, line: 222, baseType: !5337, size: 960, offset: 192)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5864, file: !5409, line: 239, baseType: !5337, size: 960, offset: 1152)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5864, file: !5409, line: 245, baseType: !5700, size: 64, offset: 2112)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5864, file: !5409, line: 254, baseType: !5700, size: 64, offset: 2176)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5864, file: !5409, line: 262, baseType: !5700, size: 64, offset: 2240)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5864, file: !5409, line: 275, baseType: !5700, size: 64, offset: 2304)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5864, file: !5409, line: 283, baseType: !644, size: 32, offset: 2368)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5864, file: !5409, line: 291, baseType: !915, size: 8, offset: 2400)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5864, file: !5409, line: 300, baseType: !915, size: 8, offset: 2408)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5864, file: !5409, line: 311, baseType: !915, size: 8, offset: 2416)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5864, file: !5409, line: 318, baseType: !289, size: 32, offset: 2432)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5864, file: !5409, line: 375, baseType: !5663, size: 64, offset: 2496)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5864, file: !5409, line: 384, baseType: !5653, size: 64, offset: 2560)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5864, file: !5409, line: 387, baseType: !5377, size: 64, offset: 2624)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5430, file: !5409, line: 659, baseType: !5894, size: 64, offset: 704)
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5895, size: 64)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{null, !5407, !5863}
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5430, file: !5409, line: 704, baseType: !5898, size: 64, offset: 768)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!109, !5407, !5863, !5230, !5052}
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5430, file: !5409, line: 726, baseType: !5902, size: 64, offset: 832)
!5902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!109, !5407, !5905, !5230, !5051}
!5905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5864)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5430, file: !5409, line: 744, baseType: !5908, size: 64, offset: 896)
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5909, size: 64)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{!109, !5407}
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5430, file: !5409, line: 755, baseType: !5433, size: 64, offset: 960)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5430, file: !5409, line: 784, baseType: !5913, size: 64, offset: 1024)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{!109, !5407, !412}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5430, file: !5409, line: 800, baseType: !5917, size: 64, offset: 1088)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!109, !5407, !412, !5920}
!5920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5430, file: !5409, line: 822, baseType: !5922, size: 64, offset: 1152)
!5922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5923, size: 64)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!5925, !5407, !5920}
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5926, size: 64)
!5926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5430, file: !5409, line: 834, baseType: !5928, size: 64, offset: 1216)
!5928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5929, size: 64)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{null, !5057, !5905}
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5430, file: !5409, line: 861, baseType: !5932, size: 64, offset: 1280)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!644, !5407}
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5430, file: !5409, line: 874, baseType: !5908, size: 64, offset: 1344)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5430, file: !5409, line: 882, baseType: !5433, size: 64, offset: 1408)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5430, file: !5409, line: 920, baseType: !5938, size: 64, offset: 1472)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{!915, !5407, !964, !5941, !915}
!5941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5408, file: !5409, line: 1068, baseType: !2057, size: 32, offset: 3328)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !5408, file: !5409, line: 1077, baseType: !5944, size: 64, offset: 3392)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5828, size: 64)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5408, file: !5409, line: 1080, baseType: !5946, size: 64, offset: 3456)
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5947, size: 64)
!5947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5948)
!5948 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !5409, line: 63, flags: DIFlagFwdDecl)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5408, file: !5409, line: 1083, baseType: !5225, size: 3136, offset: 3520)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5408, file: !5409, line: 1089, baseType: !5230, size: 64, offset: 6656)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5408, file: !5409, line: 1104, baseType: !5863, size: 64, offset: 6720)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !5408, file: !5409, line: 1121, baseType: !416, size: 128, offset: 6784)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !5408, file: !5409, line: 1128, baseType: !429, size: 32, offset: 6912)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5408, file: !5409, line: 1135, baseType: !610, size: 64, offset: 6976)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !5408, file: !5409, line: 1142, baseType: !5956, size: 576, offset: 7040)
!5956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5957, line: 53, size: 576, elements: !5958)
!5957 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!5958 = !{!5959, !5960, !5961, !5962, !5963, !5973, !5974, !5975, !5976}
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5956, file: !5957, line: 54, baseType: !429, size: 32)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5956, file: !5957, line: 55, baseType: !412, size: 64, offset: 64)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5956, file: !5957, line: 56, baseType: !915, size: 8, offset: 128)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5956, file: !5957, line: 56, baseType: !915, size: 8, offset: 136)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5956, file: !5957, line: 57, baseType: !5964, size: 64, offset: 192)
!5964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5957, line: 33, size: 384, elements: !5966)
!5966 = !{!5967, !5968, !5969}
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5965, file: !5957, line: 34, baseType: !915, size: 8)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5965, file: !5957, line: 35, baseType: !2057, size: 32, offset: 32)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5965, file: !5957, line: 36, baseType: !5970, size: 320, offset: 64)
!5970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2057, size: 320, elements: !5971)
!5971 = !{!5972}
!5972 = !DISubrange(count: 10)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5956, file: !5957, line: 58, baseType: !109, size: 32, offset: 256)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5956, file: !5957, line: 58, baseType: !109, size: 32, offset: 288)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5956, file: !5957, line: 59, baseType: !542, size: 64, offset: 320)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5956, file: !5957, line: 60, baseType: !1370, size: 192, offset: 384)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !5408, file: !5409, line: 1149, baseType: !7, size: 32, offset: 7616)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !5408, file: !5409, line: 1156, baseType: !429, size: 32, offset: 7648)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !5408, file: !5409, line: 1163, baseType: !545, size: 64, offset: 7680)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !5408, file: !5409, line: 1170, baseType: !3789, size: 256, offset: 7744)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !5408, file: !5409, line: 1177, baseType: !5982, size: 64, offset: 8000)
!5982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5983, size: 64)
!5983 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !5409, line: 44, flags: DIFlagFwdDecl)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5393, file: !290, line: 669, baseType: !5211, size: 64, offset: 1344)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !5393, file: !290, line: 677, baseType: !5211, size: 64, offset: 1408)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5393, file: !290, line: 680, baseType: !5987, size: 64, offset: 1472)
!5987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5988, size: 64)
!5988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5989)
!5989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !290, line: 279, size: 832, elements: !5990)
!5990 = !{!5991, !5995, !5999, !6003, !6004, !6008, !6098, !6102, !6106, !6112, !6116, !6117, !6121}
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5989, file: !290, line: 306, baseType: !5992, size: 64)
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5993, size: 64)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!109, !5392, !5407, !5211, !109, !109, !7, !7, !2057, !2057, !2057, !2057, !5163}
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5989, file: !290, line: 329, baseType: !5996, size: 64, offset: 64)
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{!109, !5392, !5163}
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5989, file: !290, line: 339, baseType: !6000, size: 64, offset: 128)
!6000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6001, size: 64)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{null, !5392}
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5989, file: !290, line: 351, baseType: !6000, size: 64, offset: 192)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5989, file: !290, line: 367, baseType: !6005, size: 64, offset: 256)
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6006, size: 64)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!109, !5392, !5230, !5052}
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5989, file: !290, line: 401, baseType: !6009, size: 64, offset: 320)
!6009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6010, size: 64)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!6012, !5392}
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !290, line: 52, size: 1280, elements: !6014)
!6014 = !{!6015, !6016, !6017, !6018, !6068, !6069, !6070, !6071, !6072, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085, !6093, !6094, !6095, !6096, !6097}
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !6013, file: !290, line: 54, baseType: !5392, size: 64)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6013, file: !290, line: 62, baseType: !5407, size: 64, offset: 64)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !6013, file: !290, line: 70, baseType: !5211, size: 64, offset: 128)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !6013, file: !290, line: 83, baseType: !6019, size: 64, offset: 192)
!6019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6020, size: 64)
!6020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !6021, line: 65, size: 512, elements: !6022)
!6021 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!6022 = !{!6023, !6024, !6057, !6063, !6064, !6065, !6066, !6067}
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6020, file: !6021, line: 66, baseType: !2883, size: 64)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6020, file: !6021, line: 67, baseType: !6025, size: 64, offset: 64)
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6026, size: 64)
!6026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6027)
!6027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !6021, line: 125, size: 640, elements: !6028)
!6028 = !{!6029, !6030, !6034, !6035, !6039, !6040, !6044, !6048, !6052, !6053}
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !6027, file: !6021, line: 132, baseType: !915, size: 8)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !6027, file: !6021, line: 143, baseType: !6031, size: 64, offset: 64)
!6031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6032, size: 64)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!412, !6019}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !6027, file: !6021, line: 155, baseType: !6031, size: 64, offset: 128)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !6027, file: !6021, line: 192, baseType: !6036, size: 64, offset: 192)
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!915, !6019}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !6027, file: !6021, line: 209, baseType: !6036, size: 64, offset: 256)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !6027, file: !6021, line: 227, baseType: !6041, size: 64, offset: 320)
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6042, size: 64)
!6042 = !DISubroutineType(types: !6043)
!6043 = !{!531, !6019, !915, !531}
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !6027, file: !6021, line: 238, baseType: !6045, size: 64, offset: 384)
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !6019}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !6027, file: !6021, line: 248, baseType: !6049, size: 64, offset: 448)
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64)
!6050 = !DISubroutineType(types: !6051)
!6051 = !{null, !6019, !495, !109}
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !6027, file: !6021, line: 258, baseType: !6049, size: 64, offset: 512)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !6027, file: !6021, line: 279, baseType: !6054, size: 64, offset: 576)
!6054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6055, size: 64)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{null, !6019, !1524}
!6057 = !DIDerivedType(tag: DW_TAG_member, scope: !6020, file: !6021, line: 84, baseType: !6058, size: 128, offset: 128)
!6058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6020, file: !6021, line: 84, size: 128, elements: !6059)
!6059 = !{!6060, !6061, !6062}
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !6058, file: !6021, line: 85, baseType: !416, size: 128)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !6058, file: !6021, line: 87, baseType: !1524, size: 64)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6058, file: !6021, line: 89, baseType: !1055, size: 128, align: 64)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6020, file: !6021, line: 91, baseType: !648, size: 64, offset: 256)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !6020, file: !6021, line: 92, baseType: !648, size: 64, offset: 320)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6020, file: !6021, line: 93, baseType: !545, size: 64, offset: 384)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6020, file: !6021, line: 94, baseType: !382, size: 32, offset: 448)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !6020, file: !6021, line: 95, baseType: !109, size: 32, offset: 480)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !6013, file: !290, line: 92, baseType: !2034, size: 32, offset: 256)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !6013, file: !290, line: 99, baseType: !2034, size: 32, offset: 288)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !6013, file: !290, line: 103, baseType: !2057, size: 32, offset: 320)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !6013, file: !290, line: 103, baseType: !2057, size: 32, offset: 352)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !6013, file: !290, line: 109, baseType: !2057, size: 32, offset: 384)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !6013, file: !290, line: 114, baseType: !2057, size: 32, offset: 416)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !6013, file: !290, line: 117, baseType: !2057, size: 32, offset: 448)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !6013, file: !290, line: 117, baseType: !2057, size: 32, offset: 480)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !6013, file: !290, line: 125, baseType: !463, size: 16, offset: 512)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !6013, file: !290, line: 133, baseType: !5828, size: 16, offset: 528)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !6013, file: !290, line: 140, baseType: !7, size: 32, offset: 544)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !6013, file: !290, line: 155, baseType: !7, size: 32, offset: 576)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !6013, file: !290, line: 164, baseType: !7, size: 32, offset: 608)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !6013, file: !290, line: 171, baseType: !294, size: 32, offset: 640)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !6013, file: !290, line: 178, baseType: !301, size: 32, offset: 672)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !6013, file: !290, line: 191, baseType: !5700, size: 64, offset: 704)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !6013, file: !290, line: 201, baseType: !915, size: 8, offset: 768)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !6013, file: !290, line: 223, baseType: !6086, size: 128, offset: 800)
!6086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !6087, line: 46, size: 128, elements: !6088)
!6087 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!6088 = !{!6089, !6090, !6091, !6092}
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !6086, file: !6087, line: 47, baseType: !109, size: 32)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !6086, file: !6087, line: 47, baseType: !109, size: 32, offset: 32)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !6086, file: !6087, line: 47, baseType: !109, size: 32, offset: 64)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !6086, file: !6087, line: 47, baseType: !109, size: 32, offset: 96)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !6013, file: !290, line: 223, baseType: !6086, size: 128, offset: 928)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !6013, file: !290, line: 231, baseType: !915, size: 8, offset: 1056)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !6013, file: !290, line: 238, baseType: !289, size: 32, offset: 1088)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !6013, file: !290, line: 246, baseType: !5653, size: 64, offset: 1152)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6013, file: !290, line: 249, baseType: !5377, size: 64, offset: 1216)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5989, file: !290, line: 411, baseType: !6099, size: 64, offset: 384)
!6099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6100, size: 64)
!6100 = !DISubroutineType(types: !6101)
!6101 = !{null, !5392, !6012}
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5989, file: !290, line: 456, baseType: !6103, size: 64, offset: 448)
!6103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6104, size: 64)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!109, !5392, !6012, !5230, !5052}
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5989, file: !290, line: 479, baseType: !6107, size: 64, offset: 512)
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6108, size: 64)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{!109, !5392, !6110, !5230, !5051}
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6111, size: 64)
!6111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6013)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5989, file: !290, line: 496, baseType: !6113, size: 64, offset: 576)
!6113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 64)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{!109, !5392}
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5989, file: !290, line: 507, baseType: !6000, size: 64, offset: 640)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5989, file: !290, line: 518, baseType: !6118, size: 64, offset: 704)
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6119, size: 64)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{null, !5057, !6110}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5989, file: !290, line: 537, baseType: !6122, size: 64, offset: 768)
!6122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6123, size: 64)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!915, !5392, !2057, !5052}
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5393, file: !290, line: 683, baseType: !5225, size: 3136, offset: 1536)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5393, file: !290, line: 686, baseType: !306, size: 32, offset: 4672)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5393, file: !290, line: 692, baseType: !7, size: 32, offset: 4704)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5393, file: !290, line: 695, baseType: !6129, size: 64, offset: 4736)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6131)
!6131 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !290, line: 695, flags: DIFlagFwdDecl)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5393, file: !290, line: 710, baseType: !6012, size: 64, offset: 4800)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !5393, file: !290, line: 717, baseType: !5230, size: 64, offset: 4864)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !5393, file: !290, line: 723, baseType: !5230, size: 64, offset: 4928)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !5393, file: !290, line: 729, baseType: !5230, size: 64, offset: 4992)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !5393, file: !290, line: 737, baseType: !5230, size: 64, offset: 5056)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !5393, file: !290, line: 746, baseType: !5230, size: 64, offset: 5120)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !5393, file: !290, line: 754, baseType: !5230, size: 64, offset: 5184)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5393, file: !290, line: 760, baseType: !5230, size: 64, offset: 5248)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5389, file: !5379, line: 162, baseType: !6012, size: 64, offset: 64)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5389, file: !5379, line: 162, baseType: !6012, size: 64, offset: 128)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5389, file: !5379, line: 162, baseType: !6012, size: 64, offset: 192)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !5378, file: !5379, line: 402, baseType: !6144, size: 64, offset: 256)
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !5379, line: 165, size: 448, elements: !6146)
!6146 = !{!6147, !6148, !6149, !6150, !6151, !6152, !6153}
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6145, file: !5379, line: 166, baseType: !5407, size: 64)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6145, file: !5379, line: 167, baseType: !5863, size: 64, offset: 64)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !6145, file: !5379, line: 167, baseType: !5863, size: 64, offset: 128)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !6145, file: !5379, line: 167, baseType: !5863, size: 64, offset: 192)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !6145, file: !5379, line: 177, baseType: !5653, size: 64, offset: 256)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !6145, file: !5379, line: 179, baseType: !1791, size: 64, offset: 320)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !6145, file: !5379, line: 180, baseType: !648, size: 64, offset: 384)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5378, file: !5379, line: 403, baseType: !109, size: 32, offset: 320)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5378, file: !5379, line: 404, baseType: !6156, size: 64, offset: 384)
!6156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6157, size: 64)
!6157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !5379, line: 183, size: 320, elements: !6158)
!6158 = !{!6159, !6160, !6161, !6162, !6163}
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6157, file: !5379, line: 184, baseType: !5469, size: 64)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6157, file: !5379, line: 185, baseType: !5611, size: 64, offset: 64)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !6157, file: !5379, line: 185, baseType: !5611, size: 64, offset: 128)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !6157, file: !5379, line: 185, baseType: !5611, size: 64, offset: 192)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !6157, file: !5379, line: 193, baseType: !1791, size: 64, offset: 256)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !5378, file: !5379, line: 405, baseType: !109, size: 32, offset: 448)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !5378, file: !5379, line: 406, baseType: !6166, size: 64, offset: 512)
!6166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6167, size: 64)
!6167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !5379, line: 343, size: 256, elements: !6168)
!6168 = !{!6169, !6200, !6201, !6202}
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6167, file: !5379, line: 344, baseType: !6170, size: 64)
!6170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6171, size: 64)
!6171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !5379, line: 286, size: 704, elements: !6172)
!6172 = !{!6173, !6174, !6175, !6181}
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6171, file: !5379, line: 291, baseType: !416, size: 128)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6171, file: !5379, line: 296, baseType: !5144, size: 448, offset: 128)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6171, file: !5379, line: 301, baseType: !6176, size: 64, offset: 576)
!6176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6177, size: 64)
!6177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !5379, line: 331, size: 128, elements: !6178)
!6178 = !{!6179, !6180}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6177, file: !5379, line: 335, baseType: !5377, size: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !6177, file: !5379, line: 340, baseType: !6170, size: 64, offset: 64)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !6171, file: !5379, line: 309, baseType: !6182, size: 64, offset: 640)
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6184)
!6184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !5379, line: 209, size: 192, elements: !6185)
!6185 = !{!6186, !6190, !6194}
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !6184, file: !5379, line: 221, baseType: !6187, size: 64)
!6187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6188, size: 64)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{!6176, !6170}
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !6184, file: !5379, line: 228, baseType: !6191, size: 64, offset: 64)
!6191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6192, size: 64)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{null, !6170, !6176}
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !6184, file: !5379, line: 240, baseType: !6195, size: 64, offset: 128)
!6195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6196, size: 64)
!6196 = !DISubroutineType(types: !6197)
!6197 = !{null, !5057, !6198}
!6198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6199, size: 64)
!6199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6177)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6167, file: !5379, line: 345, baseType: !6176, size: 64, offset: 64)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !6167, file: !5379, line: 345, baseType: !6176, size: 64, offset: 128)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !6167, file: !5379, line: 345, baseType: !6176, size: 64, offset: 192)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5378, file: !5379, line: 408, baseType: !5163, size: 64, offset: 576)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !5378, file: !5379, line: 420, baseType: !5653, size: 64, offset: 640)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !5378, file: !5379, line: 428, baseType: !1095, size: 256, offset: 704)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5205, file: !5140, line: 283, baseType: !6207, size: 64, offset: 320)
!6207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6208, size: 64)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{!109, !398, !5377, !915}
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5205, file: !5140, line: 302, baseType: !6211, size: 64, offset: 384)
!6211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6212, size: 64)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!5377, !398}
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5205, file: !5140, line: 323, baseType: !6215, size: 64, offset: 448)
!6215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6216, size: 64)
!6216 = !DISubroutineType(types: !6217)
!6217 = !{null, !5377}
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5205, file: !5140, line: 338, baseType: !6215, size: 64, offset: 512)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5139, file: !5140, line: 546, baseType: !915, size: 8, offset: 3520)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5139, file: !5140, line: 547, baseType: !915, size: 8, offset: 3528)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5139, file: !5140, line: 548, baseType: !915, size: 8, offset: 3536)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5139, file: !5140, line: 549, baseType: !1152, size: 704, offset: 3584)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5139, file: !5140, line: 557, baseType: !835, size: 256, offset: 4288)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5139, file: !5140, line: 565, baseType: !416, size: 128, offset: 4544)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5139, file: !5140, line: 573, baseType: !5230, size: 64, offset: 4672)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5139, file: !5140, line: 578, baseType: !5230, size: 64, offset: 4736)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5139, file: !5140, line: 583, baseType: !5230, size: 64, offset: 4800)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5139, file: !5140, line: 589, baseType: !5230, size: 64, offset: 4864)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5139, file: !5140, line: 594, baseType: !5230, size: 64, offset: 4928)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5139, file: !5140, line: 599, baseType: !5230, size: 64, offset: 4992)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5139, file: !5140, line: 604, baseType: !5230, size: 64, offset: 5056)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5139, file: !5140, line: 609, baseType: !5230, size: 64, offset: 5120)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5139, file: !5140, line: 614, baseType: !5230, size: 64, offset: 5184)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5139, file: !5140, line: 619, baseType: !5230, size: 64, offset: 5248)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5139, file: !5140, line: 624, baseType: !5230, size: 64, offset: 5312)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5139, file: !5140, line: 629, baseType: !5230, size: 64, offset: 5376)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5139, file: !5140, line: 634, baseType: !5230, size: 64, offset: 5440)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5139, file: !5140, line: 639, baseType: !5230, size: 64, offset: 5504)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5139, file: !5140, line: 644, baseType: !5230, size: 64, offset: 5568)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5139, file: !5140, line: 649, baseType: !5230, size: 64, offset: 5632)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5139, file: !5140, line: 655, baseType: !5230, size: 64, offset: 5696)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5139, file: !5140, line: 660, baseType: !5230, size: 64, offset: 5760)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5139, file: !5140, line: 669, baseType: !5230, size: 64, offset: 5824)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5139, file: !5140, line: 675, baseType: !5230, size: 64, offset: 5888)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5139, file: !5140, line: 681, baseType: !5230, size: 64, offset: 5952)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5139, file: !5140, line: 686, baseType: !5230, size: 64, offset: 6016)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5139, file: !5140, line: 692, baseType: !5230, size: 64, offset: 6080)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5139, file: !5140, line: 697, baseType: !5230, size: 64, offset: 6144)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5139, file: !5140, line: 703, baseType: !5230, size: 64, offset: 6208)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5139, file: !5140, line: 709, baseType: !5230, size: 64, offset: 6272)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5139, file: !5140, line: 714, baseType: !5230, size: 64, offset: 6336)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5139, file: !5140, line: 722, baseType: !5230, size: 64, offset: 6400)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5139, file: !5140, line: 728, baseType: !5230, size: 64, offset: 6464)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5139, file: !5140, line: 734, baseType: !5230, size: 64, offset: 6528)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5139, file: !5140, line: 739, baseType: !5230, size: 64, offset: 6592)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5139, file: !5140, line: 744, baseType: !5230, size: 64, offset: 6656)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5139, file: !5140, line: 749, baseType: !5230, size: 64, offset: 6720)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5139, file: !5140, line: 754, baseType: !5230, size: 64, offset: 6784)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5139, file: !5140, line: 759, baseType: !5230, size: 64, offset: 6848)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5139, file: !5140, line: 764, baseType: !5230, size: 64, offset: 6912)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5139, file: !5140, line: 769, baseType: !5230, size: 64, offset: 6976)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5139, file: !5140, line: 774, baseType: !5230, size: 64, offset: 7040)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5139, file: !5140, line: 778, baseType: !5230, size: 64, offset: 7104)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5139, file: !5140, line: 784, baseType: !5230, size: 64, offset: 7168)
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5139, file: !5140, line: 789, baseType: !5230, size: 64, offset: 7232)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5139, file: !5140, line: 794, baseType: !5230, size: 64, offset: 7296)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5139, file: !5140, line: 799, baseType: !5230, size: 64, offset: 7360)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5139, file: !5140, line: 804, baseType: !5230, size: 64, offset: 7424)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5139, file: !5140, line: 810, baseType: !5230, size: 64, offset: 7488)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5139, file: !5140, line: 816, baseType: !5230, size: 64, offset: 7552)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5139, file: !5140, line: 821, baseType: !5230, size: 64, offset: 7616)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5139, file: !5140, line: 827, baseType: !5230, size: 64, offset: 7680)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5139, file: !5140, line: 832, baseType: !5230, size: 64, offset: 7744)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5139, file: !5140, line: 839, baseType: !5230, size: 64, offset: 7808)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5139, file: !5140, line: 846, baseType: !5230, size: 64, offset: 7872)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5139, file: !5140, line: 853, baseType: !5230, size: 64, offset: 7936)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5139, file: !5140, line: 861, baseType: !5230, size: 64, offset: 8000)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5139, file: !5140, line: 869, baseType: !5230, size: 64, offset: 8064)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5139, file: !5140, line: 876, baseType: !5230, size: 64, offset: 8128)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5139, file: !5140, line: 882, baseType: !5230, size: 64, offset: 8192)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5139, file: !5140, line: 888, baseType: !5230, size: 64, offset: 8256)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5139, file: !5140, line: 891, baseType: !2057, size: 32, offset: 8320)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5139, file: !5140, line: 891, baseType: !2057, size: 32, offset: 8352)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5139, file: !5140, line: 899, baseType: !915, size: 8, offset: 8384)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5139, file: !5140, line: 913, baseType: !915, size: 8, offset: 8392)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5139, file: !5140, line: 919, baseType: !915, size: 8, offset: 8400)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5139, file: !5140, line: 929, baseType: !915, size: 8, offset: 8408)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5139, file: !5140, line: 937, baseType: !915, size: 8, offset: 8416)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5139, file: !5140, line: 943, baseType: !5230, size: 64, offset: 8448)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5139, file: !5140, line: 946, baseType: !2057, size: 32, offset: 8512)
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5139, file: !5140, line: 946, baseType: !2057, size: 32, offset: 8544)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5139, file: !5140, line: 955, baseType: !5377, size: 64, offset: 8576)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5139, file: !5140, line: 957, baseType: !6294, size: 64, offset: 8640)
!6294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6295, size: 64)
!6295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6296)
!6296 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5140, line: 957, flags: DIFlagFwdDecl)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !399, file: !312, line: 285, baseType: !835, size: 256, offset: 11648)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !399, file: !312, line: 288, baseType: !1388, size: 192, offset: 11904)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !399, file: !312, line: 291, baseType: !6300, size: 64, offset: 12096)
!6300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6301, size: 64)
!6301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !6302, line: 59, size: 1984, elements: !6303)
!6302 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!6303 = !{!6304, !6305}
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !6301, file: !6302, line: 60, baseType: !1339, size: 64)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !6301, file: !6302, line: 61, baseType: !6306, size: 1920, offset: 64)
!6306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !356, line: 190, size: 1920, elements: !6307)
!6307 = !{!6308, !6330, !6331, !6332, !6333, !6334, !6335}
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !6306, file: !356, line: 200, baseType: !6309, size: 64)
!6309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6310, size: 64)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{null, !6312, !545, !4695, !4695}
!6312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6313, size: 64)
!6313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6314)
!6314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !356, line: 157, size: 1344, elements: !6315)
!6315 = !{!6316, !6317, !6318, !6319, !6321, !6322, !6323, !6324, !6325, !6326, !6327, !6328, !6329}
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !6314, file: !356, line: 159, baseType: !545, size: 64)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6314, file: !356, line: 161, baseType: !648, size: 64, offset: 64)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6314, file: !356, line: 163, baseType: !648, size: 64, offset: 128)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !6314, file: !356, line: 165, baseType: !6320, size: 64, offset: 192)
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6306, size: 64)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !6314, file: !356, line: 166, baseType: !416, size: 128, offset: 256)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !6314, file: !356, line: 167, baseType: !416, size: 128, offset: 384)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !6314, file: !356, line: 168, baseType: !947, size: 192, align: 64, offset: 512)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !6314, file: !356, line: 169, baseType: !947, size: 192, align: 64, offset: 704)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !6314, file: !356, line: 170, baseType: !947, size: 192, align: 64, offset: 896)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !6314, file: !356, line: 171, baseType: !648, size: 64, offset: 1088)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !6314, file: !356, line: 172, baseType: !648, size: 64, offset: 1152)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !6314, file: !356, line: 173, baseType: !648, size: 64, offset: 1216)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6314, file: !356, line: 174, baseType: !545, size: 64, offset: 1280)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !6306, file: !356, line: 206, baseType: !416, size: 128, offset: 64)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !6306, file: !356, line: 209, baseType: !6314, size: 1344, offset: 192)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !6306, file: !356, line: 211, baseType: !1575, size: 128, offset: 1536)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !6306, file: !356, line: 212, baseType: !1575, size: 128, offset: 1664)
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !6306, file: !356, line: 213, baseType: !1578, size: 64, offset: 1792)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !6306, file: !356, line: 215, baseType: !545, size: 64, offset: 1856)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !399, file: !312, line: 294, baseType: !6337, size: 64, offset: 12160)
!6337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6338, size: 64)
!6338 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !312, line: 17, flags: DIFlagFwdDecl)
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !399, file: !312, line: 304, baseType: !311, size: 32, offset: 12224)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !399, file: !312, line: 312, baseType: !6341, size: 64, offset: 12288)
!6341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6342, size: 64)
!6342 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !312, line: 18, flags: DIFlagFwdDecl)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !399, file: !312, line: 319, baseType: !835, size: 256, offset: 12352)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !399, file: !312, line: 327, baseType: !416, size: 128, offset: 12608)
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !379, file: !319, line: 302, baseType: !1719, size: 64, offset: 128)
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !379, file: !319, line: 314, baseType: !6347, size: 1536, offset: 192)
!6347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !6302, line: 52, size: 1536, elements: !6348)
!6348 = !{!6349, !6350, !6351, !6352}
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !6347, file: !6302, line: 53, baseType: !1339, size: 64)
!6350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !6347, file: !6302, line: 54, baseType: !6314, size: 1344, offset: 64)
!6351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !6347, file: !6302, line: 55, baseType: !1578, size: 64, offset: 1408)
!6352 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !6347, file: !6302, line: 56, baseType: !366, size: 64, offset: 1472)
!6353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !379, file: !319, line: 322, baseType: !542, size: 64, offset: 1728)
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !379, file: !319, line: 331, baseType: !109, size: 32, offset: 1792)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !379, file: !319, line: 344, baseType: !5008, size: 64, offset: 1856)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !379, file: !319, line: 364, baseType: !5014, size: 64, offset: 1920)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !379, file: !319, line: 373, baseType: !6358, size: 64, offset: 1984)
!6358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6359, size: 64)
!6359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !6360, line: 155, size: 384, elements: !6361)
!6360 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!6361 = !{!6362, !6363}
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6359, file: !6360, line: 166, baseType: !5148, size: 320)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !6359, file: !6360, line: 178, baseType: !6364, size: 64, offset: 320)
!6364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6365, size: 64)
!6365 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !6360, line: 50, flags: DIFlagFwdDecl)
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !379, file: !319, line: 382, baseType: !6359, size: 384, offset: 2048)
!6367 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !379, file: !319, line: 398, baseType: !6368, size: 128, offset: 2432)
!6368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !319, line: 392, size: 128, elements: !6369)
!6369 = !{!6370}
!6370 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6368, file: !319, line: 393, baseType: !416, size: 128)
!6371 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !379, file: !319, line: 409, baseType: !6372, size: 64, offset: 2560)
!6372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6373, size: 64)
!6373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6374)
!6374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !319, line: 69, size: 896, elements: !6375)
!6375 = !{!6376, !6380, !6384, !6388, !6394, !6398, !6402, !6403, !6407, !6413, !6417, !6421, !6422, !6426}
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6374, file: !319, line: 77, baseType: !6377, size: 64)
!6377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6378, size: 64)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{null, !4994}
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !6374, file: !319, line: 86, baseType: !6381, size: 64, offset: 64)
!6381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6382, size: 64)
!6382 = !DISubroutineType(types: !6383)
!6383 = !{!109, !4994, !4902}
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !6374, file: !319, line: 95, baseType: !6385, size: 64, offset: 128)
!6385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6386, size: 64)
!6386 = !DISubroutineType(types: !6387)
!6387 = !{null, !4994, !4902}
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !6374, file: !319, line: 110, baseType: !6389, size: 64, offset: 192)
!6389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6390, size: 64)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{null, !5057, !7, !6392}
!6392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6393, size: 64)
!6393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !6374, file: !319, line: 121, baseType: !6395, size: 64, offset: 256)
!6395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6396, size: 64)
!6396 = !DISubroutineType(types: !6397)
!6397 = !{!5008, !4994, !109}
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !6374, file: !319, line: 130, baseType: !6399, size: 64, offset: 320)
!6399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6400, size: 64)
!6400 = !DISubroutineType(types: !6401)
!6401 = !{!109, !4994}
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !6374, file: !319, line: 139, baseType: !6377, size: 64, offset: 384)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !6374, file: !319, line: 153, baseType: !6404, size: 64, offset: 448)
!6404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6405, size: 64)
!6405 = !DISubroutineType(types: !6406)
!6406 = !{!5016, !4994}
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !6374, file: !319, line: 163, baseType: !6408, size: 64, offset: 512)
!6408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6409, size: 64)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{!109, !4994, !6411}
!6411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6412, size: 64)
!6412 = !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !319, line: 44, flags: DIFlagFwdDecl)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !6374, file: !319, line: 173, baseType: !6414, size: 64, offset: 576)
!6414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6415, size: 64)
!6415 = !DISubroutineType(types: !6416)
!6416 = !{null, !4994, !6411}
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !6374, file: !319, line: 186, baseType: !6418, size: 64, offset: 640)
!6418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6419, size: 64)
!6419 = !DISubroutineType(types: !6420)
!6420 = !{!109, !4994, !2743}
!6421 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !6374, file: !319, line: 196, baseType: !6399, size: 64, offset: 704)
!6422 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6374, file: !319, line: 209, baseType: !6423, size: 64, offset: 768)
!6423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6424, size: 64)
!6424 = !DISubroutineType(types: !6425)
!6425 = !{!318, !4994}
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !6374, file: !319, line: 218, baseType: !2786, size: 64, offset: 832)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !379, file: !319, line: 416, baseType: !416, size: 128, offset: 2624)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !379, file: !319, line: 423, baseType: !6429, size: 64, offset: 2752)
!6429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6430, size: 64)
!6430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !319, line: 230, size: 256, elements: !6431)
!6431 = !{!6432, !6434, !6435}
!6432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6430, file: !319, line: 238, baseType: !6433, size: 64)
!6433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!6434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6430, file: !319, line: 246, baseType: !531, size: 64, offset: 64)
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6430, file: !319, line: 253, baseType: !416, size: 128, offset: 128)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !375, file: !376, line: 32, baseType: !3019, size: 64, offset: 2816)
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "pages_use_count", scope: !375, file: !376, line: 40, baseType: !7, size: 32, offset: 2880)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "madv", scope: !375, file: !376, line: 49, baseType: !109, size: 32, offset: 2912)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "madv_list", scope: !375, file: !376, line: 56, baseType: !416, size: 128, offset: 2944)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !375, file: !376, line: 61, baseType: !5016, size: 64, offset: 3072)
!6441 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !375, file: !376, line: 66, baseType: !366, size: 64, offset: 3136)
!6442 = !DIDerivedType(tag: DW_TAG_member, name: "vmap_use_count", scope: !375, file: !376, line: 74, baseType: !7, size: 32, offset: 3200)
!6443 = !DIDerivedType(tag: DW_TAG_member, name: "pages_mark_dirty_on_put", scope: !375, file: !376, line: 81, baseType: !915, size: 1, offset: 3232, flags: DIFlagBitField, extraData: i64 3232)
!6444 = !DIDerivedType(tag: DW_TAG_member, name: "pages_mark_accessed_on_put", scope: !375, file: !376, line: 88, baseType: !915, size: 1, offset: 3233, flags: DIFlagBitField, extraData: i64 3232)
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "map_wc", scope: !375, file: !376, line: 93, baseType: !915, size: 1, offset: 3234, flags: DIFlagBitField, extraData: i64 3232)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "hw_res_handle", scope: !372, file: !369, line: 89, baseType: !2057, size: 32, offset: 3264)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "dumb", scope: !372, file: !369, line: 90, baseType: !915, size: 8, offset: 3296)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !372, file: !369, line: 91, baseType: !915, size: 8, offset: 3304)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "host3d_blob", scope: !372, file: !369, line: 92, baseType: !915, size: 8, offset: 3312)
!6450 = !DIDerivedType(tag: DW_TAG_member, name: "guest_blob", scope: !372, file: !369, line: 92, baseType: !915, size: 8, offset: 3320)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "blob_mem", scope: !372, file: !369, line: 93, baseType: !2057, size: 32, offset: 3328)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "blob_flags", scope: !372, file: !369, line: 93, baseType: !2057, size: 32, offset: 3360)
!6453 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_state", scope: !372, file: !369, line: 95, baseType: !109, size: 32, offset: 3392)
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !372, file: !369, line: 96, baseType: !3791, size: 128, offset: 3424)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "map_state", scope: !368, file: !369, line: 107, baseType: !2057, size: 32, offset: 3584)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "map_info", scope: !368, file: !369, line: 108, baseType: !2057, size: 32, offset: 3616)
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "vram_node", scope: !368, file: !369, line: 109, baseType: !6314, size: 1344, offset: 3648)
!6458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!6459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6460, size: 64)
!6460 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!6461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !392, line: 42, baseType: !545)
!6462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!6463 = !{!6464, !6469, !0, !6474, !6478}
!6464 = !DIGlobalVariableExpression(var: !6465, expr: !DIExpression())
!6465 = distinct !DIGlobalVariable(scope: null, file: !336, line: 480, type: !6466, isLocal: true, isDefinition: true)
!6466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 168, elements: !6467)
!6467 = !{!6468}
!6468 = !DISubrange(count: 21)
!6469 = !DIGlobalVariableExpression(var: !6470, expr: !DIExpression())
!6470 = distinct !DIGlobalVariable(scope: null, file: !5018, line: 115, type: !6471, isLocal: true, isDefinition: true)
!6471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 224, elements: !6472)
!6472 = !{!6473}
!6473 = !DISubrange(count: 28)
!6474 = !DIGlobalVariableExpression(var: !6475, expr: !DIExpression())
!6475 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !6476, file: !6477, line: 112, type: !366, isLocal: true, isDefinition: true)
!6476 = distinct !DISubprogram(name: "might_resched", scope: !6477, file: !6477, line: 110, type: !1200, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6477 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6478 = !DIGlobalVariableExpression(var: !6479, expr: !DIExpression())
!6479 = distinct !DIGlobalVariable(name: "virtio_gpu_vram_vm_ops", scope: !2, file: !3, line: 27, type: !2787, isLocal: true, isDefinition: true)
!6480 = !{i32 7, !"Dwarf Version", i32 5}
!6481 = !{i32 2, !"Debug Info Version", i32 3}
!6482 = !{i32 1, !"wchar_size", i32 2}
!6483 = !{i32 8, !"cf-protection-branch", i32 1}
!6484 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6485 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6486 = !{i32 1, !"Code Model", i32 2}
!6487 = !{i32 1, !"override-stack-alignment", i32 8}
!6488 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6489 = distinct !DISubprogram(name: "virtio_gpu_vram_map_dma_buf", scope: !3, file: !3, line: 69, type: !6490, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6492)
!6490 = !DISubroutineType(types: !6491)
!6491 = !{!5016, !6458, !404, !323}
!6492 = !{!6493, !6494, !6495, !6496, !6734, !6735, !6737, !6738, !6739, !6740}
!6493 = !DILocalVariable(name: "bo", arg: 1, scope: !6489, file: !3, line: 69, type: !6458)
!6494 = !DILocalVariable(name: "dev", arg: 2, scope: !6489, file: !3, line: 70, type: !404)
!6495 = !DILocalVariable(name: "dir", arg: 3, scope: !6489, file: !3, line: 71, type: !323)
!6496 = !DILocalVariable(name: "vgdev", scope: !6489, file: !3, line: 73, type: !6497)
!6497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6498, size: 64)
!6498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_device", file: !369, line: 224, size: 338496, elements: !6499)
!6499 = !{!6500, !6501, !6631, !6684, !6685, !6693, !6694, !6695, !6696, !6697, !6698, !6699, !6700, !6708, !6709, !6710, !6711, !6712, !6713, !6714, !6715, !6716, !6717, !6718, !6719, !6720, !6721, !6722, !6729, !6730, !6731, !6732, !6733}
!6500 = !DIDerivedType(tag: DW_TAG_member, name: "ddev", scope: !6498, file: !369, line: 225, baseType: !398, size: 64)
!6501 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !6498, file: !369, line: 227, baseType: !6502, size: 64, offset: 64)
!6502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6503, size: 64)
!6503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device", file: !6504, line: 122, size: 6400, elements: !6505)
!6504 = !DIFile(filename: "./include/linux/virtio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e5ffaaf59c73222e5165cb3fb97a1c")
!6505 = !{!6506, !6507, !6508, !6509, !6510, !6511, !6512, !6513, !6518, !6624, !6628, !6629, !6630}
!6506 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6503, file: !6504, line: 123, baseType: !109, size: 32)
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !6503, file: !6504, line: 124, baseType: !915, size: 8, offset: 32)
!6508 = !DIDerivedType(tag: DW_TAG_member, name: "config_enabled", scope: !6503, file: !6504, line: 125, baseType: !915, size: 8, offset: 40)
!6509 = !DIDerivedType(tag: DW_TAG_member, name: "config_change_pending", scope: !6503, file: !6504, line: 126, baseType: !915, size: 8, offset: 48)
!6510 = !DIDerivedType(tag: DW_TAG_member, name: "config_lock", scope: !6503, file: !6504, line: 127, baseType: !429, size: 32, offset: 64)
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "vqs_list_lock", scope: !6503, file: !6504, line: 128, baseType: !429, size: 32, offset: 96)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6503, file: !6504, line: 129, baseType: !405, size: 5824, offset: 128)
!6513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6503, file: !6504, line: 130, baseType: !6514, size: 64, offset: 5952)
!6514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device_id", file: !4507, line: 449, size: 64, elements: !6515)
!6515 = !{!6516, !6517}
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !6514, file: !4507, line: 450, baseType: !645, size: 32)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !6514, file: !4507, line: 451, baseType: !645, size: 32, offset: 32)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !6503, file: !6504, line: 131, baseType: !6519, size: 64, offset: 6016)
!6519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6520, size: 64)
!6520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6521)
!6521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_config_ops", file: !6522, line: 97, size: 1088, elements: !6523)
!6522 = !DIFile(filename: "./include/linux/virtio_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b12f5288db5f9b29a3869a2adb1ae6a1")
!6523 = !{!6524, !6528, !6532, !6536, !6540, !6544, !6548, !6586, !6587, !6588, !6592, !6596, !6600, !6606, !6610, !6619, !6623}
!6524 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !6521, file: !6522, line: 98, baseType: !6525, size: 64)
!6525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6526, size: 64)
!6526 = !DISubroutineType(types: !6527)
!6527 = !{null, !6502, !7, !366, !7}
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !6521, file: !6522, line: 100, baseType: !6529, size: 64, offset: 64)
!6529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6530, size: 64)
!6530 = !DISubroutineType(types: !6531)
!6531 = !{null, !6502, !7, !1823, !7}
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !6521, file: !6522, line: 102, baseType: !6533, size: 64, offset: 128)
!6533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6534, size: 64)
!6534 = !DISubroutineType(types: !6535)
!6535 = !{!644, !6502}
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !6521, file: !6522, line: 103, baseType: !6537, size: 64, offset: 192)
!6537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6538, size: 64)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!453, !6502}
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "set_status", scope: !6521, file: !6522, line: 104, baseType: !6541, size: 64, offset: 256)
!6541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6542, size: 64)
!6542 = !DISubroutineType(types: !6543)
!6543 = !{null, !6502, !453}
!6544 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6521, file: !6522, line: 105, baseType: !6545, size: 64, offset: 320)
!6545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6546, size: 64)
!6546 = !DISubroutineType(types: !6547)
!6547 = !{null, !6502}
!6548 = !DIDerivedType(tag: DW_TAG_member, name: "find_vqs", scope: !6521, file: !6522, line: 106, baseType: !6549, size: 64, offset: 384)
!6549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6550, size: 64)
!6550 = !DISubroutineType(types: !6551)
!6551 = !{!109, !6502, !7, !6552, !6568, !5925, !6571, !6573}
!6552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6553, size: 64)
!6553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6554, size: 64)
!6554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtqueue", file: !6504, line: 30, size: 512, elements: !6555)
!6555 = !{!6556, !6557, !6561, !6562, !6563, !6564, !6565, !6566, !6567}
!6556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6554, file: !6504, line: 31, baseType: !416, size: 128)
!6557 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !6554, file: !6504, line: 32, baseType: !6558, size: 64, offset: 128)
!6558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6559, size: 64)
!6559 = !DISubroutineType(types: !6560)
!6560 = !{null, !6553}
!6561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6554, file: !6504, line: 33, baseType: !412, size: 64, offset: 192)
!6562 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !6554, file: !6504, line: 34, baseType: !6502, size: 64, offset: 256)
!6563 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6554, file: !6504, line: 35, baseType: !7, size: 32, offset: 320)
!6564 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !6554, file: !6504, line: 36, baseType: !7, size: 32, offset: 352)
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "num_max", scope: !6554, file: !6504, line: 37, baseType: !7, size: 32, offset: 384)
!6566 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6554, file: !6504, line: 38, baseType: !915, size: 8, offset: 416)
!6567 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6554, file: !6504, line: 39, baseType: !366, size: 64, offset: 448)
!6568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6569, size: 64)
!6569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6570, size: 64)
!6570 = !DIDerivedType(tag: DW_TAG_typedef, name: "vq_callback_t", file: !6522, line: 19, baseType: !6559)
!6571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6572, size: 64)
!6572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!6573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6574, size: 64)
!6574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity", file: !6575, line: 285, size: 384, elements: !6576)
!6575 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!6576 = !{!6577, !6578, !6579, !6580, !6581, !6585}
!6577 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vectors", scope: !6574, file: !6575, line: 286, baseType: !7, size: 32)
!6578 = !DIDerivedType(tag: DW_TAG_member, name: "post_vectors", scope: !6574, file: !6575, line: 287, baseType: !7, size: 32, offset: 32)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sets", scope: !6574, file: !6575, line: 288, baseType: !7, size: 32, offset: 64)
!6580 = !DIDerivedType(tag: DW_TAG_member, name: "set_size", scope: !6574, file: !6575, line: 289, baseType: !5300, size: 128, offset: 96)
!6581 = !DIDerivedType(tag: DW_TAG_member, name: "calc_sets", scope: !6574, file: !6575, line: 290, baseType: !6582, size: 64, offset: 256)
!6582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6583, size: 64)
!6583 = !DISubroutineType(types: !6584)
!6584 = !{null, !6573, !7}
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6574, file: !6575, line: 291, baseType: !366, size: 64, offset: 320)
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "del_vqs", scope: !6521, file: !6522, line: 110, baseType: !6545, size: 64, offset: 448)
!6587 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize_cbs", scope: !6521, file: !6522, line: 111, baseType: !6545, size: 64, offset: 512)
!6588 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !6521, file: !6522, line: 112, baseType: !6589, size: 64, offset: 576)
!6589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6590, size: 64)
!6590 = !DISubroutineType(types: !6591)
!6591 = !{!648, !6502}
!6592 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_features", scope: !6521, file: !6522, line: 113, baseType: !6593, size: 64, offset: 640)
!6593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6594, size: 64)
!6594 = !DISubroutineType(types: !6595)
!6595 = !{!109, !6502}
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !6521, file: !6522, line: 114, baseType: !6597, size: 64, offset: 704)
!6597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6598, size: 64)
!6598 = !DISubroutineType(types: !6599)
!6599 = !{!412, !6502}
!6600 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_affinity", scope: !6521, file: !6522, line: 115, baseType: !6601, size: 64, offset: 768)
!6601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6602, size: 64)
!6602 = !DISubroutineType(types: !6603)
!6603 = !{!109, !6553, !6604}
!6604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6605, size: 64)
!6605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_affinity", scope: !6521, file: !6522, line: 117, baseType: !6607, size: 64, offset: 832)
!6607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6608, size: 64)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!6604, !6502, !109}
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "get_shm_region", scope: !6521, file: !6522, line: 119, baseType: !6611, size: 64, offset: 896)
!6611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6612, size: 64)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{!915, !6502, !6614, !453}
!6614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6615, size: 64)
!6615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_shm_region", file: !6522, line: 14, size: 128, elements: !6616)
!6616 = !{!6617, !6618}
!6617 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !6615, file: !6522, line: 15, baseType: !648, size: 64)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6615, file: !6522, line: 16, baseType: !648, size: 64, offset: 64)
!6619 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vq_and_reset", scope: !6521, file: !6522, line: 121, baseType: !6620, size: 64, offset: 960)
!6620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6621, size: 64)
!6621 = !DISubroutineType(types: !6622)
!6622 = !{!109, !6553}
!6623 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vq_after_reset", scope: !6521, file: !6522, line: 122, baseType: !6620, size: 64, offset: 1024)
!6624 = !DIDerivedType(tag: DW_TAG_member, name: "vringh_config", scope: !6503, file: !6504, line: 132, baseType: !6625, size: 64, offset: 6080)
!6625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6626, size: 64)
!6626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6627)
!6627 = !DICompositeType(tag: DW_TAG_structure_type, name: "vringh_config_ops", file: !6504, line: 132, flags: DIFlagFwdDecl)
!6628 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !6503, file: !6504, line: 133, baseType: !416, size: 128, offset: 6144)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !6503, file: !6504, line: 134, baseType: !648, size: 64, offset: 6272)
!6630 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !6503, file: !6504, line: 135, baseType: !366, size: 64, offset: 6336)
!6631 = !DIDerivedType(tag: DW_TAG_member, name: "outputs", scope: !6498, file: !369, line: 229, baseType: !6632, size: 332800, offset: 128)
!6632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6633, size: 332800, elements: !2186)
!6633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_output", file: !369, line: 172, size: 20800, elements: !6634)
!6634 = !{!6635, !6636, !6637, !6638, !6639, !6653, !6678, !6681, !6682, !6683}
!6635 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6633, file: !369, line: 173, baseType: !109, size: 32)
!6636 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6633, file: !369, line: 174, baseType: !5408, size: 8064, offset: 64)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !6633, file: !369, line: 175, baseType: !5470, size: 10880, offset: 8128)
!6638 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !6633, file: !369, line: 176, baseType: !5618, size: 960, offset: 19008)
!6639 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6633, file: !369, line: 177, baseType: !6640, size: 192, offset: 19968)
!6640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_display_one", file: !6641, line: 239, size: 192, elements: !6642)
!6641 = !DIFile(filename: "./include/uapi/linux/virtio_gpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f627377b5ecd90545846f35499995ce8")
!6642 = !{!6643, !6651, !6652}
!6643 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !6640, file: !6641, line: 240, baseType: !6644, size: 128)
!6644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_rect", file: !6641, line: 167, size: 128, elements: !6645)
!6645 = !{!6646, !6648, !6649, !6650}
!6646 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6644, file: !6641, line: 168, baseType: !6647, size: 32)
!6647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !3378, line: 38, baseType: !645)
!6648 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !6644, file: !6641, line: 169, baseType: !6647, size: 32, offset: 32)
!6649 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6644, file: !6641, line: 170, baseType: !6647, size: 32, offset: 64)
!6650 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6644, file: !6641, line: 171, baseType: !6647, size: 32, offset: 96)
!6651 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6640, file: !6641, line: 241, baseType: !6647, size: 32, offset: 128)
!6652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6640, file: !6641, line: 242, baseType: !6647, size: 32, offset: 160)
!6653 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !6633, file: !369, line: 178, baseType: !6654, size: 448, offset: 20160)
!6654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_update_cursor", file: !6641, line: 156, size: 448, elements: !6655)
!6655 = !{!6656, !6667, !6674, !6675, !6676, !6677}
!6656 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !6654, file: !6641, line: 157, baseType: !6657, size: 192)
!6657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_ctrl_hdr", file: !6641, line: 137, size: 192, elements: !6658)
!6658 = !{!6659, !6660, !6661, !6663, !6664, !6665}
!6659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6657, file: !6641, line: 138, baseType: !6647, size: 32)
!6660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6657, file: !6641, line: 139, baseType: !6647, size: 32, offset: 32)
!6661 = !DIDerivedType(tag: DW_TAG_member, name: "fence_id", scope: !6657, file: !6641, line: 140, baseType: !6662, size: 64, offset: 64)
!6662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !3378, line: 40, baseType: !649)
!6663 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !6657, file: !6641, line: 141, baseType: !6647, size: 32, offset: 128)
!6664 = !DIDerivedType(tag: DW_TAG_member, name: "ring_idx", scope: !6657, file: !6641, line: 142, baseType: !455, size: 8, offset: 160)
!6665 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6657, file: !6641, line: 143, baseType: !6666, size: 24, offset: 168)
!6666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 24, elements: !496)
!6667 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !6654, file: !6641, line: 158, baseType: !6668, size: 128, offset: 192)
!6668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_cursor_pos", file: !6641, line: 148, size: 128, elements: !6669)
!6669 = !{!6670, !6671, !6672, !6673}
!6670 = !DIDerivedType(tag: DW_TAG_member, name: "scanout_id", scope: !6668, file: !6641, line: 149, baseType: !6647, size: 32)
!6671 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6668, file: !6641, line: 150, baseType: !6647, size: 32, offset: 32)
!6672 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !6668, file: !6641, line: 151, baseType: !6647, size: 32, offset: 64)
!6673 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6668, file: !6641, line: 152, baseType: !6647, size: 32, offset: 96)
!6674 = !DIDerivedType(tag: DW_TAG_member, name: "resource_id", scope: !6654, file: !6641, line: 159, baseType: !6647, size: 32, offset: 320)
!6675 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !6654, file: !6641, line: 160, baseType: !6647, size: 32, offset: 352)
!6676 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !6654, file: !6641, line: 161, baseType: !6647, size: 32, offset: 384)
!6677 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6654, file: !6641, line: 162, baseType: !6647, size: 32, offset: 416)
!6678 = !DIDerivedType(tag: DW_TAG_member, name: "edid", scope: !6633, file: !369, line: 179, baseType: !6679, size: 64, offset: 20608)
!6679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6680, size: 64)
!6680 = !DICompositeType(tag: DW_TAG_structure_type, name: "edid", file: !202, line: 47, flags: DIFlagFwdDecl)
!6681 = !DIDerivedType(tag: DW_TAG_member, name: "cur_x", scope: !6633, file: !369, line: 180, baseType: !109, size: 32, offset: 20672)
!6682 = !DIDerivedType(tag: DW_TAG_member, name: "cur_y", scope: !6633, file: !369, line: 181, baseType: !109, size: 32, offset: 20704)
!6683 = !DIDerivedType(tag: DW_TAG_member, name: "needs_modeset", scope: !6633, file: !369, line: 182, baseType: !915, size: 8, offset: 20736)
!6684 = !DIDerivedType(tag: DW_TAG_member, name: "num_scanouts", scope: !6498, file: !369, line: 230, baseType: !2057, size: 32, offset: 332928)
!6685 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlq", scope: !6498, file: !369, line: 232, baseType: !6686, size: 640, offset: 332992)
!6686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_queue", file: !369, line: 201, size: 640, elements: !6687)
!6687 = !{!6688, !6689, !6690, !6691, !6692}
!6688 = !DIDerivedType(tag: DW_TAG_member, name: "vq", scope: !6686, file: !369, line: 202, baseType: !6553, size: 64)
!6689 = !DIDerivedType(tag: DW_TAG_member, name: "qlock", scope: !6686, file: !369, line: 203, baseType: !429, size: 32, offset: 64)
!6690 = !DIDerivedType(tag: DW_TAG_member, name: "ack_queue", scope: !6686, file: !369, line: 204, baseType: !1370, size: 192, offset: 128)
!6691 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue_work", scope: !6686, file: !369, line: 205, baseType: !1095, size: 256, offset: 320)
!6692 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !6686, file: !369, line: 206, baseType: !2057, size: 32, offset: 576)
!6693 = !DIDerivedType(tag: DW_TAG_member, name: "cursorq", scope: !6498, file: !369, line: 233, baseType: !6686, size: 640, offset: 333632)
!6694 = !DIDerivedType(tag: DW_TAG_member, name: "vbufs", scope: !6498, file: !369, line: 234, baseType: !3263, size: 64, offset: 334272)
!6695 = !DIDerivedType(tag: DW_TAG_member, name: "pending_commands", scope: !6498, file: !369, line: 236, baseType: !391, size: 32, offset: 334336)
!6696 = !DIDerivedType(tag: DW_TAG_member, name: "resource_ida", scope: !6498, file: !369, line: 238, baseType: !5184, size: 128, offset: 334400)
!6697 = !DIDerivedType(tag: DW_TAG_member, name: "resp_wq", scope: !6498, file: !369, line: 240, baseType: !1370, size: 192, offset: 334528)
!6698 = !DIDerivedType(tag: DW_TAG_member, name: "display_info_lock", scope: !6498, file: !369, line: 242, baseType: !429, size: 32, offset: 334720)
!6699 = !DIDerivedType(tag: DW_TAG_member, name: "display_info_pending", scope: !6498, file: !369, line: 243, baseType: !915, size: 8, offset: 334752)
!6700 = !DIDerivedType(tag: DW_TAG_member, name: "fence_drv", scope: !6498, file: !369, line: 245, baseType: !6701, size: 384, offset: 334784)
!6701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_fence_driver", file: !369, line: 131, size: 384, elements: !6702)
!6702 = !{!6703, !6704, !6705, !6706, !6707}
!6703 = !DIDerivedType(tag: DW_TAG_member, name: "last_fence_id", scope: !6701, file: !369, line: 132, baseType: !841, size: 64)
!6704 = !DIDerivedType(tag: DW_TAG_member, name: "current_fence_id", scope: !6701, file: !369, line: 133, baseType: !5052, size: 64, offset: 64)
!6705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6701, file: !369, line: 134, baseType: !5052, size: 64, offset: 128)
!6706 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !6701, file: !369, line: 135, baseType: !416, size: 128, offset: 192)
!6707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6701, file: !369, line: 136, baseType: !429, size: 32, offset: 320)
!6708 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id_ida", scope: !6498, file: !369, line: 247, baseType: !5184, size: 128, offset: 335168)
!6709 = !DIDerivedType(tag: DW_TAG_member, name: "has_virgl_3d", scope: !6498, file: !369, line: 249, baseType: !915, size: 8, offset: 335296)
!6710 = !DIDerivedType(tag: DW_TAG_member, name: "has_edid", scope: !6498, file: !369, line: 250, baseType: !915, size: 8, offset: 335304)
!6711 = !DIDerivedType(tag: DW_TAG_member, name: "has_indirect", scope: !6498, file: !369, line: 251, baseType: !915, size: 8, offset: 335312)
!6712 = !DIDerivedType(tag: DW_TAG_member, name: "has_resource_assign_uuid", scope: !6498, file: !369, line: 252, baseType: !915, size: 8, offset: 335320)
!6713 = !DIDerivedType(tag: DW_TAG_member, name: "has_resource_blob", scope: !6498, file: !369, line: 253, baseType: !915, size: 8, offset: 335328)
!6714 = !DIDerivedType(tag: DW_TAG_member, name: "has_host_visible", scope: !6498, file: !369, line: 254, baseType: !915, size: 8, offset: 335336)
!6715 = !DIDerivedType(tag: DW_TAG_member, name: "has_context_init", scope: !6498, file: !369, line: 255, baseType: !915, size: 8, offset: 335344)
!6716 = !DIDerivedType(tag: DW_TAG_member, name: "host_visible_region", scope: !6498, file: !369, line: 256, baseType: !6615, size: 128, offset: 335360)
!6717 = !DIDerivedType(tag: DW_TAG_member, name: "host_visible_mm", scope: !6498, file: !369, line: 257, baseType: !6306, size: 1920, offset: 335488)
!6718 = !DIDerivedType(tag: DW_TAG_member, name: "config_changed_work", scope: !6498, file: !369, line: 259, baseType: !1095, size: 256, offset: 337408)
!6719 = !DIDerivedType(tag: DW_TAG_member, name: "obj_free_work", scope: !6498, file: !369, line: 261, baseType: !1095, size: 256, offset: 337664)
!6720 = !DIDerivedType(tag: DW_TAG_member, name: "obj_free_lock", scope: !6498, file: !369, line: 262, baseType: !429, size: 32, offset: 337920)
!6721 = !DIDerivedType(tag: DW_TAG_member, name: "obj_free_list", scope: !6498, file: !369, line: 263, baseType: !416, size: 128, offset: 337984)
!6722 = !DIDerivedType(tag: DW_TAG_member, name: "capsets", scope: !6498, file: !369, line: 265, baseType: !6723, size: 64, offset: 338112)
!6723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6724, size: 64)
!6724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_drv_capset", file: !369, line: 209, size: 96, elements: !6725)
!6725 = !{!6726, !6727, !6728}
!6726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6724, file: !369, line: 210, baseType: !2057, size: 32)
!6727 = !DIDerivedType(tag: DW_TAG_member, name: "max_version", scope: !6724, file: !369, line: 211, baseType: !2057, size: 32, offset: 32)
!6728 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !6724, file: !369, line: 212, baseType: !2057, size: 32, offset: 64)
!6729 = !DIDerivedType(tag: DW_TAG_member, name: "num_capsets", scope: !6498, file: !369, line: 266, baseType: !2057, size: 32, offset: 338176)
!6730 = !DIDerivedType(tag: DW_TAG_member, name: "capset_id_mask", scope: !6498, file: !369, line: 267, baseType: !5052, size: 64, offset: 338240)
!6731 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cache", scope: !6498, file: !369, line: 268, baseType: !416, size: 128, offset: 338304)
!6732 = !DIDerivedType(tag: DW_TAG_member, name: "resource_export_lock", scope: !6498, file: !369, line: 271, baseType: !429, size: 32, offset: 338432)
!6733 = !DIDerivedType(tag: DW_TAG_member, name: "host_visible_lock", scope: !6498, file: !369, line: 273, baseType: !429, size: 32, offset: 338464)
!6734 = !DILocalVariable(name: "vram", scope: !6489, file: !3, line: 74, type: !367)
!6735 = !DILocalVariable(name: "__mptr", scope: !6736, file: !3, line: 74, type: !366)
!6736 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 74, column: 40)
!6737 = !DILocalVariable(name: "sgt", scope: !6489, file: !3, line: 75, type: !5016)
!6738 = !DILocalVariable(name: "addr", scope: !6489, file: !3, line: 76, type: !5028)
!6739 = !DILocalVariable(name: "ret", scope: !6489, file: !3, line: 77, type: !109)
!6740 = !DILabel(scope: !6489, name: "out", file: !3, line: 109)
!6741 = !DILocation(line: 69, column: 72, scope: !6489)
!6742 = !DILocation(line: 70, column: 26, scope: !6489)
!6743 = !DILocation(line: 71, column: 35, scope: !6489)
!6744 = !DILocation(line: 73, column: 2, scope: !6489)
!6745 = !DILocation(line: 73, column: 28, scope: !6489)
!6746 = !DILocation(line: 73, column: 36, scope: !6489)
!6747 = !DILocation(line: 73, column: 40, scope: !6489)
!6748 = !DILocation(line: 73, column: 45, scope: !6489)
!6749 = !DILocation(line: 73, column: 50, scope: !6489)
!6750 = !DILocation(line: 73, column: 55, scope: !6489)
!6751 = !DILocation(line: 74, column: 2, scope: !6489)
!6752 = !DILocation(line: 74, column: 33, scope: !6489)
!6753 = !DILocation(line: 74, column: 40, scope: !6736)
!6754 = !DILocation(line: 74, column: 40, scope: !6489)
!6755 = !DILocation(line: 75, column: 2, scope: !6489)
!6756 = !DILocation(line: 75, column: 19, scope: !6489)
!6757 = !DILocation(line: 76, column: 2, scope: !6489)
!6758 = !DILocation(line: 76, column: 13, scope: !6489)
!6759 = !DILocation(line: 77, column: 2, scope: !6489)
!6760 = !DILocation(line: 77, column: 6, scope: !6489)
!6761 = !DILocation(line: 79, column: 8, scope: !6489)
!6762 = !DILocation(line: 79, column: 6, scope: !6489)
!6763 = !DILocation(line: 80, column: 7, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 80, column: 6)
!6765 = !DILocation(line: 80, column: 6, scope: !6489)
!6766 = !DILocation(line: 81, column: 10, scope: !6764)
!6767 = !DILocation(line: 81, column: 3, scope: !6764)
!6768 = !DILocation(line: 83, column: 8, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 83, column: 6)
!6770 = !DILocation(line: 83, column: 12, scope: !6769)
!6771 = !DILocation(line: 83, column: 23, scope: !6769)
!6772 = !DILocation(line: 83, column: 6, scope: !6489)
!6773 = !DILocation(line: 86, column: 25, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 86, column: 7)
!6775 = distinct !DILexicalBlock(scope: !6769, file: !3, line: 83, column: 58)
!6776 = !DILocation(line: 86, column: 8, scope: !6774)
!6777 = !DILocation(line: 86, column: 30, scope: !6774)
!6778 = !DILocation(line: 86, column: 34, scope: !6774)
!6779 = !DILocation(line: 86, column: 41, scope: !6774)
!6780 = !{i8 0, i8 2}
!6781 = !DILocation(line: 86, column: 7, scope: !6775)
!6782 = !DILocation(line: 87, column: 8, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6774, file: !3, line: 86, column: 67)
!6784 = !DILocation(line: 88, column: 4, scope: !6783)
!6785 = !DILocation(line: 90, column: 10, scope: !6775)
!6786 = !DILocation(line: 90, column: 3, scope: !6775)
!6787 = !DILocation(line: 93, column: 23, scope: !6489)
!6788 = !DILocation(line: 93, column: 8, scope: !6489)
!6789 = !DILocation(line: 93, column: 6, scope: !6489)
!6790 = !DILocation(line: 94, column: 6, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 94, column: 6)
!6792 = !DILocation(line: 94, column: 6, scope: !6489)
!6793 = !DILocation(line: 95, column: 3, scope: !6791)
!6794 = !DILocation(line: 97, column: 26, scope: !6489)
!6795 = !DILocation(line: 97, column: 31, scope: !6489)
!6796 = !DILocation(line: 97, column: 37, scope: !6489)
!6797 = !DILocation(line: 97, column: 47, scope: !6489)
!6798 = !DILocation(line: 98, column: 5, scope: !6489)
!6799 = !DILocation(line: 98, column: 11, scope: !6489)
!6800 = !DILocation(line: 98, column: 21, scope: !6489)
!6801 = !DILocation(line: 98, column: 27, scope: !6489)
!6802 = !DILocation(line: 97, column: 9, scope: !6489)
!6803 = !DILocation(line: 97, column: 7, scope: !6489)
!6804 = !DILocation(line: 100, column: 26, scope: !6489)
!6805 = !DILocation(line: 100, column: 31, scope: !6489)
!6806 = !DILocation(line: 100, column: 8, scope: !6489)
!6807 = !DILocation(line: 100, column: 6, scope: !6489)
!6808 = !DILocation(line: 101, column: 6, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 101, column: 6)
!6810 = !DILocation(line: 101, column: 6, scope: !6489)
!6811 = !DILocation(line: 102, column: 3, scope: !6809)
!6812 = !DILocation(line: 104, column: 14, scope: !6489)
!6813 = !DILocation(line: 104, column: 19, scope: !6489)
!6814 = !DILocation(line: 104, column: 30, scope: !6489)
!6815 = !DILocation(line: 104, column: 36, scope: !6489)
!6816 = !DILocation(line: 104, column: 46, scope: !6489)
!6817 = !DILocation(line: 104, column: 2, scope: !6489)
!6818 = !DILocation(line: 105, column: 29, scope: !6489)
!6819 = !DILocation(line: 105, column: 2, scope: !6489)
!6820 = !DILocation(line: 105, column: 27, scope: !6489)
!6821 = !DILocation(line: 106, column: 25, scope: !6489)
!6822 = !DILocation(line: 106, column: 31, scope: !6489)
!6823 = !DILocation(line: 106, column: 41, scope: !6489)
!6824 = !DILocation(line: 106, column: 2, scope: !6489)
!6825 = !DILocation(line: 106, column: 23, scope: !6489)
!6826 = !DILocation(line: 108, column: 9, scope: !6489)
!6827 = !DILocation(line: 108, column: 2, scope: !6489)
!6828 = !DILocation(line: 109, column: 1, scope: !6489)
!6829 = !DILocation(line: 110, column: 16, scope: !6489)
!6830 = !DILocation(line: 110, column: 2, scope: !6489)
!6831 = !DILocation(line: 111, column: 8, scope: !6489)
!6832 = !DILocation(line: 111, column: 2, scope: !6489)
!6833 = !DILocation(line: 112, column: 17, scope: !6489)
!6834 = !DILocation(line: 112, column: 9, scope: !6489)
!6835 = !DILocation(line: 112, column: 2, scope: !6489)
!6836 = !DILocation(line: 113, column: 1, scope: !6489)
!6837 = distinct !DISubprogram(name: "kzalloc", scope: !336, file: !336, line: 719, type: !6838, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6840)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!366, !542, !1397}
!6840 = !{!6841, !6842}
!6841 = !DILocalVariable(name: "size", arg: 1, scope: !6837, file: !336, line: 719, type: !542)
!6842 = !DILocalVariable(name: "flags", arg: 2, scope: !6837, file: !336, line: 719, type: !1397)
!6843 = !DILocation(line: 719, column: 52, scope: !6837)
!6844 = !DILocation(line: 719, column: 64, scope: !6837)
!6845 = !DILocation(line: 721, column: 17, scope: !6837)
!6846 = !DILocation(line: 721, column: 23, scope: !6837)
!6847 = !DILocation(line: 721, column: 29, scope: !6837)
!6848 = !DILocation(line: 721, column: 9, scope: !6837)
!6849 = !DILocation(line: 721, column: 2, scope: !6837)
!6850 = distinct !DISubprogram(name: "ERR_PTR", scope: !6851, file: !6851, line: 39, type: !6852, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6854)
!6851 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6852 = !DISubroutineType(types: !6853)
!6853 = !{!366, !531}
!6854 = !{!6855}
!6855 = !DILocalVariable(name: "error", arg: 1, scope: !6850, file: !6851, line: 39, type: !531)
!6856 = !DILocation(line: 39, column: 48, scope: !6850)
!6857 = !DILocation(line: 41, column: 18, scope: !6850)
!6858 = !DILocation(line: 41, column: 9, scope: !6850)
!6859 = !DILocation(line: 41, column: 2, scope: !6850)
!6860 = !DISubprogram(name: "is_virtio_device", scope: !6504, file: !6504, line: 143, type: !6861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!915, !404}
!6863 = !DISubprogram(name: "sg_alloc_table", scope: !5018, file: !5018, line: 440, type: !6864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6864 = !DISubroutineType(types: !6865)
!6865 = !{!109, !5016, !7, !1397}
!6866 = !DISubprogram(name: "dma_map_resource", scope: !6867, file: !6867, line: 116, type: !6868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6867 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d71421f89fccf9a1ad0866e8178cd1")
!6868 = !DISubroutineType(types: !6869)
!6869 = !{!5028, !404, !3023, !542, !323, !545}
!6870 = distinct !DISubprogram(name: "dma_mapping_error", scope: !6867, file: !6867, line: 95, type: !6871, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6873)
!6871 = !DISubroutineType(types: !6872)
!6872 = !{!109, !404, !5028}
!6873 = !{!6874, !6875}
!6874 = !DILocalVariable(name: "dev", arg: 1, scope: !6870, file: !6867, line: 95, type: !404)
!6875 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !6870, file: !6867, line: 95, type: !5028)
!6876 = !DILocation(line: 95, column: 52, scope: !6870)
!6877 = !DILocation(line: 95, column: 68, scope: !6870)
!6878 = !DILocation(line: 97, column: 26, scope: !6870)
!6879 = !DILocation(line: 97, column: 31, scope: !6870)
!6880 = !DILocation(line: 97, column: 2, scope: !6870)
!6881 = !DILocation(line: 99, column: 6, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6870, file: !6867, line: 99, column: 6)
!6883 = !DILocation(line: 99, column: 6, scope: !6870)
!6884 = !DILocation(line: 100, column: 3, scope: !6882)
!6885 = !DILocation(line: 101, column: 2, scope: !6870)
!6886 = !DILocation(line: 102, column: 1, scope: !6870)
!6887 = distinct !DISubprogram(name: "sg_set_page", scope: !5018, file: !5018, line: 136, type: !6888, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6890)
!6888 = !DISubroutineType(types: !6889)
!6889 = !{null, !5021, !2633, !7, !7}
!6890 = !{!6891, !6892, !6893, !6894}
!6891 = !DILocalVariable(name: "sg", arg: 1, scope: !6887, file: !5018, line: 136, type: !5021)
!6892 = !DILocalVariable(name: "page", arg: 2, scope: !6887, file: !5018, line: 136, type: !2633)
!6893 = !DILocalVariable(name: "len", arg: 3, scope: !6887, file: !5018, line: 137, type: !7)
!6894 = !DILocalVariable(name: "offset", arg: 4, scope: !6887, file: !5018, line: 137, type: !7)
!6895 = !DILocation(line: 136, column: 52, scope: !6887)
!6896 = !DILocation(line: 136, column: 69, scope: !6887)
!6897 = !DILocation(line: 137, column: 24, scope: !6887)
!6898 = !DILocation(line: 137, column: 42, scope: !6887)
!6899 = !DILocation(line: 139, column: 17, scope: !6887)
!6900 = !DILocation(line: 139, column: 21, scope: !6887)
!6901 = !DILocation(line: 139, column: 2, scope: !6887)
!6902 = !DILocation(line: 140, column: 15, scope: !6887)
!6903 = !DILocation(line: 140, column: 2, scope: !6887)
!6904 = !DILocation(line: 140, column: 6, scope: !6887)
!6905 = !DILocation(line: 140, column: 13, scope: !6887)
!6906 = !DILocation(line: 141, column: 15, scope: !6887)
!6907 = !DILocation(line: 141, column: 2, scope: !6887)
!6908 = !DILocation(line: 141, column: 6, scope: !6887)
!6909 = !DILocation(line: 141, column: 13, scope: !6887)
!6910 = !DILocation(line: 142, column: 1, scope: !6887)
!6911 = !DISubprogram(name: "sg_free_table", scope: !5018, file: !5018, line: 436, type: !6912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6912 = !DISubroutineType(types: !6913)
!6913 = !{null, !5016}
!6914 = !DISubprogram(name: "kfree", scope: !336, file: !336, line: 227, type: !6915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6915 = !DISubroutineType(types: !6916)
!6916 = !{null, !1823}
!6917 = distinct !DISubprogram(name: "virtio_gpu_vram_unmap_dma_buf", scope: !3, file: !3, line: 115, type: !6918, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6920)
!6918 = !DISubroutineType(types: !6919)
!6919 = !{null, !404, !5016, !323}
!6920 = !{!6921, !6922, !6923}
!6921 = !DILocalVariable(name: "dev", arg: 1, scope: !6917, file: !3, line: 115, type: !404)
!6922 = !DILocalVariable(name: "sgt", arg: 2, scope: !6917, file: !3, line: 116, type: !5016)
!6923 = !DILocalVariable(name: "dir", arg: 3, scope: !6917, file: !3, line: 117, type: !323)
!6924 = !DILocation(line: 115, column: 51, scope: !6917)
!6925 = !DILocation(line: 116, column: 25, scope: !6917)
!6926 = !DILocation(line: 117, column: 32, scope: !6917)
!6927 = !DILocation(line: 119, column: 6, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6917, file: !3, line: 119, column: 6)
!6929 = !DILocation(line: 119, column: 11, scope: !6928)
!6930 = !DILocation(line: 119, column: 6, scope: !6917)
!6931 = !DILocation(line: 120, column: 22, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6928, file: !3, line: 119, column: 18)
!6933 = !DILocation(line: 120, column: 27, scope: !6932)
!6934 = !DILocation(line: 121, column: 8, scope: !6932)
!6935 = !DILocation(line: 121, column: 30, scope: !6932)
!6936 = !DILocation(line: 120, column: 3, scope: !6932)
!6937 = !DILocation(line: 123, column: 2, scope: !6932)
!6938 = !DILocation(line: 124, column: 16, scope: !6917)
!6939 = !DILocation(line: 124, column: 2, scope: !6917)
!6940 = !DILocation(line: 125, column: 8, scope: !6917)
!6941 = !DILocation(line: 125, column: 2, scope: !6917)
!6942 = !DILocation(line: 126, column: 1, scope: !6917)
!6943 = !DISubprogram(name: "dma_unmap_resource", scope: !6867, file: !6867, line: 118, type: !6944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6944 = !DISubroutineType(types: !6945)
!6945 = !{null, !404, !5028, !542, !323, !545}
!6946 = distinct !DISubprogram(name: "virtio_gpu_is_vram", scope: !3, file: !3, line: 136, type: !6947, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6949)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!915, !6458}
!6949 = !{!6950}
!6950 = !DILocalVariable(name: "bo", arg: 1, scope: !6946, file: !3, line: 136, type: !6458)
!6951 = !DILocation(line: 136, column: 51, scope: !6946)
!6952 = !DILocation(line: 138, column: 9, scope: !6946)
!6953 = !DILocation(line: 138, column: 13, scope: !6946)
!6954 = !DILocation(line: 138, column: 18, scope: !6946)
!6955 = !DILocation(line: 138, column: 23, scope: !6946)
!6956 = !DILocation(line: 138, column: 29, scope: !6946)
!6957 = !DILocation(line: 138, column: 2, scope: !6946)
!6958 = distinct !DISubprogram(name: "virtio_gpu_vram_create", scope: !3, file: !3, line: 185, type: !6959, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6983)
!6959 = !DISubroutineType(types: !6960)
!6960 = !{!109, !6497, !6961, !6982}
!6961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6962, size: 64)
!6962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object_params", file: !369, line: 61, size: 576, elements: !6963)
!6963 = !{!6964, !6965, !6966, !6967, !6968, !6969, !6970, !6971, !6972, !6973, !6974, !6975, !6976, !6977, !6978, !6979, !6980, !6981}
!6964 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6962, file: !369, line: 62, baseType: !545, size: 64)
!6965 = !DIDerivedType(tag: DW_TAG_member, name: "dumb", scope: !6962, file: !369, line: 63, baseType: !915, size: 8, offset: 64)
!6966 = !DIDerivedType(tag: DW_TAG_member, name: "virgl", scope: !6962, file: !369, line: 65, baseType: !915, size: 8, offset: 72)
!6967 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !6962, file: !369, line: 66, baseType: !915, size: 8, offset: 80)
!6968 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6962, file: !369, line: 69, baseType: !2057, size: 32, offset: 96)
!6969 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6962, file: !369, line: 70, baseType: !2057, size: 32, offset: 128)
!6970 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6962, file: !369, line: 71, baseType: !2057, size: 32, offset: 160)
!6971 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !6962, file: !369, line: 72, baseType: !2057, size: 32, offset: 192)
!6972 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !6962, file: !369, line: 73, baseType: !2057, size: 32, offset: 224)
!6973 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6962, file: !369, line: 74, baseType: !2057, size: 32, offset: 256)
!6974 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !6962, file: !369, line: 75, baseType: !2057, size: 32, offset: 288)
!6975 = !DIDerivedType(tag: DW_TAG_member, name: "last_level", scope: !6962, file: !369, line: 76, baseType: !2057, size: 32, offset: 320)
!6976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !6962, file: !369, line: 77, baseType: !2057, size: 32, offset: 352)
!6977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6962, file: !369, line: 78, baseType: !2057, size: 32, offset: 384)
!6978 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !6962, file: !369, line: 81, baseType: !2057, size: 32, offset: 416)
!6979 = !DIDerivedType(tag: DW_TAG_member, name: "blob_mem", scope: !6962, file: !369, line: 82, baseType: !2057, size: 32, offset: 448)
!6980 = !DIDerivedType(tag: DW_TAG_member, name: "blob_flags", scope: !6962, file: !369, line: 83, baseType: !2057, size: 32, offset: 480)
!6981 = !DIDerivedType(tag: DW_TAG_member, name: "blob_id", scope: !6962, file: !369, line: 84, baseType: !5052, size: 64, offset: 512)
!6982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6458, size: 64)
!6983 = !{!6984, !6985, !6986, !6987, !6988, !6989}
!6984 = !DILocalVariable(name: "vgdev", arg: 1, scope: !6958, file: !3, line: 185, type: !6497)
!6985 = !DILocalVariable(name: "params", arg: 2, scope: !6958, file: !3, line: 186, type: !6961)
!6986 = !DILocalVariable(name: "bo_ptr", arg: 3, scope: !6958, file: !3, line: 187, type: !6982)
!6987 = !DILocalVariable(name: "obj", scope: !6958, file: !3, line: 189, type: !4994)
!6988 = !DILocalVariable(name: "vram", scope: !6958, file: !3, line: 190, type: !367)
!6989 = !DILocalVariable(name: "ret", scope: !6958, file: !3, line: 191, type: !109)
!6990 = !DILocation(line: 185, column: 54, scope: !6958)
!6991 = !DILocation(line: 186, column: 40, scope: !6958)
!6992 = !DILocation(line: 187, column: 34, scope: !6958)
!6993 = !DILocation(line: 189, column: 2, scope: !6958)
!6994 = !DILocation(line: 189, column: 25, scope: !6958)
!6995 = !DILocation(line: 190, column: 2, scope: !6958)
!6996 = !DILocation(line: 190, column: 33, scope: !6958)
!6997 = !DILocation(line: 191, column: 2, scope: !6958)
!6998 = !DILocation(line: 191, column: 6, scope: !6958)
!6999 = !DILocation(line: 193, column: 9, scope: !6958)
!7000 = !DILocation(line: 193, column: 7, scope: !6958)
!7001 = !DILocation(line: 194, column: 7, scope: !7002)
!7002 = distinct !DILexicalBlock(scope: !6958, file: !3, line: 194, column: 6)
!7003 = !DILocation(line: 194, column: 6, scope: !6958)
!7004 = !DILocation(line: 195, column: 3, scope: !7002)
!7005 = !DILocation(line: 197, column: 9, scope: !6958)
!7006 = !DILocation(line: 197, column: 15, scope: !6958)
!7007 = !DILocation(line: 197, column: 20, scope: !6958)
!7008 = !DILocation(line: 197, column: 25, scope: !6958)
!7009 = !DILocation(line: 197, column: 6, scope: !6958)
!7010 = !DILocation(line: 198, column: 2, scope: !6958)
!7011 = !DILocation(line: 198, column: 7, scope: !6958)
!7012 = !DILocation(line: 198, column: 13, scope: !6958)
!7013 = !DILocation(line: 200, column: 17, scope: !6958)
!7014 = !DILocation(line: 200, column: 2, scope: !6958)
!7015 = !DILocation(line: 200, column: 10, scope: !6958)
!7016 = !DILocation(line: 200, column: 15, scope: !6958)
!7017 = !DILocation(line: 201, column: 30, scope: !6958)
!7018 = !DILocation(line: 201, column: 37, scope: !6958)
!7019 = !DILocation(line: 201, column: 43, scope: !6958)
!7020 = !DILocation(line: 201, column: 48, scope: !6958)
!7021 = !DILocation(line: 201, column: 56, scope: !6958)
!7022 = !DILocation(line: 201, column: 2, scope: !6958)
!7023 = !DILocation(line: 204, column: 35, scope: !6958)
!7024 = !DILocation(line: 204, column: 8, scope: !6958)
!7025 = !DILocation(line: 204, column: 6, scope: !6958)
!7026 = !DILocation(line: 205, column: 6, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !6958, file: !3, line: 205, column: 6)
!7028 = !DILocation(line: 205, column: 6, scope: !6958)
!7029 = !DILocation(line: 206, column: 9, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !7027, file: !3, line: 205, column: 11)
!7031 = !DILocation(line: 206, column: 3, scope: !7030)
!7032 = !DILocation(line: 207, column: 10, scope: !7030)
!7033 = !DILocation(line: 207, column: 3, scope: !7030)
!7034 = !DILocation(line: 210, column: 35, scope: !6958)
!7035 = !DILocation(line: 210, column: 43, scope: !6958)
!7036 = !DILocation(line: 210, column: 49, scope: !6958)
!7037 = !DILocation(line: 210, column: 54, scope: !6958)
!7038 = !DILocation(line: 210, column: 8, scope: !6958)
!7039 = !DILocation(line: 210, column: 6, scope: !6958)
!7040 = !DILocation(line: 211, column: 6, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !6958, file: !3, line: 211, column: 6)
!7042 = !DILocation(line: 211, column: 6, scope: !6958)
!7043 = !DILocation(line: 212, column: 9, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7041, file: !3, line: 211, column: 11)
!7045 = !DILocation(line: 212, column: 3, scope: !7044)
!7046 = !DILocation(line: 213, column: 10, scope: !7044)
!7047 = !DILocation(line: 213, column: 3, scope: !7044)
!7048 = !DILocation(line: 216, column: 38, scope: !6958)
!7049 = !DILocation(line: 216, column: 46, scope: !6958)
!7050 = !DILocation(line: 216, column: 52, scope: !6958)
!7051 = !DILocation(line: 216, column: 58, scope: !6958)
!7052 = !DILocation(line: 216, column: 2, scope: !6958)
!7053 = !DILocation(line: 218, column: 6, scope: !7054)
!7054 = distinct !DILexicalBlock(scope: !6958, file: !3, line: 218, column: 6)
!7055 = !DILocation(line: 218, column: 14, scope: !7054)
!7056 = !DILocation(line: 218, column: 25, scope: !7054)
!7057 = !DILocation(line: 218, column: 6, scope: !6958)
!7058 = !DILocation(line: 219, column: 30, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !7054, file: !3, line: 218, column: 59)
!7060 = !DILocation(line: 219, column: 36, scope: !7059)
!7061 = !DILocation(line: 219, column: 9, scope: !7059)
!7062 = !DILocation(line: 219, column: 7, scope: !7059)
!7063 = !DILocation(line: 220, column: 7, scope: !7064)
!7064 = distinct !DILexicalBlock(scope: !7059, file: !3, line: 220, column: 7)
!7065 = !DILocation(line: 220, column: 7, scope: !7059)
!7066 = !DILocation(line: 221, column: 25, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !7064, file: !3, line: 220, column: 12)
!7068 = !DILocation(line: 221, column: 4, scope: !7067)
!7069 = !DILocation(line: 222, column: 11, scope: !7067)
!7070 = !DILocation(line: 222, column: 4, scope: !7067)
!7071 = !DILocation(line: 224, column: 2, scope: !7059)
!7072 = !DILocation(line: 226, column: 13, scope: !6958)
!7073 = !DILocation(line: 226, column: 19, scope: !6958)
!7074 = !DILocation(line: 226, column: 3, scope: !6958)
!7075 = !DILocation(line: 226, column: 10, scope: !6958)
!7076 = !DILocation(line: 227, column: 2, scope: !6958)
!7077 = !DILocation(line: 228, column: 1, scope: !6958)
!7078 = !DISubprogram(name: "drm_gem_private_object_init", scope: !319, file: !319, line: 466, type: !7079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7079 = !DISubroutineType(types: !7080)
!7080 = !{null, !398, !4994, !542}
!7081 = !DISubprogram(name: "drm_gem_create_mmap_offset", scope: !319, file: !319, line: 514, type: !6400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7082 = !DISubprogram(name: "virtio_gpu_resource_id_get", scope: !369, file: !369, line: 466, type: !7083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7083 = !DISubroutineType(types: !7084)
!7084 = !{!109, !6497, !5003}
!7085 = !DISubprogram(name: "virtio_gpu_cmd_resource_create_blob", scope: !369, file: !369, line: 422, type: !7086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7086 = !DISubroutineType(types: !7087)
!7087 = !{null, !6497, !6458, !6961, !7088, !2057}
!7088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7089, size: 64)
!7089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_mem_entry", file: !6641, line: 215, size: 128, elements: !7090)
!7090 = !{!7091, !7092, !7093}
!7091 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !7089, file: !6641, line: 216, baseType: !6662, size: 64)
!7092 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !7089, file: !6641, line: 217, baseType: !6647, size: 32, offset: 64)
!7093 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !7089, file: !6641, line: 218, baseType: !6647, size: 32, offset: 96)
!7094 = distinct !DISubprogram(name: "virtio_gpu_vram_map", scope: !3, file: !3, line: 141, type: !7095, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7097)
!7095 = !DISubroutineType(types: !7096)
!7096 = !{!109, !6458}
!7097 = !{!7098, !7099, !7100, !7101, !7111, !7112, !7113, !7115}
!7098 = !DILocalVariable(name: "bo", arg: 1, scope: !7094, file: !3, line: 141, type: !6458)
!7099 = !DILocalVariable(name: "ret", scope: !7094, file: !3, line: 143, type: !109)
!7100 = !DILocalVariable(name: "offset", scope: !7094, file: !3, line: 144, type: !5052)
!7101 = !DILocalVariable(name: "objs", scope: !7094, file: !3, line: 145, type: !7102)
!7102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7103, size: 64)
!7103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_gpu_object_array", file: !369, line: 118, size: 384, elements: !7104)
!7104 = !{!7105, !7106, !7107, !7108, !7109}
!7105 = !DIDerivedType(tag: DW_TAG_member, name: "ticket", scope: !7103, file: !369, line: 119, baseType: !5154, size: 192)
!7106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7103, file: !369, line: 120, baseType: !416, size: 128, offset: 192)
!7107 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !7103, file: !369, line: 121, baseType: !644, size: 32, offset: 320)
!7108 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !7103, file: !369, line: 121, baseType: !644, size: 32, offset: 352)
!7109 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !7103, file: !369, line: 122, baseType: !7110, offset: 384)
!7110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4994, elements: !1864)
!7111 = !DILocalVariable(name: "vgdev", scope: !7094, file: !3, line: 146, type: !6497)
!7112 = !DILocalVariable(name: "vram", scope: !7094, file: !3, line: 147, type: !367)
!7113 = !DILocalVariable(name: "__mptr", scope: !7114, file: !3, line: 147, type: !366)
!7114 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 147, column: 40)
!7115 = !DILabel(scope: !7094, name: "err_remove_node", file: !3, line: 178)
!7116 = !DILocation(line: 141, column: 58, scope: !7094)
!7117 = !DILocation(line: 143, column: 2, scope: !7094)
!7118 = !DILocation(line: 143, column: 6, scope: !7094)
!7119 = !DILocation(line: 144, column: 2, scope: !7094)
!7120 = !DILocation(line: 144, column: 11, scope: !7094)
!7121 = !DILocation(line: 145, column: 2, scope: !7094)
!7122 = !DILocation(line: 145, column: 34, scope: !7094)
!7123 = !DILocation(line: 146, column: 2, scope: !7094)
!7124 = !DILocation(line: 146, column: 28, scope: !7094)
!7125 = !DILocation(line: 146, column: 36, scope: !7094)
!7126 = !DILocation(line: 146, column: 40, scope: !7094)
!7127 = !DILocation(line: 146, column: 45, scope: !7094)
!7128 = !DILocation(line: 146, column: 50, scope: !7094)
!7129 = !DILocation(line: 146, column: 55, scope: !7094)
!7130 = !DILocation(line: 147, column: 2, scope: !7094)
!7131 = !DILocation(line: 147, column: 33, scope: !7094)
!7132 = !DILocation(line: 147, column: 40, scope: !7114)
!7133 = !DILocation(line: 147, column: 40, scope: !7094)
!7134 = !DILocation(line: 149, column: 7, scope: !7135)
!7135 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 149, column: 6)
!7136 = !DILocation(line: 149, column: 14, scope: !7135)
!7137 = !DILocation(line: 149, column: 6, scope: !7094)
!7138 = !DILocation(line: 150, column: 3, scope: !7135)
!7139 = !DILocation(line: 152, column: 13, scope: !7094)
!7140 = !DILocation(line: 152, column: 20, scope: !7094)
!7141 = !DILocation(line: 152, column: 2, scope: !7094)
!7142 = !DILocation(line: 153, column: 28, scope: !7094)
!7143 = !DILocation(line: 153, column: 35, scope: !7094)
!7144 = !DILocation(line: 153, column: 53, scope: !7094)
!7145 = !DILocation(line: 153, column: 59, scope: !7094)
!7146 = !DILocation(line: 154, column: 6, scope: !7094)
!7147 = !DILocation(line: 154, column: 10, scope: !7094)
!7148 = !DILocation(line: 154, column: 15, scope: !7094)
!7149 = !DILocation(line: 154, column: 20, scope: !7094)
!7150 = !DILocation(line: 153, column: 8, scope: !7094)
!7151 = !DILocation(line: 153, column: 6, scope: !7094)
!7152 = !DILocation(line: 155, column: 15, scope: !7094)
!7153 = !DILocation(line: 155, column: 22, scope: !7094)
!7154 = !DILocation(line: 155, column: 2, scope: !7094)
!7155 = !DILocation(line: 157, column: 6, scope: !7156)
!7156 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 157, column: 6)
!7157 = !DILocation(line: 157, column: 6, scope: !7094)
!7158 = !DILocation(line: 158, column: 10, scope: !7156)
!7159 = !DILocation(line: 158, column: 3, scope: !7156)
!7160 = !DILocation(line: 160, column: 9, scope: !7094)
!7161 = !DILocation(line: 160, column: 7, scope: !7094)
!7162 = !DILocation(line: 161, column: 7, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 161, column: 6)
!7164 = !DILocation(line: 161, column: 6, scope: !7094)
!7165 = !DILocation(line: 162, column: 7, scope: !7166)
!7166 = distinct !DILexicalBlock(scope: !7163, file: !3, line: 161, column: 13)
!7167 = !DILocation(line: 163, column: 3, scope: !7166)
!7168 = !DILocation(line: 166, column: 27, scope: !7094)
!7169 = !DILocation(line: 166, column: 34, scope: !7094)
!7170 = !DILocation(line: 166, column: 38, scope: !7094)
!7171 = !DILocation(line: 166, column: 43, scope: !7094)
!7172 = !DILocation(line: 166, column: 2, scope: !7094)
!7173 = !DILocation(line: 168, column: 11, scope: !7094)
!7174 = !DILocation(line: 168, column: 17, scope: !7094)
!7175 = !DILocation(line: 168, column: 27, scope: !7094)
!7176 = !DILocation(line: 168, column: 35, scope: !7094)
!7177 = !DILocation(line: 168, column: 42, scope: !7094)
!7178 = !DILocation(line: 168, column: 62, scope: !7094)
!7179 = !DILocation(line: 168, column: 33, scope: !7094)
!7180 = !DILocation(line: 168, column: 9, scope: !7094)
!7181 = !DILocation(line: 170, column: 27, scope: !7094)
!7182 = !DILocation(line: 170, column: 34, scope: !7094)
!7183 = !DILocation(line: 170, column: 40, scope: !7094)
!7184 = !DILocation(line: 170, column: 8, scope: !7094)
!7185 = !DILocation(line: 170, column: 6, scope: !7094)
!7186 = !DILocation(line: 171, column: 6, scope: !7187)
!7187 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 171, column: 6)
!7188 = !DILocation(line: 171, column: 6, scope: !7094)
!7189 = !DILocation(line: 172, column: 29, scope: !7190)
!7190 = distinct !DILexicalBlock(scope: !7187, file: !3, line: 171, column: 11)
!7191 = !DILocation(line: 172, column: 3, scope: !7190)
!7192 = !DILocation(line: 173, column: 3, scope: !7190)
!7193 = !DILocation(line: 176, column: 2, scope: !7094)
!7194 = !DILocation(line: 178, column: 1, scope: !7094)
!7195 = !DILocation(line: 179, column: 13, scope: !7094)
!7196 = !DILocation(line: 179, column: 20, scope: !7094)
!7197 = !DILocation(line: 179, column: 2, scope: !7094)
!7198 = !DILocation(line: 180, column: 22, scope: !7094)
!7199 = !DILocation(line: 180, column: 28, scope: !7094)
!7200 = !DILocation(line: 180, column: 2, scope: !7094)
!7201 = !DILocation(line: 181, column: 15, scope: !7094)
!7202 = !DILocation(line: 181, column: 22, scope: !7094)
!7203 = !DILocation(line: 181, column: 2, scope: !7094)
!7204 = !DILocation(line: 182, column: 9, scope: !7094)
!7205 = !DILocation(line: 182, column: 2, scope: !7094)
!7206 = !DILocation(line: 183, column: 1, scope: !7094)
!7207 = distinct !DISubprogram(name: "virtio_gpu_vram_free", scope: !3, file: !3, line: 6, type: !6378, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7208)
!7208 = !{!7209, !7210, !7211, !7213, !7214, !7215, !7217}
!7209 = !DILocalVariable(name: "obj", arg: 1, scope: !7207, file: !3, line: 6, type: !4994)
!7210 = !DILocalVariable(name: "bo", scope: !7207, file: !3, line: 8, type: !6458)
!7211 = !DILocalVariable(name: "__mptr", scope: !7212, file: !3, line: 8, type: !366)
!7212 = distinct !DILexicalBlock(scope: !7207, file: !3, line: 8, column: 33)
!7213 = !DILocalVariable(name: "vgdev", scope: !7207, file: !3, line: 9, type: !6497)
!7214 = !DILocalVariable(name: "vram", scope: !7207, file: !3, line: 10, type: !367)
!7215 = !DILocalVariable(name: "__mptr", scope: !7216, file: !3, line: 10, type: !366)
!7216 = distinct !DILexicalBlock(scope: !7207, file: !3, line: 10, column: 40)
!7217 = !DILocalVariable(name: "unmap", scope: !7207, file: !3, line: 11, type: !915)
!7218 = !DILocation(line: 6, column: 57, scope: !7207)
!7219 = !DILocation(line: 8, column: 2, scope: !7207)
!7220 = !DILocation(line: 8, column: 28, scope: !7207)
!7221 = !DILocation(line: 8, column: 33, scope: !7212)
!7222 = !DILocation(line: 8, column: 33, scope: !7207)
!7223 = !DILocation(line: 9, column: 2, scope: !7207)
!7224 = !DILocation(line: 9, column: 28, scope: !7207)
!7225 = !DILocation(line: 9, column: 36, scope: !7207)
!7226 = !DILocation(line: 9, column: 41, scope: !7207)
!7227 = !DILocation(line: 9, column: 46, scope: !7207)
!7228 = !DILocation(line: 10, column: 2, scope: !7207)
!7229 = !DILocation(line: 10, column: 33, scope: !7207)
!7230 = !DILocation(line: 10, column: 40, scope: !7216)
!7231 = !DILocation(line: 10, column: 40, scope: !7207)
!7232 = !DILocation(line: 11, column: 2, scope: !7207)
!7233 = !DILocation(line: 11, column: 7, scope: !7207)
!7234 = !DILocation(line: 13, column: 6, scope: !7235)
!7235 = distinct !DILexicalBlock(scope: !7207, file: !3, line: 13, column: 6)
!7236 = !DILocation(line: 13, column: 10, scope: !7235)
!7237 = !DILocation(line: 13, column: 6, scope: !7207)
!7238 = !DILocation(line: 14, column: 14, scope: !7239)
!7239 = distinct !DILexicalBlock(scope: !7235, file: !3, line: 13, column: 19)
!7240 = !DILocation(line: 14, column: 21, scope: !7239)
!7241 = !DILocation(line: 14, column: 3, scope: !7239)
!7242 = !DILocation(line: 15, column: 34, scope: !7239)
!7243 = !DILocation(line: 15, column: 40, scope: !7239)
!7244 = !DILocation(line: 15, column: 11, scope: !7239)
!7245 = !DILocation(line: 15, column: 9, scope: !7239)
!7246 = !DILocation(line: 16, column: 16, scope: !7239)
!7247 = !DILocation(line: 16, column: 23, scope: !7239)
!7248 = !DILocation(line: 16, column: 3, scope: !7239)
!7249 = !DILocation(line: 18, column: 7, scope: !7250)
!7250 = distinct !DILexicalBlock(scope: !7239, file: !3, line: 18, column: 7)
!7251 = !DILocation(line: 18, column: 7, scope: !7239)
!7252 = !DILocation(line: 19, column: 25, scope: !7250)
!7253 = !DILocation(line: 19, column: 32, scope: !7250)
!7254 = !DILocation(line: 19, column: 4, scope: !7250)
!7255 = !DILocation(line: 21, column: 33, scope: !7239)
!7256 = !DILocation(line: 21, column: 40, scope: !7239)
!7257 = !DILocation(line: 21, column: 3, scope: !7239)
!7258 = !DILocation(line: 22, column: 21, scope: !7239)
!7259 = !DILocation(line: 22, column: 3, scope: !7239)
!7260 = !DILocation(line: 23, column: 3, scope: !7239)
!7261 = !DILocation(line: 25, column: 1, scope: !7207)
!7262 = distinct !DISubprogram(name: "kmalloc", scope: !336, file: !336, line: 591, type: !6838, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7263)
!7263 = !{!7264, !7265, !7266}
!7264 = !DILocalVariable(name: "size", arg: 1, scope: !7262, file: !336, line: 591, type: !542)
!7265 = !DILocalVariable(name: "flags", arg: 2, scope: !7262, file: !336, line: 591, type: !1397)
!7266 = !DILocalVariable(name: "index", scope: !7267, file: !336, line: 594, type: !7)
!7267 = distinct !DILexicalBlock(scope: !7268, file: !336, line: 593, column: 42)
!7268 = distinct !DILexicalBlock(scope: !7262, file: !336, line: 593, column: 6)
!7269 = !DILocation(line: 591, column: 61, scope: !7262)
!7270 = !DILocation(line: 591, column: 73, scope: !7262)
!7271 = !DILocation(line: 593, column: 27, scope: !7268)
!7272 = !DILocation(line: 593, column: 6, scope: !7268)
!7273 = !DILocation(line: 593, column: 33, scope: !7268)
!7274 = !DILocation(line: 593, column: 36, scope: !7268)
!7275 = !DILocation(line: 593, column: 6, scope: !7262)
!7276 = !DILocation(line: 594, column: 3, scope: !7267)
!7277 = !DILocation(line: 594, column: 16, scope: !7267)
!7278 = !DILocation(line: 596, column: 7, scope: !7279)
!7279 = distinct !DILexicalBlock(scope: !7267, file: !336, line: 596, column: 7)
!7280 = !DILocation(line: 596, column: 12, scope: !7279)
!7281 = !DILocation(line: 596, column: 7, scope: !7267)
!7282 = !DILocation(line: 597, column: 25, scope: !7279)
!7283 = !DILocation(line: 597, column: 31, scope: !7279)
!7284 = !DILocation(line: 597, column: 11, scope: !7279)
!7285 = !DILocation(line: 597, column: 4, scope: !7279)
!7286 = !DILocation(line: 599, column: 11, scope: !7267)
!7287 = !DILocation(line: 599, column: 9, scope: !7267)
!7288 = !DILocation(line: 601, column: 33, scope: !7267)
!7289 = !DILocation(line: 601, column: 40, scope: !7267)
!7290 = !DILocation(line: 601, column: 20, scope: !7267)
!7291 = !DILocation(line: 601, column: 5, scope: !7267)
!7292 = !DILocation(line: 601, column: 51, scope: !7267)
!7293 = !DILocation(line: 602, column: 5, scope: !7267)
!7294 = !DILocation(line: 602, column: 12, scope: !7267)
!7295 = !DILocation(line: 600, column: 10, scope: !7267)
!7296 = !DILocation(line: 600, column: 3, scope: !7267)
!7297 = !DILocation(line: 603, column: 2, scope: !7268)
!7298 = !DILocation(line: 604, column: 19, scope: !7262)
!7299 = !DILocation(line: 604, column: 25, scope: !7262)
!7300 = !DILocation(line: 604, column: 9, scope: !7262)
!7301 = !DILocation(line: 604, column: 2, scope: !7262)
!7302 = !DILocation(line: 605, column: 1, scope: !7262)
!7303 = !DISubprogram(name: "kmalloc_large", scope: !336, file: !336, line: 531, type: !6838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7304 = distinct !DISubprogram(name: "__kmalloc_index", scope: !336, file: !336, line: 444, type: !7305, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7307)
!7305 = !DISubroutineType(types: !7306)
!7306 = !{!7, !542, !915}
!7307 = !{!7308, !7309}
!7308 = !DILocalVariable(name: "size", arg: 1, scope: !7304, file: !336, line: 444, type: !542)
!7309 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7304, file: !336, line: 445, type: !915)
!7310 = !DILocation(line: 444, column: 60, scope: !7304)
!7311 = !DILocation(line: 445, column: 16, scope: !7304)
!7312 = !DILocation(line: 447, column: 7, scope: !7313)
!7313 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 447, column: 6)
!7314 = !DILocation(line: 447, column: 6, scope: !7304)
!7315 = !DILocation(line: 448, column: 3, scope: !7313)
!7316 = !DILocation(line: 450, column: 6, scope: !7317)
!7317 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 450, column: 6)
!7318 = !DILocation(line: 450, column: 11, scope: !7317)
!7319 = !DILocation(line: 450, column: 6, scope: !7304)
!7320 = !DILocation(line: 451, column: 3, scope: !7317)
!7321 = !DILocation(line: 453, column: 32, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 453, column: 6)
!7323 = !DILocation(line: 453, column: 37, scope: !7322)
!7324 = !DILocation(line: 453, column: 42, scope: !7322)
!7325 = !DILocation(line: 453, column: 45, scope: !7322)
!7326 = !DILocation(line: 453, column: 50, scope: !7322)
!7327 = !DILocation(line: 453, column: 6, scope: !7304)
!7328 = !DILocation(line: 454, column: 3, scope: !7322)
!7329 = !DILocation(line: 455, column: 32, scope: !7330)
!7330 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 455, column: 6)
!7331 = !DILocation(line: 455, column: 37, scope: !7330)
!7332 = !DILocation(line: 455, column: 43, scope: !7330)
!7333 = !DILocation(line: 455, column: 46, scope: !7330)
!7334 = !DILocation(line: 455, column: 51, scope: !7330)
!7335 = !DILocation(line: 455, column: 6, scope: !7304)
!7336 = !DILocation(line: 456, column: 3, scope: !7330)
!7337 = !DILocation(line: 457, column: 6, scope: !7338)
!7338 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 457, column: 6)
!7339 = !DILocation(line: 457, column: 11, scope: !7338)
!7340 = !DILocation(line: 457, column: 6, scope: !7304)
!7341 = !DILocation(line: 457, column: 26, scope: !7338)
!7342 = !DILocation(line: 458, column: 6, scope: !7343)
!7343 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 458, column: 6)
!7344 = !DILocation(line: 458, column: 11, scope: !7343)
!7345 = !DILocation(line: 458, column: 6, scope: !7304)
!7346 = !DILocation(line: 458, column: 26, scope: !7343)
!7347 = !DILocation(line: 459, column: 6, scope: !7348)
!7348 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 459, column: 6)
!7349 = !DILocation(line: 459, column: 11, scope: !7348)
!7350 = !DILocation(line: 459, column: 6, scope: !7304)
!7351 = !DILocation(line: 459, column: 26, scope: !7348)
!7352 = !DILocation(line: 460, column: 6, scope: !7353)
!7353 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 460, column: 6)
!7354 = !DILocation(line: 460, column: 11, scope: !7353)
!7355 = !DILocation(line: 460, column: 6, scope: !7304)
!7356 = !DILocation(line: 460, column: 26, scope: !7353)
!7357 = !DILocation(line: 461, column: 6, scope: !7358)
!7358 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 461, column: 6)
!7359 = !DILocation(line: 461, column: 11, scope: !7358)
!7360 = !DILocation(line: 461, column: 6, scope: !7304)
!7361 = !DILocation(line: 461, column: 26, scope: !7358)
!7362 = !DILocation(line: 462, column: 6, scope: !7363)
!7363 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 462, column: 6)
!7364 = !DILocation(line: 462, column: 11, scope: !7363)
!7365 = !DILocation(line: 462, column: 6, scope: !7304)
!7366 = !DILocation(line: 462, column: 26, scope: !7363)
!7367 = !DILocation(line: 463, column: 6, scope: !7368)
!7368 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 463, column: 6)
!7369 = !DILocation(line: 463, column: 11, scope: !7368)
!7370 = !DILocation(line: 463, column: 6, scope: !7304)
!7371 = !DILocation(line: 463, column: 26, scope: !7368)
!7372 = !DILocation(line: 464, column: 6, scope: !7373)
!7373 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 464, column: 6)
!7374 = !DILocation(line: 464, column: 11, scope: !7373)
!7375 = !DILocation(line: 464, column: 6, scope: !7304)
!7376 = !DILocation(line: 464, column: 26, scope: !7373)
!7377 = !DILocation(line: 465, column: 6, scope: !7378)
!7378 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 465, column: 6)
!7379 = !DILocation(line: 465, column: 11, scope: !7378)
!7380 = !DILocation(line: 465, column: 6, scope: !7304)
!7381 = !DILocation(line: 465, column: 26, scope: !7378)
!7382 = !DILocation(line: 466, column: 6, scope: !7383)
!7383 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 466, column: 6)
!7384 = !DILocation(line: 466, column: 11, scope: !7383)
!7385 = !DILocation(line: 466, column: 6, scope: !7304)
!7386 = !DILocation(line: 466, column: 26, scope: !7383)
!7387 = !DILocation(line: 467, column: 6, scope: !7388)
!7388 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 467, column: 6)
!7389 = !DILocation(line: 467, column: 11, scope: !7388)
!7390 = !DILocation(line: 467, column: 6, scope: !7304)
!7391 = !DILocation(line: 467, column: 26, scope: !7388)
!7392 = !DILocation(line: 468, column: 6, scope: !7393)
!7393 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 468, column: 6)
!7394 = !DILocation(line: 468, column: 11, scope: !7393)
!7395 = !DILocation(line: 468, column: 6, scope: !7304)
!7396 = !DILocation(line: 468, column: 26, scope: !7393)
!7397 = !DILocation(line: 469, column: 6, scope: !7398)
!7398 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 469, column: 6)
!7399 = !DILocation(line: 469, column: 11, scope: !7398)
!7400 = !DILocation(line: 469, column: 6, scope: !7304)
!7401 = !DILocation(line: 469, column: 26, scope: !7398)
!7402 = !DILocation(line: 470, column: 6, scope: !7403)
!7403 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 470, column: 6)
!7404 = !DILocation(line: 470, column: 11, scope: !7403)
!7405 = !DILocation(line: 470, column: 6, scope: !7304)
!7406 = !DILocation(line: 470, column: 26, scope: !7403)
!7407 = !DILocation(line: 471, column: 6, scope: !7408)
!7408 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 471, column: 6)
!7409 = !DILocation(line: 471, column: 11, scope: !7408)
!7410 = !DILocation(line: 471, column: 6, scope: !7304)
!7411 = !DILocation(line: 471, column: 26, scope: !7408)
!7412 = !DILocation(line: 472, column: 6, scope: !7413)
!7413 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 472, column: 6)
!7414 = !DILocation(line: 472, column: 11, scope: !7413)
!7415 = !DILocation(line: 472, column: 6, scope: !7304)
!7416 = !DILocation(line: 472, column: 26, scope: !7413)
!7417 = !DILocation(line: 473, column: 6, scope: !7418)
!7418 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 473, column: 6)
!7419 = !DILocation(line: 473, column: 11, scope: !7418)
!7420 = !DILocation(line: 473, column: 6, scope: !7304)
!7421 = !DILocation(line: 473, column: 26, scope: !7418)
!7422 = !DILocation(line: 474, column: 6, scope: !7423)
!7423 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 474, column: 6)
!7424 = !DILocation(line: 474, column: 11, scope: !7423)
!7425 = !DILocation(line: 474, column: 6, scope: !7304)
!7426 = !DILocation(line: 474, column: 27, scope: !7423)
!7427 = !DILocation(line: 475, column: 6, scope: !7428)
!7428 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 475, column: 6)
!7429 = !DILocation(line: 475, column: 11, scope: !7428)
!7430 = !DILocation(line: 475, column: 6, scope: !7304)
!7431 = !DILocation(line: 475, column: 32, scope: !7428)
!7432 = !DILocation(line: 477, column: 50, scope: !7433)
!7433 = distinct !DILexicalBlock(scope: !7304, file: !336, line: 477, column: 6)
!7434 = !DILocation(line: 477, column: 6, scope: !7304)
!7435 = !DILocation(line: 478, column: 3, scope: !7433)
!7436 = !DILocation(line: 478, column: 3, scope: !7437)
!7437 = distinct !DILexicalBlock(scope: !7438, file: !336, line: 478, column: 3)
!7438 = distinct !DILexicalBlock(scope: !7433, file: !336, line: 478, column: 3)
!7439 = !{i32 -2142284122}
!7440 = !DILocation(line: 478, column: 3, scope: !7438)
!7441 = !DILocation(line: 480, column: 3, scope: !7433)
!7442 = !DILocation(line: 480, column: 3, scope: !7443)
!7443 = distinct !DILexicalBlock(scope: !7433, file: !336, line: 480, column: 3)
!7444 = !DILocation(line: 480, column: 3, scope: !7445)
!7445 = distinct !DILexicalBlock(scope: !7443, file: !336, line: 480, column: 3)
!7446 = !DILocation(line: 480, column: 3, scope: !7447)
!7447 = distinct !DILexicalBlock(scope: !7443, file: !336, line: 480, column: 3)
!7448 = !{i64 2152683377, i64 2152683406, i64 2152683452, i64 2152683510, i64 2152683564, i64 2152683618, i64 2152683673, i64 2152683704}
!7449 = !DILocation(line: 483, column: 2, scope: !7304)
!7450 = !DILocation(line: 484, column: 1, scope: !7304)
!7451 = !DISubprogram(name: "kmalloc_trace", scope: !336, file: !336, line: 525, type: !7452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7452 = !DISubroutineType(types: !7453)
!7453 = !{!366, !3263, !1397, !542}
!7454 = distinct !DISubprogram(name: "kmalloc_type", scope: !336, file: !336, line: 401, type: !7455, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7457)
!7455 = !DISubroutineType(types: !7456)
!7456 = !{!335, !1397, !545}
!7457 = !{!7458, !7459}
!7458 = !DILocalVariable(name: "flags", arg: 1, scope: !7454, file: !336, line: 401, type: !1397)
!7459 = !DILocalVariable(name: "caller", arg: 2, scope: !7454, file: !336, line: 401, type: !545)
!7460 = !DILocation(line: 401, column: 67, scope: !7454)
!7461 = !DILocation(line: 401, column: 88, scope: !7454)
!7462 = !DILocation(line: 407, column: 6, scope: !7463)
!7463 = distinct !DILexicalBlock(scope: !7454, file: !336, line: 407, column: 6)
!7464 = !DILocation(line: 407, column: 6, scope: !7454)
!7465 = !DILocation(line: 413, column: 3, scope: !7463)
!7466 = !DILocation(line: 423, column: 38, scope: !7467)
!7467 = distinct !DILexicalBlock(scope: !7454, file: !336, line: 423, column: 6)
!7468 = !DILocation(line: 423, column: 44, scope: !7467)
!7469 = !DILocation(line: 423, column: 6, scope: !7454)
!7470 = !DILocation(line: 424, column: 3, scope: !7467)
!7471 = !DILocation(line: 426, column: 3, scope: !7472)
!7472 = distinct !DILexicalBlock(scope: !7454, file: !336, line: 425, column: 6)
!7473 = !DILocation(line: 429, column: 1, scope: !7454)
!7474 = !DISubprogram(name: "__kmalloc", scope: !336, file: !336, line: 488, type: !6838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7475 = !DISubprogram(name: "__compiletime_assert_206", scope: !336, file: !336, line: 478, type: !1200, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7476 = distinct !DISubprogram(name: "debug_dma_mapping_error", scope: !6867, file: !6867, line: 84, type: !7477, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7479)
!7477 = !DISubroutineType(types: !7478)
!7478 = !{null, !404, !5028}
!7479 = !{!7480, !7481}
!7480 = !DILocalVariable(name: "dev", arg: 1, scope: !7476, file: !6867, line: 84, type: !404)
!7481 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !7476, file: !6867, line: 85, type: !5028)
!7482 = !DILocation(line: 84, column: 59, scope: !7476)
!7483 = !DILocation(line: 85, column: 14, scope: !7476)
!7484 = !DILocation(line: 87, column: 1, scope: !7476)
!7485 = distinct !DISubprogram(name: "sg_assign_page", scope: !5018, file: !5018, line: 107, type: !7486, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7488)
!7486 = !DISubroutineType(types: !7487)
!7487 = !{null, !5021, !2633}
!7488 = !{!7489, !7490, !7491}
!7489 = !DILocalVariable(name: "sg", arg: 1, scope: !7485, file: !5018, line: 107, type: !5021)
!7490 = !DILocalVariable(name: "page", arg: 2, scope: !7485, file: !5018, line: 107, type: !2633)
!7491 = !DILocalVariable(name: "page_link", scope: !7485, file: !5018, line: 109, type: !545)
!7492 = !DILocation(line: 107, column: 55, scope: !7485)
!7493 = !DILocation(line: 107, column: 72, scope: !7485)
!7494 = !DILocation(line: 109, column: 2, scope: !7485)
!7495 = !DILocation(line: 109, column: 16, scope: !7485)
!7496 = !DILocation(line: 109, column: 28, scope: !7485)
!7497 = !DILocation(line: 109, column: 32, scope: !7485)
!7498 = !DILocation(line: 109, column: 42, scope: !7485)
!7499 = !DILocation(line: 115, column: 2, scope: !7485)
!7500 = !DILocation(line: 115, column: 2, scope: !7501)
!7501 = distinct !DILexicalBlock(scope: !7502, file: !5018, line: 115, column: 2)
!7502 = distinct !DILexicalBlock(scope: !7485, file: !5018, line: 115, column: 2)
!7503 = !DILocation(line: 115, column: 2, scope: !7502)
!7504 = !DILocation(line: 115, column: 2, scope: !7505)
!7505 = distinct !DILexicalBlock(scope: !7501, file: !5018, line: 115, column: 2)
!7506 = !DILocation(line: 115, column: 2, scope: !7507)
!7507 = distinct !DILexicalBlock(scope: !7505, file: !5018, line: 115, column: 2)
!7508 = !DILocation(line: 115, column: 2, scope: !7509)
!7509 = distinct !DILexicalBlock(scope: !7505, file: !5018, line: 115, column: 2)
!7510 = !{i64 2154034440, i64 2154034469, i64 2154034515, i64 2154034573, i64 2154034627, i64 2154034681, i64 2154034736, i64 2154034767}
!7511 = !DILocation(line: 119, column: 18, scope: !7485)
!7512 = !DILocation(line: 119, column: 46, scope: !7485)
!7513 = !DILocation(line: 119, column: 30, scope: !7485)
!7514 = !DILocation(line: 119, column: 28, scope: !7485)
!7515 = !DILocation(line: 119, column: 2, scope: !7485)
!7516 = !DILocation(line: 119, column: 6, scope: !7485)
!7517 = !DILocation(line: 119, column: 16, scope: !7485)
!7518 = !DILocation(line: 120, column: 1, scope: !7485)
!7519 = distinct !DISubprogram(name: "virtio_gpu_vram_mmap", scope: !3, file: !3, line: 32, type: !6419, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7520)
!7520 = !{!7521, !7522, !7523, !7524, !7525, !7526, !7528, !7529, !7531, !7532, !7546, !7547, !7551}
!7521 = !DILocalVariable(name: "obj", arg: 1, scope: !7519, file: !3, line: 32, type: !4994)
!7522 = !DILocalVariable(name: "vma", arg: 2, scope: !7519, file: !3, line: 33, type: !2743)
!7523 = !DILocalVariable(name: "ret", scope: !7519, file: !3, line: 35, type: !109)
!7524 = !DILocalVariable(name: "vgdev", scope: !7519, file: !3, line: 36, type: !6497)
!7525 = !DILocalVariable(name: "bo", scope: !7519, file: !3, line: 37, type: !6458)
!7526 = !DILocalVariable(name: "__mptr", scope: !7527, file: !3, line: 37, type: !366)
!7527 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 37, column: 33)
!7528 = !DILocalVariable(name: "vram", scope: !7519, file: !3, line: 38, type: !367)
!7529 = !DILocalVariable(name: "__mptr", scope: !7530, file: !3, line: 38, type: !366)
!7530 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 38, column: 40)
!7531 = !DILocalVariable(name: "vm_size", scope: !7519, file: !3, line: 39, type: !545)
!7532 = !DILocalVariable(name: "__wq_entry", scope: !7533, file: !3, line: 44, type: !7535)
!7533 = distinct !DILexicalBlock(scope: !7534, file: !3, line: 44, column: 2)
!7534 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 44, column: 2)
!7535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1371, line: 30, size: 320, elements: !7536)
!7536 = !{!7537, !7538, !7539, !7545}
!7537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7535, file: !1371, line: 31, baseType: !7, size: 32)
!7538 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !7535, file: !1371, line: 32, baseType: !366, size: 64, offset: 64)
!7539 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !7535, file: !1371, line: 33, baseType: !7540, size: 64, offset: 128)
!7540 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1371, line: 16, baseType: !7541)
!7541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7542, size: 64)
!7542 = !DISubroutineType(types: !7543)
!7543 = !{!109, !7544, !7, !109, !366}
!7544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7535, size: 64)
!7545 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !7535, file: !1371, line: 34, baseType: !416, size: 128, offset: 192)
!7546 = !DILocalVariable(name: "__ret", scope: !7533, file: !3, line: 44, type: !531)
!7547 = !DILocalVariable(name: "__int", scope: !7548, file: !3, line: 44, type: !531)
!7548 = distinct !DILexicalBlock(scope: !7549, file: !3, line: 44, column: 2)
!7549 = distinct !DILexicalBlock(scope: !7550, file: !3, line: 44, column: 2)
!7550 = distinct !DILexicalBlock(scope: !7533, file: !3, line: 44, column: 2)
!7551 = !DILabel(scope: !7533, name: "__out", file: !3, line: 44)
!7552 = !DILocation(line: 32, column: 56, scope: !7519)
!7553 = !DILocation(line: 33, column: 28, scope: !7519)
!7554 = !DILocation(line: 35, column: 2, scope: !7519)
!7555 = !DILocation(line: 35, column: 6, scope: !7519)
!7556 = !DILocation(line: 36, column: 2, scope: !7519)
!7557 = !DILocation(line: 36, column: 28, scope: !7519)
!7558 = !DILocation(line: 36, column: 36, scope: !7519)
!7559 = !DILocation(line: 36, column: 41, scope: !7519)
!7560 = !DILocation(line: 36, column: 46, scope: !7519)
!7561 = !DILocation(line: 37, column: 2, scope: !7519)
!7562 = !DILocation(line: 37, column: 28, scope: !7519)
!7563 = !DILocation(line: 37, column: 33, scope: !7527)
!7564 = !DILocation(line: 37, column: 33, scope: !7519)
!7565 = !DILocation(line: 38, column: 2, scope: !7519)
!7566 = !DILocation(line: 38, column: 33, scope: !7519)
!7567 = !DILocation(line: 38, column: 40, scope: !7530)
!7568 = !DILocation(line: 38, column: 40, scope: !7519)
!7569 = !DILocation(line: 39, column: 2, scope: !7519)
!7570 = !DILocation(line: 39, column: 16, scope: !7519)
!7571 = !DILocation(line: 39, column: 26, scope: !7519)
!7572 = !DILocation(line: 39, column: 31, scope: !7519)
!7573 = !DILocation(line: 39, column: 40, scope: !7519)
!7574 = !DILocation(line: 39, column: 45, scope: !7519)
!7575 = !DILocation(line: 39, column: 38, scope: !7519)
!7576 = !DILocation(line: 41, column: 8, scope: !7577)
!7577 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 41, column: 6)
!7578 = !DILocation(line: 41, column: 12, scope: !7577)
!7579 = !DILocation(line: 41, column: 23, scope: !7577)
!7580 = !DILocation(line: 41, column: 6, scope: !7519)
!7581 = !DILocation(line: 42, column: 3, scope: !7577)
!7582 = !DILocation(line: 44, column: 2, scope: !7519)
!7583 = !DILocation(line: 44, column: 2, scope: !7534)
!7584 = !DILocation(line: 44, column: 2, scope: !7585)
!7585 = distinct !DILexicalBlock(scope: !7534, file: !3, line: 44, column: 2)
!7586 = !DILocation(line: 44, column: 2, scope: !7587)
!7587 = distinct !DILexicalBlock(scope: !7534, file: !3, line: 44, column: 2)
!7588 = !DILocation(line: 44, column: 2, scope: !7533)
!7589 = !DILocation(line: 44, column: 2, scope: !7548)
!7590 = !DILocation(line: 44, column: 2, scope: !7591)
!7591 = distinct !DILexicalBlock(scope: !7548, file: !3, line: 44, column: 2)
!7592 = !DILocation(line: 44, column: 2, scope: !7549)
!7593 = distinct !{!7593, !7594, !7594, !7595}
!7594 = !DILocation(line: 44, column: 2, scope: !7550)
!7595 = !{!"llvm.loop.unroll.disable"}
!7596 = !DILocation(line: 45, column: 6, scope: !7597)
!7597 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 45, column: 6)
!7598 = !DILocation(line: 45, column: 12, scope: !7597)
!7599 = !DILocation(line: 45, column: 22, scope: !7597)
!7600 = !DILocation(line: 45, column: 6, scope: !7519)
!7601 = !DILocation(line: 46, column: 3, scope: !7597)
!7602 = !DILocation(line: 48, column: 39, scope: !7519)
!7603 = !DILocation(line: 48, column: 44, scope: !7519)
!7604 = !DILocation(line: 48, column: 19, scope: !7519)
!7605 = !DILocation(line: 48, column: 2, scope: !7519)
!7606 = !DILocation(line: 48, column: 7, scope: !7519)
!7607 = !DILocation(line: 48, column: 16, scope: !7519)
!7608 = !DILocation(line: 49, column: 15, scope: !7519)
!7609 = !DILocation(line: 49, column: 2, scope: !7519)
!7610 = !DILocation(line: 50, column: 2, scope: !7519)
!7611 = !DILocation(line: 50, column: 7, scope: !7519)
!7612 = !DILocation(line: 50, column: 22, scope: !7519)
!7613 = !DILocation(line: 50, column: 39, scope: !7519)
!7614 = !DILocation(line: 50, column: 44, scope: !7519)
!7615 = !DILocation(line: 51, column: 2, scope: !7519)
!7616 = !DILocation(line: 51, column: 7, scope: !7519)
!7617 = !DILocation(line: 51, column: 22, scope: !7519)
!7618 = !DILocation(line: 52, column: 2, scope: !7519)
!7619 = !DILocation(line: 52, column: 7, scope: !7519)
!7620 = !DILocation(line: 52, column: 14, scope: !7519)
!7621 = !DILocation(line: 54, column: 6, scope: !7622)
!7622 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 54, column: 6)
!7623 = !DILocation(line: 54, column: 12, scope: !7622)
!7624 = !DILocation(line: 54, column: 21, scope: !7622)
!7625 = !DILocation(line: 54, column: 6, scope: !7519)
!7626 = !DILocation(line: 55, column: 3, scope: !7622)
!7627 = !DILocation(line: 55, column: 8, scope: !7622)
!7628 = !DILocation(line: 55, column: 23, scope: !7622)
!7629 = !DILocation(line: 55, column: 43, scope: !7622)
!7630 = !DILocation(line: 55, column: 48, scope: !7622)
!7631 = !DILocation(line: 56, column: 11, scope: !7632)
!7632 = distinct !DILexicalBlock(scope: !7622, file: !3, line: 56, column: 11)
!7633 = !DILocation(line: 56, column: 17, scope: !7632)
!7634 = !DILocation(line: 56, column: 26, scope: !7632)
!7635 = !DILocation(line: 56, column: 11, scope: !7622)
!7636 = !DILocation(line: 57, column: 3, scope: !7632)
!7637 = !DILocation(line: 57, column: 8, scope: !7632)
!7638 = !DILocation(line: 57, column: 23, scope: !7632)
!7639 = !DILocation(line: 60, column: 6, scope: !7640)
!7640 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 60, column: 6)
!7641 = !DILocation(line: 60, column: 17, scope: !7640)
!7642 = !DILocation(line: 60, column: 23, scope: !7640)
!7643 = !DILocation(line: 60, column: 33, scope: !7640)
!7644 = !DILocation(line: 60, column: 14, scope: !7640)
!7645 = !DILocation(line: 60, column: 6, scope: !7519)
!7646 = !DILocation(line: 61, column: 3, scope: !7640)
!7647 = !DILocation(line: 63, column: 27, scope: !7519)
!7648 = !DILocation(line: 63, column: 32, scope: !7519)
!7649 = !DILocation(line: 63, column: 37, scope: !7519)
!7650 = !DILocation(line: 64, column: 6, scope: !7519)
!7651 = !DILocation(line: 64, column: 12, scope: !7519)
!7652 = !DILocation(line: 64, column: 22, scope: !7519)
!7653 = !DILocation(line: 64, column: 28, scope: !7519)
!7654 = !DILocation(line: 65, column: 6, scope: !7519)
!7655 = !DILocation(line: 65, column: 15, scope: !7519)
!7656 = !DILocation(line: 65, column: 20, scope: !7519)
!7657 = !DILocation(line: 63, column: 8, scope: !7519)
!7658 = !DILocation(line: 63, column: 6, scope: !7519)
!7659 = !DILocation(line: 66, column: 9, scope: !7519)
!7660 = !DILocation(line: 66, column: 2, scope: !7519)
!7661 = !DILocation(line: 67, column: 1, scope: !7519)
!7662 = !DILocation(line: 112, column: 2, scope: !7663)
!7663 = distinct !DILexicalBlock(scope: !6476, file: !6477, line: 112, column: 2)
!7664 = !DILocation(line: 112, column: 2, scope: !6476)
!7665 = !DILocation(line: 113, column: 1, scope: !6476)
!7666 = !DISubprogram(name: "init_wait_entry", scope: !1371, file: !1371, line: 290, type: !7667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7667 = !DISubroutineType(types: !7668)
!7668 = !{null, !7544, !109}
!7669 = !DISubprogram(name: "prepare_to_wait_event", scope: !1371, file: !1371, line: 1199, type: !7670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7670 = !DISubroutineType(types: !7671)
!7671 = !{!531, !7672, !7544, !109}
!7672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!7673 = !DISubprogram(name: "schedule", scope: !1406, file: !1406, line: 303, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7674 = !DISubprogram(name: "finish_wait", scope: !1371, file: !1371, line: 1200, type: !7675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7675 = !DISubroutineType(types: !7676)
!7676 = !{null, !7672, !7544}
!7677 = distinct !DISubprogram(name: "drm_vma_node_start", scope: !6302, file: !6302, line: 169, type: !7678, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7682)
!7678 = !DISubroutineType(types: !7679)
!7679 = !{!545, !7680}
!7680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7681, size: 64)
!7681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6347)
!7682 = !{!7683}
!7683 = !DILocalVariable(name: "node", arg: 1, scope: !7677, file: !6302, line: 169, type: !7680)
!7684 = !DILocation(line: 169, column: 82, scope: !7677)
!7685 = !DILocation(line: 171, column: 9, scope: !7677)
!7686 = !DILocation(line: 171, column: 15, scope: !7677)
!7687 = !DILocation(line: 171, column: 23, scope: !7677)
!7688 = !DILocation(line: 171, column: 2, scope: !7677)
!7689 = distinct !DISubprogram(name: "vm_flags_set", scope: !2737, file: !2737, line: 844, type: !7690, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7692)
!7690 = !DISubroutineType(types: !7691)
!7691 = !{null, !2743, !2767}
!7692 = !{!7693, !7694}
!7693 = !DILocalVariable(name: "vma", arg: 1, scope: !7689, file: !2737, line: 844, type: !2743)
!7694 = !DILocalVariable(name: "flags", arg: 2, scope: !7689, file: !2737, line: 845, type: !2767)
!7695 = !DILocation(line: 844, column: 56, scope: !7689)
!7696 = !DILocation(line: 845, column: 16, scope: !7689)
!7697 = !DILocation(line: 847, column: 18, scope: !7689)
!7698 = !DILocation(line: 847, column: 2, scope: !7689)
!7699 = !DILocation(line: 848, column: 37, scope: !7689)
!7700 = !DILocation(line: 848, column: 2, scope: !7689)
!7701 = !DILocation(line: 848, column: 34, scope: !7689)
!7702 = !DILocation(line: 849, column: 1, scope: !7689)
!7703 = !DISubprogram(name: "vm_get_page_prot", scope: !2737, file: !2737, line: 3442, type: !7704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7704 = !DISubroutineType(types: !7705)
!7705 = !{!2757, !545}
!7706 = distinct !DISubprogram(name: "cc_mkdec", scope: !7707, file: !7707, line: 35, type: !7708, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7710)
!7707 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!7708 = !DISubroutineType(types: !7709)
!7709 = !{!648, !648}
!7710 = !{!7711}
!7711 = !DILocalVariable(name: "val", arg: 1, scope: !7706, file: !7707, line: 35, type: !648)
!7712 = !DILocation(line: 35, column: 32, scope: !7706)
!7713 = !DILocation(line: 37, column: 9, scope: !7706)
!7714 = !DILocation(line: 37, column: 2, scope: !7706)
!7715 = !DISubprogram(name: "pgprot_writecombine", scope: !346, file: !346, line: 528, type: !7716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7716 = !DISubroutineType(types: !7717)
!7717 = !{!2757, !2757}
!7718 = !DISubprogram(name: "cachemode2protval", scope: !346, file: !346, line: 497, type: !7719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7719 = !DISubroutineType(types: !7720)
!7720 = !{!545, !345}
!7721 = distinct !DISubprogram(name: "io_remap_pfn_range", scope: !2737, file: !2737, line: 3499, type: !7722, scopeLine: 3502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7724)
!7722 = !DISubroutineType(types: !7723)
!7723 = !{!109, !2743, !545, !545, !545, !2757}
!7724 = !{!7725, !7726, !7727, !7728, !7729}
!7725 = !DILocalVariable(name: "vma", arg: 1, scope: !7721, file: !2737, line: 3499, type: !2743)
!7726 = !DILocalVariable(name: "addr", arg: 2, scope: !7721, file: !2737, line: 3500, type: !545)
!7727 = !DILocalVariable(name: "pfn", arg: 3, scope: !7721, file: !2737, line: 3500, type: !545)
!7728 = !DILocalVariable(name: "size", arg: 4, scope: !7721, file: !2737, line: 3501, type: !545)
!7729 = !DILocalVariable(name: "prot", arg: 5, scope: !7721, file: !2737, line: 3501, type: !2757)
!7730 = !DILocation(line: 3499, column: 61, scope: !7721)
!7731 = !DILocation(line: 3500, column: 24, scope: !7721)
!7732 = !DILocation(line: 3500, column: 44, scope: !7721)
!7733 = !DILocation(line: 3501, column: 24, scope: !7721)
!7734 = !DILocation(line: 3501, column: 39, scope: !7721)
!7735 = !DILocation(line: 3503, column: 25, scope: !7721)
!7736 = !DILocation(line: 3503, column: 30, scope: !7721)
!7737 = !DILocation(line: 3503, column: 36, scope: !7721)
!7738 = !DILocation(line: 3503, column: 41, scope: !7721)
!7739 = !DILocation(line: 3503, column: 47, scope: !7721)
!7740 = !DILocation(line: 3503, column: 9, scope: !7721)
!7741 = !DILocation(line: 3503, column: 2, scope: !7721)
!7742 = distinct !DISubprogram(name: "vma_start_write", scope: !2737, file: !2737, line: 715, type: !2792, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7743)
!7743 = !{!7744, !7745}
!7744 = !DILocalVariable(name: "vma", arg: 1, scope: !7742, file: !2737, line: 715, type: !2743)
!7745 = !DILocalVariable(name: "mm_lock_seq", scope: !7742, file: !2737, line: 717, type: !109)
!7746 = !DILocation(line: 715, column: 59, scope: !7742)
!7747 = !DILocation(line: 717, column: 2, scope: !7742)
!7748 = !DILocation(line: 717, column: 6, scope: !7742)
!7749 = !DILocation(line: 719, column: 28, scope: !7750)
!7750 = distinct !DILexicalBlock(scope: !7742, file: !2737, line: 719, column: 6)
!7751 = !DILocation(line: 719, column: 6, scope: !7750)
!7752 = !DILocation(line: 719, column: 6, scope: !7742)
!7753 = !DILocation(line: 720, column: 3, scope: !7750)
!7754 = !DILocation(line: 722, column: 14, scope: !7742)
!7755 = !DILocation(line: 722, column: 19, scope: !7742)
!7756 = !DILocation(line: 722, column: 28, scope: !7742)
!7757 = !DILocation(line: 722, column: 2, scope: !7742)
!7758 = !DILocation(line: 729, column: 2, scope: !7742)
!7759 = !DILocation(line: 729, column: 2, scope: !7760)
!7760 = distinct !DILexicalBlock(scope: !7742, file: !2737, line: 729, column: 2)
!7761 = !DILocation(line: 729, column: 2, scope: !7762)
!7762 = distinct !DILexicalBlock(scope: !7760, file: !2737, line: 729, column: 2)
!7763 = !DILocation(line: 729, column: 2, scope: !7764)
!7764 = distinct !DILexicalBlock(scope: !7760, file: !2737, line: 729, column: 2)
!7765 = !DILocation(line: 730, column: 12, scope: !7742)
!7766 = !DILocation(line: 730, column: 17, scope: !7742)
!7767 = !DILocation(line: 730, column: 26, scope: !7742)
!7768 = !DILocation(line: 730, column: 2, scope: !7742)
!7769 = !DILocation(line: 731, column: 1, scope: !7742)
!7770 = distinct !DISubprogram(name: "__is_vma_write_locked", scope: !2737, file: !2737, line: 698, type: !7771, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7773)
!7771 = !DISubroutineType(types: !7772)
!7772 = !{!915, !2743, !964}
!7773 = !{!7774, !7775}
!7774 = !DILocalVariable(name: "vma", arg: 1, scope: !7770, file: !2737, line: 698, type: !2743)
!7775 = !DILocalVariable(name: "mm_lock_seq", arg: 2, scope: !7770, file: !2737, line: 698, type: !964)
!7776 = !DILocation(line: 698, column: 58, scope: !7770)
!7777 = !DILocation(line: 698, column: 68, scope: !7770)
!7778 = !DILocation(line: 700, column: 27, scope: !7770)
!7779 = !DILocation(line: 700, column: 32, scope: !7770)
!7780 = !DILocation(line: 700, column: 2, scope: !7770)
!7781 = !DILocation(line: 706, column: 17, scope: !7770)
!7782 = !DILocation(line: 706, column: 22, scope: !7770)
!7783 = !DILocation(line: 706, column: 29, scope: !7770)
!7784 = !DILocation(line: 706, column: 3, scope: !7770)
!7785 = !DILocation(line: 706, column: 15, scope: !7770)
!7786 = !DILocation(line: 707, column: 10, scope: !7770)
!7787 = !DILocation(line: 707, column: 15, scope: !7770)
!7788 = !DILocation(line: 707, column: 31, scope: !7770)
!7789 = !DILocation(line: 707, column: 30, scope: !7770)
!7790 = !DILocation(line: 707, column: 27, scope: !7770)
!7791 = !DILocation(line: 707, column: 2, scope: !7770)
!7792 = !DISubprogram(name: "down_write", scope: !1747, file: !1747, line: 187, type: !7793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7793 = !DISubroutineType(types: !7794)
!7794 = !{null, !7795}
!7795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!7796 = !DISubprogram(name: "up_write", scope: !1747, file: !1747, line: 203, type: !7793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7797 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !7798, file: !7798, line: 69, type: !7799, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7801)
!7798 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!7799 = !DISubroutineType(types: !7800)
!7800 = !{null, !1692}
!7801 = !{!7802}
!7802 = !DILocalVariable(name: "mm", arg: 1, scope: !7797, file: !7798, line: 69, type: !1692)
!7803 = !DILocation(line: 69, column: 63, scope: !7797)
!7804 = !DILocation(line: 71, column: 2, scope: !7797)
!7805 = !DILocation(line: 71, column: 2, scope: !7806)
!7806 = distinct !DILexicalBlock(scope: !7797, file: !7798, line: 71, column: 2)
!7807 = !DILocation(line: 73, column: 1, scope: !7797)
!7808 = !DISubprogram(name: "remap_pfn_range", scope: !2737, file: !2737, line: 3464, type: !7722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7809 = distinct !DISubprogram(name: "spin_lock", scope: !7810, file: !7810, line: 349, type: !7811, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7813)
!7810 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7811 = !DISubroutineType(types: !7812)
!7812 = !{null, !2883}
!7813 = !{!7814}
!7814 = !DILocalVariable(name: "lock", arg: 1, scope: !7809, file: !7810, line: 349, type: !2883)
!7815 = !DILocation(line: 349, column: 51, scope: !7809)
!7816 = !DILocation(line: 351, column: 2, scope: !7809)
!7817 = !DILocation(line: 352, column: 1, scope: !7809)
!7818 = distinct !DISubprogram(name: "drm_mm_insert_node", scope: !356, file: !356, line: 458, type: !7819, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7822)
!7819 = !DISubroutineType(types: !7820)
!7820 = !{!109, !6320, !7821, !648}
!7821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6314, size: 64)
!7822 = !{!7823, !7824, !7825}
!7823 = !DILocalVariable(name: "mm", arg: 1, scope: !7818, file: !356, line: 458, type: !6320)
!7824 = !DILocalVariable(name: "node", arg: 2, scope: !7818, file: !356, line: 459, type: !7821)
!7825 = !DILocalVariable(name: "size", arg: 3, scope: !7818, file: !356, line: 460, type: !648)
!7826 = !DILocation(line: 458, column: 53, scope: !7818)
!7827 = !DILocation(line: 459, column: 30, scope: !7818)
!7828 = !DILocation(line: 460, column: 14, scope: !7818)
!7829 = !DILocation(line: 462, column: 36, scope: !7818)
!7830 = !DILocation(line: 462, column: 40, scope: !7818)
!7831 = !DILocation(line: 462, column: 46, scope: !7818)
!7832 = !DILocation(line: 462, column: 9, scope: !7818)
!7833 = !DILocation(line: 462, column: 2, scope: !7818)
!7834 = distinct !DISubprogram(name: "spin_unlock", scope: !7810, file: !7810, line: 389, type: !7811, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7835)
!7835 = !{!7836}
!7836 = !DILocalVariable(name: "lock", arg: 1, scope: !7834, file: !7810, line: 389, type: !2883)
!7837 = !DILocation(line: 389, column: 53, scope: !7834)
!7838 = !DILocation(line: 391, column: 2, scope: !7834)
!7839 = !DILocation(line: 392, column: 1, scope: !7834)
!7840 = !DISubprogram(name: "virtio_gpu_array_alloc", scope: !369, file: !369, line: 310, type: !7841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7841 = !DISubroutineType(types: !7842)
!7842 = !{!7102, !644}
!7843 = !DISubprogram(name: "virtio_gpu_array_add_obj", scope: !369, file: !369, line: 313, type: !7844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7844 = !DISubroutineType(types: !7845)
!7845 = !{null, !7102, !4994}
!7846 = !DISubprogram(name: "virtio_gpu_cmd_map", scope: !369, file: !369, line: 415, type: !7847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7847 = !DISubroutineType(types: !7848)
!7848 = !{!109, !6497, !7102, !5052}
!7849 = !DISubprogram(name: "virtio_gpu_array_put_free", scope: !369, file: !369, line: 319, type: !7850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7850 = !DISubroutineType(types: !7851)
!7851 = !{null, !7102}
!7852 = !DISubprogram(name: "drm_mm_remove_node", scope: !356, file: !356, line: 465, type: !7853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7853 = !DISubroutineType(types: !7854)
!7854 = !{null, !7821}
!7855 = !DISubprogram(name: "_raw_spin_lock", scope: !7856, file: !7856, line: 22, type: !7857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7856 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7857 = !DISubroutineType(types: !7858)
!7858 = !{null, !7859}
!7859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!7860 = distinct !DISubprogram(name: "drm_mm_insert_node_generic", scope: !356, file: !356, line: 434, type: !7861, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7863)
!7861 = !DISubroutineType(types: !7862)
!7862 = !{!109, !6320, !7821, !648, !648, !545, !355}
!7863 = !{!7864, !7865, !7866, !7867, !7868, !7869}
!7864 = !DILocalVariable(name: "mm", arg: 1, scope: !7860, file: !356, line: 434, type: !6320)
!7865 = !DILocalVariable(name: "node", arg: 2, scope: !7860, file: !356, line: 434, type: !7821)
!7866 = !DILocalVariable(name: "size", arg: 3, scope: !7860, file: !356, line: 435, type: !648)
!7867 = !DILocalVariable(name: "alignment", arg: 4, scope: !7860, file: !356, line: 435, type: !648)
!7868 = !DILocalVariable(name: "color", arg: 5, scope: !7860, file: !356, line: 436, type: !545)
!7869 = !DILocalVariable(name: "mode", arg: 6, scope: !7860, file: !356, line: 437, type: !355)
!7870 = !DILocation(line: 434, column: 43, scope: !7860)
!7871 = !DILocation(line: 434, column: 67, scope: !7860)
!7872 = !DILocation(line: 435, column: 11, scope: !7860)
!7873 = !DILocation(line: 435, column: 21, scope: !7860)
!7874 = !DILocation(line: 436, column: 21, scope: !7860)
!7875 = !DILocation(line: 437, column: 31, scope: !7860)
!7876 = !DILocation(line: 439, column: 37, scope: !7860)
!7877 = !DILocation(line: 439, column: 41, scope: !7860)
!7878 = !DILocation(line: 440, column: 9, scope: !7860)
!7879 = !DILocation(line: 440, column: 15, scope: !7860)
!7880 = !DILocation(line: 440, column: 26, scope: !7860)
!7881 = !DILocation(line: 441, column: 21, scope: !7860)
!7882 = !DILocation(line: 439, column: 9, scope: !7860)
!7883 = !DILocation(line: 439, column: 2, scope: !7860)
!7884 = !DISubprogram(name: "drm_mm_insert_node_in_range", scope: !356, file: !356, line: 407, type: !7885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7885 = !DISubroutineType(types: !7886)
!7886 = !{!109, !6320, !7821, !648, !648, !545, !648, !648, !355}
!7887 = !DISubprogram(name: "_raw_spin_unlock", scope: !7856, file: !7856, line: 39, type: !7857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7888 = distinct !DISubprogram(name: "drm_mm_node_allocated", scope: !356, file: !356, line: 258, type: !7889, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7891)
!7889 = !DISubroutineType(types: !7890)
!7890 = !{!915, !6312}
!7891 = !{!7892}
!7892 = !DILocalVariable(name: "node", arg: 1, scope: !7888, file: !356, line: 258, type: !6312)
!7893 = !DILocation(line: 258, column: 68, scope: !7888)
!7894 = !DILocation(line: 260, column: 9, scope: !7888)
!7895 = !DILocation(line: 260, column: 2, scope: !7888)
!7896 = !DISubprogram(name: "virtio_gpu_cmd_unmap", scope: !369, file: !369, line: 418, type: !7897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7897 = !DISubroutineType(types: !7898)
!7898 = !{null, !6497, !6458}
!7899 = !DISubprogram(name: "virtio_gpu_cmd_unref_resource", scope: !369, file: !369, line: 332, type: !7897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7900 = !DISubprogram(name: "virtio_gpu_notify", scope: !369, file: !369, line: 409, type: !7901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7901 = !DISubroutineType(types: !7902)
!7902 = !{null, !6497}
!7903 = distinct !DISubprogram(name: "const_test_bit", scope: !7904, file: !7904, line: 166, type: !7905, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7910)
!7904 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7905 = !DISubroutineType(types: !7906)
!7906 = !{!915, !545, !7907}
!7907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7908, size: 64)
!7908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7909)
!7909 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !545)
!7910 = !{!7911, !7912, !7913, !7914, !7915}
!7911 = !DILocalVariable(name: "nr", arg: 1, scope: !7903, file: !7904, line: 166, type: !545)
!7912 = !DILocalVariable(name: "addr", arg: 2, scope: !7903, file: !7904, line: 166, type: !7907)
!7913 = !DILocalVariable(name: "p", scope: !7903, file: !7904, line: 168, type: !6462)
!7914 = !DILocalVariable(name: "mask", scope: !7903, file: !7904, line: 169, type: !545)
!7915 = !DILocalVariable(name: "val", scope: !7903, file: !7904, line: 170, type: !545)
!7916 = !DILocation(line: 166, column: 30, scope: !7903)
!7917 = !DILocation(line: 166, column: 64, scope: !7903)
!7918 = !DILocation(line: 168, column: 2, scope: !7903)
!7919 = !DILocation(line: 168, column: 23, scope: !7903)
!7920 = !DILocation(line: 168, column: 50, scope: !7903)
!7921 = !DILocation(line: 168, column: 57, scope: !7903)
!7922 = !DILocation(line: 168, column: 55, scope: !7903)
!7923 = !DILocation(line: 169, column: 2, scope: !7903)
!7924 = !DILocation(line: 169, column: 16, scope: !7903)
!7925 = !DILocation(line: 169, column: 23, scope: !7903)
!7926 = !DILocation(line: 170, column: 2, scope: !7903)
!7927 = !DILocation(line: 170, column: 16, scope: !7903)
!7928 = !DILocation(line: 170, column: 23, scope: !7903)
!7929 = !DILocation(line: 170, column: 22, scope: !7903)
!7930 = !DILocation(line: 172, column: 12, scope: !7903)
!7931 = !DILocation(line: 172, column: 18, scope: !7903)
!7932 = !DILocation(line: 172, column: 16, scope: !7903)
!7933 = !DILocation(line: 172, column: 10, scope: !7903)
!7934 = !DILocation(line: 172, column: 9, scope: !7903)
!7935 = !DILocation(line: 173, column: 1, scope: !7903)
!7936 = !DILocation(line: 172, column: 2, scope: !7903)
!7937 = distinct !DISubprogram(name: "_test_bit", scope: !7938, file: !7938, line: 139, type: !7905, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7939)
!7938 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7939 = !{!7940, !7941}
!7940 = !DILocalVariable(name: "nr", arg: 1, scope: !7937, file: !7938, line: 139, type: !545)
!7941 = !DILocalVariable(name: "addr", arg: 2, scope: !7937, file: !7938, line: 139, type: !7907)
!7942 = !DILocation(line: 139, column: 25, scope: !7937)
!7943 = !DILocation(line: 139, column: 59, scope: !7937)
!7944 = !DILocation(line: 141, column: 25, scope: !7937)
!7945 = !DILocation(line: 141, column: 32, scope: !7937)
!7946 = !DILocation(line: 141, column: 30, scope: !7937)
!7947 = !DILocation(line: 141, column: 2, scope: !7937)
!7948 = !DILocation(line: 142, column: 23, scope: !7937)
!7949 = !DILocation(line: 142, column: 27, scope: !7937)
!7950 = !DILocation(line: 142, column: 9, scope: !7937)
!7951 = !DILocation(line: 142, column: 2, scope: !7937)
!7952 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7953, file: !7953, line: 66, type: !7954, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7959)
!7953 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7954 = !DISubroutineType(types: !7955)
!7955 = !{null, !7956, !542}
!7956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7957, size: 64)
!7957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7958)
!7958 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7959 = !{!7960, !7961}
!7960 = !DILocalVariable(name: "v", arg: 1, scope: !7952, file: !7953, line: 66, type: !7956)
!7961 = !DILocalVariable(name: "size", arg: 2, scope: !7952, file: !7953, line: 66, type: !542)
!7962 = !DILocation(line: 66, column: 73, scope: !7952)
!7963 = !DILocation(line: 66, column: 83, scope: !7952)
!7964 = !DILocation(line: 68, column: 19, scope: !7952)
!7965 = !DILocation(line: 68, column: 22, scope: !7952)
!7966 = !DILocation(line: 68, column: 2, scope: !7952)
!7967 = !DILocation(line: 69, column: 2, scope: !7952)
!7968 = !DILocation(line: 70, column: 1, scope: !7952)
!7969 = distinct !DISubprogram(name: "arch_test_bit", scope: !7970, file: !7970, line: 237, type: !7905, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7971)
!7970 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7971 = !{!7972, !7973}
!7972 = !DILocalVariable(name: "nr", arg: 1, scope: !7969, file: !7970, line: 237, type: !545)
!7973 = !DILocalVariable(name: "addr", arg: 2, scope: !7969, file: !7970, line: 237, type: !7907)
!7974 = !DILocation(line: 237, column: 29, scope: !7969)
!7975 = !DILocation(line: 237, column: 63, scope: !7969)
!7976 = !DILocation(line: 239, column: 30, scope: !7969)
!7977 = !DILocation(line: 239, column: 9, scope: !7969)
!7978 = !DILocation(line: 239, column: 54, scope: !7969)
!7979 = !DILocation(line: 239, column: 58, scope: !7969)
!7980 = !DILocation(line: 239, column: 36, scope: !7969)
!7981 = !DILocation(line: 240, column: 26, scope: !7969)
!7982 = !DILocation(line: 240, column: 30, scope: !7969)
!7983 = !DILocation(line: 240, column: 8, scope: !7969)
!7984 = !DILocation(line: 239, column: 2, scope: !7969)
!7985 = distinct !DISubprogram(name: "kasan_check_read", scope: !7986, file: !7986, line: 40, type: !7987, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7989)
!7986 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7987 = !DISubroutineType(types: !7988)
!7988 = !{!915, !7956, !7}
!7989 = !{!7990, !7991}
!7990 = !DILocalVariable(name: "p", arg: 1, scope: !7985, file: !7986, line: 40, type: !7956)
!7991 = !DILocalVariable(name: "size", arg: 2, scope: !7985, file: !7986, line: 40, type: !7)
!7992 = !DILocation(line: 40, column: 58, scope: !7985)
!7993 = !DILocation(line: 40, column: 74, scope: !7985)
!7994 = !DILocation(line: 42, column: 2, scope: !7985)
!7995 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7996, file: !7996, line: 229, type: !7997, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7999)
!7996 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7997 = !DISubroutineType(types: !7998)
!7998 = !{null, !7956, !542, !109}
!7999 = !{!8000, !8001, !8002}
!8000 = !DILocalVariable(name: "ptr", arg: 1, scope: !7995, file: !7996, line: 229, type: !7956)
!8001 = !DILocalVariable(name: "size", arg: 2, scope: !7995, file: !7996, line: 229, type: !542)
!8002 = !DILocalVariable(name: "type", arg: 3, scope: !7995, file: !7996, line: 230, type: !109)
!8003 = !DILocation(line: 229, column: 60, scope: !7995)
!8004 = !DILocation(line: 229, column: 72, scope: !7995)
!8005 = !DILocation(line: 230, column: 15, scope: !7995)
!8006 = !DILocation(line: 230, column: 23, scope: !7995)
!8007 = distinct !DISubprogram(name: "constant_test_bit", scope: !7970, file: !7970, line: 204, type: !8008, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8010)
!8008 = !DISubroutineType(types: !8009)
!8009 = !{!915, !531, !7907}
!8010 = !{!8011, !8012}
!8011 = !DILocalVariable(name: "nr", arg: 1, scope: !8007, file: !7970, line: 204, type: !531)
!8012 = !DILocalVariable(name: "addr", arg: 2, scope: !8007, file: !7970, line: 204, type: !7907)
!8013 = !DILocation(line: 204, column: 52, scope: !8007)
!8014 = !DILocation(line: 204, column: 86, scope: !8007)
!8015 = !DILocation(line: 206, column: 19, scope: !8007)
!8016 = !DILocation(line: 206, column: 22, scope: !8007)
!8017 = !DILocation(line: 206, column: 15, scope: !8007)
!8018 = !DILocation(line: 207, column: 4, scope: !8007)
!8019 = !DILocation(line: 207, column: 9, scope: !8007)
!8020 = !DILocation(line: 207, column: 12, scope: !8007)
!8021 = !DILocation(line: 206, column: 44, scope: !8007)
!8022 = !DILocation(line: 207, column: 37, scope: !8007)
!8023 = !DILocation(line: 206, column: 2, scope: !8007)
!8024 = distinct !DISubprogram(name: "variable_test_bit", scope: !7970, file: !7970, line: 224, type: !8008, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !8025)
!8025 = !{!8026, !8027, !8028}
!8026 = !DILocalVariable(name: "nr", arg: 1, scope: !8024, file: !7970, line: 224, type: !531)
!8027 = !DILocalVariable(name: "addr", arg: 2, scope: !8024, file: !7970, line: 224, type: !7907)
!8028 = !DILocalVariable(name: "oldbit", scope: !8024, file: !7970, line: 226, type: !915)
!8029 = !DILocation(line: 224, column: 52, scope: !8024)
!8030 = !DILocation(line: 224, column: 86, scope: !8024)
!8031 = !DILocation(line: 226, column: 2, scope: !8024)
!8032 = !DILocation(line: 226, column: 7, scope: !8024)
!8033 = !DILocation(line: 231, column: 33, scope: !8024)
!8034 = !DILocation(line: 231, column: 46, scope: !8024)
!8035 = !DILocation(line: 228, column: 2, scope: !8024)
!8036 = !{i64 2148409839, i64 2148409913}
!8037 = !DILocation(line: 233, column: 9, scope: !8024)
!8038 = !DILocation(line: 234, column: 1, scope: !8024)
!8039 = !DILocation(line: 233, column: 2, scope: !8024)
