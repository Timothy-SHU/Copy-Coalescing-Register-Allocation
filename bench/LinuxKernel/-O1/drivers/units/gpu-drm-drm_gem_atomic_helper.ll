; ModuleID = 'drivers/gpu/drm/drm_gem_atomic_helper.c'
source_filename = "drivers/gpu/drm/drm_gem_atomic_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_plane_helper_prepare_fb: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_plane_helper_prepare_fb ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_gem_duplicate_shadow_plane_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_gem_duplicate_shadow_plane_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_duplicate_shadow_plane_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_duplicate_shadow_plane_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_gem_destroy_shadow_plane_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_gem_destroy_shadow_plane_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_destroy_shadow_plane_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_destroy_shadow_plane_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_gem_reset_shadow_plane: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_gem_reset_shadow_plane ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_reset_shadow_plane: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_reset_shadow_plane ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_begin_shadow_fb_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_begin_shadow_fb_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_end_shadow_fb_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_end_shadow_fb_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_simple_kms_begin_shadow_fb_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_simple_kms_begin_shadow_fb_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_simple_kms_end_shadow_fb_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_simple_kms_end_shadow_fb_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_simple_kms_reset_shadow_plane: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_simple_kms_reset_shadow_plane ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_simple_kms_duplicate_shadow_plane_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_simple_kms_duplicate_shadow_plane_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_simple_kms_destroy_shadow_plane_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_simple_kms_destroy_shadow_plane_state ; .previous"

%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, i8, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.13, [4 x i8], [4 x i8], i8, i8, i8, i8, i8 }
%union.anon.13 = type { [4 x i8] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.16, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
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
%struct.anon.16 = type { %struct.list_head }
%struct.dma_fence_chain = type { %struct.dma_fence, ptr, i64, ptr, %union.anon.18, %struct.spinlock }
%struct.dma_fence = type { ptr, ptr, %union.anon.17, i64, i64, i64, %struct.kref, i32 }
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.iosys_map], [4 x %struct.iosys_map] }
%struct.iosys_map = type { %union.anon.19, i8 }
%union.anon.19 = type { ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }

@__UNIQUE_ID___addressable_drm_gem_plane_helper_prepare_fb316 = internal global ptr @drm_gem_plane_helper_prepare_fb, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable___drm_gem_duplicate_shadow_plane_state317 = internal global ptr @__drm_gem_duplicate_shadow_plane_state, section ".discard.addressable", align 8, !dbg !6433
@__UNIQUE_ID___addressable_drm_gem_duplicate_shadow_plane_state318 = internal global ptr @drm_gem_duplicate_shadow_plane_state, section ".discard.addressable", align 8, !dbg !6435
@__UNIQUE_ID___addressable___drm_gem_destroy_shadow_plane_state319 = internal global ptr @__drm_gem_destroy_shadow_plane_state, section ".discard.addressable", align 8, !dbg !6437
@__UNIQUE_ID___addressable_drm_gem_destroy_shadow_plane_state320 = internal global ptr @drm_gem_destroy_shadow_plane_state, section ".discard.addressable", align 8, !dbg !6439
@__UNIQUE_ID___addressable___drm_gem_reset_shadow_plane321 = internal global ptr @__drm_gem_reset_shadow_plane, section ".discard.addressable", align 8, !dbg !6441
@__UNIQUE_ID___addressable_drm_gem_reset_shadow_plane322 = internal global ptr @drm_gem_reset_shadow_plane, section ".discard.addressable", align 8, !dbg !6443
@__UNIQUE_ID___addressable_drm_gem_begin_shadow_fb_access323 = internal global ptr @drm_gem_begin_shadow_fb_access, section ".discard.addressable", align 8, !dbg !6445
@__UNIQUE_ID___addressable_drm_gem_end_shadow_fb_access324 = internal global ptr @drm_gem_end_shadow_fb_access, section ".discard.addressable", align 8, !dbg !6447
@__UNIQUE_ID___addressable_drm_gem_simple_kms_begin_shadow_fb_access325 = internal global ptr @drm_gem_simple_kms_begin_shadow_fb_access, section ".discard.addressable", align 8, !dbg !6449
@__UNIQUE_ID___addressable_drm_gem_simple_kms_end_shadow_fb_access326 = internal global ptr @drm_gem_simple_kms_end_shadow_fb_access, section ".discard.addressable", align 8, !dbg !6451
@__UNIQUE_ID___addressable_drm_gem_simple_kms_reset_shadow_plane327 = internal global ptr @drm_gem_simple_kms_reset_shadow_plane, section ".discard.addressable", align 8, !dbg !6453
@__UNIQUE_ID___addressable_drm_gem_simple_kms_duplicate_shadow_plane_state328 = internal global ptr @drm_gem_simple_kms_duplicate_shadow_plane_state, section ".discard.addressable", align 8, !dbg !6455
@__UNIQUE_ID___addressable_drm_gem_simple_kms_destroy_shadow_plane_state329 = internal global ptr @drm_gem_simple_kms_destroy_shadow_plane_state, section ".discard.addressable", align 8, !dbg !6457
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6459
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID___addressable_drm_gem_plane_helper_prepare_fb316, ptr @__UNIQUE_ID___addressable___drm_gem_duplicate_shadow_plane_state317, ptr @__UNIQUE_ID___addressable_drm_gem_duplicate_shadow_plane_state318, ptr @__UNIQUE_ID___addressable___drm_gem_destroy_shadow_plane_state319, ptr @__UNIQUE_ID___addressable_drm_gem_destroy_shadow_plane_state320, ptr @__UNIQUE_ID___addressable___drm_gem_reset_shadow_plane321, ptr @__UNIQUE_ID___addressable_drm_gem_reset_shadow_plane322, ptr @__UNIQUE_ID___addressable_drm_gem_begin_shadow_fb_access323, ptr @__UNIQUE_ID___addressable_drm_gem_end_shadow_fb_access324, ptr @__UNIQUE_ID___addressable_drm_gem_simple_kms_begin_shadow_fb_access325, ptr @__UNIQUE_ID___addressable_drm_gem_simple_kms_end_shadow_fb_access326, ptr @__UNIQUE_ID___addressable_drm_gem_simple_kms_reset_shadow_plane327, ptr @__UNIQUE_ID___addressable_drm_gem_simple_kms_duplicate_shadow_plane_state328, ptr @__UNIQUE_ID___addressable_drm_gem_simple_kms_destroy_shadow_plane_state329], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %plane, ptr noundef %state) #0 align 16 !dbg !6473 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %usage = alloca i32, align 4
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %obj = alloca ptr, align 8
  %new = alloca ptr, align 8
  %chain = alloca ptr, align 8
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6477, metadata !DIExpression()), !dbg !6516
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6478, metadata !DIExpression()), !dbg !6517
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #13, !dbg !6518
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !6479, metadata !DIExpression()), !dbg !6519
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6520
  %fence1 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 3, !dbg !6521
  %1 = load ptr, ptr %fence1, align 8, !dbg !6521
  %call = call ptr @dma_fence_get(ptr noundef %1) #14, !dbg !6522
  store ptr %call, ptr %fence, align 8, !dbg !6519
  call void @llvm.lifetime.start.p0(i64 4, ptr %usage) #13, !dbg !6523
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !6480, metadata !DIExpression()), !dbg !6524
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6481, metadata !DIExpression()), !dbg !6526
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6482, metadata !DIExpression()), !dbg !6528
  %2 = load ptr, ptr %state.addr, align 8, !dbg !6529
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 2, !dbg !6531
  %3 = load ptr, ptr %fb, align 8, !dbg !6531
  %tobool = icmp ne ptr %3, null, !dbg !6529
  br i1 %tobool, label %if.end, label %if.then, !dbg !6532

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !6533

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fence, align 8, !dbg !6534
  %tobool2 = icmp ne ptr %4, null, !dbg !6534
  %5 = zext i1 %tobool2 to i64, !dbg !6534
  %cond = select i1 %tobool2, i32 0, i32 1, !dbg !6534
  store i32 %cond, ptr %usage, align 4, !dbg !6535
  store i64 0, ptr %i, align 8, !dbg !6536
  br label %for.cond, !dbg !6537

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, ptr %i, align 8, !dbg !6538
  %7 = load ptr, ptr %state.addr, align 8, !dbg !6539
  %fb3 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2, !dbg !6540
  %8 = load ptr, ptr %fb3, align 8, !dbg !6540
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 4, !dbg !6541
  %9 = load ptr, ptr %format, align 8, !dbg !6541
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 2, !dbg !6542
  %10 = load i8, ptr %num_planes, align 1, !dbg !6542
  %conv = zext i8 %10 to i64, !dbg !6539
  %cmp = icmp ult i64 %6, %conv, !dbg !6543
  br i1 %cmp, label %for.body, label %for.end, !dbg !6544

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #13, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6483, metadata !DIExpression()), !dbg !6546
  %11 = load ptr, ptr %state.addr, align 8, !dbg !6547
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2, !dbg !6548
  %12 = load ptr, ptr %fb5, align 8, !dbg !6548
  %13 = load i64, ptr %i, align 8, !dbg !6549
  %conv6 = trunc i64 %13 to i32, !dbg !6549
  %call7 = call ptr @drm_gem_fb_get_obj(ptr noundef %12, i32 noundef %conv6) #14, !dbg !6550
  store ptr %call7, ptr %obj, align 8, !dbg !6546
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #13, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6487, metadata !DIExpression()), !dbg !6552
  %14 = load ptr, ptr %obj, align 8, !dbg !6553
  %tobool8 = icmp ne ptr %14, null, !dbg !6553
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6555

if.then9:                                         ; preds = %for.body
  store i32 -22, ptr %ret, align 4, !dbg !6556
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !6558

if.end10:                                         ; preds = %for.body
  %15 = load ptr, ptr %obj, align 8, !dbg !6559
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %15, i32 0, i32 9, !dbg !6560
  %16 = load ptr, ptr %resv, align 8, !dbg !6560
  %17 = load i32, ptr %usage, align 4, !dbg !6561
  %call11 = call i32 @dma_resv_get_singleton(ptr noundef %16, i32 noundef %17, ptr noundef %new) #14, !dbg !6562
  store i32 %call11, ptr %ret, align 4, !dbg !6563
  %18 = load i32, ptr %ret, align 4, !dbg !6564
  %tobool12 = icmp ne i32 %18, 0, !dbg !6564
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6566

if.then13:                                        ; preds = %if.end10
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !6567

if.end14:                                         ; preds = %if.end10
  %19 = load ptr, ptr %new, align 8, !dbg !6568
  %tobool15 = icmp ne ptr %19, null, !dbg !6568
  br i1 %tobool15, label %land.lhs.true, label %if.else, !dbg !6569

land.lhs.true:                                    ; preds = %if.end14
  %20 = load ptr, ptr %fence, align 8, !dbg !6570
  %tobool16 = icmp ne ptr %20, null, !dbg !6570
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !6571

if.then17:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #13, !dbg !6572
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !6488, metadata !DIExpression()), !dbg !6573
  %call18 = call ptr @dma_fence_chain_alloc() #14, !dbg !6574
  store ptr %call18, ptr %chain, align 8, !dbg !6573
  %21 = load ptr, ptr %chain, align 8, !dbg !6575
  %tobool19 = icmp ne ptr %21, null, !dbg !6575
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !6577

if.then20:                                        ; preds = %if.then17
  store i32 -12, ptr %ret, align 4, !dbg !6578
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6580

if.end21:                                         ; preds = %if.then17
  %22 = load ptr, ptr %chain, align 8, !dbg !6581
  %23 = load ptr, ptr %fence, align 8, !dbg !6582
  %24 = load ptr, ptr %new, align 8, !dbg !6583
  call void @dma_fence_chain_init(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef 1) #14, !dbg !6584
  %25 = load ptr, ptr %chain, align 8, !dbg !6585
  %base = getelementptr inbounds %struct.dma_fence_chain, ptr %25, i32 0, i32 0, !dbg !6586
  store ptr %base, ptr %fence, align 8, !dbg !6587
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6588
  br label %cleanup, !dbg !6588

cleanup:                                          ; preds = %if.then20, %if.end21
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #13, !dbg !6588
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !6589

if.else:                                          ; preds = %land.lhs.true, %if.end14
  %26 = load ptr, ptr %new, align 8, !dbg !6590
  %tobool22 = icmp ne ptr %26, null, !dbg !6590
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !6592

if.then23:                                        ; preds = %if.else
  %27 = load ptr, ptr %new, align 8, !dbg !6593
  store ptr %27, ptr %fence, align 8, !dbg !6595
  br label %if.end24, !dbg !6596

if.end24:                                         ; preds = %if.then23, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6597
  br label %cleanup26, !dbg !6597

cleanup26:                                        ; preds = %if.then13, %if.then9, %if.end25, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #13, !dbg !6597
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #13, !dbg !6597
  %cleanup.dest28 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest28, label %cleanup32 [
    i32 0, label %cleanup.cont29
    i32 5, label %error
  ]

cleanup.cont29:                                   ; preds = %cleanup26
  br label %for.inc, !dbg !6598

for.inc:                                          ; preds = %cleanup.cont29
  %28 = load i64, ptr %i, align 8, !dbg !6599
  %inc = add i64 %28, 1, !dbg !6599
  store i64 %inc, ptr %i, align 8, !dbg !6599
  br label %for.cond, !dbg !6600, !llvm.loop !6601

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %state.addr, align 8, !dbg !6605
  %fence30 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 3, !dbg !6606
  %30 = load ptr, ptr %fence30, align 8, !dbg !6606
  call void @dma_fence_put(ptr noundef %30) #14, !dbg !6607
  %31 = load ptr, ptr %fence, align 8, !dbg !6608
  %32 = load ptr, ptr %state.addr, align 8, !dbg !6609
  %fence31 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 3, !dbg !6610
  store ptr %31, ptr %fence31, align 8, !dbg !6611
  store i32 0, ptr %retval, align 4, !dbg !6612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !6612

error:                                            ; preds = %cleanup26
  call void @llvm.dbg.label(metadata !6515), !dbg !6613
  %33 = load ptr, ptr %fence, align 8, !dbg !6614
  call void @dma_fence_put(ptr noundef %33) #14, !dbg !6615
  %34 = load i32, ptr %ret, align 4, !dbg !6616
  store i32 %34, ptr %retval, align 4, !dbg !6617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !6617

cleanup32:                                        ; preds = %error, %for.end, %cleanup26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6618
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !6618
  call void @llvm.lifetime.end.p0(i64 4, ptr %usage) #13, !dbg !6618
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #13, !dbg !6618
  %35 = load i32, ptr %retval, align 4, !dbg !6618
  ret i32 %35, !dbg !6618
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #3 align 16 !dbg !6619 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6625
  %tobool = icmp ne ptr %0, null, !dbg !6625
  br i1 %tobool, label %if.then, label %if.end, !dbg !6627

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !6628
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !6629
  call void @kref_get(ptr noundef %refcount) #14, !dbg !6630
  br label %if.end, !dbg !6630

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !6631
  ret ptr %2, !dbg !6632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6633 dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6637 dso_local i32 @dma_resv_get_singleton(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_chain_alloc() #3 align 16 !dbg !6641 {
entry:
  %call = call noalias ptr @kmalloc(i64 noundef 128, i32 noundef 3264) #15, !dbg !6644
  ret ptr %call, !dbg !6645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6646 dso_local void @dma_fence_chain_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #3 align 16 !dbg !6649 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6651, metadata !DIExpression()), !dbg !6652
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6653
  %tobool = icmp ne ptr %0, null, !dbg !6653
  br i1 %tobool, label %if.then, label %if.end, !dbg !6655

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !6656
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !6657
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #14, !dbg !6658
  br label %if.end, !dbg !6658

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6659
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_gem_duplicate_shadow_plane_state(ptr noundef %plane, ptr noundef %new_shadow_plane_state) #0 align 16 !dbg !6660 {
entry:
  %plane.addr = alloca ptr, align 8
  %new_shadow_plane_state.addr = alloca ptr, align 8
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6664, metadata !DIExpression()), !dbg !6666
  store ptr %new_shadow_plane_state, ptr %new_shadow_plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_shadow_plane_state.addr, metadata !6665, metadata !DIExpression()), !dbg !6667
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6668
  %1 = load ptr, ptr %new_shadow_plane_state.addr, align 8, !dbg !6669
  %base = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %1, i32 0, i32 0, !dbg !6670
  call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef %base) #14, !dbg !6671
  ret void, !dbg !6672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6673 dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_gem_duplicate_shadow_plane_state(ptr noundef %plane) #0 align 16 !dbg !6674 {
entry:
  %retval = alloca ptr, align 8
  %plane.addr = alloca ptr, align 8
  %plane_state = alloca ptr, align 8
  %new_shadow_plane_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6676, metadata !DIExpression()), !dbg !6679
  call void @llvm.lifetime.start.p0(i64 8, ptr %plane_state) #13, !dbg !6680
  call void @llvm.dbg.declare(metadata ptr %plane_state, metadata !6677, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6682
  %state = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19, !dbg !6683
  %1 = load ptr, ptr %state, align 8, !dbg !6683
  store ptr %1, ptr %plane_state, align 8, !dbg !6681
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_shadow_plane_state) #13, !dbg !6684
  call void @llvm.dbg.declare(metadata ptr %new_shadow_plane_state, metadata !6678, metadata !DIExpression()), !dbg !6685
  %2 = load ptr, ptr %plane_state, align 8, !dbg !6686
  %tobool = icmp ne ptr %2, null, !dbg !6686
  br i1 %tobool, label %if.end, label %if.then, !dbg !6688

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6689

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 288, i32 noundef 3264) #15, !dbg !6690
  store ptr %call, ptr %new_shadow_plane_state, align 8, !dbg !6691
  %3 = load ptr, ptr %new_shadow_plane_state, align 8, !dbg !6692
  %tobool1 = icmp ne ptr %3, null, !dbg !6692
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6694

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !6695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6695

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %plane.addr, align 8, !dbg !6696
  %5 = load ptr, ptr %new_shadow_plane_state, align 8, !dbg !6697
  call void @__drm_gem_duplicate_shadow_plane_state(ptr noundef %4, ptr noundef %5) #14, !dbg !6698
  %6 = load ptr, ptr %new_shadow_plane_state, align 8, !dbg !6699
  %base = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %6, i32 0, i32 0, !dbg !6700
  store ptr %base, ptr %retval, align 8, !dbg !6701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_shadow_plane_state) #13, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 8, ptr %plane_state) #13, !dbg !6702
  %7 = load ptr, ptr %retval, align 8, !dbg !6702
  ret ptr %7, !dbg !6702
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6703 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6707, metadata !DIExpression()), !dbg !6709
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6708, metadata !DIExpression()), !dbg !6710
  %0 = load i64, ptr %size.addr, align 8, !dbg !6711
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6712
  %or = or i32 %1, 256, !dbg !6713
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !6714
  ret ptr %call, !dbg !6715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_gem_destroy_shadow_plane_state(ptr noundef %shadow_plane_state) #0 align 16 !dbg !6716 {
entry:
  %shadow_plane_state.addr = alloca ptr, align 8
  store ptr %shadow_plane_state, ptr %shadow_plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shadow_plane_state.addr, metadata !6720, metadata !DIExpression()), !dbg !6721
  %0 = load ptr, ptr %shadow_plane_state.addr, align 8, !dbg !6722
  %base = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %0, i32 0, i32 0, !dbg !6723
  call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %base) #14, !dbg !6724
  ret void, !dbg !6725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6726 dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_destroy_shadow_plane_state(ptr noundef %plane, ptr noundef %plane_state) #0 align 16 !dbg !6729 {
entry:
  %plane.addr = alloca ptr, align 8
  %plane_state.addr = alloca ptr, align 8
  %shadow_plane_state = alloca ptr, align 8
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6731, metadata !DIExpression()), !dbg !6734
  store ptr %plane_state, ptr %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane_state.addr, metadata !6732, metadata !DIExpression()), !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6736
  call void @llvm.dbg.declare(metadata ptr %shadow_plane_state, metadata !6733, metadata !DIExpression()), !dbg !6737
  %0 = load ptr, ptr %plane_state.addr, align 8, !dbg !6738
  %call = call ptr @to_drm_shadow_plane_state(ptr noundef %0) #14, !dbg !6739
  store ptr %call, ptr %shadow_plane_state, align 8, !dbg !6737
  %1 = load ptr, ptr %shadow_plane_state, align 8, !dbg !6740
  call void @__drm_gem_destroy_shadow_plane_state(ptr noundef %1) #14, !dbg !6741
  %2 = load ptr, ptr %shadow_plane_state, align 8, !dbg !6742
  call void @kfree(ptr noundef %2) #14, !dbg !6743
  call void @llvm.lifetime.end.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6744
  ret void, !dbg !6744
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_drm_shadow_plane_state(ptr noundef %state) #3 align 16 !dbg !6745 {
entry:
  %state.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6749, metadata !DIExpression()), !dbg !6752
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6750, metadata !DIExpression()), !dbg !6753
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6753
  store ptr %0, ptr %__mptr, align 8, !dbg !6753
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6753
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6753
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !6754
  %2 = load ptr, ptr %tmp, align 8, !dbg !6753
  ret ptr %2, !dbg !6755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_gem_reset_shadow_plane(ptr noundef %plane, ptr noundef %shadow_plane_state) #0 align 16 !dbg !6759 {
entry:
  %plane.addr = alloca ptr, align 8
  %shadow_plane_state.addr = alloca ptr, align 8
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6761, metadata !DIExpression()), !dbg !6763
  store ptr %shadow_plane_state, ptr %shadow_plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shadow_plane_state.addr, metadata !6762, metadata !DIExpression()), !dbg !6764
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6765
  %1 = load ptr, ptr %shadow_plane_state.addr, align 8, !dbg !6766
  %base = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %1, i32 0, i32 0, !dbg !6767
  call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef %base) #14, !dbg !6768
  ret void, !dbg !6769
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6770 dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_reset_shadow_plane(ptr noundef %plane) #0 align 16 !dbg !6771 {
entry:
  %plane.addr = alloca ptr, align 8
  %shadow_plane_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6773, metadata !DIExpression()), !dbg !6775
  call void @llvm.lifetime.start.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %shadow_plane_state, metadata !6774, metadata !DIExpression()), !dbg !6777
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6778
  %state = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19, !dbg !6780
  %1 = load ptr, ptr %state, align 8, !dbg !6780
  %tobool = icmp ne ptr %1, null, !dbg !6778
  br i1 %tobool, label %if.then, label %if.end, !dbg !6781

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %plane.addr, align 8, !dbg !6782
  %3 = load ptr, ptr %plane.addr, align 8, !dbg !6784
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 19, !dbg !6785
  %4 = load ptr, ptr %state1, align 8, !dbg !6785
  call void @drm_gem_destroy_shadow_plane_state(ptr noundef %2, ptr noundef %4) #14, !dbg !6786
  %5 = load ptr, ptr %plane.addr, align 8, !dbg !6787
  %state2 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 19, !dbg !6788
  store ptr null, ptr %state2, align 8, !dbg !6789
  br label %if.end, !dbg !6790

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias ptr @kzalloc(i64 noundef 288, i32 noundef 3264) #15, !dbg !6791
  store ptr %call, ptr %shadow_plane_state, align 8, !dbg !6792
  %6 = load ptr, ptr %shadow_plane_state, align 8, !dbg !6793
  %tobool3 = icmp ne ptr %6, null, !dbg !6793
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6795

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6796

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %plane.addr, align 8, !dbg !6797
  %8 = load ptr, ptr %shadow_plane_state, align 8, !dbg !6798
  call void @__drm_gem_reset_shadow_plane(ptr noundef %7, ptr noundef %8) #14, !dbg !6799
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6800
  br label %cleanup, !dbg !6800

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6800
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6800

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_begin_shadow_fb_access(ptr noundef %plane, ptr noundef %plane_state) #0 align 16 !dbg !6801 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca ptr, align 8
  %plane_state.addr = alloca ptr, align 8
  %shadow_plane_state = alloca ptr, align 8
  %fb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6803, metadata !DIExpression()), !dbg !6807
  store ptr %plane_state, ptr %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane_state.addr, metadata !6804, metadata !DIExpression()), !dbg !6808
  call void @llvm.lifetime.start.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6809
  call void @llvm.dbg.declare(metadata ptr %shadow_plane_state, metadata !6805, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %plane_state.addr, align 8, !dbg !6811
  %call = call ptr @to_drm_shadow_plane_state(ptr noundef %0) #14, !dbg !6812
  store ptr %call, ptr %shadow_plane_state, align 8, !dbg !6810
  call void @llvm.lifetime.start.p0(i64 8, ptr %fb) #13, !dbg !6813
  call void @llvm.dbg.declare(metadata ptr %fb, metadata !6806, metadata !DIExpression()), !dbg !6814
  %1 = load ptr, ptr %plane_state.addr, align 8, !dbg !6815
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2, !dbg !6816
  %2 = load ptr, ptr %fb1, align 8, !dbg !6816
  store ptr %2, ptr %fb, align 8, !dbg !6814
  %3 = load ptr, ptr %fb, align 8, !dbg !6817
  %tobool = icmp ne ptr %3, null, !dbg !6817
  br i1 %tobool, label %if.end, label %if.then, !dbg !6819

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6820

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fb, align 8, !dbg !6821
  %5 = load ptr, ptr %shadow_plane_state, align 8, !dbg !6822
  %map = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %5, i32 0, i32 1, !dbg !6823
  %arraydecay = getelementptr inbounds [4 x %struct.iosys_map], ptr %map, i64 0, i64 0, !dbg !6822
  %6 = load ptr, ptr %shadow_plane_state, align 8, !dbg !6824
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %6, i32 0, i32 2, !dbg !6825
  %arraydecay2 = getelementptr inbounds [4 x %struct.iosys_map], ptr %data, i64 0, i64 0, !dbg !6824
  %call3 = call i32 @drm_gem_fb_vmap(ptr noundef %4, ptr noundef %arraydecay, ptr noundef %arraydecay2) #14, !dbg !6826
  store i32 %call3, ptr %retval, align 4, !dbg !6827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6827

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fb) #13, !dbg !6828
  call void @llvm.lifetime.end.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6828
  %7 = load i32, ptr %retval, align 4, !dbg !6828
  ret i32 %7, !dbg !6828
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6829 dso_local i32 @drm_gem_fb_vmap(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_end_shadow_fb_access(ptr noundef %plane, ptr noundef %plane_state) #0 align 16 !dbg !6832 {
entry:
  %plane.addr = alloca ptr, align 8
  %plane_state.addr = alloca ptr, align 8
  %shadow_plane_state = alloca ptr, align 8
  %fb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6834, metadata !DIExpression()), !dbg !6838
  store ptr %plane_state, ptr %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane_state.addr, metadata !6835, metadata !DIExpression()), !dbg !6839
  call void @llvm.lifetime.start.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6840
  call void @llvm.dbg.declare(metadata ptr %shadow_plane_state, metadata !6836, metadata !DIExpression()), !dbg !6841
  %0 = load ptr, ptr %plane_state.addr, align 8, !dbg !6842
  %call = call ptr @to_drm_shadow_plane_state(ptr noundef %0) #14, !dbg !6843
  store ptr %call, ptr %shadow_plane_state, align 8, !dbg !6841
  call void @llvm.lifetime.start.p0(i64 8, ptr %fb) #13, !dbg !6844
  call void @llvm.dbg.declare(metadata ptr %fb, metadata !6837, metadata !DIExpression()), !dbg !6845
  %1 = load ptr, ptr %plane_state.addr, align 8, !dbg !6846
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2, !dbg !6847
  %2 = load ptr, ptr %fb1, align 8, !dbg !6847
  store ptr %2, ptr %fb, align 8, !dbg !6845
  %3 = load ptr, ptr %fb, align 8, !dbg !6848
  %tobool = icmp ne ptr %3, null, !dbg !6848
  br i1 %tobool, label %if.end, label %if.then, !dbg !6850

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6851

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fb, align 8, !dbg !6852
  %5 = load ptr, ptr %shadow_plane_state, align 8, !dbg !6853
  %map = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %5, i32 0, i32 1, !dbg !6854
  %arraydecay = getelementptr inbounds [4 x %struct.iosys_map], ptr %map, i64 0, i64 0, !dbg !6853
  call void @drm_gem_fb_vunmap(ptr noundef %4, ptr noundef %arraydecay) #14, !dbg !6855
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6856
  br label %cleanup, !dbg !6856

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fb) #13, !dbg !6856
  call void @llvm.lifetime.end.p0(i64 8, ptr %shadow_plane_state) #13, !dbg !6856
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6856

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6857 dso_local void @drm_gem_fb_vunmap(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_simple_kms_begin_shadow_fb_access(ptr noundef %pipe, ptr noundef %plane_state) #0 align 16 !dbg !6860 {
entry:
  %pipe.addr = alloca ptr, align 8
  %plane_state.addr = alloca ptr, align 8
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !6922, metadata !DIExpression()), !dbg !6924
  store ptr %plane_state, ptr %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane_state.addr, metadata !6923, metadata !DIExpression()), !dbg !6925
  %0 = load ptr, ptr %pipe.addr, align 8, !dbg !6926
  %plane = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, !dbg !6927
  %1 = load ptr, ptr %plane_state.addr, align 8, !dbg !6928
  %call = call i32 @drm_gem_begin_shadow_fb_access(ptr noundef %plane, ptr noundef %1) #14, !dbg !6929
  ret i32 %call, !dbg !6930
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_simple_kms_end_shadow_fb_access(ptr noundef %pipe, ptr noundef %plane_state) #0 align 16 !dbg !6931 {
entry:
  %pipe.addr = alloca ptr, align 8
  %plane_state.addr = alloca ptr, align 8
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !6933, metadata !DIExpression()), !dbg !6935
  store ptr %plane_state, ptr %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane_state.addr, metadata !6934, metadata !DIExpression()), !dbg !6936
  %0 = load ptr, ptr %pipe.addr, align 8, !dbg !6937
  %plane = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, !dbg !6938
  %1 = load ptr, ptr %plane_state.addr, align 8, !dbg !6939
  call void @drm_gem_end_shadow_fb_access(ptr noundef %plane, ptr noundef %1) #14, !dbg !6940
  ret void, !dbg !6941
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_simple_kms_reset_shadow_plane(ptr noundef %pipe) #0 align 16 !dbg !6942 {
entry:
  %pipe.addr = alloca ptr, align 8
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !6944, metadata !DIExpression()), !dbg !6945
  %0 = load ptr, ptr %pipe.addr, align 8, !dbg !6946
  %plane = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, !dbg !6947
  call void @drm_gem_reset_shadow_plane(ptr noundef %plane) #14, !dbg !6948
  ret void, !dbg !6949
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_gem_simple_kms_duplicate_shadow_plane_state(ptr noundef %pipe) #0 align 16 !dbg !6950 {
entry:
  %pipe.addr = alloca ptr, align 8
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !6952, metadata !DIExpression()), !dbg !6953
  %0 = load ptr, ptr %pipe.addr, align 8, !dbg !6954
  %plane = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, !dbg !6955
  %call = call ptr @drm_gem_duplicate_shadow_plane_state(ptr noundef %plane) #14, !dbg !6956
  ret ptr %call, !dbg !6957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_simple_kms_destroy_shadow_plane_state(ptr noundef %pipe, ptr noundef %plane_state) #0 align 16 !dbg !6958 {
entry:
  %pipe.addr = alloca ptr, align 8
  %plane_state.addr = alloca ptr, align 8
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !6960, metadata !DIExpression()), !dbg !6962
  store ptr %plane_state, ptr %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane_state.addr, metadata !6961, metadata !DIExpression()), !dbg !6963
  %0 = load ptr, ptr %pipe.addr, align 8, !dbg !6964
  %plane = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, !dbg !6965
  %1 = load ptr, ptr %plane_state.addr, align 8, !dbg !6966
  call void @drm_gem_destroy_shadow_plane_state(ptr noundef %plane, ptr noundef %1) #14, !dbg !6967
  ret void, !dbg !6968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #3 align 16 !dbg !6969 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6971, metadata !DIExpression()), !dbg !6972
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6973
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6974
  call void @refcount_inc(ptr noundef %refcount) #14, !dbg !6975
  ret void, !dbg !6976
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !6977 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6982, metadata !DIExpression()), !dbg !6983
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6984
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !6985
  ret void, !dbg !6986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6987 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6991, metadata !DIExpression()), !dbg !6993
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6992, metadata !DIExpression()), !dbg !6994
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6995
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6996
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !6997
  ret void, !dbg !6998
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6999 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7003, metadata !DIExpression()), !dbg !7007
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7004, metadata !DIExpression()), !dbg !7008
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7005, metadata !DIExpression()), !dbg !7009
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !7010
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7006, metadata !DIExpression()), !dbg !7011
  %0 = load i32, ptr %i.addr, align 4, !dbg !7012
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7013
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7014
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !7015
  store i32 %call, ptr %old, align 4, !dbg !7011
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7016
  %tobool = icmp ne ptr %2, null, !dbg !7016
  br i1 %tobool, label %if.then, label %if.end, !dbg !7018

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7019
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7020
  store i32 %3, ptr %4, align 4, !dbg !7021
  br label %if.end, !dbg !7022

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7023
  %tobool1 = icmp ne i32 %5, 0, !dbg !7023
  %lnot = xor i1 %tobool1, true, !dbg !7023
  %lnot2 = xor i1 %lnot, true, !dbg !7023
  %lnot3 = xor i1 %lnot2, true, !dbg !7023
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7023
  %conv = sext i32 %lnot.ext to i64, !dbg !7023
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7023
  %tobool4 = icmp ne i64 %expval, 0, !dbg !7023
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !7025

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !7026
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !7027
  br label %if.end18, !dbg !7027

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7028
  %cmp = icmp slt i32 %7, 0, !dbg !7028
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7028

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !7028
  %9 = load i32, ptr %i.addr, align 4, !dbg !7028
  %add = add i32 %8, %9, !dbg !7028
  %cmp7 = icmp slt i32 %add, 0, !dbg !7028
  br label %lor.end, !dbg !7028

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !7028
  %lnot11 = xor i1 %lnot9, true, !dbg !7028
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !7028
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !7028
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !7028
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !7028
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7030

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7031
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !7032
  br label %if.end17, !dbg !7032

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !7033
  ret void, !dbg !7033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !7034 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7040, metadata !DIExpression()), !dbg !7042
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7041, metadata !DIExpression()), !dbg !7043
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7044
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !7045
  %1 = load i32, ptr %i.addr, align 4, !dbg !7046
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7047
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !7048
  ret i32 %call, !dbg !7049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7050 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7053 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7061, metadata !DIExpression()), !dbg !7063
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7062, metadata !DIExpression()), !dbg !7064
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7065
  %1 = load i64, ptr %size.addr, align 8, !dbg !7066
  %conv = trunc i64 %1 to i32, !dbg !7066
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !7067
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7068
  %3 = load i64, ptr %size.addr, align 8, !dbg !7068
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !7068
  ret void, !dbg !7069
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !7070 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7073, metadata !DIExpression()), !dbg !7075
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7074, metadata !DIExpression()), !dbg !7076
  %0 = load i32, ptr %i.addr, align 4, !dbg !7077
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7078
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !7079
  ret i32 %call, !dbg !7080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7081 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7086, metadata !DIExpression()), !dbg !7088
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7087, metadata !DIExpression()), !dbg !7089
  ret i1 true, !dbg !7090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7091 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7096, metadata !DIExpression()), !dbg !7099
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7097, metadata !DIExpression()), !dbg !7100
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7098, metadata !DIExpression()), !dbg !7101
  ret void, !dbg !7102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !7103 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7106, metadata !DIExpression()), !dbg !7110
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7107, metadata !DIExpression()), !dbg !7111
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !7112
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7108, metadata !DIExpression()), !dbg !7112
  %0 = load i32, ptr %i.addr, align 4, !dbg !7112
  store i32 %0, ptr %__ret, align 4, !dbg !7112
  %1 = load i32, ptr %__ret, align 4, !dbg !7112
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7112
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7112
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !7112, !srcloc !7113
  store i32 %3, ptr %__ret, align 4, !dbg !7112
  %4 = load i32, ptr %__ret, align 4, !dbg !7112
  store i32 %4, ptr %tmp, align 4, !dbg !7112
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !7114
  %5 = load i32, ptr %tmp, align 4, !dbg !7112
  ret i32 %5, !dbg !7115
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !7116 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7118, metadata !DIExpression()), !dbg !7123
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7119, metadata !DIExpression()), !dbg !7124
  %0 = load i64, ptr %size.addr, align 8, !dbg !7125
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7126
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7127

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7128
  %tobool = icmp ne i64 %2, 0, !dbg !7128
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7129

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !7130
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7120, metadata !DIExpression()), !dbg !7131
  %3 = load i64, ptr %size.addr, align 8, !dbg !7132
  %cmp = icmp ugt i64 %3, 8192, !dbg !7134
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7135

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7136
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7137
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !7138
  store ptr %call, ptr %retval, align 8, !dbg !7139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7139

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7140
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !7140
  store i32 %call2, ptr %index, align 4, !dbg !7141
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7142
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7143
  %9 = ptrtoint ptr %8 to i64, !dbg !7143
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !7144
  %idxprom = zext i32 %call3 to i64, !dbg !7145
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7145
  %10 = load i32, ptr %index, align 4, !dbg !7146
  %idxprom4 = zext i32 %10 to i64, !dbg !7145
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7145
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7145
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7147
  %13 = load i64, ptr %size.addr, align 8, !dbg !7148
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !7149
  store ptr %call6, ptr %retval, align 8, !dbg !7150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7150

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !7151
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7152
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7153
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !7154
  store ptr %call8, ptr %retval, align 8, !dbg !7155
  br label %return, !dbg !7155

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7156
  ret ptr %16, !dbg !7156
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7157 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !7158 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7162, metadata !DIExpression()), !dbg !7164
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7163, metadata !DIExpression()), !dbg !7165
  %0 = load i64, ptr %size.addr, align 8, !dbg !7166
  %tobool = icmp ne i64 %0, 0, !dbg !7166
  br i1 %tobool, label %if.end, label %if.then, !dbg !7168

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7169
  br label %return, !dbg !7169

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7170
  %cmp = icmp ule i64 %1, 8, !dbg !7172
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7173

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7174
  br label %return, !dbg !7174

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7175
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7177
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7178

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7179
  %cmp4 = icmp ule i64 %3, 96, !dbg !7180
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7181

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7182
  br label %return, !dbg !7182

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7183
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7185
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7186

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7187
  %cmp9 = icmp ule i64 %5, 192, !dbg !7188
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7189

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7190
  br label %return, !dbg !7190

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7191
  %cmp12 = icmp ule i64 %6, 8, !dbg !7193
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7194

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7195
  br label %return, !dbg !7195

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7196
  %cmp15 = icmp ule i64 %7, 16, !dbg !7198
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7199

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7200
  br label %return, !dbg !7200

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7201
  %cmp18 = icmp ule i64 %8, 32, !dbg !7203
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7204

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7205
  br label %return, !dbg !7205

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7206
  %cmp21 = icmp ule i64 %9, 64, !dbg !7208
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7209

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7210
  br label %return, !dbg !7210

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7211
  %cmp24 = icmp ule i64 %10, 128, !dbg !7213
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7214

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7215
  br label %return, !dbg !7215

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7216
  %cmp27 = icmp ule i64 %11, 256, !dbg !7218
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7219

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7220
  br label %return, !dbg !7220

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7221
  %cmp30 = icmp ule i64 %12, 512, !dbg !7223
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7224

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7225
  br label %return, !dbg !7225

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7226
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7228
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7229

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7230
  br label %return, !dbg !7230

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7231
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7233
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7234

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7235
  br label %return, !dbg !7235

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7236
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7238
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7239

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7240
  br label %return, !dbg !7240

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7241
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7243
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7244

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7245
  br label %return, !dbg !7245

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7246
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7248
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7249

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7250
  br label %return, !dbg !7250

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7251
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7253
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7254

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7255
  br label %return, !dbg !7255

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7256
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7258
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7259

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7260
  br label %return, !dbg !7260

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7261
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7263
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7264

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7265
  br label %return, !dbg !7265

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7266
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7268
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7269

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7270
  br label %return, !dbg !7270

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7271
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7273
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7274

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7275
  br label %return, !dbg !7275

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7276
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7278
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7279

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7280
  br label %return, !dbg !7280

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7281
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7283
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7284

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7285
  br label %return, !dbg !7285

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7286, !range !7288, !noundef !1106
  %tobool69 = trunc i8 %25 to i1, !dbg !7286
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7289

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7290

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_178() #17, !dbg !7291, !srcloc !7294
  unreachable, !dbg !7291

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7295

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7296

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7297

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7299

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7297

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !7301, !srcloc !7303
  br label %do.end75, !dbg !7301

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7297

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7304
  br label %return, !dbg !7304

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7305
  ret i32 %26, !dbg !7305
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7306 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !7309 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7313, metadata !DIExpression()), !dbg !7315
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7314, metadata !DIExpression()), !dbg !7316
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7317
  %and = and i32 %0, 17, !dbg !7317
  %cmp = icmp eq i32 %and, 0, !dbg !7317
  %lnot = xor i1 %cmp, true, !dbg !7317
  %lnot1 = xor i1 %lnot, true, !dbg !7317
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7317
  %conv = sext i32 %lnot.ext to i64, !dbg !7317
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7317
  %tobool = icmp ne i64 %expval, 0, !dbg !7317
  br i1 %tobool, label %if.then, label %if.end, !dbg !7319

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7320
  br label %return, !dbg !7320

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7321
  %and2 = and i32 %1, 1, !dbg !7323
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7323
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7324

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7325
  br label %return, !dbg !7325

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7326
  br label %return, !dbg !7326

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7328
  ret i32 %2, !dbg !7328
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7329 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7330 dso_local void @__compiletime_assert_178() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #3 align 16 !dbg !7331 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !7335, metadata !DIExpression()), !dbg !7337
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !7336, metadata !DIExpression()), !dbg !7338
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !7339
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !7341
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #14, !dbg !7342
  br i1 %call, label %if.then, label %if.end, !dbg !7343

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !7344
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !7346
  call void %1(ptr noundef %2) #14, !dbg !7344
  store i32 1, ptr %retval, align 4, !dbg !7347
  br label %return, !dbg !7347

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7348
  br label %return, !dbg !7348

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !7349
  ret i32 %3, !dbg !7349
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !7350 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7354, metadata !DIExpression()), !dbg !7355
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7356
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !7357
  ret i1 %call, !dbg !7358
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7359 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7363, metadata !DIExpression()), !dbg !7365
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7364, metadata !DIExpression()), !dbg !7366
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7367
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7368
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !7369
  ret i1 %call, !dbg !7370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7371 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7375, metadata !DIExpression()), !dbg !7379
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7376, metadata !DIExpression()), !dbg !7380
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7377, metadata !DIExpression()), !dbg !7381
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !7382
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7378, metadata !DIExpression()), !dbg !7383
  %0 = load i32, ptr %i.addr, align 4, !dbg !7384
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7385
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7386
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !7387
  store i32 %call, ptr %old, align 4, !dbg !7383
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7388
  %tobool = icmp ne ptr %2, null, !dbg !7388
  br i1 %tobool, label %if.then, label %if.end, !dbg !7390

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7391
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7392
  store i32 %3, ptr %4, align 4, !dbg !7393
  br label %if.end, !dbg !7394

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7395
  %6 = load i32, ptr %i.addr, align 4, !dbg !7397
  %cmp = icmp eq i32 %5, %6, !dbg !7398
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7399

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7400

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7402

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7404

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7404

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7402

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7406

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7408

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7408

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !7406, !srcloc !7410
  br label %do.cond7, !dbg !7406

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7406

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7402

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7402

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7411

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7412
  %cmp12 = icmp slt i32 %7, 0, !dbg !7412
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7412

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7412
  %9 = load i32, ptr %i.addr, align 4, !dbg !7412
  %sub = sub i32 %8, %9, !dbg !7412
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7412
  br label %lor.end, !dbg !7412

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7412
  %lnot14 = xor i1 %lnot, true, !dbg !7412
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7412
  %conv = sext i32 %lnot.ext to i64, !dbg !7412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7412
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7412
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7414

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7415
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !7416
  br label %if.end17, !dbg !7416

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7417

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !7418
  %12 = load i1, ptr %retval, align 1, !dbg !7418
  ret i1 %12, !dbg !7418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !7419 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7421, metadata !DIExpression()), !dbg !7423
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7422, metadata !DIExpression()), !dbg !7424
  br label %do.body, !dbg !7425

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7426

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7428
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !7429
  %1 = load i32, ptr %i.addr, align 4, !dbg !7430
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7431
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !7432
  ret i32 %call, !dbg !7433
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !7434 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7436, metadata !DIExpression()), !dbg !7438
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7437, metadata !DIExpression()), !dbg !7439
  %0 = load i32, ptr %i.addr, align 4, !dbg !7440
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7441
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !7442
  ret i32 %call, !dbg !7443
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !7444 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7446, metadata !DIExpression()), !dbg !7450
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7447, metadata !DIExpression()), !dbg !7451
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !7452
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7448, metadata !DIExpression()), !dbg !7452
  %0 = load i32, ptr %i.addr, align 4, !dbg !7452
  %sub = sub i32 0, %0, !dbg !7452
  store i32 %sub, ptr %__ret, align 4, !dbg !7452
  %1 = load i32, ptr %__ret, align 4, !dbg !7452
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7452
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7452
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !7452, !srcloc !7453
  store i32 %3, ptr %__ret, align 4, !dbg !7452
  %4 = load i32, ptr %__ret, align 4, !dbg !7452
  store i32 %4, ptr %tmp, align 4, !dbg !7452
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !7454
  %5 = load i32, ptr %tmp, align 4, !dbg !7452
  ret i32 %5, !dbg !7455
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6464, !6465, !6466, !6467, !6468, !6469, !6470, !6471}
!llvm.ident = !{!6472}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_plane_helper_prepare_fb316", scope: !2, file: !3, line: 198, type: !353, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_gem_atomic_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_gem_atomic_helper\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_gem_atomic_helper.ll drivers/gpu/drm/drm_gem_atomic_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !352, globals: !6432, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_gem_atomic_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c38bb71630c13ee44aa9c10e6e40755")
!4 = !{!5, !13, !18, !23, !29, !37, !53, !60, !68, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !184, !193, !200, !205, !212, !218, !223, !231, !235, !251, !271, !277, !283, !290, !300, !305, !312, !317, !322, !329, !337, !342}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !142, line: 91, baseType: !109, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!144 = !DIEnumerator(name: "MODE_OK", value: 0)
!145 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!146 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!147 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!148 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!149 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!150 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!151 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!152 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!153 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!154 = !DIEnumerator(name: "MODE_MEM", value: 10)
!155 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!156 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!157 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!158 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!159 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!160 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!161 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!162 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!163 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!164 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!165 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!166 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!167 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!168 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!169 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!170 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!171 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!172 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!173 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!174 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!175 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!176 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!177 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!178 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!179 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!180 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!181 = !DIEnumerator(name: "MODE_STALE", value: -3)
!182 = !DIEnumerator(name: "MODE_BAD", value: -2)
!183 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !185, line: 96, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!188 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!189 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!190 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!191 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!192 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !194, line: 5, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!195 = !{!196, !197, !198, !199}
!196 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!197 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!198 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!199 = !DIEnumerator(name: "DMA_NONE", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !201, line: 61, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!202 = !{!203, !204}
!203 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!204 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !206, line: 30, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!207 = !{!208, !209, !210, !211}
!208 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!209 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!210 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!211 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !213, line: 98, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!216 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!217 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !213, line: 63, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "connector_status_connected", value: 1)
!221 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!222 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !213, line: 137, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230}
!225 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!226 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!227 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!228 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!229 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!230 = !DIEnumerator(name: "SubPixelNone", value: 5)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !213, line: 337, baseType: !7, size: 32, elements: !232)
!232 = !{!233, !234}
!233 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!234 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !236, line: 387, baseType: !7, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!238 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!239 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!240 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!241 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!242 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!243 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!244 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!245 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!246 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!247 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!248 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!249 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!250 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !213, line: 502, baseType: !7, size: 32, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!253 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!254 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!255 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!256 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!257 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!258 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!259 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!260 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!261 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!262 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!263 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!264 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!265 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!266 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!267 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!268 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!269 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!270 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !213, line: 421, baseType: !7, size: 32, elements: !272)
!272 = !{!273, !274, !275, !276}
!273 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!274 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!275 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!276 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !213, line: 50, baseType: !7, size: 32, elements: !278)
!278 = !{!279, !280, !281, !282}
!279 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!280 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!281 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!282 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !213, line: 363, baseType: !109, size: 32, elements: !284)
!284 = !{!285, !286, !287, !288, !289}
!285 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!286 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!287 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!288 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!289 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !213, line: 156, baseType: !7, size: 32, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299}
!292 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!293 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!294 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!295 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!296 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!297 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!298 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!299 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !301, line: 38, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!302 = !{!303, !304}
!303 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!304 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !306, line: 78, baseType: !7, size: 32, elements: !307)
!306 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!307 = !{!308, !309, !310, !311}
!308 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!309 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!310 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!311 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !306, line: 85, baseType: !7, size: 32, elements: !313)
!313 = !{!314, !315, !316}
!314 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!315 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!316 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !301, line: 563, baseType: !7, size: 32, elements: !318)
!318 = !{!319, !320, !321}
!319 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!320 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!321 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_resv_usage", file: !323, line: 71, baseType: !7, size: 32, elements: !324)
!323 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!324 = !{!325, !326, !327, !328}
!325 = !DIEnumerator(name: "DMA_RESV_USAGE_KERNEL", value: 0)
!326 = !DIEnumerator(name: "DMA_RESV_USAGE_WRITE", value: 1)
!327 = !DIEnumerator(name: "DMA_RESV_USAGE_READ", value: 2)
!328 = !DIEnumerator(name: "DMA_RESV_USAGE_BOOKKEEP", value: 3)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !330, line: 119, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!331 = !{!332, !333, !334, !335, !336}
!332 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!333 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!334 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!335 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!336 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!337 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !338, line: 10, baseType: !7, size: 32, elements: !339)
!338 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!339 = !{!340, !341}
!340 = !DIEnumerator(name: "false", value: 0)
!341 = !DIEnumerator(name: "true", value: 1)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !343, line: 364, baseType: !7, size: 32, elements: !344)
!343 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!344 = !{!345, !346, !347, !348, !349, !350, !351}
!345 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!346 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!347 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!348 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!349 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!350 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!351 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!352 = !{!353, !354, !356, !357}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !355, line: 154, baseType: !7)
!355 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!356 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_shadow_plane_state", file: !359, line: 48, size: 2304, elements: !360)
!359 = !DIFile(filename: "./include/drm/drm_gem_atomic_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49a4e150d24ef5b51ba801480f95831a")
!360 = !{!361, !6429, !6431}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !358, file: !359, line: 50, baseType: !362, size: 1280)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !301, line: 52, size: 1280, elements: !363)
!363 = !{!364, !6396, !6397, !6398, !6399, !6400, !6401, !6402, !6403, !6404, !6405, !6406, !6407, !6408, !6409, !6410, !6411, !6412, !6413, !6414, !6415, !6416, !6424, !6425, !6426, !6427, !6428}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !362, file: !301, line: 54, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !301, line: 603, size: 5312, elements: !367)
!367 = !{!368, !5702, !5703, !5704, !5705, !5706, !5707, !5709, !5710, !5711, !5712, !5713, !6325, !6326, !6327, !6381, !6382, !6383, !6384, !6388, !6389, !6390, !6391, !6392, !6393, !6394, !6395}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !366, file: !301, line: 605, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !206, line: 50, size: 12736, elements: !371)
!371 = !{!372, !373, !386, !4863, !4869, !4874, !4875, !4887, !4888, !4889, !4890, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5685, !5686, !5687, !5693, !5696, !5697, !5700, !5701}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !370, file: !206, line: 52, baseType: !109, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !370, file: !206, line: 55, baseType: !374, size: 32, offset: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !375, line: 19, size: 32, elements: !376)
!375 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !374, file: !375, line: 20, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !330, line: 113, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !330, line: 111, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !379, file: !330, line: 112, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !355, line: 174, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 172, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !383, file: !355, line: 173, baseType: !109, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !370, file: !206, line: 58, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !389)
!389 = !{!390, !4417, !4418, !4421, !4422, !4475, !4545, !4546, !4547, !4548, !4549, !4556, !4648, !4661, !4671, !4675, !4677, !4678, !4679, !4683, !4690, !4691, !4694, !4697, !4701, !4805, !4806, !4807, !4808, !4809, !4810, !4840, !4841, !4842, !4845, !4848, !4857, !4858, !4859, !4860, !4861, !4862}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !388, file: !94, line: 706, baseType: !391, size: 512)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !392, line: 64, size: 512, elements: !393)
!392 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!393 = !{!394, !398, !404, !406, !491, !4319, !4411, !4412, !4413, !4414, !4415, !4416}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !392, line: 65, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !391, file: !392, line: 66, baseType: !399, size: 128, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !355, line: 190, size: 128, elements: !400)
!400 = !{!401, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !355, line: 191, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !399, file: !355, line: 191, baseType: !402, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !391, file: !392, line: 67, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !391, file: !392, line: 68, baseType: !407, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !392, line: 168, size: 768, elements: !409)
!409 = !{!410, !411, !450, !451}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !408, file: !392, line: 169, baseType: !399, size: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !408, file: !392, line: 170, baseType: !412, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !413, line: 29, baseType: !414)
!413 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !413, line: 17, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !413, line: 18, baseType: !417, size: 32)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !413, line: 18, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !417, file: !413, line: 19, baseType: !420, size: 32)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !421, line: 14, size: 32, elements: !422)
!421 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !420, file: !421, line: 15, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !425, line: 44, baseType: !426)
!425 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !425, line: 14, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !425, line: 15, baseType: !429, size: 32)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !425, line: 15, size: 32, elements: !430)
!430 = !{!431, !432, !442}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !429, file: !425, line: 16, baseType: !382, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !425, line: 24, baseType: !433, size: 16)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !425, line: 24, size: 16, elements: !434)
!434 = !{!435, !441}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !433, file: !425, line: 25, baseType: !436, size: 8)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !437, line: 17, baseType: !438)
!437 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !439, line: 21, baseType: !440)
!439 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!440 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !433, file: !425, line: 26, baseType: !436, size: 8, offset: 8)
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !425, line: 28, baseType: !443, size: 32)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !425, line: 28, size: 32, elements: !444)
!444 = !{!445, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !443, file: !425, line: 29, baseType: !446, size: 16)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !437, line: 19, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !439, line: 24, baseType: !448)
!448 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !443, file: !425, line: 30, baseType: !446, size: 16, offset: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !408, file: !392, line: 171, baseType: !391, size: 512, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !408, file: !392, line: 172, baseType: !452, size: 64, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !392, line: 133, size: 192, elements: !455)
!455 = !{!456, !463, !468}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !454, file: !392, line: 134, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!109, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !392, line: 135, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!395, !461}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !454, file: !392, line: 136, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!109, !461, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !392, line: 125, size: 20736, elements: !475)
!475 = !{!476, !481, !485, !486, !490}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !474, file: !392, line: 126, baseType: !477, size: 192)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 192, elements: !479)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!479 = !{!480}
!480 = !DISubrange(count: 3)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !474, file: !392, line: 127, baseType: !482, size: 4096, offset: 192)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 4096, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !474, file: !392, line: 128, baseType: !109, size: 32, offset: 4288)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !474, file: !392, line: 129, baseType: !487, size: 16384, offset: 4320)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 16384, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 2048)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !474, file: !392, line: 130, baseType: !109, size: 32, offset: 20704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !391, file: !392, line: 69, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !392, line: 116, size: 384, elements: !495)
!495 = !{!496, !500, !528, !4281, !4309, !4313}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !494, file: !392, line: 117, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !405}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !494, file: !392, line: 118, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !504, line: 254, size: 128, elements: !505)
!504 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!505 = !{!506, !521}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !503, file: !504, line: 255, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !405, !515, !478}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !355, line: 66, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !512, line: 73, baseType: !513)
!512 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !512, line: 15, baseType: !514)
!514 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !504, line: 30, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !504, line: 31, baseType: !395, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !516, file: !504, line: 32, baseType: !520, size: 16, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !355, line: 24, baseType: !448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !503, file: !504, line: 256, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!510, !405, !515, !395, !525}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !355, line: 61, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !512, line: 72, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !512, line: 16, baseType: !356)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !494, file: !392, line: 119, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !504, line: 84, size: 320, elements: !533)
!533 = !{!534, !535, !539, !4277, !4279}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !532, file: !504, line: 85, baseType: !395, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !532, file: !504, line: 86, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!520, !405, !515, !109}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !532, file: !504, line: 88, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!520, !405, !543, !109}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !504, line: 175, size: 512, elements: !545)
!545 = !{!546, !547, !548, !549, !4268, !4272, !4273}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !544, file: !504, line: 176, baseType: !516, size: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !544, file: !504, line: 177, baseType: !525, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !544, file: !504, line: 178, baseType: !353, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !544, file: !504, line: 179, baseType: !550, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !555)
!555 = !{!556, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4262, !4263, !4264, !4265, !4266, !4267}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !554, file: !14, line: 473, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !559)
!559 = !{!560, !561, !562, !570, !571, !578, !579, !582, !583, !4041, !4042, !4043, !4044, !4045, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4085, !4088, !4089, !4090, !4099, !4100, !4101, !4102}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !558, file: !14, line: 642, baseType: !520, size: 16)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !558, file: !14, line: 643, baseType: !448, size: 16, offset: 16)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !558, file: !14, line: 644, baseType: !563, size: 32, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !564, line: 23, baseType: !565)
!564 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 21, size: 32, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !565, file: !564, line: 22, baseType: !568, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !355, line: 37, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !512, line: 49, baseType: !7)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !558, file: !14, line: 645, baseType: !399, size: 128, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !558, file: !14, line: 646, baseType: !572, size: 32, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !564, line: 28, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 26, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !573, file: !564, line: 27, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !355, line: 38, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !512, line: 50, baseType: !7)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !558, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !558, file: !14, line: 650, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !558, file: !14, line: 651, baseType: !580, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !558, file: !14, line: 654, baseType: !584, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !587)
!587 = !{!588, !3875, !3885, !3889, !3893, !3897, !3901, !3905, !3909, !3913, !3917, !3918, !3922, !3926, !3963, !3992, !3996, !4002, !4006, !4010, !4014, !4018, !4022, !4028, !4032}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !586, file: !14, line: 1967, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!592, !557, !592, !7}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !594, line: 82, size: 1536, elements: !595)
!594 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!595 = !{!596, !597, !607, !615, !616, !636, !637, !641, !654, !3859, !3860, !3861, !3862, !3867, !3868, !3869}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !593, file: !594, line: 84, baseType: !7, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !593, file: !594, line: 85, baseType: !598, size: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !599, line: 275, baseType: !600)
!599 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !599, line: 275, size: 32, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !600, file: !599, line: 275, baseType: !603, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !599, line: 69, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !599, line: 64, size: 32, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !604, file: !599, line: 65, baseType: !7, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !593, file: !594, line: 86, baseType: !608, size: 128, offset: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !609, line: 38, size: 128, elements: !610)
!609 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!610 = !{!611, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !609, line: 39, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !608, file: !609, line: 39, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !593, file: !594, line: 87, baseType: !592, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !593, file: !594, line: 88, baseType: !617, size: 128, offset: 256)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !594, line: 49, size: 128, elements: !618)
!618 = !{!619, !633}
!619 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !594, line: 50, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !594, line: 50, size: 64, elements: !621)
!621 = !{!622, !629}
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !594, line: 51, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !594, line: 51, size: 64, elements: !624)
!624 = !{!625, !628}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !623, file: !594, line: 52, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !437, line: 21, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !439, line: 27, baseType: !7)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !623, file: !594, line: 52, baseType: !626, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !620, file: !594, line: 54, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !437, line: 23, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !439, line: 31, baseType: !632)
!632 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !594, line: 56, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !593, file: !594, line: 89, baseType: !557, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !593, file: !594, line: 91, baseType: !638, size: 256, offset: 448)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 256, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !593, file: !594, line: 94, baseType: !642, size: 64, offset: 704)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !643, line: 25, size: 64, elements: !644)
!643 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !643, line: 26, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !643, line: 26, size: 64, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !646, file: !643, line: 28, baseType: !631, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !643, line: 30, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !643, line: 30, size: 64, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !650, file: !643, line: 31, baseType: !412, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !650, file: !643, line: 32, baseType: !109, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !593, file: !594, line: 95, baseType: !655, size: 64, offset: 768)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !594, line: 128, size: 1024, align: 512, elements: !658)
!658 = !{!659, !663, !664, !671, !677, !681, !685, !689, !690, !694, !698, !3849, !3853}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !657, file: !594, line: 129, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!109, !592, !7}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !657, file: !594, line: 130, baseType: !660, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !657, file: !594, line: 131, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!109, !668, !670}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !657, file: !594, line: 132, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!109, !668, !7, !395, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !657, file: !594, line: 134, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!109, !668}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !657, file: !594, line: 135, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!109, !592}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !657, file: !594, line: 136, baseType: !686, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !592}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !657, file: !594, line: 137, baseType: !686, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !657, file: !594, line: 138, baseType: !691, size: 64, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !592, !557}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !657, file: !594, line: 139, baseType: !695, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!478, !592, !478, !109}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !657, file: !594, line: 140, baseType: !699, size: 64, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !3848}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !704, line: 70, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!705 = !{!706, !707, !3844, !3845}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !703, file: !704, line: 71, baseType: !592, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !703, file: !704, line: 72, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !710)
!710 = !{!711, !712, !715, !716, !717, !721, !1200, !3549, !3589, !3674, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3691, !3695, !3696, !3699, !3702, !3705, !3708, !3709, !3710, !3751, !3777, !3778, !3779, !3780, !3781, !3782, !3785, !3787, !3794, !3795, !3796, !3797, !3798, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !709, file: !14, line: 1191, baseType: !399, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !709, file: !14, line: 1192, baseType: !713, size: 32, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !355, line: 21, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !355, line: 18, baseType: !626)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !709, file: !14, line: 1193, baseType: !440, size: 8, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !709, file: !14, line: 1194, baseType: !356, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !709, file: !14, line: 1195, baseType: !718, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !355, line: 52, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !512, line: 88, baseType: !720)
!720 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !709, file: !14, line: 1196, baseType: !722, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !724)
!724 = !{!725, !726, !727, !733, !737, !741, !745, !1185, !1186, !1190, !1192, !1193, !1194, !1196, !1197, !1198, !1199}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !723, file: !14, line: 2367, baseType: !395, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !723, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !723, file: !14, line: 2376, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!109, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !704, line: 21, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !723, file: !14, line: 2377, baseType: !734, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !723, file: !14, line: 2378, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!592, !722, !109, !395, !353}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !723, file: !14, line: 2380, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !708}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !723, file: !14, line: 2381, baseType: !746, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !748)
!748 = !{!749, !750, !751, !755, !777, !803, !804, !805, !806, !810, !815, !816, !836, !892, !893, !894, !895, !896, !899, !900, !901, !909, !913, !940, !961, !962, !963, !964, !973, !996, !997, !1000, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1014, !1015, !1143, !1151, !1152, !1153, !1155, !1159, !1160, !1164, !1165, !1166, !1167, !1169, !1170, !1171, !1178, !1179, !1180, !1184}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !747, file: !6, line: 403, baseType: !5, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !747, file: !6, line: 406, baseType: !399, size: 128, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !747, file: !6, line: 409, baseType: !752, size: 448, offset: 192)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 448, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 56)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !747, file: !6, line: 417, baseType: !756, size: 768, offset: 640)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !757)
!757 = !{!758, !759, !760, !761, !764}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !756, file: !6, line: 46, baseType: !391, size: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !756, file: !6, line: 47, baseType: !746, size: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !756, file: !6, line: 48, baseType: !405, size: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !756, file: !6, line: 49, baseType: !762, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !756, file: !6, line: 50, baseType: !765, size: 64, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !767, line: 26, size: 256, elements: !768)
!767 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !766, file: !767, line: 27, baseType: !7, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !766, file: !767, line: 28, baseType: !771, size: 192, offset: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !772, line: 43, size: 192, elements: !773)
!772 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!773 = !{!774, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !771, file: !772, line: 44, baseType: !775, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !421, line: 23, baseType: !420)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !771, file: !772, line: 45, baseType: !399, size: 128, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !747, file: !6, line: 418, baseType: !778, size: 64, offset: 1408)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !780)
!780 = !{!781, !782, !787, !791, !795, !799}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !779, file: !6, line: 54, baseType: !516, size: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !779, file: !6, line: 55, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!510, !778, !786, !478}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !779, file: !6, line: 57, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!510, !778, !786, !395, !525}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !779, file: !6, line: 59, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !746, !395}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !779, file: !6, line: 60, baseType: !796, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!109, !746}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !779, file: !6, line: 61, baseType: !800, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !746}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !747, file: !6, line: 419, baseType: !395, size: 64, offset: 1472)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !747, file: !6, line: 420, baseType: !395, size: 64, offset: 1536)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !747, file: !6, line: 421, baseType: !405, size: 64, offset: 1600)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !747, file: !6, line: 424, baseType: !807, size: 64, offset: 1664)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !747, file: !6, line: 425, baseType: !811, size: 64, offset: 1728)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !437, line: 20, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !439, line: 26, baseType: !109)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !747, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !747, file: !6, line: 435, baseType: !817, size: 256, offset: 1856)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !818, line: 66, size: 256, elements: !819)
!818 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!819 = !{!820, !829, !830, !835}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !817, file: !818, line: 67, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !822, line: 13, baseType: !823)
!822 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !355, line: 181, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 179, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !824, file: !355, line: 180, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !437, line: 22, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !439, line: 30, baseType: !720)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !817, file: !818, line: 68, baseType: !775, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !817, file: !818, line: 70, baseType: !831, size: 32, offset: 96)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !832, line: 15, size: 32, elements: !833)
!832 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !831, file: !832, line: 20, baseType: !382, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !817, file: !818, line: 72, baseType: !399, size: 128, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !747, file: !6, line: 437, baseType: !837, size: 64, offset: 2112)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !839, line: 69, size: 320, elements: !840)
!839 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!840 = !{!841, !842, !843, !863, !865, !869, !870}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !838, file: !839, line: 70, baseType: !395, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !838, file: !839, line: 71, baseType: !746, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !838, file: !839, line: 72, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !839, line: 47, size: 256, elements: !847)
!847 = !{!848, !849, !855, !859}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !839, line: 49, baseType: !7, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !846, file: !839, line: 51, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!109, !395, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !846, file: !839, line: 53, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!109, !478, !853}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !846, file: !839, line: 55, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !353}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !838, file: !839, line: 73, baseType: !864, size: 16, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !838, file: !839, line: 74, baseType: !866, size: 8, offset: 208)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !437, line: 16, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !439, line: 20, baseType: !868)
!868 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !839, line: 75, baseType: !436, size: 8, offset: 216)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !839, line: 76, baseType: !871, size: 64, offset: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !839, line: 76, size: 64, elements: !872)
!872 = !{!873, !874, !881}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !871, file: !839, line: 77, baseType: !353, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !871, file: !839, line: 78, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !839, line: 86, size: 128, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !877, file: !839, line: 87, baseType: !7, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !877, file: !839, line: 88, baseType: !478, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !871, file: !839, line: 79, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !839, line: 92, size: 256, elements: !885)
!885 = !{!886, !887, !888, !890, !891}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !884, file: !839, line: 94, baseType: !7, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !884, file: !839, line: 95, baseType: !7, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !884, file: !839, line: 96, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !884, file: !839, line: 97, baseType: !844, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !884, file: !839, line: 98, baseType: !353, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !747, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !747, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !747, file: !6, line: 442, baseType: !807, size: 64, offset: 2240)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !747, file: !6, line: 443, baseType: !811, size: 64, offset: 2304)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !747, file: !6, line: 444, baseType: !897, size: 8, offset: 2368)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !355, line: 35, baseType: !898)
!898 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !747, file: !6, line: 451, baseType: !897, size: 8, offset: 2376)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !747, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !747, file: !6, line: 455, baseType: !902, size: 64, offset: 2432)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !904, line: 23, size: 96, elements: !905)
!904 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !903, file: !904, line: 24, baseType: !109, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !903, file: !904, line: 24, baseType: !109, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !903, file: !904, line: 24, baseType: !109, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !747, file: !6, line: 458, baseType: !910, size: 64, offset: 2496)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!109}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !747, file: !6, line: 460, baseType: !914, size: 4032, align: 512, offset: 2560)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 4032, elements: !938)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !915, file: !6, line: 363, baseType: !353, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !915, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !915, file: !6, line: 367, baseType: !920, size: 448, offset: 128)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !920, file: !6, line: 320, baseType: !746, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !920, file: !6, line: 321, baseType: !924, size: 384, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !925, line: 40, size: 384, elements: !926)
!925 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !924, file: !925, line: 41, baseType: !928, size: 384, align: 64)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 384, align: 64, elements: !936)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !930, line: 5, size: 192, align: 64, elements: !931)
!930 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!931 = !{!932, !933, !935}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !929, file: !930, line: 6, baseType: !356, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !929, file: !930, line: 7, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !929, file: !930, line: 8, baseType: !934, size: 64, offset: 128)
!936 = !{!937}
!937 = !DISubrange(count: 2)
!938 = !{!939}
!939 = !DISubrange(count: 7)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !747, file: !6, line: 463, baseType: !941, size: 192, offset: 6592)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !942, line: 8, size: 192, elements: !943)
!942 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!943 = !{!944, !945, !947}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !941, file: !942, line: 10, baseType: !7, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !941, file: !942, line: 11, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !941, file: !942, line: 12, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !950, line: 59, size: 48, elements: !951)
!950 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!951 = !{!952, !956, !957, !958, !959, !960}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !949, file: !950, line: 60, baseType: !953, size: 16)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !437, line: 18, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !439, line: 23, baseType: !955)
!955 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !949, file: !950, line: 61, baseType: !953, size: 16, offset: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !949, file: !950, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !949, file: !950, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !949, file: !950, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !949, file: !950, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !747, file: !6, line: 465, baseType: !356, size: 64, offset: 6784)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !747, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !747, file: !6, line: 470, baseType: !399, size: 128, offset: 6912)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !747, file: !6, line: 471, baseType: !965, size: 64, offset: 7040)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !967, line: 33, size: 96, elements: !968)
!967 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!968 = !{!969, !970, !971, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !966, file: !967, line: 37, baseType: !109, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !966, file: !967, line: 43, baseType: !109, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !966, file: !967, line: 45, baseType: !448, size: 16, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 47, baseType: !448, size: 16, offset: 80)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !747, file: !6, line: 476, baseType: !974, size: 64, offset: 7104)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !976)
!976 = !{!977, !993, !994, !995}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !975, file: !6, line: 379, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !980, line: 204, baseType: !981)
!980 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !980, line: 197, size: 192, elements: !982)
!982 = !{!983, !985, !986, !987, !989, !991}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !981, file: !980, line: 198, baseType: !984, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !980, line: 21, baseType: !627)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !981, file: !980, line: 199, baseType: !440, size: 8, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !981, file: !980, line: 200, baseType: !440, size: 8, offset: 40)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !981, file: !980, line: 201, baseType: !988, size: 16, offset: 48)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !980, line: 17, baseType: !447)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !981, file: !980, line: 202, baseType: !990, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !980, line: 16, baseType: !631)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !981, file: !980, line: 203, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !980, line: 22, baseType: !631)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !975, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !975, file: !6, line: 381, baseType: !478, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !975, file: !6, line: 382, baseType: !478, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !747, file: !6, line: 477, baseType: !975, size: 256, offset: 7168)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !747, file: !6, line: 480, baseType: !998, size: 64, offset: 7424)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !747, file: !6, line: 483, baseType: !1001, size: 64, offset: 7488)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !747, file: !6, line: 488, baseType: !478, size: 64, offset: 7552)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !747, file: !6, line: 492, baseType: !353, size: 64, offset: 7616)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !747, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !747, file: !6, line: 495, baseType: !353, size: 64, offset: 7744)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !747, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !747, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !747, file: !6, line: 500, baseType: !1010, size: 64, offset: 7872)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1012, line: 45, baseType: !1013)
!1012 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !747, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !747, file: !6, line: 504, baseType: !1016, size: 64, offset: 8000)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1019, line: 96, size: 192, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1020 = !{!1021, !1022, !1103, !1107}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1018, file: !1019, line: 97, baseType: !7, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1018, file: !1019, line: 98, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1019, line: 24, size: 3072, elements: !1025)
!1025 = !{!1026, !1028, !1029, !1030, !1031, !1055, !1056, !1057, !1058, !1076, !1088, !1089, !1100, !1101, !1102}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1024, file: !1019, line: 26, baseType: !1027, size: 128)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 128, elements: !936)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1024, file: !1019, line: 27, baseType: !1027, size: 128, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1024, file: !1019, line: 28, baseType: !109, size: 32, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1024, file: !1019, line: 31, baseType: !412, size: 32, align: 512, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1024, file: !1019, line: 32, baseType: !1032, size: 960, offset: 576)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1033, line: 206, size: 960, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1034 = !{!1035, !1044, !1049, !1051, !1052, !1054}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1032, file: !1033, line: 207, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !355, line: 232, size: 128, align: 64, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1037, file: !355, line: 233, baseType: !1036, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1037, file: !355, line: 234, baseType: !1041, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !1036}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1032, file: !1033, line: 208, baseType: !1045, size: 256, offset: 64)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 256, elements: !1047)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1047 = !{!1048}
!1048 = !DISubrange(count: 4)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1032, file: !1033, line: 209, baseType: !1050, size: 256, offset: 320)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !1047)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1032, file: !1033, line: 213, baseType: !514, size: 64, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1032, file: !1033, line: 215, baseType: !1053, size: 256, offset: 640)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 256, elements: !1047)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !1033, line: 216, baseType: !436, size: 8, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1024, file: !1019, line: 33, baseType: !356, size: 64, offset: 1536)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1024, file: !1019, line: 34, baseType: !356, size: 64, offset: 1600)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1024, file: !1019, line: 35, baseType: !897, size: 8, offset: 1664)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1024, file: !1019, line: 36, baseType: !1059, size: 320, offset: 1728)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1060, line: 11, size: 320, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1061 = !{!1062, !1069, !1070, !1075}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1059, file: !1060, line: 16, baseType: !1063, size: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !355, line: 198, size: 128, elements: !1064)
!1064 = !{!1065, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1063, file: !355, line: 199, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1063, file: !355, line: 199, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1059, file: !1060, line: 17, baseType: !356, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1059, file: !1060, line: 18, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1059, file: !1060, line: 19, baseType: !626, size: 32, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1024, file: !1019, line: 37, baseType: !1077, size: 256, offset: 2048)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1078, line: 98, size: 256, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1077, file: !1078, line: 99, baseType: !821, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1077, file: !1078, line: 100, baseType: !399, size: 128, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1077, file: !1078, line: 101, baseType: !1083, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1078, line: 21, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1024, file: !1019, line: 38, baseType: !1037, size: 128, align: 64, offset: 2304)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1024, file: !1019, line: 39, baseType: !1090, size: 64, offset: 2432)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1019, line: 49, size: 768, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1091, file: !1019, line: 50, baseType: !412, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1091, file: !1019, line: 51, baseType: !1050, size: 256, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1091, file: !1019, line: 53, baseType: !1050, size: 256, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1091, file: !1019, line: 54, baseType: !356, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1091, file: !1019, line: 55, baseType: !1090, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1091, file: !1019, line: 56, baseType: !109, size: 32, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1091, file: !1019, line: 57, baseType: !109, size: 32, offset: 736)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1024, file: !1019, line: 40, baseType: !356, size: 64, offset: 2496)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1024, file: !1019, line: 42, baseType: !109, size: 32, offset: 2560)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1024, file: !1019, line: 43, baseType: !1017, size: 64, offset: 2624)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1018, file: !1019, line: 99, baseType: !1104, offset: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1105, line: 211, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1106 = !{}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1018, file: !1019, line: 100, baseType: !1108, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1019, line: 63, size: 3008, elements: !1110)
!1110 = !{!1111, !1112, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1142}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1109, file: !1019, line: 64, baseType: !1090, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1109, file: !1019, line: 65, baseType: !1113, size: 192, offset: 64)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 192, elements: !479)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1109, file: !1019, line: 67, baseType: !109, size: 32, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1109, file: !1019, line: 68, baseType: !817, size: 256, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1109, file: !1019, line: 69, baseType: !412, size: 32, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1109, file: !1019, line: 70, baseType: !817, size: 256, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1109, file: !1019, line: 71, baseType: !356, size: 64, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1109, file: !1019, line: 72, baseType: !356, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1109, file: !1019, line: 73, baseType: !356, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1109, file: !1019, line: 74, baseType: !356, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1109, file: !1019, line: 75, baseType: !356, size: 64, offset: 1152)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1109, file: !1019, line: 76, baseType: !356, size: 64, offset: 1216)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1109, file: !1019, line: 77, baseType: !356, size: 64, offset: 1280)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1109, file: !1019, line: 78, baseType: !356, size: 64, offset: 1344)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1109, file: !1019, line: 79, baseType: !897, size: 8, offset: 1408)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1109, file: !1019, line: 80, baseType: !356, size: 64, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1109, file: !1019, line: 81, baseType: !817, size: 256, offset: 1536)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1109, file: !1019, line: 82, baseType: !766, size: 256, offset: 1792)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1109, file: !1019, line: 84, baseType: !382, size: 32, offset: 2048)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1109, file: !1019, line: 87, baseType: !356, size: 64, offset: 2112)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1109, file: !1019, line: 88, baseType: !356, size: 64, offset: 2176)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1109, file: !1019, line: 89, baseType: !1134, size: 704, offset: 2240)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1078, line: 111, size: 704, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1141}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1134, file: !1078, line: 112, baseType: !1077, size: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1134, file: !1078, line: 113, baseType: !1059, size: 320, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1134, file: !1078, line: 116, baseType: !1139, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1078, line: 18, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1134, file: !1078, line: 117, baseType: !109, size: 32, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1109, file: !1019, line: 90, baseType: !1017, size: 64, offset: 2944)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !747, file: !6, line: 515, baseType: !1144, size: 64, offset: 8064)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1146, line: 117, size: 128, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1145, file: !1146, line: 118, baseType: !813, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1145, file: !1146, line: 119, baseType: !813, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1145, file: !1146, line: 120, baseType: !514, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !747, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !747, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !747, file: !6, line: 520, baseType: !1154, size: 64, offset: 8192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !747, file: !6, line: 523, baseType: !1156, size: 64, offset: 8256)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !747, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !747, file: !6, line: 525, baseType: !1161, size: 64, offset: 8384)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !747, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !747, file: !6, line: 533, baseType: !353, size: 64, offset: 8512)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !747, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !747, file: !6, line: 535, baseType: !1168, size: 64, offset: 8640)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !747, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !747, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !747, file: !6, line: 540, baseType: !1172, size: 64, offset: 8768)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1174, line: 32, size: 64, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1173, file: !1174, line: 33, baseType: !813, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1173, file: !1174, line: 34, baseType: !813, size: 32, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !747, file: !6, line: 563, baseType: !399, size: 128, offset: 8832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !747, file: !6, line: 565, baseType: !399, size: 128, offset: 8960)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !747, file: !6, line: 568, baseType: !1181, size: 64, offset: 9088)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !747, file: !6, line: 570, baseType: !382, size: 32, offset: 9152)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !14, line: 2382, baseType: !722, size: 64, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !723, file: !14, line: 2383, baseType: !1187, size: 64, offset: 512)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !355, line: 194, size: 64, elements: !1188)
!1188 = !{!1189}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1187, file: !355, line: 195, baseType: !1066, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !723, file: !14, line: 2385, baseType: !1191, offset: 576)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1105, line: 206, elements: !1106)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !723, file: !14, line: 2386, baseType: !1191, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !723, file: !14, line: 2387, baseType: !1191, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !723, file: !14, line: 2388, baseType: !1195, offset: 576)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, elements: !479)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !723, file: !14, line: 2390, baseType: !1191, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !723, file: !14, line: 2391, baseType: !1191, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !723, file: !14, line: 2392, baseType: !1191, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !723, file: !14, line: 2393, baseType: !1191, offset: 576)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !709, file: !14, line: 1197, baseType: !1201, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1204)
!1204 = !{!1205, !1209, !1213, !1214, !1218, !1224, !1228, !1229, !1230, !1234, !1238, !1242, !1243, !1244, !1250, !1254, !1255, !3474, !3475, !3476, !3477, !3481, !3485, !3532, !3547, !3548}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1203, file: !14, line: 2058, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!557, !708}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1203, file: !14, line: 2059, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !557}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1203, file: !14, line: 2060, baseType: !1210, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1203, file: !14, line: 2062, baseType: !1215, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !557, !109}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1203, file: !14, line: 2063, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!109, !557, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1203, file: !14, line: 2064, baseType: !1225, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!109, !557}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1203, file: !14, line: 2065, baseType: !1210, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1203, file: !14, line: 2066, baseType: !742, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1203, file: !14, line: 2067, baseType: !1231, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!109, !708, !109}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1203, file: !14, line: 2068, baseType: !1235, size: 64, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!109, !708, !13}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1203, file: !14, line: 2069, baseType: !1239, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!109, !708}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1203, file: !14, line: 2070, baseType: !1235, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1203, file: !14, line: 2071, baseType: !1239, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1203, file: !14, line: 2072, baseType: !1245, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!109, !592, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1203, file: !14, line: 2073, baseType: !1251, size: 64, offset: 896)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!109, !708, !946, !478}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1203, file: !14, line: 2074, baseType: !742, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1203, file: !14, line: 2076, baseType: !1256, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!109, !1259, !592}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1261, line: 17, size: 960, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1293, !1294, !3473}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1260, file: !1261, line: 18, baseType: !478, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1260, file: !1261, line: 19, baseType: !525, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1260, file: !1261, line: 20, baseType: !525, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1260, file: !1261, line: 21, baseType: !525, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1260, file: !1261, line: 22, baseType: !525, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1260, file: !1261, line: 23, baseType: !718, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1260, file: !1261, line: 24, baseType: !718, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1260, file: !1261, line: 25, baseType: !817, size: 256, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1260, file: !1261, line: 26, baseType: !1272, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1261, line: 32, size: 256, elements: !1275)
!1275 = !{!1276, !1281, !1285, !1289}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1274, file: !1261, line: 33, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!353, !1259, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1274, file: !1261, line: 34, baseType: !1282, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1259, !353}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1274, file: !1261, line: 35, baseType: !1286, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!353, !1259, !353, !1280}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1274, file: !1261, line: 36, baseType: !1290, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!109, !1259, !353}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1260, file: !1261, line: 27, baseType: !109, size: 32, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1260, file: !1261, line: 28, baseType: !1295, size: 64, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1298)
!1298 = !{!1299, !1310, !1311, !1313, !1314, !1315, !1316, !1317, !3278, !3279, !3288, !3294, !3295, !3463, !3464, !3465, !3466, !3468, !3469, !3472}
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !14, line: 995, baseType: !1300, size: 128)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !14, line: 995, size: 128, elements: !1301)
!1301 = !{!1302, !1308, !1309}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1300, file: !14, line: 996, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1304, line: 60, size: 64, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1303, file: !1304, line: 61, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1300, file: !14, line: 997, baseType: !1037, size: 128, align: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1300, file: !14, line: 998, baseType: !7, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1297, file: !14, line: 1005, baseType: !412, size: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1297, file: !14, line: 1006, baseType: !1312, size: 32, offset: 160)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !355, line: 156, baseType: !7)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1297, file: !14, line: 1007, baseType: !821, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1297, file: !14, line: 1008, baseType: !817, size: 256, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1297, file: !14, line: 1009, baseType: !718, size: 64, offset: 512)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1297, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1297, file: !14, line: 1011, baseType: !1318, size: 256, offset: 640)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1319)
!1319 = !{!1320, !1341, !3274, !3275, !3276, !3277}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1318, file: !14, line: 949, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1322, line: 34, baseType: !1323)
!1322 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 25, size: 64, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1323, file: !1322, line: 26, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1327, line: 27, baseType: !1328)
!1327 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1327, line: 13, size: 64, elements: !1329)
!1329 = !{!1330, !1340}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1327, line: 14, baseType: !1331, size: 32)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1327, line: 14, size: 32, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1331, file: !1327, line: 15, baseType: !382, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1327, line: 16, baseType: !1335, size: 32)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1327, line: 16, size: 32, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1335, file: !1327, line: 18, baseType: !436, size: 8)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1335, file: !1327, line: 19, baseType: !1339, size: 24, offset: 8)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 24, elements: !479)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1328, file: !1327, line: 26, baseType: !424, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1318, file: !14, line: 950, baseType: !1342, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1350, !1351, !1358, !1359}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1343, file: !61, line: 61, baseType: !378, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1343, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !61, line: 63, baseType: !412, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1343, file: !61, line: 65, baseType: !1349, size: 256, offset: 128)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 256, elements: !1047)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1343, file: !61, line: 66, baseType: !1187, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1343, file: !61, line: 68, baseType: !1352, size: 192, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1353, line: 41, baseType: !1354)
!1353 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1353, line: 37, size: 192, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1354, file: !1353, line: 38, baseType: !412, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1354, file: !1353, line: 39, baseType: !399, size: 128, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1343, file: !61, line: 69, baseType: !1037, size: 128, align: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1343, file: !61, line: 70, baseType: !1360, offset: 768)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, elements: !1846)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1361, file: !61, line: 55, baseType: !109, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1361, file: !61, line: 56, baseType: !1365, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1367, line: 26, size: 1152, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1368 = !{!1369, !1382, !1383, !1384, !3250, !3254, !3255, !3256, !3259, !3260, !3261, !3262, !3273}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1366, file: !1367, line: 27, baseType: !1370, size: 192)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1371, line: 19, size: 192, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1372 = !{!1373, !1380, !1381}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1370, file: !1371, line: 20, baseType: !1374, size: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1375, line: 296, size: 128, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1374, file: !1375, line: 297, baseType: !412, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1374, file: !1375, line: 299, baseType: !354, size: 32, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1374, file: !1375, line: 300, baseType: !353, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1370, file: !1371, line: 21, baseType: !7, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1370, file: !1371, line: 22, baseType: !7, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1366, file: !1367, line: 28, baseType: !1037, size: 128, align: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1366, file: !1367, line: 29, baseType: !7, size: 32, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1366, file: !1367, line: 30, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1387, line: 746, size: 58368, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1388 = !{!1389, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1469, !1480, !1575, !1579, !1582, !1613, !1614, !1615, !1616, !1627, !1629, !1630, !1631, !1632, !1633, !1634, !1645, !1646, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1663, !1664, !1671, !1672, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1932, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1980, !1986, !2168, !2169, !2170, !2171, !2175, !2178, !2185, !2190, !2193, !2196, !2199, !2225, !2363, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2401, !2402, !2403, !2412, !2420, !2421, !2422, !2423, !2424, !2429, !2430, !2431, !2435, !2436, !2439, !2442, !2445, !2453, !2456, !2457, !2543, !2544, !2545, !2546, !2547, !2553, !2554, !2555, !2556, !2559, !2560, !2563, !2566, !2567, !2570, !2571, !2572, !2575, !2576, !2577, !2580, !2581, !2582, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2614, !2617, !2906, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2918, !2990, !2992, !2993, !2994, !2995, !2996, !2997, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3027, !3028, !3029}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1386, file: !1387, line: 752, baseType: !1390, size: 192)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1391, line: 56, size: 192, elements: !1392)
!1391 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1392 = !{!1393, !1394, !1395, !1396}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !1391, line: 57, baseType: !356, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1390, file: !1391, line: 58, baseType: !356, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1390, file: !1391, line: 59, baseType: !626, size: 32, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1390, file: !1391, line: 61, baseType: !626, size: 32, offset: 160)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1386, file: !1387, line: 754, baseType: !7, size: 32, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1386, file: !1387, line: 767, baseType: !353, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1386, file: !1387, line: 768, baseType: !378, size: 32, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !1387, line: 770, baseType: !7, size: 32, offset: 352)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1386, file: !1387, line: 771, baseType: !7, size: 32, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1386, file: !1387, line: 774, baseType: !109, size: 32, offset: 416)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1386, file: !1387, line: 775, baseType: !1404, size: 128, offset: 448)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1405, line: 58, size: 128, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1406 = !{!1407, !1408, !1413, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1404, file: !1405, line: 59, baseType: !1303, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !1405, line: 60, baseType: !1409, size: 32, offset: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !1405, line: 60, size: 32, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1409, file: !1405, line: 61, baseType: !7, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1409, file: !1405, line: 62, baseType: !382, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1404, file: !1405, line: 65, baseType: !446, size: 16, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1404, file: !1405, line: 65, baseType: !446, size: 16, offset: 112)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1386, file: !1387, line: 776, baseType: !7, size: 32, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1386, file: !1387, line: 777, baseType: !356, size: 64, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1386, file: !1387, line: 778, baseType: !1385, size: 64, offset: 704)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1386, file: !1387, line: 787, baseType: !109, size: 32, offset: 768)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1386, file: !1387, line: 788, baseType: !109, size: 32, offset: 800)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1386, file: !1387, line: 790, baseType: !109, size: 32, offset: 832)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1386, file: !1387, line: 792, baseType: !109, size: 32, offset: 864)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1386, file: !1387, line: 793, baseType: !109, size: 32, offset: 896)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1386, file: !1387, line: 794, baseType: !109, size: 32, offset: 928)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1386, file: !1387, line: 795, baseType: !7, size: 32, offset: 960)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1386, file: !1387, line: 797, baseType: !1426, size: 2048, offset: 1024)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1387, line: 551, size: 2048, elements: !1427)
!1427 = !{!1428, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1448, !1451, !1452, !1453}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1426, file: !1387, line: 553, baseType: !1429, size: 128)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1387, line: 411, size: 128, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1429, file: !1387, line: 412, baseType: !356, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1429, file: !1387, line: 413, baseType: !626, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1426, file: !1387, line: 554, baseType: !929, size: 192, align: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1426, file: !1387, line: 555, baseType: !630, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1426, file: !1387, line: 556, baseType: !630, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1426, file: !1387, line: 558, baseType: !399, size: 128, offset: 448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1426, file: !1387, line: 559, baseType: !7, size: 32, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1426, file: !1387, line: 561, baseType: !630, size: 64, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1426, file: !1387, line: 562, baseType: !630, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1426, file: !1387, line: 563, baseType: !630, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1426, file: !1387, line: 564, baseType: !630, size: 64, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1426, file: !1387, line: 565, baseType: !827, size: 64, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1426, file: !1387, line: 566, baseType: !630, size: 64, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1426, file: !1387, line: 568, baseType: !630, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1426, file: !1387, line: 571, baseType: !109, size: 32, offset: 1088)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1426, file: !1387, line: 572, baseType: !1447, size: 64, offset: 1152)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1426, file: !1387, line: 574, baseType: !1449, size: 64, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1387, line: 49, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1426, file: !1387, line: 576, baseType: !1449, size: 64, offset: 1280)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1426, file: !1387, line: 578, baseType: !356, size: 64, offset: 1344)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1426, file: !1387, line: 588, baseType: !1454, size: 512, align: 512, offset: 1536)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1387, line: 497, size: 512, align: 512, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1454, file: !1387, line: 498, baseType: !630, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1454, file: !1387, line: 499, baseType: !630, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1454, file: !1387, line: 500, baseType: !630, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1454, file: !1387, line: 501, baseType: !626, size: 32, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1454, file: !1387, line: 502, baseType: !626, size: 32, offset: 224)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1454, file: !1387, line: 503, baseType: !356, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1454, file: !1387, line: 504, baseType: !356, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1454, file: !1387, line: 505, baseType: !356, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1454, file: !1387, line: 506, baseType: !1465, size: 64, align: 64, offset: 448)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1387, line: 445, size: 64, align: 64, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1465, file: !1387, line: 446, baseType: !7, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1465, file: !1387, line: 447, baseType: !7, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1386, file: !1387, line: 798, baseType: !1470, size: 384, offset: 3072)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1387, line: 592, size: 384, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1470, file: !1387, line: 593, baseType: !399, size: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1470, file: !1387, line: 594, baseType: !356, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1470, file: !1387, line: 595, baseType: !356, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1470, file: !1387, line: 596, baseType: !7, size: 32, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1470, file: !1387, line: 597, baseType: !448, size: 16, offset: 288)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1470, file: !1387, line: 598, baseType: !448, size: 16, offset: 304)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1470, file: !1387, line: 600, baseType: !1479, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1386, file: !1387, line: 799, baseType: !1481, size: 1792, offset: 3456)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1387, line: 610, size: 1792, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1572, !1573}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1481, file: !1387, line: 611, baseType: !929, size: 192, align: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1481, file: !1387, line: 618, baseType: !630, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1481, file: !1387, line: 619, baseType: !630, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1481, file: !1387, line: 620, baseType: !630, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1481, file: !1387, line: 621, baseType: !630, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1481, file: !1387, line: 622, baseType: !630, size: 64, offset: 448)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1481, file: !1387, line: 629, baseType: !827, size: 64, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1481, file: !1387, line: 630, baseType: !630, size: 64, offset: 576)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !1387, line: 631, baseType: !7, size: 32, offset: 640)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1481, file: !1387, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1481, file: !1387, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1481, file: !1387, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1481, file: !1387, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1481, file: !1387, line: 662, baseType: !1497, size: 512, offset: 704)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1498)
!1498 = !{!1499, !1507, !1508, !1513, !1568, !1569, !1570, !1571}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1497, file: !19, line: 119, baseType: !1500, size: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1501, line: 9, size: 256, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1500, file: !1501, line: 10, baseType: !929, size: 192, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1500, file: !1501, line: 11, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1506, line: 29, baseType: !827)
!1506 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1497, file: !19, line: 120, baseType: !1505, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1497, file: !19, line: 121, baseType: !1509, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!18, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1497, file: !19, line: 122, baseType: !1514, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1516)
!1516 = !{!1517, !1542, !1543, !1546, !1551, !1552, !1563, !1567}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1515, file: !19, line: 160, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !19, line: 216, baseType: !775, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1519, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1519, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1519, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1519, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1519, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1519, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1519, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1519, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1519, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1519, file: !19, line: 227, baseType: !448, size: 16, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1519, file: !19, line: 228, baseType: !448, size: 16, offset: 208)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1519, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1519, file: !19, line: 235, baseType: !1505, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1519, file: !19, line: 236, baseType: !1512, size: 64, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1519, file: !19, line: 237, baseType: !1505, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1519, file: !19, line: 238, baseType: !1512, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1519, file: !19, line: 239, baseType: !1539, size: 4096, align: 512, offset: 512)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1515, size: 4096, align: 512, elements: !1540)
!1540 = !{!1541}
!1541 = !DISubrange(count: 8)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1515, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1515, file: !19, line: 162, baseType: !1544, size: 32, offset: 96)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !355, line: 32, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !512, line: 96, baseType: !109)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1515, file: !19, line: 163, baseType: !1547, size: 32, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !599, line: 274, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !599, line: 274, size: 32, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1548, file: !599, line: 274, baseType: !603, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1515, file: !19, line: 164, baseType: !1512, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1515, file: !19, line: 165, baseType: !1553, size: 128, offset: 256)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1501, line: 14, size: 128, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1553, file: !1501, line: 15, baseType: !1556, size: 128)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !930, line: 26, size: 128, elements: !1557)
!1557 = !{!1558, !1562}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1556, file: !930, line: 27, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !930, line: 12, size: 64, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1559, file: !930, line: 13, baseType: !934, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1556, file: !930, line: 28, baseType: !934, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1515, file: !19, line: 166, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!1505}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1515, file: !19, line: 167, baseType: !1505, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1497, file: !19, line: 123, baseType: !436, size: 8, offset: 448)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1497, file: !19, line: 124, baseType: !436, size: 8, offset: 456)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1497, file: !19, line: 125, baseType: !436, size: 8, offset: 464)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1497, file: !19, line: 126, baseType: !436, size: 8, offset: 472)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1481, file: !1387, line: 671, baseType: !1497, size: 512, offset: 1216)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1481, file: !1387, line: 679, baseType: !1574, size: 64, offset: 1728)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1386, file: !1387, line: 800, baseType: !1576, size: 64, offset: 5248)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1387, line: 800, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1386, file: !1387, line: 809, baseType: !1580, size: 64, offset: 5312)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1387, line: 70, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1386, file: !1387, line: 825, baseType: !1583, size: 2048, align: 512, offset: 5632)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1387, line: 509, size: 2048, align: 512, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1583, file: !1387, line: 511, baseType: !630, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1583, file: !1387, line: 512, baseType: !630, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1583, file: !1387, line: 513, baseType: !630, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1583, file: !1387, line: 514, baseType: !630, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1583, file: !1387, line: 515, baseType: !630, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1583, file: !1387, line: 516, baseType: !630, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1583, file: !1387, line: 518, baseType: !630, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1583, file: !1387, line: 519, baseType: !630, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1583, file: !1387, line: 520, baseType: !827, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1583, file: !1387, line: 522, baseType: !630, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1583, file: !1387, line: 523, baseType: !630, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1583, file: !1387, line: 524, baseType: !827, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1583, file: !1387, line: 526, baseType: !827, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1583, file: !1387, line: 527, baseType: !630, size: 64, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1583, file: !1387, line: 529, baseType: !630, size: 64, offset: 896)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1583, file: !1387, line: 530, baseType: !630, size: 64, offset: 960)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1583, file: !1387, line: 531, baseType: !630, size: 64, offset: 1024)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1583, file: !1387, line: 532, baseType: !630, size: 64, offset: 1088)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1583, file: !1387, line: 533, baseType: !630, size: 64, offset: 1152)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1583, file: !1387, line: 535, baseType: !630, size: 64, offset: 1216)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1583, file: !1387, line: 536, baseType: !630, size: 64, offset: 1280)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1583, file: !1387, line: 537, baseType: !630, size: 64, offset: 1344)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1583, file: !1387, line: 538, baseType: !630, size: 64, offset: 1408)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1583, file: !1387, line: 539, baseType: !630, size: 64, offset: 1472)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1583, file: !1387, line: 540, baseType: !630, size: 64, offset: 1536)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1583, file: !1387, line: 541, baseType: !630, size: 64, offset: 1600)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1583, file: !1387, line: 542, baseType: !630, size: 64, offset: 1664)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1583, file: !1387, line: 543, baseType: !630, size: 64, offset: 1728)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1386, file: !1387, line: 833, baseType: !7, size: 32, offset: 7680)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1386, file: !1387, line: 836, baseType: !7, size: 32, offset: 7712)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1386, file: !1387, line: 837, baseType: !109, size: 32, offset: 7744)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1386, file: !1387, line: 838, baseType: !1617, size: 64, offset: 7808)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1620, line: 19, baseType: !1621)
!1620 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1620, line: 19, size: 64, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1621, file: !1620, line: 19, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DISubrange(count: 1)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1386, file: !1387, line: 839, baseType: !1628, size: 64, offset: 7872)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1386, file: !1387, line: 840, baseType: !1619, size: 64, offset: 7936)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1386, file: !1387, line: 841, baseType: !353, size: 64, offset: 8000)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1386, file: !1387, line: 843, baseType: !448, size: 16, offset: 8064)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1386, file: !1387, line: 845, baseType: !448, size: 16, offset: 8080)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1386, file: !1387, line: 848, baseType: !109, size: 32, offset: 8096)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1386, file: !1387, line: 849, baseType: !1635, size: 32, offset: 8128)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1387, line: 718, size: 32, elements: !1636)
!1636 = !{!1637, !1644}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1635, file: !1387, line: 724, baseType: !1638, size: 32)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1635, file: !1387, line: 719, size: 32, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1643}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1638, file: !1387, line: 720, baseType: !436, size: 8)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1638, file: !1387, line: 721, baseType: !436, size: 8, offset: 8)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1638, file: !1387, line: 722, baseType: !436, size: 8, offset: 16)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1638, file: !1387, line: 723, baseType: !436, size: 8, offset: 24)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1635, file: !1387, line: 725, baseType: !626, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1386, file: !1387, line: 850, baseType: !399, size: 128, offset: 8192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1386, file: !1387, line: 851, baseType: !1647, size: 64, offset: 8320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1387, line: 60, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1386, file: !1387, line: 855, baseType: !356, size: 64, offset: 8384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1386, file: !1387, line: 856, baseType: !436, size: 8, offset: 8448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1386, file: !1387, line: 857, baseType: !436, size: 8, offset: 8456)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1386, file: !1387, line: 858, baseType: !109, size: 32, offset: 8480)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1386, file: !1387, line: 859, baseType: !399, size: 128, offset: 8512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1386, file: !1387, line: 860, baseType: !109, size: 32, offset: 8640)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1386, file: !1387, line: 861, baseType: !399, size: 128, offset: 8704)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1386, file: !1387, line: 873, baseType: !1657, size: 256, offset: 8832)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1387, line: 376, size: 256, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1657, file: !1387, line: 381, baseType: !356, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1657, file: !1387, line: 384, baseType: !632, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1657, file: !1387, line: 389, baseType: !632, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1657, file: !1387, line: 392, baseType: !632, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1386, file: !1387, line: 875, baseType: !399, size: 128, offset: 9088)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1386, file: !1387, line: 877, baseType: !1665, size: 320, offset: 9216)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1666, line: 86, size: 320, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1665, file: !1666, line: 87, baseType: !109, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1665, file: !1666, line: 88, baseType: !399, size: 128, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1665, file: !1666, line: 89, baseType: !399, size: 128, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1386, file: !1387, line: 878, baseType: !929, size: 192, align: 64, offset: 9536)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1386, file: !1387, line: 881, baseType: !1673, size: 64, offset: 9728)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1675)
!1675 = !{!1676, !1844}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !38, line: 734, baseType: !1677, size: 10240)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !38, line: 734, size: 10240, elements: !1678)
!1678 = !{!1679, !1683, !1696, !1701, !1702, !1703, !1704, !1705, !1706, !1715, !1716, !1717, !1723, !1724, !1725, !1726, !1727, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1764, !1774, !1777, !1822, !1823, !1824, !1827, !1830, !1831, !1834, !1835, !1836, !1842, !1843}
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !38, line: 739, baseType: !1680, size: 512, align: 512)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !38, line: 739, size: 512, align: 512, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1680, file: !38, line: 747, baseType: !382, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1677, file: !38, line: 750, baseType: !1684, size: 128, offset: 512)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1685, line: 218, size: 128, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1686 = !{!1687, !1694, !1695}
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 219, baseType: !1688, size: 32)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !1685, line: 219, size: 32, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1688, file: !1685, line: 220, baseType: !412, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1688, file: !1685, line: 221, baseType: !1692)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1685, line: 197, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1685, line: 197, elements: !1106)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1684, file: !1685, line: 223, baseType: !7, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1684, file: !1685, line: 224, baseType: !353, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1677, file: !38, line: 752, baseType: !1697, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!356, !1700, !356, !356, !356, !356}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1677, file: !38, line: 756, baseType: !356, size: 64, offset: 704)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1677, file: !38, line: 757, baseType: !356, size: 64, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1677, file: !38, line: 760, baseType: !356, size: 64, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1677, file: !38, line: 761, baseType: !356, size: 64, offset: 896)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1677, file: !38, line: 763, baseType: !356, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1677, file: !38, line: 764, baseType: !1707, size: 64, offset: 1024)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1709, line: 299, baseType: !1710)
!1709 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1709, line: 299, size: 64, elements: !1711)
!1711 = !{!1712}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1710, file: !1709, line: 299, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1714, line: 18, baseType: !356)
!1714 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1677, file: !38, line: 773, baseType: !382, size: 32, offset: 1088)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1677, file: !38, line: 785, baseType: !382, size: 32, offset: 1120)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1677, file: !38, line: 795, baseType: !1718, size: 64, offset: 1152)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1719, file: !38, line: 727, baseType: !630, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1719, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1677, file: !38, line: 801, baseType: !356, size: 64, offset: 1216)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1677, file: !38, line: 804, baseType: !821, size: 64, offset: 1280)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1677, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1677, file: !38, line: 808, baseType: !412, size: 32, offset: 1376)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1677, file: !38, line: 823, baseType: !1728, size: 320, offset: 1408)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1729, line: 48, size: 320, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1730 = !{!1731, !1732, !1733, !1734, !1735}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1728, file: !1729, line: 49, baseType: !821, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1728, file: !1729, line: 55, baseType: !821, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1728, file: !1729, line: 57, baseType: !831, size: 32, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1728, file: !1729, line: 59, baseType: !775, size: 32, offset: 160)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1728, file: !1729, line: 60, baseType: !399, size: 128, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1677, file: !38, line: 825, baseType: !399, size: 128, offset: 1728)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1677, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1677, file: !38, line: 849, baseType: !356, size: 64, offset: 1920)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1677, file: !38, line: 850, baseType: !356, size: 64, offset: 1984)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1677, file: !38, line: 852, baseType: !356, size: 64, offset: 2048)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1677, file: !38, line: 853, baseType: !356, size: 64, offset: 2112)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1677, file: !38, line: 854, baseType: !823, size: 64, offset: 2176)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1677, file: !38, line: 855, baseType: !356, size: 64, offset: 2240)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1677, file: !38, line: 856, baseType: !356, size: 64, offset: 2304)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1677, file: !38, line: 857, baseType: !356, size: 64, offset: 2368)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1677, file: !38, line: 858, baseType: !356, size: 64, offset: 2432)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1677, file: !38, line: 865, baseType: !603, size: 32, offset: 2496)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1677, file: !38, line: 867, baseType: !412, size: 32, offset: 2528)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1677, file: !38, line: 869, baseType: !356, size: 64, offset: 2560)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1677, file: !38, line: 869, baseType: !356, size: 64, offset: 2624)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1677, file: !38, line: 869, baseType: !356, size: 64, offset: 2688)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1677, file: !38, line: 869, baseType: !356, size: 64, offset: 2752)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1677, file: !38, line: 870, baseType: !356, size: 64, offset: 2816)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1677, file: !38, line: 870, baseType: !356, size: 64, offset: 2880)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1677, file: !38, line: 870, baseType: !356, size: 64, offset: 2944)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1677, file: !38, line: 871, baseType: !356, size: 64, offset: 3008)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1677, file: !38, line: 871, baseType: !356, size: 64, offset: 3072)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1677, file: !38, line: 871, baseType: !356, size: 64, offset: 3136)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1677, file: !38, line: 871, baseType: !356, size: 64, offset: 3200)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1677, file: !38, line: 873, baseType: !1761, size: 3328, offset: 3264)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 3328, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 52)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1677, file: !38, line: 875, baseType: !1765, size: 1280, offset: 6592)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1766, size: 1280, elements: !1047)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1767, line: 22, size: 320, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1768 = !{!1769, !1770, !1771, !1772}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1766, file: !1767, line: 23, baseType: !775, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1766, file: !1767, line: 24, baseType: !827, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1766, file: !1767, line: 26, baseType: !399, size: 128, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1766, file: !1767, line: 28, baseType: !1773, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1677, file: !38, line: 877, baseType: !1775, size: 64, offset: 7872)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1677, file: !38, line: 880, baseType: !1778, size: 1088, offset: 7936)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1779, line: 72, baseType: !1780)
!1779 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1779, line: 23, size: 1088, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1789, !1790, !1791, !1792, !1819, !1820, !1821}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1780, file: !1779, line: 28, baseType: !630, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1780, file: !1779, line: 38, baseType: !823, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1780, file: !1779, line: 40, baseType: !356, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1780, file: !1779, line: 43, baseType: !1728, size: 320, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1780, file: !1779, line: 44, baseType: !1787, size: 64, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1779, line: 44, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1780, file: !1779, line: 48, baseType: !356, size: 64, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !1779, line: 59, baseType: !817, size: 256, offset: 640)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1780, file: !1779, line: 60, baseType: !353, size: 64, offset: 896)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1780, file: !1779, line: 61, baseType: !1793, size: 64, offset: 960)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1796, line: 13, size: 1216, elements: !1797)
!1796 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1795, file: !1796, line: 14, baseType: !353, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1795, file: !1796, line: 15, baseType: !356, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1795, file: !1796, line: 17, baseType: !356, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1795, file: !1796, line: 17, baseType: !356, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1795, file: !1796, line: 18, baseType: !356, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1795, file: !1796, line: 18, baseType: !356, size: 64, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1795, file: !1796, line: 19, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1795, file: !1796, line: 21, baseType: !514, size: 64, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1795, file: !1796, line: 23, baseType: !514, size: 64, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1795, file: !1796, line: 24, baseType: !514, size: 64, offset: 576)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1795, file: !1796, line: 25, baseType: !514, size: 64, offset: 640)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1795, file: !1796, line: 26, baseType: !514, size: 64, offset: 704)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1795, file: !1796, line: 27, baseType: !514, size: 64, offset: 768)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1795, file: !1796, line: 28, baseType: !514, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1795, file: !1796, line: 29, baseType: !514, size: 64, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1795, file: !1796, line: 30, baseType: !514, size: 64, offset: 960)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1795, file: !1796, line: 31, baseType: !514, size: 64, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1795, file: !1796, line: 32, baseType: !514, size: 64, offset: 1088)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1795, file: !1796, line: 33, baseType: !514, size: 64, offset: 1152)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1780, file: !1779, line: 63, baseType: !382, size: 32, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1780, file: !1779, line: 69, baseType: !446, size: 16, offset: 1056)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1780, file: !1779, line: 70, baseType: !953, size: 16, offset: 1072)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1677, file: !38, line: 882, baseType: !356, size: 64, offset: 9024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1677, file: !38, line: 885, baseType: !412, size: 32, offset: 9088)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1677, file: !38, line: 886, baseType: !1825, size: 64, offset: 9152)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1677, file: !38, line: 901, baseType: !1828, size: 64, offset: 9216)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !564, line: 18, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1677, file: !38, line: 904, baseType: !1700, size: 64, offset: 9280)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1677, file: !38, line: 906, baseType: !1832, size: 64, offset: 9344)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1677, file: !38, line: 930, baseType: !382, size: 32, offset: 9408)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1677, file: !38, line: 933, baseType: !382, size: 32, offset: 9440)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1677, file: !38, line: 935, baseType: !1837, size: 64, offset: 9472)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !54, line: 103, size: 64, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1837, file: !54, line: 104, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !54, line: 101, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1677, file: !38, line: 940, baseType: !821, size: 64, offset: 9536)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1677, file: !38, line: 942, baseType: !1077, size: 256, offset: 9600)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1674, file: !38, line: 986, baseType: !1845, offset: 10240)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, elements: !1846)
!1846 = !{!1847}
!1847 = !DISubrange(count: -1)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1386, file: !1387, line: 882, baseType: !1673, size: 64, offset: 9792)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1386, file: !1387, line: 884, baseType: !109, size: 32, offset: 9856)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1386, file: !1387, line: 885, baseType: !109, size: 32, offset: 9888)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1386, file: !1387, line: 886, baseType: !109, size: 32, offset: 9920)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1386, file: !1387, line: 888, baseType: !109, size: 32, offset: 9952)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1386, file: !1387, line: 890, baseType: !356, size: 64, offset: 9984)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1386, file: !1387, line: 893, baseType: !7, size: 32, offset: 10048)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1386, file: !1387, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1386, file: !1387, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1386, file: !1387, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1386, file: !1387, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1386, file: !1387, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1386, file: !1387, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1386, file: !1387, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1386, file: !1387, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1386, file: !1387, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1386, file: !1387, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1386, file: !1387, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1386, file: !1387, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1386, file: !1387, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1386, file: !1387, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1386, file: !1387, line: 969, baseType: !356, size: 64, offset: 10176)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1386, file: !1387, line: 971, baseType: !1871, size: 448, offset: 10240)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !24, line: 25, size: 448, elements: !1872)
!1872 = !{!1873, !1874, !1879}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1871, file: !24, line: 26, baseType: !356, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1871, file: !24, line: 27, baseType: !1875, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!514, !1878}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !24, line: 28, baseType: !1880, size: 320, offset: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !24, line: 28, size: 320, elements: !1881)
!1881 = !{!1882, !1892, !1917}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1880, file: !24, line: 37, baseType: !1883, size: 320)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !24, line: 30, size: 320, elements: !1884)
!1884 = !{!1885, !1887, !1888, !1889, !1890, !1891}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1883, file: !24, line: 31, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1883, file: !24, line: 32, baseType: !626, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !24, line: 33, baseType: !626, size: 32, offset: 96)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1883, file: !24, line: 34, baseType: !626, size: 32, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1883, file: !24, line: 35, baseType: !630, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1883, file: !24, line: 36, baseType: !1886, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1880, file: !24, line: 47, baseType: !1893, size: 192)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !24, line: 39, size: 192, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1916}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1893, file: !24, line: 40, baseType: !1544, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1893, file: !24, line: 41, baseType: !23, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !24, line: 42, baseType: !1898, size: 64, offset: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1893, file: !24, line: 42, size: 64, elements: !1899)
!1899 = !{!1900, !1908}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1898, file: !24, line: 43, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1903, line: 7, size: 128, elements: !1904)
!1903 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1904 = !{!1905, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1902, file: !1903, line: 8, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !512, line: 93, baseType: !720)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1902, file: !1903, line: 9, baseType: !720, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1898, file: !24, line: 44, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1911, line: 7, size: 64, elements: !1912)
!1911 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1912 = !{!1913, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1910, file: !1911, line: 8, baseType: !1914, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1911, line: 5, baseType: !813)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1910, file: !1911, line: 9, baseType: !813, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1893, file: !24, line: 46, baseType: !630, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1880, file: !24, line: 55, baseType: !1918, size: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !24, line: 49, size: 256, elements: !1919)
!1919 = !{!1920, !1928, !1929, !1930, !1931}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1918, file: !24, line: 50, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1923, line: 36, size: 64, elements: !1924)
!1923 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1922, file: !1923, line: 37, baseType: !109, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1922, file: !1923, line: 38, baseType: !955, size: 16, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1922, file: !1923, line: 39, baseType: !955, size: 16, offset: 48)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1918, file: !24, line: 51, baseType: !109, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1918, file: !24, line: 52, baseType: !109, size: 32, offset: 96)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1918, file: !24, line: 53, baseType: !356, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1918, file: !24, line: 54, baseType: !356, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1386, file: !1387, line: 973, baseType: !1933, size: 32, offset: 10688)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !355, line: 27, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !512, line: 28, baseType: !109)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1386, file: !1387, line: 974, baseType: !1933, size: 32, offset: 10720)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1386, file: !1387, line: 978, baseType: !356, size: 64, offset: 10752)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1386, file: !1387, line: 987, baseType: !1385, size: 64, offset: 10816)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1386, file: !1387, line: 990, baseType: !1385, size: 64, offset: 10880)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1386, file: !1387, line: 995, baseType: !399, size: 128, offset: 10944)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1386, file: !1387, line: 996, baseType: !399, size: 128, offset: 11072)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1386, file: !1387, line: 997, baseType: !1385, size: 64, offset: 11200)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1386, file: !1387, line: 1005, baseType: !399, size: 128, offset: 11264)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1386, file: !1387, line: 1006, baseType: !399, size: 128, offset: 11392)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1386, file: !1387, line: 1009, baseType: !1342, size: 64, offset: 11520)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1386, file: !1387, line: 1010, baseType: !1946, size: 512, offset: 11584)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 512, elements: !1047)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1386, file: !1387, line: 1011, baseType: !399, size: 128, offset: 12096)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1386, file: !1387, line: 1012, baseType: !399, size: 128, offset: 12224)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1386, file: !1387, line: 1014, baseType: !765, size: 64, offset: 12352)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1386, file: !1387, line: 1017, baseType: !946, size: 64, offset: 12416)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1386, file: !1387, line: 1020, baseType: !946, size: 64, offset: 12480)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1386, file: !1387, line: 1023, baseType: !353, size: 64, offset: 12544)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1386, file: !1387, line: 1025, baseType: !630, size: 64, offset: 12608)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1386, file: !1387, line: 1026, baseType: !630, size: 64, offset: 12672)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1386, file: !1387, line: 1031, baseType: !630, size: 64, offset: 12736)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1386, file: !1387, line: 1032, baseType: !1957, size: 192, offset: 12800)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1387, line: 324, size: 192, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1957, file: !1387, line: 326, baseType: !630, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1957, file: !1387, line: 327, baseType: !630, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1957, file: !1387, line: 328, baseType: !775, size: 32, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1386, file: !1387, line: 1041, baseType: !356, size: 64, offset: 12992)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1386, file: !1387, line: 1042, baseType: !356, size: 64, offset: 13056)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1386, file: !1387, line: 1045, baseType: !630, size: 64, offset: 13120)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1386, file: !1387, line: 1048, baseType: !630, size: 64, offset: 13184)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1386, file: !1387, line: 1051, baseType: !356, size: 64, offset: 13248)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1386, file: !1387, line: 1052, baseType: !356, size: 64, offset: 13312)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1386, file: !1387, line: 1055, baseType: !1969, size: 640, offset: 13376)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1970, line: 132, size: 640, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1971 = !{!1972, !1978, !1979}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1969, file: !1970, line: 133, baseType: !1973, size: 576)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1974, size: 576, elements: !479)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1970, line: 117, size: 192, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1974, file: !1970, line: 118, baseType: !630, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1974, file: !1970, line: 119, baseType: !1553, size: 128, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1969, file: !1970, line: 134, baseType: !7, size: 32, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1969, file: !1970, line: 135, baseType: !7, size: 32, offset: 608)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1386, file: !1387, line: 1058, baseType: !1981, size: 448, offset: 14016)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1970, line: 144, size: 448, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1981, file: !1970, line: 145, baseType: !1037, size: 128, align: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1981, file: !1970, line: 146, baseType: !817, size: 256, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1981, file: !1970, line: 147, baseType: !7, size: 32, offset: 384)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1386, file: !1387, line: 1064, baseType: !1987, size: 64, offset: 14464)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1990, line: 110, size: 1472, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1991 = !{!1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2008, !2009, !2010, !2011, !2012, !2013, !2123, !2124, !2125, !2126, !2127, !2150, !2151, !2155, !2163}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1989, file: !1990, line: 111, baseType: !821, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1989, file: !1990, line: 112, baseType: !563, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1989, file: !1990, line: 113, baseType: !572, size: 32, offset: 96)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1989, file: !1990, line: 114, baseType: !563, size: 32, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1989, file: !1990, line: 115, baseType: !572, size: 32, offset: 160)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1989, file: !1990, line: 116, baseType: !563, size: 32, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1989, file: !1990, line: 117, baseType: !572, size: 32, offset: 224)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1989, file: !1990, line: 118, baseType: !563, size: 32, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1989, file: !1990, line: 119, baseType: !572, size: 32, offset: 288)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1989, file: !1990, line: 120, baseType: !7, size: 32, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1989, file: !1990, line: 121, baseType: !2003, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2004, line: 24, baseType: !2005)
!2004 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2004, line: 24, size: 64, elements: !2006)
!2006 = !{!2007}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2005, file: !2004, line: 24, baseType: !630, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1989, file: !1990, line: 122, baseType: !2003, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1989, file: !1990, line: 123, baseType: !2003, size: 64, offset: 512)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1989, file: !1990, line: 124, baseType: !2003, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1989, file: !1990, line: 125, baseType: !2003, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1989, file: !1990, line: 127, baseType: !440, size: 8, offset: 704)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1989, file: !1990, line: 129, baseType: !2014, size: 64, offset: 768)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2016, line: 195, size: 1728, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2017 = !{!2018, !2019, !2022, !2027, !2028, !2031, !2032, !2039, !2040, !2041, !2042, !2045, !2046, !2047, !2048, !2049, !2087, !2108}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2015, file: !2016, line: 196, baseType: !378, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2015, file: !2016, line: 197, baseType: !2020, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2016, line: 28, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !355, line: 104, baseType: !813)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2016, line: 198, baseType: !2023, size: 192, offset: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2016, line: 198, size: 192, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2023, file: !2016, line: 199, baseType: !399, size: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2023, file: !2016, line: 200, baseType: !929, size: 192, align: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2015, file: !2016, line: 205, baseType: !1728, size: 320, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2015, file: !2016, line: 206, baseType: !2029, size: 64, offset: 576)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2016, line: 206, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2015, file: !2016, line: 207, baseType: !353, size: 64, offset: 640)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2016, line: 208, baseType: !2033, size: 64, offset: 704)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2016, line: 208, size: 64, elements: !2034)
!2034 = !{!2035, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2033, file: !2016, line: 209, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2037, line: 8, baseType: !828)
!2037 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2033, file: !2016, line: 210, baseType: !2036, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2015, file: !2016, line: 212, baseType: !2036, size: 64, offset: 768)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2015, file: !2016, line: 213, baseType: !563, size: 32, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2015, file: !2016, line: 214, baseType: !572, size: 32, offset: 864)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2015, file: !2016, line: 215, baseType: !2043, size: 32, offset: 896)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2016, line: 31, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !355, line: 110, baseType: !626)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2015, file: !2016, line: 216, baseType: !448, size: 16, offset: 928)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2015, file: !2016, line: 217, baseType: !448, size: 16, offset: 944)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2015, file: !2016, line: 221, baseType: !955, size: 16, offset: 960)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2016, line: 228, baseType: !356, size: 64, offset: 1024)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2016, line: 245, baseType: !2050, size: 320, offset: 1088)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2016, line: 245, size: 320, elements: !2051)
!2051 = !{!2052, !2079}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2050, file: !2016, line: 246, baseType: !2053, size: 320)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2016, line: 114, size: 320, elements: !2054)
!2054 = !{!2055, !2056, !2068, !2071, !2078}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2053, file: !2016, line: 116, baseType: !356, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !2016, line: 117, baseType: !2057, size: 64, offset: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !2016, line: 117, size: 64, elements: !2058)
!2058 = !{!2059, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2016, line: 118, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !2016, line: 118, size: 64, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2060, file: !2016, line: 120, baseType: !446, size: 16)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2060, file: !2016, line: 121, baseType: !2064, size: 48, offset: 16)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 48, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 6)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2057, file: !2016, line: 127, baseType: !356, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2053, file: !2016, line: 129, baseType: !2069, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2016, line: 102, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2053, file: !2016, line: 130, baseType: !2072, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2016, line: 108, size: 192, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2073, file: !2016, line: 109, baseType: !1037, size: 128, align: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2073, file: !2016, line: 110, baseType: !378, size: 32, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2073, file: !2016, line: 111, baseType: !897, size: 8, offset: 160)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2053, file: !2016, line: 131, baseType: !395, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !2016, line: 247, baseType: !2080, size: 320)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2016, line: 247, size: 320, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2080, file: !2016, line: 248, baseType: !356, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2080, file: !2016, line: 249, baseType: !356, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2080, file: !2016, line: 250, baseType: !2069, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2080, file: !2016, line: 251, baseType: !2072, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2080, file: !2016, line: 252, baseType: !478, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2016, line: 260, baseType: !2088, size: 256, offset: 1408)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2016, line: 260, size: 256, elements: !2089)
!2089 = !{!2090, !2096}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2088, file: !2016, line: 261, baseType: !2091, size: 256)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2016, line: 134, size: 256, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2091, file: !2016, line: 135, baseType: !353, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2091, file: !2016, line: 136, baseType: !2095, size: 256)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 256, elements: !1047)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2088, file: !2016, line: 262, baseType: !2097, size: 256)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2088, file: !2016, line: 262, size: 256, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2097, file: !2016, line: 264, baseType: !399, size: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2097, file: !2016, line: 265, baseType: !2101, size: 128, offset: 128)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2102, line: 22, size: 128, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2103 = !{!2104, !2107}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2101, file: !2102, line: 23, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2102, line: 23, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2101, file: !2102, line: 24, baseType: !356, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2015, file: !2016, line: 280, baseType: !2109, size: 64, offset: 1664)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2016, line: 176, size: 192, elements: !2111)
!2111 = !{!2112, !2121, !2122}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2110, file: !2016, line: 177, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2016, line: 171, baseType: !2114)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!109, !2014, !2117, !2119, !2014}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2110, file: !2016, line: 178, baseType: !2014, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2110, file: !2016, line: 179, baseType: !2069, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1989, file: !1990, line: 130, baseType: !2014, size: 64, offset: 832)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1989, file: !1990, line: 131, baseType: !2014, size: 64, offset: 896)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1989, file: !1990, line: 132, baseType: !2014, size: 64, offset: 960)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1989, file: !1990, line: 135, baseType: !353, size: 64, offset: 1024)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1989, file: !1990, line: 137, baseType: !2128, size: 64, offset: 1088)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2130, line: 14, size: 1088, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2129, file: !2130, line: 15, baseType: !378, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2129, file: !2130, line: 17, baseType: !1766, size: 320, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2129, file: !2130, line: 19, baseType: !356, size: 64, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2129, file: !2130, line: 20, baseType: !821, size: 64, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2129, file: !2130, line: 23, baseType: !1063, size: 128, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2129, file: !2130, line: 24, baseType: !563, size: 32, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2129, file: !2130, line: 29, baseType: !821, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2129, file: !2130, line: 36, baseType: !2140, size: 320, offset: 768)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2141, line: 15, size: 320, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2148, !2149}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2140, file: !2141, line: 16, baseType: !775, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2140, file: !2141, line: 18, baseType: !109, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2140, file: !2141, line: 19, baseType: !109, size: 32, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2140, file: !2141, line: 20, baseType: !109, size: 32, offset: 96)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2140, file: !2141, line: 21, baseType: !109, size: 32, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2140, file: !2141, line: 22, baseType: !356, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !2141, line: 23, baseType: !356, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1989, file: !1990, line: 138, baseType: !1828, size: 64, offset: 1152)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1989, file: !1990, line: 139, baseType: !2152, size: 64, offset: 1216)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2154, line: 16, flags: DIFlagFwdDecl)
!2154 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1989, file: !1990, line: 140, baseType: !2156, size: 64, offset: 1280)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1990, line: 25, size: 64, elements: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2157, file: !1990, line: 26, baseType: !382, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2157, file: !1990, line: 27, baseType: !109, size: 32, offset: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2157, file: !1990, line: 28, baseType: !2162, offset: 64)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, elements: !1846)
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !1990, line: 142, baseType: !2164, size: 128, offset: 1344)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1989, file: !1990, line: 142, size: 128, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2164, file: !1990, line: 143, baseType: !109, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2164, file: !1990, line: 144, baseType: !1037, size: 128, align: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1386, file: !1387, line: 1067, baseType: !1987, size: 64, offset: 14528)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1386, file: !1387, line: 1070, baseType: !1987, size: 64, offset: 14592)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1386, file: !1387, line: 1074, baseType: !2014, size: 64, offset: 14656)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1386, file: !1387, line: 1084, baseType: !2172, size: 128, offset: 14720)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, elements: !2173)
!2173 = !{!2174}
!2174 = !DISubrange(count: 16)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1386, file: !1387, line: 1086, baseType: !2176, size: 64, offset: 14848)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1387, line: 55, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1386, file: !1387, line: 1089, baseType: !2179, size: 64, offset: 14912)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2180, line: 12, size: 64, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2179, file: !2180, line: 13, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2180, line: 8, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1386, file: !1387, line: 1090, baseType: !2186, size: 128, offset: 14976)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2187, line: 13, size: 128, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2188 = !{!2189}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2186, file: !2187, line: 14, baseType: !399, size: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1386, file: !1387, line: 1097, baseType: !2191, size: 64, offset: 15104)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1387, line: 50, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1386, file: !1387, line: 1100, baseType: !2194, size: 64, offset: 15168)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1387, line: 1100, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1386, file: !1387, line: 1103, baseType: !2197, size: 64, offset: 15232)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1387, line: 53, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1386, file: !1387, line: 1107, baseType: !2200, size: 64, offset: 15296)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2202, line: 31, size: 576, elements: !2203)
!2202 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2203 = !{!2204, !2205, !2208, !2211, !2214, !2215, !2218, !2221, !2222}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2201, file: !2202, line: 32, baseType: !378, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2201, file: !2202, line: 33, baseType: !2206, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2202, line: 9, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2201, file: !2202, line: 34, baseType: !2209, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2202, line: 10, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2201, file: !2202, line: 35, baseType: !2212, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2202, line: 8, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2201, file: !2202, line: 36, baseType: !1365, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2201, file: !2202, line: 37, baseType: !2216, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2016, line: 34, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2201, file: !2202, line: 38, baseType: !2219, size: 64, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2202, line: 38, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2201, file: !2202, line: 39, baseType: !2219, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2201, file: !2202, line: 40, baseType: !2223, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2202, line: 12, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1386, file: !1387, line: 1110, baseType: !2226, size: 64, offset: 15360)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2228, line: 93, size: 8768, elements: !2229)
!2228 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2277, !2286, !2287, !2289, !2290, !2291, !2294, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2332, !2333, !2340, !2350, !2353, !2354, !2357, !2358, !2359, !2360, !2361, !2362}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2227, file: !2228, line: 94, baseType: !378, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2227, file: !2228, line: 95, baseType: !382, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2227, file: !2228, line: 96, baseType: !109, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2227, file: !2228, line: 97, baseType: !109, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2227, file: !2228, line: 98, baseType: !399, size: 128, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2227, file: !2228, line: 100, baseType: !1352, size: 192, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2227, file: !2228, line: 103, baseType: !1385, size: 64, offset: 448)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2227, file: !2228, line: 106, baseType: !2238, size: 192, offset: 512)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2154, line: 32, size: 192, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2238, file: !2154, line: 33, baseType: !399, size: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2238, file: !2154, line: 34, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2243, line: 25, baseType: !2244)
!2243 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2243, line: 23, size: 64, elements: !2245)
!2245 = !{!2246}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2244, file: !2243, line: 24, baseType: !1624, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2227, file: !2228, line: 109, baseType: !1187, size: 64, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2227, file: !2228, line: 112, baseType: !109, size: 32, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2227, file: !2228, line: 114, baseType: !109, size: 32, offset: 800)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2227, file: !2228, line: 115, baseType: !1385, size: 64, offset: 832)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2227, file: !2228, line: 118, baseType: !109, size: 32, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2227, file: !2228, line: 119, baseType: !7, size: 32, offset: 928)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2227, file: !2228, line: 121, baseType: !2254, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2228, line: 80, size: 448, elements: !2256)
!2256 = !{!2257, !2258, !2264}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2255, file: !2228, line: 81, baseType: !382, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2255, file: !2228, line: 82, baseType: !2259, size: 128, offset: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2228, line: 75, size: 128, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2259, file: !2228, line: 76, baseType: !1385, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2259, file: !2228, line: 77, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2255, file: !2228, line: 83, baseType: !766, size: 256, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2227, file: !2228, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2227, file: !2228, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2227, file: !2228, line: 138, baseType: !7, size: 32, offset: 1056)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2227, file: !2228, line: 139, baseType: !399, size: 128, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2227, file: !2228, line: 142, baseType: !1497, size: 512, offset: 1216)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2227, file: !2228, line: 143, baseType: !1505, size: 64, offset: 1728)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2227, file: !2228, line: 150, baseType: !2272, size: 256, offset: 1792)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2273, size: 256, elements: !936)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2228, line: 38, size: 128, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2273, file: !2228, line: 39, baseType: !630, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2273, file: !2228, line: 40, baseType: !630, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2227, file: !2228, line: 156, baseType: !2278, size: 192, offset: 2048)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2228, line: 66, size: 192, elements: !2279)
!2279 = !{!2280}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2278, file: !2228, line: 67, baseType: !2281, size: 192)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2228, line: 47, size: 192, elements: !2282)
!2282 = !{!2283, !2284, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2281, file: !2228, line: 48, baseType: !823, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2281, file: !2228, line: 49, baseType: !823, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2281, file: !2228, line: 50, baseType: !823, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2227, file: !2228, line: 160, baseType: !1969, size: 640, offset: 2240)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2227, file: !2228, line: 163, baseType: !2288, size: 256, offset: 2880)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 256, elements: !1047)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2227, file: !2228, line: 169, baseType: !1342, size: 64, offset: 3136)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2227, file: !2228, line: 172, baseType: !109, size: 32, offset: 3200)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2227, file: !2228, line: 174, baseType: !2292, size: 64, offset: 3264)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2228, line: 174, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2227, file: !2228, line: 185, baseType: !2295, size: 64, offset: 3328)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !599, line: 860, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !599, line: 853, size: 64, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2296, file: !599, line: 858, baseType: !598, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2296, file: !599, line: 859, baseType: !412, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2227, file: !2228, line: 186, baseType: !630, size: 64, offset: 3392)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2227, file: !2228, line: 186, baseType: !630, size: 64, offset: 3456)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2227, file: !2228, line: 186, baseType: !630, size: 64, offset: 3520)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2227, file: !2228, line: 186, baseType: !630, size: 64, offset: 3584)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2227, file: !2228, line: 187, baseType: !630, size: 64, offset: 3648)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2227, file: !2228, line: 188, baseType: !630, size: 64, offset: 3712)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2227, file: !2228, line: 189, baseType: !1957, size: 192, offset: 3776)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2227, file: !2228, line: 190, baseType: !356, size: 64, offset: 3968)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2227, file: !2228, line: 190, baseType: !356, size: 64, offset: 4032)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2227, file: !2228, line: 190, baseType: !356, size: 64, offset: 4096)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2227, file: !2228, line: 190, baseType: !356, size: 64, offset: 4160)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2227, file: !2228, line: 191, baseType: !356, size: 64, offset: 4224)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2227, file: !2228, line: 191, baseType: !356, size: 64, offset: 4288)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2227, file: !2228, line: 191, baseType: !356, size: 64, offset: 4352)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2227, file: !2228, line: 191, baseType: !356, size: 64, offset: 4416)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2227, file: !2228, line: 192, baseType: !356, size: 64, offset: 4480)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2227, file: !2228, line: 192, baseType: !356, size: 64, offset: 4544)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2227, file: !2228, line: 192, baseType: !356, size: 64, offset: 4608)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2227, file: !2228, line: 192, baseType: !356, size: 64, offset: 4672)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2227, file: !2228, line: 193, baseType: !356, size: 64, offset: 4736)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2227, file: !2228, line: 193, baseType: !356, size: 64, offset: 4800)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2227, file: !2228, line: 194, baseType: !2322, size: 448, offset: 4864)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2323, line: 12, size: 448, elements: !2324)
!2323 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2322, file: !2323, line: 15, baseType: !630, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2322, file: !2323, line: 17, baseType: !630, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2322, file: !2323, line: 19, baseType: !630, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2322, file: !2323, line: 21, baseType: !630, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2322, file: !2323, line: 29, baseType: !630, size: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2322, file: !2323, line: 35, baseType: !630, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2322, file: !2323, line: 44, baseType: !630, size: 64, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2227, file: !2228, line: 202, baseType: !632, size: 64, offset: 5312)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2227, file: !2228, line: 213, baseType: !2334, size: 2048, offset: 5376)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2335, size: 2048, elements: !2173)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2336, line: 43, size: 128, elements: !2337)
!2336 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2335, file: !2336, line: 44, baseType: !527, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2335, file: !2336, line: 45, baseType: !527, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2227, file: !2228, line: 216, baseType: !2341, size: 448, offset: 7424)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2228, line: 30, size: 448, elements: !2342)
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2341, file: !2228, line: 31, baseType: !109, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2341, file: !2228, line: 32, baseType: !514, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2341, file: !2228, line: 33, baseType: !356, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2341, file: !2228, line: 34, baseType: !630, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2341, file: !2228, line: 34, baseType: !630, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2341, file: !2228, line: 35, baseType: !356, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2341, file: !2228, line: 35, baseType: !356, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2227, file: !2228, line: 219, baseType: !2351, size: 64, offset: 7872)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2228, line: 219, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2227, file: !2228, line: 222, baseType: !7, size: 32, offset: 7936)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2227, file: !2228, line: 223, baseType: !2355, size: 64, offset: 8000)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2228, line: 223, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2227, file: !2228, line: 230, baseType: !897, size: 8, offset: 8064)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2227, file: !2228, line: 231, baseType: !955, size: 16, offset: 8080)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2227, file: !2228, line: 232, baseType: !955, size: 16, offset: 8096)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2227, file: !2228, line: 234, baseType: !1673, size: 64, offset: 8128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2227, file: !2228, line: 237, baseType: !817, size: 256, offset: 8192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2227, file: !2228, line: 243, baseType: !1728, size: 320, offset: 8448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1386, file: !1387, line: 1111, baseType: !2364, size: 64, offset: 15424)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2228, line: 20, size: 16640, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2365, file: !2228, line: 21, baseType: !412, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2365, file: !2228, line: 22, baseType: !378, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2365, file: !2228, line: 23, baseType: !1352, size: 192, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2365, file: !2228, line: 24, baseType: !2371, size: 16384, offset: 256)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2372, size: 16384, elements: !483)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2154, line: 51, size: 256, elements: !2373)
!2373 = !{!2374}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2372, file: !2154, line: 52, baseType: !2375, size: 256)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2154, line: 37, size: 256, elements: !2376)
!2376 = !{!2377, !2384, !2385, !2389}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2375, file: !2154, line: 39, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2379, line: 83, baseType: !2380)
!2379 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2379, line: 82, baseType: !2382)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !109}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2375, file: !2154, line: 40, baseType: !356, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2375, file: !2154, line: 46, baseType: !2386, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2379, line: 86, baseType: !2387)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2379, line: 85, baseType: !1182)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2375, file: !2154, line: 48, baseType: !2242, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1386, file: !1387, line: 1112, baseType: !2242, size: 64, offset: 15488)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1386, file: !1387, line: 1113, baseType: !2242, size: 64, offset: 15552)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1386, file: !1387, line: 1115, baseType: !2242, size: 64, offset: 15616)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1386, file: !1387, line: 1116, baseType: !2238, size: 192, offset: 15680)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1386, file: !1387, line: 1117, baseType: !356, size: 64, offset: 15872)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1386, file: !1387, line: 1118, baseType: !525, size: 64, offset: 15936)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1386, file: !1387, line: 1119, baseType: !7, size: 32, offset: 16000)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1386, file: !1387, line: 1121, baseType: !1036, size: 64, offset: 16064)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1386, file: !1387, line: 1125, baseType: !2399, size: 64, offset: 16128)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1387, line: 43, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1386, file: !1387, line: 1127, baseType: !563, size: 32, offset: 16192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1386, file: !1387, line: 1128, baseType: !7, size: 32, offset: 16224)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1386, file: !1387, line: 1130, baseType: !2404, size: 128, offset: 16256)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2405, line: 37, size: 128, elements: !2406)
!2405 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2404, file: !2405, line: 38, baseType: !109, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2404, file: !2405, line: 39, baseType: !382, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2404, file: !2405, line: 40, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2405, line: 24, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1386, file: !1387, line: 1131, baseType: !2413, size: 256, offset: 16384)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2414, line: 12, size: 256, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2415 = !{!2416, !2417, !2418, !2419}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2413, file: !2414, line: 13, baseType: !478, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2413, file: !2414, line: 14, baseType: !356, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2413, file: !2414, line: 15, baseType: !356, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2413, file: !2414, line: 16, baseType: !897, size: 8, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1386, file: !1387, line: 1134, baseType: !630, size: 64, offset: 16640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1386, file: !1387, line: 1135, baseType: !630, size: 64, offset: 16704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1386, file: !1387, line: 1138, baseType: !412, size: 32, offset: 16768)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1386, file: !1387, line: 1141, baseType: !775, size: 32, offset: 16800)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1386, file: !1387, line: 1143, baseType: !2425, size: 64, offset: 16832)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1387, line: 735, size: 64, elements: !2426)
!2426 = !{!2427}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2425, file: !1387, line: 736, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1386, file: !1387, line: 1147, baseType: !1556, size: 128, offset: 16896)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1386, file: !1387, line: 1149, baseType: !1385, size: 64, offset: 17024)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1386, file: !1387, line: 1151, baseType: !2432, size: 64, offset: 17088)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2434, line: 64, flags: DIFlagFwdDecl)
!2434 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1386, file: !1387, line: 1188, baseType: !353, size: 64, offset: 17152)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1386, file: !1387, line: 1191, baseType: !2437, size: 64, offset: 17216)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1387, line: 44, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1386, file: !1387, line: 1194, baseType: !2440, size: 64, offset: 17280)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1387, line: 45, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1386, file: !1387, line: 1197, baseType: !2443, size: 64, offset: 17344)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1387, line: 61, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1386, file: !1387, line: 1199, baseType: !2446, size: 64, offset: 17408)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2448, line: 99, size: 128, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2447, file: !2448, line: 100, baseType: !821, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2447, file: !2448, line: 101, baseType: !382, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2447, file: !2448, line: 103, baseType: !448, size: 16, offset: 96)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1386, file: !1387, line: 1202, baseType: !2454, size: 64, offset: 17472)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1387, line: 48, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1386, file: !1387, line: 1205, baseType: !356, size: 64, offset: 17536)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1386, file: !1387, line: 1206, baseType: !2458, size: 64, offset: 17600)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2154, line: 14, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2154, line: 12, size: 384, elements: !2461)
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !2460, file: !2154, line: 13, baseType: !2463, size: 384)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2460, file: !2154, line: 13, size: 384, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2463, file: !2154, line: 13, baseType: !109, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2463, file: !2154, line: 13, baseType: !109, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2463, file: !2154, line: 13, baseType: !109, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2463, file: !2154, line: 13, baseType: !2469, size: 256, offset: 128)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2470, line: 37, size: 256, elements: !2471)
!2470 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2471 = !{!2472, !2477, !2490, !2496, !2505, !2532, !2537}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2469, file: !2470, line: 42, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 39, size: 64, elements: !2474)
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2473, file: !2470, line: 40, baseType: !1934, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2473, file: !2470, line: 41, baseType: !569, size: 32, offset: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2469, file: !2470, line: 50, baseType: !2478, size: 192)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 45, size: 192, elements: !2479)
!2479 = !{!2480, !2482, !2483, !2489}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2478, file: !2470, line: 46, baseType: !2481, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !512, line: 95, baseType: !109)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2478, file: !2470, line: 47, baseType: !109, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2478, file: !2470, line: 48, baseType: !2484, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2470, line: 11, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2470, line: 8, size: 64, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2485, file: !2470, line: 9, baseType: !109, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2485, file: !2470, line: 10, baseType: !353, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2478, file: !2470, line: 49, baseType: !109, size: 32, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2469, file: !2470, line: 57, baseType: !2491, size: 128)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 53, size: 128, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2491, file: !2470, line: 54, baseType: !1934, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2491, file: !2470, line: 55, baseType: !569, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2491, file: !2470, line: 56, baseType: !2484, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2469, file: !2470, line: 66, baseType: !2497, size: 256)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 60, size: 256, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502, !2504}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2497, file: !2470, line: 61, baseType: !1934, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2497, file: !2470, line: 62, baseType: !569, size: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2497, file: !2470, line: 63, baseType: !109, size: 32, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2497, file: !2470, line: 64, baseType: !2503, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !512, line: 94, baseType: !513)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2497, file: !2470, line: 65, baseType: !2503, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2469, file: !2470, line: 105, baseType: !2506, size: 256)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 69, size: 256, elements: !2507)
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2506, file: !2470, line: 70, baseType: !353, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !2470, line: 79, baseType: !2510, size: 192, offset: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2506, file: !2470, line: 79, size: 192, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2521, !2526}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2510, file: !2470, line: 81, baseType: !109, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2510, file: !2470, line: 86, baseType: !955, size: 16)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2510, file: !2470, line: 92, baseType: !2515, size: 192)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !2470, line: 88, size: 192, elements: !2516)
!2516 = !{!2517, !2519, !2520}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2515, file: !2470, line: 89, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 64, elements: !1540)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2515, file: !2470, line: 90, baseType: !353, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2515, file: !2470, line: 91, baseType: !353, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2510, file: !2470, line: 97, baseType: !2522, size: 96)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !2470, line: 94, size: 96, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2522, file: !2470, line: 95, baseType: !2518, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2522, file: !2470, line: 96, baseType: !627, size: 32, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2510, file: !2470, line: 103, baseType: !2527, size: 128)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !2470, line: 99, size: 128, elements: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2527, file: !2470, line: 100, baseType: !356, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2527, file: !2470, line: 101, baseType: !627, size: 32, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2527, file: !2470, line: 102, baseType: !627, size: 32, offset: 96)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2469, file: !2470, line: 111, baseType: !2533, size: 128)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 108, size: 128, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2533, file: !2470, line: 109, baseType: !514, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2533, file: !2470, line: 110, baseType: !109, size: 32, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2469, file: !2470, line: 118, baseType: !2538, size: 128)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 114, size: 128, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2538, file: !2470, line: 115, baseType: !353, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2538, file: !2470, line: 116, baseType: !109, size: 32, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2538, file: !2470, line: 117, baseType: !7, size: 32, offset: 96)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1386, file: !1387, line: 1208, baseType: !2322, size: 448, offset: 17664)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1386, file: !1387, line: 1215, baseType: !630, size: 64, offset: 18112)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1386, file: !1387, line: 1217, baseType: !630, size: 64, offset: 18176)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1386, file: !1387, line: 1219, baseType: !630, size: 64, offset: 18240)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1386, file: !1387, line: 1223, baseType: !2548, size: 64, offset: 18304)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2549, line: 99, baseType: !2550)
!2549 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2549, line: 99, size: 64, elements: !2551)
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2550, file: !2549, line: 99, baseType: !1624, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1386, file: !1387, line: 1225, baseType: !598, size: 32, offset: 18368)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1386, file: !1387, line: 1226, baseType: !109, size: 32, offset: 18400)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1386, file: !1387, line: 1227, baseType: !109, size: 32, offset: 18432)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1386, file: !1387, line: 1231, baseType: !2557, size: 64, offset: 18496)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1387, line: 1231, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1386, file: !1387, line: 1233, baseType: !399, size: 128, offset: 18560)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1386, file: !1387, line: 1240, baseType: !2561, size: 64, offset: 18688)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1387, line: 62, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1386, file: !1387, line: 1242, baseType: !2564, size: 64, offset: 18752)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1387, line: 1242, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1386, file: !1387, line: 1244, baseType: !399, size: 128, offset: 18816)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1386, file: !1387, line: 1245, baseType: !2568, size: 64, offset: 18944)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1387, line: 51, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1386, file: !1387, line: 1246, baseType: !817, size: 256, offset: 19008)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1386, file: !1387, line: 1247, baseType: !7, size: 32, offset: 19264)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1386, file: !1387, line: 1250, baseType: !2573, size: 64, offset: 19328)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1387, line: 57, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1386, file: !1387, line: 1251, baseType: !817, size: 256, offset: 19392)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1386, file: !1387, line: 1252, baseType: !399, size: 128, offset: 19648)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1386, file: !1387, line: 1259, baseType: !2578, size: 64, offset: 19776)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1387, line: 54, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1386, file: !1387, line: 1260, baseType: !955, size: 16, offset: 19840)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1386, file: !1387, line: 1261, baseType: !955, size: 16, offset: 19856)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1386, file: !1387, line: 1314, baseType: !2583, size: 64, offset: 19904)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2585, line: 62, size: 256, align: 256, elements: !2586)
!2585 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2584, file: !2585, line: 75, baseType: !627, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2584, file: !2585, line: 90, baseType: !627, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2584, file: !2585, line: 112, baseType: !631, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2584, file: !2585, line: 132, baseType: !627, size: 32, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2584, file: !2585, line: 140, baseType: !627, size: 32, offset: 160)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2584, file: !2585, line: 149, baseType: !627, size: 32, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2584, file: !2585, line: 154, baseType: !2594, offset: 224)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, elements: !1846)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1386, file: !1387, line: 1315, baseType: !626, size: 32, offset: 19968)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1386, file: !1387, line: 1316, baseType: !626, size: 32, offset: 20000)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1386, file: !1387, line: 1321, baseType: !356, size: 64, offset: 20032)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1386, file: !1387, line: 1325, baseType: !109, size: 32, offset: 20096)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1386, file: !1387, line: 1326, baseType: !109, size: 32, offset: 20128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1386, file: !1387, line: 1327, baseType: !109, size: 32, offset: 20160)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1386, file: !1387, line: 1328, baseType: !109, size: 32, offset: 20192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1386, file: !1387, line: 1329, baseType: !1037, size: 128, align: 64, offset: 20224)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1386, file: !1387, line: 1332, baseType: !2604, size: 128, offset: 20352)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2605, line: 51, size: 128, elements: !2606)
!2605 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2606 = !{!2607, !2612, !2613}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2604, file: !2605, line: 60, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2609, line: 7, size: 64, elements: !2610)
!2609 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2610 = !{!2611}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2608, file: !2609, line: 12, baseType: !1621, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2604, file: !2605, line: 63, baseType: !897, size: 8, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2604, file: !2605, line: 70, baseType: !897, size: 8, offset: 72)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1386, file: !1387, line: 1335, baseType: !2615, size: 64, offset: 20480)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1387, line: 59, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1386, file: !1387, line: 1337, baseType: !2618, size: 128, offset: 20544)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2605, line: 39, size: 128, elements: !2619)
!2619 = !{!2620, !2904, !2905}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2618, file: !2605, line: 40, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2623)
!2623 = !{!2624, !2625, !2898, !2903}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2622, file: !38, line: 75, baseType: !356, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !38, line: 83, baseType: !2626, size: 320, offset: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2622, file: !38, line: 83, size: 320, elements: !2627)
!2627 = !{!2628, !2649, !2663, !2667, !2897}
!2628 = !DIDerivedType(tag: DW_TAG_member, scope: !2626, file: !38, line: 84, baseType: !2629, size: 320)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2626, file: !38, line: 84, size: 320, elements: !2630)
!2630 = !{!2631, !2642, !2643, !2648}
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !38, line: 90, baseType: !2632, size: 128)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2629, file: !38, line: 90, size: 128, elements: !2633)
!2633 = !{!2634, !2635, !2640, !2641}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2632, file: !38, line: 91, baseType: !399, size: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !38, line: 94, baseType: !2636, size: 128)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2632, file: !38, line: 94, size: 128, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2636, file: !38, line: 96, baseType: !353, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2636, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2632, file: !38, line: 102, baseType: !399, size: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2632, file: !38, line: 103, baseType: !399, size: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2629, file: !38, line: 106, baseType: !553, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !38, line: 107, baseType: !2644, size: 64, offset: 192)
!2644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2629, file: !38, line: 107, size: 64, elements: !2645)
!2645 = !{!2646, !2647}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2644, file: !38, line: 108, baseType: !356, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2644, file: !38, line: 109, baseType: !356, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2629, file: !38, line: 117, baseType: !356, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2626, file: !38, line: 119, baseType: !2650, size: 320)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2626, file: !38, line: 119, size: 320, elements: !2651)
!2651 = !{!2652, !2653, !2656, !2657, !2658}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2650, file: !38, line: 124, baseType: !356, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2650, file: !38, line: 125, baseType: !2654, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2650, file: !38, line: 126, baseType: !356, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2650, file: !38, line: 127, baseType: !356, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, scope: !2650, file: !38, line: 128, baseType: !2659, size: 64, offset: 256)
!2659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2650, file: !38, line: 128, size: 64, elements: !2660)
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2659, file: !38, line: 133, baseType: !356, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2659, file: !38, line: 138, baseType: !821, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, scope: !2626, file: !38, line: 141, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2626, file: !38, line: 141, size: 64, elements: !2665)
!2665 = !{!2666}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2664, file: !38, line: 142, baseType: !356, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, scope: !2626, file: !38, line: 144, baseType: !2668, size: 128)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2626, file: !38, line: 144, size: 128, elements: !2669)
!2669 = !{!2670, !2896}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2668, file: !38, line: 146, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !30, line: 126, size: 1216, elements: !2673)
!2673 = !{!2674, !2684, !2705, !2706, !2707, !2708, !2709, !2878, !2879, !2880}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2672, file: !30, line: 127, baseType: !2675, size: 384)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !30, line: 21, size: 384, elements: !2676)
!2676 = !{!2677, !2678, !2680, !2681, !2682, !2683}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2675, file: !30, line: 22, baseType: !356, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2675, file: !30, line: 23, baseType: !2679, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2675, file: !30, line: 24, baseType: !2679, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2675, file: !30, line: 25, baseType: !356, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2675, file: !30, line: 26, baseType: !356, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2675, file: !30, line: 27, baseType: !356, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2672, file: !30, line: 128, baseType: !2685, size: 128, offset: 384)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2686, line: 105, size: 128, elements: !2687)
!2686 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2685, file: !2686, line: 110, baseType: !356, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2685, file: !2686, line: 118, baseType: !2690, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2686, line: 95, size: 448, elements: !2692)
!2692 = !{!2693, !2694, !2700, !2701, !2702, !2703, !2704}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2691, file: !2686, line: 96, baseType: !821, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2691, file: !2686, line: 97, baseType: !2695, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2686, line: 60, baseType: !2697)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{null, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2691, file: !2686, line: 98, baseType: !2695, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2691, file: !2686, line: 99, baseType: !897, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2691, file: !2686, line: 100, baseType: !897, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2691, file: !2686, line: 101, baseType: !1037, size: 128, align: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2691, file: !2686, line: 102, baseType: !2699, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2672, file: !30, line: 129, baseType: !766, size: 256, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2672, file: !30, line: 130, baseType: !29, size: 32, offset: 768)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2672, file: !30, line: 131, baseType: !7, size: 32, offset: 800)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2672, file: !30, line: 132, baseType: !356, size: 64, offset: 832)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2672, file: !30, line: 133, baseType: !2710, size: 64, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !30, line: 77, size: 192, elements: !2713)
!2713 = !{!2714, !2718, !2874}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2712, file: !30, line: 83, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !2621}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2712, file: !30, line: 89, baseType: !2719, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!2722, !2723}
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2725, line: 512, size: 896, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2726 = !{!2727, !2841, !2842, !2849, !2856, !2866, !2867, !2868, !2870, !2872}
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2724, file: !2725, line: 513, baseType: !2728, size: 320)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2724, file: !2725, line: 513, size: 320, elements: !2729)
!2729 = !{!2730, !2837, !2838, !2839, !2840}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2728, file: !2725, line: 514, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2733)
!2733 = !{!2734, !2743, !2744, !2750, !2757, !2758, !2763, !2764, !2769, !2770, !2773, !2830, !2831, !2832, !2833, !2834, !2835}
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !2732, file: !38, line: 628, baseType: !2735, size: 128)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2732, file: !38, line: 628, size: 128, elements: !2736)
!2736 = !{!2737, !2742}
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !2735, file: !38, line: 629, baseType: !2738, size: 128)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !38, line: 629, size: 128, elements: !2739)
!2739 = !{!2740, !2741}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2738, file: !38, line: 631, baseType: !356, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2738, file: !38, line: 632, baseType: !356, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2735, file: !38, line: 635, baseType: !1037, size: 128, align: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2732, file: !38, line: 639, baseType: !1673, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2732, file: !38, line: 640, baseType: !2745, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1709, line: 297, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1709, line: 297, size: 64, elements: !2747)
!2747 = !{!2748}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2746, file: !1709, line: 297, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1714, line: 19, baseType: !356)
!2750 = !DIDerivedType(tag: DW_TAG_member, scope: !2732, file: !38, line: 646, baseType: !2751, size: 64, offset: 256)
!2751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2732, file: !38, line: 646, size: 64, elements: !2752)
!2752 = !{!2753, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2751, file: !38, line: 647, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !356)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2751, file: !38, line: 648, baseType: !2755, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2732, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2732, file: !38, line: 667, baseType: !2759, size: 64, offset: 384)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2761)
!2761 = !{!2762}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2760, file: !38, line: 580, baseType: !1728, size: 320)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2732, file: !38, line: 670, baseType: !897, size: 8, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2732, file: !38, line: 681, baseType: !2765, size: 256, offset: 512)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2732, file: !38, line: 678, size: 256, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2765, file: !38, line: 679, baseType: !929, size: 192, align: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2765, file: !38, line: 680, baseType: !356, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2732, file: !38, line: 689, baseType: !399, size: 128, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2732, file: !38, line: 691, baseType: !2771, size: 64, offset: 896)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2732, file: !38, line: 694, baseType: !2774, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2776)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2725, line: 563, size: 1024, elements: !2777)
!2777 = !{!2778, !2782, !2783, !2787, !2791, !2795, !2796, !2800, !2804, !2808, !2809, !2810, !2814, !2818, !2822, !2826}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2776, file: !2725, line: 564, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2731}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2776, file: !2725, line: 569, baseType: !2779, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2776, file: !2725, line: 571, baseType: !2784, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!109, !2731, !356}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2776, file: !2725, line: 572, baseType: !2788, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!109, !2731}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2776, file: !2725, line: 578, baseType: !2792, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!109, !2731, !356, !356, !356}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2776, file: !2725, line: 580, baseType: !2719, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2776, file: !2725, line: 581, baseType: !2797, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!2722, !2723, !7}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2776, file: !2725, line: 582, baseType: !2801, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!2722, !2723, !356, !356}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2776, file: !2725, line: 584, baseType: !2805, size: 64, offset: 512)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!356, !2731}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2776, file: !2725, line: 588, baseType: !2719, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2776, file: !2725, line: 591, baseType: !2719, size: 64, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2776, file: !2725, line: 597, baseType: !2811, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!109, !2731, !356, !353, !109, !109}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2776, file: !2725, line: 603, baseType: !2815, size: 64, offset: 768)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!395, !2731}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2776, file: !2725, line: 613, baseType: !2819, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!109, !2731, !2578}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2776, file: !2725, line: 625, baseType: !2823, size: 64, offset: 896)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2578, !2731, !356}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2776, file: !2725, line: 633, baseType: !2827, size: 64, offset: 960)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!2621, !2731, !356}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2732, file: !38, line: 697, baseType: !356, size: 64, offset: 1024)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2732, file: !38, line: 699, baseType: !1700, size: 64, offset: 1088)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2732, file: !38, line: 700, baseType: !353, size: 64, offset: 1152)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2732, file: !38, line: 711, baseType: !821, size: 64, offset: 1216)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2732, file: !38, line: 717, baseType: !2578, size: 64, offset: 1280)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2732, file: !38, line: 722, baseType: !2836, offset: 1344)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1106)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2728, file: !2725, line: 515, baseType: !354, size: 32, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2728, file: !2725, line: 516, baseType: !356, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2728, file: !2725, line: 517, baseType: !356, size: 64, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2728, file: !2725, line: 518, baseType: !356, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2724, file: !2725, line: 520, baseType: !37, size: 32, offset: 320)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2724, file: !2725, line: 522, baseType: !2843, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1714, line: 22, baseType: !2845)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1714, line: 22, size: 64, elements: !2846)
!2846 = !{!2847}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2845, file: !1714, line: 22, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1714, line: 15, baseType: !356)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2724, file: !2725, line: 524, baseType: !2850, size: 64, offset: 448)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1709, line: 372, baseType: !2852)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1709, line: 372, size: 64, elements: !2853)
!2853 = !{!2854}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2852, file: !1709, line: 372, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1714, line: 16, baseType: !356)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2724, file: !2725, line: 527, baseType: !2857, size: 64, offset: 512)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2724, file: !2725, line: 527, size: 64, elements: !2858)
!2858 = !{!2859, !2865}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2857, file: !2725, line: 528, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1714, line: 21, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1714, line: 21, size: 64, elements: !2862)
!2862 = !{!2863}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2861, file: !1714, line: 21, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1714, line: 14, baseType: !356)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2857, file: !2725, line: 529, baseType: !2844, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2724, file: !2725, line: 534, baseType: !2621, size: 64, offset: 576)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2724, file: !2725, line: 535, baseType: !2621, size: 64, offset: 640)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2724, file: !2725, line: 541, baseType: !2869, size: 64, offset: 704)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2724, file: !2725, line: 545, baseType: !2871, size: 64, offset: 768)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2724, file: !2725, line: 549, baseType: !2873, size: 64, offset: 832)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1709, line: 520, baseType: !2621)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2712, file: !30, line: 100, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!109, !2671, !356, !356, !109}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2672, file: !30, line: 134, baseType: !353, size: 64, offset: 960)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2672, file: !30, line: 135, baseType: !109, size: 32, offset: 1024)
!2880 = !DIDerivedType(tag: DW_TAG_member, scope: !2672, file: !30, line: 136, baseType: !2881, size: 128, offset: 1088)
!2881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2672, file: !30, line: 136, size: 128, elements: !2882)
!2882 = !{!2883, !2889}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2881, file: !30, line: 137, baseType: !2884, size: 128)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2885, line: 6, size: 128, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2886 = !{!2887, !2888}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2884, file: !2885, line: 7, baseType: !630, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2884, file: !2885, line: 8, baseType: !630, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !30, line: 138, baseType: !2890)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2881, file: !30, line: 138, elements: !2891)
!2891 = !{!2892, !2894}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2890, file: !30, line: 138, baseType: !2893)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !30, line: 138, elements: !1106)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2890, file: !30, line: 138, baseType: !2895)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2884, elements: !1846)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2668, file: !38, line: 147, baseType: !353, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2626, file: !38, line: 161, baseType: !1037, size: 128, align: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !38, line: 164, baseType: !2899, size: 32, offset: 384)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2622, file: !38, line: 164, size: 32, elements: !2900)
!2900 = !{!2901, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2899, file: !38, line: 169, baseType: !382, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2899, file: !38, line: 177, baseType: !7, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2622, file: !38, line: 181, baseType: !382, size: 32, offset: 416)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2618, file: !2605, line: 42, baseType: !627, size: 32, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2618, file: !2605, line: 43, baseType: !627, size: 32, offset: 96)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1386, file: !1387, line: 1340, baseType: !2907, size: 64, offset: 20672)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1387, line: 69, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1386, file: !1387, line: 1351, baseType: !109, size: 32, offset: 20736)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1386, file: !1387, line: 1352, baseType: !109, size: 32, offset: 20768)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1386, file: !1387, line: 1354, baseType: !356, size: 64, offset: 20800)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1386, file: !1387, line: 1364, baseType: !630, size: 64, offset: 20864)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1386, file: !1387, line: 1365, baseType: !630, size: 64, offset: 20928)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1386, file: !1387, line: 1412, baseType: !356, size: 64, offset: 20992)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1386, file: !1387, line: 1453, baseType: !2916, size: 64, offset: 21056)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1387, line: 1453, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1386, file: !1387, line: 1457, baseType: !2919, size: 64, offset: 21120)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !54, line: 61, size: 576, elements: !2921)
!2921 = !{!2922, !2923, !2942, !2945, !2946, !2979, !2989}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2920, file: !54, line: 62, baseType: !53, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2920, file: !54, line: 64, baseType: !2924, size: 192, offset: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2920, file: !54, line: 64, size: 192, elements: !2925)
!2925 = !{!2926, !2937}
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !2924, file: !54, line: 65, baseType: !2927, size: 192)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2924, file: !54, line: 65, size: 192, elements: !2928)
!2928 = !{!2929, !2936}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2927, file: !54, line: 66, baseType: !2930, size: 128)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2931, line: 50, size: 128, elements: !2932)
!2931 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2930, file: !2931, line: 52, baseType: !356, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2930, file: !2931, line: 54, baseType: !7, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2930, file: !2931, line: 55, baseType: !7, size: 32, offset: 96)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2927, file: !54, line: 67, baseType: !356, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !2924, file: !54, line: 70, baseType: !2938, size: 192)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2924, file: !54, line: 70, size: 192, elements: !2939)
!2939 = !{!2940, !2941}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2938, file: !54, line: 71, baseType: !1037, size: 128, align: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2938, file: !54, line: 72, baseType: !356, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2920, file: !54, line: 76, baseType: !2943, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !54, line: 76, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2920, file: !54, line: 77, baseType: !356, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2920, file: !54, line: 79, baseType: !2947, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2931, line: 25, size: 256, elements: !2949)
!2949 = !{!2950, !2956, !2960}
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !2931, line: 26, baseType: !2951, size: 128)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !2931, line: 26, size: 128, elements: !2952)
!2952 = !{!2953, !2955}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2951, file: !2931, line: 27, baseType: !2954, size: 128)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 128, elements: !2173)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2951, file: !2931, line: 28, baseType: !2954, size: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2948, file: !2931, line: 31, baseType: !2957, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2931, line: 23, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !2931, line: 33, baseType: !2961, size: 64, offset: 192)
!2961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !2931, line: 33, size: 64, elements: !2962)
!2962 = !{!2963, !2969, !2974}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2961, file: !2931, line: 38, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !2931, line: 34, size: 64, elements: !2965)
!2965 = !{!2966, !2967, !2968}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2964, file: !2931, line: 35, baseType: !813, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2964, file: !2931, line: 36, baseType: !436, size: 8, offset: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2964, file: !2931, line: 37, baseType: !436, size: 8, offset: 40)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2961, file: !2931, line: 42, baseType: !2970, size: 16)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !2931, line: 39, size: 16, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2970, file: !2931, line: 40, baseType: !436, size: 8)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2970, file: !2931, line: 41, baseType: !436, size: 8, offset: 8)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2961, file: !2931, line: 46, baseType: !2975, size: 16)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !2931, line: 43, size: 16, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2975, file: !2931, line: 44, baseType: !436, size: 8)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2975, file: !2931, line: 45, baseType: !436, size: 8, offset: 8)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2920, file: !54, line: 81, baseType: !2980, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !54, line: 85, size: 384, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2981, file: !54, line: 86, baseType: !2943, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2981, file: !54, line: 87, baseType: !356, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2981, file: !54, line: 88, baseType: !356, size: 64, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2981, file: !54, line: 89, baseType: !356, size: 64, offset: 192)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2981, file: !54, line: 90, baseType: !897, size: 8, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2981, file: !54, line: 92, baseType: !2980, size: 64, offset: 320)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2920, file: !54, line: 82, baseType: !7, size: 32, offset: 512)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1386, file: !1387, line: 1463, baseType: !2991, offset: 21184)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1387, line: 739, elements: !1106)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1386, file: !1387, line: 1470, baseType: !1037, size: 128, align: 64, offset: 21184)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1386, file: !1387, line: 1471, baseType: !378, size: 32, offset: 21312)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1386, file: !1387, line: 1472, baseType: !109, size: 32, offset: 21344)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1386, file: !1387, line: 1474, baseType: !1385, size: 64, offset: 21376)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1386, file: !1387, line: 1475, baseType: !1059, size: 320, offset: 21440)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1386, file: !1387, line: 1478, baseType: !2998, size: 64, offset: 21760)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3000, line: 49, size: 512, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3008, !3009, !3010, !3012}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2999, file: !3000, line: 50, baseType: !2998, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2999, file: !3000, line: 51, baseType: !353, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2999, file: !3000, line: 52, baseType: !356, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2999, file: !3000, line: 53, baseType: !356, size: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2999, file: !3000, line: 54, baseType: !3007, size: 64, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2999, file: !3000, line: 56, baseType: !7, size: 32, offset: 320)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2999, file: !3000, line: 58, baseType: !7, size: 32, offset: 352)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2999, file: !3000, line: 59, baseType: !3011, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !355, line: 159, baseType: !630)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2999, file: !3000, line: 60, baseType: !1805, size: 64, offset: 448)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1386, file: !1387, line: 1482, baseType: !378, size: 32, offset: 21824)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1386, file: !1387, line: 1489, baseType: !353, size: 64, offset: 21888)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1386, file: !1387, line: 1504, baseType: !353, size: 64, offset: 21952)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1386, file: !1387, line: 1505, baseType: !631, size: 64, offset: 22016)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1386, file: !1387, line: 1506, baseType: !630, size: 64, offset: 22080)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1386, file: !1387, line: 1507, baseType: !631, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1386, file: !1387, line: 1508, baseType: !631, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1386, file: !1387, line: 1509, baseType: !631, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1386, file: !1387, line: 1510, baseType: !1037, size: 128, align: 64, offset: 22208)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1386, file: !1387, line: 1511, baseType: !109, size: 32, offset: 22336)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1386, file: !1387, line: 1515, baseType: !3024, size: 64, offset: 22400)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1304, line: 56, size: 64, elements: !3025)
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3024, file: !1304, line: 57, baseType: !1307, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1386, file: !1387, line: 1518, baseType: !3024, size: 64, offset: 22464)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1386, file: !1387, line: 1528, baseType: !1037, size: 128, align: 64, offset: 22528)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1386, file: !1387, line: 1552, baseType: !3030, size: 35328, offset: 23040)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3031, line: 430, size: 35328, elements: !3032)
!3031 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3032 = !{!3033, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3062, !3063, !3064, !3065, !3066, !3067, !3070, !3071, !3072, !3073}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3030, file: !3031, line: 432, baseType: !3034, size: 192)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 192, elements: !479)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3036, line: 16, size: 64, elements: !3037)
!3036 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3035, file: !3036, line: 17, baseType: !446, size: 16)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3035, file: !3036, line: 18, baseType: !446, size: 16, offset: 16)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3035, file: !3036, line: 19, baseType: !446, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3035, file: !3036, line: 19, baseType: !446, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3035, file: !3036, line: 19, baseType: !446, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3035, file: !3036, line: 19, baseType: !446, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3035, file: !3036, line: 19, baseType: !446, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3035, file: !3036, line: 20, baseType: !446, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3035, file: !3036, line: 20, baseType: !446, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3035, file: !3036, line: 20, baseType: !446, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3035, file: !3036, line: 20, baseType: !446, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3035, file: !3036, line: 20, baseType: !446, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3035, file: !3036, line: 20, baseType: !446, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3030, file: !3031, line: 436, baseType: !356, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3030, file: !3031, line: 440, baseType: !448, size: 16, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3030, file: !3031, line: 441, baseType: !448, size: 16, offset: 272)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3030, file: !3031, line: 442, baseType: !448, size: 16, offset: 288)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3030, file: !3031, line: 443, baseType: !448, size: 16, offset: 304)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3030, file: !3031, line: 447, baseType: !356, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3030, file: !3031, line: 448, baseType: !356, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3030, file: !3031, line: 459, baseType: !3059, size: 256, offset: 448)
!3059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3060, size: 256, elements: !1047)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3031, line: 428, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3030, file: !3031, line: 461, baseType: !356, size: 64, offset: 704)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3030, file: !3031, line: 463, baseType: !356, size: 64, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3030, file: !3031, line: 465, baseType: !356, size: 64, offset: 832)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3030, file: !3031, line: 466, baseType: !356, size: 64, offset: 896)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3030, file: !3031, line: 467, baseType: !356, size: 64, offset: 960)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3030, file: !3031, line: 473, baseType: !3068, size: 64, offset: 1024)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3031, line: 10, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3030, file: !3031, line: 480, baseType: !356, size: 64, offset: 1088)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3030, file: !3031, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3030, file: !3031, line: 491, baseType: !626, size: 32, offset: 1184)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3030, file: !3031, line: 501, baseType: !3074, size: 33792, offset: 1536)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3075, line: 448, size: 33792, elements: !3076)
!3075 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3076 = !{!3077, !3078, !3079, !3241, !3242, !3248, !3249}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3074, file: !3075, line: 461, baseType: !7, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3074, file: !3075, line: 468, baseType: !356, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3074, file: !3075, line: 476, baseType: !3080, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3075, line: 356, size: 33280, align: 512, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3081, file: !3075, line: 358, baseType: !7, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3081, file: !3075, line: 361, baseType: !7, size: 32, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3081, file: !3075, line: 364, baseType: !630, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3081, file: !3075, line: 367, baseType: !630, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3081, file: !3075, line: 370, baseType: !630, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3081, file: !3075, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3081, file: !3075, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3081, file: !3075, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3081, file: !3075, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3081, file: !3075, line: 397, baseType: !3093, size: 32768, offset: 512)
!3093 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3075, line: 348, size: 32768, elements: !3094)
!3094 = !{!3095, !3110, !3147, !3224, !3237}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3093, file: !3075, line: 349, baseType: !3096, size: 896)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3075, line: 12, size: 896, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3109}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3096, file: !3075, line: 13, baseType: !626, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3096, file: !3075, line: 14, baseType: !626, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3096, file: !3075, line: 15, baseType: !626, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3096, file: !3075, line: 16, baseType: !626, size: 32, offset: 96)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3096, file: !3075, line: 17, baseType: !626, size: 32, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3096, file: !3075, line: 18, baseType: !626, size: 32, offset: 160)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3096, file: !3075, line: 19, baseType: !626, size: 32, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3096, file: !3075, line: 22, baseType: !3106, size: 640, offset: 224)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 640, elements: !3107)
!3107 = !{!3108}
!3108 = !DISubrange(count: 20)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3096, file: !3075, line: 25, baseType: !626, size: 32, offset: 864)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3093, file: !3075, line: 350, baseType: !3111, size: 4096, align: 128)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3075, line: 34, size: 4096, align: 128, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3132, !3133, !3134, !3136, !3138, !3142}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3111, file: !3075, line: 35, baseType: !446, size: 16)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3111, file: !3075, line: 36, baseType: !446, size: 16, offset: 16)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3111, file: !3075, line: 37, baseType: !446, size: 16, offset: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3111, file: !3075, line: 38, baseType: !446, size: 16, offset: 48)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3075, line: 39, baseType: !3118, size: 128, offset: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3111, file: !3075, line: 39, size: 128, elements: !3119)
!3119 = !{!3120, !3125}
!3120 = !DIDerivedType(tag: DW_TAG_member, scope: !3118, file: !3075, line: 40, baseType: !3121, size: 128)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3118, file: !3075, line: 40, size: 128, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3121, file: !3075, line: 41, baseType: !630, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3121, file: !3075, line: 42, baseType: !630, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3118, file: !3075, line: 44, baseType: !3126, size: 128)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3118, file: !3075, line: 44, size: 128, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3126, file: !3075, line: 45, baseType: !626, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3126, file: !3075, line: 46, baseType: !626, size: 32, offset: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3126, file: !3075, line: 47, baseType: !626, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3126, file: !3075, line: 48, baseType: !626, size: 32, offset: 96)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3111, file: !3075, line: 51, baseType: !626, size: 32, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3111, file: !3075, line: 52, baseType: !626, size: 32, offset: 224)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3111, file: !3075, line: 55, baseType: !3135, size: 1024, offset: 256)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 1024, elements: !639)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3111, file: !3075, line: 58, baseType: !3137, size: 2048, offset: 1280)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 2048, elements: !483)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3111, file: !3075, line: 60, baseType: !3139, size: 384, offset: 3328)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 384, elements: !3140)
!3140 = !{!3141}
!3141 = !DISubrange(count: 12)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3075, line: 62, baseType: !3143, size: 384, offset: 3712)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3111, file: !3075, line: 62, size: 384, elements: !3144)
!3144 = !{!3145, !3146}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3143, file: !3075, line: 63, baseType: !3139, size: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3143, file: !3075, line: 64, baseType: !3139, size: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3093, file: !3075, line: 351, baseType: !3148, size: 1088)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3075, line: 79, size: 1088, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3223}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3148, file: !3075, line: 80, baseType: !626, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3148, file: !3075, line: 81, baseType: !626, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3148, file: !3075, line: 82, baseType: !626, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3148, file: !3075, line: 83, baseType: !626, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3148, file: !3075, line: 84, baseType: !626, size: 32, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3148, file: !3075, line: 85, baseType: !626, size: 32, offset: 160)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3148, file: !3075, line: 86, baseType: !626, size: 32, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3148, file: !3075, line: 88, baseType: !3106, size: 640, offset: 224)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3148, file: !3075, line: 89, baseType: !436, size: 8, offset: 864)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3148, file: !3075, line: 90, baseType: !436, size: 8, offset: 872)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3148, file: !3075, line: 91, baseType: !436, size: 8, offset: 880)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3148, file: !3075, line: 92, baseType: !436, size: 8, offset: 888)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3148, file: !3075, line: 93, baseType: !436, size: 8, offset: 896)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3148, file: !3075, line: 94, baseType: !436, size: 8, offset: 904)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3148, file: !3075, line: 95, baseType: !3165, size: 64, offset: 960)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3167, line: 11, size: 128, elements: !3168)
!3167 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3166, file: !3167, line: 12, baseType: !514, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3166, file: !3167, line: 13, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3173, line: 103, size: 1344, elements: !3174)
!3173 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3203, !3204, !3205}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3172, file: !3173, line: 109, baseType: !356, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3172, file: !3173, line: 110, baseType: !356, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3172, file: !3173, line: 111, baseType: !356, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3172, file: !3173, line: 112, baseType: !356, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3172, file: !3173, line: 113, baseType: !356, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3172, file: !3173, line: 114, baseType: !356, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3172, file: !3173, line: 117, baseType: !356, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3172, file: !3173, line: 118, baseType: !356, size: 64, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3172, file: !3173, line: 119, baseType: !356, size: 64, offset: 512)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3172, file: !3173, line: 120, baseType: !356, size: 64, offset: 576)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3172, file: !3173, line: 121, baseType: !356, size: 64, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3172, file: !3173, line: 122, baseType: !356, size: 64, offset: 704)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3172, file: !3173, line: 123, baseType: !356, size: 64, offset: 768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3172, file: !3173, line: 124, baseType: !356, size: 64, offset: 832)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3172, file: !3173, line: 125, baseType: !356, size: 64, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3172, file: !3173, line: 139, baseType: !356, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3172, file: !3173, line: 142, baseType: !356, size: 64, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3173, line: 144, baseType: !3193, size: 64, offset: 1088)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !3173, line: 144, size: 64, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3193, file: !3173, line: 146, baseType: !446, size: 16)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3193, file: !3173, line: 148, baseType: !630, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3193, file: !3173, line: 150, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3173, line: 59, size: 64, elements: !3199)
!3199 = !{!3200, !3201, !3202}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3198, file: !3173, line: 61, baseType: !630, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3198, file: !3173, line: 63, baseType: !630, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3198, file: !3173, line: 65, baseType: !630, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3172, file: !3173, line: 153, baseType: !356, size: 64, offset: 1152)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3172, file: !3173, line: 154, baseType: !356, size: 64, offset: 1216)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3173, line: 156, baseType: !3206, size: 64, offset: 1280)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !3173, line: 156, size: 64, elements: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3206, file: !3173, line: 158, baseType: !446, size: 16)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3206, file: !3173, line: 160, baseType: !630, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3206, file: !3173, line: 162, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3173, line: 69, size: 64, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3211, file: !3173, line: 71, baseType: !630, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3211, file: !3173, line: 73, baseType: !630, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3211, file: !3173, line: 75, baseType: !630, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3211, file: !3173, line: 77, baseType: !630, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3211, file: !3173, line: 80, baseType: !630, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3211, file: !3173, line: 83, baseType: !630, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3211, file: !3173, line: 86, baseType: !630, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3211, file: !3173, line: 88, baseType: !630, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3211, file: !3173, line: 93, baseType: !630, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3211, file: !3173, line: 100, baseType: !630, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3148, file: !3075, line: 96, baseType: !626, size: 32, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3093, file: !3075, line: 352, baseType: !3225, size: 4608, align: 512)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3075, line: 333, size: 4608, align: 512, elements: !3226)
!3226 = !{!3227, !3228, !3235}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3225, file: !3075, line: 334, baseType: !3111, size: 4096, align: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3225, file: !3075, line: 335, baseType: !3229, size: 512, offset: 4096)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3075, line: 312, size: 512, elements: !3230)
!3230 = !{!3231, !3232, !3233}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3229, file: !3075, line: 313, baseType: !630, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3229, file: !3075, line: 314, baseType: !630, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3229, file: !3075, line: 315, baseType: !3234, size: 384, offset: 128)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 384, elements: !2065)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3225, file: !3075, line: 336, baseType: !3236, offset: 4608)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, elements: !1846)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3093, file: !3075, line: 353, baseType: !3238, size: 32768)
!3238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 32768, elements: !3239)
!3239 = !{!3240}
!3240 = !DISubrange(count: 4096)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3074, file: !3075, line: 484, baseType: !3080, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3074, file: !3075, line: 491, baseType: !3243, size: 128, offset: 256)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3075, line: 404, size: 128, elements: !3244)
!3244 = !{!3245, !3246, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3243, file: !3075, line: 424, baseType: !630, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3243, file: !3075, line: 432, baseType: !7, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3243, file: !3075, line: 440, baseType: !7, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3074, file: !3075, line: 498, baseType: !3243, size: 128, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3074, file: !3075, line: 508, baseType: !3081, size: 33280, align: 512, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1366, file: !1367, line: 31, baseType: !3251, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3253, line: 11, flags: DIFlagFwdDecl)
!3253 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1366, file: !1367, line: 32, baseType: !7, size: 32, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1366, file: !1367, line: 33, baseType: !1365, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1366, file: !1367, line: 35, baseType: !3257, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1367, line: 17, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1366, file: !1367, line: 37, baseType: !1828, size: 64, offset: 704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1366, file: !1367, line: 38, baseType: !2152, size: 64, offset: 768)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1366, file: !1367, line: 39, baseType: !109, size: 32, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1366, file: !1367, line: 40, baseType: !3263, size: 192, offset: 896)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3264, line: 9, size: 192, elements: !3265)
!3264 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3265 = !{!3266, !3267, !3271, !3272}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3263, file: !3264, line: 10, baseType: !821, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3263, file: !3264, line: 11, baseType: !3268, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3264, line: 7, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3263, file: !3264, line: 12, baseType: !7, size: 32, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3263, file: !3264, line: 13, baseType: !378, size: 32, offset: 160)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1366, file: !1367, line: 42, baseType: !109, size: 32, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1318, file: !14, line: 951, baseType: !60, size: 32, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1318, file: !14, line: 952, baseType: !563, size: 32, offset: 160)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1318, file: !14, line: 952, baseType: !563, size: 32, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1318, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1297, file: !14, line: 1012, baseType: !1987, size: 64, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1297, file: !14, line: 1013, baseType: !3280, size: 256, offset: 960)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3280, file: !14, line: 971, baseType: !356, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3280, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3280, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3280, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3280, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3280, file: !14, line: 976, baseType: !718, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1297, file: !14, line: 1014, baseType: !3289, size: 128, offset: 1216)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3290, line: 8, size: 128, elements: !3291)
!3290 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3291 = !{!3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3289, file: !3290, line: 9, baseType: !702, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3289, file: !3290, line: 10, baseType: !592, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1297, file: !14, line: 1015, baseType: !557, size: 64, offset: 1344)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1297, file: !14, line: 1016, baseType: !3296, size: 64, offset: 1408)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3298)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3299)
!3299 = !{!3300, !3301, !3305, !3309, !3313, !3341, !3342, !3348, !3361, !3378, !3382, !3383, !3387, !3388, !3392, !3397, !3398, !3402, !3406, !3412, !3413, !3417, !3418, !3422, !3426, !3430, !3436, !3440, !3444, !3448, !3452, !3453, !3459}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3298, file: !14, line: 1915, baseType: !746, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3298, file: !14, line: 1916, baseType: !3302, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!718, !1700, !718, !109}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3298, file: !14, line: 1917, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!510, !1700, !478, !525, !1280}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3298, file: !14, line: 1918, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!510, !1700, !395, !525, !1280}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3298, file: !14, line: 1919, baseType: !3314, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!510, !3317, !3339}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3326, !3327, !3328, !3329}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3318, file: !14, line: 374, baseType: !1700, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3318, file: !14, line: 375, baseType: !718, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3318, file: !14, line: 376, baseType: !3323, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3317, !514}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3318, file: !14, line: 377, baseType: !353, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3318, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3318, file: !14, line: 379, baseType: !446, size: 16, offset: 288)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3318, file: !14, line: 380, baseType: !3330, size: 64, offset: 320)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3318, file: !14, line: 380, size: 64, elements: !3331)
!3331 = !{!3332, !3335}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3330, file: !14, line: 386, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3330, file: !14, line: 395, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!510, !353}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3298, file: !14, line: 1920, baseType: !3314, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3298, file: !14, line: 1921, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!109, !3317, !3346, !7}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3298, file: !14, line: 1923, baseType: !3349, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!109, !1700, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3354)
!3354 = !{!3355, !3360}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3353, file: !14, line: 1859, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3357)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!897, !3352, !395, !109, !718, !630, !7}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3353, file: !14, line: 1860, baseType: !718, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3298, file: !14, line: 1924, baseType: !3362, size: 64, offset: 512)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!3365, !1700, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3366, line: 59, baseType: !7)
!3366 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3369, line: 37, size: 128, elements: !3370)
!3369 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3370 = !{!3371, !3377}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3368, file: !3369, line: 38, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3369, line: 31, baseType: !3373)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !1700, !3376, !3367}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3368, file: !3369, line: 39, baseType: !3365, size: 32, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3298, file: !14, line: 1925, baseType: !3379, size: 64, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!514, !1700, !7, !356}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3298, file: !14, line: 1926, baseType: !3379, size: 64, offset: 640)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3298, file: !14, line: 1927, baseType: !3384, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!109, !1700, !2731}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3298, file: !14, line: 1928, baseType: !356, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3298, file: !14, line: 1929, baseType: !3389, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!109, !557, !1700}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3298, file: !14, line: 1930, baseType: !3393, size: 64, offset: 896)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!109, !1700, !3396}
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !353)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3298, file: !14, line: 1931, baseType: !3389, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3298, file: !14, line: 1932, baseType: !3399, size: 64, offset: 1024)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!109, !1700, !718, !718, !109}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3298, file: !14, line: 1933, baseType: !3403, size: 64, offset: 1088)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!109, !109, !1700, !109}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3298, file: !14, line: 1934, baseType: !3407, size: 64, offset: 1152)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!109, !1700, !109, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3298, file: !14, line: 1935, baseType: !1697, size: 64, offset: 1216)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3298, file: !14, line: 1936, baseType: !3414, size: 64, offset: 1280)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!109, !109}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3298, file: !14, line: 1937, baseType: !3407, size: 64, offset: 1344)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3298, file: !14, line: 1938, baseType: !3419, size: 64, offset: 1408)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!510, !2615, !1700, !1280, !525, !7}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3298, file: !14, line: 1939, baseType: !3423, size: 64, offset: 1472)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!510, !1700, !1280, !2615, !525, !7}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3298, file: !14, line: 1940, baseType: !3427, size: 64, offset: 1536)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{null, !1700}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3298, file: !14, line: 1941, baseType: !3431, size: 64, offset: 1600)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!109, !1700, !109, !3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3298, file: !14, line: 1942, baseType: !3437, size: 64, offset: 1664)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!514, !1700, !109, !718, !718}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3298, file: !14, line: 1944, baseType: !3441, size: 64, offset: 1728)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !1259, !1700}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3298, file: !14, line: 1948, baseType: !3445, size: 64, offset: 1792)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!510, !1700, !718, !1700, !718, !525, !7}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3298, file: !14, line: 1950, baseType: !3449, size: 64, offset: 1856)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!718, !1700, !718, !1700, !718, !718, !7}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3298, file: !14, line: 1953, baseType: !3399, size: 64, offset: 1920)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3298, file: !14, line: 1954, baseType: !3454, size: 64, offset: 1984)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!109, !3457, !7}
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3298, file: !14, line: 1955, baseType: !3460, size: 64, offset: 2048)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!109, !3457, !3346, !7}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1297, file: !14, line: 1018, baseType: !630, size: 64, offset: 1472)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1297, file: !14, line: 1020, baseType: !353, size: 64, offset: 1536)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1297, file: !14, line: 1023, baseType: !353, size: 64, offset: 1600)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1297, file: !14, line: 1027, baseType: !3467, size: 64, offset: 1664)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1297, file: !14, line: 1029, baseType: !553, size: 64, offset: 1728)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1297, file: !14, line: 1030, baseType: !3470, size: 32, offset: 1792)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3471, line: 8, baseType: !626)
!3471 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1297, file: !14, line: 1031, baseType: !3470, size: 32, offset: 1824)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1260, file: !1261, line: 29, baseType: !353, size: 64, offset: 896)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1203, file: !14, line: 2077, baseType: !1256, size: 64, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1203, file: !14, line: 2078, baseType: !1256, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1203, file: !14, line: 2079, baseType: !1256, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1203, file: !14, line: 2081, baseType: !3478, size: 64, offset: 1280)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!510, !708, !109, !478, !525, !718}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1203, file: !14, line: 2082, baseType: !3482, size: 64, offset: 1344)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!510, !708, !109, !395, !525, !718}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1203, file: !14, line: 2083, baseType: !3486, size: 64, offset: 1408)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!3489, !557}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3517, !3518, !3519}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3491, file: !69, line: 297, baseType: !1063, size: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3491, file: !69, line: 298, baseType: !399, size: 128, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3491, file: !69, line: 299, baseType: !399, size: 128, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3491, file: !69, line: 300, baseType: !399, size: 128, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3491, file: !69, line: 301, baseType: !817, size: 256, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3491, file: !69, line: 302, baseType: !412, size: 32, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3491, file: !69, line: 303, baseType: !382, size: 32, offset: 800)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3491, file: !69, line: 304, baseType: !708, size: 64, offset: 832)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3491, file: !69, line: 305, baseType: !3502, size: 64, offset: 896)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !3503)
!3503 = !{!3504, !3516}
!3504 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !69, line: 69, baseType: !3505, size: 32)
!3505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !69, line: 69, size: 32, elements: !3506)
!3506 = !{!3507, !3508, !3509}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3505, file: !69, line: 70, baseType: !563, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3505, file: !69, line: 71, baseType: !572, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3505, file: !69, line: 72, baseType: !3510, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3511, line: 24, baseType: !3512)
!3511 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3511, line: 22, size: 32, elements: !3513)
!3513 = !{!3514}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3512, file: !3511, line: 23, baseType: !3515, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3511, line: 20, baseType: !569)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3502, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3491, file: !69, line: 306, baseType: !718, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3491, file: !69, line: 307, baseType: !356, size: 64, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3491, file: !69, line: 308, baseType: !3520, size: 576, offset: 1088)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !3521)
!3521 = !{!3522, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3520, file: !69, line: 206, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !720)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3520, file: !69, line: 207, baseType: !3523, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3520, file: !69, line: 208, baseType: !3523, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3520, file: !69, line: 209, baseType: !3523, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3520, file: !69, line: 210, baseType: !3523, size: 64, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3520, file: !69, line: 211, baseType: !3523, size: 64, offset: 320)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3520, file: !69, line: 212, baseType: !3523, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3520, file: !69, line: 213, baseType: !2036, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3520, file: !69, line: 214, baseType: !2036, size: 64, offset: 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1203, file: !14, line: 2085, baseType: !3533, size: 64, offset: 1472)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!514, !708, !3536}
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3538, line: 15, size: 256, elements: !3539)
!3538 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3539 = !{!3540, !3541, !3542, !3543, !3544}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3537, file: !3538, line: 16, baseType: !354, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3537, file: !3538, line: 19, baseType: !109, size: 32, offset: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3537, file: !3538, line: 26, baseType: !356, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3537, file: !3538, line: 33, baseType: !356, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3537, file: !3538, line: 36, baseType: !3545, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1203, file: !14, line: 2087, baseType: !3533, size: 64, offset: 1536)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1203, file: !14, line: 2089, baseType: !742, size: 64, offset: 1600)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !709, file: !14, line: 1198, baseType: !3550, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !3553)
!3553 = !{!3554, !3558, !3562, !3566, !3567, !3568, !3569, !3570, !3575, !3580, !3584}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3552, file: !69, line: 325, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!109, !3490}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3552, file: !69, line: 326, baseType: !3559, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!3490, !708, !109}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3552, file: !69, line: 327, baseType: !3563, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3490}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3552, file: !69, line: 328, baseType: !3555, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3552, file: !69, line: 329, baseType: !3555, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3552, file: !69, line: 330, baseType: !3555, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3552, file: !69, line: 331, baseType: !1231, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3552, file: !69, line: 334, baseType: !3571, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!3574, !557}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3552, file: !69, line: 335, baseType: !3576, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!109, !557, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3552, file: !69, line: 337, baseType: !3581, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!109, !557, !3574}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3552, file: !69, line: 339, baseType: !3585, size: 64, offset: 640)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!109, !708, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !709, file: !14, line: 1199, baseType: !3590, size: 64, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !3593)
!3593 = !{!3594, !3600, !3601, !3605, !3606, !3607, !3622, !3645, !3649, !3650, !3673}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3592, file: !69, line: 431, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!109, !708, !109, !109, !3598}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3289)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3592, file: !69, line: 432, baseType: !1231, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3592, file: !69, line: 433, baseType: !3602, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!109, !708, !7}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3592, file: !69, line: 434, baseType: !3602, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3592, file: !69, line: 435, baseType: !1231, size: 64, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3592, file: !69, line: 436, baseType: !3608, size: 64, offset: 320)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!109, !708, !109, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3612, file: !69, line: 418, baseType: !109, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3612, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3612, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3612, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3612, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3612, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3612, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3612, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3592, file: !69, line: 437, baseType: !3623, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!109, !708, !3502, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3627, file: !69, line: 346, baseType: !109, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3627, file: !69, line: 347, baseType: !630, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3627, file: !69, line: 348, baseType: !630, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3627, file: !69, line: 349, baseType: !630, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3627, file: !69, line: 350, baseType: !630, size: 64, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3627, file: !69, line: 351, baseType: !630, size: 64, offset: 320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3627, file: !69, line: 352, baseType: !630, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3627, file: !69, line: 353, baseType: !827, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3627, file: !69, line: 355, baseType: !827, size: 64, offset: 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3627, file: !69, line: 356, baseType: !109, size: 32, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3627, file: !69, line: 357, baseType: !109, size: 32, offset: 608)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3627, file: !69, line: 358, baseType: !630, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3627, file: !69, line: 359, baseType: !630, size: 64, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3627, file: !69, line: 360, baseType: !630, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3627, file: !69, line: 361, baseType: !827, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3627, file: !69, line: 362, baseType: !109, size: 32, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3592, file: !69, line: 438, baseType: !3646, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!109, !708, !3588, !3626}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3592, file: !69, line: 440, baseType: !3623, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3592, file: !69, line: 441, baseType: !3651, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!109, !708, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3655, file: !69, line: 412, baseType: !7, size: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3655, file: !69, line: 413, baseType: !3659, size: 1344, offset: 64)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3660, size: 1344, elements: !479)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3672}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3660, file: !69, line: 398, baseType: !7, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3660, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3660, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3660, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3660, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3660, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3660, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3660, file: !69, line: 406, baseType: !632, size: 64, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3660, file: !69, line: 407, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !355, line: 132, baseType: !630)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3660, file: !69, line: 408, baseType: !3671, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3592, file: !69, line: 442, baseType: !3602, size: 64, offset: 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !709, file: !14, line: 1200, baseType: !3675, size: 64, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3677)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !709, file: !14, line: 1201, baseType: !356, size: 64, offset: 640)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !709, file: !14, line: 1202, baseType: !356, size: 64, offset: 704)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !709, file: !14, line: 1203, baseType: !356, size: 64, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !709, file: !14, line: 1204, baseType: !592, size: 64, offset: 832)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !709, file: !14, line: 1205, baseType: !1728, size: 320, offset: 896)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !709, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !709, file: !14, line: 1207, baseType: !382, size: 32, offset: 1248)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !709, file: !14, line: 1209, baseType: !353, size: 64, offset: 1280)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !709, file: !14, line: 1211, baseType: !3687, size: 64, offset: 1344)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3690)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !709, file: !14, line: 1223, baseType: !3692, size: 64, offset: 1408)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !609, line: 34, size: 64, elements: !3693)
!3693 = !{!3694}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3692, file: !609, line: 35, baseType: !612, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !709, file: !14, line: 1224, baseType: !399, size: 128, offset: 1472)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !709, file: !14, line: 1225, baseType: !3697, size: 64, offset: 1600)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !709, file: !14, line: 1226, baseType: !3700, size: 64, offset: 1664)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !709, file: !14, line: 1227, baseType: !3703, size: 64, offset: 1728)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !709, file: !14, line: 1228, baseType: !3706, size: 64, offset: 1792)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !709, file: !14, line: 1229, baseType: !1063, size: 128, offset: 1856)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !709, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !709, file: !14, line: 1231, baseType: !3711, size: 2496, offset: 2048)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3717, !3749}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3711, file: !69, line: 522, baseType: !7, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3711, file: !69, line: 523, baseType: !1728, size: 320, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3711, file: !69, line: 524, baseType: !3716, size: 192, offset: 384)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 192, elements: !479)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3711, file: !69, line: 525, baseType: !3718, size: 1728, offset: 576)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3719, size: 1728, elements: !479)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3720)
!3720 = !{!3721, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3719, file: !69, line: 223, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3724)
!3724 = !{!3725, !3726, !3739, !3740}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3723, file: !69, line: 446, baseType: !109, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3723, file: !69, line: 447, baseType: !3727, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3729, file: !69, line: 313, baseType: !1231, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3729, file: !69, line: 314, baseType: !1231, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3729, file: !69, line: 315, baseType: !1231, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3729, file: !69, line: 316, baseType: !1231, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3729, file: !69, line: 317, baseType: !3555, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3729, file: !69, line: 318, baseType: !3555, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3729, file: !69, line: 319, baseType: !3555, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3729, file: !69, line: 320, baseType: !3585, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3723, file: !69, line: 448, baseType: !746, size: 64, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3723, file: !69, line: 449, baseType: !3722, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3719, file: !69, line: 224, baseType: !109, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3719, file: !69, line: 226, baseType: !399, size: 128, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3719, file: !69, line: 227, baseType: !356, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3719, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3719, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3719, file: !69, line: 230, baseType: !3523, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3719, file: !69, line: 231, baseType: !3523, size: 64, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3719, file: !69, line: 232, baseType: !353, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !69, line: 526, baseType: !3750, size: 192, offset: 2304)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3727, size: 192, elements: !479)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !709, file: !14, line: 1233, baseType: !3752, size: 2368, offset: 4544)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3752, file: !14, line: 1185, baseType: !448, size: 16)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3752, file: !14, line: 1186, baseType: !448, size: 16, offset: 16)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3752, file: !14, line: 1187, baseType: !3757, size: 2304, offset: 64)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3758, size: 2304, elements: !479)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3759, line: 12, size: 768, elements: !3760)
!3759 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3760 = !{!3761, !3769, !3770, !3775, !3776}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3758, file: !3759, line: 13, baseType: !3762, size: 384)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3763, line: 17, size: 384, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3762, file: !3763, line: 18, baseType: !109, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3762, file: !3763, line: 19, baseType: !109, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3762, file: !3763, line: 20, baseType: !1352, size: 192, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3762, file: !3763, line: 22, baseType: !1037, size: 128, align: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3758, file: !3759, line: 14, baseType: !889, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3758, file: !3759, line: 15, baseType: !3771, size: 64, offset: 448)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3772, line: 16, size: 64, elements: !3773)
!3772 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3773 = !{!3774}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3771, file: !3772, line: 17, baseType: !1385, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3758, file: !3759, line: 16, baseType: !1352, size: 192, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3758, file: !3759, line: 17, baseType: !382, size: 32, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !709, file: !14, line: 1240, baseType: !353, size: 64, offset: 6912)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !709, file: !14, line: 1243, baseType: !626, size: 32, offset: 6976)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !709, file: !14, line: 1245, baseType: !2036, size: 64, offset: 7040)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !709, file: !14, line: 1246, baseType: !2036, size: 64, offset: 7104)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !709, file: !14, line: 1248, baseType: !627, size: 32, offset: 7168)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !709, file: !14, line: 1249, baseType: !3783, size: 64, offset: 7232)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !709, file: !14, line: 1252, baseType: !3786, size: 256, offset: 7296)
!3786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 256, elements: !639)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !709, file: !14, line: 1253, baseType: !3788, size: 128, offset: 7552)
!3788 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3789, line: 21, baseType: !3790)
!3789 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3789, line: 19, size: 128, elements: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3790, file: !3789, line: 20, baseType: !3793, size: 128)
!3793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 128, elements: !2173)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !709, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !709, file: !14, line: 1261, baseType: !817, size: 256, offset: 7744)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !709, file: !14, line: 1267, baseType: !395, size: 64, offset: 8000)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !709, file: !14, line: 1269, baseType: !655, size: 64, offset: 8064)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !709, file: !14, line: 1271, baseType: !3799, size: 448, offset: 8128)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3538, line: 63, size: 448, elements: !3800)
!3800 = !{!3801, !3806, !3807, !3808, !3809, !3810, !3811}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3799, file: !3538, line: 64, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!356, !3805, !3536}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3799, file: !3538, line: 66, baseType: !3802, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3799, file: !3538, line: 69, baseType: !514, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3799, file: !3538, line: 70, baseType: !109, size: 32, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3799, file: !3538, line: 71, baseType: !7, size: 32, offset: 224)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3799, file: !3538, line: 74, baseType: !399, size: 128, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3799, file: !3538, line: 85, baseType: !3812, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !709, file: !14, line: 1274, baseType: !821, size: 64, offset: 8576)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !709, file: !14, line: 1280, baseType: !821, size: 64, offset: 8640)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !709, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !709, file: !14, line: 1286, baseType: !3470, size: 32, offset: 8736)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !709, file: !14, line: 1289, baseType: !1139, size: 64, offset: 8768)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !709, file: !14, line: 1290, baseType: !1187, size: 64, offset: 8832)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !709, file: !14, line: 1297, baseType: !1828, size: 64, offset: 8896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !709, file: !14, line: 1304, baseType: !3821, size: 64, offset: 8960)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3822, line: 49, size: 64, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3823 = !{!3824}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3821, file: !3822, line: 50, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3822, line: 41, size: 512, align: 512, elements: !3827)
!3827 = !{!3828, !3829, !3834}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3826, file: !3822, line: 43, baseType: !412, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3826, file: !3822, line: 45, baseType: !3830, size: 192, offset: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3822, line: 29, size: 192, elements: !3831)
!3831 = !{!3832, !3833}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3830, file: !3822, line: 30, baseType: !399, size: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3830, file: !3822, line: 32, baseType: !514, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3826, file: !3822, line: 46, baseType: !514, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !709, file: !14, line: 1305, baseType: !3821, size: 64, offset: 9024)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !14, line: 1306, baseType: !1037, size: 128, align: 64, offset: 9088)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !709, file: !14, line: 1307, baseType: !1077, size: 256, offset: 9216)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !709, file: !14, line: 1309, baseType: !817, size: 256, offset: 9472)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !709, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !709, file: !14, line: 1317, baseType: !412, size: 32, align: 512, offset: 10240)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !709, file: !14, line: 1318, baseType: !399, size: 128, offset: 10304)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !709, file: !14, line: 1320, baseType: !412, size: 32, offset: 10432)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !709, file: !14, line: 1321, baseType: !399, size: 128, offset: 10496)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !703, file: !704, line: 73, baseType: !109, size: 32, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !703, file: !704, line: 74, baseType: !3846, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2004, line: 42, flags: DIFlagFwdDecl)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !657, file: !594, line: 141, baseType: !3850, size: 64, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!109, !3598, !897}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !657, file: !594, line: 142, baseType: !3854, size: 64, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!592, !592, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !593, file: !594, line: 96, baseType: !708, size: 64, offset: 832)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !593, file: !594, line: 97, baseType: !356, size: 64, offset: 896)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !593, file: !594, line: 98, baseType: !353, size: 64, offset: 960)
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !594, line: 100, baseType: !3863, size: 128, offset: 1024)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !594, line: 100, size: 128, elements: !3864)
!3864 = !{!3865, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3863, file: !594, line: 101, baseType: !399, size: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3863, file: !594, line: 102, baseType: !3376, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !593, file: !594, line: 104, baseType: !399, size: 128, offset: 1152)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !593, file: !594, line: 105, baseType: !399, size: 128, offset: 1280)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !593, file: !594, line: 113, baseType: !3870, size: 128, offset: 1408)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !594, line: 109, size: 128, elements: !3871)
!3871 = !{!3872, !3873, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3870, file: !594, line: 110, baseType: !1063, size: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3870, file: !594, line: 111, baseType: !608, size: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3870, file: !594, line: 112, baseType: !1037, size: 128, align: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !586, file: !14, line: 1968, baseType: !3876, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!395, !592, !557, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3881, line: 10, size: 128, elements: !3882)
!3881 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3880, file: !3881, line: 11, baseType: !860, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3880, file: !3881, line: 12, baseType: !353, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !586, file: !14, line: 1969, baseType: !3886, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!109, !3846, !557, !109}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !586, file: !14, line: 1970, baseType: !3890, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!580, !557, !109, !897}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !586, file: !14, line: 1972, baseType: !3894, size: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!109, !592, !478, !109}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !586, file: !14, line: 1974, baseType: !3898, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!109, !3846, !557, !592, !520, !897}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !586, file: !14, line: 1976, baseType: !3902, size: 64, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!109, !592, !557, !592}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !586, file: !14, line: 1977, baseType: !3906, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!109, !557, !592}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !586, file: !14, line: 1978, baseType: !3910, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!109, !3846, !557, !592, !395}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !586, file: !14, line: 1980, baseType: !3914, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!109, !3846, !557, !592, !520}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !586, file: !14, line: 1982, baseType: !3906, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !586, file: !14, line: 1983, baseType: !3919, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!109, !3846, !557, !592, !520, !713}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !586, file: !14, line: 1985, baseType: !3923, size: 64, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!109, !3846, !557, !592, !557, !592, !7}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !586, file: !14, line: 1987, baseType: !3927, size: 64, offset: 832)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!109, !3846, !592, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3945, !3954, !3955, !3960, !3961, !3962}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3931, file: !14, line: 227, baseType: !7, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3931, file: !14, line: 228, baseType: !520, size: 16, offset: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !14, line: 241, baseType: !3936, size: 32, offset: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !14, line: 241, size: 32, elements: !3937)
!3937 = !{!3938, !3939}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3936, file: !14, line: 242, baseType: !563, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3936, file: !14, line: 243, baseType: !3940, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3941, line: 16, baseType: !3942)
!3941 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3941, line: 14, size: 32, elements: !3943)
!3943 = !{!3944}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3942, file: !3941, line: 15, baseType: !568, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !14, line: 245, baseType: !3946, size: 32, offset: 96)
!3946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !14, line: 245, size: 32, elements: !3947)
!3947 = !{!3948, !3949}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3946, file: !14, line: 246, baseType: !572, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3946, file: !14, line: 247, baseType: !3950, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3941, line: 20, baseType: !3951)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3941, line: 18, size: 32, elements: !3952)
!3952 = !{!3953}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3951, file: !3941, line: 19, baseType: !576, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3931, file: !14, line: 249, baseType: !718, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3931, file: !14, line: 250, baseType: !3956, size: 128, offset: 192)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2037, line: 13, size: 128, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3956, file: !2037, line: 14, baseType: !2036, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3956, file: !2037, line: 15, baseType: !514, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3931, file: !14, line: 251, baseType: !3956, size: 128, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3931, file: !14, line: 252, baseType: !3956, size: 128, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3931, file: !14, line: 259, baseType: !1700, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !586, file: !14, line: 1988, baseType: !3964, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!109, !3846, !3598, !3967, !626, !7}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3969, line: 22, size: 1280, elements: !3970)
!3969 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3968, file: !3969, line: 23, baseType: !626, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3968, file: !3969, line: 24, baseType: !520, size: 16, offset: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3968, file: !3969, line: 25, baseType: !7, size: 32, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3968, file: !3969, line: 26, baseType: !2044, size: 32, offset: 96)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3968, file: !3969, line: 27, baseType: !630, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3968, file: !3969, line: 28, baseType: !630, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3968, file: !3969, line: 41, baseType: !630, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3968, file: !3969, line: 42, baseType: !713, size: 32, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3968, file: !3969, line: 43, baseType: !713, size: 32, offset: 352)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3968, file: !3969, line: 44, baseType: !563, size: 32, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3968, file: !3969, line: 45, baseType: !572, size: 32, offset: 416)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3968, file: !3969, line: 46, baseType: !718, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3968, file: !3969, line: 47, baseType: !3956, size: 128, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3968, file: !3969, line: 48, baseType: !3956, size: 128, offset: 640)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3968, file: !3969, line: 49, baseType: !3956, size: 128, offset: 768)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3968, file: !3969, line: 50, baseType: !3956, size: 128, offset: 896)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3968, file: !3969, line: 51, baseType: !630, size: 64, offset: 1024)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3968, file: !3969, line: 52, baseType: !630, size: 64, offset: 1088)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3968, file: !3969, line: 53, baseType: !626, size: 32, offset: 1152)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3968, file: !3969, line: 54, baseType: !626, size: 32, offset: 1184)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3968, file: !3969, line: 55, baseType: !630, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !586, file: !14, line: 1990, baseType: !3993, size: 64, offset: 960)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!510, !592, !478, !525}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !586, file: !14, line: 1991, baseType: !3997, size: 64, offset: 1024)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!109, !557, !4000, !630, !630}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !586, file: !14, line: 1993, baseType: !4003, size: 64, offset: 1088)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!109, !557, !109}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !586, file: !14, line: 1994, baseType: !4007, size: 64, offset: 1152)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!109, !557, !592, !1700, !7, !520}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !586, file: !14, line: 1997, baseType: !4011, size: 64, offset: 1216)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!109, !3846, !557, !1700, !520}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !586, file: !14, line: 1999, baseType: !4015, size: 64, offset: 1280)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!580, !3846, !592, !109}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !586, file: !14, line: 2001, baseType: !4019, size: 64, offset: 1344)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!109, !3846, !592, !580, !109}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !586, file: !14, line: 2003, baseType: !4023, size: 64, offset: 1408)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!109, !3846, !592, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !586, file: !14, line: 2005, baseType: !4029, size: 64, offset: 1472)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!109, !592, !4026}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !586, file: !14, line: 2006, baseType: !4033, size: 64, offset: 1536)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!4036, !557}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4038)
!4038 = !{!4039, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4037, file: !14, line: 3193, baseType: !1374, size: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4037, file: !14, line: 3194, baseType: !626, size: 32, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !558, file: !14, line: 655, baseType: !708, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !558, file: !14, line: 656, baseType: !553, size: 64, offset: 512)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !558, file: !14, line: 659, baseType: !353, size: 64, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !558, file: !14, line: 663, baseType: !356, size: 64, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !14, line: 671, baseType: !4046, size: 32, offset: 704)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !14, line: 671, size: 32, elements: !4047)
!4047 = !{!4048, !4050}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4046, file: !14, line: 672, baseType: !4049, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4046, file: !14, line: 673, baseType: !7, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !558, file: !14, line: 675, baseType: !713, size: 32, offset: 736)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !558, file: !14, line: 676, baseType: !718, size: 64, offset: 768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !558, file: !14, line: 677, baseType: !3956, size: 128, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !558, file: !14, line: 678, baseType: !3956, size: 128, offset: 960)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !558, file: !14, line: 679, baseType: !3956, size: 128, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !558, file: !14, line: 680, baseType: !412, size: 32, offset: 1216)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !558, file: !14, line: 681, baseType: !448, size: 16, offset: 1248)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !558, file: !14, line: 682, baseType: !436, size: 8, offset: 1264)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !558, file: !14, line: 683, baseType: !436, size: 8, offset: 1272)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !558, file: !14, line: 684, baseType: !3671, size: 64, offset: 1280)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !558, file: !14, line: 691, baseType: !356, size: 64, offset: 1344)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !558, file: !14, line: 692, baseType: !1728, size: 320, offset: 1408)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !558, file: !14, line: 694, baseType: !356, size: 64, offset: 1728)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !558, file: !14, line: 695, baseType: !356, size: 64, offset: 1792)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !558, file: !14, line: 697, baseType: !1063, size: 128, offset: 1856)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !558, file: !14, line: 698, baseType: !399, size: 128, offset: 1984)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !558, file: !14, line: 707, baseType: !399, size: 128, offset: 2112)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !558, file: !14, line: 708, baseType: !399, size: 128, offset: 2240)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !14, line: 709, baseType: !4070, size: 128, offset: 2368)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !14, line: 709, size: 128, elements: !4071)
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4070, file: !14, line: 710, baseType: !1187, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4070, file: !14, line: 711, baseType: !1037, size: 128, align: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !558, file: !14, line: 713, baseType: !823, size: 64, offset: 2496)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !558, file: !14, line: 714, baseType: !823, size: 64, offset: 2560)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !558, file: !14, line: 715, baseType: !382, size: 32, offset: 2624)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !558, file: !14, line: 716, baseType: !382, size: 32, offset: 2656)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !558, file: !14, line: 717, baseType: !382, size: 32, offset: 2688)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !558, file: !14, line: 719, baseType: !382, size: 32, offset: 2720)
!4080 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !14, line: 721, baseType: !4081, size: 64, offset: 2752)
!4081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !14, line: 721, size: 64, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4081, file: !14, line: 722, baseType: !3296, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4081, file: !14, line: 723, baseType: !1210, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !558, file: !14, line: 725, baseType: !4086, size: 64, offset: 2816)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !558, file: !14, line: 726, baseType: !554, size: 1536, align: 64, offset: 2880)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !558, file: !14, line: 727, baseType: !399, size: 128, offset: 4416)
!4090 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !14, line: 728, baseType: !4091, size: 64, offset: 4544)
!4091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !14, line: 728, size: 64, elements: !4092)
!4092 = !{!4093, !4094, !4097, !4098}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4091, file: !14, line: 729, baseType: !2615, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4091, file: !14, line: 730, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4091, file: !14, line: 731, baseType: !478, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4091, file: !14, line: 732, baseType: !7, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !558, file: !14, line: 735, baseType: !627, size: 32, offset: 4608)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !558, file: !14, line: 738, baseType: !627, size: 32, offset: 4640)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !558, file: !14, line: 739, baseType: !3783, size: 64, offset: 4672)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !558, file: !14, line: 750, baseType: !353, size: 64, offset: 4736)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !554, file: !14, line: 474, baseType: !1374, size: 128, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !554, file: !14, line: 475, baseType: !1728, size: 320, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !554, file: !14, line: 476, baseType: !354, size: 32, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !554, file: !14, line: 477, baseType: !382, size: 32, offset: 544)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !554, file: !14, line: 482, baseType: !1556, size: 128, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !554, file: !14, line: 483, baseType: !356, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !554, file: !14, line: 484, baseType: !356, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !554, file: !14, line: 485, baseType: !4111, size: 64, offset: 832)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4114)
!4114 = !{!4115, !4119, !4189, !4193, !4197, !4203, !4207, !4211, !4216, !4220, !4224, !4228, !4229, !4233, !4237, !4241, !4246, !4250, !4257, !4258}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4113, file: !14, line: 405, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!109, !2621, !1222}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4113, file: !14, line: 406, baseType: !4120, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!109, !1700, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !4125)
!4125 = !{!4126, !4156, !4170}
!4126 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !38, line: 295, baseType: !4127, size: 512)
!4127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !38, line: 295, size: 512, elements: !4128)
!4128 = !{!4129, !4155}
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !38, line: 296, baseType: !4130, size: 448)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4127, file: !38, line: 296, size: 448, elements: !4131)
!4131 = !{!4132, !4133, !4142, !4143, !4144, !4153, !4154}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4130, file: !38, line: 298, baseType: !356, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !38, line: 299, baseType: !4134, size: 128, offset: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !38, line: 299, size: 128, elements: !4135)
!4135 = !{!4136, !4137}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4134, file: !38, line: 300, baseType: !399, size: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !38, line: 302, baseType: !4138, size: 128)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4134, file: !38, line: 302, size: 128, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4138, file: !38, line: 303, baseType: !353, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4138, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4130, file: !38, line: 310, baseType: !553, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4130, file: !38, line: 311, baseType: !356, size: 64, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !38, line: 312, baseType: !4145, size: 64, offset: 320)
!4145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !38, line: 312, size: 64, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4145, file: !38, line: 313, baseType: !353, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4145, file: !38, line: 314, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !4151)
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4150, file: !38, line: 256, baseType: !356, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4130, file: !38, line: 316, baseType: !382, size: 32, offset: 384)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4130, file: !38, line: 317, baseType: !382, size: 32, offset: 416)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4127, file: !38, line: 323, baseType: !2622, size: 512, align: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !38, line: 325, baseType: !4157, size: 512, offset: 512)
!4157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !38, line: 325, size: 512, elements: !4158)
!4158 = !{!4159, !4169}
!4159 = !DIDerivedType(tag: DW_TAG_member, scope: !4157, file: !38, line: 326, baseType: !4160, size: 320)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4157, file: !38, line: 326, size: 320, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4167, !4168}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4160, file: !38, line: 327, baseType: !356, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4160, file: !38, line: 328, baseType: !356, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4160, file: !38, line: 329, baseType: !356, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4160, file: !38, line: 331, baseType: !382, size: 32, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4160, file: !38, line: 332, baseType: !382, size: 32, offset: 224)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4160, file: !38, line: 333, baseType: !382, size: 32, offset: 256)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4160, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4157, file: !38, line: 339, baseType: !2622, size: 512, align: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !38, line: 341, baseType: !4171, size: 512, offset: 1024)
!4171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !38, line: 341, size: 512, elements: !4172)
!4172 = !{!4173, !4182, !4188}
!4173 = !DIDerivedType(tag: DW_TAG_member, scope: !4171, file: !38, line: 342, baseType: !4174, size: 384)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !38, line: 342, size: 384, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4174, file: !38, line: 343, baseType: !356, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4174, file: !38, line: 344, baseType: !356, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4174, file: !38, line: 346, baseType: !353, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4174, file: !38, line: 347, baseType: !353, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4174, file: !38, line: 348, baseType: !353, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4174, file: !38, line: 349, baseType: !353, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_member, scope: !4171, file: !38, line: 352, baseType: !4183, size: 256)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !38, line: 352, size: 256, elements: !4184)
!4184 = !{!4185, !4186, !4187}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4183, file: !38, line: 353, baseType: !356, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4183, file: !38, line: 354, baseType: !356, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4183, file: !38, line: 356, baseType: !399, size: 128, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4171, file: !38, line: 359, baseType: !2622, size: 512, align: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4113, file: !14, line: 409, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!109, !553, !1222}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4113, file: !14, line: 412, baseType: !4194, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!897, !553, !4123}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4113, file: !14, line: 414, baseType: !4198, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4201}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4113, file: !14, line: 416, baseType: !4204, size: 64, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!109, !1700, !553, !718, !7, !3007, !3435}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4113, file: !14, line: 419, baseType: !4208, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!109, !1700, !553, !718, !7, !7, !2621, !353}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4113, file: !14, line: 424, baseType: !4212, size: 64, offset: 448)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!4215, !553, !4215}
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !355, line: 131, baseType: !630)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4113, file: !14, line: 425, baseType: !4217, size: 64, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{null, !4123, !525, !525}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4113, file: !14, line: 426, baseType: !4221, size: 64, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!897, !4123, !354}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4113, file: !14, line: 427, baseType: !4225, size: 64, offset: 640)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4123}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4113, file: !14, line: 428, baseType: !3314, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4113, file: !14, line: 433, baseType: !4230, size: 64, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!109, !553, !4123, !4123, !74}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4113, file: !14, line: 435, baseType: !4234, size: 64, offset: 832)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!109, !4123}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4113, file: !14, line: 436, baseType: !4238, size: 64, offset: 896)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!897, !4123, !525, !525}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4113, file: !14, line: 438, baseType: !4242, size: 64, offset: 960)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{null, !4123, !4245, !4245}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4113, file: !14, line: 439, baseType: !4247, size: 64, offset: 1024)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!109, !553, !2621}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4113, file: !14, line: 442, baseType: !4251, size: 64, offset: 1088)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!109, !4254, !1700, !4256}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4113, file: !14, line: 444, baseType: !3427, size: 64, offset: 1152)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4113, file: !14, line: 445, baseType: !4259, size: 64, offset: 1216)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!109, !3317, !3339}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !14, line: 486, baseType: !356, size: 64, offset: 896)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !554, file: !14, line: 487, baseType: !1728, size: 320, offset: 960)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !554, file: !14, line: 488, baseType: !3470, size: 32, offset: 1280)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !554, file: !14, line: 489, baseType: !412, size: 32, offset: 1312)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !554, file: !14, line: 490, baseType: !399, size: 128, offset: 1344)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !554, file: !14, line: 491, baseType: !353, size: 64, offset: 1472)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !544, file: !504, line: 180, baseType: !4269, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!510, !1700, !405, !543, !478, !718, !525}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !544, file: !504, line: 182, baseType: !4269, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !544, file: !504, line: 184, baseType: !4274, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!109, !1700, !405, !543, !2731}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !532, file: !504, line: 90, baseType: !4278, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !532, file: !504, line: 91, baseType: !4280, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !494, file: !392, line: 120, baseType: !4282, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!4285, !461}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4288)
!4288 = !{!4289, !4290, !4294, !4298, !4304, !4308}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4287, file: !82, line: 40, baseType: !81, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4287, file: !82, line: 41, baseType: !4291, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!897}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4287, file: !82, line: 42, baseType: !4295, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!353}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4287, file: !82, line: 43, baseType: !4299, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!1805, !4302}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4287, file: !82, line: 44, baseType: !4305, size: 64, offset: 256)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!1805}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4287, file: !82, line: 45, baseType: !860, size: 64, offset: 320)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !494, file: !392, line: 121, baseType: !4310, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!1805, !461}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !494, file: !392, line: 122, baseType: !4314, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !461, !4317, !4318}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !391, file: !392, line: 70, baseType: !4320, size: 64, offset: 384)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4322, line: 190, size: 1152, elements: !4323)
!4322 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4403, !4404, !4405, !4406, !4407, !4410}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4321, file: !4322, line: 191, baseType: !382, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4321, file: !4322, line: 192, baseType: !382, size: 32, offset: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4321, file: !4322, line: 202, baseType: !4320, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4321, file: !4322, line: 203, baseType: !395, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4321, file: !4322, line: 205, baseType: !929, size: 192, align: 64, offset: 192)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4321, file: !4322, line: 207, baseType: !1805, size: 64, offset: 384)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4321, file: !4322, line: 208, baseType: !7, size: 32, offset: 448)
!4331 = !DIDerivedType(tag: DW_TAG_member, scope: !4321, file: !4322, line: 209, baseType: !4332, size: 256, offset: 512)
!4332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4321, file: !4322, line: 209, size: 256, elements: !4333)
!4333 = !{!4334, !4343, !4347}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4332, file: !4322, line: 210, baseType: !4335, size: 256)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4322, line: 153, size: 256, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4342}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4335, file: !4322, line: 154, baseType: !356, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4335, file: !4322, line: 156, baseType: !1559, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4335, file: !4322, line: 162, baseType: !4340, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4322, line: 162, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4335, file: !4322, line: 167, baseType: !356, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4332, file: !4322, line: 211, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4322, line: 170, size: 64, elements: !4345)
!4345 = !{!4346}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4344, file: !4322, line: 171, baseType: !4320, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4332, file: !4322, line: 212, baseType: !4348, size: 256)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4322, line: 174, size: 256, elements: !4349)
!4349 = !{!4350, !4398, !4401, !4402}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4348, file: !4322, line: 175, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4353)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4322, line: 271, size: 768, elements: !4354)
!4354 = !{!4355, !4375, !4379, !4380, !4381, !4382, !4383, !4387, !4388, !4389, !4390, !4394}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4353, file: !4322, line: 276, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!109, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4322, line: 251, size: 1216, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4360, file: !4322, line: 253, baseType: !4320, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4360, file: !4322, line: 254, baseType: !1700, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4360, file: !4322, line: 255, baseType: !1259, size: 64, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4360, file: !4322, line: 256, baseType: !353, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4360, file: !4322, line: 259, baseType: !817, size: 256, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4360, file: !4322, line: 260, baseType: !817, size: 256, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4360, file: !4322, line: 261, baseType: !109, size: 32, offset: 768)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4360, file: !4322, line: 262, baseType: !399, size: 128, offset: 832)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4360, file: !4322, line: 263, baseType: !478, size: 64, offset: 960)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4360, file: !4322, line: 265, baseType: !525, size: 64, offset: 1024)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4360, file: !4322, line: 266, baseType: !897, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4360, file: !4322, line: 267, baseType: !897, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4360, file: !4322, line: 268, baseType: !2774, size: 64, offset: 1152)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4353, file: !4322, line: 277, baseType: !4376, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !4359}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4353, file: !4322, line: 290, baseType: !1290, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4353, file: !4322, line: 292, baseType: !1277, size: 64, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4353, file: !4322, line: 293, baseType: !1286, size: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4353, file: !4322, line: 294, baseType: !1282, size: 64, offset: 320)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4353, file: !4322, line: 296, baseType: !4384, size: 64, offset: 384)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!510, !4359, !478, !525, !718}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4353, file: !4322, line: 306, baseType: !525, size: 64, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4353, file: !4322, line: 313, baseType: !897, size: 8, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4353, file: !4322, line: 314, baseType: !4384, size: 64, offset: 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4353, file: !4322, line: 317, baseType: !4391, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!3365, !4359, !3367}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4353, file: !4322, line: 320, baseType: !4395, size: 64, offset: 704)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!109, !4359, !2731}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4348, file: !4322, line: 176, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4322, line: 35, flags: DIFlagFwdDecl)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4348, file: !4322, line: 177, baseType: !718, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4348, file: !4322, line: 178, baseType: !4320, size: 64, offset: 192)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4321, file: !4322, line: 215, baseType: !353, size: 64, offset: 768)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4321, file: !4322, line: 221, baseType: !630, size: 64, offset: 832)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4321, file: !4322, line: 223, baseType: !448, size: 16, offset: 896)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4321, file: !4322, line: 224, baseType: !520, size: 16, offset: 912)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4321, file: !4322, line: 225, baseType: !4408, size: 64, offset: 960)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4322, line: 36, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4321, file: !4322, line: 227, baseType: !1037, size: 128, align: 64, offset: 1024)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !391, file: !392, line: 71, baseType: !374, size: 32, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !391, file: !392, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !391, file: !392, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !391, file: !392, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !391, file: !392, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !391, file: !392, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !388, file: !94, line: 707, baseType: !387, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !388, file: !94, line: 709, baseType: !4419, size: 64, offset: 576)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !388, file: !94, line: 711, baseType: !395, size: 64, offset: 640)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !388, file: !94, line: 712, baseType: !4423, size: 64, offset: 704)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4435, !4440, !4444}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4425, file: !94, line: 90, baseType: !395, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4425, file: !94, line: 91, baseType: !529, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4425, file: !94, line: 92, baseType: !4430, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!109, !4433, !473}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4425, file: !94, line: 93, baseType: !4436, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!478, !4433, !4439, !4317, !4318}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4425, file: !94, line: 95, baseType: !4441, size: 64, offset: 256)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !387}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4425, file: !94, line: 97, baseType: !4445, size: 64, offset: 320)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4447)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4448)
!4448 = !{!4449, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4447, file: !101, line: 287, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!109, !387}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4447, file: !101, line: 288, baseType: !4441, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4447, file: !101, line: 289, baseType: !4450, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4447, file: !101, line: 290, baseType: !4450, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4447, file: !101, line: 291, baseType: !4450, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4447, file: !101, line: 292, baseType: !4450, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4447, file: !101, line: 293, baseType: !4450, size: 64, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4447, file: !101, line: 294, baseType: !4450, size: 64, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4447, file: !101, line: 295, baseType: !4450, size: 64, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4447, file: !101, line: 296, baseType: !4450, size: 64, offset: 576)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4447, file: !101, line: 297, baseType: !4450, size: 64, offset: 640)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4447, file: !101, line: 298, baseType: !4450, size: 64, offset: 704)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4447, file: !101, line: 299, baseType: !4450, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4447, file: !101, line: 300, baseType: !4450, size: 64, offset: 832)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4447, file: !101, line: 301, baseType: !4450, size: 64, offset: 896)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4447, file: !101, line: 302, baseType: !4450, size: 64, offset: 960)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4447, file: !101, line: 303, baseType: !4450, size: 64, offset: 1024)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4447, file: !101, line: 304, baseType: !4450, size: 64, offset: 1088)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4447, file: !101, line: 305, baseType: !4450, size: 64, offset: 1152)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4447, file: !101, line: 306, baseType: !4450, size: 64, offset: 1216)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4447, file: !101, line: 307, baseType: !4450, size: 64, offset: 1280)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4447, file: !101, line: 308, baseType: !4450, size: 64, offset: 1344)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4447, file: !101, line: 309, baseType: !4450, size: 64, offset: 1408)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !388, file: !94, line: 714, baseType: !4476, size: 64, offset: 768)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4478)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4479, line: 80, size: 1344, elements: !4480)
!4479 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4486, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4544}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4478, file: !4479, line: 81, baseType: !395, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4478, file: !4479, line: 82, baseType: !395, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4478, file: !4479, line: 83, baseType: !529, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4478, file: !4479, line: 84, baseType: !529, size: 64, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4478, file: !4479, line: 85, baseType: !529, size: 64, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4478, file: !4479, line: 87, baseType: !4487, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!109, !387, !4490}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499, !4503, !4507, !4508, !4509, !4510, !4511, !4519, !4520, !4521, !4522, !4523, !4524}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4491, file: !88, line: 97, baseType: !395, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4491, file: !88, line: 98, baseType: !4476, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4491, file: !88, line: 100, baseType: !746, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4491, file: !88, line: 101, baseType: !395, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4491, file: !88, line: 103, baseType: !897, size: 8, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4491, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4491, file: !88, line: 106, baseType: !4500, size: 64, offset: 320)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4502)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4491, file: !88, line: 107, baseType: !4504, size: 64, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4491, file: !88, line: 109, baseType: !4450, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4491, file: !88, line: 110, baseType: !4441, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4491, file: !88, line: 111, baseType: !4450, size: 64, offset: 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4491, file: !88, line: 112, baseType: !4441, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4491, file: !88, line: 113, baseType: !4512, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!109, !387, !4515}
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4516)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4517)
!4517 = !{!4518}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4516, file: !101, line: 59, baseType: !109, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4491, file: !88, line: 114, baseType: !4450, size: 64, offset: 768)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4491, file: !88, line: 115, baseType: !529, size: 64, offset: 832)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4491, file: !88, line: 116, baseType: !529, size: 64, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4491, file: !88, line: 118, baseType: !4445, size: 64, offset: 960)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4491, file: !88, line: 119, baseType: !4441, size: 64, offset: 1024)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4491, file: !88, line: 121, baseType: !4525, size: 64, offset: 1088)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4478, file: !4479, line: 88, baseType: !4430, size: 64, offset: 384)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4478, file: !4479, line: 89, baseType: !4450, size: 64, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4478, file: !4479, line: 90, baseType: !4441, size: 64, offset: 512)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4478, file: !4479, line: 91, baseType: !4441, size: 64, offset: 576)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4478, file: !4479, line: 92, baseType: !4441, size: 64, offset: 640)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4478, file: !4479, line: 94, baseType: !4450, size: 64, offset: 704)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4478, file: !4479, line: 95, baseType: !4450, size: 64, offset: 768)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4478, file: !4479, line: 97, baseType: !4512, size: 64, offset: 832)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4478, file: !4479, line: 98, baseType: !4450, size: 64, offset: 896)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4478, file: !4479, line: 100, baseType: !4450, size: 64, offset: 960)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4478, file: !4479, line: 102, baseType: !4450, size: 64, offset: 1024)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4478, file: !4479, line: 103, baseType: !4441, size: 64, offset: 1088)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4478, file: !4479, line: 105, baseType: !4445, size: 64, offset: 1152)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4478, file: !4479, line: 107, baseType: !4541, size: 64, offset: 1216)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4479, line: 107, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4478, file: !4479, line: 109, baseType: !897, size: 8, offset: 1280)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !388, file: !94, line: 715, baseType: !4490, size: 64, offset: 832)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !388, file: !94, line: 717, baseType: !353, size: 64, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !388, file: !94, line: 719, baseType: !353, size: 64, offset: 960)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !388, file: !94, line: 721, baseType: !817, size: 256, offset: 1024)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !388, file: !94, line: 725, baseType: !4550, size: 448, offset: 1280)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4550, file: !94, line: 518, baseType: !399, size: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4550, file: !94, line: 519, baseType: !399, size: 128, offset: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4550, file: !94, line: 520, baseType: !399, size: 128, offset: 256)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4550, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !388, file: !94, line: 726, baseType: !4557, size: 2496, offset: 1728)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4558)
!4558 = !{!4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4641, !4645}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4557, file: !101, line: 664, baseType: !4515, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4557, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4557, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4557, file: !101, line: 667, baseType: !897, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4557, file: !101, line: 668, baseType: !897, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4557, file: !101, line: 669, baseType: !897, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4557, file: !101, line: 670, baseType: !897, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4557, file: !101, line: 671, baseType: !897, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4557, file: !101, line: 672, baseType: !897, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4557, file: !101, line: 673, baseType: !897, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4557, file: !101, line: 674, baseType: !897, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4557, file: !101, line: 675, baseType: !626, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4557, file: !101, line: 676, baseType: !412, size: 32, offset: 96)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4557, file: !101, line: 678, baseType: !399, size: 128, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4557, file: !101, line: 679, baseType: !766, size: 256, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4557, file: !101, line: 680, baseType: !4575, size: 64, offset: 512)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4577, line: 43, size: 1536, elements: !4578)
!4577 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4578 = !{!4579, !4580, !4581, !4582, !4583, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4576, file: !4577, line: 44, baseType: !395, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4576, file: !4577, line: 45, baseType: !109, size: 32, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4576, file: !4577, line: 46, baseType: !399, size: 128, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4576, file: !4577, line: 47, baseType: !412, size: 32, offset: 256)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4576, file: !4577, line: 48, baseType: !4584, size: 64, offset: 320)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4576, file: !4577, line: 49, baseType: !1059, size: 320, offset: 384)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4576, file: !4577, line: 50, baseType: !356, size: 64, offset: 704)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4576, file: !4577, line: 51, baseType: !1505, size: 64, offset: 768)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4576, file: !4577, line: 52, baseType: !1505, size: 64, offset: 832)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4576, file: !4577, line: 53, baseType: !1505, size: 64, offset: 896)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4576, file: !4577, line: 54, baseType: !1505, size: 64, offset: 960)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4576, file: !4577, line: 55, baseType: !1505, size: 64, offset: 1024)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4576, file: !4577, line: 56, baseType: !356, size: 64, offset: 1088)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4576, file: !4577, line: 57, baseType: !356, size: 64, offset: 1152)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4576, file: !4577, line: 58, baseType: !356, size: 64, offset: 1216)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4576, file: !4577, line: 59, baseType: !356, size: 64, offset: 1280)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4576, file: !4577, line: 60, baseType: !356, size: 64, offset: 1344)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4576, file: !4577, line: 61, baseType: !387, size: 64, offset: 1408)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4576, file: !4577, line: 62, baseType: !897, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4576, file: !4577, line: 63, baseType: !897, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4557, file: !101, line: 681, baseType: !897, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4557, file: !101, line: 682, baseType: !897, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4557, file: !101, line: 683, baseType: !897, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4557, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4557, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4557, file: !101, line: 690, baseType: !1497, size: 512, offset: 640)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4557, file: !101, line: 691, baseType: !630, size: 64, offset: 1152)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4557, file: !101, line: 692, baseType: !1077, size: 256, offset: 1216)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4557, file: !101, line: 693, baseType: !1352, size: 192, offset: 1472)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4557, file: !101, line: 694, baseType: !4584, size: 64, offset: 1664)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4557, file: !101, line: 695, baseType: !382, size: 32, offset: 1728)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4557, file: !101, line: 696, baseType: !382, size: 32, offset: 1760)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4557, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4557, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4557, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4557, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4557, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4557, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4557, file: !101, line: 703, baseType: !897, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4557, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4557, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4557, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4557, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4557, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4557, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4557, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4557, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4557, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4557, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4557, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4557, file: !101, line: 715, baseType: !630, size: 64, offset: 2048)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4557, file: !101, line: 716, baseType: !630, size: 64, offset: 2112)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4557, file: !101, line: 717, baseType: !630, size: 64, offset: 2176)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4557, file: !101, line: 718, baseType: !630, size: 64, offset: 2240)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4557, file: !101, line: 720, baseType: !4636, size: 64, offset: 2304)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4638)
!4638 = !{!4639, !4640}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4637, file: !101, line: 633, baseType: !412, size: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4637, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4557, file: !101, line: 721, baseType: !4642, size: 64, offset: 2368)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{null, !387, !813}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4557, file: !101, line: 722, baseType: !4646, size: 64, offset: 2432)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !388, file: !94, line: 727, baseType: !4649, size: 64, offset: 4224)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4651)
!4651 = !{!4652, !4653, !4654, !4658, !4659, !4660}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4650, file: !101, line: 743, baseType: !4447, size: 1472)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4650, file: !101, line: 744, baseType: !4450, size: 64, offset: 1472)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4650, file: !101, line: 745, baseType: !4655, size: 64, offset: 1536)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !387, !897}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4650, file: !101, line: 746, baseType: !4450, size: 64, offset: 1600)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4650, file: !101, line: 747, baseType: !4441, size: 64, offset: 1664)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4650, file: !101, line: 748, baseType: !4441, size: 64, offset: 1728)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !388, file: !94, line: 736, baseType: !4662, size: 128, offset: 4288)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4663)
!4663 = !{!4664, !4668}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4662, file: !94, line: 531, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4667, line: 13, flags: DIFlagFwdDecl)
!4667 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4662, file: !94, line: 532, baseType: !4669, size: 64, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !388, file: !94, line: 738, baseType: !4672, size: 64, offset: 4416)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !388, file: !94, line: 740, baseType: !4676, size: 64, offset: 4480)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !388, file: !94, line: 741, baseType: !630, size: 64, offset: 4544)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !388, file: !94, line: 746, baseType: !630, size: 64, offset: 4608)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !388, file: !94, line: 747, baseType: !4680, size: 64, offset: 4672)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4682)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !388, file: !94, line: 749, baseType: !4684, size: 64, offset: 4736)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4686)
!4686 = !{!4687, !4688, !4689}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4685, file: !94, line: 433, baseType: !7, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4685, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4685, file: !94, line: 435, baseType: !356, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !388, file: !94, line: 751, baseType: !399, size: 128, offset: 4800)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !388, file: !94, line: 762, baseType: !4692, size: 64, offset: 4928)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !388, file: !94, line: 770, baseType: !4695, offset: 4992)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4696, line: 5, elements: !1106)
!4696 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !388, file: !94, line: 772, baseType: !4698, size: 64, offset: 4992)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4700, line: 18, flags: DIFlagFwdDecl)
!4700 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !388, file: !94, line: 773, baseType: !4702, size: 64, offset: 5056)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4704, line: 41, size: 512, elements: !4705)
!4704 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4705 = !{!4706, !4707, !4801, !4802, !4803, !4804}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4703, file: !4704, line: 42, baseType: !4702, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4703, file: !4704, line: 43, baseType: !4708, size: 64, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4710)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4704, line: 125, size: 1408, elements: !4711)
!4711 = !{!4712, !4716, !4720, !4726, !4730, !4731, !4736, !4740, !4744, !4748, !4752, !4753, !4757, !4761, !4765, !4776, !4777, !4778, !4779, !4789, !4793, !4797}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4710, file: !4704, line: 126, baseType: !4713, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!4702, !4702}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4710, file: !4704, line: 127, baseType: !4717, size: 64, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{null, !4702}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4710, file: !4704, line: 128, baseType: !4721, size: 64, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!897, !4724}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4703)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4710, file: !4704, line: 129, baseType: !4727, size: 64, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!1805, !4724, !4433}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4710, file: !4704, line: 131, baseType: !4721, size: 64, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4710, file: !4704, line: 133, baseType: !4732, size: 64, offset: 320)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!4735, !4724}
!4735 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4704, line: 132, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4710, file: !4704, line: 134, baseType: !4737, size: 64, offset: 384)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!897, !4724, !395}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4710, file: !4704, line: 136, baseType: !4741, size: 64, offset: 448)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!109, !4724, !395, !7, !353, !525}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4710, file: !4704, line: 141, baseType: !4745, size: 64, offset: 512)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!109, !4724, !395, !1154, !525}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4710, file: !4704, line: 144, baseType: !4749, size: 64, offset: 576)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!395, !4724}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4710, file: !4704, line: 145, baseType: !4749, size: 64, offset: 640)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4710, file: !4704, line: 146, baseType: !4754, size: 64, offset: 704)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!4702, !4724}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4710, file: !4704, line: 148, baseType: !4758, size: 64, offset: 768)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!4702, !4724, !4702}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4710, file: !4704, line: 151, baseType: !4762, size: 64, offset: 832)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!4702, !4724, !395}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4710, file: !4704, line: 153, baseType: !4766, size: 64, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!109, !4724, !395, !395, !7, !7, !4769}
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4704, line: 94, size: 640, elements: !4771)
!4771 = !{!4772, !4773, !4774}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4770, file: !4704, line: 95, baseType: !4702, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4770, file: !4704, line: 96, baseType: !7, size: 32, offset: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4770, file: !4704, line: 97, baseType: !4775, size: 512, offset: 128)
!4775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 512, elements: !1540)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4710, file: !4704, line: 158, baseType: !4758, size: 64, offset: 960)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4710, file: !4704, line: 161, baseType: !4754, size: 64, offset: 1024)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4710, file: !4704, line: 163, baseType: !4713, size: 64, offset: 1088)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4710, file: !4704, line: 164, baseType: !4780, size: 64, offset: 1152)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!109, !4724, !4783}
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4704, line: 73, size: 128, elements: !4785)
!4785 = !{!4786, !4787, !4788}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4784, file: !4704, line: 74, baseType: !7, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4784, file: !4704, line: 75, baseType: !7, size: 32, offset: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4784, file: !4704, line: 76, baseType: !4724, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4710, file: !4704, line: 166, baseType: !4790, size: 64, offset: 1216)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!353, !4702, !109}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4710, file: !4704, line: 167, baseType: !4794, size: 64, offset: 1280)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!109, !4724, !7}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4710, file: !4704, line: 168, baseType: !4798, size: 64, offset: 1344)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!109, !4702}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4703, file: !4704, line: 44, baseType: !387, size: 64, offset: 128)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4703, file: !4704, line: 45, baseType: !399, size: 128, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4703, file: !4704, line: 46, baseType: !399, size: 128, offset: 320)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4703, file: !4704, line: 47, baseType: !436, size: 8, offset: 448)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !388, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !388, file: !94, line: 778, baseType: !713, size: 32, offset: 5152)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !388, file: !94, line: 779, baseType: !626, size: 32, offset: 5184)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !388, file: !94, line: 781, baseType: !412, size: 32, offset: 5216)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !388, file: !94, line: 782, baseType: !399, size: 128, offset: 5248)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !388, file: !94, line: 784, baseType: !4811, size: 64, offset: 5376)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4813)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4814, line: 52, size: 768, elements: !4815)
!4814 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4824, !4828, !4829, !4830, !4831, !4835, !4839}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4813, file: !4814, line: 53, baseType: !395, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4813, file: !4814, line: 55, baseType: !529, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4813, file: !4814, line: 56, baseType: !529, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4813, file: !4814, line: 58, baseType: !4430, size: 64, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4813, file: !4814, line: 59, baseType: !4821, size: 64, offset: 256)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!478, !4433, !4439}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4813, file: !4814, line: 61, baseType: !4825, size: 64, offset: 320)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !4811}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4813, file: !4814, line: 62, baseType: !4441, size: 64, offset: 384)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4813, file: !4814, line: 64, baseType: !4450, size: 64, offset: 448)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4813, file: !4814, line: 66, baseType: !4285, size: 64, offset: 512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4813, file: !4814, line: 67, baseType: !4832, size: 64, offset: 576)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!1805, !4433}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4813, file: !4814, line: 69, baseType: !4836, size: 64, offset: 640)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{null, !4433, !4317, !4318}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4813, file: !4814, line: 71, baseType: !4445, size: 64, offset: 704)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !388, file: !94, line: 785, baseType: !529, size: 64, offset: 5440)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !388, file: !94, line: 787, baseType: !4441, size: 64, offset: 5504)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !388, file: !94, line: 788, baseType: !4843, size: 64, offset: 5568)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !388, file: !94, line: 789, baseType: !4846, size: 64, offset: 5632)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !388, file: !94, line: 791, baseType: !4849, size: 64, offset: 5696)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4855, !4856}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4850, file: !94, line: 598, baseType: !116, size: 32)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4850, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4850, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4850, file: !94, line: 601, baseType: !897, size: 8, offset: 96)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4850, file: !94, line: 602, baseType: !897, size: 8, offset: 104)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !388, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !388, file: !94, line: 795, baseType: !897, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !388, file: !94, line: 796, baseType: !897, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !388, file: !94, line: 797, baseType: !897, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !388, file: !94, line: 798, baseType: !897, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !388, file: !94, line: 799, baseType: !897, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !370, file: !206, line: 73, baseType: !4864, size: 256, offset: 128)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !206, line: 66, size: 256, elements: !4865)
!4865 = !{!4866, !4867, !4868}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4864, file: !206, line: 68, baseType: !399, size: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4864, file: !206, line: 70, baseType: !353, size: 64, offset: 128)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4864, file: !206, line: 72, baseType: !412, size: 32, offset: 192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !370, file: !206, line: 76, baseType: !4870, size: 64, offset: 384)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4872)
!4872 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4873, line: 42, flags: DIFlagFwdDecl)
!4873 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !370, file: !206, line: 88, baseType: !353, size: 64, offset: 448)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !370, file: !206, line: 98, baseType: !4876, size: 64, offset: 512)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4878, line: 77, size: 640, elements: !4879)
!4878 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885, !4886}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4877, file: !4878, line: 79, baseType: !109, size: 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4877, file: !4878, line: 80, baseType: !109, size: 32, offset: 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4877, file: !4878, line: 81, baseType: !387, size: 64, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4877, file: !4878, line: 82, baseType: !369, size: 64, offset: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4877, file: !4878, line: 84, baseType: !592, size: 64, offset: 192)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4877, file: !4878, line: 86, baseType: !399, size: 128, offset: 256)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4877, file: !4878, line: 87, baseType: !817, size: 256, offset: 384)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !370, file: !206, line: 107, baseType: !4876, size: 64, offset: 576)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !370, file: !206, line: 110, baseType: !4876, size: 64, offset: 640)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !370, file: !206, line: 117, baseType: !897, size: 8, offset: 704)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !370, file: !206, line: 125, baseType: !4891, size: 64, offset: 768)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4893, line: 65, size: 1280, elements: !4894)
!4893 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4894 = !{!4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4892, file: !4893, line: 66, baseType: !374, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4892, file: !4893, line: 67, baseType: !369, size: 64, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4892, file: !4893, line: 72, baseType: !478, size: 64, offset: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4892, file: !4893, line: 77, baseType: !109, size: 32, offset: 192)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4892, file: !4893, line: 82, baseType: !1370, size: 192, offset: 256)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4892, file: !4893, line: 83, baseType: !353, size: 64, offset: 448)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4892, file: !4893, line: 99, baseType: !4891, size: 64, offset: 512)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4892, file: !4893, line: 107, baseType: !109, size: 32, offset: 576)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4892, file: !4893, line: 116, baseType: !399, size: 128, offset: 640)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4892, file: !4893, line: 128, baseType: !399, size: 128, offset: 768)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4892, file: !4893, line: 139, baseType: !1370, size: 192, offset: 896)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4892, file: !4893, line: 147, baseType: !1370, size: 192, offset: 1088)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !370, file: !206, line: 135, baseType: !626, size: 32, offset: 832)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !370, file: !206, line: 143, baseType: !897, size: 8, offset: 864)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !370, file: !206, line: 146, baseType: !557, size: 64, offset: 896)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !370, file: !206, line: 149, baseType: !478, size: 64, offset: 960)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !370, file: !206, line: 159, baseType: !817, size: 256, offset: 1024)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !370, file: !206, line: 166, baseType: !817, size: 256, offset: 1280)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !370, file: !206, line: 174, baseType: !382, size: 32, offset: 1536)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !370, file: !206, line: 177, baseType: !817, size: 256, offset: 1600)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !370, file: !206, line: 183, baseType: !399, size: 128, offset: 1856)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !370, file: !206, line: 191, baseType: !399, size: 128, offset: 1984)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !370, file: !206, line: 198, baseType: !817, size: 256, offset: 2112)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !370, file: !206, line: 205, baseType: !399, size: 128, offset: 2368)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !370, file: !206, line: 220, baseType: !897, size: 8, offset: 2496)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !370, file: !206, line: 230, baseType: !4921, size: 64, offset: 2560)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !4923, line: 91, size: 2432, elements: !4924)
!4923 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c3f5f08fd7c156883238a0e593b6d6")
!4924 = !{!4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4975, !4976, !4998, !4999}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4922, file: !4923, line: 95, baseType: !369, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4922, file: !4923, line: 99, baseType: !1352, size: 192, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !4922, file: !4923, line: 106, baseType: !1059, size: 320, offset: 256)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !4922, file: !4923, line: 111, baseType: !2295, size: 64, offset: 576)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4922, file: !4923, line: 127, baseType: !823, size: 64, offset: 640)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4922, file: !4923, line: 131, baseType: !1505, size: 64, offset: 704)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4922, file: !4923, line: 138, baseType: !382, size: 32, offset: 768)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4922, file: !4923, line: 142, baseType: !626, size: 32, offset: 800)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4922, file: !4923, line: 162, baseType: !626, size: 32, offset: 832)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !4922, file: !4923, line: 171, baseType: !7, size: 32, offset: 864)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4922, file: !4923, line: 176, baseType: !7, size: 32, offset: 896)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !4922, file: !4923, line: 182, baseType: !109, size: 32, offset: 928)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !4922, file: !4923, line: 188, baseType: !109, size: 32, offset: 960)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4922, file: !4923, line: 199, baseType: !4939, size: 960, offset: 1024)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !142, line: 252, size: 960, elements: !4940)
!4940 = !{!4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4939, file: !142, line: 258, baseType: !109, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4939, file: !142, line: 259, baseType: !446, size: 16, offset: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4939, file: !142, line: 260, baseType: !446, size: 16, offset: 48)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4939, file: !142, line: 261, baseType: !446, size: 16, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4939, file: !142, line: 262, baseType: !446, size: 16, offset: 80)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4939, file: !142, line: 263, baseType: !446, size: 16, offset: 96)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4939, file: !142, line: 264, baseType: !446, size: 16, offset: 112)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4939, file: !142, line: 265, baseType: !446, size: 16, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4939, file: !142, line: 266, baseType: !446, size: 16, offset: 144)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4939, file: !142, line: 267, baseType: !446, size: 16, offset: 160)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4939, file: !142, line: 268, baseType: !446, size: 16, offset: 176)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4939, file: !142, line: 303, baseType: !626, size: 32, offset: 192)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4939, file: !142, line: 320, baseType: !109, size: 32, offset: 224)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4939, file: !142, line: 321, baseType: !446, size: 16, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4939, file: !142, line: 322, baseType: !446, size: 16, offset: 272)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4939, file: !142, line: 323, baseType: !446, size: 16, offset: 288)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4939, file: !142, line: 324, baseType: !446, size: 16, offset: 304)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4939, file: !142, line: 325, baseType: !446, size: 16, offset: 320)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4939, file: !142, line: 326, baseType: !446, size: 16, offset: 336)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4939, file: !142, line: 327, baseType: !446, size: 16, offset: 352)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4939, file: !142, line: 328, baseType: !446, size: 16, offset: 368)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4939, file: !142, line: 329, baseType: !446, size: 16, offset: 384)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4939, file: !142, line: 330, baseType: !446, size: 16, offset: 400)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4939, file: !142, line: 331, baseType: !446, size: 16, offset: 416)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4939, file: !142, line: 332, baseType: !446, size: 16, offset: 432)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4939, file: !142, line: 333, baseType: !446, size: 16, offset: 448)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4939, file: !142, line: 341, baseType: !446, size: 16, offset: 464)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4939, file: !142, line: 349, baseType: !446, size: 16, offset: 480)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4939, file: !142, line: 378, baseType: !436, size: 8, offset: 496)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4939, file: !142, line: 389, baseType: !897, size: 8, offset: 504)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4939, file: !142, line: 396, baseType: !399, size: 128, offset: 512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4939, file: !142, line: 403, baseType: !3786, size: 256, offset: 640)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4939, file: !142, line: 411, baseType: !141, size: 32, offset: 896)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4939, file: !142, line: 418, baseType: !184, size: 32, offset: 928)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4922, file: !4923, line: 207, baseType: !897, size: 8, offset: 1984)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4922, file: !4923, line: 212, baseType: !4977, size: 64, offset: 2048)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4979, line: 123, size: 448, elements: !4980)
!4979 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!4980 = !{!4981, !4982, !4983, !4984, !4985, !4986}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4978, file: !4979, line: 124, baseType: !7, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4978, file: !4979, line: 125, baseType: !775, size: 32, offset: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4978, file: !4979, line: 126, baseType: !399, size: 128, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4978, file: !4979, line: 127, baseType: !399, size: 128, offset: 192)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4978, file: !4979, line: 128, baseType: !1385, size: 64, offset: 320)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4978, file: !4979, line: 129, baseType: !4987, size: 64, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4979, line: 132, size: 320, elements: !4989)
!4989 = !{!4990, !4991, !4996, !4997}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4988, file: !4979, line: 133, baseType: !399, size: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4988, file: !4979, line: 134, baseType: !4992, size: 64, offset: 128)
!4992 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4979, line: 116, baseType: !4993)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{null, !4987}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4988, file: !4979, line: 135, baseType: !4977, size: 64, offset: 192)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4988, file: !4979, line: 137, baseType: !109, size: 32, offset: 256)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4922, file: !4923, line: 218, baseType: !399, size: 128, offset: 2112)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !4922, file: !4923, line: 225, baseType: !1352, size: 192, offset: 2240)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !370, file: !206, line: 237, baseType: !412, size: 32, offset: 2624)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !370, file: !206, line: 242, baseType: !412, size: 32, offset: 2656)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !370, file: !206, line: 265, baseType: !626, size: 32, offset: 2688)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !370, file: !206, line: 268, baseType: !399, size: 128, offset: 2752)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !370, file: !206, line: 276, baseType: !412, size: 32, offset: 2880)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !370, file: !206, line: 279, baseType: !7, size: 32, offset: 2912)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !370, file: !206, line: 282, baseType: !5007, size: 8704, offset: 2944)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5008, line: 375, size: 8704, elements: !5009)
!5008 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5009 = !{!5010, !5011, !5030, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5007, file: !5008, line: 386, baseType: !817, size: 256)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5007, file: !5008, line: 396, baseType: !5012, size: 448, offset: 256)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5013, line: 85, size: 448, elements: !5014)
!5013 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5014 = !{!5015, !5029}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5012, file: !5013, line: 89, baseType: !5016, size: 320)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5017, line: 47, size: 320, elements: !5018)
!5017 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5018 = !{!5019, !5020}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5016, file: !5017, line: 48, baseType: !817, size: 256)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5016, file: !5017, line: 49, baseType: !5021, size: 64, offset: 256)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5017, line: 55, size: 192, elements: !5023)
!5023 = !{!5024, !5025, !5026, !5027, !5028}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5022, file: !5017, line: 56, baseType: !1385, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5022, file: !5017, line: 57, baseType: !356, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5022, file: !5017, line: 58, baseType: !7, size: 32, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5022, file: !5017, line: 59, baseType: !448, size: 16, offset: 160)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5022, file: !5017, line: 60, baseType: !448, size: 16, offset: 176)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5012, file: !5013, line: 95, baseType: !399, size: 128, offset: 320)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5007, file: !5008, line: 406, baseType: !5031, size: 64, offset: 704)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5013, line: 46, size: 512, elements: !5033)
!5033 = !{!5034, !5035, !5037, !5040, !5041, !5042}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5032, file: !5013, line: 48, baseType: !5022, size: 192)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5032, file: !5013, line: 55, baseType: !5036, size: 64, offset: 192)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5032, file: !5013, line: 61, baseType: !5038, size: 32, offset: 256)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5039, line: 27, baseType: !626)
!5039 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5032, file: !5013, line: 66, baseType: !399, size: 128, offset: 320)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5032, file: !5013, line: 71, baseType: !897, size: 8, offset: 448)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5032, file: !5013, line: 74, baseType: !897, size: 8, offset: 456)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5007, file: !5008, line: 414, baseType: !817, size: 256, offset: 768)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5007, file: !5008, line: 422, baseType: !1370, size: 192, offset: 1024)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5007, file: !5008, line: 430, baseType: !1370, size: 192, offset: 1216)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5007, file: !5008, line: 433, baseType: !817, size: 256, offset: 1408)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5007, file: !5008, line: 435, baseType: !109, size: 32, offset: 1664)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5007, file: !5008, line: 437, baseType: !399, size: 128, offset: 1728)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5007, file: !5008, line: 443, baseType: !412, size: 32, offset: 1856)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5007, file: !5008, line: 448, baseType: !109, size: 32, offset: 1888)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5007, file: !5008, line: 452, baseType: !5052, size: 128, offset: 1920)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1371, line: 246, size: 128, elements: !5053)
!5053 = !{!5054}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5052, file: !1371, line: 247, baseType: !1374, size: 128)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5007, file: !5008, line: 460, baseType: !399, size: 128, offset: 2048)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5007, file: !5008, line: 470, baseType: !3024, size: 64, offset: 2176)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5007, file: !5008, line: 474, baseType: !1077, size: 256, offset: 2240)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5007, file: !5008, line: 482, baseType: !109, size: 32, offset: 2496)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5007, file: !5008, line: 490, baseType: !399, size: 128, offset: 2560)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5007, file: !5008, line: 499, baseType: !109, size: 32, offset: 2688)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5007, file: !5008, line: 506, baseType: !399, size: 128, offset: 2752)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5007, file: !5008, line: 514, baseType: !109, size: 32, offset: 2880)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5007, file: !5008, line: 521, baseType: !399, size: 128, offset: 2944)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5007, file: !5008, line: 530, baseType: !399, size: 128, offset: 3072)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5007, file: !5008, line: 539, baseType: !399, size: 128, offset: 3200)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5007, file: !5008, line: 541, baseType: !109, size: 32, offset: 3328)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5007, file: !5008, line: 541, baseType: !109, size: 32, offset: 3360)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5007, file: !5008, line: 542, baseType: !109, size: 32, offset: 3392)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5007, file: !5008, line: 542, baseType: !109, size: 32, offset: 3424)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5007, file: !5008, line: 543, baseType: !5071, size: 64, offset: 3456)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5073)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5008, line: 47, size: 576, elements: !5074)
!5074 = !{!5075, !5573, !5577, !5581, !5587, !5594, !5598, !5602, !5606}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5073, file: !5008, line: 83, baseType: !5076, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!5079, !369, !5158, !5558}
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5081, line: 117, size: 1600, elements: !5082)
!5081 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5cd71656f00b65d2ac7e671422852fe")
!5082 = !{!5083, !5084, !5085, !5122, !5123, !5145, !5211, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5080, file: !5081, line: 121, baseType: !369, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5080, file: !5081, line: 126, baseType: !399, size: 128, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5080, file: !5081, line: 131, baseType: !5086, size: 256, offset: 192)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5087, line: 55, size: 256, elements: !5088)
!5087 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5088 = !{!5089, !5090, !5091, !5116, !5117}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5086, file: !5087, line: 56, baseType: !2044, size: 32)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5086, file: !5087, line: 57, baseType: !2044, size: 32, offset: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5086, file: !5087, line: 58, baseType: !5092, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5087, line: 67, size: 3136, elements: !5094)
!5094 = !{!5095, !5096, !5114}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5093, file: !5087, line: 73, baseType: !109, size: 32)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5093, file: !5087, line: 82, baseType: !5097, size: 1536, offset: 64)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5098, size: 1536, elements: !5112)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5100, line: 80, size: 960, elements: !5101)
!5100 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5101 = !{!5102, !5103, !5104, !5105, !5106, !5107, !5110, !5111}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5099, file: !5100, line: 84, baseType: !399, size: 128)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5099, file: !5100, line: 89, baseType: !5086, size: 256, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5099, file: !5100, line: 166, baseType: !2044, size: 32, offset: 384)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5099, file: !5100, line: 171, baseType: !3786, size: 256, offset: 416)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5099, file: !5100, line: 176, baseType: !2044, size: 32, offset: 672)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5099, file: !5100, line: 184, baseType: !5108, size: 64, offset: 704)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !355, line: 113, baseType: !630)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5099, file: !5100, line: 189, baseType: !369, size: 64, offset: 768)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5099, file: !5100, line: 197, baseType: !399, size: 128, offset: 832)
!5112 = !{!5113}
!5113 = !DISubrange(count: 24)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5093, file: !5087, line: 106, baseType: !5115, size: 1536, offset: 1600)
!5115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5109, size: 1536, elements: !5112)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5086, file: !5087, line: 59, baseType: !374, size: 32, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5086, file: !5087, line: 60, baseType: !5118, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{null, !5121}
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5080, file: !5081, line: 136, baseType: !2172, size: 128, offset: 448)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5080, file: !5081, line: 141, baseType: !5124, size: 64, offset: 576)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5127, line: 61, size: 192, elements: !5128)
!5127 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!5128 = !{!5129, !5130, !5131, !5132, !5138, !5139, !5140, !5141, !5142, !5143, !5144}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5126, file: !5127, line: 63, baseType: !626, size: 32)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5126, file: !5127, line: 72, baseType: !436, size: 8, offset: 32)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !5126, file: !5127, line: 75, baseType: !436, size: 8, offset: 40)
!5132 = !DIDerivedType(tag: DW_TAG_member, scope: !5126, file: !5127, line: 77, baseType: !5133, size: 32, offset: 48)
!5133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5126, file: !5127, line: 77, size: 32, elements: !5134)
!5134 = !{!5135, !5137}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !5133, file: !5127, line: 86, baseType: !5136, size: 32)
!5136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 32, elements: !1047)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !5133, file: !5127, line: 112, baseType: !5136, size: 32)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !5126, file: !5127, line: 121, baseType: !5136, size: 32, offset: 80)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !5126, file: !5127, line: 129, baseType: !5136, size: 32, offset: 112)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !5126, file: !5127, line: 132, baseType: !436, size: 8, offset: 144)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !5126, file: !5127, line: 134, baseType: !436, size: 8, offset: 152)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !5126, file: !5127, line: 137, baseType: !897, size: 8, offset: 160)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !5126, file: !5127, line: 140, baseType: !897, size: 8, offset: 168)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !5126, file: !5127, line: 143, baseType: !897, size: 8, offset: 176)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5080, file: !5081, line: 145, baseType: !5146, size: 64, offset: 640)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5148)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !5081, line: 42, size: 192, elements: !5149)
!5149 = !{!5150, !5154, !5200}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5148, file: !5081, line: 53, baseType: !5151, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !5079}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !5148, file: !5081, line: 73, baseType: !5155, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!109, !5079, !5158, !889}
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4878, line: 166, size: 2944, elements: !5160)
!5160 = !{!5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5159, file: !4878, line: 176, baseType: !897, size: 8)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5159, file: !4878, line: 183, baseType: !897, size: 8, offset: 8)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !5159, file: !4878, line: 191, baseType: !897, size: 8, offset: 16)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !5159, file: !4878, line: 194, baseType: !897, size: 8, offset: 24)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !5159, file: !4878, line: 202, baseType: !897, size: 8, offset: 32)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !5159, file: !4878, line: 209, baseType: !897, size: 8, offset: 40)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !5159, file: !4878, line: 220, baseType: !897, size: 8, offset: 48)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !5159, file: !4878, line: 231, baseType: !897, size: 8, offset: 56)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !5159, file: !4878, line: 243, baseType: !897, size: 8, offset: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !5159, file: !4878, line: 268, baseType: !4891, size: 64, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !5159, file: !4878, line: 271, baseType: !412, size: 32, offset: 192)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5159, file: !4878, line: 281, baseType: !1342, size: 64, offset: 256)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !5159, file: !4878, line: 284, baseType: !630, size: 64, offset: 320)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5159, file: !4878, line: 287, baseType: !5175, size: 32, offset: 384)
!5175 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !5176, line: 85, baseType: !7)
!5176 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !5159, file: !4878, line: 295, baseType: !399, size: 128, offset: 448)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5159, file: !4878, line: 298, baseType: !4876, size: 64, offset: 576)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5159, file: !4878, line: 306, baseType: !1370, size: 192, offset: 640)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !5159, file: !4878, line: 309, baseType: !412, size: 32, offset: 832)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !5159, file: !4878, line: 312, baseType: !1370, size: 192, offset: 896)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !5159, file: !4878, line: 314, baseType: !412, size: 32, offset: 1088)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !5159, file: !4878, line: 317, baseType: !1700, size: 64, offset: 1152)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !5159, file: !4878, line: 325, baseType: !353, size: 64, offset: 1216)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !5159, file: !4878, line: 336, baseType: !399, size: 128, offset: 1280)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !5159, file: !4878, line: 339, baseType: !817, size: 256, offset: 1408)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !5159, file: !4878, line: 349, baseType: !399, size: 128, offset: 1664)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !5159, file: !4878, line: 352, baseType: !1352, size: 192, offset: 1792)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !5159, file: !4878, line: 363, baseType: !399, size: 128, offset: 1984)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !5159, file: !4878, line: 373, baseType: !399, size: 128, offset: 2112)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !5159, file: !4878, line: 382, baseType: !109, size: 32, offset: 2240)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !5159, file: !4878, line: 385, baseType: !817, size: 256, offset: 2304)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !5159, file: !4878, line: 392, baseType: !5194, size: 384, offset: 2560)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !5195, line: 45, size: 384, elements: !5196)
!5195 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!5196 = !{!5197, !5198, !5199}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5194, file: !5195, line: 47, baseType: !817, size: 256)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !5194, file: !5195, line: 48, baseType: !1559, size: 64, offset: 256)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5194, file: !5195, line: 49, baseType: !1559, size: 64, offset: 320)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !5148, file: !5081, line: 97, baseType: !5201, size: 64, offset: 128)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!109, !5079, !5158, !7, !7, !5204, !7}
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !5176, line: 96, size: 64, elements: !5206)
!5206 = !{!5207, !5208, !5209, !5210}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5205, file: !5176, line: 97, baseType: !448, size: 16)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5205, file: !5176, line: 98, baseType: !448, size: 16, offset: 16)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5205, file: !5176, line: 99, baseType: !448, size: 16, offset: 32)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5205, file: !5176, line: 100, baseType: !448, size: 16, offset: 48)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5080, file: !5081, line: 150, baseType: !5212, size: 128, offset: 704)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1047)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5080, file: !5081, line: 168, baseType: !5212, size: 128, offset: 832)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5080, file: !5081, line: 175, baseType: !5109, size: 64, offset: 960)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5080, file: !5081, line: 180, baseType: !7, size: 32, offset: 1024)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5080, file: !5081, line: 185, baseType: !7, size: 32, offset: 1056)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5080, file: !5081, line: 190, baseType: !109, size: 32, offset: 1088)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !5080, file: !5081, line: 196, baseType: !109, size: 32, offset: 1120)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !5080, file: !5081, line: 202, baseType: !109, size: 32, offset: 1152)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !5080, file: !5081, line: 206, baseType: !399, size: 128, offset: 1216)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5080, file: !5081, line: 213, baseType: !5222, size: 256, offset: 1344)
!5222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5223, size: 256, elements: !1047)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !201, line: 264, size: 2816, elements: !5225)
!5225 = !{!5226, !5227, !5228, !5229, !5230, !5269, !5270, !5271, !5457, !5458, !5459, !5460, !5464, !5549, !5550}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5224, file: !201, line: 274, baseType: !374, size: 32)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !5224, file: !201, line: 287, baseType: !7, size: 32, offset: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5224, file: !201, line: 292, baseType: !369, size: 64, offset: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !5224, file: !201, line: 302, baseType: !1700, size: 64, offset: 128)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !5224, file: !201, line: 314, baseType: !5231, size: 1536, offset: 192)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !5232, line: 52, size: 1536, elements: !5233)
!5232 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!5233 = !{!5234, !5235, !5267, !5268}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5231, file: !5232, line: 53, baseType: !1321, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !5231, file: !5232, line: 54, baseType: !5236, size: 1344, offset: 64)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !5237, line: 157, size: 1344, elements: !5238)
!5237 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!5238 = !{!5239, !5240, !5241, !5242, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5236, file: !5237, line: 159, baseType: !356, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5236, file: !5237, line: 161, baseType: !630, size: 64, offset: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5236, file: !5237, line: 163, baseType: !630, size: 64, offset: 128)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5236, file: !5237, line: 165, baseType: !5243, size: 64, offset: 192)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !5237, line: 190, size: 1920, elements: !5245)
!5245 = !{!5246, !5252, !5253, !5254, !5255, !5256, !5257}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !5244, file: !5237, line: 200, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{null, !5250, !356, !4676, !4676}
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5236)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5244, file: !5237, line: 206, baseType: !399, size: 128, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !5244, file: !5237, line: 209, baseType: !5236, size: 1344, offset: 192)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !5244, file: !5237, line: 211, baseType: !1556, size: 128, offset: 1536)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !5244, file: !5237, line: 212, baseType: !1556, size: 128, offset: 1664)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !5244, file: !5237, line: 213, baseType: !1559, size: 64, offset: 1792)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !5244, file: !5237, line: 215, baseType: !356, size: 64, offset: 1856)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !5236, file: !5237, line: 166, baseType: !399, size: 128, offset: 256)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5236, file: !5237, line: 167, baseType: !399, size: 128, offset: 384)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5236, file: !5237, line: 168, baseType: !929, size: 192, align: 64, offset: 512)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !5236, file: !5237, line: 169, baseType: !929, size: 192, align: 64, offset: 704)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !5236, file: !5237, line: 170, baseType: !929, size: 192, align: 64, offset: 896)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !5236, file: !5237, line: 171, baseType: !630, size: 64, offset: 1088)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !5236, file: !5237, line: 172, baseType: !630, size: 64, offset: 1152)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !5236, file: !5237, line: 173, baseType: !630, size: 64, offset: 1216)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5236, file: !5237, line: 174, baseType: !356, size: 64, offset: 1280)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !5231, file: !5232, line: 55, baseType: !1559, size: 64, offset: 1408)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !5231, file: !5232, line: 56, baseType: !353, size: 64, offset: 1472)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5224, file: !201, line: 322, baseType: !525, size: 64, offset: 1728)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5224, file: !201, line: 331, baseType: !109, size: 32, offset: 1792)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !5224, file: !201, line: 344, baseType: !5272, size: 64, offset: 1856)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !5274, line: 302, size: 1856, elements: !5275)
!5274 = !DIFile(filename: "./include/linux/dma-buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "057e074e138bd4ff4400a799d545c120")
!5275 = !{!5276, !5277, !5278, !5279, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5391, !5392, !5456}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5273, file: !5274, line: 308, baseType: !525, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5273, file: !5274, line: 316, baseType: !1700, size: 64, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "attachments", scope: !5273, file: !5274, line: 324, baseType: !399, size: 128, offset: 128)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5273, file: !5274, line: 327, baseType: !5280, size: 64, offset: 256)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5282)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_ops", file: !5274, line: 36, size: 832, elements: !5283)
!5283 = !{!5284, !5285, !5327, !5331, !5335, !5336, !5340, !5344, !5348, !5352, !5353, !5357, !5371}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sgt_mapping", scope: !5282, file: !5274, line: 44, baseType: !897, size: 8)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5282, file: !5274, line: 72, baseType: !5286, size: 64, offset: 64)
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!109, !5272, !5289}
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !5274, line: 508, size: 576, elements: !5291)
!5291 = !{!5292, !5293, !5294, !5295, !5313, !5314, !5315, !5325, !5326}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf", scope: !5290, file: !5274, line: 509, baseType: !5272, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5290, file: !5274, line: 510, baseType: !387, size: 64, offset: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5290, file: !5274, line: 511, baseType: !399, size: 128, offset: 128)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !5290, file: !5274, line: 512, baseType: !5296, size: 64, offset: 256)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5298, line: 39, size: 128, elements: !5299)
!5298 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5299 = !{!5300, !5311, !5312}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5297, file: !5298, line: 40, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5298, line: 11, size: 256, elements: !5303)
!5303 = !{!5304, !5305, !5306, !5307, !5309, !5310}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5302, file: !5298, line: 12, baseType: !356, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5302, file: !5298, line: 13, baseType: !7, size: 32, offset: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5302, file: !5298, line: 14, baseType: !7, size: 32, offset: 96)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5302, file: !5298, line: 15, baseType: !5308, size: 64, offset: 128)
!5308 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !355, line: 149, baseType: !630)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5302, file: !5298, line: 17, baseType: !7, size: 32, offset: 192)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5302, file: !5298, line: 20, baseType: !7, size: 32, offset: 224)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5297, file: !5298, line: 41, baseType: !7, size: 32, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5297, file: !5298, line: 42, baseType: !7, size: 32, offset: 96)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5290, file: !5274, line: 513, baseType: !193, size: 32, offset: 320)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "peer2peer", scope: !5290, file: !5274, line: 514, baseType: !897, size: 8, offset: 352)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "importer_ops", scope: !5290, file: !5274, line: 515, baseType: !5316, size: 64, offset: 384)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5318)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attach_ops", file: !5274, line: 456, size: 128, elements: !5319)
!5319 = !{!5320, !5321}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "allow_peer2peer", scope: !5318, file: !5274, line: 463, baseType: !897, size: 8)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "move_notify", scope: !5318, file: !5274, line: 483, baseType: !5322, size: 64, offset: 64)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !5289}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "importer_priv", scope: !5290, file: !5274, line: 516, baseType: !353, size: 64, offset: 448)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5290, file: !5274, line: 517, baseType: !353, size: 64, offset: 512)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5282, file: !5274, line: 83, baseType: !5328, size: 64, offset: 128)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{null, !5272, !5289}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5282, file: !5274, line: 109, baseType: !5332, size: 64, offset: 192)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!109, !5289}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !5282, file: !5274, line: 122, baseType: !5322, size: 64, offset: 256)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "map_dma_buf", scope: !5282, file: !5274, line: 179, baseType: !5337, size: 64, offset: 320)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!5296, !5289, !193}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_dma_buf", scope: !5282, file: !5274, line: 189, baseType: !5341, size: 64, offset: 384)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{null, !5289, !5296, !193}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5282, file: !5274, line: 203, baseType: !5345, size: 64, offset: 448)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !5272}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cpu_access", scope: !5282, file: !5274, line: 230, baseType: !5349, size: 64, offset: 512)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!109, !5272, !193}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "end_cpu_access", scope: !5282, file: !5274, line: 247, baseType: !5349, size: 64, offset: 576)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5282, file: !5274, line: 284, baseType: !5354, size: 64, offset: 640)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!109, !5272, !2731}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !5282, file: !5274, line: 286, baseType: !5358, size: 64, offset: 704)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!109, !5272, !5361}
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !5363, line: 109, size: 128, elements: !5364)
!5363 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!5364 = !{!5365, !5370}
!5365 = !DIDerivedType(tag: DW_TAG_member, scope: !5362, file: !5363, line: 110, baseType: !5366, size: 64)
!5366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5362, file: !5363, line: 110, size: 64, elements: !5367)
!5367 = !{!5368, !5369}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !5366, file: !5363, line: 111, baseType: !353, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5366, file: !5363, line: 112, baseType: !353, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !5362, file: !5363, line: 114, baseType: !897, size: 8, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !5282, file: !5274, line: 287, baseType: !5372, size: 64, offset: 768)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{null, !5272, !5361}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "vmapping_counter", scope: !5273, file: !5274, line: 335, baseType: !7, size: 32, offset: 320)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "vmap_ptr", scope: !5273, file: !5274, line: 341, baseType: !5362, size: 128, offset: 384)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !5273, file: !5274, line: 349, baseType: !395, size: 64, offset: 512)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5273, file: !5274, line: 357, baseType: !395, size: 64, offset: 576)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "name_lock", scope: !5273, file: !5274, line: 360, baseType: !412, size: 32, offset: 640)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5273, file: !5274, line: 368, baseType: !746, size: 64, offset: 704)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5273, file: !5274, line: 371, baseType: !399, size: 128, offset: 768)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5273, file: !5274, line: 374, baseType: !353, size: 64, offset: 896)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5273, file: !5274, line: 424, baseType: !5384, size: 64, offset: 960)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !323, line: 155, size: 384, elements: !5386)
!5386 = !{!5387, !5388}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5385, file: !323, line: 166, baseType: !5016, size: 320)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !5385, file: !323, line: 178, baseType: !5389, size: 64, offset: 320)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !323, line: 50, flags: DIFlagFwdDecl)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5273, file: !5274, line: 427, baseType: !1352, size: 192, offset: 1024)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "cb_in", scope: !5273, file: !5274, line: 436, baseType: !5393, size: 320, offset: 1216)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_poll_cb_t", file: !5274, line: 431, size: 320, elements: !5394)
!5394 = !{!5395, !5454, !5455}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !5393, file: !5274, line: 432, baseType: !5396, size: 192)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !5397, line: 116, size: 192, elements: !5398)
!5397 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!5398 = !{!5399, !5400}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5396, file: !5397, line: 117, baseType: !399, size: 128)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5396, file: !5397, line: 118, baseType: !5401, size: 64, offset: 128)
!5401 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !5397, line: 105, baseType: !5402)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{null, !5405, !5453}
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !5397, line: 65, size: 512, elements: !5407)
!5407 = !{!5408, !5409, !5442, !5448, !5449, !5450, !5451, !5452}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5406, file: !5397, line: 66, baseType: !2871, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5406, file: !5397, line: 67, baseType: !5410, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5412)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !5397, line: 125, size: 640, elements: !5413)
!5413 = !{!5414, !5415, !5419, !5420, !5424, !5425, !5429, !5433, !5437, !5438}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !5412, file: !5397, line: 132, baseType: !897, size: 8)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !5412, file: !5397, line: 143, baseType: !5416, size: 64, offset: 64)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!395, !5405}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !5412, file: !5397, line: 155, baseType: !5416, size: 64, offset: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !5412, file: !5397, line: 192, baseType: !5421, size: 64, offset: 192)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!897, !5405}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !5412, file: !5397, line: 209, baseType: !5421, size: 64, offset: 256)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5412, file: !5397, line: 227, baseType: !5426, size: 64, offset: 320)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!514, !5405, !897, !514}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5412, file: !5397, line: 238, baseType: !5430, size: 64, offset: 384)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{null, !5405}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !5412, file: !5397, line: 248, baseType: !5434, size: 64, offset: 448)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{null, !5405, !478, !109}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !5412, file: !5397, line: 258, baseType: !5434, size: 64, offset: 512)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !5412, file: !5397, line: 279, baseType: !5439, size: 64, offset: 576)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{null, !5405, !1505}
!5442 = !DIDerivedType(tag: DW_TAG_member, scope: !5406, file: !5397, line: 84, baseType: !5443, size: 128, offset: 128)
!5443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5406, file: !5397, line: 84, size: 128, elements: !5444)
!5444 = !{!5445, !5446, !5447}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5443, file: !5397, line: 85, baseType: !399, size: 128)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5443, file: !5397, line: 87, baseType: !1505, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5443, file: !5397, line: 89, baseType: !1037, size: 128, align: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5406, file: !5397, line: 91, baseType: !630, size: 64, offset: 256)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !5406, file: !5397, line: 92, baseType: !630, size: 64, offset: 320)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5406, file: !5397, line: 93, baseType: !356, size: 64, offset: 384)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5406, file: !5397, line: 94, baseType: !374, size: 32, offset: 448)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5406, file: !5397, line: 95, baseType: !109, size: 32, offset: 480)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5393, file: !5274, line: 433, baseType: !3376, size: 64, offset: 192)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5393, file: !5274, line: 435, baseType: !3365, size: 32, offset: 256)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "cb_out", scope: !5273, file: !5274, line: 436, baseType: !5393, size: 320, offset: 1536)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !5224, file: !201, line: 364, baseType: !5289, size: 64, offset: 1920)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5224, file: !201, line: 373, baseType: !5384, size: 64, offset: 1984)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !5224, file: !201, line: 382, baseType: !5385, size: 384, offset: 2048)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !5224, file: !201, line: 398, baseType: !5461, size: 128, offset: 2432)
!5461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5224, file: !201, line: 392, size: 128, elements: !5462)
!5462 = !{!5463}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5461, file: !201, line: 393, baseType: !399, size: 128)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5224, file: !201, line: 409, baseType: !5465, size: 64, offset: 2560)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5467)
!5467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !201, line: 69, size: 896, elements: !5468)
!5468 = !{!5469, !5473, !5477, !5481, !5518, !5522, !5526, !5527, !5531, !5535, !5539, !5543, !5544, !5548}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5467, file: !201, line: 77, baseType: !5470, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{null, !5223}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5467, file: !201, line: 86, baseType: !5474, size: 64, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!109, !5223, !5158}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5467, file: !201, line: 95, baseType: !5478, size: 64, offset: 128)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{null, !5223, !5158}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !5467, file: !201, line: 110, baseType: !5482, size: 64, offset: 192)
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !5485, !7, !5516}
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !5487, line: 76, size: 256, elements: !5488)
!5487 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!5488 = !{!5489, !5510, !5514, !5515}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5486, file: !5487, line: 78, baseType: !5490, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{null, !5485, !5493}
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5495, line: 79, size: 128, elements: !5496)
!5495 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5496 = !{!5497, !5498}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5494, file: !5495, line: 80, baseType: !395, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5494, file: !5495, line: 81, baseType: !5499, size: 64, offset: 64)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5501, line: 5, baseType: !5502)
!5501 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5503)
!5503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5504, size: 192, elements: !1625)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5505)
!5505 = !{!5506, !5507, !5508, !5509}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5504, file: !3, baseType: !7, size: 32)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5504, file: !3, baseType: !7, size: 32, offset: 32)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5504, file: !3, baseType: !353, size: 64, offset: 64)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5504, file: !3, baseType: !353, size: 64, offset: 128)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5486, file: !5487, line: 79, baseType: !5511, size: 64, offset: 64)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{null, !5485, !395}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5486, file: !5487, line: 80, baseType: !353, size: 64, offset: 128)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5486, file: !5487, line: 81, baseType: !395, size: 64, offset: 192)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5224)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !5467, file: !201, line: 121, baseType: !5519, size: 64, offset: 256)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{!5272, !5223, !109}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5467, file: !201, line: 130, baseType: !5523, size: 64, offset: 320)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!109, !5223}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !5467, file: !201, line: 139, baseType: !5470, size: 64, offset: 384)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !5467, file: !201, line: 153, baseType: !5528, size: 64, offset: 448)
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5529, size: 64)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!5296, !5223}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !5467, file: !201, line: 163, baseType: !5532, size: 64, offset: 512)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DISubroutineType(types: !5534)
!5534 = !{!109, !5223, !5361}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !5467, file: !201, line: 173, baseType: !5536, size: 64, offset: 576)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{null, !5223, !5361}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5467, file: !201, line: 186, baseType: !5540, size: 64, offset: 640)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!109, !5223, !2731}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !5467, file: !201, line: 196, baseType: !5523, size: 64, offset: 704)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5467, file: !201, line: 209, baseType: !5545, size: 64, offset: 768)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!200, !5223}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5467, file: !201, line: 218, baseType: !2774, size: 64, offset: 832)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !5224, file: !201, line: 416, baseType: !399, size: 128, offset: 2624)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5224, file: !201, line: 423, baseType: !5551, size: 64, offset: 2752)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !201, line: 230, size: 256, elements: !5553)
!5553 = !{!5554, !5556, !5557}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5552, file: !201, line: 238, baseType: !5555, size: 64)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5552, file: !201, line: 246, baseType: !514, size: 64, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5552, file: !201, line: 253, baseType: !399, size: 128, offset: 128)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5560)
!5560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !236, line: 703, size: 832, elements: !5561)
!5561 = !{!5562, !5563, !5564, !5565, !5566, !5567, !5569, !5570, !5571}
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5560, file: !236, line: 705, baseType: !627, size: 32)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5560, file: !236, line: 707, baseType: !627, size: 32, offset: 32)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5560, file: !236, line: 709, baseType: !627, size: 32, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5560, file: !236, line: 714, baseType: !627, size: 32, offset: 96)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5560, file: !236, line: 719, baseType: !627, size: 32, offset: 128)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5560, file: !236, line: 725, baseType: !5568, size: 128, offset: 160)
!5568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 128, elements: !1047)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5560, file: !236, line: 727, baseType: !5568, size: 128, offset: 288)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5560, file: !236, line: 729, baseType: !5568, size: 128, offset: 416)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5560, file: !236, line: 735, baseType: !5572, size: 256, offset: 576)
!5572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 256, elements: !1047)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5073, file: !5008, line: 98, baseType: !5574, size: 64, offset: 64)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!5124, !5558}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5073, file: !5008, line: 114, baseType: !5578, size: 64, offset: 128)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{null, !369}
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5073, file: !5008, line: 124, baseType: !5582, size: 64, offset: 192)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!141, !369, !5585}
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4939)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5073, file: !5008, line: 201, baseType: !5588, size: 64, offset: 256)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{!109, !369, !5591}
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5593, line: 29, flags: DIFlagFwdDecl)
!5593 = !DIFile(filename: "./include/drm/drm_atomic_state_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b1a1b99ca992a9758719bf402594b474")
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5073, file: !5008, line: 283, baseType: !5595, size: 64, offset: 320)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{!109, !369, !5591, !897}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5073, file: !5008, line: 302, baseType: !5599, size: 64, offset: 384)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!5591, !369}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5073, file: !5008, line: 323, baseType: !5603, size: 64, offset: 448)
!5603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5604, size: 64)
!5604 = !DISubroutineType(types: !5605)
!5605 = !{null, !5591}
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5073, file: !5008, line: 338, baseType: !5603, size: 64, offset: 512)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5007, file: !5008, line: 546, baseType: !897, size: 8, offset: 3520)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5007, file: !5008, line: 547, baseType: !897, size: 8, offset: 3528)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5007, file: !5008, line: 548, baseType: !897, size: 8, offset: 3536)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5007, file: !5008, line: 549, baseType: !1134, size: 704, offset: 3584)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5007, file: !5008, line: 557, baseType: !817, size: 256, offset: 4288)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5007, file: !5008, line: 565, baseType: !399, size: 128, offset: 4544)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5007, file: !5008, line: 573, baseType: !5098, size: 64, offset: 4672)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5007, file: !5008, line: 578, baseType: !5098, size: 64, offset: 4736)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5007, file: !5008, line: 583, baseType: !5098, size: 64, offset: 4800)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5007, file: !5008, line: 589, baseType: !5098, size: 64, offset: 4864)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5007, file: !5008, line: 594, baseType: !5098, size: 64, offset: 4928)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5007, file: !5008, line: 599, baseType: !5098, size: 64, offset: 4992)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5007, file: !5008, line: 604, baseType: !5098, size: 64, offset: 5056)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5007, file: !5008, line: 609, baseType: !5098, size: 64, offset: 5120)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5007, file: !5008, line: 614, baseType: !5098, size: 64, offset: 5184)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5007, file: !5008, line: 619, baseType: !5098, size: 64, offset: 5248)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5007, file: !5008, line: 624, baseType: !5098, size: 64, offset: 5312)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5007, file: !5008, line: 629, baseType: !5098, size: 64, offset: 5376)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5007, file: !5008, line: 634, baseType: !5098, size: 64, offset: 5440)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5007, file: !5008, line: 639, baseType: !5098, size: 64, offset: 5504)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5007, file: !5008, line: 644, baseType: !5098, size: 64, offset: 5568)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5007, file: !5008, line: 649, baseType: !5098, size: 64, offset: 5632)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5007, file: !5008, line: 655, baseType: !5098, size: 64, offset: 5696)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5007, file: !5008, line: 660, baseType: !5098, size: 64, offset: 5760)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5007, file: !5008, line: 669, baseType: !5098, size: 64, offset: 5824)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5007, file: !5008, line: 675, baseType: !5098, size: 64, offset: 5888)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5007, file: !5008, line: 681, baseType: !5098, size: 64, offset: 5952)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5007, file: !5008, line: 686, baseType: !5098, size: 64, offset: 6016)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5007, file: !5008, line: 692, baseType: !5098, size: 64, offset: 6080)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5007, file: !5008, line: 697, baseType: !5098, size: 64, offset: 6144)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5007, file: !5008, line: 703, baseType: !5098, size: 64, offset: 6208)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5007, file: !5008, line: 709, baseType: !5098, size: 64, offset: 6272)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5007, file: !5008, line: 714, baseType: !5098, size: 64, offset: 6336)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5007, file: !5008, line: 722, baseType: !5098, size: 64, offset: 6400)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5007, file: !5008, line: 728, baseType: !5098, size: 64, offset: 6464)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5007, file: !5008, line: 734, baseType: !5098, size: 64, offset: 6528)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5007, file: !5008, line: 739, baseType: !5098, size: 64, offset: 6592)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5007, file: !5008, line: 744, baseType: !5098, size: 64, offset: 6656)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5007, file: !5008, line: 749, baseType: !5098, size: 64, offset: 6720)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5007, file: !5008, line: 754, baseType: !5098, size: 64, offset: 6784)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5007, file: !5008, line: 759, baseType: !5098, size: 64, offset: 6848)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5007, file: !5008, line: 764, baseType: !5098, size: 64, offset: 6912)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5007, file: !5008, line: 769, baseType: !5098, size: 64, offset: 6976)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5007, file: !5008, line: 774, baseType: !5098, size: 64, offset: 7040)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5007, file: !5008, line: 778, baseType: !5098, size: 64, offset: 7104)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5007, file: !5008, line: 784, baseType: !5098, size: 64, offset: 7168)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5007, file: !5008, line: 789, baseType: !5098, size: 64, offset: 7232)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5007, file: !5008, line: 794, baseType: !5098, size: 64, offset: 7296)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5007, file: !5008, line: 799, baseType: !5098, size: 64, offset: 7360)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5007, file: !5008, line: 804, baseType: !5098, size: 64, offset: 7424)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5007, file: !5008, line: 810, baseType: !5098, size: 64, offset: 7488)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5007, file: !5008, line: 816, baseType: !5098, size: 64, offset: 7552)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5007, file: !5008, line: 821, baseType: !5098, size: 64, offset: 7616)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5007, file: !5008, line: 827, baseType: !5098, size: 64, offset: 7680)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5007, file: !5008, line: 832, baseType: !5098, size: 64, offset: 7744)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5007, file: !5008, line: 839, baseType: !5098, size: 64, offset: 7808)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5007, file: !5008, line: 846, baseType: !5098, size: 64, offset: 7872)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5007, file: !5008, line: 853, baseType: !5098, size: 64, offset: 7936)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5007, file: !5008, line: 861, baseType: !5098, size: 64, offset: 8000)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5007, file: !5008, line: 869, baseType: !5098, size: 64, offset: 8064)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5007, file: !5008, line: 876, baseType: !5098, size: 64, offset: 8128)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5007, file: !5008, line: 882, baseType: !5098, size: 64, offset: 8192)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5007, file: !5008, line: 888, baseType: !5098, size: 64, offset: 8256)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5007, file: !5008, line: 891, baseType: !2044, size: 32, offset: 8320)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5007, file: !5008, line: 891, baseType: !2044, size: 32, offset: 8352)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5007, file: !5008, line: 899, baseType: !897, size: 8, offset: 8384)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5007, file: !5008, line: 913, baseType: !897, size: 8, offset: 8392)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5007, file: !5008, line: 919, baseType: !897, size: 8, offset: 8400)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5007, file: !5008, line: 929, baseType: !897, size: 8, offset: 8408)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5007, file: !5008, line: 937, baseType: !897, size: 8, offset: 8416)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5007, file: !5008, line: 943, baseType: !5098, size: 64, offset: 8448)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5007, file: !5008, line: 946, baseType: !2044, size: 32, offset: 8512)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5007, file: !5008, line: 946, baseType: !2044, size: 32, offset: 8544)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5007, file: !5008, line: 955, baseType: !5591, size: 64, offset: 8576)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5007, file: !5008, line: 957, baseType: !5682, size: 64, offset: 8640)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5684)
!5684 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5008, line: 957, flags: DIFlagFwdDecl)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !370, file: !206, line: 285, baseType: !817, size: 256, offset: 11648)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !370, file: !206, line: 288, baseType: !1370, size: 192, offset: 11904)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !370, file: !206, line: 291, baseType: !5688, size: 64, offset: 12096)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !5232, line: 59, size: 1984, elements: !5690)
!5690 = !{!5691, !5692}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5689, file: !5232, line: 60, baseType: !1321, size: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !5689, file: !5232, line: 61, baseType: !5244, size: 1920, offset: 64)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !370, file: !206, line: 294, baseType: !5694, size: 64, offset: 12160)
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5695 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !206, line: 17, flags: DIFlagFwdDecl)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !370, file: !206, line: 304, baseType: !205, size: 32, offset: 12224)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !370, file: !206, line: 312, baseType: !5698, size: 64, offset: 12288)
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !206, line: 18, flags: DIFlagFwdDecl)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !370, file: !206, line: 319, baseType: !817, size: 256, offset: 12352)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !370, file: !206, line: 327, baseType: !399, size: 128, offset: 12608)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !366, file: !301, line: 614, baseType: !399, size: 128, offset: 64)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !301, line: 617, baseType: !478, size: 64, offset: 192)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !366, file: !301, line: 628, baseType: !5012, size: 448, offset: 256)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !366, file: !301, line: 631, baseType: !5086, size: 256, offset: 704)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !366, file: !301, line: 637, baseType: !2044, size: 32, offset: 960)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !366, file: !301, line: 639, baseType: !5708, size: 64, offset: 1024)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !366, file: !301, line: 641, baseType: !7, size: 32, offset: 1088)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !366, file: !301, line: 646, baseType: !897, size: 8, offset: 1120)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !366, file: !301, line: 649, baseType: !5108, size: 64, offset: 1152)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !366, file: !301, line: 651, baseType: !7, size: 32, offset: 1216)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !366, file: !301, line: 660, baseType: !5714, size: 64, offset: 1280)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !5716, line: 932, size: 8064, elements: !5717)
!5716 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!5717 = !{!5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !6283, !6284, !6286, !6290, !6291, !6292, !6293, !6294, !6295, !6296, !6318, !6319, !6320, !6321, !6322}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5715, file: !5716, line: 934, baseType: !369, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5715, file: !5716, line: 936, baseType: !4698, size: 64, offset: 64)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5715, file: !5716, line: 944, baseType: !399, size: 128, offset: 128)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5715, file: !5716, line: 947, baseType: !478, size: 64, offset: 256)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5715, file: !5716, line: 959, baseType: !5012, size: 448, offset: 320)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5715, file: !5716, line: 962, baseType: !5086, size: 256, offset: 768)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5715, file: !5716, line: 971, baseType: !365, size: 64, offset: 1024)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !5715, file: !5716, line: 980, baseType: !365, size: 64, offset: 1088)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5715, file: !5716, line: 986, baseType: !7, size: 32, offset: 1152)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !5715, file: !5716, line: 995, baseType: !109, size: 32, offset: 1184)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !5715, file: !5716, line: 1003, baseType: !109, size: 32, offset: 1216)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5715, file: !5716, line: 1013, baseType: !897, size: 8, offset: 1248)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5715, file: !5716, line: 1023, baseType: !4939, size: 960, offset: 1280)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5715, file: !5716, line: 1039, baseType: !4939, size: 960, offset: 2240)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5715, file: !5716, line: 1048, baseType: !109, size: 32, offset: 3200)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5715, file: !5716, line: 1056, baseType: !109, size: 32, offset: 3232)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5715, file: !5716, line: 1059, baseType: !5735, size: 64, offset: 3264)
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5737)
!5737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !5716, line: 402, size: 1536, elements: !5738)
!5738 = !{!5739, !5743, !5747, !5751, !5755, !5760, !5761, !6145, !6192, !6196, !6200, !6234, !6238, !6242, !6248, !6252, !6253, !6257, !6262, !6268, !6272, !6276, !6277, !6278}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5737, file: !5716, line: 413, baseType: !5740, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5741, size: 64)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{null, !5714}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5737, file: !5716, line: 436, baseType: !5744, size: 64, offset: 64)
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5745, size: 64)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!109, !5714, !5158, !2044, !2044, !2044}
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5737, file: !5716, line: 458, baseType: !5748, size: 64, offset: 128)
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5749 = !DISubroutineType(types: !5750)
!5750 = !{!109, !5714, !5158, !2044, !2044, !2044, !2021, !2021}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5737, file: !5716, line: 478, baseType: !5752, size: 64, offset: 192)
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{!109, !5714, !109, !109}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5737, file: !5716, line: 493, baseType: !5756, size: 64, offset: 256)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{!109, !5714, !5759, !5759, !5759, !2044, !5031}
!5759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5737, file: !5716, line: 504, baseType: !5740, size: 64, offset: 320)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5737, file: !5716, line: 520, baseType: !5762, size: 64, offset: 384)
!5762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5763, size: 64)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!109, !5765, !5031}
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !5716, line: 1193, size: 384, elements: !5767)
!5767 = !{!5768, !5769, !5770, !5772, !5773, !5774, !6144}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5766, file: !5716, line: 1194, baseType: !5079, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5766, file: !5716, line: 1195, baseType: !5714, size: 64, offset: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5766, file: !5716, line: 1196, baseType: !5771, size: 64, offset: 128)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5766, file: !5716, line: 1198, baseType: !2044, size: 32, offset: 192)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5766, file: !5716, line: 1199, baseType: !2044, size: 32, offset: 224)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5766, file: !5716, line: 1201, baseType: !5775, size: 64, offset: 256)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !213, line: 1494, size: 10880, elements: !5778)
!5778 = !{!5779, !5780, !5781, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5882, !6028, !6029, !6030, !6031, !6032, !6033, !6034, !6035, !6038, !6050, !6051, !6052, !6054, !6055, !6059, !6081, !6082, !6086, !6087, !6088, !6089, !6090, !6094, !6095, !6097, !6099, !6100, !6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6120, !6121, !6122, !6123, !6124, !6125, !6127, !6128, !6129}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5777, file: !213, line: 1496, baseType: !369, size: 64)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5777, file: !213, line: 1498, baseType: !387, size: 64, offset: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5777, file: !213, line: 1500, baseType: !5782, size: 64, offset: 128)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5784)
!5784 = !{!5785, !5786, !5790}
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5783, file: !94, line: 107, baseType: !516, size: 128)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5783, file: !94, line: 108, baseType: !5787, size: 64, offset: 128)
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!510, !387, !5782, !478}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5783, file: !94, line: 110, baseType: !5791, size: 64, offset: 192)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!510, !387, !5782, !395, !525}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5777, file: !213, line: 1508, baseType: !4702, size: 64, offset: 192)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5777, file: !213, line: 1518, baseType: !399, size: 128, offset: 256)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5777, file: !213, line: 1526, baseType: !399, size: 128, offset: 384)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5777, file: !213, line: 1529, baseType: !5086, size: 256, offset: 512)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5777, file: !213, line: 1532, baseType: !478, size: 64, offset: 768)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5777, file: !213, line: 1539, baseType: !817, size: 256, offset: 832)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5777, file: !213, line: 1547, baseType: !7, size: 32, offset: 1088)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5777, file: !213, line: 1553, baseType: !109, size: 32, offset: 1120)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5777, file: !213, line: 1555, baseType: !109, size: 32, offset: 1152)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5777, file: !213, line: 1561, baseType: !897, size: 8, offset: 1184)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5777, file: !213, line: 1567, baseType: !897, size: 8, offset: 1192)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5777, file: !213, line: 1573, baseType: !897, size: 8, offset: 1200)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5777, file: !213, line: 1581, baseType: !897, size: 8, offset: 1208)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5777, file: !213, line: 1589, baseType: !212, size: 32, offset: 1216)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5777, file: !213, line: 1596, baseType: !399, size: 128, offset: 1280)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5777, file: !213, line: 1603, baseType: !218, size: 32, offset: 1408)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5777, file: !213, line: 1611, baseType: !399, size: 128, offset: 1472)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5777, file: !213, line: 1622, baseType: !5812, size: 1536, offset: 1600)
!5812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !213, line: 651, size: 1536, elements: !5813)
!5813 = !{!5814, !5815, !5816, !5817, !5818, !5819, !5820, !5823, !5824, !5825, !5826, !5827, !5828, !5829, !5830, !5831, !5832, !5833, !5834, !5864, !5865, !5870, !5875, !5876, !5877, !5878, !5880, !5881}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5812, file: !213, line: 655, baseType: !7, size: 32)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5812, file: !213, line: 660, baseType: !7, size: 32, offset: 32)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5812, file: !213, line: 665, baseType: !7, size: 32, offset: 64)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5812, file: !213, line: 670, baseType: !223, size: 32, offset: 96)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5812, file: !213, line: 684, baseType: !109, size: 32, offset: 128)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5812, file: !213, line: 692, baseType: !626, size: 32, offset: 160)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5812, file: !213, line: 699, baseType: !5821, size: 64, offset: 192)
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5812, file: !213, line: 703, baseType: !7, size: 32, offset: 256)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5812, file: !213, line: 710, baseType: !626, size: 32, offset: 288)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5812, file: !213, line: 716, baseType: !109, size: 32, offset: 320)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5812, file: !213, line: 721, baseType: !897, size: 8, offset: 352)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5812, file: !213, line: 729, baseType: !897, size: 8, offset: 360)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5812, file: !213, line: 737, baseType: !897, size: 8, offset: 368)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5812, file: !213, line: 742, baseType: !897, size: 8, offset: 376)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5812, file: !213, line: 748, baseType: !897, size: 8, offset: 384)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5812, file: !213, line: 754, baseType: !436, size: 8, offset: 392)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5812, file: !213, line: 760, baseType: !436, size: 8, offset: 400)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5812, file: !213, line: 765, baseType: !436, size: 8, offset: 408)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5812, file: !213, line: 770, baseType: !5835, size: 768, offset: 448)
!5835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !213, line: 293, size: 768, elements: !5836)
!5836 = !{!5837, !5847, !5848, !5849, !5850, !5851, !5852}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5835, file: !213, line: 295, baseType: !5838, size: 32)
!5838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !213, line: 231, size: 32, elements: !5839)
!5839 = !{!5840, !5841, !5842}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5838, file: !213, line: 235, baseType: !897, size: 8)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5838, file: !213, line: 239, baseType: !897, size: 8, offset: 8)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5838, file: !213, line: 243, baseType: !5843, size: 16, offset: 16)
!5843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !213, line: 214, size: 16, elements: !5844)
!5844 = !{!5845, !5846}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5843, file: !213, line: 218, baseType: !897, size: 8)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5843, file: !213, line: 222, baseType: !897, size: 8, offset: 8)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5835, file: !213, line: 303, baseType: !1050, size: 256, offset: 64)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5835, file: !213, line: 311, baseType: !1050, size: 256, offset: 320)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5835, file: !213, line: 314, baseType: !436, size: 8, offset: 576)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5835, file: !213, line: 317, baseType: !436, size: 8, offset: 584)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5835, file: !213, line: 320, baseType: !436, size: 8, offset: 592)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5835, file: !213, line: 323, baseType: !5853, size: 128, offset: 608)
!5853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !213, line: 253, size: 128, elements: !5854)
!5854 = !{!5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5853, file: !213, line: 255, baseType: !897, size: 8)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5853, file: !213, line: 258, baseType: !897, size: 8, offset: 8)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5853, file: !213, line: 264, baseType: !897, size: 8, offset: 16)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5853, file: !213, line: 269, baseType: !436, size: 8, offset: 24)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5853, file: !213, line: 272, baseType: !436, size: 8, offset: 32)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5853, file: !213, line: 275, baseType: !109, size: 32, offset: 64)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5853, file: !213, line: 278, baseType: !436, size: 8, offset: 96)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5853, file: !213, line: 281, baseType: !436, size: 8, offset: 104)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5853, file: !213, line: 284, baseType: !436, size: 8, offset: 112)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5812, file: !213, line: 775, baseType: !897, size: 8, offset: 1216)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5812, file: !213, line: 780, baseType: !5866, size: 32, offset: 1232)
!5866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !213, line: 383, size: 32, elements: !5867)
!5867 = !{!5868, !5869}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5866, file: !213, line: 384, baseType: !446, size: 16)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5866, file: !213, line: 385, baseType: !446, size: 16, offset: 16)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5812, file: !213, line: 785, baseType: !5871, size: 64, offset: 1280)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !213, line: 399, size: 64, elements: !5872)
!5872 = !{!5873, !5874}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5871, file: !213, line: 400, baseType: !626, size: 32)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5871, file: !213, line: 401, baseType: !626, size: 32, offset: 32)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5812, file: !213, line: 792, baseType: !436, size: 8, offset: 1344)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5812, file: !213, line: 797, baseType: !436, size: 8, offset: 1352)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5812, file: !213, line: 803, baseType: !626, size: 32, offset: 1376)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5812, file: !213, line: 808, baseType: !5879, size: 64, offset: 1408)
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5812, file: !213, line: 813, baseType: !109, size: 32, offset: 1472)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5812, file: !213, line: 818, baseType: !626, size: 32, offset: 1504)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5777, file: !213, line: 1625, baseType: !5883, size: 64, offset: 3136)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5885)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !213, line: 1034, size: 1024, elements: !5886)
!5886 = !{!5887, !5891, !5895, !5899, !5900, !5904, !5908, !5912, !5913, !5914, !6005, !6009, !6013, !6019, !6023, !6024}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5885, file: !213, line: 1051, baseType: !5888, size: 64)
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5889, size: 64)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!109, !5776, !109}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5885, file: !213, line: 1063, baseType: !5892, size: 64, offset: 64)
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{null, !5776}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5885, file: !213, line: 1096, baseType: !5896, size: 64, offset: 128)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!218, !5776, !897}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5885, file: !213, line: 1113, baseType: !5892, size: 64, offset: 192)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5885, file: !213, line: 1138, baseType: !5901, size: 64, offset: 256)
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5902, size: 64)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!109, !5776, !2044, !2044}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5885, file: !213, line: 1154, baseType: !5905, size: 64, offset: 320)
!5905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!109, !5776, !5098, !5109}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5885, file: !213, line: 1173, baseType: !5909, size: 64, offset: 384)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{!109, !5776}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5885, file: !213, line: 1186, baseType: !5892, size: 64, offset: 448)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5885, file: !213, line: 1196, baseType: !5892, size: 64, offset: 512)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5885, file: !213, line: 1229, baseType: !5915, size: 64, offset: 576)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!5918, !5776}
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5919, size: 64)
!5919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !213, line: 884, size: 1280, elements: !5920)
!5920 = !{!5921, !5922, !5923, !5957, !5958, !5959, !5962, !5982, !5983, !5984, !5985, !5986, !5987, !5988, !5989, !5992, !5993, !5994, !5995}
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5919, file: !213, line: 886, baseType: !5776, size: 64)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5919, file: !213, line: 894, baseType: !5714, size: 64, offset: 64)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5919, file: !213, line: 912, baseType: !5924, size: 64, offset: 128)
!5924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5925, size: 64)
!5925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5926, line: 98, size: 960, elements: !5927)
!5926 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74b3d858470ff421c0475e349d8db40a")
!5927 = !{!5928, !5929, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5953}
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5925, file: !5926, line: 99, baseType: !369, size: 64)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5925, file: !5926, line: 100, baseType: !399, size: 128, offset: 64)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5925, file: !5926, line: 102, baseType: !5086, size: 256, offset: 192)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5925, file: !5926, line: 103, baseType: !478, size: 64, offset: 448)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5925, file: !5926, line: 130, baseType: !109, size: 32, offset: 512)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5925, file: !5926, line: 136, baseType: !7, size: 32, offset: 544)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5925, file: !5926, line: 149, baseType: !2044, size: 32, offset: 576)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5925, file: !5926, line: 170, baseType: !2044, size: 32, offset: 608)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5925, file: !5926, line: 177, baseType: !5714, size: 64, offset: 640)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5925, file: !5926, line: 183, baseType: !399, size: 128, offset: 704)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5925, file: !5926, line: 185, baseType: !5939, size: 64, offset: 832)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5941)
!5941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5926, line: 40, size: 256, elements: !5942)
!5942 = !{!5943, !5947, !5948, !5952}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5941, file: !5926, line: 48, baseType: !5944, size: 64)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{null, !5924}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5941, file: !5926, line: 57, baseType: !5944, size: 64, offset: 64)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5941, file: !5926, line: 72, baseType: !5949, size: 64, offset: 128)
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!109, !5924}
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5941, file: !5926, line: 83, baseType: !5944, size: 64, offset: 192)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5925, file: !5926, line: 186, baseType: !5954, size: 64, offset: 896)
!5954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5955, size: 64)
!5955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5956)
!5956 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !5926, line: 186, flags: DIFlagFwdDecl)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5919, file: !213, line: 918, baseType: !231, size: 32, offset: 192)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5919, file: !213, line: 921, baseType: !5591, size: 64, offset: 256)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5919, file: !213, line: 928, baseType: !5960, size: 64, offset: 320)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !301, line: 246, flags: DIFlagFwdDecl)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5919, file: !213, line: 931, baseType: !5963, size: 448, offset: 384)
!5963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !213, line: 867, size: 448, elements: !5964)
!5964 = !{!5965, !5966, !5967, !5974, !5975, !5976, !5977, !5978, !5979, !5980, !5981}
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5963, file: !213, line: 868, baseType: !235, size: 32)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5963, file: !213, line: 869, baseType: !235, size: 32, offset: 32)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5963, file: !213, line: 870, baseType: !5968, size: 128, offset: 64)
!5968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !213, line: 831, size: 128, elements: !5969)
!5969 = !{!5970, !5971, !5972, !5973}
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5968, file: !213, line: 835, baseType: !7, size: 32)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5968, file: !213, line: 840, baseType: !7, size: 32, offset: 32)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5968, file: !213, line: 845, baseType: !7, size: 32, offset: 64)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5968, file: !213, line: 850, baseType: !7, size: 32, offset: 96)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5963, file: !213, line: 871, baseType: !7, size: 32, offset: 192)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5963, file: !213, line: 872, baseType: !7, size: 32, offset: 224)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5963, file: !213, line: 873, baseType: !7, size: 32, offset: 256)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5963, file: !213, line: 874, baseType: !7, size: 32, offset: 288)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5963, file: !213, line: 875, baseType: !7, size: 32, offset: 320)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5963, file: !213, line: 876, baseType: !7, size: 32, offset: 352)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5963, file: !213, line: 877, baseType: !7, size: 32, offset: 384)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5963, file: !213, line: 878, baseType: !7, size: 32, offset: 416)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5919, file: !213, line: 945, baseType: !897, size: 8, offset: 832)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5919, file: !213, line: 954, baseType: !184, size: 32, offset: 864)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5919, file: !213, line: 962, baseType: !7, size: 32, offset: 896)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5919, file: !213, line: 968, baseType: !7, size: 32, offset: 928)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5919, file: !213, line: 974, baseType: !7, size: 32, offset: 960)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5919, file: !213, line: 980, baseType: !7, size: 32, offset: 992)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5919, file: !213, line: 987, baseType: !251, size: 32, offset: 1024)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5919, file: !213, line: 1000, baseType: !5990, size: 64, offset: 1088)
!5990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5991, size: 64)
!5991 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !213, line: 1000, flags: DIFlagFwdDecl)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5919, file: !213, line: 1006, baseType: !436, size: 8, offset: 1152)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5919, file: !213, line: 1012, baseType: !436, size: 8, offset: 1160)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5919, file: !213, line: 1018, baseType: !271, size: 32, offset: 1184)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5919, file: !213, line: 1024, baseType: !5996, size: 64, offset: 1216)
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !5100, line: 216, size: 704, elements: !5998)
!5998 = !{!5999, !6000, !6001, !6002, !6003, !6004}
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5997, file: !5100, line: 217, baseType: !5086, size: 256)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5997, file: !5100, line: 218, baseType: !369, size: 64, offset: 256)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5997, file: !5100, line: 219, baseType: !399, size: 128, offset: 320)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5997, file: !5100, line: 220, baseType: !399, size: 128, offset: 448)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5997, file: !5100, line: 221, baseType: !525, size: 64, offset: 576)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5997, file: !5100, line: 222, baseType: !353, size: 64, offset: 640)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5885, file: !213, line: 1239, baseType: !6006, size: 64, offset: 640)
!6006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6007, size: 64)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{null, !5776, !5918}
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5885, file: !213, line: 1284, baseType: !6010, size: 64, offset: 704)
!6010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6011, size: 64)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!109, !5776, !5918, !5098, !5109}
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5885, file: !213, line: 1307, baseType: !6014, size: 64, offset: 768)
!6014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6015, size: 64)
!6015 = !DISubroutineType(types: !6016)
!6016 = !{!109, !5776, !6017, !5098, !5108}
!6017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6018, size: 64)
!6018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5919)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5885, file: !213, line: 1321, baseType: !6020, size: 64, offset: 832)
!6020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6021, size: 64)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{null, !5485, !6017}
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5885, file: !213, line: 1330, baseType: !5892, size: 64, offset: 896)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5885, file: !213, line: 1337, baseType: !6025, size: 64, offset: 960)
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6026, size: 64)
!6026 = !DISubroutineType(types: !6027)
!6027 = !{null, !5776, !592}
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5777, file: !213, line: 1632, baseType: !5996, size: 64, offset: 3200)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5777, file: !213, line: 1635, baseType: !5093, size: 3136, offset: 3264)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5777, file: !213, line: 1641, baseType: !5098, size: 64, offset: 6400)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5777, file: !213, line: 1652, baseType: !5098, size: 64, offset: 6464)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5777, file: !213, line: 1658, baseType: !5098, size: 64, offset: 6528)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5777, file: !213, line: 1666, baseType: !5996, size: 64, offset: 6592)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5777, file: !213, line: 1672, baseType: !5098, size: 64, offset: 6656)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5777, file: !213, line: 1675, baseType: !6036, size: 64, offset: 6720)
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !213, line: 46, flags: DIFlagFwdDecl)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5777, file: !213, line: 1678, baseType: !6039, size: 192, offset: 6784)
!6039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !6040, line: 54, size: 192, elements: !6041)
!6040 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!6041 = !{!6042, !6048, !6049}
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !6039, file: !6040, line: 55, baseType: !6043, size: 64)
!6043 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !6040, line: 51, baseType: !6044)
!6044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6045, size: 64)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!109, !6047, !356, !353}
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6039, file: !6040, line: 56, baseType: !6047, size: 64, offset: 64)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !6039, file: !6040, line: 57, baseType: !109, size: 32, offset: 128)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5777, file: !213, line: 1684, baseType: !5098, size: 64, offset: 6976)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5777, file: !213, line: 1690, baseType: !5098, size: 64, offset: 7040)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5777, file: !213, line: 1717, baseType: !6053, size: 8, offset: 7104)
!6053 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !355, line: 108, baseType: !436)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5777, file: !213, line: 1725, baseType: !109, size: 32, offset: 7136)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5777, file: !213, line: 1728, baseType: !6056, size: 64, offset: 7168)
!6056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6057, size: 64)
!6057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6058)
!6058 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !213, line: 37, flags: DIFlagFwdDecl)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5777, file: !213, line: 1731, baseType: !6060, size: 768, offset: 7232)
!6060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !213, line: 1348, size: 768, elements: !6061)
!6061 = !{!6062, !6063, !6064, !6065, !6066, !6067, !6068, !6069, !6070, !6071, !6072, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080}
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6060, file: !213, line: 1354, baseType: !3786, size: 256)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !6060, file: !213, line: 1361, baseType: !897, size: 8, offset: 256)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !6060, file: !213, line: 1368, baseType: !897, size: 8, offset: 264)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !6060, file: !213, line: 1375, baseType: !897, size: 8, offset: 272)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !6060, file: !213, line: 1382, baseType: !7, size: 32, offset: 288)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !6060, file: !213, line: 1389, baseType: !109, size: 32, offset: 320)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !6060, file: !213, line: 1396, baseType: !109, size: 32, offset: 352)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !6060, file: !213, line: 1403, baseType: !109, size: 32, offset: 384)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !6060, file: !213, line: 1410, baseType: !109, size: 32, offset: 416)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !6060, file: !213, line: 1417, baseType: !897, size: 8, offset: 448)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !6060, file: !213, line: 1424, baseType: !897, size: 8, offset: 456)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !6060, file: !213, line: 1432, baseType: !897, size: 8, offset: 464)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !6060, file: !213, line: 1440, baseType: !897, size: 8, offset: 472)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !6060, file: !213, line: 1448, baseType: !277, size: 32, offset: 480)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !6060, file: !213, line: 1458, baseType: !7, size: 32, offset: 512)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !6060, file: !213, line: 1466, baseType: !283, size: 32, offset: 544)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !6060, file: !213, line: 1471, baseType: !5968, size: 128, offset: 576)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !6060, file: !213, line: 1476, baseType: !290, size: 32, offset: 704)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !6060, file: !213, line: 1483, baseType: !897, size: 8, offset: 736)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5777, file: !213, line: 1733, baseType: !277, size: 32, offset: 8000)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5777, file: !213, line: 1741, baseType: !6083, size: 64, offset: 8064)
!6083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6084, size: 64)
!6084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6085)
!6085 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !213, line: 1741, flags: DIFlagFwdDecl)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5777, file: !213, line: 1746, baseType: !817, size: 256, offset: 8128)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5777, file: !213, line: 1749, baseType: !630, size: 64, offset: 8384)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5777, file: !213, line: 1756, baseType: !626, size: 32, offset: 8448)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5777, file: !213, line: 1764, baseType: !5924, size: 64, offset: 8512)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5777, file: !213, line: 1768, baseType: !6091, size: 1024, offset: 8576)
!6091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6053, size: 1024, elements: !6092)
!6092 = !{!6093}
!6093 = !DISubrange(count: 128)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5777, file: !213, line: 1770, baseType: !817, size: 256, offset: 9600)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5777, file: !213, line: 1773, baseType: !6096, size: 16, offset: 9856)
!6096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 16, elements: !936)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5777, file: !213, line: 1778, baseType: !6098, size: 64, offset: 9888)
!6098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !936)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5777, file: !213, line: 1783, baseType: !6098, size: 64, offset: 9952)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5777, file: !213, line: 1794, baseType: !6101, size: 64, offset: 10048)
!6101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6102, size: 64)
!6102 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !213, line: 48, flags: DIFlagFwdDecl)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5777, file: !213, line: 1800, baseType: !109, size: 32, offset: 10112)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5777, file: !213, line: 1803, baseType: !7, size: 32, offset: 10144)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5777, file: !213, line: 1810, baseType: !897, size: 8, offset: 10176)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5777, file: !213, line: 1816, baseType: !436, size: 8, offset: 10184)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5777, file: !213, line: 1819, baseType: !592, size: 64, offset: 10240)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5777, file: !213, line: 1835, baseType: !5918, size: 64, offset: 10304)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5777, file: !213, line: 1852, baseType: !5996, size: 64, offset: 10368)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5777, file: !213, line: 1855, baseType: !897, size: 8, offset: 10432)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5777, file: !213, line: 1857, baseType: !6112, size: 64, offset: 10496)
!6112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6113, size: 64)
!6113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !213, line: 2058, size: 256, elements: !6114)
!6114 = !{!6115, !6116, !6117, !6118}
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6113, file: !213, line: 2059, baseType: !374, size: 32)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6113, file: !213, line: 2060, baseType: !369, size: 64, offset: 64)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6113, file: !213, line: 2061, baseType: !109, size: 32, offset: 128)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !6113, file: !213, line: 2062, baseType: !6119, size: 64, offset: 160)
!6119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 64, elements: !1540)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5777, file: !213, line: 1859, baseType: !897, size: 8, offset: 10560)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5777, file: !213, line: 1863, baseType: !6053, size: 8, offset: 10568)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5777, file: !213, line: 1863, baseType: !6053, size: 8, offset: 10576)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5777, file: !213, line: 1866, baseType: !6053, size: 8, offset: 10584)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5777, file: !213, line: 1866, baseType: !6053, size: 8, offset: 10592)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5777, file: !213, line: 1869, baseType: !6126, size: 16, offset: 10608)
!6126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !355, line: 109, baseType: !446)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5777, file: !213, line: 1869, baseType: !6126, size: 16, offset: 10624)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5777, file: !213, line: 1878, baseType: !1303, size: 64, offset: 10688)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5777, file: !213, line: 1881, baseType: !6130, size: 96, offset: 10752)
!6130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !185, line: 383, size: 96, elements: !6131)
!6131 = !{!6132, !6133}
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6130, file: !185, line: 387, baseType: !627, size: 32)
!6133 = !DIDerivedType(tag: DW_TAG_member, scope: !6130, file: !185, line: 391, baseType: !6134, size: 64, offset: 32)
!6134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6130, file: !185, line: 391, size: 64, elements: !6135)
!6135 = !{!6136}
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !6134, file: !185, line: 392, baseType: !6137, size: 64)
!6137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !185, line: 370, size: 64, elements: !6138)
!6138 = !{!6139, !6140, !6141, !6142, !6143}
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !6137, file: !185, line: 371, baseType: !438, size: 8)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6137, file: !185, line: 372, baseType: !438, size: 8, offset: 8)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !6137, file: !185, line: 373, baseType: !447, size: 16, offset: 16)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !6137, file: !185, line: 374, baseType: !447, size: 16, offset: 32)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !6137, file: !185, line: 375, baseType: !447, size: 16, offset: 48)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5766, file: !5716, line: 1202, baseType: !525, size: 64, offset: 320)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5737, file: !5716, line: 576, baseType: !6146, size: 64, offset: 448)
!6146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6147, size: 64)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!109, !5714, !5079, !6149, !2044, !5031}
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6150, size: 64)
!6150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4923, line: 42, size: 960, elements: !6151)
!6151 = !{!6152, !6170, !6171, !6172}
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6150, file: !4923, line: 46, baseType: !6153, size: 576)
!6153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_event", file: !4878, line: 97, size: 576, elements: !6154)
!6154 = !{!6155, !6156, !6160, !6166, !6167, !6168, !6169}
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !6153, file: !4878, line: 105, baseType: !765, size: 64)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "completion_release", scope: !6153, file: !4878, line: 114, baseType: !6157, size: 64, offset: 64)
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6158, size: 64)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{null, !765}
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6153, file: !4878, line: 124, baseType: !6161, size: 64, offset: 128)
!6161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6162, size: 64)
!6162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event", file: !5176, line: 1226, size: 64, elements: !6163)
!6163 = !{!6164, !6165}
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6162, file: !5176, line: 1227, baseType: !627, size: 32)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6162, file: !5176, line: 1228, baseType: !627, size: 32, offset: 32)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !6153, file: !4878, line: 132, baseType: !5405, size: 64, offset: 192)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "file_priv", scope: !6153, file: !4878, line: 140, baseType: !5158, size: 64, offset: 256)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !6153, file: !4878, line: 149, baseType: !399, size: 128, offset: 320)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "pending_link", scope: !6153, file: !4878, line: 158, baseType: !399, size: 128, offset: 448)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !6150, file: !4923, line: 50, baseType: !7, size: 32, offset: 576)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6150, file: !4923, line: 54, baseType: !630, size: 64, offset: 640)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6150, file: !4923, line: 78, baseType: !6173, size: 256, offset: 704)
!6173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6150, file: !4923, line: 58, size: 256, elements: !6174)
!6174 = !{!6175, !6176, !6185}
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6173, file: !4923, line: 62, baseType: !6162, size: 64)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "vbl", scope: !6173, file: !4923, line: 72, baseType: !6177, size: 256)
!6177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_vblank", file: !5176, line: 1258, size: 256, elements: !6178)
!6178 = !{!6179, !6180, !6181, !6182, !6183, !6184}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6177, file: !5176, line: 1259, baseType: !6162, size: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !6177, file: !5176, line: 1260, baseType: !631, size: 64, offset: 64)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6177, file: !5176, line: 1261, baseType: !627, size: 32, offset: 128)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !6177, file: !5176, line: 1262, baseType: !627, size: 32, offset: 160)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6177, file: !5176, line: 1263, baseType: !627, size: 32, offset: 192)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_id", scope: !6177, file: !5176, line: 1264, baseType: !627, size: 32, offset: 224)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !6173, file: !4923, line: 77, baseType: !6186, size: 256)
!6186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_crtc_sequence", file: !5176, line: 1270, size: 256, elements: !6187)
!6187 = !{!6188, !6189, !6190, !6191}
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6186, file: !5176, line: 1271, baseType: !6162, size: 64)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !6186, file: !5176, line: 1272, baseType: !631, size: 64, offset: 64)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !6186, file: !5176, line: 1273, baseType: !828, size: 64, offset: 128)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6186, file: !5176, line: 1274, baseType: !631, size: 64, offset: 192)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5737, file: !5716, line: 595, baseType: !6193, size: 64, offset: 512)
!6193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6194, size: 64)
!6194 = !DISubroutineType(types: !6195)
!6195 = !{!109, !5714, !5079, !6149, !2044, !2044, !5031}
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5737, file: !5716, line: 615, baseType: !6197, size: 64, offset: 576)
!6197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6198, size: 64)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!109, !5714, !5098, !5109}
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5737, file: !5716, line: 649, baseType: !6201, size: 64, offset: 640)
!6201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6202, size: 64)
!6202 = !DISubroutineType(types: !6203)
!6203 = !{!6204, !5714}
!6204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6205, size: 64)
!6205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !5716, line: 81, size: 2688, elements: !6206)
!6206 = !{!6207, !6208, !6209, !6210, !6211, !6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230, !6231, !6232, !6233}
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6205, file: !5716, line: 83, baseType: !5714, size: 64)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !6205, file: !5716, line: 90, baseType: !897, size: 8, offset: 64)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !6205, file: !5716, line: 105, baseType: !897, size: 8, offset: 72)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !6205, file: !5716, line: 111, baseType: !897, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !6205, file: !5716, line: 123, baseType: !897, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !6205, file: !5716, line: 130, baseType: !897, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !6205, file: !5716, line: 141, baseType: !897, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !6205, file: !5716, line: 147, baseType: !897, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !6205, file: !5716, line: 153, baseType: !897, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !6205, file: !5716, line: 189, baseType: !897, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !6205, file: !5716, line: 195, baseType: !626, size: 32, offset: 96)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !6205, file: !5716, line: 201, baseType: !626, size: 32, offset: 128)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !6205, file: !5716, line: 207, baseType: !626, size: 32, offset: 160)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !6205, file: !5716, line: 222, baseType: !4939, size: 960, offset: 192)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6205, file: !5716, line: 239, baseType: !4939, size: 960, offset: 1152)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !6205, file: !5716, line: 245, baseType: !5996, size: 64, offset: 2112)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !6205, file: !5716, line: 254, baseType: !5996, size: 64, offset: 2176)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !6205, file: !5716, line: 262, baseType: !5996, size: 64, offset: 2240)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !6205, file: !5716, line: 275, baseType: !5996, size: 64, offset: 2304)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !6205, file: !5716, line: 283, baseType: !626, size: 32, offset: 2368)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !6205, file: !5716, line: 291, baseType: !897, size: 8, offset: 2400)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !6205, file: !5716, line: 300, baseType: !897, size: 8, offset: 2408)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !6205, file: !5716, line: 311, baseType: !897, size: 8, offset: 2416)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !6205, file: !5716, line: 318, baseType: !300, size: 32, offset: 2432)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6205, file: !5716, line: 375, baseType: !6149, size: 64, offset: 2496)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !6205, file: !5716, line: 384, baseType: !5960, size: 64, offset: 2560)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6205, file: !5716, line: 387, baseType: !5591, size: 64, offset: 2624)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5737, file: !5716, line: 659, baseType: !6235, size: 64, offset: 704)
!6235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6236, size: 64)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{null, !5714, !6204}
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5737, file: !5716, line: 704, baseType: !6239, size: 64, offset: 768)
!6239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6240, size: 64)
!6240 = !DISubroutineType(types: !6241)
!6241 = !{!109, !5714, !6204, !5098, !5109}
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5737, file: !5716, line: 726, baseType: !6243, size: 64, offset: 832)
!6243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6244, size: 64)
!6244 = !DISubroutineType(types: !6245)
!6245 = !{!109, !5714, !6246, !5098, !5108}
!6246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6247, size: 64)
!6247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6205)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5737, file: !5716, line: 744, baseType: !6249, size: 64, offset: 896)
!6249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6250, size: 64)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{!109, !5714}
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5737, file: !5716, line: 755, baseType: !5740, size: 64, offset: 960)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5737, file: !5716, line: 784, baseType: !6254, size: 64, offset: 1024)
!6254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6255, size: 64)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{!109, !5714, !395}
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5737, file: !5716, line: 800, baseType: !6258, size: 64, offset: 1088)
!6258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6259, size: 64)
!6259 = !DISubroutineType(types: !6260)
!6260 = !{!109, !5714, !395, !6261}
!6261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5737, file: !5716, line: 822, baseType: !6263, size: 64, offset: 1152)
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!6266, !5714, !6261}
!6266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6267, size: 64)
!6267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5737, file: !5716, line: 834, baseType: !6269, size: 64, offset: 1216)
!6269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6270, size: 64)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{null, !5485, !6246}
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5737, file: !5716, line: 861, baseType: !6273, size: 64, offset: 1280)
!6273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6274, size: 64)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{!626, !5714}
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5737, file: !5716, line: 874, baseType: !6249, size: 64, offset: 1344)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5737, file: !5716, line: 882, baseType: !5740, size: 64, offset: 1408)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5737, file: !5716, line: 920, baseType: !6279, size: 64, offset: 1472)
!6279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6280, size: 64)
!6280 = !DISubroutineType(types: !6281)
!6281 = !{!897, !5714, !946, !6282, !897}
!6282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5715, file: !5716, line: 1068, baseType: !2044, size: 32, offset: 3328)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !5715, file: !5716, line: 1077, baseType: !6285, size: 64, offset: 3392)
!6285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6126, size: 64)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5715, file: !5716, line: 1080, baseType: !6287, size: 64, offset: 3456)
!6287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6288, size: 64)
!6288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6289)
!6289 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !5716, line: 63, flags: DIFlagFwdDecl)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5715, file: !5716, line: 1083, baseType: !5093, size: 3136, offset: 3520)
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5715, file: !5716, line: 1089, baseType: !5098, size: 64, offset: 6656)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5715, file: !5716, line: 1104, baseType: !6204, size: 64, offset: 6720)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !5715, file: !5716, line: 1121, baseType: !399, size: 128, offset: 6784)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !5715, file: !5716, line: 1128, baseType: !412, size: 32, offset: 6912)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5715, file: !5716, line: 1135, baseType: !592, size: 64, offset: 6976)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !5715, file: !5716, line: 1142, baseType: !6297, size: 576, offset: 7040)
!6297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !6298, line: 53, size: 576, elements: !6299)
!6298 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!6299 = !{!6300, !6301, !6302, !6303, !6304, !6314, !6315, !6316, !6317}
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6297, file: !6298, line: 54, baseType: !412, size: 32)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !6297, file: !6298, line: 55, baseType: !395, size: 64, offset: 64)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !6297, file: !6298, line: 56, baseType: !897, size: 8, offset: 128)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !6297, file: !6298, line: 56, baseType: !897, size: 8, offset: 136)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6297, file: !6298, line: 57, baseType: !6305, size: 64, offset: 192)
!6305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6306, size: 64)
!6306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !6298, line: 33, size: 384, elements: !6307)
!6307 = !{!6308, !6309, !6310}
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !6306, file: !6298, line: 34, baseType: !897, size: 8)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !6306, file: !6298, line: 35, baseType: !2044, size: 32, offset: 32)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !6306, file: !6298, line: 36, baseType: !6311, size: 320, offset: 64)
!6311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2044, size: 320, elements: !6312)
!6312 = !{!6313}
!6313 = !DISubrange(count: 10)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6297, file: !6298, line: 58, baseType: !109, size: 32, offset: 256)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !6297, file: !6298, line: 58, baseType: !109, size: 32, offset: 288)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !6297, file: !6298, line: 59, baseType: !525, size: 64, offset: 320)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !6297, file: !6298, line: 60, baseType: !1352, size: 192, offset: 384)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !5715, file: !5716, line: 1149, baseType: !7, size: 32, offset: 7616)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !5715, file: !5716, line: 1156, baseType: !412, size: 32, offset: 7648)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !5715, file: !5716, line: 1163, baseType: !356, size: 64, offset: 7680)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !5715, file: !5716, line: 1170, baseType: !3786, size: 256, offset: 7744)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !5715, file: !5716, line: 1177, baseType: !6323, size: 64, offset: 8000)
!6323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6324, size: 64)
!6324 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !5716, line: 44, flags: DIFlagFwdDecl)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !366, file: !301, line: 669, baseType: !5079, size: 64, offset: 1344)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !366, file: !301, line: 677, baseType: !5079, size: 64, offset: 1408)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !366, file: !301, line: 680, baseType: !6328, size: 64, offset: 1472)
!6328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6329, size: 64)
!6329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6330)
!6330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !301, line: 279, size: 832, elements: !6331)
!6331 = !{!6332, !6336, !6340, !6344, !6345, !6349, !6354, !6358, !6362, !6368, !6372, !6373, !6377}
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !6330, file: !301, line: 306, baseType: !6333, size: 64)
!6333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6334, size: 64)
!6334 = !DISubroutineType(types: !6335)
!6335 = !{!109, !365, !5714, !5079, !109, !109, !7, !7, !2044, !2044, !2044, !2044, !5031}
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !6330, file: !301, line: 329, baseType: !6337, size: 64, offset: 64)
!6337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6338, size: 64)
!6338 = !DISubroutineType(types: !6339)
!6339 = !{!109, !365, !5031}
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !6330, file: !301, line: 339, baseType: !6341, size: 64, offset: 128)
!6341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6342, size: 64)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{null, !365}
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6330, file: !301, line: 351, baseType: !6341, size: 64, offset: 192)
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !6330, file: !301, line: 367, baseType: !6346, size: 64, offset: 256)
!6346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6347, size: 64)
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!109, !365, !5098, !5109}
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !6330, file: !301, line: 401, baseType: !6350, size: 64, offset: 320)
!6350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6351, size: 64)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{!6353, !365}
!6353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !6330, file: !301, line: 411, baseType: !6355, size: 64, offset: 384)
!6355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6356, size: 64)
!6356 = !DISubroutineType(types: !6357)
!6357 = !{null, !365, !6353}
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !6330, file: !301, line: 456, baseType: !6359, size: 64, offset: 448)
!6359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6360, size: 64)
!6360 = !DISubroutineType(types: !6361)
!6361 = !{!109, !365, !6353, !5098, !5109}
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !6330, file: !301, line: 479, baseType: !6363, size: 64, offset: 512)
!6363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6364, size: 64)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!109, !365, !6366, !5098, !5108}
!6366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6367, size: 64)
!6367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !6330, file: !301, line: 496, baseType: !6369, size: 64, offset: 576)
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6370, size: 64)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!109, !365}
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !6330, file: !301, line: 507, baseType: !6341, size: 64, offset: 640)
!6373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !6330, file: !301, line: 518, baseType: !6374, size: 64, offset: 704)
!6374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6375, size: 64)
!6375 = !DISubroutineType(types: !6376)
!6376 = !{null, !5485, !6366}
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !6330, file: !301, line: 537, baseType: !6378, size: 64, offset: 768)
!6378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6379, size: 64)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!897, !365, !2044, !5109}
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !366, file: !301, line: 683, baseType: !5093, size: 3136, offset: 1536)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !301, line: 686, baseType: !317, size: 32, offset: 4672)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !366, file: !301, line: 692, baseType: !7, size: 32, offset: 4704)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !366, file: !301, line: 695, baseType: !6385, size: 64, offset: 4736)
!6385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6386, size: 64)
!6386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6387)
!6387 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !301, line: 695, flags: DIFlagFwdDecl)
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !301, line: 710, baseType: !6353, size: 64, offset: 4800)
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !366, file: !301, line: 717, baseType: !5098, size: 64, offset: 4864)
!6390 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !366, file: !301, line: 723, baseType: !5098, size: 64, offset: 4928)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !366, file: !301, line: 729, baseType: !5098, size: 64, offset: 4992)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !366, file: !301, line: 737, baseType: !5098, size: 64, offset: 5056)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !366, file: !301, line: 746, baseType: !5098, size: 64, offset: 5120)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !366, file: !301, line: 754, baseType: !5098, size: 64, offset: 5184)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !366, file: !301, line: 760, baseType: !5098, size: 64, offset: 5248)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !362, file: !301, line: 62, baseType: !5714, size: 64, offset: 64)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !362, file: !301, line: 70, baseType: !5079, size: 64, offset: 128)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !362, file: !301, line: 83, baseType: !5405, size: 64, offset: 192)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !362, file: !301, line: 92, baseType: !2021, size: 32, offset: 256)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !362, file: !301, line: 99, baseType: !2021, size: 32, offset: 288)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !362, file: !301, line: 103, baseType: !2044, size: 32, offset: 320)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !362, file: !301, line: 103, baseType: !2044, size: 32, offset: 352)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !362, file: !301, line: 109, baseType: !2044, size: 32, offset: 384)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !362, file: !301, line: 114, baseType: !2044, size: 32, offset: 416)
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !362, file: !301, line: 117, baseType: !2044, size: 32, offset: 448)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !362, file: !301, line: 117, baseType: !2044, size: 32, offset: 480)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !362, file: !301, line: 125, baseType: !446, size: 16, offset: 512)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !362, file: !301, line: 133, baseType: !6126, size: 16, offset: 528)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !362, file: !301, line: 140, baseType: !7, size: 32, offset: 544)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !362, file: !301, line: 155, baseType: !7, size: 32, offset: 576)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !362, file: !301, line: 164, baseType: !7, size: 32, offset: 608)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !362, file: !301, line: 171, baseType: !305, size: 32, offset: 640)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !362, file: !301, line: 178, baseType: !312, size: 32, offset: 672)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !362, file: !301, line: 191, baseType: !5996, size: 64, offset: 704)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !362, file: !301, line: 201, baseType: !897, size: 8, offset: 768)
!6416 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !362, file: !301, line: 223, baseType: !6417, size: 128, offset: 800)
!6417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !6418, line: 46, size: 128, elements: !6419)
!6418 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!6419 = !{!6420, !6421, !6422, !6423}
!6420 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !6417, file: !6418, line: 47, baseType: !109, size: 32)
!6421 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !6417, file: !6418, line: 47, baseType: !109, size: 32, offset: 32)
!6422 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !6417, file: !6418, line: 47, baseType: !109, size: 32, offset: 64)
!6423 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !6417, file: !6418, line: 47, baseType: !109, size: 32, offset: 96)
!6424 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !362, file: !301, line: 223, baseType: !6417, size: 128, offset: 928)
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !362, file: !301, line: 231, baseType: !897, size: 8, offset: 1056)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !362, file: !301, line: 238, baseType: !300, size: 32, offset: 1088)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !362, file: !301, line: 246, baseType: !5960, size: 64, offset: 1152)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !301, line: 249, baseType: !5591, size: 64, offset: 1216)
!6429 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !358, file: !359, line: 60, baseType: !6430, size: 512, offset: 1280)
!6430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5362, size: 512, elements: !1047)
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !358, file: !359, line: 68, baseType: !6430, size: 512, offset: 1792)
!6432 = !{!0, !6433, !6435, !6437, !6439, !6441, !6443, !6445, !6447, !6449, !6451, !6453, !6455, !6457, !6459}
!6433 = !DIGlobalVariableExpression(var: !6434, expr: !DIExpression())
!6434 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_gem_duplicate_shadow_plane_state317", scope: !2, file: !3, line: 223, type: !353, isLocal: true, isDefinition: true)
!6435 = !DIGlobalVariableExpression(var: !6436, expr: !DIExpression())
!6436 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_duplicate_shadow_plane_state318", scope: !2, file: !3, line: 258, type: !353, isLocal: true, isDefinition: true)
!6437 = !DIGlobalVariableExpression(var: !6438, expr: !DIExpression())
!6438 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_gem_destroy_shadow_plane_state319", scope: !2, file: !3, line: 271, type: !353, isLocal: true, isDefinition: true)
!6439 = !DIGlobalVariableExpression(var: !6440, expr: !DIExpression())
!6440 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_destroy_shadow_plane_state320", scope: !2, file: !3, line: 291, type: !353, isLocal: true, isDefinition: true)
!6441 = !DIGlobalVariableExpression(var: !6442, expr: !DIExpression())
!6442 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_gem_reset_shadow_plane321", scope: !2, file: !3, line: 306, type: !353, isLocal: true, isDefinition: true)
!6443 = !DIGlobalVariableExpression(var: !6444, expr: !DIExpression())
!6444 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_reset_shadow_plane322", scope: !2, file: !3, line: 331, type: !353, isLocal: true, isDefinition: true)
!6445 = !DIGlobalVariableExpression(var: !6446, expr: !DIExpression())
!6446 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_begin_shadow_fb_access323", scope: !2, file: !3, line: 358, type: !353, isLocal: true, isDefinition: true)
!6447 = !DIGlobalVariableExpression(var: !6448, expr: !DIExpression())
!6448 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_end_shadow_fb_access324", scope: !2, file: !3, line: 380, type: !353, isLocal: true, isDefinition: true)
!6449 = !DIGlobalVariableExpression(var: !6450, expr: !DIExpression())
!6450 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_simple_kms_begin_shadow_fb_access325", scope: !2, file: !3, line: 400, type: !353, isLocal: true, isDefinition: true)
!6451 = !DIGlobalVariableExpression(var: !6452, expr: !DIExpression())
!6452 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_simple_kms_end_shadow_fb_access326", scope: !2, file: !3, line: 418, type: !353, isLocal: true, isDefinition: true)
!6453 = !DIGlobalVariableExpression(var: !6454, expr: !DIExpression())
!6454 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_simple_kms_reset_shadow_plane327", scope: !2, file: !3, line: 431, type: !353, isLocal: true, isDefinition: true)
!6455 = !DIGlobalVariableExpression(var: !6456, expr: !DIExpression())
!6456 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_simple_kms_duplicate_shadow_plane_state328", scope: !2, file: !3, line: 450, type: !353, isLocal: true, isDefinition: true)
!6457 = !DIGlobalVariableExpression(var: !6458, expr: !DIExpression())
!6458 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_simple_kms_destroy_shadow_plane_state329", scope: !2, file: !3, line: 466, type: !353, isLocal: true, isDefinition: true)
!6459 = !DIGlobalVariableExpression(var: !6460, expr: !DIExpression())
!6460 = distinct !DIGlobalVariable(scope: null, file: !343, line: 480, type: !6461, isLocal: true, isDefinition: true)
!6461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 168, elements: !6462)
!6462 = !{!6463}
!6463 = !DISubrange(count: 21)
!6464 = !{i32 7, !"Dwarf Version", i32 5}
!6465 = !{i32 2, !"Debug Info Version", i32 3}
!6466 = !{i32 1, !"wchar_size", i32 2}
!6467 = !{i32 8, !"cf-protection-branch", i32 1}
!6468 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6469 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6470 = !{i32 1, !"Code Model", i32 2}
!6471 = !{i32 1, !"override-stack-alignment", i32 8}
!6472 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6473 = distinct !DISubprogram(name: "drm_gem_plane_helper_prepare_fb", scope: !3, file: !3, line: 135, type: !6474, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6476)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{!109, !365, !6353}
!6476 = !{!6477, !6478, !6479, !6480, !6481, !6482, !6483, !6487, !6488, !6515}
!6477 = !DILocalVariable(name: "plane", arg: 1, scope: !6473, file: !3, line: 135, type: !365)
!6478 = !DILocalVariable(name: "state", arg: 2, scope: !6473, file: !3, line: 136, type: !6353)
!6479 = !DILocalVariable(name: "fence", scope: !6473, file: !3, line: 138, type: !5405)
!6480 = !DILocalVariable(name: "usage", scope: !6473, file: !3, line: 139, type: !322)
!6481 = !DILocalVariable(name: "i", scope: !6473, file: !3, line: 140, type: !525)
!6482 = !DILocalVariable(name: "ret", scope: !6473, file: !3, line: 141, type: !109)
!6483 = !DILocalVariable(name: "obj", scope: !6484, file: !3, line: 162, type: !5223)
!6484 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 161, column: 54)
!6485 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 161, column: 2)
!6486 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 161, column: 2)
!6487 = !DILocalVariable(name: "new", scope: !6484, file: !3, line: 163, type: !5405)
!6488 = !DILocalVariable(name: "chain", scope: !6489, file: !3, line: 175, type: !6491)
!6489 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 174, column: 21)
!6490 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 174, column: 7)
!6491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6492, size: 64)
!6492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_chain", file: !6493, line: 25, size: 1024, elements: !6494)
!6493 = !DIFile(filename: "./include/linux/dma-fence-chain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f67e6ff9d63142f4c4d80e4fb60a6c7")
!6494 = !{!6495, !6496, !6497, !6498, !6499, !6514}
!6495 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6492, file: !6493, line: 26, baseType: !5406, size: 512)
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6492, file: !6493, line: 27, baseType: !5405, size: 64, offset: 512)
!6497 = !DIDerivedType(tag: DW_TAG_member, name: "prev_seqno", scope: !6492, file: !6493, line: 28, baseType: !630, size: 64, offset: 576)
!6498 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !6492, file: !6493, line: 29, baseType: !5405, size: 64, offset: 640)
!6499 = !DIDerivedType(tag: DW_TAG_member, scope: !6492, file: !6493, line: 30, baseType: !6500, size: 256, offset: 704)
!6500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6492, file: !6493, line: 30, size: 256, elements: !6501)
!6501 = !{!6502, !6503}
!6502 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !6500, file: !6493, line: 38, baseType: !5396, size: 192)
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6500, file: !6493, line: 47, baseType: !6504, size: 256)
!6504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !6505, line: 17, size: 256, elements: !6506)
!6505 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!6506 = !{!6507, !6508, !6513}
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6504, file: !6505, line: 18, baseType: !1404, size: 128)
!6508 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6504, file: !6505, line: 19, baseType: !6509, size: 64, offset: 128)
!6509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6510, size: 64)
!6510 = !DISubroutineType(types: !6511)
!6511 = !{null, !6512}
!6512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6504, size: 64)
!6513 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !6504, file: !6505, line: 20, baseType: !3771, size: 64, offset: 192)
!6514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6492, file: !6493, line: 49, baseType: !412, size: 32, offset: 960)
!6515 = !DILabel(scope: !6473, name: "error", file: !3, line: 194)
!6516 = !DILocation(line: 135, column: 55, scope: !6473)
!6517 = !DILocation(line: 136, column: 33, scope: !6473)
!6518 = !DILocation(line: 138, column: 2, scope: !6473)
!6519 = !DILocation(line: 138, column: 20, scope: !6473)
!6520 = !DILocation(line: 138, column: 42, scope: !6473)
!6521 = !DILocation(line: 138, column: 49, scope: !6473)
!6522 = !DILocation(line: 138, column: 28, scope: !6473)
!6523 = !DILocation(line: 139, column: 2, scope: !6473)
!6524 = !DILocation(line: 139, column: 22, scope: !6473)
!6525 = !DILocation(line: 140, column: 2, scope: !6473)
!6526 = !DILocation(line: 140, column: 9, scope: !6473)
!6527 = !DILocation(line: 141, column: 2, scope: !6473)
!6528 = !DILocation(line: 141, column: 6, scope: !6473)
!6529 = !DILocation(line: 143, column: 7, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 143, column: 6)
!6531 = !DILocation(line: 143, column: 14, scope: !6530)
!6532 = !DILocation(line: 143, column: 6, scope: !6473)
!6533 = !DILocation(line: 144, column: 3, scope: !6530)
!6534 = !DILocation(line: 159, column: 10, scope: !6473)
!6535 = !DILocation(line: 159, column: 8, scope: !6473)
!6536 = !DILocation(line: 161, column: 9, scope: !6486)
!6537 = !DILocation(line: 161, column: 7, scope: !6486)
!6538 = !DILocation(line: 161, column: 14, scope: !6485)
!6539 = !DILocation(line: 161, column: 18, scope: !6485)
!6540 = !DILocation(line: 161, column: 25, scope: !6485)
!6541 = !DILocation(line: 161, column: 29, scope: !6485)
!6542 = !DILocation(line: 161, column: 37, scope: !6485)
!6543 = !DILocation(line: 161, column: 16, scope: !6485)
!6544 = !DILocation(line: 161, column: 2, scope: !6486)
!6545 = !DILocation(line: 162, column: 3, scope: !6484)
!6546 = !DILocation(line: 162, column: 26, scope: !6484)
!6547 = !DILocation(line: 162, column: 51, scope: !6484)
!6548 = !DILocation(line: 162, column: 58, scope: !6484)
!6549 = !DILocation(line: 162, column: 62, scope: !6484)
!6550 = !DILocation(line: 162, column: 32, scope: !6484)
!6551 = !DILocation(line: 163, column: 3, scope: !6484)
!6552 = !DILocation(line: 163, column: 21, scope: !6484)
!6553 = !DILocation(line: 165, column: 8, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 165, column: 7)
!6555 = !DILocation(line: 165, column: 7, scope: !6484)
!6556 = !DILocation(line: 166, column: 8, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 165, column: 13)
!6558 = !DILocation(line: 167, column: 4, scope: !6557)
!6559 = !DILocation(line: 170, column: 32, scope: !6484)
!6560 = !DILocation(line: 170, column: 37, scope: !6484)
!6561 = !DILocation(line: 170, column: 43, scope: !6484)
!6562 = !DILocation(line: 170, column: 9, scope: !6484)
!6563 = !DILocation(line: 170, column: 7, scope: !6484)
!6564 = !DILocation(line: 171, column: 7, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 171, column: 7)
!6566 = !DILocation(line: 171, column: 7, scope: !6484)
!6567 = !DILocation(line: 172, column: 4, scope: !6565)
!6568 = !DILocation(line: 174, column: 7, scope: !6490)
!6569 = !DILocation(line: 174, column: 11, scope: !6490)
!6570 = !DILocation(line: 174, column: 14, scope: !6490)
!6571 = !DILocation(line: 174, column: 7, scope: !6484)
!6572 = !DILocation(line: 175, column: 4, scope: !6489)
!6573 = !DILocation(line: 175, column: 28, scope: !6489)
!6574 = !DILocation(line: 175, column: 36, scope: !6489)
!6575 = !DILocation(line: 177, column: 9, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 177, column: 8)
!6577 = !DILocation(line: 177, column: 8, scope: !6489)
!6578 = !DILocation(line: 178, column: 9, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6576, file: !3, line: 177, column: 16)
!6580 = !DILocation(line: 179, column: 5, scope: !6579)
!6581 = !DILocation(line: 182, column: 25, scope: !6489)
!6582 = !DILocation(line: 182, column: 32, scope: !6489)
!6583 = !DILocation(line: 182, column: 39, scope: !6489)
!6584 = !DILocation(line: 182, column: 4, scope: !6489)
!6585 = !DILocation(line: 183, column: 13, scope: !6489)
!6586 = !DILocation(line: 183, column: 20, scope: !6489)
!6587 = !DILocation(line: 183, column: 10, scope: !6489)
!6588 = !DILocation(line: 185, column: 3, scope: !6490)
!6589 = !DILocation(line: 185, column: 3, scope: !6489)
!6590 = !DILocation(line: 185, column: 14, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 185, column: 14)
!6592 = !DILocation(line: 185, column: 14, scope: !6490)
!6593 = !DILocation(line: 186, column: 12, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6591, file: !3, line: 185, column: 19)
!6595 = !DILocation(line: 186, column: 10, scope: !6594)
!6596 = !DILocation(line: 187, column: 3, scope: !6594)
!6597 = !DILocation(line: 188, column: 2, scope: !6485)
!6598 = !DILocation(line: 188, column: 2, scope: !6484)
!6599 = !DILocation(line: 161, column: 49, scope: !6485)
!6600 = !DILocation(line: 161, column: 2, scope: !6485)
!6601 = distinct !{!6601, !6544, !6602, !6603, !6604}
!6602 = !DILocation(line: 188, column: 2, scope: !6486)
!6603 = !{!"llvm.loop.mustprogress"}
!6604 = !{!"llvm.loop.unroll.disable"}
!6605 = !DILocation(line: 190, column: 16, scope: !6473)
!6606 = !DILocation(line: 190, column: 23, scope: !6473)
!6607 = !DILocation(line: 190, column: 2, scope: !6473)
!6608 = !DILocation(line: 191, column: 17, scope: !6473)
!6609 = !DILocation(line: 191, column: 2, scope: !6473)
!6610 = !DILocation(line: 191, column: 9, scope: !6473)
!6611 = !DILocation(line: 191, column: 15, scope: !6473)
!6612 = !DILocation(line: 192, column: 2, scope: !6473)
!6613 = !DILocation(line: 194, column: 1, scope: !6473)
!6614 = !DILocation(line: 195, column: 16, scope: !6473)
!6615 = !DILocation(line: 195, column: 2, scope: !6473)
!6616 = !DILocation(line: 196, column: 9, scope: !6473)
!6617 = !DILocation(line: 196, column: 2, scope: !6473)
!6618 = !DILocation(line: 197, column: 1, scope: !6473)
!6619 = distinct !DISubprogram(name: "dma_fence_get", scope: !5397, file: !5397, line: 305, type: !6620, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6622)
!6620 = !DISubroutineType(types: !6621)
!6621 = !{!5405, !5405}
!6622 = !{!6623}
!6623 = !DILocalVariable(name: "fence", arg: 1, scope: !6619, file: !5397, line: 305, type: !5405)
!6624 = !DILocation(line: 305, column: 65, scope: !6619)
!6625 = !DILocation(line: 307, column: 6, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6619, file: !5397, line: 307, column: 6)
!6627 = !DILocation(line: 307, column: 6, scope: !6619)
!6628 = !DILocation(line: 308, column: 13, scope: !6626)
!6629 = !DILocation(line: 308, column: 20, scope: !6626)
!6630 = !DILocation(line: 308, column: 3, scope: !6626)
!6631 = !DILocation(line: 309, column: 9, scope: !6619)
!6632 = !DILocation(line: 309, column: 2, scope: !6619)
!6633 = !DISubprogram(name: "drm_gem_fb_get_obj", scope: !6634, file: !6634, line: 18, type: !6635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6634 = !DIFile(filename: "./include/drm/drm_gem_framebuffer_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28bfd94582ac25d3eed6935dc5ea8d8e")
!6635 = !DISubroutineType(types: !6636)
!6636 = !{!5223, !5079, !7}
!6637 = !DISubprogram(name: "dma_resv_get_singleton", scope: !323, file: !323, line: 477, type: !6638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6638 = !DISubroutineType(types: !6639)
!6639 = !{!109, !5384, !322, !6640}
!6640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!6641 = distinct !DISubprogram(name: "dma_fence_chain_alloc", scope: !6493, file: !6493, line: 89, type: !6642, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!6491}
!6644 = !DILocation(line: 91, column: 9, scope: !6641)
!6645 = !DILocation(line: 91, column: 2, scope: !6641)
!6646 = !DISubprogram(name: "dma_fence_chain_init", scope: !6493, file: !6493, line: 124, type: !6647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6647 = !DISubroutineType(types: !6648)
!6648 = !{null, !6491, !5405, !5405, !5109}
!6649 = distinct !DISubprogram(name: "dma_fence_put", scope: !5397, file: !5397, line: 293, type: !5431, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6650)
!6650 = !{!6651}
!6651 = !DILocalVariable(name: "fence", arg: 1, scope: !6649, file: !5397, line: 293, type: !5405)
!6652 = !DILocation(line: 293, column: 52, scope: !6649)
!6653 = !DILocation(line: 295, column: 6, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6649, file: !5397, line: 295, column: 6)
!6655 = !DILocation(line: 295, column: 6, scope: !6649)
!6656 = !DILocation(line: 296, column: 13, scope: !6654)
!6657 = !DILocation(line: 296, column: 20, scope: !6654)
!6658 = !DILocation(line: 296, column: 3, scope: !6654)
!6659 = !DILocation(line: 297, column: 1, scope: !6649)
!6660 = distinct !DISubprogram(name: "__drm_gem_duplicate_shadow_plane_state", scope: !3, file: !3, line: 218, type: !6661, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6663)
!6661 = !DISubroutineType(types: !6662)
!6662 = !{null, !365, !357}
!6663 = !{!6664, !6665}
!6664 = !DILocalVariable(name: "plane", arg: 1, scope: !6660, file: !3, line: 218, type: !365)
!6665 = !DILocalVariable(name: "new_shadow_plane_state", arg: 2, scope: !6660, file: !3, line: 219, type: !357)
!6666 = !DILocation(line: 218, column: 58, scope: !6660)
!6667 = !DILocation(line: 219, column: 43, scope: !6660)
!6668 = !DILocation(line: 221, column: 44, scope: !6660)
!6669 = !DILocation(line: 221, column: 52, scope: !6660)
!6670 = !DILocation(line: 221, column: 76, scope: !6660)
!6671 = !DILocation(line: 221, column: 2, scope: !6660)
!6672 = !DILocation(line: 222, column: 1, scope: !6660)
!6673 = !DISubprogram(name: "__drm_atomic_helper_plane_duplicate_state", scope: !5593, file: !5593, line: 61, type: !6356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6674 = distinct !DISubprogram(name: "drm_gem_duplicate_shadow_plane_state", scope: !3, file: !3, line: 243, type: !6351, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6675)
!6675 = !{!6676, !6677, !6678}
!6676 = !DILocalVariable(name: "plane", arg: 1, scope: !6674, file: !3, line: 243, type: !365)
!6677 = !DILocalVariable(name: "plane_state", scope: !6674, file: !3, line: 245, type: !6353)
!6678 = !DILocalVariable(name: "new_shadow_plane_state", scope: !6674, file: !3, line: 246, type: !357)
!6679 = !DILocation(line: 243, column: 56, scope: !6674)
!6680 = !DILocation(line: 245, column: 2, scope: !6674)
!6681 = !DILocation(line: 245, column: 26, scope: !6674)
!6682 = !DILocation(line: 245, column: 40, scope: !6674)
!6683 = !DILocation(line: 245, column: 47, scope: !6674)
!6684 = !DILocation(line: 246, column: 2, scope: !6674)
!6685 = !DILocation(line: 246, column: 33, scope: !6674)
!6686 = !DILocation(line: 248, column: 7, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 248, column: 6)
!6688 = !DILocation(line: 248, column: 6, scope: !6674)
!6689 = !DILocation(line: 249, column: 3, scope: !6687)
!6690 = !DILocation(line: 251, column: 27, scope: !6674)
!6691 = !DILocation(line: 251, column: 25, scope: !6674)
!6692 = !DILocation(line: 252, column: 7, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 252, column: 6)
!6694 = !DILocation(line: 252, column: 6, scope: !6674)
!6695 = !DILocation(line: 253, column: 3, scope: !6693)
!6696 = !DILocation(line: 254, column: 41, scope: !6674)
!6697 = !DILocation(line: 254, column: 48, scope: !6674)
!6698 = !DILocation(line: 254, column: 2, scope: !6674)
!6699 = !DILocation(line: 256, column: 10, scope: !6674)
!6700 = !DILocation(line: 256, column: 34, scope: !6674)
!6701 = !DILocation(line: 256, column: 2, scope: !6674)
!6702 = !DILocation(line: 257, column: 1, scope: !6674)
!6703 = distinct !DISubprogram(name: "kzalloc", scope: !343, file: !343, line: 719, type: !6704, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6706)
!6704 = !DISubroutineType(types: !6705)
!6705 = !{!353, !525, !354}
!6706 = !{!6707, !6708}
!6707 = !DILocalVariable(name: "size", arg: 1, scope: !6703, file: !343, line: 719, type: !525)
!6708 = !DILocalVariable(name: "flags", arg: 2, scope: !6703, file: !343, line: 719, type: !354)
!6709 = !DILocation(line: 719, column: 52, scope: !6703)
!6710 = !DILocation(line: 719, column: 64, scope: !6703)
!6711 = !DILocation(line: 721, column: 17, scope: !6703)
!6712 = !DILocation(line: 721, column: 23, scope: !6703)
!6713 = !DILocation(line: 721, column: 29, scope: !6703)
!6714 = !DILocation(line: 721, column: 9, scope: !6703)
!6715 = !DILocation(line: 721, column: 2, scope: !6703)
!6716 = distinct !DISubprogram(name: "__drm_gem_destroy_shadow_plane_state", scope: !3, file: !3, line: 267, type: !6717, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6719)
!6717 = !DISubroutineType(types: !6718)
!6718 = !{null, !357}
!6719 = !{!6720}
!6720 = !DILocalVariable(name: "shadow_plane_state", arg: 1, scope: !6716, file: !3, line: 267, type: !357)
!6721 = !DILocation(line: 267, column: 74, scope: !6716)
!6722 = !DILocation(line: 269, column: 43, scope: !6716)
!6723 = !DILocation(line: 269, column: 63, scope: !6716)
!6724 = !DILocation(line: 269, column: 2, scope: !6716)
!6725 = !DILocation(line: 270, column: 1, scope: !6716)
!6726 = !DISubprogram(name: "__drm_atomic_helper_plane_destroy_state", scope: !5593, file: !5593, line: 65, type: !6727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6727 = !DISubroutineType(types: !6728)
!6728 = !{null, !6353}
!6729 = distinct !DISubprogram(name: "drm_gem_destroy_shadow_plane_state", scope: !3, file: !3, line: 282, type: !6356, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6730)
!6730 = !{!6731, !6732, !6733}
!6731 = !DILocalVariable(name: "plane", arg: 1, scope: !6729, file: !3, line: 282, type: !365)
!6732 = !DILocalVariable(name: "plane_state", arg: 2, scope: !6729, file: !3, line: 283, type: !6353)
!6733 = !DILocalVariable(name: "shadow_plane_state", scope: !6729, file: !3, line: 285, type: !357)
!6734 = !DILocation(line: 282, column: 59, scope: !6729)
!6735 = !DILocation(line: 283, column: 30, scope: !6729)
!6736 = !DILocation(line: 285, column: 2, scope: !6729)
!6737 = !DILocation(line: 285, column: 33, scope: !6729)
!6738 = !DILocation(line: 286, column: 29, scope: !6729)
!6739 = !DILocation(line: 286, column: 3, scope: !6729)
!6740 = !DILocation(line: 288, column: 39, scope: !6729)
!6741 = !DILocation(line: 288, column: 2, scope: !6729)
!6742 = !DILocation(line: 289, column: 8, scope: !6729)
!6743 = !DILocation(line: 289, column: 2, scope: !6729)
!6744 = !DILocation(line: 290, column: 1, scope: !6729)
!6745 = distinct !DISubprogram(name: "to_drm_shadow_plane_state", scope: !359, file: !359, line: 76, type: !6746, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{!357, !6353}
!6748 = !{!6749, !6750}
!6749 = !DILocalVariable(name: "state", arg: 1, scope: !6745, file: !359, line: 76, type: !6353)
!6750 = !DILocalVariable(name: "__mptr", scope: !6751, file: !359, line: 78, type: !353)
!6751 = distinct !DILexicalBlock(scope: !6745, file: !359, line: 78, column: 9)
!6752 = !DILocation(line: 76, column: 51, scope: !6745)
!6753 = !DILocation(line: 78, column: 9, scope: !6751)
!6754 = !DILocation(line: 78, column: 9, scope: !6745)
!6755 = !DILocation(line: 78, column: 2, scope: !6745)
!6756 = !DISubprogram(name: "kfree", scope: !343, file: !343, line: 227, type: !6757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{null, !1805}
!6759 = distinct !DISubprogram(name: "__drm_gem_reset_shadow_plane", scope: !3, file: !3, line: 301, type: !6661, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6760 = !{!6761, !6762}
!6761 = !DILocalVariable(name: "plane", arg: 1, scope: !6759, file: !3, line: 301, type: !365)
!6762 = !DILocalVariable(name: "shadow_plane_state", arg: 2, scope: !6759, file: !3, line: 302, type: !357)
!6763 = !DILocation(line: 301, column: 53, scope: !6759)
!6764 = !DILocation(line: 302, column: 38, scope: !6759)
!6765 = !DILocation(line: 304, column: 34, scope: !6759)
!6766 = !DILocation(line: 304, column: 42, scope: !6759)
!6767 = !DILocation(line: 304, column: 62, scope: !6759)
!6768 = !DILocation(line: 304, column: 2, scope: !6759)
!6769 = !DILocation(line: 305, column: 1, scope: !6759)
!6770 = !DISubprogram(name: "__drm_atomic_helper_plane_reset", scope: !5593, file: !5593, line: 58, type: !6356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6771 = distinct !DISubprogram(name: "drm_gem_reset_shadow_plane", scope: !3, file: !3, line: 317, type: !6342, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6772)
!6772 = !{!6773, !6774}
!6773 = !DILocalVariable(name: "plane", arg: 1, scope: !6771, file: !3, line: 317, type: !365)
!6774 = !DILocalVariable(name: "shadow_plane_state", scope: !6771, file: !3, line: 319, type: !357)
!6775 = !DILocation(line: 317, column: 51, scope: !6771)
!6776 = !DILocation(line: 319, column: 2, scope: !6771)
!6777 = !DILocation(line: 319, column: 33, scope: !6771)
!6778 = !DILocation(line: 321, column: 6, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 321, column: 6)
!6780 = !DILocation(line: 321, column: 13, scope: !6779)
!6781 = !DILocation(line: 321, column: 6, scope: !6771)
!6782 = !DILocation(line: 322, column: 38, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6779, file: !3, line: 321, column: 20)
!6784 = !DILocation(line: 322, column: 45, scope: !6783)
!6785 = !DILocation(line: 322, column: 52, scope: !6783)
!6786 = !DILocation(line: 322, column: 3, scope: !6783)
!6787 = !DILocation(line: 323, column: 3, scope: !6783)
!6788 = !DILocation(line: 323, column: 10, scope: !6783)
!6789 = !DILocation(line: 323, column: 16, scope: !6783)
!6790 = !DILocation(line: 324, column: 2, scope: !6783)
!6791 = !DILocation(line: 326, column: 23, scope: !6771)
!6792 = !DILocation(line: 326, column: 21, scope: !6771)
!6793 = !DILocation(line: 327, column: 7, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 327, column: 6)
!6795 = !DILocation(line: 327, column: 6, scope: !6771)
!6796 = !DILocation(line: 328, column: 3, scope: !6794)
!6797 = !DILocation(line: 329, column: 31, scope: !6771)
!6798 = !DILocation(line: 329, column: 38, scope: !6771)
!6799 = !DILocation(line: 329, column: 2, scope: !6771)
!6800 = !DILocation(line: 330, column: 1, scope: !6771)
!6801 = distinct !DISubprogram(name: "drm_gem_begin_shadow_fb_access", scope: !3, file: !3, line: 348, type: !6474, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6802)
!6802 = !{!6803, !6804, !6805, !6806}
!6803 = !DILocalVariable(name: "plane", arg: 1, scope: !6801, file: !3, line: 348, type: !365)
!6804 = !DILocalVariable(name: "plane_state", arg: 2, scope: !6801, file: !3, line: 348, type: !6353)
!6805 = !DILocalVariable(name: "shadow_plane_state", scope: !6801, file: !3, line: 350, type: !357)
!6806 = !DILocalVariable(name: "fb", scope: !6801, file: !3, line: 351, type: !5079)
!6807 = !DILocation(line: 348, column: 54, scope: !6801)
!6808 = !DILocation(line: 348, column: 85, scope: !6801)
!6809 = !DILocation(line: 350, column: 2, scope: !6801)
!6810 = !DILocation(line: 350, column: 33, scope: !6801)
!6811 = !DILocation(line: 350, column: 80, scope: !6801)
!6812 = !DILocation(line: 350, column: 54, scope: !6801)
!6813 = !DILocation(line: 351, column: 2, scope: !6801)
!6814 = !DILocation(line: 351, column: 26, scope: !6801)
!6815 = !DILocation(line: 351, column: 31, scope: !6801)
!6816 = !DILocation(line: 351, column: 44, scope: !6801)
!6817 = !DILocation(line: 353, column: 7, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6801, file: !3, line: 353, column: 6)
!6819 = !DILocation(line: 353, column: 6, scope: !6801)
!6820 = !DILocation(line: 354, column: 3, scope: !6818)
!6821 = !DILocation(line: 356, column: 25, scope: !6801)
!6822 = !DILocation(line: 356, column: 29, scope: !6801)
!6823 = !DILocation(line: 356, column: 49, scope: !6801)
!6824 = !DILocation(line: 356, column: 54, scope: !6801)
!6825 = !DILocation(line: 356, column: 74, scope: !6801)
!6826 = !DILocation(line: 356, column: 9, scope: !6801)
!6827 = !DILocation(line: 356, column: 2, scope: !6801)
!6828 = !DILocation(line: 357, column: 1, scope: !6801)
!6829 = !DISubprogram(name: "drm_gem_fb_vmap", scope: !6634, file: !6634, line: 40, type: !6830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6830 = !DISubroutineType(types: !6831)
!6831 = !{!109, !5079, !5361, !5361}
!6832 = distinct !DISubprogram(name: "drm_gem_end_shadow_fb_access", scope: !3, file: !3, line: 370, type: !6356, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6833)
!6833 = !{!6834, !6835, !6836, !6837}
!6834 = !DILocalVariable(name: "plane", arg: 1, scope: !6832, file: !3, line: 370, type: !365)
!6835 = !DILocalVariable(name: "plane_state", arg: 2, scope: !6832, file: !3, line: 370, type: !6353)
!6836 = !DILocalVariable(name: "shadow_plane_state", scope: !6832, file: !3, line: 372, type: !357)
!6837 = !DILocalVariable(name: "fb", scope: !6832, file: !3, line: 373, type: !5079)
!6838 = !DILocation(line: 370, column: 53, scope: !6832)
!6839 = !DILocation(line: 370, column: 84, scope: !6832)
!6840 = !DILocation(line: 372, column: 2, scope: !6832)
!6841 = !DILocation(line: 372, column: 33, scope: !6832)
!6842 = !DILocation(line: 372, column: 80, scope: !6832)
!6843 = !DILocation(line: 372, column: 54, scope: !6832)
!6844 = !DILocation(line: 373, column: 2, scope: !6832)
!6845 = !DILocation(line: 373, column: 26, scope: !6832)
!6846 = !DILocation(line: 373, column: 31, scope: !6832)
!6847 = !DILocation(line: 373, column: 44, scope: !6832)
!6848 = !DILocation(line: 375, column: 7, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6832, file: !3, line: 375, column: 6)
!6850 = !DILocation(line: 375, column: 6, scope: !6832)
!6851 = !DILocation(line: 376, column: 3, scope: !6849)
!6852 = !DILocation(line: 378, column: 20, scope: !6832)
!6853 = !DILocation(line: 378, column: 24, scope: !6832)
!6854 = !DILocation(line: 378, column: 44, scope: !6832)
!6855 = !DILocation(line: 378, column: 2, scope: !6832)
!6856 = !DILocation(line: 379, column: 1, scope: !6832)
!6857 = !DISubprogram(name: "drm_gem_fb_vunmap", scope: !6634, file: !6634, line: 42, type: !6858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6858 = !DISubroutineType(types: !6859)
!6859 = !{null, !5079, !5361}
!6860 = distinct !DISubprogram(name: "drm_gem_simple_kms_begin_shadow_fb_access", scope: !3, file: !3, line: 395, type: !6861, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6921)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!109, !6863, !6353}
!6863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6864, size: 64)
!6864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_simple_display_pipe", file: !6865, line: 242, size: 14464, elements: !6866)
!6865 = !DIFile(filename: "./include/drm/drm_simple_kms_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7d99570ad70849cf9d934a80fda02d17")
!6866 = !{!6867, !6868, !6869, !6870, !6871}
!6867 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6864, file: !6865, line: 243, baseType: !5715, size: 8064)
!6868 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !6864, file: !6865, line: 244, baseType: !366, size: 5312, offset: 8064)
!6869 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !6864, file: !6865, line: 245, baseType: !5925, size: 960, offset: 13376)
!6870 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !6864, file: !6865, line: 246, baseType: !5776, size: 64, offset: 14336)
!6871 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !6864, file: !6865, line: 248, baseType: !6872, size: 64, offset: 14400)
!6872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6873, size: 64)
!6873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6874)
!6874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_simple_display_pipe_funcs", file: !6865, line: 19, size: 1088, elements: !6875)
!6875 = !{!6876, !6880, !6884, !6888, !6892, !6896, !6898, !6899, !6900, !6901, !6905, !6906, !6907, !6911, !6915, !6916, !6920}
!6876 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !6874, file: !6865, line: 52, baseType: !6877, size: 64)
!6877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6878, size: 64)
!6878 = !DISubroutineType(types: !6879)
!6879 = !{!141, !6863, !5585}
!6880 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !6874, file: !6865, line: 62, baseType: !6881, size: 64, offset: 64)
!6881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6882, size: 64)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{null, !6863, !6204, !6353}
!6884 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !6874, file: !6865, line: 72, baseType: !6885, size: 64, offset: 128)
!6885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6886, size: 64)
!6886 = !DISubroutineType(types: !6887)
!6887 = !{null, !6863}
!6888 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !6874, file: !6865, line: 91, baseType: !6889, size: 64, offset: 192)
!6889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6890, size: 64)
!6890 = !DISubroutineType(types: !6891)
!6891 = !{!109, !6863, !6353, !6204}
!6892 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !6874, file: !6865, line: 109, baseType: !6893, size: 64, offset: 256)
!6893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6894, size: 64)
!6894 = !DISubroutineType(types: !6895)
!6895 = !{null, !6863, !6353}
!6896 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fb", scope: !6874, file: !6865, line: 125, baseType: !6897, size: 64, offset: 320)
!6897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6861, size: 64)
!6898 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_fb", scope: !6874, file: !6865, line: 135, baseType: !6893, size: 64, offset: 384)
!6899 = !DIDerivedType(tag: DW_TAG_member, name: "begin_fb_access", scope: !6874, file: !6865, line: 145, baseType: !6897, size: 64, offset: 448)
!6900 = !DIDerivedType(tag: DW_TAG_member, name: "end_fb_access", scope: !6874, file: !6865, line: 155, baseType: !6893, size: 64, offset: 512)
!6901 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !6874, file: !6865, line: 165, baseType: !6902, size: 64, offset: 576)
!6902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6903, size: 64)
!6903 = !DISubroutineType(types: !6904)
!6904 = !{!109, !6863}
!6905 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !6874, file: !6865, line: 174, baseType: !6885, size: 64, offset: 640)
!6906 = !DIDerivedType(tag: DW_TAG_member, name: "reset_crtc", scope: !6874, file: !6865, line: 182, baseType: !6885, size: 64, offset: 704)
!6907 = !DIDerivedType(tag: DW_TAG_member, name: "duplicate_crtc_state", scope: !6874, file: !6865, line: 191, baseType: !6908, size: 64, offset: 768)
!6908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6909, size: 64)
!6909 = !DISubroutineType(types: !6910)
!6910 = !{!6204, !6863}
!6911 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_crtc_state", scope: !6874, file: !6865, line: 200, baseType: !6912, size: 64, offset: 832)
!6912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6913, size: 64)
!6913 = !DISubroutineType(types: !6914)
!6914 = !{null, !6863, !6204}
!6915 = !DIDerivedType(tag: DW_TAG_member, name: "reset_plane", scope: !6874, file: !6865, line: 209, baseType: !6885, size: 64, offset: 896)
!6916 = !DIDerivedType(tag: DW_TAG_member, name: "duplicate_plane_state", scope: !6874, file: !6865, line: 218, baseType: !6917, size: 64, offset: 960)
!6917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6918, size: 64)
!6918 = !DISubroutineType(types: !6919)
!6919 = !{!6353, !6863}
!6920 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_plane_state", scope: !6874, file: !6865, line: 227, baseType: !6893, size: 64, offset: 1024)
!6921 = !{!6922, !6923}
!6922 = !DILocalVariable(name: "pipe", arg: 1, scope: !6860, file: !3, line: 395, type: !6863)
!6923 = !DILocalVariable(name: "plane_state", arg: 2, scope: !6860, file: !3, line: 396, type: !6353)
!6924 = !DILocation(line: 395, column: 79, scope: !6860)
!6925 = !DILocation(line: 396, column: 36, scope: !6860)
!6926 = !DILocation(line: 398, column: 41, scope: !6860)
!6927 = !DILocation(line: 398, column: 47, scope: !6860)
!6928 = !DILocation(line: 398, column: 54, scope: !6860)
!6929 = !DILocation(line: 398, column: 9, scope: !6860)
!6930 = !DILocation(line: 398, column: 2, scope: !6860)
!6931 = distinct !DISubprogram(name: "drm_gem_simple_kms_end_shadow_fb_access", scope: !3, file: !3, line: 413, type: !6894, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6932)
!6932 = !{!6933, !6934}
!6933 = !DILocalVariable(name: "pipe", arg: 1, scope: !6931, file: !3, line: 413, type: !6863)
!6934 = !DILocalVariable(name: "plane_state", arg: 2, scope: !6931, file: !3, line: 414, type: !6353)
!6935 = !DILocation(line: 413, column: 78, scope: !6931)
!6936 = !DILocation(line: 414, column: 35, scope: !6931)
!6937 = !DILocation(line: 416, column: 32, scope: !6931)
!6938 = !DILocation(line: 416, column: 38, scope: !6931)
!6939 = !DILocation(line: 416, column: 45, scope: !6931)
!6940 = !DILocation(line: 416, column: 2, scope: !6931)
!6941 = !DILocation(line: 417, column: 1, scope: !6931)
!6942 = distinct !DISubprogram(name: "drm_gem_simple_kms_reset_shadow_plane", scope: !3, file: !3, line: 427, type: !6886, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6943)
!6943 = !{!6944}
!6944 = !DILocalVariable(name: "pipe", arg: 1, scope: !6942, file: !3, line: 427, type: !6863)
!6945 = !DILocation(line: 427, column: 76, scope: !6942)
!6946 = !DILocation(line: 429, column: 30, scope: !6942)
!6947 = !DILocation(line: 429, column: 36, scope: !6942)
!6948 = !DILocation(line: 429, column: 2, scope: !6942)
!6949 = !DILocation(line: 430, column: 1, scope: !6942)
!6950 = distinct !DISubprogram(name: "drm_gem_simple_kms_duplicate_shadow_plane_state", scope: !3, file: !3, line: 446, type: !6918, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6951)
!6951 = !{!6952}
!6952 = !DILocalVariable(name: "pipe", arg: 1, scope: !6950, file: !3, line: 446, type: !6863)
!6953 = !DILocation(line: 446, column: 81, scope: !6950)
!6954 = !DILocation(line: 448, column: 47, scope: !6950)
!6955 = !DILocation(line: 448, column: 53, scope: !6950)
!6956 = !DILocation(line: 448, column: 9, scope: !6950)
!6957 = !DILocation(line: 448, column: 2, scope: !6950)
!6958 = distinct !DISubprogram(name: "drm_gem_simple_kms_destroy_shadow_plane_state", scope: !3, file: !3, line: 461, type: !6894, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6959)
!6959 = !{!6960, !6961}
!6960 = !DILocalVariable(name: "pipe", arg: 1, scope: !6958, file: !3, line: 461, type: !6863)
!6961 = !DILocalVariable(name: "plane_state", arg: 2, scope: !6958, file: !3, line: 462, type: !6353)
!6962 = !DILocation(line: 461, column: 84, scope: !6958)
!6963 = !DILocation(line: 462, column: 34, scope: !6958)
!6964 = !DILocation(line: 464, column: 38, scope: !6958)
!6965 = !DILocation(line: 464, column: 44, scope: !6958)
!6966 = !DILocation(line: 464, column: 51, scope: !6958)
!6967 = !DILocation(line: 464, column: 2, scope: !6958)
!6968 = !DILocation(line: 465, column: 1, scope: !6958)
!6969 = distinct !DISubprogram(name: "kref_get", scope: !375, file: !375, line: 43, type: !5119, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6970)
!6970 = !{!6971}
!6971 = !DILocalVariable(name: "kref", arg: 1, scope: !6969, file: !375, line: 43, type: !5121)
!6972 = !DILocation(line: 43, column: 42, scope: !6969)
!6973 = !DILocation(line: 45, column: 16, scope: !6969)
!6974 = !DILocation(line: 45, column: 22, scope: !6969)
!6975 = !DILocation(line: 45, column: 2, scope: !6969)
!6976 = !DILocation(line: 46, column: 1, scope: !6969)
!6977 = distinct !DISubprogram(name: "refcount_inc", scope: !330, file: !330, line: 265, type: !6978, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6981)
!6978 = !DISubroutineType(types: !6979)
!6979 = !{null, !6980}
!6980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!6981 = !{!6982}
!6982 = !DILocalVariable(name: "r", arg: 1, scope: !6977, file: !330, line: 265, type: !6980)
!6983 = !DILocation(line: 265, column: 45, scope: !6977)
!6984 = !DILocation(line: 267, column: 17, scope: !6977)
!6985 = !DILocation(line: 267, column: 2, scope: !6977)
!6986 = !DILocation(line: 268, column: 1, scope: !6977)
!6987 = distinct !DISubprogram(name: "__refcount_inc", scope: !330, file: !330, line: 248, type: !6988, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6990)
!6988 = !DISubroutineType(types: !6989)
!6989 = !{null, !6980, !946}
!6990 = !{!6991, !6992}
!6991 = !DILocalVariable(name: "r", arg: 1, scope: !6987, file: !330, line: 248, type: !6980)
!6992 = !DILocalVariable(name: "oldp", arg: 2, scope: !6987, file: !330, line: 248, type: !946)
!6993 = !DILocation(line: 248, column: 47, scope: !6987)
!6994 = !DILocation(line: 248, column: 55, scope: !6987)
!6995 = !DILocation(line: 250, column: 20, scope: !6987)
!6996 = !DILocation(line: 250, column: 23, scope: !6987)
!6997 = !DILocation(line: 250, column: 2, scope: !6987)
!6998 = !DILocation(line: 251, column: 1, scope: !6987)
!6999 = distinct !DISubprogram(name: "__refcount_add", scope: !330, file: !330, line: 191, type: !7000, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7002)
!7000 = !DISubroutineType(types: !7001)
!7001 = !{null, !109, !6980, !946}
!7002 = !{!7003, !7004, !7005, !7006}
!7003 = !DILocalVariable(name: "i", arg: 1, scope: !6999, file: !330, line: 191, type: !109)
!7004 = !DILocalVariable(name: "r", arg: 2, scope: !6999, file: !330, line: 191, type: !6980)
!7005 = !DILocalVariable(name: "oldp", arg: 3, scope: !6999, file: !330, line: 191, type: !946)
!7006 = !DILocalVariable(name: "old", scope: !6999, file: !330, line: 193, type: !109)
!7007 = !DILocation(line: 191, column: 39, scope: !6999)
!7008 = !DILocation(line: 191, column: 54, scope: !6999)
!7009 = !DILocation(line: 191, column: 62, scope: !6999)
!7010 = !DILocation(line: 193, column: 2, scope: !6999)
!7011 = !DILocation(line: 193, column: 6, scope: !6999)
!7012 = !DILocation(line: 193, column: 37, scope: !6999)
!7013 = !DILocation(line: 193, column: 41, scope: !6999)
!7014 = !DILocation(line: 193, column: 44, scope: !6999)
!7015 = !DILocation(line: 193, column: 12, scope: !6999)
!7016 = !DILocation(line: 195, column: 6, scope: !7017)
!7017 = distinct !DILexicalBlock(scope: !6999, file: !330, line: 195, column: 6)
!7018 = !DILocation(line: 195, column: 6, scope: !6999)
!7019 = !DILocation(line: 196, column: 11, scope: !7017)
!7020 = !DILocation(line: 196, column: 4, scope: !7017)
!7021 = !DILocation(line: 196, column: 9, scope: !7017)
!7022 = !DILocation(line: 196, column: 3, scope: !7017)
!7023 = !DILocation(line: 198, column: 6, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !6999, file: !330, line: 198, column: 6)
!7025 = !DILocation(line: 198, column: 6, scope: !6999)
!7026 = !DILocation(line: 199, column: 26, scope: !7024)
!7027 = !DILocation(line: 199, column: 3, scope: !7024)
!7028 = !DILocation(line: 200, column: 11, scope: !7029)
!7029 = distinct !DILexicalBlock(scope: !7024, file: !330, line: 200, column: 11)
!7030 = !DILocation(line: 200, column: 11, scope: !7024)
!7031 = !DILocation(line: 201, column: 26, scope: !7029)
!7032 = !DILocation(line: 201, column: 3, scope: !7029)
!7033 = !DILocation(line: 202, column: 1, scope: !6999)
!7034 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !7035, file: !7035, line: 250, type: !7036, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7039)
!7035 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7036 = !DISubroutineType(types: !7037)
!7037 = !{!109, !109, !7038}
!7038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!7039 = !{!7040, !7041}
!7040 = !DILocalVariable(name: "i", arg: 1, scope: !7034, file: !7035, line: 250, type: !109)
!7041 = !DILocalVariable(name: "v", arg: 2, scope: !7034, file: !7035, line: 250, type: !7038)
!7042 = !DILocation(line: 250, column: 30, scope: !7034)
!7043 = !DILocation(line: 250, column: 43, scope: !7034)
!7044 = !DILocation(line: 252, column: 31, scope: !7034)
!7045 = !DILocation(line: 252, column: 2, scope: !7034)
!7046 = !DILocation(line: 253, column: 38, scope: !7034)
!7047 = !DILocation(line: 253, column: 41, scope: !7034)
!7048 = !DILocation(line: 253, column: 9, scope: !7034)
!7049 = !DILocation(line: 253, column: 2, scope: !7034)
!7050 = !DISubprogram(name: "refcount_warn_saturate", scope: !330, file: !330, line: 127, type: !7051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7051 = !DISubroutineType(types: !7052)
!7052 = !{null, !6980, !329}
!7053 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7054, file: !7054, line: 94, type: !7055, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7060)
!7054 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7055 = !DISubroutineType(types: !7056)
!7056 = !{null, !7057, !525}
!7057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7058, size: 64)
!7058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7059)
!7059 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7060 = !{!7061, !7062}
!7061 = !DILocalVariable(name: "v", arg: 1, scope: !7053, file: !7054, line: 94, type: !7057)
!7062 = !DILocalVariable(name: "size", arg: 2, scope: !7053, file: !7054, line: 94, type: !525)
!7063 = !DILocation(line: 94, column: 79, scope: !7053)
!7064 = !DILocation(line: 94, column: 89, scope: !7053)
!7065 = !DILocation(line: 96, column: 20, scope: !7053)
!7066 = !DILocation(line: 96, column: 23, scope: !7053)
!7067 = !DILocation(line: 96, column: 2, scope: !7053)
!7068 = !DILocation(line: 97, column: 2, scope: !7053)
!7069 = !DILocation(line: 98, column: 1, scope: !7053)
!7070 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !7071, file: !7071, line: 731, type: !7036, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7072)
!7071 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7072 = !{!7073, !7074}
!7073 = !DILocalVariable(name: "i", arg: 1, scope: !7070, file: !7071, line: 731, type: !109)
!7074 = !DILocalVariable(name: "v", arg: 2, scope: !7070, file: !7071, line: 731, type: !7038)
!7075 = !DILocation(line: 731, column: 34, scope: !7070)
!7076 = !DILocation(line: 731, column: 47, scope: !7070)
!7077 = !DILocation(line: 736, column: 31, scope: !7070)
!7078 = !DILocation(line: 736, column: 34, scope: !7070)
!7079 = !DILocation(line: 736, column: 9, scope: !7070)
!7080 = !DILocation(line: 736, column: 2, scope: !7070)
!7081 = distinct !DISubprogram(name: "kasan_check_write", scope: !7082, file: !7082, line: 44, type: !7083, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7085)
!7082 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7083 = !DISubroutineType(types: !7084)
!7084 = !{!897, !7057, !7}
!7085 = !{!7086, !7087}
!7086 = !DILocalVariable(name: "p", arg: 1, scope: !7081, file: !7082, line: 44, type: !7057)
!7087 = !DILocalVariable(name: "size", arg: 2, scope: !7081, file: !7082, line: 44, type: !7)
!7088 = !DILocation(line: 44, column: 59, scope: !7081)
!7089 = !DILocation(line: 44, column: 75, scope: !7081)
!7090 = !DILocation(line: 46, column: 2, scope: !7081)
!7091 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7092, file: !7092, line: 229, type: !7093, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7095)
!7092 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7093 = !DISubroutineType(types: !7094)
!7094 = !{null, !7057, !525, !109}
!7095 = !{!7096, !7097, !7098}
!7096 = !DILocalVariable(name: "ptr", arg: 1, scope: !7091, file: !7092, line: 229, type: !7057)
!7097 = !DILocalVariable(name: "size", arg: 2, scope: !7091, file: !7092, line: 229, type: !525)
!7098 = !DILocalVariable(name: "type", arg: 3, scope: !7091, file: !7092, line: 230, type: !109)
!7099 = !DILocation(line: 229, column: 60, scope: !7091)
!7100 = !DILocation(line: 229, column: 72, scope: !7091)
!7101 = !DILocation(line: 230, column: 15, scope: !7091)
!7102 = !DILocation(line: 230, column: 23, scope: !7091)
!7103 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !7104, file: !7104, line: 95, type: !7036, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7105)
!7104 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7105 = !{!7106, !7107, !7108}
!7106 = !DILocalVariable(name: "i", arg: 1, scope: !7103, file: !7104, line: 95, type: !109)
!7107 = !DILocalVariable(name: "v", arg: 2, scope: !7103, file: !7104, line: 95, type: !7038)
!7108 = !DILocalVariable(name: "__ret", scope: !7109, file: !7104, line: 97, type: !109)
!7109 = distinct !DILexicalBlock(scope: !7103, file: !7104, line: 97, column: 9)
!7110 = !DILocation(line: 95, column: 54, scope: !7103)
!7111 = !DILocation(line: 95, column: 67, scope: !7103)
!7112 = !DILocation(line: 97, column: 9, scope: !7109)
!7113 = !{i64 2148515685, i64 2148515724, i64 2148515745, i64 2148515782, i64 2148515805, i64 2148515814}
!7114 = !DILocation(line: 97, column: 9, scope: !7103)
!7115 = !DILocation(line: 97, column: 2, scope: !7103)
!7116 = distinct !DISubprogram(name: "kmalloc", scope: !343, file: !343, line: 591, type: !6704, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7117)
!7117 = !{!7118, !7119, !7120}
!7118 = !DILocalVariable(name: "size", arg: 1, scope: !7116, file: !343, line: 591, type: !525)
!7119 = !DILocalVariable(name: "flags", arg: 2, scope: !7116, file: !343, line: 591, type: !354)
!7120 = !DILocalVariable(name: "index", scope: !7121, file: !343, line: 594, type: !7)
!7121 = distinct !DILexicalBlock(scope: !7122, file: !343, line: 593, column: 42)
!7122 = distinct !DILexicalBlock(scope: !7116, file: !343, line: 593, column: 6)
!7123 = !DILocation(line: 591, column: 61, scope: !7116)
!7124 = !DILocation(line: 591, column: 73, scope: !7116)
!7125 = !DILocation(line: 593, column: 27, scope: !7122)
!7126 = !DILocation(line: 593, column: 6, scope: !7122)
!7127 = !DILocation(line: 593, column: 33, scope: !7122)
!7128 = !DILocation(line: 593, column: 36, scope: !7122)
!7129 = !DILocation(line: 593, column: 6, scope: !7116)
!7130 = !DILocation(line: 594, column: 3, scope: !7121)
!7131 = !DILocation(line: 594, column: 16, scope: !7121)
!7132 = !DILocation(line: 596, column: 7, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !7121, file: !343, line: 596, column: 7)
!7134 = !DILocation(line: 596, column: 12, scope: !7133)
!7135 = !DILocation(line: 596, column: 7, scope: !7121)
!7136 = !DILocation(line: 597, column: 25, scope: !7133)
!7137 = !DILocation(line: 597, column: 31, scope: !7133)
!7138 = !DILocation(line: 597, column: 11, scope: !7133)
!7139 = !DILocation(line: 597, column: 4, scope: !7133)
!7140 = !DILocation(line: 599, column: 11, scope: !7121)
!7141 = !DILocation(line: 599, column: 9, scope: !7121)
!7142 = !DILocation(line: 601, column: 33, scope: !7121)
!7143 = !DILocation(line: 601, column: 40, scope: !7121)
!7144 = !DILocation(line: 601, column: 20, scope: !7121)
!7145 = !DILocation(line: 601, column: 5, scope: !7121)
!7146 = !DILocation(line: 601, column: 51, scope: !7121)
!7147 = !DILocation(line: 602, column: 5, scope: !7121)
!7148 = !DILocation(line: 602, column: 12, scope: !7121)
!7149 = !DILocation(line: 600, column: 10, scope: !7121)
!7150 = !DILocation(line: 600, column: 3, scope: !7121)
!7151 = !DILocation(line: 603, column: 2, scope: !7122)
!7152 = !DILocation(line: 604, column: 19, scope: !7116)
!7153 = !DILocation(line: 604, column: 25, scope: !7116)
!7154 = !DILocation(line: 604, column: 9, scope: !7116)
!7155 = !DILocation(line: 604, column: 2, scope: !7116)
!7156 = !DILocation(line: 605, column: 1, scope: !7116)
!7157 = !DISubprogram(name: "kmalloc_large", scope: !343, file: !343, line: 531, type: !6704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7158 = distinct !DISubprogram(name: "__kmalloc_index", scope: !343, file: !343, line: 444, type: !7159, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7161)
!7159 = !DISubroutineType(types: !7160)
!7160 = !{!7, !525, !897}
!7161 = !{!7162, !7163}
!7162 = !DILocalVariable(name: "size", arg: 1, scope: !7158, file: !343, line: 444, type: !525)
!7163 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7158, file: !343, line: 445, type: !897)
!7164 = !DILocation(line: 444, column: 60, scope: !7158)
!7165 = !DILocation(line: 445, column: 16, scope: !7158)
!7166 = !DILocation(line: 447, column: 7, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 447, column: 6)
!7168 = !DILocation(line: 447, column: 6, scope: !7158)
!7169 = !DILocation(line: 448, column: 3, scope: !7167)
!7170 = !DILocation(line: 450, column: 6, scope: !7171)
!7171 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 450, column: 6)
!7172 = !DILocation(line: 450, column: 11, scope: !7171)
!7173 = !DILocation(line: 450, column: 6, scope: !7158)
!7174 = !DILocation(line: 451, column: 3, scope: !7171)
!7175 = !DILocation(line: 453, column: 32, scope: !7176)
!7176 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 453, column: 6)
!7177 = !DILocation(line: 453, column: 37, scope: !7176)
!7178 = !DILocation(line: 453, column: 42, scope: !7176)
!7179 = !DILocation(line: 453, column: 45, scope: !7176)
!7180 = !DILocation(line: 453, column: 50, scope: !7176)
!7181 = !DILocation(line: 453, column: 6, scope: !7158)
!7182 = !DILocation(line: 454, column: 3, scope: !7176)
!7183 = !DILocation(line: 455, column: 32, scope: !7184)
!7184 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 455, column: 6)
!7185 = !DILocation(line: 455, column: 37, scope: !7184)
!7186 = !DILocation(line: 455, column: 43, scope: !7184)
!7187 = !DILocation(line: 455, column: 46, scope: !7184)
!7188 = !DILocation(line: 455, column: 51, scope: !7184)
!7189 = !DILocation(line: 455, column: 6, scope: !7158)
!7190 = !DILocation(line: 456, column: 3, scope: !7184)
!7191 = !DILocation(line: 457, column: 6, scope: !7192)
!7192 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 457, column: 6)
!7193 = !DILocation(line: 457, column: 11, scope: !7192)
!7194 = !DILocation(line: 457, column: 6, scope: !7158)
!7195 = !DILocation(line: 457, column: 26, scope: !7192)
!7196 = !DILocation(line: 458, column: 6, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 458, column: 6)
!7198 = !DILocation(line: 458, column: 11, scope: !7197)
!7199 = !DILocation(line: 458, column: 6, scope: !7158)
!7200 = !DILocation(line: 458, column: 26, scope: !7197)
!7201 = !DILocation(line: 459, column: 6, scope: !7202)
!7202 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 459, column: 6)
!7203 = !DILocation(line: 459, column: 11, scope: !7202)
!7204 = !DILocation(line: 459, column: 6, scope: !7158)
!7205 = !DILocation(line: 459, column: 26, scope: !7202)
!7206 = !DILocation(line: 460, column: 6, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 460, column: 6)
!7208 = !DILocation(line: 460, column: 11, scope: !7207)
!7209 = !DILocation(line: 460, column: 6, scope: !7158)
!7210 = !DILocation(line: 460, column: 26, scope: !7207)
!7211 = !DILocation(line: 461, column: 6, scope: !7212)
!7212 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 461, column: 6)
!7213 = !DILocation(line: 461, column: 11, scope: !7212)
!7214 = !DILocation(line: 461, column: 6, scope: !7158)
!7215 = !DILocation(line: 461, column: 26, scope: !7212)
!7216 = !DILocation(line: 462, column: 6, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 462, column: 6)
!7218 = !DILocation(line: 462, column: 11, scope: !7217)
!7219 = !DILocation(line: 462, column: 6, scope: !7158)
!7220 = !DILocation(line: 462, column: 26, scope: !7217)
!7221 = !DILocation(line: 463, column: 6, scope: !7222)
!7222 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 463, column: 6)
!7223 = !DILocation(line: 463, column: 11, scope: !7222)
!7224 = !DILocation(line: 463, column: 6, scope: !7158)
!7225 = !DILocation(line: 463, column: 26, scope: !7222)
!7226 = !DILocation(line: 464, column: 6, scope: !7227)
!7227 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 464, column: 6)
!7228 = !DILocation(line: 464, column: 11, scope: !7227)
!7229 = !DILocation(line: 464, column: 6, scope: !7158)
!7230 = !DILocation(line: 464, column: 26, scope: !7227)
!7231 = !DILocation(line: 465, column: 6, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 465, column: 6)
!7233 = !DILocation(line: 465, column: 11, scope: !7232)
!7234 = !DILocation(line: 465, column: 6, scope: !7158)
!7235 = !DILocation(line: 465, column: 26, scope: !7232)
!7236 = !DILocation(line: 466, column: 6, scope: !7237)
!7237 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 466, column: 6)
!7238 = !DILocation(line: 466, column: 11, scope: !7237)
!7239 = !DILocation(line: 466, column: 6, scope: !7158)
!7240 = !DILocation(line: 466, column: 26, scope: !7237)
!7241 = !DILocation(line: 467, column: 6, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 467, column: 6)
!7243 = !DILocation(line: 467, column: 11, scope: !7242)
!7244 = !DILocation(line: 467, column: 6, scope: !7158)
!7245 = !DILocation(line: 467, column: 26, scope: !7242)
!7246 = !DILocation(line: 468, column: 6, scope: !7247)
!7247 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 468, column: 6)
!7248 = !DILocation(line: 468, column: 11, scope: !7247)
!7249 = !DILocation(line: 468, column: 6, scope: !7158)
!7250 = !DILocation(line: 468, column: 26, scope: !7247)
!7251 = !DILocation(line: 469, column: 6, scope: !7252)
!7252 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 469, column: 6)
!7253 = !DILocation(line: 469, column: 11, scope: !7252)
!7254 = !DILocation(line: 469, column: 6, scope: !7158)
!7255 = !DILocation(line: 469, column: 26, scope: !7252)
!7256 = !DILocation(line: 470, column: 6, scope: !7257)
!7257 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 470, column: 6)
!7258 = !DILocation(line: 470, column: 11, scope: !7257)
!7259 = !DILocation(line: 470, column: 6, scope: !7158)
!7260 = !DILocation(line: 470, column: 26, scope: !7257)
!7261 = !DILocation(line: 471, column: 6, scope: !7262)
!7262 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 471, column: 6)
!7263 = !DILocation(line: 471, column: 11, scope: !7262)
!7264 = !DILocation(line: 471, column: 6, scope: !7158)
!7265 = !DILocation(line: 471, column: 26, scope: !7262)
!7266 = !DILocation(line: 472, column: 6, scope: !7267)
!7267 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 472, column: 6)
!7268 = !DILocation(line: 472, column: 11, scope: !7267)
!7269 = !DILocation(line: 472, column: 6, scope: !7158)
!7270 = !DILocation(line: 472, column: 26, scope: !7267)
!7271 = !DILocation(line: 473, column: 6, scope: !7272)
!7272 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 473, column: 6)
!7273 = !DILocation(line: 473, column: 11, scope: !7272)
!7274 = !DILocation(line: 473, column: 6, scope: !7158)
!7275 = !DILocation(line: 473, column: 26, scope: !7272)
!7276 = !DILocation(line: 474, column: 6, scope: !7277)
!7277 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 474, column: 6)
!7278 = !DILocation(line: 474, column: 11, scope: !7277)
!7279 = !DILocation(line: 474, column: 6, scope: !7158)
!7280 = !DILocation(line: 474, column: 27, scope: !7277)
!7281 = !DILocation(line: 475, column: 6, scope: !7282)
!7282 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 475, column: 6)
!7283 = !DILocation(line: 475, column: 11, scope: !7282)
!7284 = !DILocation(line: 475, column: 6, scope: !7158)
!7285 = !DILocation(line: 475, column: 32, scope: !7282)
!7286 = !DILocation(line: 477, column: 50, scope: !7287)
!7287 = distinct !DILexicalBlock(scope: !7158, file: !343, line: 477, column: 6)
!7288 = !{i8 0, i8 2}
!7289 = !DILocation(line: 477, column: 6, scope: !7158)
!7290 = !DILocation(line: 478, column: 3, scope: !7287)
!7291 = !DILocation(line: 478, column: 3, scope: !7292)
!7292 = distinct !DILexicalBlock(scope: !7293, file: !343, line: 478, column: 3)
!7293 = distinct !DILexicalBlock(scope: !7287, file: !343, line: 478, column: 3)
!7294 = !{i32 -2142973049}
!7295 = !DILocation(line: 478, column: 3, scope: !7293)
!7296 = !DILocation(line: 480, column: 3, scope: !7287)
!7297 = !DILocation(line: 480, column: 3, scope: !7298)
!7298 = distinct !DILexicalBlock(scope: !7287, file: !343, line: 480, column: 3)
!7299 = !DILocation(line: 480, column: 3, scope: !7300)
!7300 = distinct !DILexicalBlock(scope: !7298, file: !343, line: 480, column: 3)
!7301 = !DILocation(line: 480, column: 3, scope: !7302)
!7302 = distinct !DILexicalBlock(scope: !7298, file: !343, line: 480, column: 3)
!7303 = !{i64 2151994450, i64 2151994479, i64 2151994525, i64 2151994583, i64 2151994637, i64 2151994691, i64 2151994746, i64 2151994777}
!7304 = !DILocation(line: 483, column: 2, scope: !7158)
!7305 = !DILocation(line: 484, column: 1, scope: !7158)
!7306 = !DISubprogram(name: "kmalloc_trace", scope: !343, file: !343, line: 525, type: !7307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7307 = !DISubroutineType(types: !7308)
!7308 = !{!353, !3251, !354, !525}
!7309 = distinct !DISubprogram(name: "kmalloc_type", scope: !343, file: !343, line: 401, type: !7310, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7312)
!7310 = !DISubroutineType(types: !7311)
!7311 = !{!342, !354, !356}
!7312 = !{!7313, !7314}
!7313 = !DILocalVariable(name: "flags", arg: 1, scope: !7309, file: !343, line: 401, type: !354)
!7314 = !DILocalVariable(name: "caller", arg: 2, scope: !7309, file: !343, line: 401, type: !356)
!7315 = !DILocation(line: 401, column: 67, scope: !7309)
!7316 = !DILocation(line: 401, column: 88, scope: !7309)
!7317 = !DILocation(line: 407, column: 6, scope: !7318)
!7318 = distinct !DILexicalBlock(scope: !7309, file: !343, line: 407, column: 6)
!7319 = !DILocation(line: 407, column: 6, scope: !7309)
!7320 = !DILocation(line: 413, column: 3, scope: !7318)
!7321 = !DILocation(line: 423, column: 38, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !7309, file: !343, line: 423, column: 6)
!7323 = !DILocation(line: 423, column: 44, scope: !7322)
!7324 = !DILocation(line: 423, column: 6, scope: !7309)
!7325 = !DILocation(line: 424, column: 3, scope: !7322)
!7326 = !DILocation(line: 426, column: 3, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7309, file: !343, line: 425, column: 6)
!7328 = !DILocation(line: 429, column: 1, scope: !7309)
!7329 = !DISubprogram(name: "__kmalloc", scope: !343, file: !343, line: 488, type: !6704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7330 = !DISubprogram(name: "__compiletime_assert_178", scope: !343, file: !343, line: 478, type: !1182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7331 = distinct !DISubprogram(name: "kref_put", scope: !375, file: !375, line: 62, type: !7332, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7334)
!7332 = !DISubroutineType(types: !7333)
!7333 = !{!109, !5121, !5118}
!7334 = !{!7335, !7336}
!7335 = !DILocalVariable(name: "kref", arg: 1, scope: !7331, file: !375, line: 62, type: !5121)
!7336 = !DILocalVariable(name: "release", arg: 2, scope: !7331, file: !375, line: 62, type: !5118)
!7337 = !DILocation(line: 62, column: 41, scope: !7331)
!7338 = !DILocation(line: 62, column: 54, scope: !7331)
!7339 = !DILocation(line: 64, column: 29, scope: !7340)
!7340 = distinct !DILexicalBlock(scope: !7331, file: !375, line: 64, column: 6)
!7341 = !DILocation(line: 64, column: 35, scope: !7340)
!7342 = !DILocation(line: 64, column: 6, scope: !7340)
!7343 = !DILocation(line: 64, column: 6, scope: !7331)
!7344 = !DILocation(line: 65, column: 3, scope: !7345)
!7345 = distinct !DILexicalBlock(scope: !7340, file: !375, line: 64, column: 46)
!7346 = !DILocation(line: 65, column: 11, scope: !7345)
!7347 = !DILocation(line: 66, column: 3, scope: !7345)
!7348 = !DILocation(line: 68, column: 2, scope: !7331)
!7349 = !DILocation(line: 69, column: 1, scope: !7331)
!7350 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !330, file: !330, line: 331, type: !7351, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7353)
!7351 = !DISubroutineType(types: !7352)
!7352 = !{!897, !6980}
!7353 = !{!7354}
!7354 = !DILocalVariable(name: "r", arg: 1, scope: !7350, file: !330, line: 331, type: !6980)
!7355 = !DILocation(line: 331, column: 67, scope: !7350)
!7356 = !DILocation(line: 333, column: 33, scope: !7350)
!7357 = !DILocation(line: 333, column: 9, scope: !7350)
!7358 = !DILocation(line: 333, column: 2, scope: !7350)
!7359 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !330, file: !330, line: 313, type: !7360, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7362)
!7360 = !DISubroutineType(types: !7361)
!7361 = !{!897, !6980, !946}
!7362 = !{!7363, !7364}
!7363 = !DILocalVariable(name: "r", arg: 1, scope: !7359, file: !330, line: 313, type: !6980)
!7364 = !DILocalVariable(name: "oldp", arg: 2, scope: !7359, file: !330, line: 313, type: !946)
!7365 = !DILocation(line: 313, column: 69, scope: !7359)
!7366 = !DILocation(line: 313, column: 77, scope: !7359)
!7367 = !DILocation(line: 315, column: 36, scope: !7359)
!7368 = !DILocation(line: 315, column: 39, scope: !7359)
!7369 = !DILocation(line: 315, column: 9, scope: !7359)
!7370 = !DILocation(line: 315, column: 2, scope: !7359)
!7371 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !330, file: !330, line: 270, type: !7372, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7374)
!7372 = !DISubroutineType(types: !7373)
!7373 = !{!897, !109, !6980, !946}
!7374 = !{!7375, !7376, !7377, !7378}
!7375 = !DILocalVariable(name: "i", arg: 1, scope: !7371, file: !330, line: 270, type: !109)
!7376 = !DILocalVariable(name: "r", arg: 2, scope: !7371, file: !330, line: 270, type: !6980)
!7377 = !DILocalVariable(name: "oldp", arg: 3, scope: !7371, file: !330, line: 270, type: !946)
!7378 = !DILocalVariable(name: "old", scope: !7371, file: !330, line: 272, type: !109)
!7379 = !DILocation(line: 270, column: 61, scope: !7371)
!7380 = !DILocation(line: 270, column: 76, scope: !7371)
!7381 = !DILocation(line: 270, column: 84, scope: !7371)
!7382 = !DILocation(line: 272, column: 2, scope: !7371)
!7383 = !DILocation(line: 272, column: 6, scope: !7371)
!7384 = !DILocation(line: 272, column: 37, scope: !7371)
!7385 = !DILocation(line: 272, column: 41, scope: !7371)
!7386 = !DILocation(line: 272, column: 44, scope: !7371)
!7387 = !DILocation(line: 272, column: 12, scope: !7371)
!7388 = !DILocation(line: 274, column: 6, scope: !7389)
!7389 = distinct !DILexicalBlock(scope: !7371, file: !330, line: 274, column: 6)
!7390 = !DILocation(line: 274, column: 6, scope: !7371)
!7391 = !DILocation(line: 275, column: 11, scope: !7389)
!7392 = !DILocation(line: 275, column: 4, scope: !7389)
!7393 = !DILocation(line: 275, column: 9, scope: !7389)
!7394 = !DILocation(line: 275, column: 3, scope: !7389)
!7395 = !DILocation(line: 277, column: 6, scope: !7396)
!7396 = distinct !DILexicalBlock(scope: !7371, file: !330, line: 277, column: 6)
!7397 = !DILocation(line: 277, column: 13, scope: !7396)
!7398 = !DILocation(line: 277, column: 10, scope: !7396)
!7399 = !DILocation(line: 277, column: 6, scope: !7371)
!7400 = !DILocation(line: 278, column: 3, scope: !7401)
!7401 = distinct !DILexicalBlock(scope: !7396, file: !330, line: 277, column: 16)
!7402 = !DILocation(line: 278, column: 3, scope: !7403)
!7403 = distinct !DILexicalBlock(scope: !7401, file: !330, line: 278, column: 3)
!7404 = !DILocation(line: 278, column: 3, scope: !7405)
!7405 = distinct !DILexicalBlock(scope: !7403, file: !330, line: 278, column: 3)
!7406 = !DILocation(line: 278, column: 3, scope: !7407)
!7407 = distinct !DILexicalBlock(scope: !7403, file: !330, line: 278, column: 3)
!7408 = !DILocation(line: 278, column: 3, scope: !7409)
!7409 = distinct !DILexicalBlock(scope: !7407, file: !330, line: 278, column: 3)
!7410 = !{i64 2149901471}
!7411 = !DILocation(line: 279, column: 3, scope: !7401)
!7412 = !DILocation(line: 282, column: 6, scope: !7413)
!7413 = distinct !DILexicalBlock(scope: !7371, file: !330, line: 282, column: 6)
!7414 = !DILocation(line: 282, column: 6, scope: !7371)
!7415 = !DILocation(line: 283, column: 26, scope: !7413)
!7416 = !DILocation(line: 283, column: 3, scope: !7413)
!7417 = !DILocation(line: 285, column: 2, scope: !7371)
!7418 = !DILocation(line: 286, column: 1, scope: !7371)
!7419 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !7035, file: !7035, line: 397, type: !7036, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7420)
!7420 = !{!7421, !7422}
!7421 = !DILocalVariable(name: "i", arg: 1, scope: !7419, file: !7035, line: 397, type: !109)
!7422 = !DILocalVariable(name: "v", arg: 2, scope: !7419, file: !7035, line: 397, type: !7038)
!7423 = !DILocation(line: 397, column: 30, scope: !7419)
!7424 = !DILocation(line: 397, column: 43, scope: !7419)
!7425 = !DILocation(line: 399, column: 2, scope: !7419)
!7426 = !DILocation(line: 399, column: 2, scope: !7427)
!7427 = distinct !DILexicalBlock(scope: !7419, file: !7035, line: 399, column: 2)
!7428 = !DILocation(line: 400, column: 31, scope: !7419)
!7429 = !DILocation(line: 400, column: 2, scope: !7419)
!7430 = !DILocation(line: 401, column: 38, scope: !7419)
!7431 = !DILocation(line: 401, column: 41, scope: !7419)
!7432 = !DILocation(line: 401, column: 9, scope: !7419)
!7433 = !DILocation(line: 401, column: 2, scope: !7419)
!7434 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7071, file: !7071, line: 928, type: !7036, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7435)
!7435 = !{!7436, !7437}
!7436 = !DILocalVariable(name: "i", arg: 1, scope: !7434, file: !7071, line: 928, type: !109)
!7437 = !DILocalVariable(name: "v", arg: 2, scope: !7434, file: !7071, line: 928, type: !7038)
!7438 = !DILocation(line: 928, column: 34, scope: !7434)
!7439 = !DILocation(line: 928, column: 47, scope: !7434)
!7440 = !DILocation(line: 936, column: 31, scope: !7434)
!7441 = !DILocation(line: 936, column: 34, scope: !7434)
!7442 = !DILocation(line: 936, column: 9, scope: !7434)
!7443 = !DILocation(line: 936, column: 2, scope: !7434)
!7444 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7104, file: !7104, line: 101, type: !7036, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7445)
!7445 = !{!7446, !7447, !7448}
!7446 = !DILocalVariable(name: "i", arg: 1, scope: !7444, file: !7104, line: 101, type: !109)
!7447 = !DILocalVariable(name: "v", arg: 2, scope: !7444, file: !7104, line: 101, type: !7038)
!7448 = !DILocalVariable(name: "__ret", scope: !7449, file: !7104, line: 103, type: !109)
!7449 = distinct !DILexicalBlock(scope: !7444, file: !7104, line: 103, column: 9)
!7450 = !DILocation(line: 101, column: 54, scope: !7444)
!7451 = !DILocation(line: 101, column: 67, scope: !7444)
!7452 = !DILocation(line: 103, column: 9, scope: !7449)
!7453 = !{i64 2148517870, i64 2148517909, i64 2148517930, i64 2148517967, i64 2148517990, i64 2148517999}
!7454 = !DILocation(line: 103, column: 9, scope: !7444)
!7455 = !DILocation(line: 103, column: 2, scope: !7444)
