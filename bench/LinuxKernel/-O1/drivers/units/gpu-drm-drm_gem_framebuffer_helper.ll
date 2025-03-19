; ModuleID = 'drivers/gpu/drm/drm_gem_framebuffer_helper.c'
source_filename = "drivers/gpu/drm/drm_gem_framebuffer_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_get_obj: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_get_obj ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_create_handle: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_create_handle ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_init_with_funcs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_init_with_funcs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_create_with_funcs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_create_with_funcs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_create: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_create_with_dirty: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_create_with_dirty ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_vmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_vmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_vunmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_vunmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_begin_cpu_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_begin_cpu_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_end_cpu_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_end_cpu_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_gem_fb_afbc_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_gem_fb_afbc_init ; .previous"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.drm_format_info = type { i32, i8, i8, %union.anon.14, [4 x i8], [4 x i8], i8, i8, i8, i8, i8 }
%union.anon.14 = type { [4 x i8] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.19, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.anon.19 = type { %struct.list_head }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iosys_map = type { %union.anon.20, i8 }
%union.anon.20 = type { ptr }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.drm_afbc_framebuffer = type { %struct.drm_framebuffer, i32, i32, i32, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr }

@__UNIQUE_ID_import_ns316 = internal constant [33 x i8] c"drm_kms_helper.import_ns=DMA_BUF\00", section ".modinfo", align 1, !dbg !0
@drm_gem_fb_get_obj.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !282
@.str = private unnamed_addr constant [10 x i8] c"%s %s: %s\00", align 1, !dbg !5744
@.str.1 = private unnamed_addr constant [181 x i8] c"drm_WARN_ON_ONCE(plane >= (sizeof(fb->obj) / sizeof((fb->obj)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((fb->obj)), typeof(&(fb->obj)[0])))); })))))\00", align 1, !dbg !5749
@.str.2 = private unnamed_addr constant [45 x i8] c"drivers/gpu/drm/drm_gem_framebuffer_helper.c\00", align 1, !dbg !5754
@drm_gem_fb_get_obj.__already_done.3 = internal global i8 0, section ".data..once", align 1, !dbg !5759
@.str.4 = private unnamed_addr constant [34 x i8] c"drm_WARN_ON_ONCE(!fb->obj[plane])\00", align 1, !dbg !5761
@__UNIQUE_ID___addressable_drm_gem_fb_get_obj317 = internal global ptr @drm_gem_fb_get_obj, section ".discard.addressable", align 8, !dbg !5766
@__UNIQUE_ID___addressable_drm_gem_fb_destroy318 = internal global ptr @drm_gem_fb_destroy, section ".discard.addressable", align 8, !dbg !5768
@__UNIQUE_ID___addressable_drm_gem_fb_create_handle319 = internal global ptr @drm_gem_fb_create_handle, section ".discard.addressable", align 8, !dbg !5770
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to get FB format info\0A\00", align 1, !dbg !5772
@.str.6 = private unnamed_addr constant [50 x i8] c"Unsupported pixel format %p4cc / modifier 0x%llx\0A\00", align 1, !dbg !5777
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to lookup GEM object\0A\00", align 1, !dbg !5782
@.str.8 = private unnamed_addr constant [67 x i8] c"GEM object size (%zu) smaller than minimum size (%u) for plane %d\0A\00", align 1, !dbg !5787
@__UNIQUE_ID___addressable_drm_gem_fb_init_with_funcs320 = internal global ptr @drm_gem_fb_init_with_funcs, section ".discard.addressable", align 8, !dbg !5792
@__UNIQUE_ID___addressable_drm_gem_fb_create_with_funcs321 = internal global ptr @drm_gem_fb_create_with_funcs, section ".discard.addressable", align 8, !dbg !5794
@drm_gem_fb_funcs = internal constant %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, align 8, !dbg !5820
@__UNIQUE_ID___addressable_drm_gem_fb_create322 = internal global ptr @drm_gem_fb_create, section ".discard.addressable", align 8, !dbg !5796
@drm_gem_fb_funcs_dirtyfb = internal constant %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr @drm_atomic_helper_dirtyfb }, align 8, !dbg !5822
@__UNIQUE_ID___addressable_drm_gem_fb_create_with_dirty323 = internal global ptr @drm_gem_fb_create_with_dirty, section ".discard.addressable", align 8, !dbg !5798
@__UNIQUE_ID___addressable_drm_gem_fb_vmap324 = internal global ptr @drm_gem_fb_vmap, section ".discard.addressable", align 8, !dbg !5800
@__UNIQUE_ID___addressable_drm_gem_fb_vunmap325 = internal global ptr @drm_gem_fb_vunmap, section ".discard.addressable", align 8, !dbg !5802
@__UNIQUE_ID___addressable_drm_gem_fb_begin_cpu_access326 = internal global ptr @drm_gem_fb_begin_cpu_access, section ".discard.addressable", align 8, !dbg !5804
@__UNIQUE_ID___addressable_drm_gem_fb_end_cpu_access327 = internal global ptr @drm_gem_fb_end_cpu_access, section ".discard.addressable", align 8, !dbg !5806
@__UNIQUE_ID___addressable_drm_gem_fb_afbc_init328 = internal global ptr @drm_gem_fb_afbc_init, section ".discard.addressable", align 8, !dbg !5808
@.str.9 = private unnamed_addr constant [46 x i8] c"[drm] *ERROR* Failed to init framebuffer: %d\0A\00", align 1, !dbg !5810
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5815
@.str.11 = private unnamed_addr constant [57 x i8] c"[drm] *ERROR* dma_buf_end_cpu_access(%u, %d) failed: %d\0A\00", align 1, !dbg !5824
@.str.12 = private unnamed_addr constant [43 x i8] c"Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\0A\00", align 1, !dbg !5829
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid AFBC bpp value: %d\0A\00", align 1, !dbg !5834
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_import_ns316, ptr @__UNIQUE_ID___addressable_drm_gem_fb_get_obj317, ptr @__UNIQUE_ID___addressable_drm_gem_fb_destroy318, ptr @__UNIQUE_ID___addressable_drm_gem_fb_create_handle319, ptr @__UNIQUE_ID___addressable_drm_gem_fb_init_with_funcs320, ptr @__UNIQUE_ID___addressable_drm_gem_fb_create_with_funcs321, ptr @__UNIQUE_ID___addressable_drm_gem_fb_create322, ptr @__UNIQUE_ID___addressable_drm_gem_fb_create_with_dirty323, ptr @__UNIQUE_ID___addressable_drm_gem_fb_vmap324, ptr @__UNIQUE_ID___addressable_drm_gem_fb_vunmap325, ptr @__UNIQUE_ID___addressable_drm_gem_fb_begin_cpu_access326, ptr @__UNIQUE_ID___addressable_drm_gem_fb_end_cpu_access327, ptr @__UNIQUE_ID___addressable_drm_gem_fb_afbc_init328], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_gem_fb_get_obj(ptr noundef %fb, i32 noundef %plane) #0 align 16 !dbg !284 {
entry:
  %retval = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %plane.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp55 = alloca i64, align 8
  %tmp64 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once74 = alloca i8, align 1
  %__ret_cond83 = alloca i8, align 1
  %__ret_once90 = alloca i8, align 1
  %tmp107 = alloca i64, align 8
  %__ret_warn_on117 = alloca i32, align 4
  %__flags136 = alloca i32, align 4
  %tmp154 = alloca i64, align 8
  %tmp163 = alloca i64, align 8
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !5715, metadata !DIExpression()), !dbg !5851
  store i32 %plane, ptr %plane.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !5716, metadata !DIExpression()), !dbg !5852
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5853
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5717, metadata !DIExpression()), !dbg !5854
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !5855
  %dev1 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 0, !dbg !5856
  %1 = load ptr, ptr %dev1, align 8, !dbg !5856
  store ptr %1, ptr %dev, align 8, !dbg !5854
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5718, metadata !DIExpression()), !dbg !5857
  %2 = load i32, ptr %plane.addr, align 4, !dbg !5857
  %conv = zext i32 %2 to i64, !dbg !5857
  %cmp = icmp uge i64 %conv, 4, !dbg !5857
  %lnot = xor i1 %cmp, true, !dbg !5857
  %lnot3 = xor i1 %lnot, true, !dbg !5857
  %frombool = zext i1 %lnot3 to i8, !dbg !5857
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !5857
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !5858
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5721, metadata !DIExpression()), !dbg !5858
  %3 = load i8, ptr %__ret_do_once, align 1, !dbg !5858, !range !5859, !noundef !1029
  %tobool = trunc i8 %3 to i1, !dbg !5858
  %lnot4 = xor i1 %tobool, true, !dbg !5858
  %lnot5 = xor i1 %lnot4, true, !dbg !5858
  %frombool6 = zext i1 %lnot5 to i8, !dbg !5858
  store i8 %frombool6, ptr %__ret_cond, align 1, !dbg !5858
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !5858
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5724, metadata !DIExpression()), !dbg !5858
  store i8 0, ptr %__ret_once, align 1, !dbg !5858
  %4 = load i8, ptr %__ret_cond, align 1, !dbg !5860, !range !5859, !noundef !1029
  %tobool7 = trunc i8 %4 to i1, !dbg !5860
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !5860

land.rhs:                                         ; preds = %entry
  %5 = load i8, ptr @drm_gem_fb_get_obj.__already_done, align 1, !dbg !5860, !range !5859, !noundef !1029
  %tobool9 = trunc i8 %5 to i1, !dbg !5860
  %lnot10 = xor i1 %tobool9, true, !dbg !5860
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %lnot10, %land.rhs ], !dbg !5862
  %lnot11 = xor i1 %6, true, !dbg !5860
  %lnot12 = xor i1 %lnot11, true, !dbg !5860
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5860
  %conv13 = sext i32 %lnot.ext to i64, !dbg !5860
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5860
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5860
  br i1 %tobool14, label %if.then, label %if.end, !dbg !5858

if.then:                                          ; preds = %land.end
  store i8 1, ptr @drm_gem_fb_get_obj.__already_done, align 1, !dbg !5863
  store i8 1, ptr %__ret_once, align 1, !dbg !5863
  br label %if.end, !dbg !5863

if.end:                                           ; preds = %if.then, %land.end
  %7 = load i8, ptr %__ret_once, align 1, !dbg !5858, !range !5859, !noundef !1029
  %tobool15 = trunc i8 %7 to i1, !dbg !5858
  %lnot16 = xor i1 %tobool15, true, !dbg !5858
  %lnot18 = xor i1 %lnot16, true, !dbg !5858
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5858
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5858
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !5858
  store i64 %expval21, ptr %tmp, align 8, !dbg !5860
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !5865
  %8 = load i64, ptr %tmp, align 8, !dbg !5858
  %tobool22 = icmp ne i64 %8, 0, !dbg !5865
  br i1 %tobool22, label %if.then23, label %if.end63, !dbg !5857

if.then23:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5866
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5725, metadata !DIExpression()), !dbg !5866
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5866
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5867
  %tobool24 = icmp ne i32 %9, 0, !dbg !5867
  %lnot25 = xor i1 %tobool24, true, !dbg !5867
  %lnot27 = xor i1 %lnot25, true, !dbg !5867
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5867
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5867
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5867
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !5867
  br i1 %tobool31, label %if.then32, label %if.end54, !dbg !5866

if.then32:                                        ; preds = %if.then23
  br label %do.body, !dbg !5867

do.body:                                          ; preds = %if.then32
  br label %do.body33, !dbg !5868

do.body33:                                        ; preds = %do.body
  br label %do.cond, !dbg !5869

do.cond:                                          ; preds = %do.body33
  br label %do.end, !dbg !5869

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %dev, align 8, !dbg !5868
  %dev34 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2, !dbg !5868
  %11 = load ptr, ptr %dev34, align 8, !dbg !5868
  %call = call ptr @dev_driver_string(ptr noundef %11) #16, !dbg !5868
  %12 = load ptr, ptr %dev, align 8, !dbg !5868
  %dev35 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2, !dbg !5868
  %13 = load ptr, ptr %dev35, align 8, !dbg !5868
  %call36 = call ptr @dev_name(ptr noundef %13) #16, !dbg !5868
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef %call, ptr noundef %call36, ptr noundef @.str.1) #16, !dbg !5868
  br label %do.body37, !dbg !5868

do.body37:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5727, metadata !DIExpression()), !dbg !5871
  store i32 2313, ptr %__flags, align 4, !dbg !5871
  br label %do.body38, !dbg !5871

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5872

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5872

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !5871

do.body41:                                        ; preds = %do.end40
  %14 = load i32, ptr %__flags, align 4, !dbg !5874
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 58, i32 %14, i64 12) #15, !dbg !5874, !srcloc !5876
  br label %do.cond42, !dbg !5874

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5874

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !5871

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !5877

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5877

do.end46:                                         ; preds = %do.cond45
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5868
  br label %do.cond47, !dbg !5871

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !5871

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !5868

do.body49:                                        ; preds = %do.end48
  br label %do.cond50, !dbg !5879

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !5879

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !5868

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !5868

do.end53:                                         ; preds = %do.cond52
  br label %if.end54, !dbg !5868

if.end54:                                         ; preds = %do.end53, %if.then23
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !5866
  %tobool56 = icmp ne i32 %15, 0, !dbg !5866
  %lnot57 = xor i1 %tobool56, true, !dbg !5866
  %lnot59 = xor i1 %lnot57, true, !dbg !5866
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !5866
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !5866
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !5866
  store i64 %expval62, ptr %tmp55, align 8, !dbg !5867
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5865
  %16 = load i64, ptr %tmp55, align 8, !dbg !5866
  br label %if.end63, !dbg !5865

if.end63:                                         ; preds = %if.end54, %if.end
  %17 = load i8, ptr %__ret_do_once, align 1, !dbg !5857, !range !5859, !noundef !1029
  %tobool65 = trunc i8 %17 to i1, !dbg !5857
  %lnot66 = xor i1 %tobool65, true, !dbg !5857
  %lnot68 = xor i1 %lnot66, true, !dbg !5857
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !5857
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !5857
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 0), !dbg !5857
  store i64 %expval71, ptr %tmp64, align 8, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5881
  %18 = load i64, ptr %tmp64, align 8, !dbg !5857
  %tobool72 = icmp ne i64 %18, 0, !dbg !5881
  br i1 %tobool72, label %if.then73, label %if.else, !dbg !5882

if.then73:                                        ; preds = %if.end63
  store ptr null, ptr %retval, align 8, !dbg !5883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5883

if.else:                                          ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once74) #15, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once74, metadata !5731, metadata !DIExpression()), !dbg !5884
  %19 = load ptr, ptr %fb.addr, align 8, !dbg !5884
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 15, !dbg !5884
  %20 = load i32, ptr %plane.addr, align 4, !dbg !5884
  %idxprom = zext i32 %20 to i64, !dbg !5884
  %arrayidx = getelementptr [4 x ptr], ptr %obj, i64 0, i64 %idxprom, !dbg !5884
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !5884
  %tobool75 = icmp ne ptr %21, null, !dbg !5884
  %lnot76 = xor i1 %tobool75, true, !dbg !5884
  %lnot78 = xor i1 %lnot76, true, !dbg !5884
  %lnot80 = xor i1 %lnot78, true, !dbg !5884
  %frombool82 = zext i1 %lnot80 to i8, !dbg !5884
  store i8 %frombool82, ptr %__ret_do_once74, align 1, !dbg !5884
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond83) #15, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %__ret_cond83, metadata !5734, metadata !DIExpression()), !dbg !5885
  %22 = load i8, ptr %__ret_do_once74, align 1, !dbg !5885, !range !5859, !noundef !1029
  %tobool84 = trunc i8 %22 to i1, !dbg !5885
  %lnot85 = xor i1 %tobool84, true, !dbg !5885
  %lnot87 = xor i1 %lnot85, true, !dbg !5885
  %frombool89 = zext i1 %lnot87 to i8, !dbg !5885
  store i8 %frombool89, ptr %__ret_cond83, align 1, !dbg !5885
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once90) #15, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %__ret_once90, metadata !5737, metadata !DIExpression()), !dbg !5885
  store i8 0, ptr %__ret_once90, align 1, !dbg !5885
  %23 = load i8, ptr %__ret_cond83, align 1, !dbg !5886, !range !5859, !noundef !1029
  %tobool91 = trunc i8 %23 to i1, !dbg !5886
  br i1 %tobool91, label %land.rhs93, label %land.end97, !dbg !5886

land.rhs93:                                       ; preds = %if.else
  %24 = load i8, ptr @drm_gem_fb_get_obj.__already_done.3, align 1, !dbg !5886, !range !5859, !noundef !1029
  %tobool94 = trunc i8 %24 to i1, !dbg !5886
  %lnot95 = xor i1 %tobool94, true, !dbg !5886
  br label %land.end97

land.end97:                                       ; preds = %land.rhs93, %if.else
  %25 = phi i1 [ false, %if.else ], [ %lnot95, %land.rhs93 ], !dbg !5888
  %lnot98 = xor i1 %25, true, !dbg !5886
  %lnot100 = xor i1 %lnot98, true, !dbg !5886
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !5886
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !5886
  %expval103 = call i64 @llvm.expect.i64(i64 %conv102, i64 0), !dbg !5886
  %tobool104 = icmp ne i64 %expval103, 0, !dbg !5886
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !5885

if.then105:                                       ; preds = %land.end97
  store i8 1, ptr @drm_gem_fb_get_obj.__already_done.3, align 1, !dbg !5889
  store i8 1, ptr %__ret_once90, align 1, !dbg !5889
  br label %if.end106, !dbg !5889

if.end106:                                        ; preds = %if.then105, %land.end97
  %26 = load i8, ptr %__ret_once90, align 1, !dbg !5885, !range !5859, !noundef !1029
  %tobool108 = trunc i8 %26 to i1, !dbg !5885
  %lnot109 = xor i1 %tobool108, true, !dbg !5885
  %lnot111 = xor i1 %lnot109, true, !dbg !5885
  %lnot.ext112 = zext i1 %lnot111 to i32, !dbg !5885
  %conv113 = sext i32 %lnot.ext112 to i64, !dbg !5885
  %expval114 = call i64 @llvm.expect.i64(i64 %conv113, i64 0), !dbg !5885
  store i64 %expval114, ptr %tmp107, align 8, !dbg !5886
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once90) #15, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond83) #15, !dbg !5891
  %27 = load i64, ptr %tmp107, align 8, !dbg !5885
  %tobool115 = icmp ne i64 %27, 0, !dbg !5891
  br i1 %tobool115, label %if.then116, label %if.end162, !dbg !5884

if.then116:                                       ; preds = %if.end106
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on117) #15, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on117, metadata !5738, metadata !DIExpression()), !dbg !5892
  store i32 1, ptr %__ret_warn_on117, align 4, !dbg !5892
  %28 = load i32, ptr %__ret_warn_on117, align 4, !dbg !5893
  %tobool118 = icmp ne i32 %28, 0, !dbg !5893
  %lnot119 = xor i1 %tobool118, true, !dbg !5893
  %lnot121 = xor i1 %lnot119, true, !dbg !5893
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !5893
  %conv123 = sext i32 %lnot.ext122 to i64, !dbg !5893
  %expval124 = call i64 @llvm.expect.i64(i64 %conv123, i64 0), !dbg !5893
  %tobool125 = icmp ne i64 %expval124, 0, !dbg !5893
  br i1 %tobool125, label %if.then126, label %if.end153, !dbg !5892

if.then126:                                       ; preds = %if.then116
  br label %do.body127, !dbg !5893

do.body127:                                       ; preds = %if.then126
  br label %do.body128, !dbg !5894

do.body128:                                       ; preds = %do.body127
  br label %do.cond129, !dbg !5895

do.cond129:                                       ; preds = %do.body128
  br label %do.end130, !dbg !5895

do.end130:                                        ; preds = %do.cond129
  %29 = load ptr, ptr %dev, align 8, !dbg !5894
  %dev131 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2, !dbg !5894
  %30 = load ptr, ptr %dev131, align 8, !dbg !5894
  %call132 = call ptr @dev_driver_string(ptr noundef %30) #16, !dbg !5894
  %31 = load ptr, ptr %dev, align 8, !dbg !5894
  %dev133 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 2, !dbg !5894
  %32 = load ptr, ptr %dev133, align 8, !dbg !5894
  %call134 = call ptr @dev_name(ptr noundef %32) #16, !dbg !5894
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef %call132, ptr noundef %call134, ptr noundef @.str.4) #16, !dbg !5894
  br label %do.body135, !dbg !5894

do.body135:                                       ; preds = %do.end130
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags136) #15, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %__flags136, metadata !5740, metadata !DIExpression()), !dbg !5897
  store i32 2313, ptr %__flags136, align 4, !dbg !5897
  br label %do.body137, !dbg !5897

do.body137:                                       ; preds = %do.body135
  br label %do.cond138, !dbg !5898

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !5898

do.end139:                                        ; preds = %do.cond138
  br label %do.body140, !dbg !5897

do.body140:                                       ; preds = %do.end139
  %33 = load i32, ptr %__flags136, align 4, !dbg !5900
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 60, i32 %33, i64 12) #15, !dbg !5900, !srcloc !5902
  br label %do.cond141, !dbg !5900

do.cond141:                                       ; preds = %do.body140
  br label %do.end142, !dbg !5900

do.end142:                                        ; preds = %do.cond141
  br label %do.body143, !dbg !5897

do.body143:                                       ; preds = %do.end142
  br label %do.cond144, !dbg !5903

do.cond144:                                       ; preds = %do.body143
  br label %do.end145, !dbg !5903

do.end145:                                        ; preds = %do.cond144
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags136) #15, !dbg !5894
  br label %do.cond146, !dbg !5897

do.cond146:                                       ; preds = %do.end145
  br label %do.end147, !dbg !5897

do.end147:                                        ; preds = %do.cond146
  br label %do.body148, !dbg !5894

do.body148:                                       ; preds = %do.end147
  br label %do.cond149, !dbg !5905

do.cond149:                                       ; preds = %do.body148
  br label %do.end150, !dbg !5905

do.end150:                                        ; preds = %do.cond149
  br label %do.cond151, !dbg !5894

do.cond151:                                       ; preds = %do.end150
  br label %do.end152, !dbg !5894

do.end152:                                        ; preds = %do.cond151
  br label %if.end153, !dbg !5894

if.end153:                                        ; preds = %do.end152, %if.then116
  %34 = load i32, ptr %__ret_warn_on117, align 4, !dbg !5892
  %tobool155 = icmp ne i32 %34, 0, !dbg !5892
  %lnot156 = xor i1 %tobool155, true, !dbg !5892
  %lnot158 = xor i1 %lnot156, true, !dbg !5892
  %lnot.ext159 = zext i1 %lnot158 to i32, !dbg !5892
  %conv160 = sext i32 %lnot.ext159 to i64, !dbg !5892
  %expval161 = call i64 @llvm.expect.i64(i64 %conv160, i64 0), !dbg !5892
  store i64 %expval161, ptr %tmp154, align 8, !dbg !5893
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on117) #15, !dbg !5891
  %35 = load i64, ptr %tmp154, align 8, !dbg !5892
  br label %if.end162, !dbg !5891

if.end162:                                        ; preds = %if.end153, %if.end106
  %36 = load i8, ptr %__ret_do_once74, align 1, !dbg !5884, !range !5859, !noundef !1029
  %tobool164 = trunc i8 %36 to i1, !dbg !5884
  %lnot165 = xor i1 %tobool164, true, !dbg !5884
  %lnot167 = xor i1 %lnot165, true, !dbg !5884
  %lnot.ext168 = zext i1 %lnot167 to i32, !dbg !5884
  %conv169 = sext i32 %lnot.ext168 to i64, !dbg !5884
  %expval170 = call i64 @llvm.expect.i64(i64 %conv169, i64 0), !dbg !5884
  store i64 %expval170, ptr %tmp163, align 8, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once74) #15, !dbg !5907
  %37 = load i64, ptr %tmp163, align 8, !dbg !5884
  %tobool171 = icmp ne i64 %37, 0, !dbg !5907
  br i1 %tobool171, label %if.then172, label %if.end173, !dbg !5908

if.then172:                                       ; preds = %if.end162
  store ptr null, ptr %retval, align 8, !dbg !5909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5909

if.end173:                                        ; preds = %if.end162
  br label %if.end174

if.end174:                                        ; preds = %if.end173
  %38 = load ptr, ptr %fb.addr, align 8, !dbg !5910
  %obj175 = getelementptr inbounds %struct.drm_framebuffer, ptr %38, i32 0, i32 15, !dbg !5911
  %39 = load i32, ptr %plane.addr, align 4, !dbg !5912
  %idxprom176 = zext i32 %39 to i64, !dbg !5910
  %arrayidx177 = getelementptr [4 x ptr], ptr %obj175, i64 0, i64 %idxprom176, !dbg !5910
  %40 = load ptr, ptr %arrayidx177, align 8, !dbg !5910
  store ptr %40, ptr %retval, align 8, !dbg !5913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5913

cleanup:                                          ; preds = %if.end174, %if.then172, %if.then73
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5914
  %41 = load ptr, ptr %retval, align 8, !dbg !5914
  ret ptr %41, !dbg !5914
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5915 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5918 dso_local ptr @dev_driver_string(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !5921 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5925
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5927
  %1 = load ptr, ptr %init_name, align 8, !dbg !5927
  %tobool = icmp ne ptr %1, null, !dbg !5925
  br i1 %tobool, label %if.then, label %if.end, !dbg !5928

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5929
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !5930
  %3 = load ptr, ptr %init_name1, align 8, !dbg !5930
  store ptr %3, ptr %retval, align 8, !dbg !5931
  br label %return, !dbg !5931

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5932
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5933
  %call = call ptr @kobject_name(ptr noundef %kobj) #16, !dbg !5934
  store ptr %call, ptr %retval, align 8, !dbg !5935
  br label %return, !dbg !5935

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5936
  ret ptr %5, !dbg !5936
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_fb_destroy(ptr noundef %fb) #0 align 16 !dbg !5937 {
entry:
  %fb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !5939, metadata !DIExpression()), !dbg !5941
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5940, metadata !DIExpression()), !dbg !5943
  store i32 0, ptr %i, align 4, !dbg !5944
  br label %for.cond, !dbg !5946

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5947
  %1 = load ptr, ptr %fb.addr, align 8, !dbg !5949
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4, !dbg !5950
  %2 = load ptr, ptr %format, align 8, !dbg !5950
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %2, i32 0, i32 2, !dbg !5951
  %3 = load i8, ptr %num_planes, align 1, !dbg !5951
  %conv = zext i8 %3 to i32, !dbg !5949
  %cmp = icmp ult i32 %0, %conv, !dbg !5952
  br i1 %cmp, label %for.body, label %for.end, !dbg !5953

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fb.addr, align 8, !dbg !5954
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 15, !dbg !5955
  %5 = load i32, ptr %i, align 4, !dbg !5956
  %idxprom = zext i32 %5 to i64, !dbg !5954
  %arrayidx = getelementptr [4 x ptr], ptr %obj, i64 0, i64 %idxprom, !dbg !5954
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !5954
  call void @drm_gem_object_put(ptr noundef %6) #16, !dbg !5957
  br label %for.inc, !dbg !5957

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !5958
  %inc = add i32 %7, 1, !dbg !5958
  store i32 %inc, ptr %i, align 4, !dbg !5958
  br label %for.cond, !dbg !5959, !llvm.loop !5960

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %fb.addr, align 8, !dbg !5964
  call void @drm_framebuffer_cleanup(ptr noundef %8) #16, !dbg !5965
  %9 = load ptr, ptr %fb.addr, align 8, !dbg !5966
  call void @kfree(ptr noundef %9) #16, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5968
  ret void, !dbg !5968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_gem_object_put(ptr noundef %obj) #5 align 16 !dbg !5969 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5973
  %tobool = icmp ne ptr %0, null, !dbg !5973
  br i1 %tobool, label %if.then, label %if.end, !dbg !5975

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !5976
  call void @__drm_gem_object_put(ptr noundef %1) #16, !dbg !5977
  br label %if.end, !dbg !5977

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5978
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5979 dso_local void @drm_framebuffer_cleanup(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5980 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_fb_create_handle(ptr noundef %fb, ptr noundef %file, ptr noundef %handle) #0 align 16 !dbg !5983 {
entry:
  %fb.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !5985, metadata !DIExpression()), !dbg !5988
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5986, metadata !DIExpression()), !dbg !5989
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5987, metadata !DIExpression()), !dbg !5990
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5991
  %1 = load ptr, ptr %fb.addr, align 8, !dbg !5992
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 15, !dbg !5993
  %arrayidx = getelementptr [4 x ptr], ptr %obj, i64 0, i64 0, !dbg !5992
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !5992
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !5994
  %call = call i32 @drm_gem_handle_create(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !5995
  ret i32 %call, !dbg !5996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5997 dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_fb_init_with_funcs(ptr noundef %dev, ptr noundef %fb, ptr noundef %file, ptr noundef %mode_cmd, ptr noundef %funcs) #0 align 16 !dbg !6000 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  %funcs.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %objs = alloca [4 x ptr], align 16
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %min_size = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6004, metadata !DIExpression()), !dbg !6020
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6005, metadata !DIExpression()), !dbg !6021
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6006, metadata !DIExpression()), !dbg !6022
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !6007, metadata !DIExpression()), !dbg !6023
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !6008, metadata !DIExpression()), !dbg !6024
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6009, metadata !DIExpression()), !dbg !6026
  call void @llvm.lifetime.start.p0(i64 32, ptr %objs) #15, !dbg !6027
  call void @llvm.dbg.declare(metadata ptr %objs, metadata !6010, metadata !DIExpression()), !dbg !6028
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6011, metadata !DIExpression()), !dbg !6030
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6012, metadata !DIExpression()), !dbg !6032
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6033
  %1 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6034
  %call = call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %1) #16, !dbg !6035
  store ptr %call, ptr %info, align 8, !dbg !6036
  %2 = load ptr, ptr %info, align 8, !dbg !6037
  %tobool = icmp ne ptr %2, null, !dbg !6037
  br i1 %tobool, label %if.end, label %if.then, !dbg !6039

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6040
  %tobool1 = icmp ne ptr %3, null, !dbg !6040
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !6040

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6040
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2, !dbg !6040
  %5 = load ptr, ptr %dev2, align 8, !dbg !6040
  br label %cond.end, !dbg !6040

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !6040

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !6040
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str.5) #16, !dbg !6040
  store i32 -22, ptr %retval, align 4, !dbg !6042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !6042

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6043
  %call3 = call zeroext i1 @drm_drv_uses_atomic_modeset(ptr noundef %6) #16, !dbg !6045
  br i1 %call3, label %land.lhs.true, label %if.end15, !dbg !6046

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6047
  %8 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6048
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %8, i32 0, i32 3, !dbg !6049
  %9 = load i32, ptr %pixel_format, align 4, !dbg !6049
  %10 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6050
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %10, i32 0, i32 8, !dbg !6051
  %arrayidx = getelementptr [4 x i64], ptr %modifier, i64 0, i64 0, !dbg !6050
  %11 = load i64, ptr %arrayidx, align 8, !dbg !6050
  %call4 = call zeroext i1 @drm_any_plane_has_format(ptr noundef %7, i32 noundef %9, i64 noundef %11) #16, !dbg !6052
  br i1 %call4, label %if.end15, label %if.then5, !dbg !6053

if.then5:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !6054
  %tobool6 = icmp ne ptr %12, null, !dbg !6054
  br i1 %tobool6, label %cond.true7, label %cond.false9, !dbg !6054

cond.true7:                                       ; preds = %if.then5
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !6054
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2, !dbg !6054
  %14 = load ptr, ptr %dev8, align 8, !dbg !6054
  br label %cond.end10, !dbg !6054

cond.false9:                                      ; preds = %if.then5
  br label %cond.end10, !dbg !6054

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi ptr [ %14, %cond.true7 ], [ null, %cond.false9 ], !dbg !6054
  %15 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6054
  %pixel_format12 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %15, i32 0, i32 3, !dbg !6054
  %16 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6054
  %modifier13 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %16, i32 0, i32 8, !dbg !6054
  %arrayidx14 = getelementptr [4 x i64], ptr %modifier13, i64 0, i64 0, !dbg !6054
  %17 = load i64, ptr %arrayidx14, align 8, !dbg !6054
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond11, i32 noundef 2, ptr noundef @.str.6, ptr noundef %pixel_format12, i64 noundef %17) #16, !dbg !6054
  store i32 -22, ptr %retval, align 4, !dbg !6056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !6056

if.end15:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %i, align 4, !dbg !6057
  br label %for.cond, !dbg !6058

for.cond:                                         ; preds = %for.inc, %if.end15
  %18 = load i32, ptr %i, align 4, !dbg !6059
  %19 = load ptr, ptr %info, align 8, !dbg !6060
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %19, i32 0, i32 2, !dbg !6061
  %20 = load i8, ptr %num_planes, align 1, !dbg !6061
  %conv = zext i8 %20 to i32, !dbg !6060
  %cmp = icmp ult i32 %18, %conv, !dbg !6062
  br i1 %cmp, label %for.body, label %for.end, !dbg !6063

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #15, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %width, metadata !6013, metadata !DIExpression()), !dbg !6065
  %21 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6066
  %width17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %21, i32 0, i32 1, !dbg !6067
  %22 = load i32, ptr %width17, align 4, !dbg !6067
  %23 = load i32, ptr %i, align 4, !dbg !6068
  %tobool18 = icmp ne i32 %23, 0, !dbg !6068
  br i1 %tobool18, label %cond.true19, label %cond.false21, !dbg !6068

cond.true19:                                      ; preds = %for.body
  %24 = load ptr, ptr %info, align 8, !dbg !6069
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 6, !dbg !6070
  %25 = load i8, ptr %hsub, align 2, !dbg !6070
  %conv20 = zext i8 %25 to i32, !dbg !6069
  br label %cond.end22, !dbg !6068

cond.false21:                                     ; preds = %for.body
  br label %cond.end22, !dbg !6068

cond.end22:                                       ; preds = %cond.false21, %cond.true19
  %cond23 = phi i32 [ %conv20, %cond.true19 ], [ 1, %cond.false21 ], !dbg !6068
  %div = udiv i32 %22, %cond23, !dbg !6071
  store i32 %div, ptr %width, align 4, !dbg !6065
  call void @llvm.lifetime.start.p0(i64 4, ptr %height) #15, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %height, metadata !6017, metadata !DIExpression()), !dbg !6073
  %26 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6074
  %height24 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %26, i32 0, i32 2, !dbg !6075
  %27 = load i32, ptr %height24, align 8, !dbg !6075
  %28 = load i32, ptr %i, align 4, !dbg !6076
  %tobool25 = icmp ne i32 %28, 0, !dbg !6076
  br i1 %tobool25, label %cond.true26, label %cond.false28, !dbg !6076

cond.true26:                                      ; preds = %cond.end22
  %29 = load ptr, ptr %info, align 8, !dbg !6077
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %29, i32 0, i32 7, !dbg !6078
  %30 = load i8, ptr %vsub, align 1, !dbg !6078
  %conv27 = zext i8 %30 to i32, !dbg !6077
  br label %cond.end29, !dbg !6076

cond.false28:                                     ; preds = %cond.end22
  br label %cond.end29, !dbg !6076

cond.end29:                                       ; preds = %cond.false28, %cond.true26
  %cond30 = phi i32 [ %conv27, %cond.true26 ], [ 1, %cond.false28 ], !dbg !6076
  %div31 = udiv i32 %27, %cond30, !dbg !6079
  store i32 %div31, ptr %height, align 4, !dbg !6073
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_size) #15, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %min_size, metadata !6018, metadata !DIExpression()), !dbg !6081
  %31 = load ptr, ptr %file.addr, align 8, !dbg !6082
  %32 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6083
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %32, i32 0, i32 5, !dbg !6084
  %33 = load i32, ptr %i, align 4, !dbg !6085
  %idxprom = zext i32 %33 to i64, !dbg !6083
  %arrayidx32 = getelementptr [4 x i32], ptr %handles, i64 0, i64 %idxprom, !dbg !6083
  %34 = load i32, ptr %arrayidx32, align 4, !dbg !6083
  %call33 = call ptr @drm_gem_object_lookup(ptr noundef %31, i32 noundef %34) #16, !dbg !6086
  %35 = load i32, ptr %i, align 4, !dbg !6087
  %idxprom34 = zext i32 %35 to i64, !dbg !6088
  %arrayidx35 = getelementptr [4 x ptr], ptr %objs, i64 0, i64 %idxprom34, !dbg !6088
  store ptr %call33, ptr %arrayidx35, align 8, !dbg !6089
  %36 = load i32, ptr %i, align 4, !dbg !6090
  %idxprom36 = zext i32 %36 to i64, !dbg !6092
  %arrayidx37 = getelementptr [4 x ptr], ptr %objs, i64 0, i64 %idxprom36, !dbg !6092
  %37 = load ptr, ptr %arrayidx37, align 8, !dbg !6092
  %tobool38 = icmp ne ptr %37, null, !dbg !6092
  br i1 %tobool38, label %if.end46, label %if.then39, !dbg !6093

if.then39:                                        ; preds = %cond.end29
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !6094
  %tobool40 = icmp ne ptr %38, null, !dbg !6094
  br i1 %tobool40, label %cond.true41, label %cond.false43, !dbg !6094

cond.true41:                                      ; preds = %if.then39
  %39 = load ptr, ptr %dev.addr, align 8, !dbg !6094
  %dev42 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2, !dbg !6094
  %40 = load ptr, ptr %dev42, align 8, !dbg !6094
  br label %cond.end44, !dbg !6094

cond.false43:                                     ; preds = %if.then39
  br label %cond.end44, !dbg !6094

cond.end44:                                       ; preds = %cond.false43, %cond.true41
  %cond45 = phi ptr [ %40, %cond.true41 ], [ null, %cond.false43 ], !dbg !6094
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond45, i32 noundef 2, ptr noundef @.str.7) #16, !dbg !6094
  store i32 -2, ptr %ret, align 4, !dbg !6096
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6097

if.end46:                                         ; preds = %cond.end29
  %41 = load i32, ptr %height, align 4, !dbg !6098
  %sub = sub i32 %41, 1, !dbg !6099
  %42 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6100
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %42, i32 0, i32 6, !dbg !6101
  %43 = load i32, ptr %i, align 4, !dbg !6102
  %idxprom47 = zext i32 %43 to i64, !dbg !6100
  %arrayidx48 = getelementptr [4 x i32], ptr %pitches, i64 0, i64 %idxprom47, !dbg !6100
  %44 = load i32, ptr %arrayidx48, align 4, !dbg !6100
  %mul = mul i32 %sub, %44, !dbg !6103
  %conv49 = zext i32 %mul to i64, !dbg !6104
  %45 = load ptr, ptr %info, align 8, !dbg !6105
  %46 = load i32, ptr %i, align 4, !dbg !6106
  %47 = load i32, ptr %width, align 4, !dbg !6107
  %call50 = call i64 @drm_format_info_min_pitch(ptr noundef %45, i32 noundef %46, i32 noundef %47) #16, !dbg !6108
  %add = add i64 %conv49, %call50, !dbg !6109
  %48 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6110
  %offsets = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %48, i32 0, i32 7, !dbg !6111
  %49 = load i32, ptr %i, align 4, !dbg !6112
  %idxprom51 = zext i32 %49 to i64, !dbg !6110
  %arrayidx52 = getelementptr [4 x i32], ptr %offsets, i64 0, i64 %idxprom51, !dbg !6110
  %50 = load i32, ptr %arrayidx52, align 4, !dbg !6110
  %conv53 = zext i32 %50 to i64, !dbg !6110
  %add54 = add i64 %add, %conv53, !dbg !6113
  %conv55 = trunc i64 %add54 to i32, !dbg !6104
  store i32 %conv55, ptr %min_size, align 4, !dbg !6114
  %51 = load i32, ptr %i, align 4, !dbg !6115
  %idxprom56 = zext i32 %51 to i64, !dbg !6117
  %arrayidx57 = getelementptr [4 x ptr], ptr %objs, i64 0, i64 %idxprom56, !dbg !6117
  %52 = load ptr, ptr %arrayidx57, align 8, !dbg !6117
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %52, i32 0, i32 5, !dbg !6118
  %53 = load i64, ptr %size, align 8, !dbg !6118
  %54 = load i32, ptr %min_size, align 4, !dbg !6119
  %conv58 = zext i32 %54 to i64, !dbg !6119
  %cmp59 = icmp ult i64 %53, %conv58, !dbg !6120
  br i1 %cmp59, label %if.then61, label %if.end73, !dbg !6121

if.then61:                                        ; preds = %if.end46
  %55 = load ptr, ptr %dev.addr, align 8, !dbg !6122
  %tobool62 = icmp ne ptr %55, null, !dbg !6122
  br i1 %tobool62, label %cond.true63, label %cond.false65, !dbg !6122

cond.true63:                                      ; preds = %if.then61
  %56 = load ptr, ptr %dev.addr, align 8, !dbg !6122
  %dev64 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 2, !dbg !6122
  %57 = load ptr, ptr %dev64, align 8, !dbg !6122
  br label %cond.end66, !dbg !6122

cond.false65:                                     ; preds = %if.then61
  br label %cond.end66, !dbg !6122

cond.end66:                                       ; preds = %cond.false65, %cond.true63
  %cond67 = phi ptr [ %57, %cond.true63 ], [ null, %cond.false65 ], !dbg !6122
  %58 = load i32, ptr %i, align 4, !dbg !6122
  %idxprom68 = zext i32 %58 to i64, !dbg !6122
  %arrayidx69 = getelementptr [4 x ptr], ptr %objs, i64 0, i64 %idxprom68, !dbg !6122
  %59 = load ptr, ptr %arrayidx69, align 8, !dbg !6122
  %size70 = getelementptr inbounds %struct.drm_gem_object, ptr %59, i32 0, i32 5, !dbg !6122
  %60 = load i64, ptr %size70, align 8, !dbg !6122
  %61 = load i32, ptr %min_size, align 4, !dbg !6122
  %62 = load i32, ptr %i, align 4, !dbg !6122
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond67, i32 noundef 2, ptr noundef @.str.8, i64 noundef %60, i32 noundef %61, i32 noundef %62) #16, !dbg !6122
  %63 = load i32, ptr %i, align 4, !dbg !6124
  %idxprom71 = zext i32 %63 to i64, !dbg !6125
  %arrayidx72 = getelementptr [4 x ptr], ptr %objs, i64 0, i64 %idxprom71, !dbg !6125
  %64 = load ptr, ptr %arrayidx72, align 8, !dbg !6125
  call void @drm_gem_object_put(ptr noundef %64) #16, !dbg !6126
  store i32 -22, ptr %ret, align 4, !dbg !6127
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6128

if.end73:                                         ; preds = %if.end46
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6129
  br label %cleanup, !dbg !6129

cleanup:                                          ; preds = %cond.end66, %cond.end44, %if.end73
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_size) #15, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 4, ptr %height) #15, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #15, !dbg !6129
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup84 [
    i32 0, label %cleanup.cont
    i32 5, label %err_gem_object_put
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6130

for.inc:                                          ; preds = %cleanup.cont
  %65 = load i32, ptr %i, align 4, !dbg !6131
  %inc = add i32 %65, 1, !dbg !6131
  store i32 %inc, ptr %i, align 4, !dbg !6131
  br label %for.cond, !dbg !6132, !llvm.loop !6133

for.end:                                          ; preds = %for.cond
  %66 = load ptr, ptr %dev.addr, align 8, !dbg !6135
  %67 = load ptr, ptr %fb.addr, align 8, !dbg !6136
  %68 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6137
  %arraydecay = getelementptr inbounds [4 x ptr], ptr %objs, i64 0, i64 0, !dbg !6138
  %69 = load i32, ptr %i, align 4, !dbg !6139
  %70 = load ptr, ptr %funcs.addr, align 8, !dbg !6140
  %call76 = call i32 @drm_gem_fb_init(ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %arraydecay, i32 noundef %69, ptr noundef %70) #16, !dbg !6141
  store i32 %call76, ptr %ret, align 4, !dbg !6142
  %71 = load i32, ptr %ret, align 4, !dbg !6143
  %tobool77 = icmp ne i32 %71, 0, !dbg !6143
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !6145

if.then78:                                        ; preds = %for.end
  br label %err_gem_object_put, !dbg !6146

if.end79:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !6147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !6147

err_gem_object_put:                               ; preds = %cleanup, %if.then78
  call void @llvm.dbg.label(metadata !6019), !dbg !6148
  br label %while.cond, !dbg !6149

while.cond:                                       ; preds = %while.body, %err_gem_object_put
  %72 = load i32, ptr %i, align 4, !dbg !6150
  %cmp80 = icmp ugt i32 %72, 0, !dbg !6151
  br i1 %cmp80, label %while.body, label %while.end, !dbg !6149

while.body:                                       ; preds = %while.cond
  %73 = load i32, ptr %i, align 4, !dbg !6152
  %dec = add i32 %73, -1, !dbg !6152
  store i32 %dec, ptr %i, align 4, !dbg !6152
  %74 = load i32, ptr %i, align 4, !dbg !6154
  %idxprom82 = zext i32 %74 to i64, !dbg !6155
  %arrayidx83 = getelementptr [4 x ptr], ptr %objs, i64 0, i64 %idxprom82, !dbg !6155
  %75 = load ptr, ptr %arrayidx83, align 8, !dbg !6155
  call void @drm_gem_object_put(ptr noundef %75) #16, !dbg !6156
  br label %while.cond, !dbg !6149, !llvm.loop !6157

while.end:                                        ; preds = %while.cond
  %76 = load i32, ptr %ret, align 4, !dbg !6159
  store i32 %76, ptr %retval, align 4, !dbg !6160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !6160

cleanup84:                                        ; preds = %while.end, %if.end79, %cleanup, %cond.end10, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 32, ptr %objs) #15, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !6161
  %77 = load i32, ptr %retval, align 4, !dbg !6161
  ret i32 %77, !dbg !6161
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6162 dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6165 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_drv_uses_atomic_modeset(ptr noundef %dev) #5 align 16 !dbg !6201 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6207
  %call = call zeroext i1 @drm_core_check_feature(ptr noundef %0, i32 noundef 16) #16, !dbg !6208
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !6209

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6210
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 31, !dbg !6211
  %funcs = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 27, !dbg !6212
  %2 = load ptr, ptr %funcs, align 8, !dbg !6212
  %tobool = icmp ne ptr %2, null, !dbg !6210
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6213

land.rhs:                                         ; preds = %lor.rhs
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6214
  %mode_config1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 31, !dbg !6215
  %funcs2 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config1, i32 0, i32 27, !dbg !6216
  %4 = load ptr, ptr %funcs2, align 8, !dbg !6216
  %atomic_commit = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %4, i32 0, i32 5, !dbg !6217
  %5 = load ptr, ptr %atomic_commit, align 8, !dbg !6217
  %cmp = icmp ne ptr %5, null, !dbg !6218
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp, %land.rhs ], !dbg !6219
  br label %lor.end, !dbg !6209

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  ret i1 %7, !dbg !6220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6221 dso_local zeroext i1 @drm_any_plane_has_format(ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6225 dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6228 dso_local i64 @drm_format_info_min_pitch(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_gem_fb_init(ptr noundef %dev, ptr noundef %fb, ptr noundef %mode_cmd, ptr noundef %obj, i32 noundef %num_planes, ptr noundef %funcs) #0 align 16 !dbg !6231 {
entry:
  %dev.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %num_planes.addr = alloca i32, align 4
  %funcs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6236, metadata !DIExpression()), !dbg !6244
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6237, metadata !DIExpression()), !dbg !6245
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !6238, metadata !DIExpression()), !dbg !6246
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !6239, metadata !DIExpression()), !dbg !6247
  store i32 %num_planes, ptr %num_planes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_planes.addr, metadata !6240, metadata !DIExpression()), !dbg !6248
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !6241, metadata !DIExpression()), !dbg !6249
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6242, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6243, metadata !DIExpression()), !dbg !6253
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6254
  %1 = load ptr, ptr %fb.addr, align 8, !dbg !6255
  %2 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6256
  call void @drm_helper_mode_fill_fb_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !6257
  store i32 0, ptr %i, align 4, !dbg !6258
  br label %for.cond, !dbg !6260

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !6261
  %4 = load i32, ptr %num_planes.addr, align 4, !dbg !6263
  %cmp = icmp ult i32 %3, %4, !dbg !6264
  br i1 %cmp, label %for.body, label %for.end, !dbg !6265

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %obj.addr, align 8, !dbg !6266
  %6 = load i32, ptr %i, align 4, !dbg !6267
  %idxprom = zext i32 %6 to i64, !dbg !6266
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !6266
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !6266
  %8 = load ptr, ptr %fb.addr, align 8, !dbg !6268
  %obj1 = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 15, !dbg !6269
  %9 = load i32, ptr %i, align 4, !dbg !6270
  %idxprom2 = zext i32 %9 to i64, !dbg !6268
  %arrayidx3 = getelementptr [4 x ptr], ptr %obj1, i64 0, i64 %idxprom2, !dbg !6268
  store ptr %7, ptr %arrayidx3, align 8, !dbg !6271
  br label %for.inc, !dbg !6268

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !6272
  %inc = add i32 %10, 1, !dbg !6272
  store i32 %inc, ptr %i, align 4, !dbg !6272
  br label %for.cond, !dbg !6273, !llvm.loop !6274

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6276
  %12 = load ptr, ptr %fb.addr, align 8, !dbg !6277
  %13 = load ptr, ptr %funcs.addr, align 8, !dbg !6278
  %call = call i32 @drm_framebuffer_init(ptr noundef %11, ptr noundef %12, ptr noundef %13) #16, !dbg !6279
  store i32 %call, ptr %ret, align 4, !dbg !6280
  %14 = load i32, ptr %ret, align 4, !dbg !6281
  %tobool = icmp ne i32 %14, 0, !dbg !6281
  br i1 %tobool, label %if.then, label %if.end, !dbg !6283

if.then:                                          ; preds = %for.end
  br label %do.body, !dbg !6284

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6286

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6286

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6284
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2, !dbg !6284
  %16 = load ptr, ptr %dev4, align 8, !dbg !6284
  %17 = load i32, ptr %ret, align 4, !dbg !6284
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef @.str.9, i32 noundef %17) #17, !dbg !6284
  br label %if.end, !dbg !6288

if.end:                                           ; preds = %do.end, %for.end
  %18 = load i32, ptr %ret, align 4, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6290
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6290
  ret i32 %18, !dbg !6291
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_gem_fb_create_with_funcs(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd, ptr noundef %funcs) #0 align 16 !dbg !6292 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  %funcs.addr = alloca ptr, align 8
  %fb = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6296, metadata !DIExpression()), !dbg !6302
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6297, metadata !DIExpression()), !dbg !6303
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !6298, metadata !DIExpression()), !dbg !6304
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !6299, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 8, ptr %fb) #15, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %fb, metadata !6300, metadata !DIExpression()), !dbg !6307
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6301, metadata !DIExpression()), !dbg !6309
  %call = call noalias ptr @kzalloc(i64 noundef 200, i32 noundef 3264) #18, !dbg !6310
  store ptr %call, ptr %fb, align 8, !dbg !6311
  %0 = load ptr, ptr %fb, align 8, !dbg !6312
  %tobool = icmp ne ptr %0, null, !dbg !6312
  br i1 %tobool, label %if.end, label %if.then, !dbg !6314

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !6315
  store ptr %call1, ptr %retval, align 8, !dbg !6316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6316

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6317
  %2 = load ptr, ptr %fb, align 8, !dbg !6318
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6319
  %4 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6320
  %5 = load ptr, ptr %funcs.addr, align 8, !dbg !6321
  %call2 = call i32 @drm_gem_fb_init_with_funcs(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #16, !dbg !6322
  store i32 %call2, ptr %ret, align 4, !dbg !6323
  %6 = load i32, ptr %ret, align 4, !dbg !6324
  %tobool3 = icmp ne i32 %6, 0, !dbg !6324
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6326

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %fb, align 8, !dbg !6327
  call void @kfree(ptr noundef %7) #16, !dbg !6329
  %8 = load i32, ptr %ret, align 4, !dbg !6330
  %conv = sext i32 %8 to i64, !dbg !6330
  %call5 = call ptr @ERR_PTR(i64 noundef %conv) #16, !dbg !6331
  store ptr %call5, ptr %retval, align 8, !dbg !6332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6332

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %fb, align 8, !dbg !6333
  store ptr %9, ptr %retval, align 8, !dbg !6334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6334

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 8, ptr %fb) #15, !dbg !6335
  %10 = load ptr, ptr %retval, align 8, !dbg !6335
  ret ptr %10, !dbg !6335
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6336 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6340, metadata !DIExpression()), !dbg !6342
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6341, metadata !DIExpression()), !dbg !6343
  %0 = load i64, ptr %size.addr, align 8, !dbg !6344
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6345
  %or = or i32 %1, 256, !dbg !6346
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !6347
  ret ptr %call, !dbg !6348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !6349 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  %0 = load i64, ptr %error.addr, align 8, !dbg !6356
  %1 = inttoptr i64 %0 to ptr, !dbg !6357
  ret ptr %1, !dbg !6358
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) #0 align 16 !dbg !6359 {
entry:
  %dev.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6361, metadata !DIExpression()), !dbg !6364
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6362, metadata !DIExpression()), !dbg !6365
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !6363, metadata !DIExpression()), !dbg !6366
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6367
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6368
  %2 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6369
  %call = call ptr @drm_gem_fb_create_with_funcs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @drm_gem_fb_funcs) #16, !dbg !6370
  ret ptr %call, !dbg !6371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_gem_fb_create_with_dirty(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) #0 align 16 !dbg !6372 {
entry:
  %dev.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6374, metadata !DIExpression()), !dbg !6377
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6375, metadata !DIExpression()), !dbg !6378
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !6376, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6380
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6381
  %2 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6382
  %call = call ptr @drm_gem_fb_create_with_funcs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @drm_gem_fb_funcs_dirtyfb) #16, !dbg !6383
  ret ptr %call, !dbg !6384
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_fb_vmap(ptr noundef %fb, ptr noundef %map, ptr noundef %data) #0 align 16 !dbg !6385 {
entry:
  %retval = alloca i32, align 4
  %fb.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6389, metadata !DIExpression()), !dbg !6396
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6390, metadata !DIExpression()), !dbg !6397
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6391, metadata !DIExpression()), !dbg !6398
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !6399
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6392, metadata !DIExpression()), !dbg !6400
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6393, metadata !DIExpression()), !dbg !6402
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6394, metadata !DIExpression()), !dbg !6404
  store i32 0, ptr %i, align 4, !dbg !6405
  br label %for.cond, !dbg !6407

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6408
  %1 = load ptr, ptr %fb.addr, align 8, !dbg !6410
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4, !dbg !6411
  %2 = load ptr, ptr %format, align 8, !dbg !6411
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %2, i32 0, i32 2, !dbg !6412
  %3 = load i8, ptr %num_planes, align 1, !dbg !6412
  %conv = zext i8 %3 to i32, !dbg !6410
  %cmp = icmp ult i32 %0, %conv, !dbg !6413
  br i1 %cmp, label %for.body, label %for.end, !dbg !6414

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fb.addr, align 8, !dbg !6415
  %5 = load i32, ptr %i, align 4, !dbg !6417
  %call = call ptr @drm_gem_fb_get_obj(ptr noundef %4, i32 noundef %5) #16, !dbg !6418
  store ptr %call, ptr %obj, align 8, !dbg !6419
  %6 = load ptr, ptr %obj, align 8, !dbg !6420
  %tobool = icmp ne ptr %6, null, !dbg !6420
  br i1 %tobool, label %if.end, label %if.then, !dbg !6422

if.then:                                          ; preds = %for.body
  store i32 -22, ptr %ret, align 4, !dbg !6423
  br label %err_drm_gem_vunmap, !dbg !6425

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %obj, align 8, !dbg !6426
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6427
  %9 = load i32, ptr %i, align 4, !dbg !6428
  %idxprom = zext i32 %9 to i64, !dbg !6427
  %arrayidx = getelementptr %struct.iosys_map, ptr %8, i64 %idxprom, !dbg !6427
  %call2 = call i32 @drm_gem_vmap_unlocked(ptr noundef %7, ptr noundef %arrayidx) #16, !dbg !6429
  store i32 %call2, ptr %ret, align 4, !dbg !6430
  %10 = load i32, ptr %ret, align 4, !dbg !6431
  %tobool3 = icmp ne i32 %10, 0, !dbg !6431
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6433

if.then4:                                         ; preds = %if.end
  br label %err_drm_gem_vunmap, !dbg !6434

if.end5:                                          ; preds = %if.end
  br label %for.inc, !dbg !6435

for.inc:                                          ; preds = %if.end5
  %11 = load i32, ptr %i, align 4, !dbg !6436
  %inc = add i32 %11, 1, !dbg !6436
  store i32 %inc, ptr %i, align 4, !dbg !6436
  br label %for.cond, !dbg !6437, !llvm.loop !6438

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %data.addr, align 8, !dbg !6440
  %tobool6 = icmp ne ptr %12, null, !dbg !6440
  br i1 %tobool6, label %if.then7, label %if.end32, !dbg !6442

if.then7:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !6443
  br label %for.cond8, !dbg !6446

for.cond8:                                        ; preds = %for.inc29, %if.then7
  %13 = load i32, ptr %i, align 4, !dbg !6447
  %14 = load ptr, ptr %fb.addr, align 8, !dbg !6449
  %format9 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 4, !dbg !6450
  %15 = load ptr, ptr %format9, align 8, !dbg !6450
  %num_planes10 = getelementptr inbounds %struct.drm_format_info, ptr %15, i32 0, i32 2, !dbg !6451
  %16 = load i8, ptr %num_planes10, align 1, !dbg !6451
  %conv11 = zext i8 %16 to i32, !dbg !6449
  %cmp12 = icmp ult i32 %13, %conv11, !dbg !6452
  br i1 %cmp12, label %for.body14, label %for.end31, !dbg !6453

for.body14:                                       ; preds = %for.cond8
  %17 = load ptr, ptr %data.addr, align 8, !dbg !6454
  %18 = load i32, ptr %i, align 4, !dbg !6456
  %idxprom15 = zext i32 %18 to i64, !dbg !6454
  %arrayidx16 = getelementptr %struct.iosys_map, ptr %17, i64 %idxprom15, !dbg !6454
  %19 = load ptr, ptr %map.addr, align 8, !dbg !6457
  %20 = load i32, ptr %i, align 4, !dbg !6458
  %idxprom17 = zext i32 %20 to i64, !dbg !6457
  %arrayidx18 = getelementptr %struct.iosys_map, ptr %19, i64 %idxprom17, !dbg !6457
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx16, ptr align 8 %arrayidx18, i64 16, i1 false), !dbg !6459
  %21 = load ptr, ptr %data.addr, align 8, !dbg !6460
  %22 = load i32, ptr %i, align 4, !dbg !6462
  %idxprom19 = zext i32 %22 to i64, !dbg !6460
  %arrayidx20 = getelementptr %struct.iosys_map, ptr %21, i64 %idxprom19, !dbg !6460
  %call21 = call zeroext i1 @iosys_map_is_null(ptr noundef %arrayidx20) #16, !dbg !6463
  br i1 %call21, label %if.then22, label %if.end23, !dbg !6464

if.then22:                                        ; preds = %for.body14
  br label %for.inc29, !dbg !6465

if.end23:                                         ; preds = %for.body14
  %23 = load ptr, ptr %data.addr, align 8, !dbg !6466
  %24 = load i32, ptr %i, align 4, !dbg !6467
  %idxprom24 = zext i32 %24 to i64, !dbg !6466
  %arrayidx25 = getelementptr %struct.iosys_map, ptr %23, i64 %idxprom24, !dbg !6466
  %25 = load ptr, ptr %fb.addr, align 8, !dbg !6468
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 7, !dbg !6469
  %26 = load i32, ptr %i, align 4, !dbg !6470
  %idxprom26 = zext i32 %26 to i64, !dbg !6468
  %arrayidx27 = getelementptr [4 x i32], ptr %offsets, i64 0, i64 %idxprom26, !dbg !6468
  %27 = load i32, ptr %arrayidx27, align 4, !dbg !6468
  %conv28 = zext i32 %27 to i64, !dbg !6468
  call void @iosys_map_incr(ptr noundef %arrayidx25, i64 noundef %conv28) #16, !dbg !6471
  br label %for.inc29, !dbg !6472

for.inc29:                                        ; preds = %if.end23, %if.then22
  %28 = load i32, ptr %i, align 4, !dbg !6473
  %inc30 = add i32 %28, 1, !dbg !6473
  store i32 %inc30, ptr %i, align 4, !dbg !6473
  br label %for.cond8, !dbg !6474, !llvm.loop !6475

for.end31:                                        ; preds = %for.cond8
  br label %if.end32, !dbg !6477

if.end32:                                         ; preds = %for.end31, %for.end
  store i32 0, ptr %retval, align 4, !dbg !6478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6478

err_drm_gem_vunmap:                               ; preds = %if.then4, %if.then
  call void @llvm.dbg.label(metadata !6395), !dbg !6479
  br label %while.cond, !dbg !6480

while.cond:                                       ; preds = %if.end37, %if.then36, %err_drm_gem_vunmap
  %29 = load i32, ptr %i, align 4, !dbg !6481
  %tobool33 = icmp ne i32 %29, 0, !dbg !6480
  br i1 %tobool33, label %while.body, label %while.end, !dbg !6480

while.body:                                       ; preds = %while.cond
  %30 = load i32, ptr %i, align 4, !dbg !6482
  %dec = add i32 %30, -1, !dbg !6482
  store i32 %dec, ptr %i, align 4, !dbg !6482
  %31 = load ptr, ptr %fb.addr, align 8, !dbg !6484
  %32 = load i32, ptr %i, align 4, !dbg !6485
  %call34 = call ptr @drm_gem_fb_get_obj(ptr noundef %31, i32 noundef %32) #16, !dbg !6486
  store ptr %call34, ptr %obj, align 8, !dbg !6487
  %33 = load ptr, ptr %obj, align 8, !dbg !6488
  %tobool35 = icmp ne ptr %33, null, !dbg !6488
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !6490

if.then36:                                        ; preds = %while.body
  br label %while.cond, !dbg !6491, !llvm.loop !6492

if.end37:                                         ; preds = %while.body
  %34 = load ptr, ptr %obj, align 8, !dbg !6494
  %35 = load ptr, ptr %map.addr, align 8, !dbg !6495
  %36 = load i32, ptr %i, align 4, !dbg !6496
  %idxprom38 = zext i32 %36 to i64, !dbg !6495
  %arrayidx39 = getelementptr %struct.iosys_map, ptr %35, i64 %idxprom38, !dbg !6495
  call void @drm_gem_vunmap_unlocked(ptr noundef %34, ptr noundef %arrayidx39) #16, !dbg !6497
  br label %while.cond, !dbg !6480, !llvm.loop !6492

while.end:                                        ; preds = %while.cond
  %37 = load i32, ptr %ret, align 4, !dbg !6498
  store i32 %37, ptr %retval, align 4, !dbg !6499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6499

cleanup:                                          ; preds = %while.end, %if.end32
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6500
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6500
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !6500
  %38 = load i32, ptr %retval, align 4, !dbg !6500
  ret i32 %38, !dbg !6500
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6501 dso_local i32 @drm_gem_vmap_unlocked(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @iosys_map_is_null(ptr noundef %map) #5 align 16 !dbg !6502 {
entry:
  %retval = alloca i1, align 1
  %map.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6510
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !6512
  %1 = load i8, ptr %is_iomem, align 8, !dbg !6512, !range !5859, !noundef !1029
  %tobool = trunc i8 %1 to i1, !dbg !6512
  br i1 %tobool, label %if.then, label %if.end, !dbg !6513

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !dbg !6514
  %3 = getelementptr inbounds %struct.iosys_map, ptr %2, i32 0, i32 0, !dbg !6515
  %4 = load ptr, ptr %3, align 8, !dbg !6515
  %tobool1 = icmp ne ptr %4, null, !dbg !6516
  %lnot = xor i1 %tobool1, true, !dbg !6516
  store i1 %lnot, ptr %retval, align 1, !dbg !6517
  br label %return, !dbg !6517

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %map.addr, align 8, !dbg !6518
  %6 = getelementptr inbounds %struct.iosys_map, ptr %5, i32 0, i32 0, !dbg !6519
  %7 = load ptr, ptr %6, align 8, !dbg !6519
  %tobool2 = icmp ne ptr %7, null, !dbg !6520
  %lnot3 = xor i1 %tobool2, true, !dbg !6520
  store i1 %lnot3, ptr %retval, align 1, !dbg !6521
  br label %return, !dbg !6521

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !6522
  ret i1 %8, !dbg !6522
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_incr(ptr noundef %map, i64 noundef %incr) #5 align 16 !dbg !6523 {
entry:
  %map.addr = alloca ptr, align 8
  %incr.addr = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  store i64 %incr, ptr %incr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %incr.addr, metadata !6528, metadata !DIExpression()), !dbg !6530
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6531
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !6533
  %1 = load i8, ptr %is_iomem, align 8, !dbg !6533, !range !5859, !noundef !1029
  %tobool = trunc i8 %1 to i1, !dbg !6533
  br i1 %tobool, label %if.then, label %if.else, !dbg !6534

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %incr.addr, align 8, !dbg !6535
  %3 = load ptr, ptr %map.addr, align 8, !dbg !6536
  %4 = getelementptr inbounds %struct.iosys_map, ptr %3, i32 0, i32 0, !dbg !6537
  %5 = load ptr, ptr %4, align 8, !dbg !6538
  %add.ptr = getelementptr i8, ptr %5, i64 %2, !dbg !6538
  store ptr %add.ptr, ptr %4, align 8, !dbg !6538
  br label %if.end, !dbg !6536

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %incr.addr, align 8, !dbg !6539
  %7 = load ptr, ptr %map.addr, align 8, !dbg !6540
  %8 = getelementptr inbounds %struct.iosys_map, ptr %7, i32 0, i32 0, !dbg !6541
  %9 = load ptr, ptr %8, align 8, !dbg !6542
  %add.ptr1 = getelementptr i8, ptr %9, i64 %6, !dbg !6542
  store ptr %add.ptr1, ptr %8, align 8, !dbg !6542
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6543
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6544 dso_local void @drm_gem_vunmap_unlocked(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_fb_vunmap(ptr noundef %fb, ptr noundef %map) #0 align 16 !dbg !6545 {
entry:
  %fb.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %obj = alloca ptr, align 8
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6549, metadata !DIExpression()), !dbg !6553
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6550, metadata !DIExpression()), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6555
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6551, metadata !DIExpression()), !dbg !6556
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !6557
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4, !dbg !6558
  %1 = load ptr, ptr %format, align 8, !dbg !6558
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2, !dbg !6559
  %2 = load i8, ptr %num_planes, align 1, !dbg !6559
  %conv = zext i8 %2 to i32, !dbg !6557
  store i32 %conv, ptr %i, align 4, !dbg !6556
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6552, metadata !DIExpression()), !dbg !6561
  br label %while.cond, !dbg !6562

while.cond:                                       ; preds = %if.end4, %if.then3, %if.then, %entry
  %3 = load i32, ptr %i, align 4, !dbg !6563
  %tobool = icmp ne i32 %3, 0, !dbg !6562
  br i1 %tobool, label %while.body, label %while.end, !dbg !6562

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %i, align 4, !dbg !6564
  %dec = add i32 %4, -1, !dbg !6564
  store i32 %dec, ptr %i, align 4, !dbg !6564
  %5 = load ptr, ptr %fb.addr, align 8, !dbg !6566
  %6 = load i32, ptr %i, align 4, !dbg !6567
  %call = call ptr @drm_gem_fb_get_obj(ptr noundef %5, i32 noundef %6) #16, !dbg !6568
  store ptr %call, ptr %obj, align 8, !dbg !6569
  %7 = load ptr, ptr %obj, align 8, !dbg !6570
  %tobool1 = icmp ne ptr %7, null, !dbg !6570
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6572

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !6573, !llvm.loop !6574

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6576
  %9 = load i32, ptr %i, align 4, !dbg !6578
  %idxprom = zext i32 %9 to i64, !dbg !6576
  %arrayidx = getelementptr %struct.iosys_map, ptr %8, i64 %idxprom, !dbg !6576
  %call2 = call zeroext i1 @iosys_map_is_null(ptr noundef %arrayidx) #16, !dbg !6579
  br i1 %call2, label %if.then3, label %if.end4, !dbg !6580

if.then3:                                         ; preds = %if.end
  br label %while.cond, !dbg !6581, !llvm.loop !6574

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %obj, align 8, !dbg !6582
  %11 = load ptr, ptr %map.addr, align 8, !dbg !6583
  %12 = load i32, ptr %i, align 4, !dbg !6584
  %idxprom5 = zext i32 %12 to i64, !dbg !6583
  %arrayidx6 = getelementptr %struct.iosys_map, ptr %11, i64 %idxprom5, !dbg !6583
  call void @drm_gem_vunmap_unlocked(ptr noundef %10, ptr noundef %arrayidx6) #16, !dbg !6585
  br label %while.cond, !dbg !6562, !llvm.loop !6574

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !6586
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6586
  ret void, !dbg !6586
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_fb_begin_cpu_access(ptr noundef %fb, i32 noundef %dir) #0 align 16 !dbg !6587 {
entry:
  %retval = alloca i32, align 4
  %fb.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  %import_attach = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6591, metadata !DIExpression()), !dbg !6598
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6592, metadata !DIExpression()), !dbg !6599
  call void @llvm.lifetime.start.p0(i64 8, ptr %import_attach) #15, !dbg !6600
  call void @llvm.dbg.declare(metadata ptr %import_attach, metadata !6593, metadata !DIExpression()), !dbg !6601
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !6602
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6594, metadata !DIExpression()), !dbg !6603
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6595, metadata !DIExpression()), !dbg !6605
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6606
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6596, metadata !DIExpression()), !dbg !6607
  store i32 0, ptr %i, align 4, !dbg !6608
  br label %for.cond, !dbg !6610

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6611
  %1 = load ptr, ptr %fb.addr, align 8, !dbg !6613
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4, !dbg !6614
  %2 = load ptr, ptr %format, align 8, !dbg !6614
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %2, i32 0, i32 2, !dbg !6615
  %3 = load i8, ptr %num_planes, align 1, !dbg !6615
  %conv = zext i8 %3 to i32, !dbg !6613
  %cmp = icmp ult i32 %0, %conv, !dbg !6616
  br i1 %cmp, label %for.body, label %for.end, !dbg !6617

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fb.addr, align 8, !dbg !6618
  %5 = load i32, ptr %i, align 4, !dbg !6620
  %call = call ptr @drm_gem_fb_get_obj(ptr noundef %4, i32 noundef %5) #16, !dbg !6621
  store ptr %call, ptr %obj, align 8, !dbg !6622
  %6 = load ptr, ptr %obj, align 8, !dbg !6623
  %tobool = icmp ne ptr %6, null, !dbg !6623
  br i1 %tobool, label %if.end, label %if.then, !dbg !6625

if.then:                                          ; preds = %for.body
  store i32 -22, ptr %ret, align 4, !dbg !6626
  br label %err___drm_gem_fb_end_cpu_access, !dbg !6628

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %obj, align 8, !dbg !6629
  %import_attach2 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 8, !dbg !6630
  %8 = load ptr, ptr %import_attach2, align 8, !dbg !6630
  store ptr %8, ptr %import_attach, align 8, !dbg !6631
  %9 = load ptr, ptr %import_attach, align 8, !dbg !6632
  %tobool3 = icmp ne ptr %9, null, !dbg !6632
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6634

if.then4:                                         ; preds = %if.end
  br label %for.inc, !dbg !6635

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %import_attach, align 8, !dbg !6636
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, ptr %10, i32 0, i32 0, !dbg !6637
  %11 = load ptr, ptr %dmabuf, align 8, !dbg !6637
  %12 = load i32, ptr %dir.addr, align 4, !dbg !6638
  %call6 = call i32 @dma_buf_begin_cpu_access(ptr noundef %11, i32 noundef %12) #16, !dbg !6639
  store i32 %call6, ptr %ret, align 4, !dbg !6640
  %13 = load i32, ptr %ret, align 4, !dbg !6641
  %tobool7 = icmp ne i32 %13, 0, !dbg !6641
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6643

if.then8:                                         ; preds = %if.end5
  br label %err___drm_gem_fb_end_cpu_access, !dbg !6644

if.end9:                                          ; preds = %if.end5
  br label %for.inc, !dbg !6645

for.inc:                                          ; preds = %if.end9, %if.then4
  %14 = load i32, ptr %i, align 4, !dbg !6646
  %inc = add i32 %14, 1, !dbg !6646
  store i32 %inc, ptr %i, align 4, !dbg !6646
  br label %for.cond, !dbg !6647, !llvm.loop !6648

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6650

err___drm_gem_fb_end_cpu_access:                  ; preds = %if.then8, %if.then
  call void @llvm.dbg.label(metadata !6597), !dbg !6651
  %15 = load ptr, ptr %fb.addr, align 8, !dbg !6652
  %16 = load i32, ptr %dir.addr, align 4, !dbg !6653
  %17 = load i32, ptr %i, align 4, !dbg !6654
  call void @__drm_gem_fb_end_cpu_access(ptr noundef %15, i32 noundef %16, i32 noundef %17) #16, !dbg !6655
  %18 = load i32, ptr %ret, align 4, !dbg !6656
  store i32 %18, ptr %retval, align 4, !dbg !6657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6657

cleanup:                                          ; preds = %err___drm_gem_fb_end_cpu_access, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 8, ptr %import_attach) #15, !dbg !6658
  %19 = load i32, ptr %retval, align 4, !dbg !6658
  ret i32 %19, !dbg !6658
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6659 dso_local i32 @dma_buf_begin_cpu_access(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__drm_gem_fb_end_cpu_access(ptr noundef %fb, i32 noundef %dir, i32 noundef %num_planes) #0 align 16 !dbg !6660 {
entry:
  %fb.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  %num_planes.addr = alloca i32, align 4
  %import_attach = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6664, metadata !DIExpression()), !dbg !6670
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6665, metadata !DIExpression()), !dbg !6671
  store i32 %num_planes, ptr %num_planes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_planes.addr, metadata !6666, metadata !DIExpression()), !dbg !6672
  call void @llvm.lifetime.start.p0(i64 8, ptr %import_attach) #15, !dbg !6673
  call void @llvm.dbg.declare(metadata ptr %import_attach, metadata !6667, metadata !DIExpression()), !dbg !6674
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6668, metadata !DIExpression()), !dbg !6676
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6677
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6669, metadata !DIExpression()), !dbg !6678
  br label %while.cond, !dbg !6679

while.cond:                                       ; preds = %if.end10, %if.then4, %if.then, %entry
  %0 = load i32, ptr %num_planes.addr, align 4, !dbg !6680
  %tobool = icmp ne i32 %0, 0, !dbg !6679
  br i1 %tobool, label %while.body, label %while.end, !dbg !6679

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %num_planes.addr, align 4, !dbg !6681
  %dec = add i32 %1, -1, !dbg !6681
  store i32 %dec, ptr %num_planes.addr, align 4, !dbg !6681
  %2 = load ptr, ptr %fb.addr, align 8, !dbg !6683
  %3 = load i32, ptr %num_planes.addr, align 4, !dbg !6684
  %call = call ptr @drm_gem_fb_get_obj(ptr noundef %2, i32 noundef %3) #16, !dbg !6685
  store ptr %call, ptr %obj, align 8, !dbg !6686
  %4 = load ptr, ptr %obj, align 8, !dbg !6687
  %tobool1 = icmp ne ptr %4, null, !dbg !6687
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6689

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !6690, !llvm.loop !6691

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %obj, align 8, !dbg !6693
  %import_attach2 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 8, !dbg !6694
  %6 = load ptr, ptr %import_attach2, align 8, !dbg !6694
  store ptr %6, ptr %import_attach, align 8, !dbg !6695
  %7 = load ptr, ptr %import_attach, align 8, !dbg !6696
  %tobool3 = icmp ne ptr %7, null, !dbg !6696
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6698

if.then4:                                         ; preds = %if.end
  br label %while.cond, !dbg !6699, !llvm.loop !6691

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %import_attach, align 8, !dbg !6700
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, ptr %8, i32 0, i32 0, !dbg !6701
  %9 = load ptr, ptr %dmabuf, align 8, !dbg !6701
  %10 = load i32, ptr %dir.addr, align 4, !dbg !6702
  %call6 = call i32 @dma_buf_end_cpu_access(ptr noundef %9, i32 noundef %10) #16, !dbg !6703
  store i32 %call6, ptr %ret, align 4, !dbg !6704
  %11 = load i32, ptr %ret, align 4, !dbg !6705
  %tobool7 = icmp ne i32 %11, 0, !dbg !6705
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6707

if.then8:                                         ; preds = %if.end5
  br label %do.body, !dbg !6708

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !6710

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6710

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %fb.addr, align 8, !dbg !6708
  %dev = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 0, !dbg !6708
  %13 = load ptr, ptr %dev, align 8, !dbg !6708
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2, !dbg !6708
  %14 = load ptr, ptr %dev9, align 8, !dbg !6708
  %15 = load i32, ptr %ret, align 4, !dbg !6708
  %16 = load i32, ptr %num_planes.addr, align 4, !dbg !6708
  %17 = load i32, ptr %dir.addr, align 4, !dbg !6708
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef @.str.11, i32 noundef %15, i32 noundef %16, i32 noundef %17) #17, !dbg !6708
  br label %if.end10, !dbg !6712

if.end10:                                         ; preds = %do.end, %if.end5
  br label %while.cond, !dbg !6679, !llvm.loop !6691

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6713
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !6713
  call void @llvm.lifetime.end.p0(i64 8, ptr %import_attach) #15, !dbg !6713
  ret void, !dbg !6713
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_gem_fb_end_cpu_access(ptr noundef %fb, i32 noundef %dir) #0 align 16 !dbg !6714 {
entry:
  %fb.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6718, metadata !DIExpression()), !dbg !6720
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6719, metadata !DIExpression()), !dbg !6721
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !6722
  %1 = load i32, ptr %dir.addr, align 4, !dbg !6723
  %2 = load ptr, ptr %fb.addr, align 8, !dbg !6724
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 4, !dbg !6725
  %3 = load ptr, ptr %format, align 8, !dbg !6725
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2, !dbg !6726
  %4 = load i8, ptr %num_planes, align 1, !dbg !6726
  %conv = zext i8 %4 to i32, !dbg !6724
  call void @__drm_gem_fb_end_cpu_access(ptr noundef %0, i32 noundef %1, i32 noundef %conv) #16, !dbg !6727
  ret void, !dbg !6728
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_gem_fb_afbc_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef %afbc_fb) #0 align 16 !dbg !6729 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  %afbc_fb.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %objs = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6743, metadata !DIExpression()), !dbg !6749
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !6744, metadata !DIExpression()), !dbg !6750
  store ptr %afbc_fb, ptr %afbc_fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %afbc_fb.addr, metadata !6745, metadata !DIExpression()), !dbg !6751
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !6752
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6746, metadata !DIExpression()), !dbg !6753
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !6754
  call void @llvm.dbg.declare(metadata ptr %objs, metadata !6747, metadata !DIExpression()), !dbg !6755
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6756
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6748, metadata !DIExpression()), !dbg !6757
  %0 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6758
  %base = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %0, i32 0, i32 0, !dbg !6759
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %base, i32 0, i32 15, !dbg !6760
  %arraydecay = getelementptr inbounds [4 x ptr], ptr %obj, i64 0, i64 0, !dbg !6758
  store ptr %arraydecay, ptr %objs, align 8, !dbg !6761
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6762
  %2 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6763
  %call = call ptr @drm_get_format_info(ptr noundef %1, ptr noundef %2) #16, !dbg !6764
  store ptr %call, ptr %info, align 8, !dbg !6765
  %3 = load ptr, ptr %info, align 8, !dbg !6766
  %tobool = icmp ne ptr %3, null, !dbg !6766
  br i1 %tobool, label %if.end, label %if.then, !dbg !6768

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6769

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6770
  %5 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6771
  %6 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6772
  %call1 = call i32 @drm_gem_afbc_min_size(ptr noundef %4, ptr noundef %5, ptr noundef %6) #16, !dbg !6773
  store i32 %call1, ptr %ret, align 4, !dbg !6774
  %7 = load i32, ptr %ret, align 4, !dbg !6775
  %cmp = icmp slt i32 %7, 0, !dbg !6777
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6778

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !6779
  store i32 %8, ptr %retval, align 4, !dbg !6780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6780

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %objs, align 8, !dbg !6781
  %arrayidx = getelementptr ptr, ptr %9, i64 0, !dbg !6781
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !6781
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %10, i32 0, i32 5, !dbg !6783
  %11 = load i64, ptr %size, align 8, !dbg !6783
  %12 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6784
  %afbc_size = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %12, i32 0, i32 6, !dbg !6785
  %13 = load i32, ptr %afbc_size, align 4, !dbg !6785
  %conv = zext i32 %13 to i64, !dbg !6784
  %cmp4 = icmp ult i64 %11, %conv, !dbg !6786
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !6787

if.then6:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !6788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6788

if.end7:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !6789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6789

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6790
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !6790
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !6790
  %14 = load i32, ptr %retval, align 4, !dbg !6790
  ret i32 %14, !dbg !6790
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_gem_afbc_min_size(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef %afbc_fb) #0 align 16 !dbg !6791 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  %afbc_fb.addr = alloca ptr, align 8
  %n_blocks = alloca i32, align 4
  %w_alignment = alloca i32, align 4
  %h_alignment = alloca i32, align 4
  %hdr_alignment = alloca i32, align 4
  %bpp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6793, metadata !DIExpression()), !dbg !6801
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !6794, metadata !DIExpression()), !dbg !6802
  store ptr %afbc_fb, ptr %afbc_fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %afbc_fb.addr, metadata !6795, metadata !DIExpression()), !dbg !6803
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_blocks) #15, !dbg !6804
  call void @llvm.dbg.declare(metadata ptr %n_blocks, metadata !6796, metadata !DIExpression()), !dbg !6805
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_alignment) #15, !dbg !6804
  call void @llvm.dbg.declare(metadata ptr %w_alignment, metadata !6797, metadata !DIExpression()), !dbg !6806
  call void @llvm.lifetime.start.p0(i64 4, ptr %h_alignment) #15, !dbg !6804
  call void @llvm.dbg.declare(metadata ptr %h_alignment, metadata !6798, metadata !DIExpression()), !dbg !6807
  call void @llvm.lifetime.start.p0(i64 4, ptr %hdr_alignment) #15, !dbg !6804
  call void @llvm.dbg.declare(metadata ptr %hdr_alignment, metadata !6799, metadata !DIExpression()), !dbg !6808
  call void @llvm.lifetime.start.p0(i64 4, ptr %bpp) #15, !dbg !6809
  call void @llvm.dbg.declare(metadata ptr %bpp, metadata !6800, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6811
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %0, i32 0, i32 8, !dbg !6812
  %arrayidx = getelementptr [4 x i64], ptr %modifier, i64 0, i64 0, !dbg !6811
  %1 = load i64, ptr %arrayidx, align 8, !dbg !6811
  %and = and i64 %1, 15, !dbg !6813
  switch i64 %and, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb1
    i64 3, label %sw.bb4
    i64 4, label %sw.bb4
  ], !dbg !6814

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6815
  %block_width = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %2, i32 0, i32 1, !dbg !6817
  store i32 16, ptr %block_width, align 8, !dbg !6818
  %3 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6819
  %block_height = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %3, i32 0, i32 2, !dbg !6820
  store i32 16, ptr %block_height, align 4, !dbg !6821
  br label %sw.epilog, !dbg !6822

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6823
  %block_width2 = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %4, i32 0, i32 1, !dbg !6824
  store i32 32, ptr %block_width2, align 8, !dbg !6825
  %5 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6826
  %block_height3 = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %5, i32 0, i32 2, !dbg !6827
  store i32 8, ptr %block_height3, align 4, !dbg !6828
  br label %sw.epilog, !dbg !6829

sw.bb4:                                           ; preds = %entry, %entry
  br label %sw.default, !dbg !6830

sw.default:                                       ; preds = %entry, %sw.bb4
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6831
  %tobool = icmp ne ptr %6, null, !dbg !6831
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6831

cond.true:                                        ; preds = %sw.default
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6831
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2, !dbg !6831
  %8 = load ptr, ptr %dev5, align 8, !dbg !6831
  br label %cond.end, !dbg !6831

cond.false:                                       ; preds = %sw.default
  br label %cond.end, !dbg !6831

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !6831
  %9 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6831
  %modifier6 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %9, i32 0, i32 8, !dbg !6831
  %arrayidx7 = getelementptr [4 x i64], ptr %modifier6, i64 0, i64 0, !dbg !6831
  %10 = load i64, ptr %arrayidx7, align 8, !dbg !6831
  %and8 = and i64 %10, 15, !dbg !6831
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str.12, i64 noundef %and8) #16, !dbg !6831
  store i32 -22, ptr %retval, align 4, !dbg !6832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6832

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %11 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6833
  %block_width9 = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %11, i32 0, i32 1, !dbg !6834
  %12 = load i32, ptr %block_width9, align 8, !dbg !6834
  store i32 %12, ptr %w_alignment, align 4, !dbg !6835
  %13 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6836
  %block_height10 = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %13, i32 0, i32 2, !dbg !6837
  %14 = load i32, ptr %block_height10, align 4, !dbg !6837
  store i32 %14, ptr %h_alignment, align 4, !dbg !6838
  store i32 64, ptr %hdr_alignment, align 4, !dbg !6839
  %15 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6840
  %modifier11 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %15, i32 0, i32 8, !dbg !6842
  %arrayidx12 = getelementptr [4 x i64], ptr %modifier11, i64 0, i64 0, !dbg !6840
  %16 = load i64, ptr %arrayidx12, align 8, !dbg !6840
  %and13 = and i64 %16, 256, !dbg !6843
  %tobool14 = icmp ne i64 %and13, 0, !dbg !6843
  br i1 %tobool14, label %if.then, label %if.end, !dbg !6844

if.then:                                          ; preds = %sw.epilog
  %17 = load i32, ptr %w_alignment, align 4, !dbg !6845
  %mul = mul i32 %17, 8, !dbg !6845
  store i32 %mul, ptr %w_alignment, align 4, !dbg !6845
  %18 = load i32, ptr %h_alignment, align 4, !dbg !6847
  %mul15 = mul i32 %18, 8, !dbg !6847
  store i32 %mul15, ptr %h_alignment, align 4, !dbg !6847
  store i32 4096, ptr %hdr_alignment, align 4, !dbg !6848
  br label %if.end, !dbg !6849

if.end:                                           ; preds = %if.then, %sw.epilog
  %19 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6850
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %19, i32 0, i32 1, !dbg !6850
  %20 = load i32, ptr %width, align 4, !dbg !6850
  %21 = load i32, ptr %w_alignment, align 4, !dbg !6850
  %sub = sub i32 %21, 1, !dbg !6850
  %add = add i32 %20, %sub, !dbg !6850
  %22 = load i32, ptr %w_alignment, align 4, !dbg !6850
  %sub16 = sub i32 %22, 1, !dbg !6850
  %not = xor i32 %sub16, -1, !dbg !6850
  %and17 = and i32 %add, %not, !dbg !6850
  %23 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6851
  %aligned_width = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %23, i32 0, i32 3, !dbg !6852
  store i32 %and17, ptr %aligned_width, align 8, !dbg !6853
  %24 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6854
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %24, i32 0, i32 2, !dbg !6854
  %25 = load i32, ptr %height, align 8, !dbg !6854
  %26 = load i32, ptr %h_alignment, align 4, !dbg !6854
  %sub18 = sub i32 %26, 1, !dbg !6854
  %add19 = add i32 %25, %sub18, !dbg !6854
  %27 = load i32, ptr %h_alignment, align 4, !dbg !6854
  %sub20 = sub i32 %27, 1, !dbg !6854
  %not21 = xor i32 %sub20, -1, !dbg !6854
  %and22 = and i32 %add19, %not21, !dbg !6854
  %28 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6855
  %aligned_height = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %28, i32 0, i32 4, !dbg !6856
  store i32 %and22, ptr %aligned_height, align 4, !dbg !6857
  %29 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6858
  %offsets = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %29, i32 0, i32 7, !dbg !6859
  %arrayidx23 = getelementptr [4 x i32], ptr %offsets, i64 0, i64 0, !dbg !6858
  %30 = load i32, ptr %arrayidx23, align 4, !dbg !6858
  %31 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6860
  %offset = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %31, i32 0, i32 5, !dbg !6861
  store i32 %30, ptr %offset, align 8, !dbg !6862
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !6863
  %33 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !6864
  %call = call i32 @drm_gem_afbc_get_bpp(ptr noundef %32, ptr noundef %33) #16, !dbg !6865
  store i32 %call, ptr %bpp, align 4, !dbg !6866
  %34 = load i32, ptr %bpp, align 4, !dbg !6867
  %tobool24 = icmp ne i32 %34, 0, !dbg !6867
  br i1 %tobool24, label %if.end32, label %if.then25, !dbg !6869

if.then25:                                        ; preds = %if.end
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !6870
  %tobool26 = icmp ne ptr %35, null, !dbg !6870
  br i1 %tobool26, label %cond.true27, label %cond.false29, !dbg !6870

cond.true27:                                      ; preds = %if.then25
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !6870
  %dev28 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2, !dbg !6870
  %37 = load ptr, ptr %dev28, align 8, !dbg !6870
  br label %cond.end30, !dbg !6870

cond.false29:                                     ; preds = %if.then25
  br label %cond.end30, !dbg !6870

cond.end30:                                       ; preds = %cond.false29, %cond.true27
  %cond31 = phi ptr [ %37, %cond.true27 ], [ null, %cond.false29 ], !dbg !6870
  %38 = load i32, ptr %bpp, align 4, !dbg !6870
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond31, i32 noundef 2, ptr noundef @.str.13, i32 noundef %38) #16, !dbg !6870
  store i32 -22, ptr %retval, align 4, !dbg !6872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6872

if.end32:                                         ; preds = %if.end
  %39 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6873
  %aligned_width33 = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %39, i32 0, i32 3, !dbg !6874
  %40 = load i32, ptr %aligned_width33, align 8, !dbg !6874
  %41 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6875
  %aligned_height34 = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %41, i32 0, i32 4, !dbg !6876
  %42 = load i32, ptr %aligned_height34, align 4, !dbg !6876
  %mul35 = mul i32 %40, %42, !dbg !6877
  %div = udiv i32 %mul35, 256, !dbg !6878
  store i32 %div, ptr %n_blocks, align 4, !dbg !6879
  %43 = load i32, ptr %n_blocks, align 4, !dbg !6880
  %mul36 = mul i32 %43, 16, !dbg !6880
  %44 = load i32, ptr %hdr_alignment, align 4, !dbg !6880
  %sub37 = sub i32 %44, 1, !dbg !6880
  %add38 = add i32 %mul36, %sub37, !dbg !6880
  %45 = load i32, ptr %hdr_alignment, align 4, !dbg !6880
  %sub39 = sub i32 %45, 1, !dbg !6880
  %not40 = xor i32 %sub39, -1, !dbg !6880
  %and41 = and i32 %add38, %not40, !dbg !6880
  %46 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6881
  %afbc_size = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %46, i32 0, i32 6, !dbg !6882
  store i32 %and41, ptr %afbc_size, align 4, !dbg !6883
  %47 = load i32, ptr %n_blocks, align 4, !dbg !6884
  %48 = load i32, ptr %bpp, align 4, !dbg !6885
  %mul42 = mul i32 %48, 256, !dbg !6885
  %div43 = udiv i32 %mul42, 8, !dbg !6885
  %add44 = add i32 %div43, 127, !dbg !6885
  %and45 = and i32 %add44, -128, !dbg !6885
  %mul46 = mul i32 %47, %and45, !dbg !6886
  %49 = load ptr, ptr %afbc_fb.addr, align 8, !dbg !6887
  %afbc_size47 = getelementptr inbounds %struct.drm_afbc_framebuffer, ptr %49, i32 0, i32 6, !dbg !6888
  %50 = load i32, ptr %afbc_size47, align 4, !dbg !6889
  %add48 = add i32 %50, %mul46, !dbg !6889
  store i32 %add48, ptr %afbc_size47, align 4, !dbg !6889
  store i32 0, ptr %retval, align 4, !dbg !6890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6890

cleanup:                                          ; preds = %if.end32, %cond.end30, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %bpp) #15, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 4, ptr %hdr_alignment) #15, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 4, ptr %h_alignment) #15, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_alignment) #15, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_blocks) #15, !dbg !6891
  %51 = load i32, ptr %retval, align 4, !dbg !6891
  ret i32 %51, !dbg !6891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !6892 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6894, metadata !DIExpression()), !dbg !6895
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6896
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6897
  %1 = load ptr, ptr %name, align 8, !dbg !6897
  ret ptr %1, !dbg !6898
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__drm_gem_object_put(ptr noundef %obj) #5 align 16 !dbg !6899 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !6901, metadata !DIExpression()), !dbg !6902
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !6903
  %refcount = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 0, !dbg !6904
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @drm_gem_object_free) #16, !dbg !6905
  ret void, !dbg !6906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #5 align 16 !dbg !6907 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6911, metadata !DIExpression()), !dbg !6913
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !6912, metadata !DIExpression()), !dbg !6914
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6915
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6917
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #16, !dbg !6918
  br i1 %call, label %if.then, label %if.end, !dbg !6919

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !6920
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !6922
  call void %1(ptr noundef %2) #16, !dbg !6920
  store i32 1, ptr %retval, align 4, !dbg !6923
  br label %return, !dbg !6923

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6924
  br label %return, !dbg !6924

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6925
  ret i32 %3, !dbg !6925
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !6926 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6931, metadata !DIExpression()), !dbg !6932
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6933
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #16, !dbg !6934
  ret i1 %call, !dbg !6935
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6936 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6940, metadata !DIExpression()), !dbg !6942
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6941, metadata !DIExpression()), !dbg !6943
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6944
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6945
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !6946
  ret i1 %call, !dbg !6947
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6948 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6952, metadata !DIExpression()), !dbg !6956
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6953, metadata !DIExpression()), !dbg !6957
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6954, metadata !DIExpression()), !dbg !6958
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !6959
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6955, metadata !DIExpression()), !dbg !6960
  %0 = load i32, ptr %i.addr, align 4, !dbg !6961
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6962
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6963
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #16, !dbg !6964
  store i32 %call, ptr %old, align 4, !dbg !6960
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6965
  %tobool = icmp ne ptr %2, null, !dbg !6965
  br i1 %tobool, label %if.then, label %if.end, !dbg !6967

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6968
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6969
  store i32 %3, ptr %4, align 4, !dbg !6970
  br label %if.end, !dbg !6971

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6972
  %6 = load i32, ptr %i.addr, align 4, !dbg !6974
  %cmp = icmp eq i32 %5, %6, !dbg !6975
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6976

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6977

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6979

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6981

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6981

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6979

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6983

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6985

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6985

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6983, !srcloc !6987
  br label %do.cond7, !dbg !6983

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6983

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6979

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6979

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6988

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6989
  %cmp12 = icmp slt i32 %7, 0, !dbg !6989
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6989

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6989
  %9 = load i32, ptr %i.addr, align 4, !dbg !6989
  %sub = sub i32 %8, %9, !dbg !6989
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6989
  br label %lor.end, !dbg !6989

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6989
  %lnot14 = xor i1 %lnot, true, !dbg !6989
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6989
  %conv = sext i32 %lnot.ext to i64, !dbg !6989
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6989
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6989
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6991

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6992
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16, !dbg !6993
  br label %if.end17, !dbg !6993

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6994

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !6995
  %12 = load i1, ptr %retval, align 1, !dbg !6995
  ret i1 %12, !dbg !6995
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !6996 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7002, metadata !DIExpression()), !dbg !7004
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7003, metadata !DIExpression()), !dbg !7005
  br label %do.body, !dbg !7006

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7007

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7009
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !7010
  %1 = load i32, ptr %i.addr, align 4, !dbg !7011
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7012
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #16, !dbg !7013
  ret i32 %call, !dbg !7014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7015 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !7018 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7026, metadata !DIExpression()), !dbg !7028
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7027, metadata !DIExpression()), !dbg !7029
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7030
  %1 = load i64, ptr %size.addr, align 8, !dbg !7031
  %conv = trunc i64 %1 to i32, !dbg !7031
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !7032
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7033
  %3 = load i64, ptr %size.addr, align 8, !dbg !7033
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !7033
  ret void, !dbg !7034
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !7035 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7038, metadata !DIExpression()), !dbg !7040
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7039, metadata !DIExpression()), !dbg !7041
  %0 = load i32, ptr %i.addr, align 4, !dbg !7042
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7043
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #16, !dbg !7044
  ret i32 %call, !dbg !7045
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !7046 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7051, metadata !DIExpression()), !dbg !7053
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7052, metadata !DIExpression()), !dbg !7054
  ret i1 true, !dbg !7055
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !7056 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7061, metadata !DIExpression()), !dbg !7064
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7062, metadata !DIExpression()), !dbg !7065
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7063, metadata !DIExpression()), !dbg !7066
  ret void, !dbg !7067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !7068 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7071, metadata !DIExpression()), !dbg !7075
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7072, metadata !DIExpression()), !dbg !7076
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !7077
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7073, metadata !DIExpression()), !dbg !7077
  %0 = load i32, ptr %i.addr, align 4, !dbg !7077
  %sub = sub i32 0, %0, !dbg !7077
  store i32 %sub, ptr %__ret, align 4, !dbg !7077
  %1 = load i32, ptr %__ret, align 4, !dbg !7077
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7077
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7077
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !7077, !srcloc !7078
  store i32 %3, ptr %__ret, align 4, !dbg !7077
  %4 = load i32, ptr %__ret, align 4, !dbg !7077
  store i32 %4, ptr %tmp, align 4, !dbg !7077
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !7079
  %5 = load i32, ptr %tmp, align 4, !dbg !7077
  ret i32 %5, !dbg !7080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_core_check_feature(ptr noundef %dev, i32 noundef %feature) #5 align 16 !dbg !7081 {
entry:
  %dev.addr = alloca ptr, align 8
  %feature.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7087, metadata !DIExpression()), !dbg !7089
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !7088, metadata !DIExpression()), !dbg !7090
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7091
  %1 = load i32, ptr %feature.addr, align 4, !dbg !7092
  %call = call zeroext i1 @drm_core_check_all_features(ptr noundef %0, i32 noundef %1) #16, !dbg !7093
  ret i1 %call, !dbg !7094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_core_check_all_features(ptr noundef %dev, i32 noundef %features) #5 align 16 !dbg !7095 {
entry:
  %dev.addr = alloca ptr, align 8
  %features.addr = alloca i32, align 4
  %supported = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7099, metadata !DIExpression()), !dbg !7102
  store i32 %features, ptr %features.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %features.addr, metadata !7100, metadata !DIExpression()), !dbg !7103
  call void @llvm.lifetime.start.p0(i64 4, ptr %supported) #15, !dbg !7104
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !7101, metadata !DIExpression()), !dbg !7105
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7106
  %driver = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4, !dbg !7107
  %1 = load ptr, ptr %driver, align 8, !dbg !7107
  %driver_features = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 23, !dbg !7108
  %2 = load i32, ptr %driver_features, align 8, !dbg !7108
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7109
  %driver_features1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 11, !dbg !7110
  %4 = load i32, ptr %driver_features1, align 8, !dbg !7110
  %and = and i32 %2, %4, !dbg !7111
  store i32 %and, ptr %supported, align 4, !dbg !7105
  %5 = load i32, ptr %features.addr, align 4, !dbg !7112
  %tobool = icmp ne i32 %5, 0, !dbg !7112
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7113

land.rhs:                                         ; preds = %entry
  %6 = load i32, ptr %supported, align 4, !dbg !7114
  %7 = load i32, ptr %features.addr, align 4, !dbg !7115
  %and2 = and i32 %6, %7, !dbg !7116
  %8 = load i32, ptr %features.addr, align 4, !dbg !7117
  %cmp = icmp eq i32 %and2, %8, !dbg !7118
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7119
  call void @llvm.lifetime.end.p0(i64 4, ptr %supported) #15, !dbg !7120
  ret i1 %9, !dbg !7121
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7122 dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7126 dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7129 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !7133 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7135, metadata !DIExpression()), !dbg !7140
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7136, metadata !DIExpression()), !dbg !7141
  %0 = load i64, ptr %size.addr, align 8, !dbg !7142
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7143
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7144

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7145
  %tobool = icmp ne i64 %2, 0, !dbg !7145
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7146

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !7147
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7137, metadata !DIExpression()), !dbg !7148
  %3 = load i64, ptr %size.addr, align 8, !dbg !7149
  %cmp = icmp ugt i64 %3, 8192, !dbg !7151
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7152

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7153
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7154
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !7155
  store ptr %call, ptr %retval, align 8, !dbg !7156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7156

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7157
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !7157
  store i32 %call2, ptr %index, align 4, !dbg !7158
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7159
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7160
  %9 = ptrtoint ptr %8 to i64, !dbg !7160
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !7161
  %idxprom = zext i32 %call3 to i64, !dbg !7162
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7162
  %10 = load i32, ptr %index, align 4, !dbg !7163
  %idxprom4 = zext i32 %10 to i64, !dbg !7162
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7162
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7162
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7164
  %13 = load i64, ptr %size.addr, align 8, !dbg !7165
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !7166
  store ptr %call6, ptr %retval, align 8, !dbg !7167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7167

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !7168
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7169
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7170
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !7171
  store ptr %call8, ptr %retval, align 8, !dbg !7172
  br label %return, !dbg !7172

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7173
  ret ptr %16, !dbg !7173
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7174 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !7175 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7179, metadata !DIExpression()), !dbg !7181
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7180, metadata !DIExpression()), !dbg !7182
  %0 = load i64, ptr %size.addr, align 8, !dbg !7183
  %tobool = icmp ne i64 %0, 0, !dbg !7183
  br i1 %tobool, label %if.end, label %if.then, !dbg !7185

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7186
  br label %return, !dbg !7186

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7187
  %cmp = icmp ule i64 %1, 8, !dbg !7189
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7190

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7191
  br label %return, !dbg !7191

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7192
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7194
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7195

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7196
  %cmp4 = icmp ule i64 %3, 96, !dbg !7197
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7198

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7199
  br label %return, !dbg !7199

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7200
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7202
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7203

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7204
  %cmp9 = icmp ule i64 %5, 192, !dbg !7205
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7206

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7207
  br label %return, !dbg !7207

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7208
  %cmp12 = icmp ule i64 %6, 8, !dbg !7210
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7211

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7212
  br label %return, !dbg !7212

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7213
  %cmp15 = icmp ule i64 %7, 16, !dbg !7215
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7216

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7217
  br label %return, !dbg !7217

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7218
  %cmp18 = icmp ule i64 %8, 32, !dbg !7220
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7221

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7222
  br label %return, !dbg !7222

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7223
  %cmp21 = icmp ule i64 %9, 64, !dbg !7225
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7226

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7227
  br label %return, !dbg !7227

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7228
  %cmp24 = icmp ule i64 %10, 128, !dbg !7230
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7231

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7232
  br label %return, !dbg !7232

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7233
  %cmp27 = icmp ule i64 %11, 256, !dbg !7235
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7236

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7237
  br label %return, !dbg !7237

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7238
  %cmp30 = icmp ule i64 %12, 512, !dbg !7240
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7241

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7242
  br label %return, !dbg !7242

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7243
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7245
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7246

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7247
  br label %return, !dbg !7247

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7248
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7250
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7251

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7252
  br label %return, !dbg !7252

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7253
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7255
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7256

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7257
  br label %return, !dbg !7257

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7258
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7260
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7261

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7262
  br label %return, !dbg !7262

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7263
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7265
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7266

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7267
  br label %return, !dbg !7267

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7268
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7270
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7271

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7272
  br label %return, !dbg !7272

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7273
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7275
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7276

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7277
  br label %return, !dbg !7277

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7278
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7280
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7281

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7282
  br label %return, !dbg !7282

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7283
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7285
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7286

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7287
  br label %return, !dbg !7287

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7288
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7290
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7291

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7292
  br label %return, !dbg !7292

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7293
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7295
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7296

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7297
  br label %return, !dbg !7297

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7298
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7300
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7301

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7302
  br label %return, !dbg !7302

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7303, !range !5859, !noundef !1029
  %tobool69 = trunc i8 %25 to i1, !dbg !7303
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7305

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7306

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !7307, !srcloc !7310
  unreachable, !dbg !7307

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7311

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7312

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7313

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7315

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7313

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 480, i32 0, i64 12) #15, !dbg !7317, !srcloc !7319
  br label %do.end75, !dbg !7317

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7313

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7320
  br label %return, !dbg !7320

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7321
  ret i32 %26, !dbg !7321
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7322 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !7325 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7329, metadata !DIExpression()), !dbg !7331
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7330, metadata !DIExpression()), !dbg !7332
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7333
  %and = and i32 %0, 17, !dbg !7333
  %cmp = icmp eq i32 %and, 0, !dbg !7333
  %lnot = xor i1 %cmp, true, !dbg !7333
  %lnot1 = xor i1 %lnot, true, !dbg !7333
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7333
  %conv = sext i32 %lnot.ext to i64, !dbg !7333
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7333
  %tobool = icmp ne i64 %expval, 0, !dbg !7333
  br i1 %tobool, label %if.then, label %if.end, !dbg !7335

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7336
  br label %return, !dbg !7336

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7337
  %and2 = and i32 %1, 1, !dbg !7339
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7339
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7340

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7341
  br label %return, !dbg !7341

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7342
  br label %return, !dbg !7342

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7344
  ret i32 %2, !dbg !7344
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7345 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7346 dso_local void @__compiletime_assert_117() #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_dirtyfb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7347 dso_local i32 @dma_buf_end_cpu_access(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_gem_afbc_get_bpp(ptr noundef %dev, ptr noundef %mode_cmd) #0 align 16 !dbg !7348 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7352, metadata !DIExpression()), !dbg !7355
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !7353, metadata !DIExpression()), !dbg !7356
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !7357
  call void @llvm.dbg.declare(metadata ptr %info, metadata !7354, metadata !DIExpression()), !dbg !7358
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7359
  %1 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !7360
  %call = call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %1) #16, !dbg !7361
  store ptr %call, ptr %info, align 8, !dbg !7362
  %2 = load ptr, ptr %info, align 8, !dbg !7363
  %format = getelementptr inbounds %struct.drm_format_info, ptr %2, i32 0, i32 0, !dbg !7364
  %3 = load i32, ptr %format, align 4, !dbg !7364
  switch i32 %3, label %sw.default [
    i32 942691673, label %sw.bb
    i32 808539481, label %sw.bb1
    i32 808670550, label %sw.bb2
  ], !dbg !7365

sw.bb:                                            ; preds = %entry
  store i32 12, ptr %retval, align 4, !dbg !7366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7366

sw.bb1:                                           ; preds = %entry
  store i32 15, ptr %retval, align 4, !dbg !7368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7368

sw.bb2:                                           ; preds = %entry
  store i32 30, ptr %retval, align 4, !dbg !7369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7369

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %info, align 8, !dbg !7370
  %call3 = call i32 @drm_format_info_bpp(ptr noundef %4, i32 noundef 0) #16, !dbg !7371
  store i32 %call3, ptr %retval, align 4, !dbg !7372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7372

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !7373
  %5 = load i32, ptr %retval, align 4, !dbg !7373
  ret i32 %5, !dbg !7373
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7374 dso_local i32 @drm_format_info_bpp(ptr noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849}
!llvm.ident = !{!5850}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_import_ns316", scope: !2, file: !3, line: 21, type: !5839, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_gem_framebuffer_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_gem_framebuffer_helper\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_gem_framebuffer_helper.ll drivers/gpu/drm/drm_gem_framebuffer_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !274, globals: !281, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_gem_framebuffer_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4fe130086acb3ca1890ad8d7efa4165")
!4 = !{!5, !13, !18, !23, !29, !37, !53, !60, !68, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !148, !156, !199, !208, !215, !220, !225, !238, !246, !264}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !142, line: 5, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!145 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!146 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!147 = !DIEnumerator(name: "DMA_NONE", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !149, line: 80, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed9f6851df8ea62f4629791b091b99c")
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIEnumerator(name: "DRM_AUTH", value: 1)
!152 = !DIEnumerator(name: "DRM_MASTER", value: 2)
!153 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4)
!154 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16)
!155 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !157, line: 91, baseType: !109, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!159 = !DIEnumerator(name: "MODE_OK", value: 0)
!160 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!161 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!162 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!163 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!164 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!165 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!166 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!167 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!168 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!169 = !DIEnumerator(name: "MODE_MEM", value: 10)
!170 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!171 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!172 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!173 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!174 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!175 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!176 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!177 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!178 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!179 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!180 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!181 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!182 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!183 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!184 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!185 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!186 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!187 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!188 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!189 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!190 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!191 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!192 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!193 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!194 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!195 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!196 = !DIEnumerator(name: "MODE_STALE", value: -3)
!197 = !DIEnumerator(name: "MODE_BAD", value: -2)
!198 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !200, line: 96, baseType: !7, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!201 = !{!202, !203, !204, !205, !206, !207}
!202 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!203 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!204 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!205 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!206 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!207 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !209, line: 30, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!212 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!213 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!214 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !216, line: 61, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!217 = !{!218, !219}
!218 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!219 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !221, line: 10, baseType: !7, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!222 = !{!223, !224}
!223 = !DIEnumerator(name: "false", value: 0)
!224 = !DIEnumerator(name: "true", value: 1)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !226, line: 330, baseType: !7, size: 32, elements: !227)
!226 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!228 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!229 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!230 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!231 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!232 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!233 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!234 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!235 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!236 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!237 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !239, line: 119, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!242 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!243 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!244 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!245 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_driver_feature", file: !247, line: 54, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!249 = !DIEnumerator(name: "DRIVER_GEM", value: 1)
!250 = !DIEnumerator(name: "DRIVER_MODESET", value: 2)
!251 = !DIEnumerator(name: "DRIVER_RENDER", value: 8)
!252 = !DIEnumerator(name: "DRIVER_ATOMIC", value: 16)
!253 = !DIEnumerator(name: "DRIVER_SYNCOBJ", value: 32)
!254 = !DIEnumerator(name: "DRIVER_SYNCOBJ_TIMELINE", value: 64)
!255 = !DIEnumerator(name: "DRIVER_COMPUTE_ACCEL", value: 128)
!256 = !DIEnumerator(name: "DRIVER_GEM_GPUVA", value: 256)
!257 = !DIEnumerator(name: "DRIVER_CURSOR_HOTSPOT", value: 512)
!258 = !DIEnumerator(name: "DRIVER_USE_AGP", value: 33554432)
!259 = !DIEnumerator(name: "DRIVER_LEGACY", value: 67108864)
!260 = !DIEnumerator(name: "DRIVER_PCI_DMA", value: 134217728)
!261 = !DIEnumerator(name: "DRIVER_SG", value: 268435456)
!262 = !DIEnumerator(name: "DRIVER_HAVE_DMA", value: 536870912)
!263 = !DIEnumerator(name: "DRIVER_HAVE_IRQ", value: 1073741824)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !265, line: 364, baseType: !7, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!266 = !{!267, !268, !269, !270, !271, !272, !273}
!267 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!268 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!269 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!270 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!271 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!272 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!273 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!274 = !{!109, !275, !276, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !277, line: 154, baseType: !7)
!277 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!278 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !280, line: 27, baseType: !7)
!280 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!281 = !{!0, !282, !5744, !5749, !5754, !5759, !5761, !5766, !5768, !5770, !5772, !5777, !5782, !5787, !5792, !5794, !5796, !5798, !5800, !5802, !5804, !5806, !5808, !5810, !5815, !5820, !5822, !5824, !5829, !5834}
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "__already_done", scope: !284, file: !3, line: 58, type: !820, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "drm_gem_fb_get_obj", scope: !3, file: !3, line: 53, type: !285, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5714)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !5353, !7}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !216, line: 264, size: 2816, elements: !289)
!289 = !{!290, !303, !304, !5633, !5634, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5651, !5705, !5706}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !288, file: !216, line: 274, baseType: !291, size: 32)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !292, line: 19, size: 32, elements: !293)
!292 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !291, file: !292, line: 20, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !239, line: 113, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !239, line: 111, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !296, file: !239, line: 112, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !277, line: 174, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 172, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !300, file: !277, line: 173, baseType: !109, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !288, file: !216, line: 287, baseType: !7, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !288, file: !216, line: 292, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !209, line: 50, size: 12736, elements: !307)
!307 = !{!308, !309, !310, !4784, !4790, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5584, !5585, !5586, !5624, !5627, !5628, !5631, !5632}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !306, file: !209, line: 52, baseType: !109, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !306, file: !209, line: 55, baseType: !291, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !306, file: !209, line: 58, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !313)
!313 = !{!314, !4338, !4339, !4342, !4343, !4396, !4466, !4467, !4468, !4469, !4470, !4477, !4569, !4582, !4592, !4596, !4598, !4599, !4600, !4604, !4611, !4612, !4615, !4618, !4622, !4726, !4727, !4728, !4729, !4730, !4731, !4761, !4762, !4763, !4766, !4769, !4778, !4779, !4780, !4781, !4782, !4783}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !312, file: !94, line: 706, baseType: !315, size: 512)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !316, line: 64, size: 512, elements: !317)
!316 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!317 = !{!318, !322, !328, !330, !414, !4241, !4332, !4333, !4334, !4335, !4336, !4337}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 65, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !315, file: !316, line: 66, baseType: !323, size: 128, offset: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !277, line: 190, size: 128, elements: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !277, line: 191, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !323, file: !277, line: 191, baseType: !326, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !315, file: !316, line: 67, baseType: !329, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !315, file: !316, line: 68, baseType: !331, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !316, line: 168, size: 768, elements: !333)
!333 = !{!334, !335, !373, !374}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !332, file: !316, line: 169, baseType: !323, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !332, file: !316, line: 170, baseType: !336, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !337, line: 29, baseType: !338)
!337 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !337, line: 17, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !337, line: 18, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !337, line: 18, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !341, file: !337, line: 19, baseType: !344, size: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !345, line: 14, size: 32, elements: !346)
!345 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !344, file: !345, line: 15, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !349, line: 44, baseType: !350)
!349 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !349, line: 14, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !349, line: 15, baseType: !353, size: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !349, line: 15, size: 32, elements: !354)
!354 = !{!355, !356, !365}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !349, line: 16, baseType: !299, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !349, line: 24, baseType: !357, size: 16)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !349, line: 24, size: 16, elements: !358)
!358 = !{!359, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !357, file: !349, line: 25, baseType: !360, size: 8)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !361, line: 17, baseType: !362)
!361 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !280, line: 21, baseType: !363)
!363 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !357, file: !349, line: 26, baseType: !360, size: 8, offset: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !349, line: 28, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !349, line: 28, size: 32, elements: !367)
!367 = !{!368, !372}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !366, file: !349, line: 29, baseType: !369, size: 16)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !361, line: 19, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !280, line: 24, baseType: !371)
!371 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !366, file: !349, line: 30, baseType: !369, size: 16, offset: 16)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !332, file: !316, line: 171, baseType: !315, size: 512, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !332, file: !316, line: 172, baseType: !375, size: 64, offset: 704)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !316, line: 133, size: 192, elements: !378)
!378 = !{!379, !386, !391}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !377, file: !316, line: 134, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!109, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !316, line: 135, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!319, !384}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !377, file: !316, line: 136, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!109, !384, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !316, line: 125, size: 20736, elements: !398)
!398 = !{!399, !404, !408, !409, !413}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !397, file: !316, line: 126, baseType: !400, size: 192)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 192, elements: !402)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!402 = !{!403}
!403 = !DISubrange(count: 3)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !397, file: !316, line: 127, baseType: !405, size: 4096, offset: 192)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 4096, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !397, file: !316, line: 128, baseType: !109, size: 32, offset: 4288)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !397, file: !316, line: 129, baseType: !410, size: 16384, offset: 4320)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 16384, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 2048)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !397, file: !316, line: 130, baseType: !109, size: 32, offset: 20704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !315, file: !316, line: 69, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !316, line: 116, size: 384, elements: !418)
!418 = !{!419, !423, !451, !4203, !4231, !4235}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !417, file: !316, line: 117, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !329}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !417, file: !316, line: 118, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !427, line: 254, size: 128, elements: !428)
!427 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!428 = !{!429, !444}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !426, file: !427, line: 255, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !329, !438, !401}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !277, line: 66, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !435, line: 73, baseType: !436)
!435 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !435, line: 15, baseType: !437)
!437 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !427, line: 30, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !427, line: 31, baseType: !319, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !439, file: !427, line: 32, baseType: !443, size: 16, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !277, line: 24, baseType: !371)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !426, file: !427, line: 256, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!433, !329, !438, !319, !448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !277, line: 61, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !435, line: 72, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !435, line: 16, baseType: !278)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !417, file: !316, line: 119, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !427, line: 84, size: 320, elements: !456)
!456 = !{!457, !458, !462, !4199, !4201}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !427, line: 85, baseType: !319, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !455, file: !427, line: 86, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!443, !329, !438, !109}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !455, file: !427, line: 88, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!443, !329, !466, !109}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !427, line: 175, size: 512, elements: !468)
!468 = !{!469, !470, !471, !472, !4190, !4194, !4195}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !467, file: !427, line: 176, baseType: !439, size: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !467, file: !427, line: 177, baseType: !448, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !467, file: !427, line: 178, baseType: !275, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !467, file: !427, line: 179, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !478)
!478 = !{!479, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4184, !4185, !4186, !4187, !4188, !4189}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !477, file: !14, line: 473, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !482)
!482 = !{!483, !484, !485, !493, !494, !501, !502, !505, !506, !3963, !3964, !3965, !3966, !3967, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4007, !4010, !4011, !4012, !4021, !4022, !4023, !4024}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !481, file: !14, line: 642, baseType: !443, size: 16)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !481, file: !14, line: 643, baseType: !371, size: 16, offset: 16)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !481, file: !14, line: 644, baseType: !486, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !487, line: 23, baseType: !488)
!487 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 21, size: 32, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !488, file: !487, line: 22, baseType: !491, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !277, line: 37, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !435, line: 49, baseType: !7)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !481, file: !14, line: 645, baseType: !323, size: 128, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !481, file: !14, line: 646, baseType: !495, size: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !487, line: 28, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 26, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !496, file: !487, line: 27, baseType: !499, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !277, line: 38, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !435, line: 50, baseType: !7)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !481, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !481, file: !14, line: 650, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !481, file: !14, line: 651, baseType: !503, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !481, file: !14, line: 654, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !510)
!510 = !{!511, !3797, !3807, !3811, !3815, !3819, !3823, !3827, !3831, !3835, !3839, !3840, !3844, !3848, !3885, !3914, !3918, !3924, !3928, !3932, !3936, !3940, !3944, !3950, !3954}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !509, file: !14, line: 1967, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !480, !515, !7}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !517, line: 82, size: 1536, elements: !518)
!517 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!518 = !{!519, !520, !530, !538, !539, !558, !559, !563, !576, !3781, !3782, !3783, !3784, !3789, !3790, !3791}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !516, file: !517, line: 84, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !516, file: !517, line: 85, baseType: !521, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !522, line: 275, baseType: !523)
!522 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !522, line: 275, size: 32, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !523, file: !522, line: 275, baseType: !526, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !522, line: 69, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !522, line: 64, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !527, file: !522, line: 65, baseType: !7, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !516, file: !517, line: 86, baseType: !531, size: 128, offset: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !532, line: 38, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!533 = !{!534, !536}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !532, line: 39, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !531, file: !532, line: 39, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !516, file: !517, line: 87, baseType: !515, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !516, file: !517, line: 88, baseType: !540, size: 128, offset: 256)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !517, line: 49, size: 128, elements: !541)
!541 = !{!542, !555}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !517, line: 50, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !517, line: 50, size: 64, elements: !544)
!544 = !{!545, !551}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !517, line: 51, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !517, line: 51, size: 64, elements: !547)
!547 = !{!548, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !546, file: !517, line: 52, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !361, line: 21, baseType: !279)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !546, file: !517, line: 52, baseType: !549, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !543, file: !517, line: 54, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !361, line: 23, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !280, line: 31, baseType: !554)
!554 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !517, line: 56, baseType: !556, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !516, file: !517, line: 89, baseType: !480, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !516, file: !517, line: 91, baseType: !560, size: 256, offset: 448)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !516, file: !517, line: 94, baseType: !564, size: 64, offset: 704)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !565, line: 25, size: 64, elements: !566)
!565 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !564, file: !565, line: 26, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !565, line: 26, size: 64, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !568, file: !565, line: 28, baseType: !553, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !565, line: 30, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !568, file: !565, line: 30, size: 64, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !565, line: 31, baseType: !336, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !565, line: 32, baseType: !109, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !516, file: !517, line: 95, baseType: !577, size: 64, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !517, line: 128, size: 1024, align: 512, elements: !580)
!580 = !{!581, !585, !586, !593, !599, !603, !607, !611, !612, !616, !620, !3771, !3775}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !579, file: !517, line: 129, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!109, !515, !7}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !579, file: !517, line: 130, baseType: !582, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !579, file: !517, line: 131, baseType: !587, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!109, !590, !592}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !579, file: !517, line: 132, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!109, !590, !7, !319, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !579, file: !517, line: 134, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!109, !590}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !579, file: !517, line: 135, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!109, !515}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !579, file: !517, line: 136, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !515}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !579, file: !517, line: 137, baseType: !608, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !579, file: !517, line: 138, baseType: !613, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !515, !480}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !579, file: !517, line: 139, baseType: !617, size: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!401, !515, !401, !109}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !579, file: !517, line: 140, baseType: !621, size: 64, offset: 640)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !3770}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !626, line: 70, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!627 = !{!628, !629, !3766, !3767}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !625, file: !626, line: 71, baseType: !515, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !625, file: !626, line: 72, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !632)
!632 = !{!633, !634, !637, !638, !639, !643, !1123, !3471, !3511, !3596, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3613, !3617, !3618, !3621, !3624, !3627, !3630, !3631, !3632, !3673, !3699, !3700, !3701, !3702, !3703, !3704, !3707, !3709, !3716, !3717, !3718, !3719, !3720, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !631, file: !14, line: 1191, baseType: !323, size: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !631, file: !14, line: 1192, baseType: !635, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !277, line: 21, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !277, line: 18, baseType: !549)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !631, file: !14, line: 1193, baseType: !363, size: 8, offset: 160)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !631, file: !14, line: 1194, baseType: !278, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !631, file: !14, line: 1195, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !277, line: 52, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !435, line: 88, baseType: !642)
!642 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !631, file: !14, line: 1196, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !646)
!646 = !{!647, !648, !649, !656, !660, !664, !668, !1108, !1109, !1113, !1115, !1116, !1117, !1119, !1120, !1121, !1122}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !645, file: !14, line: 2367, baseType: !319, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !645, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !645, file: !14, line: 2376, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!109, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !655, line: 32, flags: DIFlagFwdDecl)
!655 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !645, file: !14, line: 2377, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !645, file: !14, line: 2378, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!515, !644, !109, !319, !275}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !645, file: !14, line: 2380, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !630}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !645, file: !14, line: 2381, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !671)
!671 = !{!672, !673, !674, !678, !700, !726, !727, !728, !729, !733, !738, !739, !759, !815, !816, !817, !818, !819, !822, !823, !824, !832, !836, !863, !884, !885, !886, !887, !896, !919, !920, !923, !926, !927, !928, !929, !930, !931, !932, !937, !938, !1066, !1074, !1075, !1076, !1078, !1082, !1083, !1087, !1088, !1089, !1090, !1092, !1093, !1094, !1101, !1102, !1103, !1107}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !670, file: !6, line: 403, baseType: !5, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !670, file: !6, line: 406, baseType: !323, size: 128, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !6, line: 409, baseType: !675, size: 448, offset: 192)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 448, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 56)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !670, file: !6, line: 417, baseType: !679, size: 768, offset: 640)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !680)
!680 = !{!681, !682, !683, !684, !687}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !679, file: !6, line: 46, baseType: !315, size: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !679, file: !6, line: 47, baseType: !669, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !679, file: !6, line: 48, baseType: !329, size: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !679, file: !6, line: 49, baseType: !685, size: 64, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !679, file: !6, line: 50, baseType: !688, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !690, line: 26, size: 256, elements: !691)
!690 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !689, file: !690, line: 27, baseType: !7, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !689, file: !690, line: 28, baseType: !694, size: 192, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !695, line: 43, size: 192, elements: !696)
!695 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!696 = !{!697, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !694, file: !695, line: 44, baseType: !698, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !345, line: 23, baseType: !344)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !694, file: !695, line: 45, baseType: !323, size: 128, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !670, file: !6, line: 418, baseType: !701, size: 64, offset: 1408)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !703)
!703 = !{!704, !705, !710, !714, !718, !722}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !702, file: !6, line: 54, baseType: !439, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !702, file: !6, line: 55, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!433, !701, !709, !401}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !702, file: !6, line: 57, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!433, !701, !709, !319, !448}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !702, file: !6, line: 59, baseType: !715, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !669, !319}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !702, file: !6, line: 60, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!109, !669}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !702, file: !6, line: 61, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !669}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !670, file: !6, line: 419, baseType: !319, size: 64, offset: 1472)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !670, file: !6, line: 420, baseType: !319, size: 64, offset: 1536)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !670, file: !6, line: 421, baseType: !329, size: 64, offset: 1600)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !670, file: !6, line: 424, baseType: !730, size: 64, offset: 1664)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !670, file: !6, line: 425, baseType: !734, size: 64, offset: 1728)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !361, line: 20, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !280, line: 26, baseType: !109)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !670, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !670, file: !6, line: 435, baseType: !740, size: 256, offset: 1856)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !741, line: 66, size: 256, elements: !742)
!741 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!742 = !{!743, !752, !753, !758}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !740, file: !741, line: 67, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !745, line: 13, baseType: !746)
!745 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !277, line: 181, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 179, size: 64, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !747, file: !277, line: 180, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !361, line: 22, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !280, line: 30, baseType: !642)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !740, file: !741, line: 68, baseType: !698, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !740, file: !741, line: 70, baseType: !754, size: 32, offset: 96)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !755, line: 15, size: 32, elements: !756)
!755 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !754, file: !755, line: 20, baseType: !299, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !740, file: !741, line: 72, baseType: !323, size: 128, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !670, file: !6, line: 437, baseType: !760, size: 64, offset: 2112)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !762, line: 69, size: 320, elements: !763)
!762 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!763 = !{!764, !765, !766, !786, !788, !792, !793}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !761, file: !762, line: 70, baseType: !319, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !761, file: !762, line: 71, baseType: !669, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !761, file: !762, line: 72, baseType: !767, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !762, line: 47, size: 256, elements: !770)
!770 = !{!771, !772, !778, !782}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !762, line: 49, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !769, file: !762, line: 51, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!109, !319, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !769, file: !762, line: 53, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!109, !401, !776}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !769, file: !762, line: 55, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !275}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !761, file: !762, line: 73, baseType: !787, size: 16, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !761, file: !762, line: 74, baseType: !789, size: 8, offset: 208)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !361, line: 16, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !280, line: 20, baseType: !791)
!791 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !762, line: 75, baseType: !360, size: 8, offset: 216)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !762, line: 76, baseType: !794, size: 64, offset: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !761, file: !762, line: 76, size: 64, elements: !795)
!795 = !{!796, !797, !804}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !794, file: !762, line: 77, baseType: !275, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !794, file: !762, line: 78, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !762, line: 86, size: 128, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !800, file: !762, line: 87, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !800, file: !762, line: 88, baseType: !401, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !794, file: !762, line: 79, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !762, line: 92, size: 256, elements: !808)
!808 = !{!809, !810, !811, !813, !814}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !807, file: !762, line: 94, baseType: !7, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !807, file: !762, line: 95, baseType: !7, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !807, file: !762, line: 96, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !807, file: !762, line: 97, baseType: !767, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !807, file: !762, line: 98, baseType: !275, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !670, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !670, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !670, file: !6, line: 442, baseType: !730, size: 64, offset: 2240)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !670, file: !6, line: 443, baseType: !734, size: 64, offset: 2304)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !670, file: !6, line: 444, baseType: !820, size: 8, offset: 2368)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !277, line: 35, baseType: !821)
!821 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !670, file: !6, line: 451, baseType: !820, size: 8, offset: 2376)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !670, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !670, file: !6, line: 455, baseType: !825, size: 64, offset: 2432)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !827, line: 23, size: 96, elements: !828)
!827 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !826, file: !827, line: 24, baseType: !109, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !826, file: !827, line: 24, baseType: !109, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !826, file: !827, line: 24, baseType: !109, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !670, file: !6, line: 458, baseType: !833, size: 64, offset: 2496)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!109}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !670, file: !6, line: 460, baseType: !837, size: 4032, align: 512, offset: 2560)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 4032, elements: !861)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !838, file: !6, line: 363, baseType: !275, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !838, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !838, file: !6, line: 367, baseType: !843, size: 448, offset: 128)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !843, file: !6, line: 320, baseType: !669, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !843, file: !6, line: 321, baseType: !847, size: 384, offset: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !848, line: 40, size: 384, elements: !849)
!848 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !847, file: !848, line: 41, baseType: !851, size: 384, align: 64)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 384, align: 64, elements: !859)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !853, line: 5, size: 192, align: 64, elements: !854)
!853 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!854 = !{!855, !856, !858}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !852, file: !853, line: 6, baseType: !278, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !852, file: !853, line: 7, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !852, file: !853, line: 8, baseType: !857, size: 64, offset: 128)
!859 = !{!860}
!860 = !DISubrange(count: 2)
!861 = !{!862}
!862 = !DISubrange(count: 7)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !670, file: !6, line: 463, baseType: !864, size: 192, offset: 6592)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !865, line: 8, size: 192, elements: !866)
!865 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!866 = !{!867, !868, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !864, file: !865, line: 10, baseType: !7, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !864, file: !865, line: 11, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !864, file: !865, line: 12, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !873, line: 59, size: 48, elements: !874)
!873 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!874 = !{!875, !879, !880, !881, !882, !883}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !872, file: !873, line: 60, baseType: !876, size: 16)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !361, line: 18, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !280, line: 23, baseType: !878)
!878 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !872, file: !873, line: 61, baseType: !876, size: 16, offset: 16)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !872, file: !873, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !872, file: !873, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !872, file: !873, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !872, file: !873, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !670, file: !6, line: 465, baseType: !278, size: 64, offset: 6784)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !670, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !670, file: !6, line: 470, baseType: !323, size: 128, offset: 6912)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !670, file: !6, line: 471, baseType: !888, size: 64, offset: 7040)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !890, line: 33, size: 96, elements: !891)
!890 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!891 = !{!892, !893, !894, !895}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !889, file: !890, line: 37, baseType: !109, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !889, file: !890, line: 43, baseType: !109, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !889, file: !890, line: 45, baseType: !371, size: 16, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !889, file: !890, line: 47, baseType: !371, size: 16, offset: 80)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !670, file: !6, line: 476, baseType: !897, size: 64, offset: 7104)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !899)
!899 = !{!900, !916, !917, !918}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !898, file: !6, line: 379, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !903, line: 204, baseType: !904)
!903 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !903, line: 197, size: 192, elements: !905)
!905 = !{!906, !908, !909, !910, !912, !914}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !904, file: !903, line: 198, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !903, line: 21, baseType: !279)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !904, file: !903, line: 199, baseType: !363, size: 8, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !904, file: !903, line: 200, baseType: !363, size: 8, offset: 40)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !904, file: !903, line: 201, baseType: !911, size: 16, offset: 48)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !903, line: 17, baseType: !370)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !904, file: !903, line: 202, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !903, line: 16, baseType: !553)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !904, file: !903, line: 203, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !903, line: 22, baseType: !553)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !898, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !898, file: !6, line: 381, baseType: !401, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !898, file: !6, line: 382, baseType: !401, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !670, file: !6, line: 477, baseType: !898, size: 256, offset: 7168)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !670, file: !6, line: 480, baseType: !921, size: 64, offset: 7424)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !670, file: !6, line: 483, baseType: !924, size: 64, offset: 7488)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !670, file: !6, line: 488, baseType: !401, size: 64, offset: 7552)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !670, file: !6, line: 492, baseType: !275, size: 64, offset: 7616)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !670, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !670, file: !6, line: 495, baseType: !275, size: 64, offset: 7744)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !670, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !670, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !670, file: !6, line: 500, baseType: !933, size: 64, offset: 7872)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !935, line: 45, baseType: !936)
!935 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !670, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !670, file: !6, line: 504, baseType: !939, size: 64, offset: 8000)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !942, line: 96, size: 192, elements: !943)
!942 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!943 = !{!944, !945, !1026, !1030}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !941, file: !942, line: 97, baseType: !7, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !941, file: !942, line: 98, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !942, line: 24, size: 3072, elements: !948)
!948 = !{!949, !951, !952, !953, !954, !978, !979, !980, !981, !999, !1011, !1012, !1023, !1024, !1025}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !947, file: !942, line: 26, baseType: !950, size: 128)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 128, elements: !859)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !947, file: !942, line: 27, baseType: !950, size: 128, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !947, file: !942, line: 28, baseType: !109, size: 32, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !947, file: !942, line: 31, baseType: !336, size: 32, align: 512, offset: 512)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !947, file: !942, line: 32, baseType: !955, size: 960, offset: 576)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !956, line: 206, size: 960, elements: !957)
!956 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!957 = !{!958, !967, !972, !974, !975, !977}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !955, file: !956, line: 207, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !277, line: 232, size: 128, align: 64, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !960, file: !277, line: 233, baseType: !959, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !960, file: !277, line: 234, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !959}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !955, file: !956, line: 208, baseType: !968, size: 256, offset: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 256, elements: !970)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!970 = !{!971}
!971 = !DISubrange(count: 4)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !955, file: !956, line: 209, baseType: !973, size: 256, offset: 320)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !970)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !955, file: !956, line: 213, baseType: !437, size: 64, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !955, file: !956, line: 215, baseType: !976, size: 256, offset: 640)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !970)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !956, line: 216, baseType: !360, size: 8, offset: 896)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !947, file: !942, line: 33, baseType: !278, size: 64, offset: 1536)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !947, file: !942, line: 34, baseType: !278, size: 64, offset: 1600)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !947, file: !942, line: 35, baseType: !820, size: 8, offset: 1664)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !947, file: !942, line: 36, baseType: !982, size: 320, offset: 1728)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !983, line: 11, size: 320, elements: !984)
!983 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!984 = !{!985, !992, !993, !998}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !982, file: !983, line: 16, baseType: !986, size: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !277, line: 198, size: 128, elements: !987)
!987 = !{!988, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !277, line: 199, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !986, file: !277, line: 199, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !982, file: !983, line: 17, baseType: !278, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !982, file: !983, line: 18, baseType: !994, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !983, line: 19, baseType: !549, size: 32, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !947, file: !942, line: 37, baseType: !1000, size: 256, offset: 2048)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1001, line: 98, size: 256, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1000, file: !1001, line: 99, baseType: !744, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1000, file: !1001, line: 100, baseType: !323, size: 128, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1000, file: !1001, line: 101, baseType: !1006, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1001, line: 21, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !947, file: !942, line: 38, baseType: !960, size: 128, align: 64, offset: 2304)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !947, file: !942, line: 39, baseType: !1013, size: 64, offset: 2432)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !942, line: 49, size: 768, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1014, file: !942, line: 50, baseType: !336, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1014, file: !942, line: 51, baseType: !973, size: 256, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1014, file: !942, line: 53, baseType: !973, size: 256, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1014, file: !942, line: 54, baseType: !278, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1014, file: !942, line: 55, baseType: !1013, size: 64, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1014, file: !942, line: 56, baseType: !109, size: 32, offset: 704)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1014, file: !942, line: 57, baseType: !109, size: 32, offset: 736)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !947, file: !942, line: 40, baseType: !278, size: 64, offset: 2496)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !947, file: !942, line: 42, baseType: !109, size: 32, offset: 2560)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !947, file: !942, line: 43, baseType: !940, size: 64, offset: 2624)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !941, file: !942, line: 99, baseType: !1027, offset: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1028, line: 211, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1029 = !{}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !941, file: !942, line: 100, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !942, line: 63, size: 3008, elements: !1033)
!1033 = !{!1034, !1035, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1065}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1032, file: !942, line: 64, baseType: !1013, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1032, file: !942, line: 65, baseType: !1036, size: 192, offset: 64)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 192, elements: !402)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1032, file: !942, line: 67, baseType: !109, size: 32, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1032, file: !942, line: 68, baseType: !740, size: 256, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1032, file: !942, line: 69, baseType: !336, size: 32, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1032, file: !942, line: 70, baseType: !740, size: 256, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1032, file: !942, line: 71, baseType: !278, size: 64, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1032, file: !942, line: 72, baseType: !278, size: 64, offset: 960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1032, file: !942, line: 73, baseType: !278, size: 64, offset: 1024)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1032, file: !942, line: 74, baseType: !278, size: 64, offset: 1088)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1032, file: !942, line: 75, baseType: !278, size: 64, offset: 1152)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1032, file: !942, line: 76, baseType: !278, size: 64, offset: 1216)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1032, file: !942, line: 77, baseType: !278, size: 64, offset: 1280)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1032, file: !942, line: 78, baseType: !278, size: 64, offset: 1344)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1032, file: !942, line: 79, baseType: !820, size: 8, offset: 1408)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1032, file: !942, line: 80, baseType: !278, size: 64, offset: 1472)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1032, file: !942, line: 81, baseType: !740, size: 256, offset: 1536)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1032, file: !942, line: 82, baseType: !689, size: 256, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1032, file: !942, line: 84, baseType: !299, size: 32, offset: 2048)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1032, file: !942, line: 87, baseType: !278, size: 64, offset: 2112)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1032, file: !942, line: 88, baseType: !278, size: 64, offset: 2176)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1032, file: !942, line: 89, baseType: !1057, size: 704, offset: 2240)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1001, line: 111, size: 704, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1064}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1057, file: !1001, line: 112, baseType: !1000, size: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1057, file: !1001, line: 113, baseType: !982, size: 320, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1057, file: !1001, line: 116, baseType: !1062, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1001, line: 18, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1057, file: !1001, line: 117, baseType: !109, size: 32, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1032, file: !942, line: 90, baseType: !940, size: 64, offset: 2944)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !670, file: !6, line: 515, baseType: !1067, size: 64, offset: 8064)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1069, line: 117, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1068, file: !1069, line: 118, baseType: !736, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1068, file: !1069, line: 119, baseType: !736, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1068, file: !1069, line: 120, baseType: !437, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !670, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !670, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !670, file: !6, line: 520, baseType: !1077, size: 64, offset: 8192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !670, file: !6, line: 523, baseType: !1079, size: 64, offset: 8256)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !670, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !670, file: !6, line: 525, baseType: !1084, size: 64, offset: 8384)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !670, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !670, file: !6, line: 533, baseType: !275, size: 64, offset: 8512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !670, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !670, file: !6, line: 535, baseType: !1091, size: 64, offset: 8640)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !670, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !670, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !670, file: !6, line: 540, baseType: !1095, size: 64, offset: 8768)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1097, line: 32, size: 64, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1096, file: !1097, line: 33, baseType: !736, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1096, file: !1097, line: 34, baseType: !736, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !670, file: !6, line: 563, baseType: !323, size: 128, offset: 8832)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !670, file: !6, line: 565, baseType: !323, size: 128, offset: 8960)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !670, file: !6, line: 568, baseType: !1104, size: 64, offset: 9088)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !670, file: !6, line: 570, baseType: !299, size: 32, offset: 9152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !14, line: 2382, baseType: !644, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !645, file: !14, line: 2383, baseType: !1110, size: 64, offset: 512)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !277, line: 194, size: 64, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1110, file: !277, line: 195, baseType: !989, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !645, file: !14, line: 2385, baseType: !1114, offset: 576)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1028, line: 206, elements: !1029)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !645, file: !14, line: 2386, baseType: !1114, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !645, file: !14, line: 2387, baseType: !1114, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !645, file: !14, line: 2388, baseType: !1118, offset: 576)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, elements: !402)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !645, file: !14, line: 2390, baseType: !1114, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !645, file: !14, line: 2391, baseType: !1114, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !645, file: !14, line: 2392, baseType: !1114, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !645, file: !14, line: 2393, baseType: !1114, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !631, file: !14, line: 1197, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1127)
!1127 = !{!1128, !1132, !1136, !1137, !1141, !1147, !1151, !1152, !1153, !1157, !1161, !1165, !1166, !1167, !1173, !1177, !1178, !3396, !3397, !3398, !3399, !3403, !3407, !3454, !3469, !3470}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1126, file: !14, line: 2058, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!480, !630}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1126, file: !14, line: 2059, baseType: !1133, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !480}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1126, file: !14, line: 2060, baseType: !1133, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1126, file: !14, line: 2062, baseType: !1138, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !480, !109}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1126, file: !14, line: 2063, baseType: !1142, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!109, !480, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1126, file: !14, line: 2064, baseType: !1148, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!109, !480}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1126, file: !14, line: 2065, baseType: !1133, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1126, file: !14, line: 2066, baseType: !665, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1126, file: !14, line: 2067, baseType: !1154, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!109, !630, !109}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1126, file: !14, line: 2068, baseType: !1158, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!109, !630, !13}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1126, file: !14, line: 2069, baseType: !1162, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!109, !630}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1126, file: !14, line: 2070, baseType: !1158, size: 64, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1126, file: !14, line: 2071, baseType: !1162, size: 64, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1126, file: !14, line: 2072, baseType: !1168, size: 64, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!109, !515, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1126, file: !14, line: 2073, baseType: !1174, size: 64, offset: 896)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!109, !630, !869, !401}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1126, file: !14, line: 2074, baseType: !665, size: 64, offset: 960)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1126, file: !14, line: 2076, baseType: !1179, size: 64, offset: 1024)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!109, !1182, !515}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1184, line: 17, size: 960, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1216, !1217, !3395}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1183, file: !1184, line: 18, baseType: !401, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1183, file: !1184, line: 19, baseType: !448, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1183, file: !1184, line: 20, baseType: !448, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1183, file: !1184, line: 21, baseType: !448, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1183, file: !1184, line: 22, baseType: !448, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1183, file: !1184, line: 23, baseType: !640, size: 64, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1183, file: !1184, line: 24, baseType: !640, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !1184, line: 25, baseType: !740, size: 256, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1183, file: !1184, line: 26, baseType: !1195, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1184, line: 32, size: 256, elements: !1198)
!1198 = !{!1199, !1204, !1208, !1212}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1197, file: !1184, line: 33, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!275, !1182, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1197, file: !1184, line: 34, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1182, !275}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1197, file: !1184, line: 35, baseType: !1209, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!275, !1182, !275, !1203}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1197, file: !1184, line: 36, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!109, !1182, !275}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1183, file: !1184, line: 27, baseType: !109, size: 32, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1183, file: !1184, line: 28, baseType: !1218, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1221)
!1221 = !{!1222, !1233, !1234, !1236, !1237, !1238, !1239, !1240, !3200, !3201, !3210, !3216, !3217, !3385, !3386, !3387, !3388, !3390, !3391, !3394}
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !14, line: 995, baseType: !1223, size: 128)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1220, file: !14, line: 995, size: 128, elements: !1224)
!1224 = !{!1225, !1231, !1232}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1223, file: !14, line: 996, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1227, line: 60, size: 64, elements: !1228)
!1227 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1226, file: !1227, line: 61, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1223, file: !14, line: 997, baseType: !960, size: 128, align: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1223, file: !14, line: 998, baseType: !7, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1220, file: !14, line: 1005, baseType: !336, size: 32, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1220, file: !14, line: 1006, baseType: !1235, size: 32, offset: 160)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !277, line: 156, baseType: !7)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1220, file: !14, line: 1007, baseType: !744, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1220, file: !14, line: 1008, baseType: !740, size: 256, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1220, file: !14, line: 1009, baseType: !640, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1220, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1220, file: !14, line: 1011, baseType: !1241, size: 256, offset: 640)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1242)
!1242 = !{!1243, !1264, !3196, !3197, !3198, !3199}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1241, file: !14, line: 949, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1245, line: 34, baseType: !1246)
!1245 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 25, size: 64, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1246, file: !1245, line: 26, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1250, line: 27, baseType: !1251)
!1250 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1250, line: 13, size: 64, elements: !1252)
!1252 = !{!1253, !1263}
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1250, line: 14, baseType: !1254, size: 32)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1251, file: !1250, line: 14, size: 32, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1254, file: !1250, line: 15, baseType: !299, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !1250, line: 16, baseType: !1258, size: 32)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !1250, line: 16, size: 32, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1258, file: !1250, line: 18, baseType: !360, size: 8)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1258, file: !1250, line: 19, baseType: !1262, size: 24, offset: 8)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 24, elements: !402)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1251, file: !1250, line: 26, baseType: !348, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1241, file: !14, line: 950, baseType: !1265, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1273, !1274, !1281, !1282}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1266, file: !61, line: 61, baseType: !295, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1266, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1266, file: !61, line: 63, baseType: !336, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1266, file: !61, line: 65, baseType: !1272, size: 256, offset: 128)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 256, elements: !970)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1266, file: !61, line: 66, baseType: !1110, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1266, file: !61, line: 68, baseType: !1275, size: 192, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1276, line: 41, baseType: !1277)
!1276 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1276, line: 37, size: 192, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !1276, line: 38, baseType: !336, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1277, file: !1276, line: 39, baseType: !323, size: 128, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1266, file: !61, line: 69, baseType: !960, size: 128, align: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1266, file: !61, line: 70, baseType: !1283, offset: 768)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, elements: !1769)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1284, file: !61, line: 55, baseType: !109, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1284, file: !61, line: 56, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1290, line: 26, size: 1152, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1291 = !{!1292, !1305, !1306, !1307, !3172, !3176, !3177, !3178, !3181, !3182, !3183, !3184, !3195}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1289, file: !1290, line: 27, baseType: !1293, size: 192)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1294, line: 19, size: 192, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1295 = !{!1296, !1303, !1304}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1293, file: !1294, line: 20, baseType: !1297, size: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1298, line: 296, size: 128, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1297, file: !1298, line: 297, baseType: !336, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1297, file: !1298, line: 299, baseType: !276, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1297, file: !1298, line: 300, baseType: !275, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1293, file: !1294, line: 21, baseType: !7, size: 32, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1293, file: !1294, line: 22, baseType: !7, size: 32, offset: 160)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1289, file: !1290, line: 28, baseType: !960, size: 128, align: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1289, file: !1290, line: 29, baseType: !7, size: 32, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1289, file: !1290, line: 30, baseType: !1308, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1310, line: 746, size: 58368, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1311 = !{!1312, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1392, !1403, !1498, !1502, !1505, !1536, !1537, !1538, !1539, !1550, !1552, !1553, !1554, !1555, !1556, !1557, !1568, !1569, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1586, !1587, !1594, !1595, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1855, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1903, !1909, !2091, !2092, !2093, !2094, !2098, !2101, !2108, !2113, !2116, !2119, !2122, !2148, !2286, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2324, !2325, !2326, !2335, !2343, !2344, !2345, !2346, !2347, !2352, !2353, !2354, !2357, !2358, !2361, !2364, !2367, !2375, !2378, !2379, !2465, !2466, !2467, !2468, !2469, !2475, !2476, !2477, !2478, !2481, !2482, !2485, !2488, !2489, !2492, !2493, !2494, !2497, !2498, !2499, !2502, !2503, !2504, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2536, !2539, !2828, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2840, !2912, !2914, !2915, !2916, !2917, !2918, !2919, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2949, !2950, !2951}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1309, file: !1310, line: 752, baseType: !1313, size: 192)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1314, line: 56, size: 192, elements: !1315)
!1314 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1315 = !{!1316, !1317, !1318, !1319}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1313, file: !1314, line: 57, baseType: !278, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1313, file: !1314, line: 58, baseType: !278, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1313, file: !1314, line: 59, baseType: !549, size: 32, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1313, file: !1314, line: 61, baseType: !549, size: 32, offset: 160)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1309, file: !1310, line: 754, baseType: !7, size: 32, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1309, file: !1310, line: 767, baseType: !275, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1309, file: !1310, line: 768, baseType: !295, size: 32, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !1310, line: 770, baseType: !7, size: 32, offset: 352)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1309, file: !1310, line: 771, baseType: !7, size: 32, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1309, file: !1310, line: 774, baseType: !109, size: 32, offset: 416)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1309, file: !1310, line: 775, baseType: !1327, size: 128, offset: 448)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1328, line: 58, size: 128, elements: !1329)
!1328 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1329 = !{!1330, !1331, !1336, !1337}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1327, file: !1328, line: 59, baseType: !1226, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1327, file: !1328, line: 60, baseType: !1332, size: 32, offset: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1327, file: !1328, line: 60, size: 32, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1332, file: !1328, line: 61, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1332, file: !1328, line: 62, baseType: !299, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1327, file: !1328, line: 65, baseType: !369, size: 16, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1327, file: !1328, line: 65, baseType: !369, size: 16, offset: 112)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1309, file: !1310, line: 776, baseType: !7, size: 32, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1309, file: !1310, line: 777, baseType: !278, size: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1309, file: !1310, line: 778, baseType: !1308, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1309, file: !1310, line: 787, baseType: !109, size: 32, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1309, file: !1310, line: 788, baseType: !109, size: 32, offset: 800)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1309, file: !1310, line: 790, baseType: !109, size: 32, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1309, file: !1310, line: 792, baseType: !109, size: 32, offset: 864)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1309, file: !1310, line: 793, baseType: !109, size: 32, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1309, file: !1310, line: 794, baseType: !109, size: 32, offset: 928)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1309, file: !1310, line: 795, baseType: !7, size: 32, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1309, file: !1310, line: 797, baseType: !1349, size: 2048, offset: 1024)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1310, line: 551, size: 2048, elements: !1350)
!1350 = !{!1351, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1371, !1374, !1375, !1376}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1349, file: !1310, line: 553, baseType: !1352, size: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1310, line: 411, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1352, file: !1310, line: 412, baseType: !278, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1352, file: !1310, line: 413, baseType: !549, size: 32, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1349, file: !1310, line: 554, baseType: !852, size: 192, align: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1349, file: !1310, line: 555, baseType: !552, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1349, file: !1310, line: 556, baseType: !552, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1349, file: !1310, line: 558, baseType: !323, size: 128, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1349, file: !1310, line: 559, baseType: !7, size: 32, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1349, file: !1310, line: 561, baseType: !552, size: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1349, file: !1310, line: 562, baseType: !552, size: 64, offset: 704)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1349, file: !1310, line: 563, baseType: !552, size: 64, offset: 768)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1349, file: !1310, line: 564, baseType: !552, size: 64, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1349, file: !1310, line: 565, baseType: !750, size: 64, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1349, file: !1310, line: 566, baseType: !552, size: 64, offset: 960)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1349, file: !1310, line: 568, baseType: !552, size: 64, offset: 1024)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1349, file: !1310, line: 571, baseType: !109, size: 32, offset: 1088)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1349, file: !1310, line: 572, baseType: !1370, size: 64, offset: 1152)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1349, file: !1310, line: 574, baseType: !1372, size: 64, offset: 1216)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1310, line: 49, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1349, file: !1310, line: 576, baseType: !1372, size: 64, offset: 1280)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1349, file: !1310, line: 578, baseType: !278, size: 64, offset: 1344)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1349, file: !1310, line: 588, baseType: !1377, size: 512, align: 512, offset: 1536)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1310, line: 497, size: 512, align: 512, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1377, file: !1310, line: 498, baseType: !552, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1377, file: !1310, line: 499, baseType: !552, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1377, file: !1310, line: 500, baseType: !552, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1377, file: !1310, line: 501, baseType: !549, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1377, file: !1310, line: 502, baseType: !549, size: 32, offset: 224)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1377, file: !1310, line: 503, baseType: !278, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1377, file: !1310, line: 504, baseType: !278, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1377, file: !1310, line: 505, baseType: !278, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1377, file: !1310, line: 506, baseType: !1388, size: 64, align: 64, offset: 448)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1310, line: 445, size: 64, align: 64, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1388, file: !1310, line: 446, baseType: !7, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1388, file: !1310, line: 447, baseType: !7, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1309, file: !1310, line: 798, baseType: !1393, size: 384, offset: 3072)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1310, line: 592, size: 384, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1393, file: !1310, line: 593, baseType: !323, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1393, file: !1310, line: 594, baseType: !278, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1393, file: !1310, line: 595, baseType: !278, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1393, file: !1310, line: 596, baseType: !7, size: 32, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1393, file: !1310, line: 597, baseType: !371, size: 16, offset: 288)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1393, file: !1310, line: 598, baseType: !371, size: 16, offset: 304)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1393, file: !1310, line: 600, baseType: !1402, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1309, file: !1310, line: 799, baseType: !1404, size: 1792, offset: 3456)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1310, line: 610, size: 1792, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1495, !1496}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1404, file: !1310, line: 611, baseType: !852, size: 192, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1404, file: !1310, line: 618, baseType: !552, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1404, file: !1310, line: 619, baseType: !552, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1404, file: !1310, line: 620, baseType: !552, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1404, file: !1310, line: 621, baseType: !552, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1404, file: !1310, line: 622, baseType: !552, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1404, file: !1310, line: 629, baseType: !750, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1404, file: !1310, line: 630, baseType: !552, size: 64, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1310, line: 631, baseType: !7, size: 32, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1404, file: !1310, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1404, file: !1310, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1404, file: !1310, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1404, file: !1310, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1404, file: !1310, line: 662, baseType: !1420, size: 512, offset: 704)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1421)
!1421 = !{!1422, !1430, !1431, !1436, !1491, !1492, !1493, !1494}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1420, file: !19, line: 119, baseType: !1423, size: 256)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1424, line: 9, size: 256, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1423, file: !1424, line: 10, baseType: !852, size: 192, align: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1423, file: !1424, line: 11, baseType: !1428, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1429, line: 29, baseType: !750)
!1429 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1420, file: !19, line: 120, baseType: !1428, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1420, file: !19, line: 121, baseType: !1432, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!18, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1420, file: !19, line: 122, baseType: !1437, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1439)
!1439 = !{!1440, !1465, !1466, !1469, !1474, !1475, !1486, !1490}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1438, file: !19, line: 160, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1442, file: !19, line: 216, baseType: !698, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1442, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1442, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1442, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1442, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1442, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1442, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1442, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1442, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1442, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1442, file: !19, line: 227, baseType: !371, size: 16, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1442, file: !19, line: 228, baseType: !371, size: 16, offset: 208)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1442, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1442, file: !19, line: 235, baseType: !1428, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1442, file: !19, line: 236, baseType: !1435, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1442, file: !19, line: 237, baseType: !1428, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1442, file: !19, line: 238, baseType: !1435, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1442, file: !19, line: 239, baseType: !1462, size: 4096, align: 512, offset: 512)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1438, size: 4096, align: 512, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 8)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1438, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1438, file: !19, line: 162, baseType: !1467, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !277, line: 32, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !435, line: 96, baseType: !109)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1438, file: !19, line: 163, baseType: !1470, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !522, line: 274, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !522, line: 274, size: 32, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1471, file: !522, line: 274, baseType: !526, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1438, file: !19, line: 164, baseType: !1435, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1438, file: !19, line: 165, baseType: !1476, size: 128, offset: 256)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1424, line: 14, size: 128, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1476, file: !1424, line: 15, baseType: !1479, size: 128)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !853, line: 26, size: 128, elements: !1480)
!1480 = !{!1481, !1485}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1479, file: !853, line: 27, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !853, line: 12, size: 64, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1482, file: !853, line: 13, baseType: !857, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1479, file: !853, line: 28, baseType: !857, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1438, file: !19, line: 166, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1428}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1438, file: !19, line: 167, baseType: !1428, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1420, file: !19, line: 123, baseType: !360, size: 8, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1420, file: !19, line: 124, baseType: !360, size: 8, offset: 456)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1420, file: !19, line: 125, baseType: !360, size: 8, offset: 464)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1420, file: !19, line: 126, baseType: !360, size: 8, offset: 472)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1404, file: !1310, line: 671, baseType: !1420, size: 512, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1404, file: !1310, line: 679, baseType: !1497, size: 64, offset: 1728)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1309, file: !1310, line: 800, baseType: !1499, size: 64, offset: 5248)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1310, line: 800, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1309, file: !1310, line: 809, baseType: !1503, size: 64, offset: 5312)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1310, line: 70, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1309, file: !1310, line: 825, baseType: !1506, size: 2048, align: 512, offset: 5632)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1310, line: 509, size: 2048, align: 512, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1506, file: !1310, line: 511, baseType: !552, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1506, file: !1310, line: 512, baseType: !552, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1506, file: !1310, line: 513, baseType: !552, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1506, file: !1310, line: 514, baseType: !552, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1506, file: !1310, line: 515, baseType: !552, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1506, file: !1310, line: 516, baseType: !552, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1506, file: !1310, line: 518, baseType: !552, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1506, file: !1310, line: 519, baseType: !552, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1506, file: !1310, line: 520, baseType: !750, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1506, file: !1310, line: 522, baseType: !552, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1506, file: !1310, line: 523, baseType: !552, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1506, file: !1310, line: 524, baseType: !750, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1506, file: !1310, line: 526, baseType: !750, size: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1506, file: !1310, line: 527, baseType: !552, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1506, file: !1310, line: 529, baseType: !552, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1506, file: !1310, line: 530, baseType: !552, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1506, file: !1310, line: 531, baseType: !552, size: 64, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1506, file: !1310, line: 532, baseType: !552, size: 64, offset: 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1506, file: !1310, line: 533, baseType: !552, size: 64, offset: 1152)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1506, file: !1310, line: 535, baseType: !552, size: 64, offset: 1216)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1506, file: !1310, line: 536, baseType: !552, size: 64, offset: 1280)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1506, file: !1310, line: 537, baseType: !552, size: 64, offset: 1344)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1506, file: !1310, line: 538, baseType: !552, size: 64, offset: 1408)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1506, file: !1310, line: 539, baseType: !552, size: 64, offset: 1472)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1506, file: !1310, line: 540, baseType: !552, size: 64, offset: 1536)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1506, file: !1310, line: 541, baseType: !552, size: 64, offset: 1600)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1506, file: !1310, line: 542, baseType: !552, size: 64, offset: 1664)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1506, file: !1310, line: 543, baseType: !552, size: 64, offset: 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1309, file: !1310, line: 833, baseType: !7, size: 32, offset: 7680)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1309, file: !1310, line: 836, baseType: !7, size: 32, offset: 7712)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1309, file: !1310, line: 837, baseType: !109, size: 32, offset: 7744)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1309, file: !1310, line: 838, baseType: !1540, size: 64, offset: 7808)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1543, line: 19, baseType: !1544)
!1543 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1543, line: 19, size: 64, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1544, file: !1543, line: 19, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !1548)
!1548 = !{!1549}
!1549 = !DISubrange(count: 1)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1309, file: !1310, line: 839, baseType: !1551, size: 64, offset: 7872)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1309, file: !1310, line: 840, baseType: !1542, size: 64, offset: 7936)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1309, file: !1310, line: 841, baseType: !275, size: 64, offset: 8000)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1309, file: !1310, line: 843, baseType: !371, size: 16, offset: 8064)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1309, file: !1310, line: 845, baseType: !371, size: 16, offset: 8080)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1309, file: !1310, line: 848, baseType: !109, size: 32, offset: 8096)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1309, file: !1310, line: 849, baseType: !1558, size: 32, offset: 8128)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1310, line: 718, size: 32, elements: !1559)
!1559 = !{!1560, !1567}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1558, file: !1310, line: 724, baseType: !1561, size: 32)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !1310, line: 719, size: 32, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1561, file: !1310, line: 720, baseType: !360, size: 8)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1561, file: !1310, line: 721, baseType: !360, size: 8, offset: 8)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1561, file: !1310, line: 722, baseType: !360, size: 8, offset: 16)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1561, file: !1310, line: 723, baseType: !360, size: 8, offset: 24)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1558, file: !1310, line: 725, baseType: !549, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1309, file: !1310, line: 850, baseType: !323, size: 128, offset: 8192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1309, file: !1310, line: 851, baseType: !1570, size: 64, offset: 8320)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1310, line: 60, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1309, file: !1310, line: 855, baseType: !278, size: 64, offset: 8384)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1309, file: !1310, line: 856, baseType: !360, size: 8, offset: 8448)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1309, file: !1310, line: 857, baseType: !360, size: 8, offset: 8456)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1309, file: !1310, line: 858, baseType: !109, size: 32, offset: 8480)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1309, file: !1310, line: 859, baseType: !323, size: 128, offset: 8512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1309, file: !1310, line: 860, baseType: !109, size: 32, offset: 8640)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1309, file: !1310, line: 861, baseType: !323, size: 128, offset: 8704)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1309, file: !1310, line: 873, baseType: !1580, size: 256, offset: 8832)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1310, line: 376, size: 256, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1580, file: !1310, line: 381, baseType: !278, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1580, file: !1310, line: 384, baseType: !554, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1580, file: !1310, line: 389, baseType: !554, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1580, file: !1310, line: 392, baseType: !554, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1309, file: !1310, line: 875, baseType: !323, size: 128, offset: 9088)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1309, file: !1310, line: 877, baseType: !1588, size: 320, offset: 9216)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1589, line: 86, size: 320, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1588, file: !1589, line: 87, baseType: !109, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1588, file: !1589, line: 88, baseType: !323, size: 128, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1588, file: !1589, line: 89, baseType: !323, size: 128, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1309, file: !1310, line: 878, baseType: !852, size: 192, align: 64, offset: 9536)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1309, file: !1310, line: 881, baseType: !1596, size: 64, offset: 9728)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1598)
!1598 = !{!1599, !1767}
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !38, line: 734, baseType: !1600, size: 10240)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !38, line: 734, size: 10240, elements: !1601)
!1601 = !{!1602, !1606, !1619, !1624, !1625, !1626, !1627, !1628, !1629, !1638, !1639, !1640, !1646, !1647, !1648, !1649, !1650, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1687, !1697, !1700, !1745, !1746, !1747, !1750, !1753, !1754, !1757, !1758, !1759, !1765, !1766}
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !38, line: 739, baseType: !1603, size: 512, align: 512)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !38, line: 739, size: 512, align: 512, elements: !1604)
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1603, file: !38, line: 747, baseType: !299, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1600, file: !38, line: 750, baseType: !1607, size: 128, offset: 512)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1608, line: 218, size: 128, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1609 = !{!1610, !1617, !1618}
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1608, line: 219, baseType: !1611, size: 32)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1608, line: 219, size: 32, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1611, file: !1608, line: 220, baseType: !336, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1611, file: !1608, line: 221, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1608, line: 197, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1608, line: 197, elements: !1029)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1607, file: !1608, line: 223, baseType: !7, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1607, file: !1608, line: 224, baseType: !275, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1600, file: !38, line: 752, baseType: !1620, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!278, !1623, !278, !278, !278, !278}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1600, file: !38, line: 756, baseType: !278, size: 64, offset: 704)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1600, file: !38, line: 757, baseType: !278, size: 64, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1600, file: !38, line: 760, baseType: !278, size: 64, offset: 832)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1600, file: !38, line: 761, baseType: !278, size: 64, offset: 896)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1600, file: !38, line: 763, baseType: !278, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1600, file: !38, line: 764, baseType: !1630, size: 64, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1632, line: 299, baseType: !1633)
!1632 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1632, line: 299, size: 64, elements: !1634)
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1633, file: !1632, line: 299, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1637, line: 18, baseType: !278)
!1637 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1600, file: !38, line: 773, baseType: !299, size: 32, offset: 1088)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1600, file: !38, line: 785, baseType: !299, size: 32, offset: 1120)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1600, file: !38, line: 795, baseType: !1641, size: 64, offset: 1152)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1642, file: !38, line: 727, baseType: !552, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1642, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1600, file: !38, line: 801, baseType: !278, size: 64, offset: 1216)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1600, file: !38, line: 804, baseType: !744, size: 64, offset: 1280)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1600, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1600, file: !38, line: 808, baseType: !336, size: 32, offset: 1376)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1600, file: !38, line: 823, baseType: !1651, size: 320, offset: 1408)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1652, line: 48, size: 320, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1653 = !{!1654, !1655, !1656, !1657, !1658}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1651, file: !1652, line: 49, baseType: !744, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1651, file: !1652, line: 55, baseType: !744, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1651, file: !1652, line: 57, baseType: !754, size: 32, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1651, file: !1652, line: 59, baseType: !698, size: 32, offset: 160)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1651, file: !1652, line: 60, baseType: !323, size: 128, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1600, file: !38, line: 825, baseType: !323, size: 128, offset: 1728)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1600, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1600, file: !38, line: 849, baseType: !278, size: 64, offset: 1920)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1600, file: !38, line: 850, baseType: !278, size: 64, offset: 1984)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1600, file: !38, line: 852, baseType: !278, size: 64, offset: 2048)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1600, file: !38, line: 853, baseType: !278, size: 64, offset: 2112)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1600, file: !38, line: 854, baseType: !746, size: 64, offset: 2176)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1600, file: !38, line: 855, baseType: !278, size: 64, offset: 2240)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1600, file: !38, line: 856, baseType: !278, size: 64, offset: 2304)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1600, file: !38, line: 857, baseType: !278, size: 64, offset: 2368)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1600, file: !38, line: 858, baseType: !278, size: 64, offset: 2432)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1600, file: !38, line: 865, baseType: !526, size: 32, offset: 2496)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1600, file: !38, line: 867, baseType: !336, size: 32, offset: 2528)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1600, file: !38, line: 869, baseType: !278, size: 64, offset: 2560)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1600, file: !38, line: 869, baseType: !278, size: 64, offset: 2624)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1600, file: !38, line: 869, baseType: !278, size: 64, offset: 2688)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1600, file: !38, line: 869, baseType: !278, size: 64, offset: 2752)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1600, file: !38, line: 870, baseType: !278, size: 64, offset: 2816)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1600, file: !38, line: 870, baseType: !278, size: 64, offset: 2880)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1600, file: !38, line: 870, baseType: !278, size: 64, offset: 2944)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1600, file: !38, line: 871, baseType: !278, size: 64, offset: 3008)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1600, file: !38, line: 871, baseType: !278, size: 64, offset: 3072)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1600, file: !38, line: 871, baseType: !278, size: 64, offset: 3136)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1600, file: !38, line: 871, baseType: !278, size: 64, offset: 3200)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1600, file: !38, line: 873, baseType: !1684, size: 3328, offset: 3264)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 3328, elements: !1685)
!1685 = !{!1686}
!1686 = !DISubrange(count: 52)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1600, file: !38, line: 875, baseType: !1688, size: 1280, offset: 6592)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1689, size: 1280, elements: !970)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1690, line: 22, size: 320, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1691 = !{!1692, !1693, !1694, !1695}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1689, file: !1690, line: 23, baseType: !698, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1689, file: !1690, line: 24, baseType: !750, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1689, file: !1690, line: 26, baseType: !323, size: 128, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1689, file: !1690, line: 28, baseType: !1696, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1600, file: !38, line: 877, baseType: !1698, size: 64, offset: 7872)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1600, file: !38, line: 880, baseType: !1701, size: 1088, offset: 7936)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1702, line: 72, baseType: !1703)
!1702 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1702, line: 23, size: 1088, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1712, !1713, !1714, !1715, !1742, !1743, !1744}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1703, file: !1702, line: 28, baseType: !552, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1703, file: !1702, line: 38, baseType: !746, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1703, file: !1702, line: 40, baseType: !278, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1703, file: !1702, line: 43, baseType: !1651, size: 320, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1703, file: !1702, line: 44, baseType: !1710, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1702, line: 44, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1703, file: !1702, line: 48, baseType: !278, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1703, file: !1702, line: 59, baseType: !740, size: 256, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1703, file: !1702, line: 60, baseType: !275, size: 64, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1703, file: !1702, line: 61, baseType: !1716, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1719, line: 13, size: 1216, elements: !1720)
!1719 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1718, file: !1719, line: 14, baseType: !275, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1718, file: !1719, line: 15, baseType: !278, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1718, file: !1719, line: 17, baseType: !278, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1718, file: !1719, line: 17, baseType: !278, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1718, file: !1719, line: 18, baseType: !278, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1718, file: !1719, line: 18, baseType: !278, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1718, file: !1719, line: 19, baseType: !1728, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1718, file: !1719, line: 21, baseType: !437, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1718, file: !1719, line: 23, baseType: !437, size: 64, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1718, file: !1719, line: 24, baseType: !437, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1718, file: !1719, line: 25, baseType: !437, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1718, file: !1719, line: 26, baseType: !437, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1718, file: !1719, line: 27, baseType: !437, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1718, file: !1719, line: 28, baseType: !437, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1718, file: !1719, line: 29, baseType: !437, size: 64, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1718, file: !1719, line: 30, baseType: !437, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1718, file: !1719, line: 31, baseType: !437, size: 64, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1718, file: !1719, line: 32, baseType: !437, size: 64, offset: 1088)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1718, file: !1719, line: 33, baseType: !437, size: 64, offset: 1152)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1703, file: !1702, line: 63, baseType: !299, size: 32, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1703, file: !1702, line: 69, baseType: !369, size: 16, offset: 1056)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1703, file: !1702, line: 70, baseType: !876, size: 16, offset: 1072)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1600, file: !38, line: 882, baseType: !278, size: 64, offset: 9024)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1600, file: !38, line: 885, baseType: !336, size: 32, offset: 9088)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1600, file: !38, line: 886, baseType: !1748, size: 64, offset: 9152)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1600, file: !38, line: 901, baseType: !1751, size: 64, offset: 9216)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1600, file: !38, line: 904, baseType: !1623, size: 64, offset: 9280)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1600, file: !38, line: 906, baseType: !1755, size: 64, offset: 9344)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1600, file: !38, line: 930, baseType: !299, size: 32, offset: 9408)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1600, file: !38, line: 933, baseType: !299, size: 32, offset: 9440)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1600, file: !38, line: 935, baseType: !1760, size: 64, offset: 9472)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !54, line: 103, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1760, file: !54, line: 104, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !54, line: 101, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1600, file: !38, line: 940, baseType: !744, size: 64, offset: 9536)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1600, file: !38, line: 942, baseType: !1000, size: 256, offset: 9600)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1597, file: !38, line: 986, baseType: !1768, offset: 10240)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !1769)
!1769 = !{!1770}
!1770 = !DISubrange(count: -1)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1309, file: !1310, line: 882, baseType: !1596, size: 64, offset: 9792)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1309, file: !1310, line: 884, baseType: !109, size: 32, offset: 9856)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1309, file: !1310, line: 885, baseType: !109, size: 32, offset: 9888)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1309, file: !1310, line: 886, baseType: !109, size: 32, offset: 9920)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1309, file: !1310, line: 888, baseType: !109, size: 32, offset: 9952)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1309, file: !1310, line: 890, baseType: !278, size: 64, offset: 9984)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1309, file: !1310, line: 893, baseType: !7, size: 32, offset: 10048)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1309, file: !1310, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1309, file: !1310, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1309, file: !1310, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1309, file: !1310, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1309, file: !1310, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1309, file: !1310, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1309, file: !1310, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1309, file: !1310, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1309, file: !1310, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1309, file: !1310, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1309, file: !1310, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1309, file: !1310, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1309, file: !1310, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1309, file: !1310, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1309, file: !1310, line: 969, baseType: !278, size: 64, offset: 10176)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1309, file: !1310, line: 971, baseType: !1794, size: 448, offset: 10240)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !24, line: 25, size: 448, elements: !1795)
!1795 = !{!1796, !1797, !1802}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1794, file: !24, line: 26, baseType: !278, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1794, file: !24, line: 27, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!437, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !24, line: 28, baseType: !1803, size: 320, offset: 128)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !24, line: 28, size: 320, elements: !1804)
!1804 = !{!1805, !1815, !1840}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1803, file: !24, line: 37, baseType: !1806, size: 320)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !24, line: 30, size: 320, elements: !1807)
!1807 = !{!1808, !1810, !1811, !1812, !1813, !1814}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1806, file: !24, line: 31, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1806, file: !24, line: 32, baseType: !549, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1806, file: !24, line: 33, baseType: !549, size: 32, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1806, file: !24, line: 34, baseType: !549, size: 32, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1806, file: !24, line: 35, baseType: !552, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1806, file: !24, line: 36, baseType: !1809, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1803, file: !24, line: 47, baseType: !1816, size: 192)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !24, line: 39, size: 192, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1839}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1816, file: !24, line: 40, baseType: !1467, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1816, file: !24, line: 41, baseType: !23, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !24, line: 42, baseType: !1821, size: 64, offset: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1816, file: !24, line: 42, size: 64, elements: !1822)
!1822 = !{!1823, !1831}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1821, file: !24, line: 43, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1826, line: 7, size: 128, elements: !1827)
!1826 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1827 = !{!1828, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1825, file: !1826, line: 8, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !435, line: 93, baseType: !642)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1825, file: !1826, line: 9, baseType: !642, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1821, file: !24, line: 44, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1834, line: 7, size: 64, elements: !1835)
!1834 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1835 = !{!1836, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1833, file: !1834, line: 8, baseType: !1837, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1834, line: 5, baseType: !736)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1833, file: !1834, line: 9, baseType: !736, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1816, file: !24, line: 46, baseType: !552, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1803, file: !24, line: 55, baseType: !1841, size: 256)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !24, line: 49, size: 256, elements: !1842)
!1842 = !{!1843, !1851, !1852, !1853, !1854}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1841, file: !24, line: 50, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1846, line: 36, size: 64, elements: !1847)
!1846 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1847 = !{!1848, !1849, !1850}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1845, file: !1846, line: 37, baseType: !109, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1845, file: !1846, line: 38, baseType: !878, size: 16, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1845, file: !1846, line: 39, baseType: !878, size: 16, offset: 48)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1841, file: !24, line: 51, baseType: !109, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1841, file: !24, line: 52, baseType: !109, size: 32, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1841, file: !24, line: 53, baseType: !278, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1841, file: !24, line: 54, baseType: !278, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1309, file: !1310, line: 973, baseType: !1856, size: 32, offset: 10688)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !277, line: 27, baseType: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !435, line: 28, baseType: !109)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1309, file: !1310, line: 974, baseType: !1856, size: 32, offset: 10720)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1309, file: !1310, line: 978, baseType: !278, size: 64, offset: 10752)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1309, file: !1310, line: 987, baseType: !1308, size: 64, offset: 10816)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1309, file: !1310, line: 990, baseType: !1308, size: 64, offset: 10880)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1309, file: !1310, line: 995, baseType: !323, size: 128, offset: 10944)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1309, file: !1310, line: 996, baseType: !323, size: 128, offset: 11072)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1309, file: !1310, line: 997, baseType: !1308, size: 64, offset: 11200)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1309, file: !1310, line: 1005, baseType: !323, size: 128, offset: 11264)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1309, file: !1310, line: 1006, baseType: !323, size: 128, offset: 11392)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1309, file: !1310, line: 1009, baseType: !1265, size: 64, offset: 11520)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1309, file: !1310, line: 1010, baseType: !1869, size: 512, offset: 11584)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 512, elements: !970)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1309, file: !1310, line: 1011, baseType: !323, size: 128, offset: 12096)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1309, file: !1310, line: 1012, baseType: !323, size: 128, offset: 12224)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1309, file: !1310, line: 1014, baseType: !688, size: 64, offset: 12352)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1309, file: !1310, line: 1017, baseType: !869, size: 64, offset: 12416)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1309, file: !1310, line: 1020, baseType: !869, size: 64, offset: 12480)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1309, file: !1310, line: 1023, baseType: !275, size: 64, offset: 12544)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1309, file: !1310, line: 1025, baseType: !552, size: 64, offset: 12608)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1309, file: !1310, line: 1026, baseType: !552, size: 64, offset: 12672)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1309, file: !1310, line: 1031, baseType: !552, size: 64, offset: 12736)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1309, file: !1310, line: 1032, baseType: !1880, size: 192, offset: 12800)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1310, line: 324, size: 192, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1880, file: !1310, line: 326, baseType: !552, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1880, file: !1310, line: 327, baseType: !552, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1880, file: !1310, line: 328, baseType: !698, size: 32, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1309, file: !1310, line: 1041, baseType: !278, size: 64, offset: 12992)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1309, file: !1310, line: 1042, baseType: !278, size: 64, offset: 13056)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1309, file: !1310, line: 1045, baseType: !552, size: 64, offset: 13120)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1309, file: !1310, line: 1048, baseType: !552, size: 64, offset: 13184)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1309, file: !1310, line: 1051, baseType: !278, size: 64, offset: 13248)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1309, file: !1310, line: 1052, baseType: !278, size: 64, offset: 13312)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1309, file: !1310, line: 1055, baseType: !1892, size: 640, offset: 13376)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1893, line: 132, size: 640, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1894 = !{!1895, !1901, !1902}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1892, file: !1893, line: 133, baseType: !1896, size: 576)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1897, size: 576, elements: !402)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1893, line: 117, size: 192, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1897, file: !1893, line: 118, baseType: !552, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1897, file: !1893, line: 119, baseType: !1476, size: 128, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1892, file: !1893, line: 134, baseType: !7, size: 32, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1892, file: !1893, line: 135, baseType: !7, size: 32, offset: 608)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1309, file: !1310, line: 1058, baseType: !1904, size: 448, offset: 14016)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1893, line: 144, size: 448, elements: !1905)
!1905 = !{!1906, !1907, !1908}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1904, file: !1893, line: 145, baseType: !960, size: 128, align: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1904, file: !1893, line: 146, baseType: !740, size: 256, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1904, file: !1893, line: 147, baseType: !7, size: 32, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1309, file: !1310, line: 1064, baseType: !1910, size: 64, offset: 14464)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1913, line: 110, size: 1472, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1931, !1932, !1933, !1934, !1935, !1936, !2046, !2047, !2048, !2049, !2050, !2073, !2074, !2078, !2086}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1912, file: !1913, line: 111, baseType: !744, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1912, file: !1913, line: 112, baseType: !486, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1912, file: !1913, line: 113, baseType: !495, size: 32, offset: 96)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1912, file: !1913, line: 114, baseType: !486, size: 32, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1912, file: !1913, line: 115, baseType: !495, size: 32, offset: 160)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1912, file: !1913, line: 116, baseType: !486, size: 32, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1912, file: !1913, line: 117, baseType: !495, size: 32, offset: 224)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1912, file: !1913, line: 118, baseType: !486, size: 32, offset: 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1912, file: !1913, line: 119, baseType: !495, size: 32, offset: 288)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1912, file: !1913, line: 120, baseType: !7, size: 32, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1912, file: !1913, line: 121, baseType: !1926, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1927, line: 24, baseType: !1928)
!1927 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1927, line: 24, size: 64, elements: !1929)
!1929 = !{!1930}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1928, file: !1927, line: 24, baseType: !552, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1912, file: !1913, line: 122, baseType: !1926, size: 64, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1912, file: !1913, line: 123, baseType: !1926, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1912, file: !1913, line: 124, baseType: !1926, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1912, file: !1913, line: 125, baseType: !1926, size: 64, offset: 640)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1912, file: !1913, line: 127, baseType: !363, size: 8, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1912, file: !1913, line: 129, baseType: !1937, size: 64, offset: 768)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1939, line: 195, size: 1728, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1940 = !{!1941, !1942, !1945, !1950, !1951, !1954, !1955, !1962, !1963, !1964, !1965, !1968, !1969, !1970, !1971, !1972, !2010, !2031}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1938, file: !1939, line: 196, baseType: !295, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1938, file: !1939, line: 197, baseType: !1943, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1939, line: 28, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !277, line: 104, baseType: !736)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !1939, line: 198, baseType: !1946, size: 192, offset: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !1939, line: 198, size: 192, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1946, file: !1939, line: 199, baseType: !323, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1946, file: !1939, line: 200, baseType: !852, size: 192, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1938, file: !1939, line: 205, baseType: !1651, size: 320, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1938, file: !1939, line: 206, baseType: !1952, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1939, line: 206, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1938, file: !1939, line: 207, baseType: !275, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !1939, line: 208, baseType: !1956, size: 64, offset: 704)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !1939, line: 208, size: 64, elements: !1957)
!1957 = !{!1958, !1961}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1956, file: !1939, line: 209, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1960, line: 8, baseType: !751)
!1960 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1956, file: !1939, line: 210, baseType: !1959, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1938, file: !1939, line: 212, baseType: !1959, size: 64, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1938, file: !1939, line: 213, baseType: !486, size: 32, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1938, file: !1939, line: 214, baseType: !495, size: 32, offset: 864)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1938, file: !1939, line: 215, baseType: !1966, size: 32, offset: 896)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1939, line: 31, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !277, line: 110, baseType: !549)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1938, file: !1939, line: 216, baseType: !371, size: 16, offset: 928)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1938, file: !1939, line: 217, baseType: !371, size: 16, offset: 944)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1938, file: !1939, line: 221, baseType: !878, size: 16, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1938, file: !1939, line: 228, baseType: !278, size: 64, offset: 1024)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !1939, line: 245, baseType: !1973, size: 320, offset: 1088)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !1939, line: 245, size: 320, elements: !1974)
!1974 = !{!1975, !2002}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1973, file: !1939, line: 246, baseType: !1976, size: 320)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1939, line: 114, size: 320, elements: !1977)
!1977 = !{!1978, !1979, !1991, !1994, !2001}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1976, file: !1939, line: 116, baseType: !278, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1939, line: 117, baseType: !1980, size: 64, offset: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1939, line: 117, size: 64, elements: !1981)
!1981 = !{!1982, !1990}
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1980, file: !1939, line: 118, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1939, line: 118, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1983, file: !1939, line: 120, baseType: !369, size: 16)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1983, file: !1939, line: 121, baseType: !1987, size: 48, offset: 16)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 48, elements: !1988)
!1988 = !{!1989}
!1989 = !DISubrange(count: 6)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1980, file: !1939, line: 127, baseType: !278, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1976, file: !1939, line: 129, baseType: !1992, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1939, line: 102, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1976, file: !1939, line: 130, baseType: !1995, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1939, line: 108, size: 192, elements: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1996, file: !1939, line: 109, baseType: !960, size: 128, align: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1996, file: !1939, line: 110, baseType: !295, size: 32, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1996, file: !1939, line: 111, baseType: !820, size: 8, offset: 160)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1976, file: !1939, line: 131, baseType: !319, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !1939, line: 247, baseType: !2003, size: 320)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1939, line: 247, size: 320, elements: !2004)
!2004 = !{!2005, !2006, !2007, !2008, !2009}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2003, file: !1939, line: 248, baseType: !278, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2003, file: !1939, line: 249, baseType: !278, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2003, file: !1939, line: 250, baseType: !1992, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2003, file: !1939, line: 251, baseType: !1995, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2003, file: !1939, line: 252, baseType: !401, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !1939, line: 260, baseType: !2011, size: 256, offset: 1408)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !1939, line: 260, size: 256, elements: !2012)
!2012 = !{!2013, !2019}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2011, file: !1939, line: 261, baseType: !2014, size: 256)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1939, line: 134, size: 256, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2014, file: !1939, line: 135, baseType: !275, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2014, file: !1939, line: 136, baseType: !2018, size: 256)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !970)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !2011, file: !1939, line: 262, baseType: !2020, size: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !1939, line: 262, size: 256, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2020, file: !1939, line: 264, baseType: !323, size: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2020, file: !1939, line: 265, baseType: !2024, size: 128, offset: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2025, line: 22, size: 128, elements: !2026)
!2025 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2026 = !{!2027, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2024, file: !2025, line: 23, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2025, line: 23, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2024, file: !2025, line: 24, baseType: !278, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1938, file: !1939, line: 280, baseType: !2032, size: 64, offset: 1664)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1939, line: 176, size: 192, elements: !2034)
!2034 = !{!2035, !2044, !2045}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2033, file: !1939, line: 177, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1939, line: 171, baseType: !2037)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!109, !1937, !2040, !2042, !1937}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2014)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2033, file: !1939, line: 178, baseType: !1937, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2033, file: !1939, line: 179, baseType: !1992, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1912, file: !1913, line: 130, baseType: !1937, size: 64, offset: 832)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1912, file: !1913, line: 131, baseType: !1937, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1912, file: !1913, line: 132, baseType: !1937, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1912, file: !1913, line: 135, baseType: !275, size: 64, offset: 1024)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1912, file: !1913, line: 137, baseType: !2051, size: 64, offset: 1088)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2053, line: 14, size: 1088, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2052, file: !2053, line: 15, baseType: !295, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2052, file: !2053, line: 17, baseType: !1689, size: 320, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2052, file: !2053, line: 19, baseType: !278, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2052, file: !2053, line: 20, baseType: !744, size: 64, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2052, file: !2053, line: 23, baseType: !986, size: 128, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2052, file: !2053, line: 24, baseType: !486, size: 32, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2052, file: !2053, line: 29, baseType: !744, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2052, file: !2053, line: 36, baseType: !2063, size: 320, offset: 768)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2064, line: 15, size: 320, elements: !2065)
!2064 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2063, file: !2064, line: 16, baseType: !698, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2063, file: !2064, line: 18, baseType: !109, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2063, file: !2064, line: 19, baseType: !109, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2063, file: !2064, line: 20, baseType: !109, size: 32, offset: 96)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2063, file: !2064, line: 21, baseType: !109, size: 32, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2063, file: !2064, line: 22, baseType: !278, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2063, file: !2064, line: 23, baseType: !278, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1912, file: !1913, line: 138, baseType: !1751, size: 64, offset: 1152)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1912, file: !1913, line: 139, baseType: !2075, size: 64, offset: 1216)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2077, line: 16, flags: DIFlagFwdDecl)
!2077 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1912, file: !1913, line: 140, baseType: !2079, size: 64, offset: 1280)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1913, line: 25, size: 64, elements: !2081)
!2081 = !{!2082, !2083, !2084}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2080, file: !1913, line: 26, baseType: !299, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2080, file: !1913, line: 27, baseType: !109, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2080, file: !1913, line: 28, baseType: !2085, offset: 64)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, elements: !1769)
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !1913, line: 142, baseType: !2087, size: 128, offset: 1344)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !1913, line: 142, size: 128, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2087, file: !1913, line: 143, baseType: !109, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2087, file: !1913, line: 144, baseType: !960, size: 128, align: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1309, file: !1310, line: 1067, baseType: !1910, size: 64, offset: 14528)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1309, file: !1310, line: 1070, baseType: !1910, size: 64, offset: 14592)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1309, file: !1310, line: 1074, baseType: !1937, size: 64, offset: 14656)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1309, file: !1310, line: 1084, baseType: !2095, size: 128, offset: 14720)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 128, elements: !2096)
!2096 = !{!2097}
!2097 = !DISubrange(count: 16)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1309, file: !1310, line: 1086, baseType: !2099, size: 64, offset: 14848)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1310, line: 55, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1309, file: !1310, line: 1089, baseType: !2102, size: 64, offset: 14912)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2103, line: 12, size: 64, elements: !2104)
!2103 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2104 = !{!2105}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2102, file: !2103, line: 13, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2103, line: 8, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1309, file: !1310, line: 1090, baseType: !2109, size: 128, offset: 14976)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2110, line: 13, size: 128, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2109, file: !2110, line: 14, baseType: !323, size: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1309, file: !1310, line: 1097, baseType: !2114, size: 64, offset: 15104)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1310, line: 50, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1309, file: !1310, line: 1100, baseType: !2117, size: 64, offset: 15168)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1310, line: 1100, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1309, file: !1310, line: 1103, baseType: !2120, size: 64, offset: 15232)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1310, line: 53, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1309, file: !1310, line: 1107, baseType: !2123, size: 64, offset: 15296)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2125, line: 31, size: 576, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2126 = !{!2127, !2128, !2131, !2134, !2137, !2138, !2141, !2144, !2145}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2124, file: !2125, line: 32, baseType: !295, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2124, file: !2125, line: 33, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2125, line: 9, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2124, file: !2125, line: 34, baseType: !2132, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2125, line: 10, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2124, file: !2125, line: 35, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2125, line: 8, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2124, file: !2125, line: 36, baseType: !1288, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2124, file: !2125, line: 37, baseType: !2139, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1939, line: 34, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2124, file: !2125, line: 38, baseType: !2142, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2125, line: 38, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2124, file: !2125, line: 39, baseType: !2142, size: 64, offset: 448)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2124, file: !2125, line: 40, baseType: !2146, size: 64, offset: 512)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2125, line: 12, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1309, file: !1310, line: 1110, baseType: !2149, size: 64, offset: 15360)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2151, line: 93, size: 8768, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2200, !2209, !2210, !2212, !2213, !2214, !2217, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2255, !2256, !2263, !2273, !2276, !2277, !2280, !2281, !2282, !2283, !2284, !2285}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2150, file: !2151, line: 94, baseType: !295, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2150, file: !2151, line: 95, baseType: !299, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2150, file: !2151, line: 96, baseType: !109, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2150, file: !2151, line: 97, baseType: !109, size: 32, offset: 96)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2150, file: !2151, line: 98, baseType: !323, size: 128, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2150, file: !2151, line: 100, baseType: !1275, size: 192, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2150, file: !2151, line: 103, baseType: !1308, size: 64, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2150, file: !2151, line: 106, baseType: !2161, size: 192, offset: 512)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2077, line: 32, size: 192, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2161, file: !2077, line: 33, baseType: !323, size: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2161, file: !2077, line: 34, baseType: !2165, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2166, line: 25, baseType: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2166, line: 23, size: 64, elements: !2168)
!2168 = !{!2169}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2167, file: !2166, line: 24, baseType: !1547, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2150, file: !2151, line: 109, baseType: !1110, size: 64, offset: 704)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2150, file: !2151, line: 112, baseType: !109, size: 32, offset: 768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2150, file: !2151, line: 114, baseType: !109, size: 32, offset: 800)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2150, file: !2151, line: 115, baseType: !1308, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2150, file: !2151, line: 118, baseType: !109, size: 32, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2151, line: 119, baseType: !7, size: 32, offset: 928)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2150, file: !2151, line: 121, baseType: !2177, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2151, line: 80, size: 448, elements: !2179)
!2179 = !{!2180, !2181, !2187}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2178, file: !2151, line: 81, baseType: !299, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2178, file: !2151, line: 82, baseType: !2182, size: 128, offset: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2151, line: 75, size: 128, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2182, file: !2151, line: 76, baseType: !1308, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2182, file: !2151, line: 77, baseType: !2186, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2178, file: !2151, line: 83, baseType: !689, size: 256, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2150, file: !2151, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2150, file: !2151, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2150, file: !2151, line: 138, baseType: !7, size: 32, offset: 1056)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2150, file: !2151, line: 139, baseType: !323, size: 128, offset: 1088)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2150, file: !2151, line: 142, baseType: !1420, size: 512, offset: 1216)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2150, file: !2151, line: 143, baseType: !1428, size: 64, offset: 1728)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2150, file: !2151, line: 150, baseType: !2195, size: 256, offset: 1792)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2196, size: 256, elements: !859)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2151, line: 38, size: 128, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2196, file: !2151, line: 39, baseType: !552, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2196, file: !2151, line: 40, baseType: !552, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2150, file: !2151, line: 156, baseType: !2201, size: 192, offset: 2048)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2151, line: 66, size: 192, elements: !2202)
!2202 = !{!2203}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2201, file: !2151, line: 67, baseType: !2204, size: 192)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2151, line: 47, size: 192, elements: !2205)
!2205 = !{!2206, !2207, !2208}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2204, file: !2151, line: 48, baseType: !746, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2204, file: !2151, line: 49, baseType: !746, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2204, file: !2151, line: 50, baseType: !746, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2150, file: !2151, line: 160, baseType: !1892, size: 640, offset: 2240)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2150, file: !2151, line: 163, baseType: !2211, size: 256, offset: 2880)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1265, size: 256, elements: !970)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2150, file: !2151, line: 169, baseType: !1265, size: 64, offset: 3136)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2150, file: !2151, line: 172, baseType: !109, size: 32, offset: 3200)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2150, file: !2151, line: 174, baseType: !2215, size: 64, offset: 3264)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2151, line: 174, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2150, file: !2151, line: 185, baseType: !2218, size: 64, offset: 3328)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !522, line: 860, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 853, size: 64, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2219, file: !522, line: 858, baseType: !521, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2219, file: !522, line: 859, baseType: !336, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2150, file: !2151, line: 186, baseType: !552, size: 64, offset: 3392)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2150, file: !2151, line: 186, baseType: !552, size: 64, offset: 3456)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2150, file: !2151, line: 186, baseType: !552, size: 64, offset: 3520)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2150, file: !2151, line: 186, baseType: !552, size: 64, offset: 3584)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2150, file: !2151, line: 187, baseType: !552, size: 64, offset: 3648)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2150, file: !2151, line: 188, baseType: !552, size: 64, offset: 3712)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2150, file: !2151, line: 189, baseType: !1880, size: 192, offset: 3776)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2150, file: !2151, line: 190, baseType: !278, size: 64, offset: 3968)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2150, file: !2151, line: 190, baseType: !278, size: 64, offset: 4032)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2150, file: !2151, line: 190, baseType: !278, size: 64, offset: 4096)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2150, file: !2151, line: 190, baseType: !278, size: 64, offset: 4160)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2150, file: !2151, line: 191, baseType: !278, size: 64, offset: 4224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2150, file: !2151, line: 191, baseType: !278, size: 64, offset: 4288)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2150, file: !2151, line: 191, baseType: !278, size: 64, offset: 4352)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2150, file: !2151, line: 191, baseType: !278, size: 64, offset: 4416)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2150, file: !2151, line: 192, baseType: !278, size: 64, offset: 4480)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2150, file: !2151, line: 192, baseType: !278, size: 64, offset: 4544)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2150, file: !2151, line: 192, baseType: !278, size: 64, offset: 4608)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2150, file: !2151, line: 192, baseType: !278, size: 64, offset: 4672)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2150, file: !2151, line: 193, baseType: !278, size: 64, offset: 4736)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2150, file: !2151, line: 193, baseType: !278, size: 64, offset: 4800)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2150, file: !2151, line: 194, baseType: !2245, size: 448, offset: 4864)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2246, line: 12, size: 448, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2245, file: !2246, line: 15, baseType: !552, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2245, file: !2246, line: 17, baseType: !552, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2245, file: !2246, line: 19, baseType: !552, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2245, file: !2246, line: 21, baseType: !552, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2245, file: !2246, line: 29, baseType: !552, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2245, file: !2246, line: 35, baseType: !552, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2245, file: !2246, line: 44, baseType: !552, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2150, file: !2151, line: 202, baseType: !554, size: 64, offset: 5312)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2150, file: !2151, line: 213, baseType: !2257, size: 2048, offset: 5376)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2258, size: 2048, elements: !2096)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2259, line: 43, size: 128, elements: !2260)
!2259 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2258, file: !2259, line: 44, baseType: !450, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2258, file: !2259, line: 45, baseType: !450, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2150, file: !2151, line: 216, baseType: !2264, size: 448, offset: 7424)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2151, line: 30, size: 448, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2264, file: !2151, line: 31, baseType: !109, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2264, file: !2151, line: 32, baseType: !437, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2264, file: !2151, line: 33, baseType: !278, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2264, file: !2151, line: 34, baseType: !552, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2264, file: !2151, line: 34, baseType: !552, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2264, file: !2151, line: 35, baseType: !278, size: 64, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2264, file: !2151, line: 35, baseType: !278, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2150, file: !2151, line: 219, baseType: !2274, size: 64, offset: 7872)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2151, line: 219, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2150, file: !2151, line: 222, baseType: !7, size: 32, offset: 7936)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2150, file: !2151, line: 223, baseType: !2278, size: 64, offset: 8000)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2151, line: 223, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2150, file: !2151, line: 230, baseType: !820, size: 8, offset: 8064)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2150, file: !2151, line: 231, baseType: !878, size: 16, offset: 8080)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2150, file: !2151, line: 232, baseType: !878, size: 16, offset: 8096)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2150, file: !2151, line: 234, baseType: !1596, size: 64, offset: 8128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2150, file: !2151, line: 237, baseType: !740, size: 256, offset: 8192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2150, file: !2151, line: 243, baseType: !1651, size: 320, offset: 8448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1309, file: !1310, line: 1111, baseType: !2287, size: 64, offset: 15424)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2151, line: 20, size: 16640, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2288, file: !2151, line: 21, baseType: !336, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2288, file: !2151, line: 22, baseType: !295, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2288, file: !2151, line: 23, baseType: !1275, size: 192, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2288, file: !2151, line: 24, baseType: !2294, size: 16384, offset: 256)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 16384, elements: !406)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2077, line: 51, size: 256, elements: !2296)
!2296 = !{!2297}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2295, file: !2077, line: 52, baseType: !2298, size: 256)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2077, line: 37, size: 256, elements: !2299)
!2299 = !{!2300, !2307, !2308, !2312}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2298, file: !2077, line: 39, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2302, line: 83, baseType: !2303)
!2302 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2302, line: 82, baseType: !2305)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !109}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2298, file: !2077, line: 40, baseType: !278, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2298, file: !2077, line: 46, baseType: !2309, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2302, line: 86, baseType: !2310)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2302, line: 85, baseType: !1105)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2298, file: !2077, line: 48, baseType: !2165, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1309, file: !1310, line: 1112, baseType: !2165, size: 64, offset: 15488)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1309, file: !1310, line: 1113, baseType: !2165, size: 64, offset: 15552)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1309, file: !1310, line: 1115, baseType: !2165, size: 64, offset: 15616)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1309, file: !1310, line: 1116, baseType: !2161, size: 192, offset: 15680)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1309, file: !1310, line: 1117, baseType: !278, size: 64, offset: 15872)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1309, file: !1310, line: 1118, baseType: !448, size: 64, offset: 15936)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1309, file: !1310, line: 1119, baseType: !7, size: 32, offset: 16000)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1309, file: !1310, line: 1121, baseType: !959, size: 64, offset: 16064)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1309, file: !1310, line: 1125, baseType: !2322, size: 64, offset: 16128)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1310, line: 43, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1309, file: !1310, line: 1127, baseType: !486, size: 32, offset: 16192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1309, file: !1310, line: 1128, baseType: !7, size: 32, offset: 16224)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1309, file: !1310, line: 1130, baseType: !2327, size: 128, offset: 16256)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2328, line: 37, size: 128, elements: !2329)
!2328 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2329 = !{!2330, !2331, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2327, file: !2328, line: 38, baseType: !109, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2327, file: !2328, line: 39, baseType: !299, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2327, file: !2328, line: 40, baseType: !2333, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2328, line: 24, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1309, file: !1310, line: 1131, baseType: !2336, size: 256, offset: 16384)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2337, line: 12, size: 256, elements: !2338)
!2337 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2338 = !{!2339, !2340, !2341, !2342}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2336, file: !2337, line: 13, baseType: !401, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2336, file: !2337, line: 14, baseType: !278, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2336, file: !2337, line: 15, baseType: !278, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2336, file: !2337, line: 16, baseType: !820, size: 8, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1309, file: !1310, line: 1134, baseType: !552, size: 64, offset: 16640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1309, file: !1310, line: 1135, baseType: !552, size: 64, offset: 16704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1309, file: !1310, line: 1138, baseType: !336, size: 32, offset: 16768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1309, file: !1310, line: 1141, baseType: !698, size: 32, offset: 16800)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1309, file: !1310, line: 1143, baseType: !2348, size: 64, offset: 16832)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1310, line: 735, size: 64, elements: !2349)
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2348, file: !1310, line: 736, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1309, file: !1310, line: 1147, baseType: !1479, size: 128, offset: 16896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1309, file: !1310, line: 1149, baseType: !1308, size: 64, offset: 17024)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1309, file: !1310, line: 1151, baseType: !2355, size: 64, offset: 17088)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1310, line: 1151, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1309, file: !1310, line: 1188, baseType: !275, size: 64, offset: 17152)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1309, file: !1310, line: 1191, baseType: !2359, size: 64, offset: 17216)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1310, line: 44, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1309, file: !1310, line: 1194, baseType: !2362, size: 64, offset: 17280)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1310, line: 45, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1309, file: !1310, line: 1197, baseType: !2365, size: 64, offset: 17344)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1310, line: 61, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1309, file: !1310, line: 1199, baseType: !2368, size: 64, offset: 17408)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2370, line: 99, size: 128, elements: !2371)
!2370 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2371 = !{!2372, !2373, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2369, file: !2370, line: 100, baseType: !744, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2369, file: !2370, line: 101, baseType: !299, size: 32, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2369, file: !2370, line: 103, baseType: !371, size: 16, offset: 96)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1309, file: !1310, line: 1202, baseType: !2376, size: 64, offset: 17472)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1310, line: 48, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1309, file: !1310, line: 1205, baseType: !278, size: 64, offset: 17536)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1309, file: !1310, line: 1206, baseType: !2380, size: 64, offset: 17600)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2077, line: 14, baseType: !2382)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2077, line: 12, size: 384, elements: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !2077, line: 13, baseType: !2385, size: 384)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2382, file: !2077, line: 13, size: 384, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2385, file: !2077, line: 13, baseType: !109, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2385, file: !2077, line: 13, baseType: !109, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2385, file: !2077, line: 13, baseType: !109, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2385, file: !2077, line: 13, baseType: !2391, size: 256, offset: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2392, line: 37, size: 256, elements: !2393)
!2392 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2393 = !{!2394, !2399, !2412, !2418, !2427, !2454, !2459}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2391, file: !2392, line: 42, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2392, line: 39, size: 64, elements: !2396)
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2395, file: !2392, line: 40, baseType: !1857, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2395, file: !2392, line: 41, baseType: !492, size: 32, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2391, file: !2392, line: 50, baseType: !2400, size: 192)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2392, line: 45, size: 192, elements: !2401)
!2401 = !{!2402, !2404, !2405, !2411}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2400, file: !2392, line: 46, baseType: !2403, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !435, line: 95, baseType: !109)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2400, file: !2392, line: 47, baseType: !109, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2400, file: !2392, line: 48, baseType: !2406, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2392, line: 11, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2392, line: 8, size: 64, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2407, file: !2392, line: 9, baseType: !109, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2407, file: !2392, line: 10, baseType: !275, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2400, file: !2392, line: 49, baseType: !109, size: 32, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2391, file: !2392, line: 57, baseType: !2413, size: 128)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2392, line: 53, size: 128, elements: !2414)
!2414 = !{!2415, !2416, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2413, file: !2392, line: 54, baseType: !1857, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2413, file: !2392, line: 55, baseType: !492, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2413, file: !2392, line: 56, baseType: !2406, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2391, file: !2392, line: 66, baseType: !2419, size: 256)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2392, line: 60, size: 256, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2426}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2419, file: !2392, line: 61, baseType: !1857, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2419, file: !2392, line: 62, baseType: !492, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2419, file: !2392, line: 63, baseType: !109, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2419, file: !2392, line: 64, baseType: !2425, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !435, line: 94, baseType: !436)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2419, file: !2392, line: 65, baseType: !2425, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2391, file: !2392, line: 105, baseType: !2428, size: 256)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2392, line: 69, size: 256, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2428, file: !2392, line: 70, baseType: !275, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !2392, line: 79, baseType: !2432, size: 192, offset: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !2392, line: 79, size: 192, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2443, !2448}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2432, file: !2392, line: 81, baseType: !109, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2432, file: !2392, line: 86, baseType: !878, size: 16)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2432, file: !2392, line: 92, baseType: !2437, size: 192)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !2392, line: 88, size: 192, elements: !2438)
!2438 = !{!2439, !2441, !2442}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2437, file: !2392, line: 89, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 64, elements: !1463)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2437, file: !2392, line: 90, baseType: !275, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2437, file: !2392, line: 91, baseType: !275, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2432, file: !2392, line: 97, baseType: !2444, size: 96)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !2392, line: 94, size: 96, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2444, file: !2392, line: 95, baseType: !2440, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2444, file: !2392, line: 96, baseType: !279, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2432, file: !2392, line: 103, baseType: !2449, size: 128)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !2392, line: 99, size: 128, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2449, file: !2392, line: 100, baseType: !278, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2449, file: !2392, line: 101, baseType: !279, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2449, file: !2392, line: 102, baseType: !279, size: 32, offset: 96)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2391, file: !2392, line: 111, baseType: !2455, size: 128)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2392, line: 108, size: 128, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2455, file: !2392, line: 109, baseType: !437, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2455, file: !2392, line: 110, baseType: !109, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2391, file: !2392, line: 118, baseType: !2460, size: 128)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2392, line: 114, size: 128, elements: !2461)
!2461 = !{!2462, !2463, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2460, file: !2392, line: 115, baseType: !275, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2460, file: !2392, line: 116, baseType: !109, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2460, file: !2392, line: 117, baseType: !7, size: 32, offset: 96)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1309, file: !1310, line: 1208, baseType: !2245, size: 448, offset: 17664)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1309, file: !1310, line: 1215, baseType: !552, size: 64, offset: 18112)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1309, file: !1310, line: 1217, baseType: !552, size: 64, offset: 18176)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1309, file: !1310, line: 1219, baseType: !552, size: 64, offset: 18240)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1309, file: !1310, line: 1223, baseType: !2470, size: 64, offset: 18304)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2471, line: 99, baseType: !2472)
!2471 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2471, line: 99, size: 64, elements: !2473)
!2473 = !{!2474}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2472, file: !2471, line: 99, baseType: !1547, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1309, file: !1310, line: 1225, baseType: !521, size: 32, offset: 18368)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1309, file: !1310, line: 1226, baseType: !109, size: 32, offset: 18400)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1309, file: !1310, line: 1227, baseType: !109, size: 32, offset: 18432)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1309, file: !1310, line: 1231, baseType: !2479, size: 64, offset: 18496)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1310, line: 1231, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1309, file: !1310, line: 1233, baseType: !323, size: 128, offset: 18560)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1309, file: !1310, line: 1240, baseType: !2483, size: 64, offset: 18688)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1310, line: 62, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1309, file: !1310, line: 1242, baseType: !2486, size: 64, offset: 18752)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1310, line: 1242, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1309, file: !1310, line: 1244, baseType: !323, size: 128, offset: 18816)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1309, file: !1310, line: 1245, baseType: !2490, size: 64, offset: 18944)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1310, line: 51, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1309, file: !1310, line: 1246, baseType: !740, size: 256, offset: 19008)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1309, file: !1310, line: 1247, baseType: !7, size: 32, offset: 19264)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1309, file: !1310, line: 1250, baseType: !2495, size: 64, offset: 19328)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1310, line: 57, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1309, file: !1310, line: 1251, baseType: !740, size: 256, offset: 19392)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1309, file: !1310, line: 1252, baseType: !323, size: 128, offset: 19648)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1309, file: !1310, line: 1259, baseType: !2500, size: 64, offset: 19776)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1309, file: !1310, line: 1260, baseType: !878, size: 16, offset: 19840)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1309, file: !1310, line: 1261, baseType: !878, size: 16, offset: 19856)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1309, file: !1310, line: 1314, baseType: !2505, size: 64, offset: 19904)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2507, line: 62, size: 256, align: 256, elements: !2508)
!2507 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2506, file: !2507, line: 75, baseType: !279, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2506, file: !2507, line: 90, baseType: !279, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2506, file: !2507, line: 112, baseType: !553, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !2507, line: 132, baseType: !279, size: 32, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2506, file: !2507, line: 140, baseType: !279, size: 32, offset: 160)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2506, file: !2507, line: 149, baseType: !279, size: 32, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2506, file: !2507, line: 154, baseType: !2516, offset: 224)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, elements: !1769)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1309, file: !1310, line: 1315, baseType: !549, size: 32, offset: 19968)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1309, file: !1310, line: 1316, baseType: !549, size: 32, offset: 20000)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1309, file: !1310, line: 1321, baseType: !278, size: 64, offset: 20032)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1309, file: !1310, line: 1325, baseType: !109, size: 32, offset: 20096)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1309, file: !1310, line: 1326, baseType: !109, size: 32, offset: 20128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1309, file: !1310, line: 1327, baseType: !109, size: 32, offset: 20160)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1309, file: !1310, line: 1328, baseType: !109, size: 32, offset: 20192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1309, file: !1310, line: 1329, baseType: !960, size: 128, align: 64, offset: 20224)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1309, file: !1310, line: 1332, baseType: !2526, size: 128, offset: 20352)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2527, line: 51, size: 128, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2528 = !{!2529, !2534, !2535}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2526, file: !2527, line: 60, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2531, line: 7, size: 64, elements: !2532)
!2531 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2532 = !{!2533}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2530, file: !2531, line: 12, baseType: !1544, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2526, file: !2527, line: 63, baseType: !820, size: 8, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2526, file: !2527, line: 70, baseType: !820, size: 8, offset: 72)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1309, file: !1310, line: 1335, baseType: !2537, size: 64, offset: 20480)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1310, line: 59, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1309, file: !1310, line: 1337, baseType: !2540, size: 128, offset: 20544)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2527, line: 39, size: 128, elements: !2541)
!2541 = !{!2542, !2826, !2827}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2540, file: !2527, line: 40, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2545)
!2545 = !{!2546, !2547, !2820, !2825}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2544, file: !38, line: 75, baseType: !278, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !38, line: 83, baseType: !2548, size: 320, offset: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !38, line: 83, size: 320, elements: !2549)
!2549 = !{!2550, !2571, !2585, !2589, !2819}
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !38, line: 84, baseType: !2551, size: 320)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !38, line: 84, size: 320, elements: !2552)
!2552 = !{!2553, !2564, !2565, !2570}
!2553 = !DIDerivedType(tag: DW_TAG_member, scope: !2551, file: !38, line: 90, baseType: !2554, size: 128)
!2554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2551, file: !38, line: 90, size: 128, elements: !2555)
!2555 = !{!2556, !2557, !2562, !2563}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2554, file: !38, line: 91, baseType: !323, size: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, scope: !2554, file: !38, line: 94, baseType: !2558, size: 128)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2554, file: !38, line: 94, size: 128, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2558, file: !38, line: 96, baseType: !275, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2558, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2554, file: !38, line: 102, baseType: !323, size: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2554, file: !38, line: 103, baseType: !323, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2551, file: !38, line: 106, baseType: !476, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, scope: !2551, file: !38, line: 107, baseType: !2566, size: 64, offset: 192)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2551, file: !38, line: 107, size: 64, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2566, file: !38, line: 108, baseType: !278, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2566, file: !38, line: 109, baseType: !278, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2551, file: !38, line: 117, baseType: !278, size: 64, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !38, line: 119, baseType: !2572, size: 320)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !38, line: 119, size: 320, elements: !2573)
!2573 = !{!2574, !2575, !2578, !2579, !2580}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2572, file: !38, line: 124, baseType: !278, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2572, file: !38, line: 125, baseType: !2576, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2572, file: !38, line: 126, baseType: !278, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2572, file: !38, line: 127, baseType: !278, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2572, file: !38, line: 128, baseType: !2581, size: 64, offset: 256)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2572, file: !38, line: 128, size: 64, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2581, file: !38, line: 133, baseType: !278, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2581, file: !38, line: 138, baseType: !744, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !38, line: 141, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !38, line: 141, size: 64, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2586, file: !38, line: 142, baseType: !278, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !38, line: 144, baseType: !2590, size: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !38, line: 144, size: 128, elements: !2591)
!2591 = !{!2592, !2818}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2590, file: !38, line: 146, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !30, line: 126, size: 1216, elements: !2595)
!2595 = !{!2596, !2606, !2627, !2628, !2629, !2630, !2631, !2800, !2801, !2802}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2594, file: !30, line: 127, baseType: !2597, size: 384)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !30, line: 21, size: 384, elements: !2598)
!2598 = !{!2599, !2600, !2602, !2603, !2604, !2605}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2597, file: !30, line: 22, baseType: !278, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2597, file: !30, line: 23, baseType: !2601, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2597, file: !30, line: 24, baseType: !2601, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2597, file: !30, line: 25, baseType: !278, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2597, file: !30, line: 26, baseType: !278, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2597, file: !30, line: 27, baseType: !278, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2594, file: !30, line: 128, baseType: !2607, size: 128, offset: 384)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2608, line: 105, size: 128, elements: !2609)
!2608 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2607, file: !2608, line: 110, baseType: !278, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2607, file: !2608, line: 118, baseType: !2612, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2608, line: 95, size: 448, elements: !2614)
!2614 = !{!2615, !2616, !2622, !2623, !2624, !2625, !2626}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2613, file: !2608, line: 96, baseType: !744, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2613, file: !2608, line: 97, baseType: !2617, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2608, line: 60, baseType: !2619)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2613, file: !2608, line: 98, baseType: !2617, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2613, file: !2608, line: 99, baseType: !820, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2613, file: !2608, line: 100, baseType: !820, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2613, file: !2608, line: 101, baseType: !960, size: 128, align: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2613, file: !2608, line: 102, baseType: !2621, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2594, file: !30, line: 129, baseType: !689, size: 256, offset: 512)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2594, file: !30, line: 130, baseType: !29, size: 32, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2594, file: !30, line: 131, baseType: !7, size: 32, offset: 800)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2594, file: !30, line: 132, baseType: !278, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2594, file: !30, line: 133, baseType: !2632, size: 64, offset: 896)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !30, line: 77, size: 192, elements: !2635)
!2635 = !{!2636, !2640, !2796}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2634, file: !30, line: 83, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2543}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2634, file: !30, line: 89, baseType: !2641, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2647, line: 512, size: 896, elements: !2648)
!2647 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2648 = !{!2649, !2763, !2764, !2771, !2778, !2788, !2789, !2790, !2792, !2794}
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2646, file: !2647, line: 513, baseType: !2650, size: 320)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 513, size: 320, elements: !2651)
!2651 = !{!2652, !2759, !2760, !2761, !2762}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2650, file: !2647, line: 514, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2655)
!2655 = !{!2656, !2665, !2666, !2672, !2679, !2680, !2685, !2686, !2691, !2692, !2695, !2752, !2753, !2754, !2755, !2756, !2757}
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !2654, file: !38, line: 628, baseType: !2657, size: 128)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2654, file: !38, line: 628, size: 128, elements: !2658)
!2658 = !{!2659, !2664}
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !38, line: 629, baseType: !2660, size: 128)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !38, line: 629, size: 128, elements: !2661)
!2661 = !{!2662, !2663}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2660, file: !38, line: 631, baseType: !278, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2660, file: !38, line: 632, baseType: !278, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2657, file: !38, line: 635, baseType: !960, size: 128, align: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2654, file: !38, line: 639, baseType: !1596, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2654, file: !38, line: 640, baseType: !2667, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1632, line: 297, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1632, line: 297, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2668, file: !1632, line: 297, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1637, line: 19, baseType: !278)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !2654, file: !38, line: 646, baseType: !2673, size: 64, offset: 256)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2654, file: !38, line: 646, size: 64, elements: !2674)
!2674 = !{!2675, !2678}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2673, file: !38, line: 647, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2677)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !278)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2673, file: !38, line: 648, baseType: !2677, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2654, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2654, file: !38, line: 667, baseType: !2681, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2682, file: !38, line: 580, baseType: !1651, size: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2654, file: !38, line: 670, baseType: !820, size: 8, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2654, file: !38, line: 681, baseType: !2687, size: 256, offset: 512)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2654, file: !38, line: 678, size: 256, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2687, file: !38, line: 679, baseType: !852, size: 192, align: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2687, file: !38, line: 680, baseType: !278, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2654, file: !38, line: 689, baseType: !323, size: 128, offset: 768)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2654, file: !38, line: 691, baseType: !2693, size: 64, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2654, file: !38, line: 694, baseType: !2696, size: 64, offset: 960)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2647, line: 563, size: 1024, elements: !2699)
!2699 = !{!2700, !2704, !2705, !2709, !2713, !2717, !2718, !2722, !2726, !2730, !2731, !2732, !2736, !2740, !2744, !2748}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2698, file: !2647, line: 564, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !2653}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2698, file: !2647, line: 569, baseType: !2701, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2698, file: !2647, line: 571, baseType: !2706, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!109, !2653, !278}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2698, file: !2647, line: 572, baseType: !2710, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!109, !2653}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2698, file: !2647, line: 578, baseType: !2714, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!109, !2653, !278, !278, !278}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2698, file: !2647, line: 580, baseType: !2641, size: 64, offset: 320)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2698, file: !2647, line: 581, baseType: !2719, size: 64, offset: 384)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!2644, !2645, !7}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2698, file: !2647, line: 582, baseType: !2723, size: 64, offset: 448)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!2644, !2645, !278, !278}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2698, file: !2647, line: 584, baseType: !2727, size: 64, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!278, !2653}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2698, file: !2647, line: 588, baseType: !2641, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2698, file: !2647, line: 591, baseType: !2641, size: 64, offset: 640)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2698, file: !2647, line: 597, baseType: !2733, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!109, !2653, !278, !275, !109, !109}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2698, file: !2647, line: 603, baseType: !2737, size: 64, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!319, !2653}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2698, file: !2647, line: 613, baseType: !2741, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!109, !2653, !2500}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2698, file: !2647, line: 625, baseType: !2745, size: 64, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!2500, !2653, !278}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2698, file: !2647, line: 633, baseType: !2749, size: 64, offset: 960)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!2543, !2653, !278}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2654, file: !38, line: 697, baseType: !278, size: 64, offset: 1024)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2654, file: !38, line: 699, baseType: !1623, size: 64, offset: 1088)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2654, file: !38, line: 700, baseType: !275, size: 64, offset: 1152)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2654, file: !38, line: 711, baseType: !744, size: 64, offset: 1216)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2654, file: !38, line: 717, baseType: !2500, size: 64, offset: 1280)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2654, file: !38, line: 722, baseType: !2758, offset: 1344)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1029)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2650, file: !2647, line: 515, baseType: !276, size: 32, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2650, file: !2647, line: 516, baseType: !278, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2650, file: !2647, line: 517, baseType: !278, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2650, file: !2647, line: 518, baseType: !278, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2646, file: !2647, line: 520, baseType: !37, size: 32, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2646, file: !2647, line: 522, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1637, line: 22, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1637, line: 22, size: 64, elements: !2768)
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2767, file: !1637, line: 22, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1637, line: 15, baseType: !278)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2646, file: !2647, line: 524, baseType: !2772, size: 64, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1632, line: 372, baseType: !2774)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1632, line: 372, size: 64, elements: !2775)
!2775 = !{!2776}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2774, file: !1632, line: 372, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1637, line: 16, baseType: !278)
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !2646, file: !2647, line: 527, baseType: !2779, size: 64, offset: 512)
!2779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2646, file: !2647, line: 527, size: 64, elements: !2780)
!2780 = !{!2781, !2787}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2779, file: !2647, line: 528, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1637, line: 21, baseType: !2783)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1637, line: 21, size: 64, elements: !2784)
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2783, file: !1637, line: 21, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1637, line: 14, baseType: !278)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2779, file: !2647, line: 529, baseType: !2766, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2646, file: !2647, line: 534, baseType: !2543, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2646, file: !2647, line: 535, baseType: !2543, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2646, file: !2647, line: 541, baseType: !2791, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2646, file: !2647, line: 545, baseType: !2793, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2646, file: !2647, line: 549, baseType: !2795, size: 64, offset: 832)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1632, line: 520, baseType: !2543)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2634, file: !30, line: 100, baseType: !2797, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!109, !2593, !278, !278, !109}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2594, file: !30, line: 134, baseType: !275, size: 64, offset: 960)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2594, file: !30, line: 135, baseType: !109, size: 32, offset: 1024)
!2802 = !DIDerivedType(tag: DW_TAG_member, scope: !2594, file: !30, line: 136, baseType: !2803, size: 128, offset: 1088)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2594, file: !30, line: 136, size: 128, elements: !2804)
!2804 = !{!2805, !2811}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2803, file: !30, line: 137, baseType: !2806, size: 128)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2807, line: 6, size: 128, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2806, file: !2807, line: 7, baseType: !552, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2806, file: !2807, line: 8, baseType: !552, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, scope: !2803, file: !30, line: 138, baseType: !2812)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2803, file: !30, line: 138, elements: !2813)
!2813 = !{!2814, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2812, file: !30, line: 138, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2812, file: !30, line: 138, elements: !1029)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2812, file: !30, line: 138, baseType: !2817)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2806, elements: !1769)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2590, file: !38, line: 147, baseType: !275, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2548, file: !38, line: 161, baseType: !960, size: 128, align: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !38, line: 164, baseType: !2821, size: 32, offset: 384)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !38, line: 164, size: 32, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2821, file: !38, line: 169, baseType: !299, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2821, file: !38, line: 177, baseType: !7, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2544, file: !38, line: 181, baseType: !299, size: 32, offset: 416)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2540, file: !2527, line: 42, baseType: !279, size: 32, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2540, file: !2527, line: 43, baseType: !279, size: 32, offset: 96)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1309, file: !1310, line: 1340, baseType: !2829, size: 64, offset: 20672)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1310, line: 69, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1309, file: !1310, line: 1351, baseType: !109, size: 32, offset: 20736)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1309, file: !1310, line: 1352, baseType: !109, size: 32, offset: 20768)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1309, file: !1310, line: 1354, baseType: !278, size: 64, offset: 20800)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1309, file: !1310, line: 1364, baseType: !552, size: 64, offset: 20864)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1309, file: !1310, line: 1365, baseType: !552, size: 64, offset: 20928)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1309, file: !1310, line: 1412, baseType: !278, size: 64, offset: 20992)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1309, file: !1310, line: 1453, baseType: !2838, size: 64, offset: 21056)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1310, line: 1453, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1309, file: !1310, line: 1457, baseType: !2841, size: 64, offset: 21120)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !54, line: 61, size: 576, elements: !2843)
!2843 = !{!2844, !2845, !2864, !2867, !2868, !2901, !2911}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2842, file: !54, line: 62, baseType: !53, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !54, line: 64, baseType: !2846, size: 192, offset: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2842, file: !54, line: 64, size: 192, elements: !2847)
!2847 = !{!2848, !2859}
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !54, line: 65, baseType: !2849, size: 192)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !54, line: 65, size: 192, elements: !2850)
!2850 = !{!2851, !2858}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2849, file: !54, line: 66, baseType: !2852, size: 128)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2853, line: 50, size: 128, elements: !2854)
!2853 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2852, file: !2853, line: 52, baseType: !278, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2852, file: !2853, line: 54, baseType: !7, size: 32, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2852, file: !2853, line: 55, baseType: !7, size: 32, offset: 96)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2849, file: !54, line: 67, baseType: !278, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !54, line: 70, baseType: !2860, size: 192)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !54, line: 70, size: 192, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2860, file: !54, line: 71, baseType: !960, size: 128, align: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2860, file: !54, line: 72, baseType: !278, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2842, file: !54, line: 76, baseType: !2865, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !54, line: 76, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2842, file: !54, line: 77, baseType: !278, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2842, file: !54, line: 79, baseType: !2869, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2853, line: 25, size: 256, elements: !2871)
!2871 = !{!2872, !2878, !2882}
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !2853, line: 26, baseType: !2873, size: 128)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !2853, line: 26, size: 128, elements: !2874)
!2874 = !{!2875, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2873, file: !2853, line: 27, baseType: !2876, size: 128)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 128, elements: !2096)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2873, file: !2853, line: 28, baseType: !2876, size: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2870, file: !2853, line: 31, baseType: !2879, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2881)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2853, line: 23, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !2853, line: 33, baseType: !2883, size: 64, offset: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !2853, line: 33, size: 64, elements: !2884)
!2884 = !{!2885, !2891, !2896}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2883, file: !2853, line: 38, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2883, file: !2853, line: 34, size: 64, elements: !2887)
!2887 = !{!2888, !2889, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2886, file: !2853, line: 35, baseType: !736, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2886, file: !2853, line: 36, baseType: !360, size: 8, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2886, file: !2853, line: 37, baseType: !360, size: 8, offset: 40)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2883, file: !2853, line: 42, baseType: !2892, size: 16)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2883, file: !2853, line: 39, size: 16, elements: !2893)
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2892, file: !2853, line: 40, baseType: !360, size: 8)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2892, file: !2853, line: 41, baseType: !360, size: 8, offset: 8)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2883, file: !2853, line: 46, baseType: !2897, size: 16)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2883, file: !2853, line: 43, size: 16, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2897, file: !2853, line: 44, baseType: !360, size: 8)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2897, file: !2853, line: 45, baseType: !360, size: 8, offset: 8)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2842, file: !54, line: 81, baseType: !2902, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !54, line: 85, size: 384, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2903, file: !54, line: 86, baseType: !2865, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2903, file: !54, line: 87, baseType: !278, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2903, file: !54, line: 88, baseType: !278, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2903, file: !54, line: 89, baseType: !278, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2903, file: !54, line: 90, baseType: !820, size: 8, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2903, file: !54, line: 92, baseType: !2902, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2842, file: !54, line: 82, baseType: !7, size: 32, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1309, file: !1310, line: 1463, baseType: !2913, offset: 21184)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1310, line: 739, elements: !1029)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1309, file: !1310, line: 1470, baseType: !960, size: 128, align: 64, offset: 21184)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1309, file: !1310, line: 1471, baseType: !295, size: 32, offset: 21312)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1309, file: !1310, line: 1472, baseType: !109, size: 32, offset: 21344)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1309, file: !1310, line: 1474, baseType: !1308, size: 64, offset: 21376)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1309, file: !1310, line: 1475, baseType: !982, size: 320, offset: 21440)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1309, file: !1310, line: 1478, baseType: !2920, size: 64, offset: 21760)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2922, line: 49, size: 512, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2930, !2931, !2932, !2934}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2921, file: !2922, line: 50, baseType: !2920, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2921, file: !2922, line: 51, baseType: !275, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2921, file: !2922, line: 52, baseType: !278, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2921, file: !2922, line: 53, baseType: !278, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2921, file: !2922, line: 54, baseType: !2929, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2921, file: !2922, line: 56, baseType: !7, size: 32, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2921, file: !2922, line: 58, baseType: !7, size: 32, offset: 352)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2921, file: !2922, line: 59, baseType: !2933, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !277, line: 159, baseType: !552)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2921, file: !2922, line: 60, baseType: !1728, size: 64, offset: 448)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1309, file: !1310, line: 1482, baseType: !295, size: 32, offset: 21824)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1309, file: !1310, line: 1489, baseType: !275, size: 64, offset: 21888)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1309, file: !1310, line: 1504, baseType: !275, size: 64, offset: 21952)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1309, file: !1310, line: 1505, baseType: !553, size: 64, offset: 22016)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1309, file: !1310, line: 1506, baseType: !552, size: 64, offset: 22080)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1309, file: !1310, line: 1507, baseType: !553, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1309, file: !1310, line: 1508, baseType: !553, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1309, file: !1310, line: 1509, baseType: !553, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1309, file: !1310, line: 1510, baseType: !960, size: 128, align: 64, offset: 22208)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1309, file: !1310, line: 1511, baseType: !109, size: 32, offset: 22336)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1309, file: !1310, line: 1515, baseType: !2946, size: 64, offset: 22400)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1227, line: 56, size: 64, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2946, file: !1227, line: 57, baseType: !1230, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1309, file: !1310, line: 1518, baseType: !2946, size: 64, offset: 22464)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1309, file: !1310, line: 1528, baseType: !960, size: 128, align: 64, offset: 22528)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1309, file: !1310, line: 1552, baseType: !2952, size: 35328, offset: 23040)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2953, line: 430, size: 35328, elements: !2954)
!2953 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2954 = !{!2955, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2984, !2985, !2986, !2987, !2988, !2989, !2992, !2993, !2994, !2995}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2952, file: !2953, line: 432, baseType: !2956, size: 192)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2957, size: 192, elements: !402)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2958, line: 16, size: 64, elements: !2959)
!2958 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2957, file: !2958, line: 17, baseType: !369, size: 16)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2957, file: !2958, line: 18, baseType: !369, size: 16, offset: 16)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2957, file: !2958, line: 19, baseType: !369, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2957, file: !2958, line: 19, baseType: !369, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2957, file: !2958, line: 19, baseType: !369, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2957, file: !2958, line: 19, baseType: !369, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2957, file: !2958, line: 19, baseType: !369, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2957, file: !2958, line: 20, baseType: !369, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2957, file: !2958, line: 20, baseType: !369, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2957, file: !2958, line: 20, baseType: !369, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2957, file: !2958, line: 20, baseType: !369, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2957, file: !2958, line: 20, baseType: !369, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2957, file: !2958, line: 20, baseType: !369, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2952, file: !2953, line: 436, baseType: !278, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2952, file: !2953, line: 440, baseType: !371, size: 16, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2952, file: !2953, line: 441, baseType: !371, size: 16, offset: 272)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2952, file: !2953, line: 442, baseType: !371, size: 16, offset: 288)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2952, file: !2953, line: 443, baseType: !371, size: 16, offset: 304)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2952, file: !2953, line: 447, baseType: !278, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2952, file: !2953, line: 448, baseType: !278, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2952, file: !2953, line: 459, baseType: !2981, size: 256, offset: 448)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2982, size: 256, elements: !970)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2953, line: 428, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2952, file: !2953, line: 461, baseType: !278, size: 64, offset: 704)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2952, file: !2953, line: 463, baseType: !278, size: 64, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2952, file: !2953, line: 465, baseType: !278, size: 64, offset: 832)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2952, file: !2953, line: 466, baseType: !278, size: 64, offset: 896)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2952, file: !2953, line: 467, baseType: !278, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2952, file: !2953, line: 473, baseType: !2990, size: 64, offset: 1024)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2953, line: 10, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2952, file: !2953, line: 480, baseType: !278, size: 64, offset: 1088)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2952, file: !2953, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2952, file: !2953, line: 491, baseType: !549, size: 32, offset: 1184)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2952, file: !2953, line: 501, baseType: !2996, size: 33792, offset: 1536)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2997, line: 448, size: 33792, elements: !2998)
!2997 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2998 = !{!2999, !3000, !3001, !3163, !3164, !3170, !3171}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2996, file: !2997, line: 461, baseType: !7, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2996, file: !2997, line: 468, baseType: !278, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2996, file: !2997, line: 476, baseType: !3002, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2997, line: 356, size: 33280, align: 512, elements: !3004)
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3003, file: !2997, line: 358, baseType: !7, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3003, file: !2997, line: 361, baseType: !7, size: 32, offset: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3003, file: !2997, line: 364, baseType: !552, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3003, file: !2997, line: 367, baseType: !552, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3003, file: !2997, line: 370, baseType: !552, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3003, file: !2997, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3003, file: !2997, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3003, file: !2997, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3003, file: !2997, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3003, file: !2997, line: 397, baseType: !3015, size: 32768, offset: 512)
!3015 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2997, line: 348, size: 32768, elements: !3016)
!3016 = !{!3017, !3032, !3069, !3146, !3159}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3015, file: !2997, line: 349, baseType: !3018, size: 896)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2997, line: 12, size: 896, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3031}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3018, file: !2997, line: 13, baseType: !549, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3018, file: !2997, line: 14, baseType: !549, size: 32, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3018, file: !2997, line: 15, baseType: !549, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3018, file: !2997, line: 16, baseType: !549, size: 32, offset: 96)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3018, file: !2997, line: 17, baseType: !549, size: 32, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3018, file: !2997, line: 18, baseType: !549, size: 32, offset: 160)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3018, file: !2997, line: 19, baseType: !549, size: 32, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3018, file: !2997, line: 22, baseType: !3028, size: 640, offset: 224)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 640, elements: !3029)
!3029 = !{!3030}
!3030 = !DISubrange(count: 20)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3018, file: !2997, line: 25, baseType: !549, size: 32, offset: 864)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3015, file: !2997, line: 350, baseType: !3033, size: 4096, align: 128)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2997, line: 34, size: 4096, align: 128, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3054, !3055, !3056, !3058, !3060, !3064}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3033, file: !2997, line: 35, baseType: !369, size: 16)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3033, file: !2997, line: 36, baseType: !369, size: 16, offset: 16)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3033, file: !2997, line: 37, baseType: !369, size: 16, offset: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3033, file: !2997, line: 38, baseType: !369, size: 16, offset: 48)
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !3033, file: !2997, line: 39, baseType: !3040, size: 128, offset: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !2997, line: 39, size: 128, elements: !3041)
!3041 = !{!3042, !3047}
!3042 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !2997, line: 40, baseType: !3043, size: 128)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3040, file: !2997, line: 40, size: 128, elements: !3044)
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3043, file: !2997, line: 41, baseType: !552, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3043, file: !2997, line: 42, baseType: !552, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !2997, line: 44, baseType: !3048, size: 128)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3040, file: !2997, line: 44, size: 128, elements: !3049)
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3048, file: !2997, line: 45, baseType: !549, size: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3048, file: !2997, line: 46, baseType: !549, size: 32, offset: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3048, file: !2997, line: 47, baseType: !549, size: 32, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3048, file: !2997, line: 48, baseType: !549, size: 32, offset: 96)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3033, file: !2997, line: 51, baseType: !549, size: 32, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3033, file: !2997, line: 52, baseType: !549, size: 32, offset: 224)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3033, file: !2997, line: 55, baseType: !3057, size: 1024, offset: 256)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 1024, elements: !561)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3033, file: !2997, line: 58, baseType: !3059, size: 2048, offset: 1280)
!3059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 2048, elements: !406)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3033, file: !2997, line: 60, baseType: !3061, size: 384, offset: 3328)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 384, elements: !3062)
!3062 = !{!3063}
!3063 = !DISubrange(count: 12)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3033, file: !2997, line: 62, baseType: !3065, size: 384, offset: 3712)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !2997, line: 62, size: 384, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3065, file: !2997, line: 63, baseType: !3061, size: 384)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3065, file: !2997, line: 64, baseType: !3061, size: 384)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3015, file: !2997, line: 351, baseType: !3070, size: 1088)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2997, line: 79, size: 1088, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3145}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3070, file: !2997, line: 80, baseType: !549, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3070, file: !2997, line: 81, baseType: !549, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3070, file: !2997, line: 82, baseType: !549, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3070, file: !2997, line: 83, baseType: !549, size: 32, offset: 96)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3070, file: !2997, line: 84, baseType: !549, size: 32, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3070, file: !2997, line: 85, baseType: !549, size: 32, offset: 160)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3070, file: !2997, line: 86, baseType: !549, size: 32, offset: 192)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3070, file: !2997, line: 88, baseType: !3028, size: 640, offset: 224)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3070, file: !2997, line: 89, baseType: !360, size: 8, offset: 864)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3070, file: !2997, line: 90, baseType: !360, size: 8, offset: 872)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3070, file: !2997, line: 91, baseType: !360, size: 8, offset: 880)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3070, file: !2997, line: 92, baseType: !360, size: 8, offset: 888)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3070, file: !2997, line: 93, baseType: !360, size: 8, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3070, file: !2997, line: 94, baseType: !360, size: 8, offset: 904)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3070, file: !2997, line: 95, baseType: !3087, size: 64, offset: 960)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3089, line: 11, size: 128, elements: !3090)
!3089 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3088, file: !3089, line: 12, baseType: !437, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3088, file: !3089, line: 13, baseType: !3093, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3095, line: 103, size: 1344, elements: !3096)
!3095 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3125, !3126, !3127}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3094, file: !3095, line: 109, baseType: !278, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3094, file: !3095, line: 110, baseType: !278, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3094, file: !3095, line: 111, baseType: !278, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3094, file: !3095, line: 112, baseType: !278, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3094, file: !3095, line: 113, baseType: !278, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3094, file: !3095, line: 114, baseType: !278, size: 64, offset: 320)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3094, file: !3095, line: 117, baseType: !278, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3094, file: !3095, line: 118, baseType: !278, size: 64, offset: 448)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3094, file: !3095, line: 119, baseType: !278, size: 64, offset: 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3094, file: !3095, line: 120, baseType: !278, size: 64, offset: 576)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3094, file: !3095, line: 121, baseType: !278, size: 64, offset: 640)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3094, file: !3095, line: 122, baseType: !278, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3094, file: !3095, line: 123, baseType: !278, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3094, file: !3095, line: 124, baseType: !278, size: 64, offset: 832)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3094, file: !3095, line: 125, baseType: !278, size: 64, offset: 896)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3094, file: !3095, line: 139, baseType: !278, size: 64, offset: 960)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3094, file: !3095, line: 142, baseType: !278, size: 64, offset: 1024)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3094, file: !3095, line: 144, baseType: !3115, size: 64, offset: 1088)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3094, file: !3095, line: 144, size: 64, elements: !3116)
!3116 = !{!3117, !3118, !3119}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3115, file: !3095, line: 146, baseType: !369, size: 16)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3115, file: !3095, line: 148, baseType: !552, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3115, file: !3095, line: 150, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3095, line: 59, size: 64, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3120, file: !3095, line: 61, baseType: !552, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3120, file: !3095, line: 63, baseType: !552, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3120, file: !3095, line: 65, baseType: !552, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3094, file: !3095, line: 153, baseType: !278, size: 64, offset: 1152)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3094, file: !3095, line: 154, baseType: !278, size: 64, offset: 1216)
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !3094, file: !3095, line: 156, baseType: !3128, size: 64, offset: 1280)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3094, file: !3095, line: 156, size: 64, elements: !3129)
!3129 = !{!3130, !3131, !3132}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3128, file: !3095, line: 158, baseType: !369, size: 16)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3128, file: !3095, line: 160, baseType: !552, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3128, file: !3095, line: 162, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3095, line: 69, size: 64, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3133, file: !3095, line: 71, baseType: !552, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3133, file: !3095, line: 73, baseType: !552, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3133, file: !3095, line: 75, baseType: !552, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3133, file: !3095, line: 77, baseType: !552, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3133, file: !3095, line: 80, baseType: !552, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3133, file: !3095, line: 83, baseType: !552, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3133, file: !3095, line: 86, baseType: !552, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3133, file: !3095, line: 88, baseType: !552, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3133, file: !3095, line: 93, baseType: !552, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3133, file: !3095, line: 100, baseType: !552, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3070, file: !2997, line: 96, baseType: !549, size: 32, offset: 1024)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3015, file: !2997, line: 352, baseType: !3147, size: 4608, align: 512)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2997, line: 333, size: 4608, align: 512, elements: !3148)
!3148 = !{!3149, !3150, !3157}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3147, file: !2997, line: 334, baseType: !3033, size: 4096, align: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3147, file: !2997, line: 335, baseType: !3151, size: 512, offset: 4096)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2997, line: 312, size: 512, elements: !3152)
!3152 = !{!3153, !3154, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3151, file: !2997, line: 313, baseType: !552, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3151, file: !2997, line: 314, baseType: !552, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3151, file: !2997, line: 315, baseType: !3156, size: 384, offset: 128)
!3156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 384, elements: !1988)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3147, file: !2997, line: 336, baseType: !3158, offset: 4608)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, elements: !1769)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3015, file: !2997, line: 353, baseType: !3160, size: 32768)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 32768, elements: !3161)
!3161 = !{!3162}
!3162 = !DISubrange(count: 4096)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2996, file: !2997, line: 484, baseType: !3002, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2996, file: !2997, line: 491, baseType: !3165, size: 128, offset: 256)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2997, line: 404, size: 128, elements: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3165, file: !2997, line: 424, baseType: !552, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3165, file: !2997, line: 432, baseType: !7, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3165, file: !2997, line: 440, baseType: !7, size: 32, offset: 96)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2996, file: !2997, line: 498, baseType: !3165, size: 128, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2996, file: !2997, line: 508, baseType: !3003, size: 33280, align: 512, offset: 512)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1289, file: !1290, line: 31, baseType: !3173, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3175, line: 11, flags: DIFlagFwdDecl)
!3175 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1289, file: !1290, line: 32, baseType: !7, size: 32, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1289, file: !1290, line: 33, baseType: !1288, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1289, file: !1290, line: 35, baseType: !3179, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1290, line: 17, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1289, file: !1290, line: 37, baseType: !1751, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1289, file: !1290, line: 38, baseType: !2075, size: 64, offset: 768)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1289, file: !1290, line: 39, baseType: !109, size: 32, offset: 832)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1289, file: !1290, line: 40, baseType: !3185, size: 192, offset: 896)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3186, line: 9, size: 192, elements: !3187)
!3186 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3187 = !{!3188, !3189, !3193, !3194}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3185, file: !3186, line: 10, baseType: !744, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3185, file: !3186, line: 11, baseType: !3190, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3192)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3186, line: 7, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3185, file: !3186, line: 12, baseType: !7, size: 32, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3185, file: !3186, line: 13, baseType: !295, size: 32, offset: 160)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1289, file: !1290, line: 42, baseType: !109, size: 32, offset: 1088)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1241, file: !14, line: 951, baseType: !60, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1241, file: !14, line: 952, baseType: !486, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1241, file: !14, line: 952, baseType: !486, size: 32, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1241, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1220, file: !14, line: 1012, baseType: !1910, size: 64, offset: 896)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1220, file: !14, line: 1013, baseType: !3202, size: 256, offset: 960)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3202, file: !14, line: 971, baseType: !278, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3202, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3202, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3202, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3202, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3202, file: !14, line: 976, baseType: !640, size: 64, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1220, file: !14, line: 1014, baseType: !3211, size: 128, offset: 1216)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3212, line: 8, size: 128, elements: !3213)
!3212 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3211, file: !3212, line: 9, baseType: !624, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3211, file: !3212, line: 10, baseType: !515, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1220, file: !14, line: 1015, baseType: !480, size: 64, offset: 1344)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1220, file: !14, line: 1016, baseType: !3218, size: 64, offset: 1408)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3221)
!3221 = !{!3222, !3223, !3227, !3231, !3235, !3263, !3264, !3270, !3283, !3300, !3304, !3305, !3309, !3310, !3314, !3319, !3320, !3324, !3328, !3334, !3335, !3339, !3340, !3344, !3348, !3352, !3358, !3362, !3366, !3370, !3374, !3375, !3381}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3220, file: !14, line: 1915, baseType: !669, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3220, file: !14, line: 1916, baseType: !3224, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!640, !1623, !640, !109}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3220, file: !14, line: 1917, baseType: !3228, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!433, !1623, !401, !448, !1203}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3220, file: !14, line: 1918, baseType: !3232, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!433, !1623, !319, !448, !1203}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3220, file: !14, line: 1919, baseType: !3236, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!433, !3239, !3261}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3248, !3249, !3250, !3251}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3240, file: !14, line: 374, baseType: !1623, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3240, file: !14, line: 375, baseType: !640, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3240, file: !14, line: 376, baseType: !3245, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !3239, !437}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3240, file: !14, line: 377, baseType: !275, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3240, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3240, file: !14, line: 379, baseType: !369, size: 16, offset: 288)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !14, line: 380, baseType: !3252, size: 64, offset: 320)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3240, file: !14, line: 380, size: 64, elements: !3253)
!3253 = !{!3254, !3257}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3252, file: !14, line: 386, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3252, file: !14, line: 395, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!433, !275}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3220, file: !14, line: 1920, baseType: !3236, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3220, file: !14, line: 1921, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!109, !3239, !3268, !7}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3220, file: !14, line: 1923, baseType: !3271, size: 64, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!109, !1623, !3274}
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3276)
!3276 = !{!3277, !3282}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3275, file: !14, line: 1859, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3279)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!820, !3274, !319, !109, !640, !552, !7}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3275, file: !14, line: 1860, baseType: !640, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3220, file: !14, line: 1924, baseType: !3284, size: 64, offset: 512)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!3287, !1623, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3288, line: 59, baseType: !7)
!3288 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3291, line: 37, size: 128, elements: !3292)
!3291 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3292 = !{!3293, !3299}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3290, file: !3291, line: 38, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3291, line: 31, baseType: !3295)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{null, !1623, !3298, !3289}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3290, file: !3291, line: 39, baseType: !3287, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3220, file: !14, line: 1925, baseType: !3301, size: 64, offset: 576)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!437, !1623, !7, !278}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3220, file: !14, line: 1926, baseType: !3301, size: 64, offset: 640)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3220, file: !14, line: 1927, baseType: !3306, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!109, !1623, !2653}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3220, file: !14, line: 1928, baseType: !278, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3220, file: !14, line: 1929, baseType: !3311, size: 64, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!109, !480, !1623}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3220, file: !14, line: 1930, baseType: !3315, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!109, !1623, !3318}
!3318 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !275)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3220, file: !14, line: 1931, baseType: !3311, size: 64, offset: 960)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3220, file: !14, line: 1932, baseType: !3321, size: 64, offset: 1024)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!109, !1623, !640, !640, !109}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3220, file: !14, line: 1933, baseType: !3325, size: 64, offset: 1088)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!109, !109, !1623, !109}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3220, file: !14, line: 1934, baseType: !3329, size: 64, offset: 1152)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!109, !1623, !109, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3220, file: !14, line: 1935, baseType: !1620, size: 64, offset: 1216)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3220, file: !14, line: 1936, baseType: !3336, size: 64, offset: 1280)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!109, !109}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3220, file: !14, line: 1937, baseType: !3329, size: 64, offset: 1344)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3220, file: !14, line: 1938, baseType: !3341, size: 64, offset: 1408)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!433, !2537, !1623, !1203, !448, !7}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3220, file: !14, line: 1939, baseType: !3345, size: 64, offset: 1472)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!433, !1623, !1203, !2537, !448, !7}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3220, file: !14, line: 1940, baseType: !3349, size: 64, offset: 1536)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !1623}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3220, file: !14, line: 1941, baseType: !3353, size: 64, offset: 1600)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!109, !1623, !109, !3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3220, file: !14, line: 1942, baseType: !3359, size: 64, offset: 1664)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!437, !1623, !109, !640, !640}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3220, file: !14, line: 1944, baseType: !3363, size: 64, offset: 1728)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !1182, !1623}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3220, file: !14, line: 1948, baseType: !3367, size: 64, offset: 1792)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!433, !1623, !640, !1623, !640, !448, !7}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3220, file: !14, line: 1950, baseType: !3371, size: 64, offset: 1856)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!640, !1623, !640, !1623, !640, !640, !7}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3220, file: !14, line: 1953, baseType: !3321, size: 64, offset: 1920)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3220, file: !14, line: 1954, baseType: !3376, size: 64, offset: 1984)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!109, !3379, !7}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3220, file: !14, line: 1955, baseType: !3382, size: 64, offset: 2048)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!109, !3379, !3268, !7}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1220, file: !14, line: 1018, baseType: !552, size: 64, offset: 1472)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1220, file: !14, line: 1020, baseType: !275, size: 64, offset: 1536)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1220, file: !14, line: 1023, baseType: !275, size: 64, offset: 1600)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1220, file: !14, line: 1027, baseType: !3389, size: 64, offset: 1664)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1220, file: !14, line: 1029, baseType: !476, size: 64, offset: 1728)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1220, file: !14, line: 1030, baseType: !3392, size: 32, offset: 1792)
!3392 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3393, line: 8, baseType: !549)
!3393 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1220, file: !14, line: 1031, baseType: !3392, size: 32, offset: 1824)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1183, file: !1184, line: 29, baseType: !275, size: 64, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1126, file: !14, line: 2077, baseType: !1179, size: 64, offset: 1088)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1126, file: !14, line: 2078, baseType: !1179, size: 64, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1126, file: !14, line: 2079, baseType: !1179, size: 64, offset: 1216)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1126, file: !14, line: 2081, baseType: !3400, size: 64, offset: 1280)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!433, !630, !109, !401, !448, !640}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1126, file: !14, line: 2082, baseType: !3404, size: 64, offset: 1344)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!433, !630, !109, !319, !448, !640}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1126, file: !14, line: 2083, baseType: !3408, size: 64, offset: 1408)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!3411, !480}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3439, !3440, !3441}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3413, file: !69, line: 297, baseType: !986, size: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3413, file: !69, line: 298, baseType: !323, size: 128, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3413, file: !69, line: 299, baseType: !323, size: 128, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3413, file: !69, line: 300, baseType: !323, size: 128, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3413, file: !69, line: 301, baseType: !740, size: 256, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3413, file: !69, line: 302, baseType: !336, size: 32, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3413, file: !69, line: 303, baseType: !299, size: 32, offset: 800)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3413, file: !69, line: 304, baseType: !630, size: 64, offset: 832)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3413, file: !69, line: 305, baseType: !3424, size: 64, offset: 896)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !3425)
!3425 = !{!3426, !3438}
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !69, line: 69, baseType: !3427, size: 32)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !69, line: 69, size: 32, elements: !3428)
!3428 = !{!3429, !3430, !3431}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3427, file: !69, line: 70, baseType: !486, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3427, file: !69, line: 71, baseType: !495, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3427, file: !69, line: 72, baseType: !3432, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3433, line: 24, baseType: !3434)
!3433 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3433, line: 22, size: 32, elements: !3435)
!3435 = !{!3436}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3434, file: !3433, line: 23, baseType: !3437, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3433, line: 20, baseType: !492)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3424, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3413, file: !69, line: 306, baseType: !640, size: 64, offset: 960)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3413, file: !69, line: 307, baseType: !278, size: 64, offset: 1024)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3413, file: !69, line: 308, baseType: !3442, size: 576, offset: 1088)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !3443)
!3443 = !{!3444, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3442, file: !69, line: 206, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !642)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3442, file: !69, line: 207, baseType: !3445, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3442, file: !69, line: 208, baseType: !3445, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3442, file: !69, line: 209, baseType: !3445, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3442, file: !69, line: 210, baseType: !3445, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3442, file: !69, line: 211, baseType: !3445, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3442, file: !69, line: 212, baseType: !3445, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3442, file: !69, line: 213, baseType: !1959, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3442, file: !69, line: 214, baseType: !1959, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1126, file: !14, line: 2085, baseType: !3455, size: 64, offset: 1472)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!437, !630, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3460, line: 15, size: 256, elements: !3461)
!3460 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3461 = !{!3462, !3463, !3464, !3465, !3466}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3459, file: !3460, line: 16, baseType: !276, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3459, file: !3460, line: 19, baseType: !109, size: 32, offset: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3459, file: !3460, line: 26, baseType: !278, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3459, file: !3460, line: 33, baseType: !278, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3459, file: !3460, line: 36, baseType: !3467, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1126, file: !14, line: 2087, baseType: !3455, size: 64, offset: 1536)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1126, file: !14, line: 2089, baseType: !665, size: 64, offset: 1600)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !631, file: !14, line: 1198, baseType: !3472, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !3475)
!3475 = !{!3476, !3480, !3484, !3488, !3489, !3490, !3491, !3492, !3497, !3502, !3506}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3474, file: !69, line: 325, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!109, !3412}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3474, file: !69, line: 326, baseType: !3481, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!3412, !630, !109}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3474, file: !69, line: 327, baseType: !3485, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !3412}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3474, file: !69, line: 328, baseType: !3477, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3474, file: !69, line: 329, baseType: !3477, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3474, file: !69, line: 330, baseType: !3477, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3474, file: !69, line: 331, baseType: !1154, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3474, file: !69, line: 334, baseType: !3493, size: 64, offset: 448)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!3496, !480}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3474, file: !69, line: 335, baseType: !3498, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!109, !480, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3474, file: !69, line: 337, baseType: !3503, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!109, !480, !3496}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3474, file: !69, line: 339, baseType: !3507, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!109, !630, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !631, file: !14, line: 1199, baseType: !3512, size: 64, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !3515)
!3515 = !{!3516, !3522, !3523, !3527, !3528, !3529, !3544, !3567, !3571, !3572, !3595}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3514, file: !69, line: 431, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!109, !630, !109, !109, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3211)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3514, file: !69, line: 432, baseType: !1154, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3514, file: !69, line: 433, baseType: !3524, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!109, !630, !7}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3514, file: !69, line: 434, baseType: !3524, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3514, file: !69, line: 435, baseType: !1154, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3514, file: !69, line: 436, baseType: !3530, size: 64, offset: 320)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!109, !630, !109, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3534, file: !69, line: 418, baseType: !109, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3534, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3534, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3534, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3534, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3534, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3534, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3534, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3514, file: !69, line: 437, baseType: !3545, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!109, !630, !3424, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3549, file: !69, line: 346, baseType: !109, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3549, file: !69, line: 347, baseType: !552, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3549, file: !69, line: 348, baseType: !552, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3549, file: !69, line: 349, baseType: !552, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3549, file: !69, line: 350, baseType: !552, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3549, file: !69, line: 351, baseType: !552, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3549, file: !69, line: 352, baseType: !552, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3549, file: !69, line: 353, baseType: !750, size: 64, offset: 448)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3549, file: !69, line: 355, baseType: !750, size: 64, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3549, file: !69, line: 356, baseType: !109, size: 32, offset: 576)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3549, file: !69, line: 357, baseType: !109, size: 32, offset: 608)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3549, file: !69, line: 358, baseType: !552, size: 64, offset: 640)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3549, file: !69, line: 359, baseType: !552, size: 64, offset: 704)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3549, file: !69, line: 360, baseType: !552, size: 64, offset: 768)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3549, file: !69, line: 361, baseType: !750, size: 64, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3549, file: !69, line: 362, baseType: !109, size: 32, offset: 896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3514, file: !69, line: 438, baseType: !3568, size: 64, offset: 448)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!109, !630, !3510, !3548}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3514, file: !69, line: 440, baseType: !3545, size: 64, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3514, file: !69, line: 441, baseType: !3573, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!109, !630, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !3578)
!3578 = !{!3579, !3580}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3577, file: !69, line: 412, baseType: !7, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3577, file: !69, line: 413, baseType: !3581, size: 1344, offset: 64)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3582, size: 1344, elements: !402)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3594}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3582, file: !69, line: 398, baseType: !7, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3582, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3582, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3582, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3582, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3582, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3582, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3582, file: !69, line: 406, baseType: !554, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3582, file: !69, line: 407, baseType: !3593, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !277, line: 132, baseType: !552)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3582, file: !69, line: 408, baseType: !3593, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3514, file: !69, line: 442, baseType: !3524, size: 64, offset: 640)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !631, file: !14, line: 1200, baseType: !3597, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3599)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !631, file: !14, line: 1201, baseType: !278, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !631, file: !14, line: 1202, baseType: !278, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !631, file: !14, line: 1203, baseType: !278, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !631, file: !14, line: 1204, baseType: !515, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !631, file: !14, line: 1205, baseType: !1651, size: 320, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !631, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !631, file: !14, line: 1207, baseType: !299, size: 32, offset: 1248)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !631, file: !14, line: 1209, baseType: !275, size: 64, offset: 1280)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !631, file: !14, line: 1211, baseType: !3609, size: 64, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3612)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !631, file: !14, line: 1223, baseType: !3614, size: 64, offset: 1408)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !532, line: 34, size: 64, elements: !3615)
!3615 = !{!3616}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3614, file: !532, line: 35, baseType: !535, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !631, file: !14, line: 1224, baseType: !323, size: 128, offset: 1472)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !631, file: !14, line: 1225, baseType: !3619, size: 64, offset: 1600)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !631, file: !14, line: 1226, baseType: !3622, size: 64, offset: 1664)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !631, file: !14, line: 1227, baseType: !3625, size: 64, offset: 1728)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !631, file: !14, line: 1228, baseType: !3628, size: 64, offset: 1792)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !631, file: !14, line: 1229, baseType: !986, size: 128, offset: 1856)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !631, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !631, file: !14, line: 1231, baseType: !3633, size: 2496, offset: 2048)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3639, !3671}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3633, file: !69, line: 522, baseType: !7, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3633, file: !69, line: 523, baseType: !1651, size: 320, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3633, file: !69, line: 524, baseType: !3638, size: 192, offset: 384)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 192, elements: !402)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3633, file: !69, line: 525, baseType: !3640, size: 1728, offset: 576)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3641, size: 1728, elements: !402)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3642)
!3642 = !{!3643, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3641, file: !69, line: 223, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3646)
!3646 = !{!3647, !3648, !3661, !3662}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3645, file: !69, line: 446, baseType: !109, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3645, file: !69, line: 447, baseType: !3649, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3651)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3651, file: !69, line: 313, baseType: !1154, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3651, file: !69, line: 314, baseType: !1154, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3651, file: !69, line: 315, baseType: !1154, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3651, file: !69, line: 316, baseType: !1154, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3651, file: !69, line: 317, baseType: !3477, size: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3651, file: !69, line: 318, baseType: !3477, size: 64, offset: 320)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3651, file: !69, line: 319, baseType: !3477, size: 64, offset: 384)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3651, file: !69, line: 320, baseType: !3507, size: 64, offset: 448)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3645, file: !69, line: 448, baseType: !669, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3645, file: !69, line: 449, baseType: !3644, size: 64, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3641, file: !69, line: 224, baseType: !109, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3641, file: !69, line: 226, baseType: !323, size: 128, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3641, file: !69, line: 227, baseType: !278, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3641, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3641, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3641, file: !69, line: 230, baseType: !3445, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3641, file: !69, line: 231, baseType: !3445, size: 64, offset: 448)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3641, file: !69, line: 232, baseType: !275, size: 64, offset: 512)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3633, file: !69, line: 526, baseType: !3672, size: 192, offset: 2304)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3649, size: 192, elements: !402)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !631, file: !14, line: 1233, baseType: !3674, size: 2368, offset: 4544)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3674, file: !14, line: 1185, baseType: !371, size: 16)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3674, file: !14, line: 1186, baseType: !371, size: 16, offset: 16)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3674, file: !14, line: 1187, baseType: !3679, size: 2304, offset: 64)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3680, size: 2304, elements: !402)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3681, line: 12, size: 768, elements: !3682)
!3681 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3682 = !{!3683, !3691, !3692, !3697, !3698}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3680, file: !3681, line: 13, baseType: !3684, size: 384)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3685, line: 17, size: 384, elements: !3686)
!3685 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3686 = !{!3687, !3688, !3689, !3690}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3684, file: !3685, line: 18, baseType: !109, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3684, file: !3685, line: 19, baseType: !109, size: 32, offset: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3684, file: !3685, line: 20, baseType: !1275, size: 192, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3684, file: !3685, line: 22, baseType: !960, size: 128, align: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3680, file: !3681, line: 14, baseType: !812, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3680, file: !3681, line: 15, baseType: !3693, size: 64, offset: 448)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3694, line: 16, size: 64, elements: !3695)
!3694 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3695 = !{!3696}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3693, file: !3694, line: 17, baseType: !1308, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3680, file: !3681, line: 16, baseType: !1275, size: 192, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3680, file: !3681, line: 17, baseType: !299, size: 32, offset: 704)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !631, file: !14, line: 1240, baseType: !275, size: 64, offset: 6912)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !631, file: !14, line: 1243, baseType: !549, size: 32, offset: 6976)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !631, file: !14, line: 1245, baseType: !1959, size: 64, offset: 7040)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !631, file: !14, line: 1246, baseType: !1959, size: 64, offset: 7104)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !631, file: !14, line: 1248, baseType: !279, size: 32, offset: 7168)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !631, file: !14, line: 1249, baseType: !3705, size: 64, offset: 7232)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !631, file: !14, line: 1252, baseType: !3708, size: 256, offset: 7296)
!3708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !561)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !631, file: !14, line: 1253, baseType: !3710, size: 128, offset: 7552)
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3711, line: 21, baseType: !3712)
!3711 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3711, line: 19, size: 128, elements: !3713)
!3713 = !{!3714}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3712, file: !3711, line: 20, baseType: !3715, size: 128)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !2096)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !631, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !631, file: !14, line: 1261, baseType: !740, size: 256, offset: 7744)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !631, file: !14, line: 1267, baseType: !319, size: 64, offset: 8000)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !631, file: !14, line: 1269, baseType: !577, size: 64, offset: 8064)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !631, file: !14, line: 1271, baseType: !3721, size: 448, offset: 8128)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3460, line: 63, size: 448, elements: !3722)
!3722 = !{!3723, !3728, !3729, !3730, !3731, !3732, !3733}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3721, file: !3460, line: 64, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!278, !3727, !3458}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3721, file: !3460, line: 66, baseType: !3724, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3721, file: !3460, line: 69, baseType: !437, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3721, file: !3460, line: 70, baseType: !109, size: 32, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3721, file: !3460, line: 71, baseType: !7, size: 32, offset: 224)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3721, file: !3460, line: 74, baseType: !323, size: 128, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3721, file: !3460, line: 85, baseType: !3734, size: 64, offset: 384)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !631, file: !14, line: 1274, baseType: !744, size: 64, offset: 8576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !631, file: !14, line: 1280, baseType: !744, size: 64, offset: 8640)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !631, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !631, file: !14, line: 1286, baseType: !3392, size: 32, offset: 8736)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !631, file: !14, line: 1289, baseType: !1062, size: 64, offset: 8768)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !631, file: !14, line: 1290, baseType: !1110, size: 64, offset: 8832)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !631, file: !14, line: 1297, baseType: !1751, size: 64, offset: 8896)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !631, file: !14, line: 1304, baseType: !3743, size: 64, offset: 8960)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3744, line: 49, size: 64, elements: !3745)
!3744 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3745 = !{!3746}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3743, file: !3744, line: 50, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3744, line: 41, size: 512, align: 512, elements: !3749)
!3749 = !{!3750, !3751, !3756}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3748, file: !3744, line: 43, baseType: !336, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3748, file: !3744, line: 45, baseType: !3752, size: 192, offset: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3744, line: 29, size: 192, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3752, file: !3744, line: 30, baseType: !323, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3752, file: !3744, line: 32, baseType: !437, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3748, file: !3744, line: 46, baseType: !437, size: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !631, file: !14, line: 1305, baseType: !3743, size: 64, offset: 9024)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !631, file: !14, line: 1306, baseType: !960, size: 128, align: 64, offset: 9088)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !631, file: !14, line: 1307, baseType: !1000, size: 256, offset: 9216)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !631, file: !14, line: 1309, baseType: !740, size: 256, offset: 9472)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !631, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !631, file: !14, line: 1317, baseType: !336, size: 32, align: 512, offset: 10240)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !631, file: !14, line: 1318, baseType: !323, size: 128, offset: 10304)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !631, file: !14, line: 1320, baseType: !336, size: 32, offset: 10432)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !631, file: !14, line: 1321, baseType: !323, size: 128, offset: 10496)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !625, file: !626, line: 73, baseType: !109, size: 32, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !625, file: !626, line: 74, baseType: !3768, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1927, line: 42, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !579, file: !517, line: 141, baseType: !3772, size: 64, offset: 704)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!109, !3520, !820}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !579, file: !517, line: 142, baseType: !3776, size: 64, offset: 768)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!515, !515, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !516, file: !517, line: 96, baseType: !630, size: 64, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !516, file: !517, line: 97, baseType: !278, size: 64, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !516, file: !517, line: 98, baseType: !275, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !516, file: !517, line: 100, baseType: !3785, size: 128, offset: 1024)
!3785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !517, line: 100, size: 128, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3785, file: !517, line: 101, baseType: !323, size: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3785, file: !517, line: 102, baseType: !3298, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !516, file: !517, line: 104, baseType: !323, size: 128, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !516, file: !517, line: 105, baseType: !323, size: 128, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !516, file: !517, line: 113, baseType: !3792, size: 128, offset: 1408)
!3792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !517, line: 109, size: 128, elements: !3793)
!3793 = !{!3794, !3795, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3792, file: !517, line: 110, baseType: !986, size: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3792, file: !517, line: 111, baseType: !531, size: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3792, file: !517, line: 112, baseType: !960, size: 128, align: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !509, file: !14, line: 1968, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!319, !515, !480, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3803, line: 10, size: 128, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3804 = !{!3805, !3806}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3802, file: !3803, line: 11, baseType: !783, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3802, file: !3803, line: 12, baseType: !275, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !509, file: !14, line: 1969, baseType: !3808, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!109, !3768, !480, !109}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !509, file: !14, line: 1970, baseType: !3812, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!503, !480, !109, !820}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !509, file: !14, line: 1972, baseType: !3816, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!109, !515, !401, !109}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !509, file: !14, line: 1974, baseType: !3820, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!109, !3768, !480, !515, !443, !820}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !509, file: !14, line: 1976, baseType: !3824, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!109, !515, !480, !515}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !509, file: !14, line: 1977, baseType: !3828, size: 64, offset: 448)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!109, !480, !515}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !509, file: !14, line: 1978, baseType: !3832, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!109, !3768, !480, !515, !319}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !509, file: !14, line: 1980, baseType: !3836, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!109, !3768, !480, !515, !443}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !509, file: !14, line: 1982, baseType: !3828, size: 64, offset: 640)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !509, file: !14, line: 1983, baseType: !3841, size: 64, offset: 704)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!109, !3768, !480, !515, !443, !635}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !509, file: !14, line: 1985, baseType: !3845, size: 64, offset: 768)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!109, !3768, !480, !515, !480, !515, !7}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !509, file: !14, line: 1987, baseType: !3849, size: 64, offset: 832)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!109, !3768, !515, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3867, !3876, !3877, !3882, !3883, !3884}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3853, file: !14, line: 227, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3853, file: !14, line: 228, baseType: !443, size: 16, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !14, line: 241, baseType: !3858, size: 32, offset: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !14, line: 241, size: 32, elements: !3859)
!3859 = !{!3860, !3861}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3858, file: !14, line: 242, baseType: !486, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3858, file: !14, line: 243, baseType: !3862, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3863, line: 16, baseType: !3864)
!3863 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3863, line: 14, size: 32, elements: !3865)
!3865 = !{!3866}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3864, file: !3863, line: 15, baseType: !491, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !14, line: 245, baseType: !3868, size: 32, offset: 96)
!3868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !14, line: 245, size: 32, elements: !3869)
!3869 = !{!3870, !3871}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3868, file: !14, line: 246, baseType: !495, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3868, file: !14, line: 247, baseType: !3872, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3863, line: 20, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3863, line: 18, size: 32, elements: !3874)
!3874 = !{!3875}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3873, file: !3863, line: 19, baseType: !499, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3853, file: !14, line: 249, baseType: !640, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3853, file: !14, line: 250, baseType: !3878, size: 128, offset: 192)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1960, line: 13, size: 128, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3878, file: !1960, line: 14, baseType: !1959, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3878, file: !1960, line: 15, baseType: !437, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3853, file: !14, line: 251, baseType: !3878, size: 128, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3853, file: !14, line: 252, baseType: !3878, size: 128, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3853, file: !14, line: 259, baseType: !1623, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !509, file: !14, line: 1988, baseType: !3886, size: 64, offset: 896)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!109, !3768, !3520, !3889, !549, !7}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3891, line: 22, size: 1280, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3890, file: !3891, line: 23, baseType: !549, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3890, file: !3891, line: 24, baseType: !443, size: 16, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3890, file: !3891, line: 25, baseType: !7, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3890, file: !3891, line: 26, baseType: !1967, size: 32, offset: 96)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3890, file: !3891, line: 27, baseType: !552, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3890, file: !3891, line: 28, baseType: !552, size: 64, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3890, file: !3891, line: 41, baseType: !552, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3890, file: !3891, line: 42, baseType: !635, size: 32, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3890, file: !3891, line: 43, baseType: !635, size: 32, offset: 352)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3890, file: !3891, line: 44, baseType: !486, size: 32, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3890, file: !3891, line: 45, baseType: !495, size: 32, offset: 416)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3890, file: !3891, line: 46, baseType: !640, size: 64, offset: 448)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3890, file: !3891, line: 47, baseType: !3878, size: 128, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3890, file: !3891, line: 48, baseType: !3878, size: 128, offset: 640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3890, file: !3891, line: 49, baseType: !3878, size: 128, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3890, file: !3891, line: 50, baseType: !3878, size: 128, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3890, file: !3891, line: 51, baseType: !552, size: 64, offset: 1024)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3890, file: !3891, line: 52, baseType: !552, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3890, file: !3891, line: 53, baseType: !549, size: 32, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3890, file: !3891, line: 54, baseType: !549, size: 32, offset: 1184)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3890, file: !3891, line: 55, baseType: !552, size: 64, offset: 1216)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !509, file: !14, line: 1990, baseType: !3915, size: 64, offset: 960)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!433, !515, !401, !448}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !509, file: !14, line: 1991, baseType: !3919, size: 64, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!109, !480, !3922, !552, !552}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !509, file: !14, line: 1993, baseType: !3925, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!109, !480, !109}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !509, file: !14, line: 1994, baseType: !3929, size: 64, offset: 1152)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!109, !480, !515, !1623, !7, !443}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !509, file: !14, line: 1997, baseType: !3933, size: 64, offset: 1216)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!109, !3768, !480, !1623, !443}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !509, file: !14, line: 1999, baseType: !3937, size: 64, offset: 1280)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!503, !3768, !515, !109}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !509, file: !14, line: 2001, baseType: !3941, size: 64, offset: 1344)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!109, !3768, !515, !503, !109}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !509, file: !14, line: 2003, baseType: !3945, size: 64, offset: 1408)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!109, !3768, !515, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !509, file: !14, line: 2005, baseType: !3951, size: 64, offset: 1472)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!109, !515, !3948}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !509, file: !14, line: 2006, baseType: !3955, size: 64, offset: 1536)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!3958, !480}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3960)
!3960 = !{!3961, !3962}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3959, file: !14, line: 3193, baseType: !1297, size: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3959, file: !14, line: 3194, baseType: !549, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !481, file: !14, line: 655, baseType: !630, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !481, file: !14, line: 656, baseType: !476, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !481, file: !14, line: 659, baseType: !275, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !481, file: !14, line: 663, baseType: !278, size: 64, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !14, line: 671, baseType: !3968, size: 32, offset: 704)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !14, line: 671, size: 32, elements: !3969)
!3969 = !{!3970, !3972}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3968, file: !14, line: 672, baseType: !3971, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3968, file: !14, line: 673, baseType: !7, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !481, file: !14, line: 675, baseType: !635, size: 32, offset: 736)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !481, file: !14, line: 676, baseType: !640, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !481, file: !14, line: 677, baseType: !3878, size: 128, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !481, file: !14, line: 678, baseType: !3878, size: 128, offset: 960)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !481, file: !14, line: 679, baseType: !3878, size: 128, offset: 1088)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !481, file: !14, line: 680, baseType: !336, size: 32, offset: 1216)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !481, file: !14, line: 681, baseType: !371, size: 16, offset: 1248)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !481, file: !14, line: 682, baseType: !360, size: 8, offset: 1264)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !481, file: !14, line: 683, baseType: !360, size: 8, offset: 1272)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !481, file: !14, line: 684, baseType: !3593, size: 64, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !481, file: !14, line: 691, baseType: !278, size: 64, offset: 1344)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !481, file: !14, line: 692, baseType: !1651, size: 320, offset: 1408)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !481, file: !14, line: 694, baseType: !278, size: 64, offset: 1728)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !481, file: !14, line: 695, baseType: !278, size: 64, offset: 1792)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !481, file: !14, line: 697, baseType: !986, size: 128, offset: 1856)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !481, file: !14, line: 698, baseType: !323, size: 128, offset: 1984)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !481, file: !14, line: 707, baseType: !323, size: 128, offset: 2112)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !481, file: !14, line: 708, baseType: !323, size: 128, offset: 2240)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !14, line: 709, baseType: !3992, size: 128, offset: 2368)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !14, line: 709, size: 128, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3992, file: !14, line: 710, baseType: !1110, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3992, file: !14, line: 711, baseType: !960, size: 128, align: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !481, file: !14, line: 713, baseType: !746, size: 64, offset: 2496)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !481, file: !14, line: 714, baseType: !746, size: 64, offset: 2560)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !481, file: !14, line: 715, baseType: !299, size: 32, offset: 2624)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !481, file: !14, line: 716, baseType: !299, size: 32, offset: 2656)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !481, file: !14, line: 717, baseType: !299, size: 32, offset: 2688)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !481, file: !14, line: 719, baseType: !299, size: 32, offset: 2720)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !14, line: 721, baseType: !4003, size: 64, offset: 2752)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !14, line: 721, size: 64, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4003, file: !14, line: 722, baseType: !3218, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4003, file: !14, line: 723, baseType: !1133, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !481, file: !14, line: 725, baseType: !4008, size: 64, offset: 2816)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !481, file: !14, line: 726, baseType: !477, size: 1536, align: 64, offset: 2880)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !481, file: !14, line: 727, baseType: !323, size: 128, offset: 4416)
!4012 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !14, line: 728, baseType: !4013, size: 64, offset: 4544)
!4013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !14, line: 728, size: 64, elements: !4014)
!4014 = !{!4015, !4016, !4019, !4020}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4013, file: !14, line: 729, baseType: !2537, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4013, file: !14, line: 730, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4013, file: !14, line: 731, baseType: !401, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4013, file: !14, line: 732, baseType: !7, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !481, file: !14, line: 735, baseType: !279, size: 32, offset: 4608)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !481, file: !14, line: 738, baseType: !279, size: 32, offset: 4640)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !481, file: !14, line: 739, baseType: !3705, size: 64, offset: 4672)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !481, file: !14, line: 750, baseType: !275, size: 64, offset: 4736)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !477, file: !14, line: 474, baseType: !1297, size: 128, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !477, file: !14, line: 475, baseType: !1651, size: 320, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !477, file: !14, line: 476, baseType: !276, size: 32, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !477, file: !14, line: 477, baseType: !299, size: 32, offset: 544)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !477, file: !14, line: 482, baseType: !1479, size: 128, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !477, file: !14, line: 483, baseType: !278, size: 64, offset: 704)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !477, file: !14, line: 484, baseType: !278, size: 64, offset: 768)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !477, file: !14, line: 485, baseType: !4033, size: 64, offset: 832)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4036)
!4036 = !{!4037, !4041, !4111, !4115, !4119, !4125, !4129, !4133, !4138, !4142, !4146, !4150, !4151, !4155, !4159, !4163, !4168, !4172, !4179, !4180}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4035, file: !14, line: 405, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!109, !2543, !1145}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4035, file: !14, line: 406, baseType: !4042, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!109, !1623, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !4047)
!4047 = !{!4048, !4078, !4092}
!4048 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !38, line: 295, baseType: !4049, size: 512)
!4049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4046, file: !38, line: 295, size: 512, elements: !4050)
!4050 = !{!4051, !4077}
!4051 = !DIDerivedType(tag: DW_TAG_member, scope: !4049, file: !38, line: 296, baseType: !4052, size: 448)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4049, file: !38, line: 296, size: 448, elements: !4053)
!4053 = !{!4054, !4055, !4064, !4065, !4066, !4075, !4076}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4052, file: !38, line: 298, baseType: !278, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !38, line: 299, baseType: !4056, size: 128, offset: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4052, file: !38, line: 299, size: 128, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4056, file: !38, line: 300, baseType: !323, size: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !38, line: 302, baseType: !4060, size: 128)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4056, file: !38, line: 302, size: 128, elements: !4061)
!4061 = !{!4062, !4063}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4060, file: !38, line: 303, baseType: !275, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4060, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4052, file: !38, line: 310, baseType: !476, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4052, file: !38, line: 311, baseType: !278, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !38, line: 312, baseType: !4067, size: 64, offset: 320)
!4067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4052, file: !38, line: 312, size: 64, elements: !4068)
!4068 = !{!4069, !4070}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4067, file: !38, line: 313, baseType: !275, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4067, file: !38, line: 314, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !4072)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !4073)
!4073 = !{!4074}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4072, file: !38, line: 256, baseType: !278, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4052, file: !38, line: 316, baseType: !299, size: 32, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4052, file: !38, line: 317, baseType: !299, size: 32, offset: 416)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4049, file: !38, line: 323, baseType: !2544, size: 512, align: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !38, line: 325, baseType: !4079, size: 512, offset: 512)
!4079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4046, file: !38, line: 325, size: 512, elements: !4080)
!4080 = !{!4081, !4091}
!4081 = !DIDerivedType(tag: DW_TAG_member, scope: !4079, file: !38, line: 326, baseType: !4082, size: 320)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4079, file: !38, line: 326, size: 320, elements: !4083)
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4082, file: !38, line: 327, baseType: !278, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4082, file: !38, line: 328, baseType: !278, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4082, file: !38, line: 329, baseType: !278, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4082, file: !38, line: 331, baseType: !299, size: 32, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4082, file: !38, line: 332, baseType: !299, size: 32, offset: 224)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4082, file: !38, line: 333, baseType: !299, size: 32, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4082, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4079, file: !38, line: 339, baseType: !2544, size: 512, align: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !38, line: 341, baseType: !4093, size: 512, offset: 1024)
!4093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4046, file: !38, line: 341, size: 512, elements: !4094)
!4094 = !{!4095, !4104, !4110}
!4095 = !DIDerivedType(tag: DW_TAG_member, scope: !4093, file: !38, line: 342, baseType: !4096, size: 384)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !38, line: 342, size: 384, elements: !4097)
!4097 = !{!4098, !4099, !4100, !4101, !4102, !4103}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4096, file: !38, line: 343, baseType: !278, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4096, file: !38, line: 344, baseType: !278, size: 64, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4096, file: !38, line: 346, baseType: !275, size: 64, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4096, file: !38, line: 347, baseType: !275, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4096, file: !38, line: 348, baseType: !275, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4096, file: !38, line: 349, baseType: !275, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, scope: !4093, file: !38, line: 352, baseType: !4105, size: 256)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !38, line: 352, size: 256, elements: !4106)
!4106 = !{!4107, !4108, !4109}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4105, file: !38, line: 353, baseType: !278, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4105, file: !38, line: 354, baseType: !278, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4105, file: !38, line: 356, baseType: !323, size: 128, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4093, file: !38, line: 359, baseType: !2544, size: 512, align: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4035, file: !14, line: 409, baseType: !4112, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!109, !476, !1145}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4035, file: !14, line: 412, baseType: !4116, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!820, !476, !4045}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4035, file: !14, line: 414, baseType: !4120, size: 64, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4035, file: !14, line: 416, baseType: !4126, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!109, !1623, !476, !640, !7, !2929, !3357}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4035, file: !14, line: 419, baseType: !4130, size: 64, offset: 384)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!109, !1623, !476, !640, !7, !7, !2543, !275}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4035, file: !14, line: 424, baseType: !4134, size: 64, offset: 448)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!4137, !476, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !277, line: 131, baseType: !552)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4035, file: !14, line: 425, baseType: !4139, size: 64, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{null, !4045, !448, !448}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4035, file: !14, line: 426, baseType: !4143, size: 64, offset: 576)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!820, !4045, !276}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4035, file: !14, line: 427, baseType: !4147, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{null, !4045}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4035, file: !14, line: 428, baseType: !3236, size: 64, offset: 704)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4035, file: !14, line: 433, baseType: !4152, size: 64, offset: 768)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!109, !476, !4045, !4045, !74}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4035, file: !14, line: 435, baseType: !4156, size: 64, offset: 832)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!109, !4045}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4035, file: !14, line: 436, baseType: !4160, size: 64, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!820, !4045, !448, !448}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4035, file: !14, line: 438, baseType: !4164, size: 64, offset: 960)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !4045, !4167, !4167}
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4035, file: !14, line: 439, baseType: !4169, size: 64, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!109, !476, !2543}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4035, file: !14, line: 442, baseType: !4173, size: 64, offset: 1088)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!109, !4176, !1623, !4178}
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4035, file: !14, line: 444, baseType: !3349, size: 64, offset: 1152)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4035, file: !14, line: 445, baseType: !4181, size: 64, offset: 1216)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!109, !3239, !3261}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !14, line: 486, baseType: !278, size: 64, offset: 896)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !477, file: !14, line: 487, baseType: !1651, size: 320, offset: 960)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !477, file: !14, line: 488, baseType: !3392, size: 32, offset: 1280)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !477, file: !14, line: 489, baseType: !336, size: 32, offset: 1312)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !477, file: !14, line: 490, baseType: !323, size: 128, offset: 1344)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !477, file: !14, line: 491, baseType: !275, size: 64, offset: 1472)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !467, file: !427, line: 180, baseType: !4191, size: 64, offset: 320)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!433, !1623, !329, !466, !401, !640, !448}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !467, file: !427, line: 182, baseType: !4191, size: 64, offset: 384)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !467, file: !427, line: 184, baseType: !4196, size: 64, offset: 448)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!109, !1623, !329, !466, !2653}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !455, file: !427, line: 90, baseType: !4200, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !455, file: !427, line: 91, baseType: !4202, size: 64, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !417, file: !316, line: 120, baseType: !4204, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!4207, !384}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4210)
!4210 = !{!4211, !4212, !4216, !4220, !4226, !4230}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4209, file: !82, line: 40, baseType: !81, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4209, file: !82, line: 41, baseType: !4213, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!820}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4209, file: !82, line: 42, baseType: !4217, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!275}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4209, file: !82, line: 43, baseType: !4221, size: 64, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!1728, !4224}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4209, file: !82, line: 44, baseType: !4227, size: 64, offset: 256)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!1728}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4209, file: !82, line: 45, baseType: !783, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !417, file: !316, line: 121, baseType: !4232, size: 64, offset: 256)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!1728, !384}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !417, file: !316, line: 122, baseType: !4236, size: 64, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !384, !4239, !4240}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !315, file: !316, line: 70, baseType: !4242, size: 64, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !655, line: 190, size: 1152, elements: !4244)
!4244 = !{!4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4324, !4325, !4326, !4327, !4328, !4331}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4243, file: !655, line: 191, baseType: !299, size: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4243, file: !655, line: 192, baseType: !299, size: 32, offset: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4243, file: !655, line: 202, baseType: !4242, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4243, file: !655, line: 203, baseType: !319, size: 64, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4243, file: !655, line: 205, baseType: !852, size: 192, align: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4243, file: !655, line: 207, baseType: !1728, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4243, file: !655, line: 208, baseType: !7, size: 32, offset: 448)
!4252 = !DIDerivedType(tag: DW_TAG_member, scope: !4243, file: !655, line: 209, baseType: !4253, size: 256, offset: 512)
!4253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4243, file: !655, line: 209, size: 256, elements: !4254)
!4254 = !{!4255, !4264, !4268}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4253, file: !655, line: 210, baseType: !4256, size: 256)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !655, line: 153, size: 256, elements: !4257)
!4257 = !{!4258, !4259, !4260, !4263}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4256, file: !655, line: 154, baseType: !278, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4256, file: !655, line: 156, baseType: !1482, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4256, file: !655, line: 162, baseType: !4261, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !655, line: 162, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4256, file: !655, line: 167, baseType: !278, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4253, file: !655, line: 211, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !655, line: 170, size: 64, elements: !4266)
!4266 = !{!4267}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4265, file: !655, line: 171, baseType: !4242, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4253, file: !655, line: 212, baseType: !4269, size: 256)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !655, line: 174, size: 256, elements: !4270)
!4270 = !{!4271, !4319, !4322, !4323}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4269, file: !655, line: 175, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !655, line: 271, size: 768, elements: !4275)
!4275 = !{!4276, !4296, !4300, !4301, !4302, !4303, !4304, !4308, !4309, !4310, !4311, !4315}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4274, file: !655, line: 276, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!109, !4280}
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !655, line: 251, size: 1216, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4281, file: !655, line: 253, baseType: !4242, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4281, file: !655, line: 254, baseType: !1623, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4281, file: !655, line: 255, baseType: !1182, size: 64, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4281, file: !655, line: 256, baseType: !275, size: 64, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4281, file: !655, line: 259, baseType: !740, size: 256, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4281, file: !655, line: 260, baseType: !740, size: 256, offset: 512)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4281, file: !655, line: 261, baseType: !109, size: 32, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4281, file: !655, line: 262, baseType: !323, size: 128, offset: 832)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4281, file: !655, line: 263, baseType: !401, size: 64, offset: 960)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4281, file: !655, line: 265, baseType: !448, size: 64, offset: 1024)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4281, file: !655, line: 266, baseType: !820, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4281, file: !655, line: 267, baseType: !820, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4281, file: !655, line: 268, baseType: !2696, size: 64, offset: 1152)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4274, file: !655, line: 277, baseType: !4297, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !4280}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4274, file: !655, line: 290, baseType: !1213, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4274, file: !655, line: 292, baseType: !1200, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4274, file: !655, line: 293, baseType: !1209, size: 64, offset: 256)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4274, file: !655, line: 294, baseType: !1205, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4274, file: !655, line: 296, baseType: !4305, size: 64, offset: 384)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!433, !4280, !401, !448, !640}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4274, file: !655, line: 306, baseType: !448, size: 64, offset: 448)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4274, file: !655, line: 313, baseType: !820, size: 8, offset: 512)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4274, file: !655, line: 314, baseType: !4305, size: 64, offset: 576)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4274, file: !655, line: 317, baseType: !4312, size: 64, offset: 640)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!3287, !4280, !3289}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4274, file: !655, line: 320, baseType: !4316, size: 64, offset: 704)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!109, !4280, !2653}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4269, file: !655, line: 176, baseType: !4320, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !655, line: 35, flags: DIFlagFwdDecl)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4269, file: !655, line: 177, baseType: !640, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4269, file: !655, line: 178, baseType: !4242, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4243, file: !655, line: 215, baseType: !275, size: 64, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4243, file: !655, line: 221, baseType: !552, size: 64, offset: 832)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4243, file: !655, line: 223, baseType: !371, size: 16, offset: 896)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4243, file: !655, line: 224, baseType: !443, size: 16, offset: 912)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4243, file: !655, line: 225, baseType: !4329, size: 64, offset: 960)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !655, line: 36, flags: DIFlagFwdDecl)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4243, file: !655, line: 227, baseType: !960, size: 128, align: 64, offset: 1024)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !315, file: !316, line: 71, baseType: !291, size: 32, offset: 448)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !315, file: !316, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !315, file: !316, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !315, file: !316, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !315, file: !316, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !315, file: !316, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !312, file: !94, line: 707, baseType: !311, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !312, file: !94, line: 709, baseType: !4340, size: 64, offset: 576)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !312, file: !94, line: 711, baseType: !319, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !312, file: !94, line: 712, baseType: !4344, size: 64, offset: 704)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4356, !4361, !4365}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !94, line: 90, baseType: !319, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4346, file: !94, line: 91, baseType: !452, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4346, file: !94, line: 92, baseType: !4351, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!109, !4354, !396}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4346, file: !94, line: 93, baseType: !4357, size: 64, offset: 192)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!401, !4354, !4360, !4239, !4240}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4346, file: !94, line: 95, baseType: !4362, size: 64, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !311}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4346, file: !94, line: 97, baseType: !4366, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4368)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4369)
!4369 = !{!4370, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4368, file: !101, line: 287, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!109, !311}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4368, file: !101, line: 288, baseType: !4362, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4368, file: !101, line: 289, baseType: !4371, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4368, file: !101, line: 290, baseType: !4371, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4368, file: !101, line: 291, baseType: !4371, size: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4368, file: !101, line: 292, baseType: !4371, size: 64, offset: 320)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4368, file: !101, line: 293, baseType: !4371, size: 64, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4368, file: !101, line: 294, baseType: !4371, size: 64, offset: 448)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4368, file: !101, line: 295, baseType: !4371, size: 64, offset: 512)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4368, file: !101, line: 296, baseType: !4371, size: 64, offset: 576)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4368, file: !101, line: 297, baseType: !4371, size: 64, offset: 640)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4368, file: !101, line: 298, baseType: !4371, size: 64, offset: 704)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4368, file: !101, line: 299, baseType: !4371, size: 64, offset: 768)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4368, file: !101, line: 300, baseType: !4371, size: 64, offset: 832)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4368, file: !101, line: 301, baseType: !4371, size: 64, offset: 896)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4368, file: !101, line: 302, baseType: !4371, size: 64, offset: 960)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4368, file: !101, line: 303, baseType: !4371, size: 64, offset: 1024)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4368, file: !101, line: 304, baseType: !4371, size: 64, offset: 1088)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4368, file: !101, line: 305, baseType: !4371, size: 64, offset: 1152)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4368, file: !101, line: 306, baseType: !4371, size: 64, offset: 1216)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4368, file: !101, line: 307, baseType: !4371, size: 64, offset: 1280)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4368, file: !101, line: 308, baseType: !4371, size: 64, offset: 1344)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4368, file: !101, line: 309, baseType: !4371, size: 64, offset: 1408)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !312, file: !94, line: 714, baseType: !4397, size: 64, offset: 768)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4400, line: 80, size: 1344, elements: !4401)
!4400 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4465}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4399, file: !4400, line: 81, baseType: !319, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4399, file: !4400, line: 82, baseType: !319, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4399, file: !4400, line: 83, baseType: !452, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4399, file: !4400, line: 84, baseType: !452, size: 64, offset: 192)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4399, file: !4400, line: 85, baseType: !452, size: 64, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4399, file: !4400, line: 87, baseType: !4408, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!109, !311, !4411}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419, !4420, !4424, !4428, !4429, !4430, !4431, !4432, !4440, !4441, !4442, !4443, !4444, !4445}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4412, file: !88, line: 97, baseType: !319, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4412, file: !88, line: 98, baseType: !4397, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4412, file: !88, line: 100, baseType: !669, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4412, file: !88, line: 101, baseType: !319, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4412, file: !88, line: 103, baseType: !820, size: 8, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4412, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4412, file: !88, line: 106, baseType: !4421, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4423)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4412, file: !88, line: 107, baseType: !4425, size: 64, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4412, file: !88, line: 109, baseType: !4371, size: 64, offset: 448)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4412, file: !88, line: 110, baseType: !4362, size: 64, offset: 512)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4412, file: !88, line: 111, baseType: !4371, size: 64, offset: 576)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4412, file: !88, line: 112, baseType: !4362, size: 64, offset: 640)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4412, file: !88, line: 113, baseType: !4433, size: 64, offset: 704)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!109, !311, !4436}
!4436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4437)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4438)
!4438 = !{!4439}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4437, file: !101, line: 59, baseType: !109, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4412, file: !88, line: 114, baseType: !4371, size: 64, offset: 768)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4412, file: !88, line: 115, baseType: !452, size: 64, offset: 832)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4412, file: !88, line: 116, baseType: !452, size: 64, offset: 896)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4412, file: !88, line: 118, baseType: !4366, size: 64, offset: 960)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4412, file: !88, line: 119, baseType: !4362, size: 64, offset: 1024)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4412, file: !88, line: 121, baseType: !4446, size: 64, offset: 1088)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4399, file: !4400, line: 88, baseType: !4351, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4399, file: !4400, line: 89, baseType: !4371, size: 64, offset: 448)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4399, file: !4400, line: 90, baseType: !4362, size: 64, offset: 512)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4399, file: !4400, line: 91, baseType: !4362, size: 64, offset: 576)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4399, file: !4400, line: 92, baseType: !4362, size: 64, offset: 640)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4399, file: !4400, line: 94, baseType: !4371, size: 64, offset: 704)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4399, file: !4400, line: 95, baseType: !4371, size: 64, offset: 768)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4399, file: !4400, line: 97, baseType: !4433, size: 64, offset: 832)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4399, file: !4400, line: 98, baseType: !4371, size: 64, offset: 896)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4399, file: !4400, line: 100, baseType: !4371, size: 64, offset: 960)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4399, file: !4400, line: 102, baseType: !4371, size: 64, offset: 1024)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4399, file: !4400, line: 103, baseType: !4362, size: 64, offset: 1088)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4399, file: !4400, line: 105, baseType: !4366, size: 64, offset: 1152)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4399, file: !4400, line: 107, baseType: !4462, size: 64, offset: 1216)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4464)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4400, line: 107, flags: DIFlagFwdDecl)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4399, file: !4400, line: 109, baseType: !820, size: 8, offset: 1280)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !312, file: !94, line: 715, baseType: !4411, size: 64, offset: 832)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !312, file: !94, line: 717, baseType: !275, size: 64, offset: 896)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !312, file: !94, line: 719, baseType: !275, size: 64, offset: 960)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !312, file: !94, line: 721, baseType: !740, size: 256, offset: 1024)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !312, file: !94, line: 725, baseType: !4471, size: 448, offset: 1280)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4472)
!4472 = !{!4473, !4474, !4475, !4476}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4471, file: !94, line: 518, baseType: !323, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4471, file: !94, line: 519, baseType: !323, size: 128, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4471, file: !94, line: 520, baseType: !323, size: 128, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4471, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !312, file: !94, line: 726, baseType: !4478, size: 2496, offset: 1728)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4562, !4566}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4478, file: !101, line: 664, baseType: !4436, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4478, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4478, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4478, file: !101, line: 667, baseType: !820, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4478, file: !101, line: 668, baseType: !820, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4478, file: !101, line: 669, baseType: !820, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4478, file: !101, line: 670, baseType: !820, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4478, file: !101, line: 671, baseType: !820, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4478, file: !101, line: 672, baseType: !820, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4478, file: !101, line: 673, baseType: !820, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4478, file: !101, line: 674, baseType: !820, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4478, file: !101, line: 675, baseType: !549, size: 32, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4478, file: !101, line: 676, baseType: !336, size: 32, offset: 96)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4478, file: !101, line: 678, baseType: !323, size: 128, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4478, file: !101, line: 679, baseType: !689, size: 256, offset: 256)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4478, file: !101, line: 680, baseType: !4496, size: 64, offset: 512)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4498, line: 43, size: 1536, elements: !4499)
!4498 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4497, file: !4498, line: 44, baseType: !319, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4497, file: !4498, line: 45, baseType: !109, size: 32, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4497, file: !4498, line: 46, baseType: !323, size: 128, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4497, file: !4498, line: 47, baseType: !336, size: 32, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4497, file: !4498, line: 48, baseType: !4505, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4497, file: !4498, line: 49, baseType: !982, size: 320, offset: 384)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4497, file: !4498, line: 50, baseType: !278, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4497, file: !4498, line: 51, baseType: !1428, size: 64, offset: 768)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4497, file: !4498, line: 52, baseType: !1428, size: 64, offset: 832)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4497, file: !4498, line: 53, baseType: !1428, size: 64, offset: 896)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4497, file: !4498, line: 54, baseType: !1428, size: 64, offset: 960)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4497, file: !4498, line: 55, baseType: !1428, size: 64, offset: 1024)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4497, file: !4498, line: 56, baseType: !278, size: 64, offset: 1088)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4497, file: !4498, line: 57, baseType: !278, size: 64, offset: 1152)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4497, file: !4498, line: 58, baseType: !278, size: 64, offset: 1216)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4497, file: !4498, line: 59, baseType: !278, size: 64, offset: 1280)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4497, file: !4498, line: 60, baseType: !278, size: 64, offset: 1344)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4497, file: !4498, line: 61, baseType: !311, size: 64, offset: 1408)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4497, file: !4498, line: 62, baseType: !820, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4497, file: !4498, line: 63, baseType: !820, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4478, file: !101, line: 681, baseType: !820, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4478, file: !101, line: 682, baseType: !820, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4478, file: !101, line: 683, baseType: !820, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4478, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4478, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4478, file: !101, line: 690, baseType: !1420, size: 512, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4478, file: !101, line: 691, baseType: !552, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4478, file: !101, line: 692, baseType: !1000, size: 256, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4478, file: !101, line: 693, baseType: !1275, size: 192, offset: 1472)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4478, file: !101, line: 694, baseType: !4505, size: 64, offset: 1664)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4478, file: !101, line: 695, baseType: !299, size: 32, offset: 1728)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4478, file: !101, line: 696, baseType: !299, size: 32, offset: 1760)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4478, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4478, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4478, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4478, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4478, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4478, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4478, file: !101, line: 703, baseType: !820, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4478, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4478, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4478, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4478, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4478, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4478, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4478, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4478, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4478, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4478, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4478, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4478, file: !101, line: 715, baseType: !552, size: 64, offset: 2048)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4478, file: !101, line: 716, baseType: !552, size: 64, offset: 2112)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4478, file: !101, line: 717, baseType: !552, size: 64, offset: 2176)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4478, file: !101, line: 718, baseType: !552, size: 64, offset: 2240)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4478, file: !101, line: 720, baseType: !4557, size: 64, offset: 2304)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4559)
!4559 = !{!4560, !4561}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4558, file: !101, line: 633, baseType: !336, size: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4558, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4478, file: !101, line: 721, baseType: !4563, size: 64, offset: 2368)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !311, !736}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4478, file: !101, line: 722, baseType: !4567, size: 64, offset: 2432)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !312, file: !94, line: 727, baseType: !4570, size: 64, offset: 4224)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4579, !4580, !4581}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4571, file: !101, line: 743, baseType: !4368, size: 1472)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4571, file: !101, line: 744, baseType: !4371, size: 64, offset: 1472)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4571, file: !101, line: 745, baseType: !4576, size: 64, offset: 1536)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !311, !820}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4571, file: !101, line: 746, baseType: !4371, size: 64, offset: 1600)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4571, file: !101, line: 747, baseType: !4362, size: 64, offset: 1664)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4571, file: !101, line: 748, baseType: !4362, size: 64, offset: 1728)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !312, file: !94, line: 736, baseType: !4583, size: 128, offset: 4288)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4584)
!4584 = !{!4585, !4589}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4583, file: !94, line: 531, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4588, line: 13, flags: DIFlagFwdDecl)
!4588 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4583, file: !94, line: 532, baseType: !4590, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !312, file: !94, line: 738, baseType: !4593, size: 64, offset: 4416)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4595)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !312, file: !94, line: 740, baseType: !4597, size: 64, offset: 4480)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !312, file: !94, line: 741, baseType: !552, size: 64, offset: 4544)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !312, file: !94, line: 746, baseType: !552, size: 64, offset: 4608)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !312, file: !94, line: 747, baseType: !4601, size: 64, offset: 4672)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4603)
!4603 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !312, file: !94, line: 749, baseType: !4605, size: 64, offset: 4736)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4606, file: !94, line: 433, baseType: !7, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4606, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4606, file: !94, line: 435, baseType: !278, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !312, file: !94, line: 751, baseType: !323, size: 128, offset: 4800)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !312, file: !94, line: 762, baseType: !4613, size: 64, offset: 4928)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !312, file: !94, line: 770, baseType: !4616, offset: 4992)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4617, line: 5, elements: !1029)
!4617 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !312, file: !94, line: 772, baseType: !4619, size: 64, offset: 4992)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4621, line: 18, flags: DIFlagFwdDecl)
!4621 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !312, file: !94, line: 773, baseType: !4623, size: 64, offset: 5056)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4625, line: 41, size: 512, elements: !4626)
!4625 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4626 = !{!4627, !4628, !4722, !4723, !4724, !4725}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4624, file: !4625, line: 42, baseType: !4623, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4624, file: !4625, line: 43, baseType: !4629, size: 64, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4631)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4625, line: 125, size: 1408, elements: !4632)
!4632 = !{!4633, !4637, !4641, !4647, !4651, !4652, !4657, !4661, !4665, !4669, !4673, !4674, !4678, !4682, !4686, !4697, !4698, !4699, !4700, !4710, !4714, !4718}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4631, file: !4625, line: 126, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!4623, !4623}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4631, file: !4625, line: 127, baseType: !4638, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{null, !4623}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4631, file: !4625, line: 128, baseType: !4642, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!820, !4645}
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4624)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4631, file: !4625, line: 129, baseType: !4648, size: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!1728, !4645, !4354}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4631, file: !4625, line: 131, baseType: !4642, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4631, file: !4625, line: 133, baseType: !4653, size: 64, offset: 320)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!4656, !4645}
!4656 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4625, line: 132, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4631, file: !4625, line: 134, baseType: !4658, size: 64, offset: 384)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!820, !4645, !319}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4631, file: !4625, line: 136, baseType: !4662, size: 64, offset: 448)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!109, !4645, !319, !7, !275, !448}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4631, file: !4625, line: 141, baseType: !4666, size: 64, offset: 512)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!109, !4645, !319, !1077, !448}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4631, file: !4625, line: 144, baseType: !4670, size: 64, offset: 576)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!319, !4645}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4631, file: !4625, line: 145, baseType: !4670, size: 64, offset: 640)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4631, file: !4625, line: 146, baseType: !4675, size: 64, offset: 704)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!4623, !4645}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4631, file: !4625, line: 148, baseType: !4679, size: 64, offset: 768)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!4623, !4645, !4623}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4631, file: !4625, line: 151, baseType: !4683, size: 64, offset: 832)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!4623, !4645, !319}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4631, file: !4625, line: 153, baseType: !4687, size: 64, offset: 896)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!109, !4645, !319, !319, !7, !7, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4625, line: 94, size: 640, elements: !4692)
!4692 = !{!4693, !4694, !4695}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4691, file: !4625, line: 95, baseType: !4623, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4691, file: !4625, line: 96, baseType: !7, size: 32, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4691, file: !4625, line: 97, baseType: !4696, size: 512, offset: 128)
!4696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 512, elements: !1463)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4631, file: !4625, line: 158, baseType: !4679, size: 64, offset: 960)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4631, file: !4625, line: 161, baseType: !4675, size: 64, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4631, file: !4625, line: 163, baseType: !4634, size: 64, offset: 1088)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4631, file: !4625, line: 164, baseType: !4701, size: 64, offset: 1152)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!109, !4645, !4704}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4625, line: 73, size: 128, elements: !4706)
!4706 = !{!4707, !4708, !4709}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4705, file: !4625, line: 74, baseType: !7, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4705, file: !4625, line: 75, baseType: !7, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4705, file: !4625, line: 76, baseType: !4645, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4631, file: !4625, line: 166, baseType: !4711, size: 64, offset: 1216)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!275, !4623, !109}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4631, file: !4625, line: 167, baseType: !4715, size: 64, offset: 1280)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!109, !4645, !7}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4631, file: !4625, line: 168, baseType: !4719, size: 64, offset: 1344)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!109, !4623}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4624, file: !4625, line: 44, baseType: !311, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4624, file: !4625, line: 45, baseType: !323, size: 128, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4624, file: !4625, line: 46, baseType: !323, size: 128, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4624, file: !4625, line: 47, baseType: !360, size: 8, offset: 448)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !312, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !312, file: !94, line: 778, baseType: !635, size: 32, offset: 5152)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !312, file: !94, line: 779, baseType: !549, size: 32, offset: 5184)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !312, file: !94, line: 781, baseType: !336, size: 32, offset: 5216)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !312, file: !94, line: 782, baseType: !323, size: 128, offset: 5248)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !312, file: !94, line: 784, baseType: !4732, size: 64, offset: 5376)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4734)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4735, line: 52, size: 768, elements: !4736)
!4735 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4736 = !{!4737, !4738, !4739, !4740, !4741, !4745, !4749, !4750, !4751, !4752, !4756, !4760}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4734, file: !4735, line: 53, baseType: !319, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4734, file: !4735, line: 55, baseType: !452, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4734, file: !4735, line: 56, baseType: !452, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4734, file: !4735, line: 58, baseType: !4351, size: 64, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4734, file: !4735, line: 59, baseType: !4742, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!401, !4354, !4360}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4734, file: !4735, line: 61, baseType: !4746, size: 64, offset: 320)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{null, !4732}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4734, file: !4735, line: 62, baseType: !4362, size: 64, offset: 384)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4734, file: !4735, line: 64, baseType: !4371, size: 64, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4734, file: !4735, line: 66, baseType: !4207, size: 64, offset: 512)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4734, file: !4735, line: 67, baseType: !4753, size: 64, offset: 576)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!1728, !4354}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4734, file: !4735, line: 69, baseType: !4757, size: 64, offset: 640)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !4354, !4239, !4240}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4734, file: !4735, line: 71, baseType: !4366, size: 64, offset: 704)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !312, file: !94, line: 785, baseType: !452, size: 64, offset: 5440)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !312, file: !94, line: 787, baseType: !4362, size: 64, offset: 5504)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !312, file: !94, line: 788, baseType: !4764, size: 64, offset: 5568)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !312, file: !94, line: 789, baseType: !4767, size: 64, offset: 5632)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !312, file: !94, line: 791, baseType: !4770, size: 64, offset: 5696)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4772)
!4772 = !{!4773, !4774, !4775, !4776, !4777}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4771, file: !94, line: 598, baseType: !116, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4771, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4771, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4771, file: !94, line: 601, baseType: !820, size: 8, offset: 96)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4771, file: !94, line: 602, baseType: !820, size: 8, offset: 104)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !312, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !312, file: !94, line: 795, baseType: !820, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !312, file: !94, line: 796, baseType: !820, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !312, file: !94, line: 797, baseType: !820, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !312, file: !94, line: 798, baseType: !820, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !312, file: !94, line: 799, baseType: !820, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !306, file: !209, line: 73, baseType: !4785, size: 256, offset: 128)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !209, line: 66, size: 256, elements: !4786)
!4786 = !{!4787, !4788, !4789}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4785, file: !209, line: 68, baseType: !323, size: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4785, file: !209, line: 70, baseType: !275, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4785, file: !209, line: 72, baseType: !336, size: 32, offset: 192)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !306, file: !209, line: 76, baseType: !4791, size: 64, offset: 384)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4793)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !247, line: 178, size: 1664, elements: !4794)
!4794 = !{!4795, !4799, !4872, !4876, !4880, !4881, !4882, !4886, !4887, !4891, !4895, !4899, !4904, !5107, !5111, !5126, !5132, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5186, !5187}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4793, file: !247, line: 195, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!109, !305, !278}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4793, file: !247, line: 215, baseType: !4800, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!109, !305, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4805, line: 166, size: 2944, elements: !4806)
!4805 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4806 = !{!4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4833, !4834, !4835, !4836, !4839, !4840, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4804, file: !4805, line: 176, baseType: !820, size: 8)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4804, file: !4805, line: 183, baseType: !820, size: 8, offset: 8)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4804, file: !4805, line: 191, baseType: !820, size: 8, offset: 16)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4804, file: !4805, line: 194, baseType: !820, size: 8, offset: 24)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4804, file: !4805, line: 202, baseType: !820, size: 8, offset: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4804, file: !4805, line: 209, baseType: !820, size: 8, offset: 40)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4804, file: !4805, line: 220, baseType: !820, size: 8, offset: 48)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4804, file: !4805, line: 231, baseType: !820, size: 8, offset: 56)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !4804, file: !4805, line: 243, baseType: !820, size: 8, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4804, file: !4805, line: 268, baseType: !4817, size: 64, offset: 128)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4819, line: 65, size: 1280, elements: !4820)
!4819 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4820 = !{!4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4818, file: !4819, line: 66, baseType: !291, size: 32)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4818, file: !4819, line: 67, baseType: !305, size: 64, offset: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4818, file: !4819, line: 72, baseType: !401, size: 64, offset: 128)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4818, file: !4819, line: 77, baseType: !109, size: 32, offset: 192)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4818, file: !4819, line: 82, baseType: !1293, size: 192, offset: 256)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4818, file: !4819, line: 83, baseType: !275, size: 64, offset: 448)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4818, file: !4819, line: 99, baseType: !4817, size: 64, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4818, file: !4819, line: 107, baseType: !109, size: 32, offset: 576)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4818, file: !4819, line: 116, baseType: !323, size: 128, offset: 640)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4818, file: !4819, line: 128, baseType: !323, size: 128, offset: 768)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4818, file: !4819, line: 139, baseType: !1293, size: 192, offset: 896)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4818, file: !4819, line: 147, baseType: !1293, size: 192, offset: 1088)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !4804, file: !4805, line: 271, baseType: !336, size: 32, offset: 192)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4804, file: !4805, line: 281, baseType: !1265, size: 64, offset: 256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4804, file: !4805, line: 284, baseType: !552, size: 64, offset: 320)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4804, file: !4805, line: 287, baseType: !4837, size: 32, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4838, line: 85, baseType: !7)
!4838 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4804, file: !4805, line: 295, baseType: !323, size: 128, offset: 448)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4804, file: !4805, line: 298, baseType: !4841, size: 64, offset: 576)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4805, line: 77, size: 640, elements: !4843)
!4843 = !{!4844, !4845, !4846, !4847, !4848, !4849, !4850}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4842, file: !4805, line: 79, baseType: !109, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4842, file: !4805, line: 80, baseType: !109, size: 32, offset: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4842, file: !4805, line: 81, baseType: !311, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4842, file: !4805, line: 82, baseType: !305, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4842, file: !4805, line: 84, baseType: !515, size: 64, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4842, file: !4805, line: 86, baseType: !323, size: 128, offset: 256)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4842, file: !4805, line: 87, baseType: !740, size: 256, offset: 384)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4804, file: !4805, line: 306, baseType: !1293, size: 192, offset: 640)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4804, file: !4805, line: 309, baseType: !336, size: 32, offset: 832)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4804, file: !4805, line: 312, baseType: !1293, size: 192, offset: 896)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4804, file: !4805, line: 314, baseType: !336, size: 32, offset: 1088)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4804, file: !4805, line: 317, baseType: !1623, size: 64, offset: 1152)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4804, file: !4805, line: 325, baseType: !275, size: 64, offset: 1216)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4804, file: !4805, line: 336, baseType: !323, size: 128, offset: 1280)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4804, file: !4805, line: 339, baseType: !740, size: 256, offset: 1408)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4804, file: !4805, line: 349, baseType: !323, size: 128, offset: 1664)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4804, file: !4805, line: 352, baseType: !1275, size: 192, offset: 1792)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4804, file: !4805, line: 363, baseType: !323, size: 128, offset: 1984)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4804, file: !4805, line: 373, baseType: !323, size: 128, offset: 2112)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4804, file: !4805, line: 382, baseType: !109, size: 32, offset: 2240)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4804, file: !4805, line: 385, baseType: !740, size: 256, offset: 2304)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4804, file: !4805, line: 392, baseType: !4866, size: 384, offset: 2560)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !4867, line: 45, size: 384, elements: !4868)
!4867 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!4868 = !{!4869, !4870, !4871}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4866, file: !4867, line: 47, baseType: !740, size: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !4866, file: !4867, line: 48, baseType: !1482, size: 64, offset: 256)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4866, file: !4867, line: 49, baseType: !1482, size: 64, offset: 320)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4793, file: !247, line: 229, baseType: !4873, size: 64, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{null, !305, !4803}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4793, file: !247, line: 257, baseType: !4877, size: 64, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{null, !305}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4793, file: !247, line: 274, baseType: !4877, size: 64, offset: 256)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4793, file: !247, line: 286, baseType: !4877, size: 64, offset: 320)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4793, file: !247, line: 293, baseType: !4883, size: 64, offset: 384)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{null, !305, !4803, !820}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4793, file: !247, line: 300, baseType: !4873, size: 64, offset: 448)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4793, file: !247, line: 307, baseType: !4888, size: 64, offset: 512)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{null, !4841}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4793, file: !247, line: 316, baseType: !4892, size: 64, offset: 576)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!287, !305, !448}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4793, file: !247, line: 324, baseType: !4896, size: 64, offset: 640)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!109, !305, !4803, !1967, !1967, !869}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4793, file: !247, line: 331, baseType: !4900, size: 64, offset: 704)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!109, !305, !4803, !109, !4903}
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4793, file: !247, line: 341, baseType: !4905, size: 64, offset: 768)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!287, !305, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !4910, line: 302, size: 1856, elements: !4911)
!4910 = !DIFile(filename: "./include/linux/dma-buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "057e074e138bd4ff4400a799d545c120")
!4911 = !{!4912, !4913, !4914, !4915, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5041, !5042, !5106}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4909, file: !4910, line: 308, baseType: !448, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4909, file: !4910, line: 316, baseType: !1623, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "attachments", scope: !4909, file: !4910, line: 324, baseType: !323, size: 128, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4909, file: !4910, line: 327, baseType: !4916, size: 64, offset: 256)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4918)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_ops", file: !4910, line: 36, size: 832, elements: !4919)
!4919 = !{!4920, !4921, !4963, !4967, !4971, !4972, !4976, !4980, !4984, !4988, !4989, !4993, !5007}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sgt_mapping", scope: !4918, file: !4910, line: 44, baseType: !820, size: 8)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4918, file: !4910, line: 72, baseType: !4922, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!109, !4908, !4925}
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !4910, line: 508, size: 576, elements: !4927)
!4927 = !{!4928, !4929, !4930, !4931, !4949, !4950, !4951, !4961, !4962}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf", scope: !4926, file: !4910, line: 509, baseType: !4908, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4926, file: !4910, line: 510, baseType: !311, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4926, file: !4910, line: 511, baseType: !323, size: 128, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !4926, file: !4910, line: 512, baseType: !4932, size: 64, offset: 256)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4934, line: 39, size: 128, elements: !4935)
!4934 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4935 = !{!4936, !4947, !4948}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4933, file: !4934, line: 40, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4934, line: 11, size: 256, elements: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4945, !4946}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4938, file: !4934, line: 12, baseType: !278, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4938, file: !4934, line: 13, baseType: !7, size: 32, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4938, file: !4934, line: 14, baseType: !7, size: 32, offset: 96)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4938, file: !4934, line: 15, baseType: !4944, size: 64, offset: 128)
!4944 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !277, line: 149, baseType: !552)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4938, file: !4934, line: 17, baseType: !7, size: 32, offset: 192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4938, file: !4934, line: 20, baseType: !7, size: 32, offset: 224)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4933, file: !4934, line: 41, baseType: !7, size: 32, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4933, file: !4934, line: 42, baseType: !7, size: 32, offset: 96)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4926, file: !4910, line: 513, baseType: !141, size: 32, offset: 320)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "peer2peer", scope: !4926, file: !4910, line: 514, baseType: !820, size: 8, offset: 352)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "importer_ops", scope: !4926, file: !4910, line: 515, baseType: !4952, size: 64, offset: 384)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4954)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attach_ops", file: !4910, line: 456, size: 128, elements: !4955)
!4955 = !{!4956, !4957}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "allow_peer2peer", scope: !4954, file: !4910, line: 463, baseType: !820, size: 8)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "move_notify", scope: !4954, file: !4910, line: 483, baseType: !4958, size: 64, offset: 64)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{null, !4925}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "importer_priv", scope: !4926, file: !4910, line: 516, baseType: !275, size: 64, offset: 448)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4926, file: !4910, line: 517, baseType: !275, size: 64, offset: 512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4918, file: !4910, line: 83, baseType: !4964, size: 64, offset: 128)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{null, !4908, !4925}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4918, file: !4910, line: 109, baseType: !4968, size: 64, offset: 192)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!109, !4925}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !4918, file: !4910, line: 122, baseType: !4958, size: 64, offset: 256)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "map_dma_buf", scope: !4918, file: !4910, line: 179, baseType: !4973, size: 64, offset: 320)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!4932, !4925, !141}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_dma_buf", scope: !4918, file: !4910, line: 189, baseType: !4977, size: 64, offset: 384)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{null, !4925, !4932, !141}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4918, file: !4910, line: 203, baseType: !4981, size: 64, offset: 448)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !4908}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cpu_access", scope: !4918, file: !4910, line: 230, baseType: !4985, size: 64, offset: 512)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!109, !4908, !141}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "end_cpu_access", scope: !4918, file: !4910, line: 247, baseType: !4985, size: 64, offset: 576)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4918, file: !4910, line: 284, baseType: !4990, size: 64, offset: 640)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!109, !4908, !2653}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !4918, file: !4910, line: 286, baseType: !4994, size: 64, offset: 704)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!109, !4908, !4997}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !4999, line: 109, size: 128, elements: !5000)
!4999 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!5000 = !{!5001, !5006}
!5001 = !DIDerivedType(tag: DW_TAG_member, scope: !4998, file: !4999, line: 110, baseType: !5002, size: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4998, file: !4999, line: 110, size: 64, elements: !5003)
!5003 = !{!5004, !5005}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !5002, file: !4999, line: 111, baseType: !275, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5002, file: !4999, line: 112, baseType: !275, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4998, file: !4999, line: 114, baseType: !820, size: 8, offset: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !4918, file: !4910, line: 287, baseType: !5008, size: 64, offset: 768)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !4908, !4997}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "vmapping_counter", scope: !4909, file: !4910, line: 335, baseType: !7, size: 32, offset: 320)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "vmap_ptr", scope: !4909, file: !4910, line: 341, baseType: !4998, size: 128, offset: 384)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !4909, file: !4910, line: 349, baseType: !319, size: 64, offset: 512)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4909, file: !4910, line: 357, baseType: !319, size: 64, offset: 576)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "name_lock", scope: !4909, file: !4910, line: 360, baseType: !336, size: 32, offset: 640)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4909, file: !4910, line: 368, baseType: !669, size: 64, offset: 704)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4909, file: !4910, line: 371, baseType: !323, size: 128, offset: 768)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4909, file: !4910, line: 374, baseType: !275, size: 64, offset: 896)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4909, file: !4910, line: 424, baseType: !5020, size: 64, offset: 960)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !5022, line: 155, size: 384, elements: !5023)
!5022 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!5023 = !{!5024, !5038}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5021, file: !5022, line: 166, baseType: !5025, size: 320)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5026, line: 47, size: 320, elements: !5027)
!5026 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5027 = !{!5028, !5029}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5025, file: !5026, line: 48, baseType: !740, size: 256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5025, file: !5026, line: 49, baseType: !5030, size: 64, offset: 256)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5026, line: 55, size: 192, elements: !5032)
!5032 = !{!5033, !5034, !5035, !5036, !5037}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5031, file: !5026, line: 56, baseType: !1308, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5031, file: !5026, line: 57, baseType: !278, size: 64, offset: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5031, file: !5026, line: 58, baseType: !7, size: 32, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5031, file: !5026, line: 59, baseType: !371, size: 16, offset: 160)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5031, file: !5026, line: 60, baseType: !371, size: 16, offset: 176)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !5021, file: !5022, line: 178, baseType: !5039, size: 64, offset: 320)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !5022, line: 50, flags: DIFlagFwdDecl)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4909, file: !4910, line: 427, baseType: !1275, size: 192, offset: 1024)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "cb_in", scope: !4909, file: !4910, line: 436, baseType: !5043, size: 320, offset: 1216)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_poll_cb_t", file: !4910, line: 431, size: 320, elements: !5044)
!5044 = !{!5045, !5104, !5105}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !5043, file: !4910, line: 432, baseType: !5046, size: 192)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !5047, line: 116, size: 192, elements: !5048)
!5047 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!5048 = !{!5049, !5050}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5046, file: !5047, line: 117, baseType: !323, size: 128)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5046, file: !5047, line: 118, baseType: !5051, size: 64, offset: 128)
!5051 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !5047, line: 105, baseType: !5052)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !5055, !5103}
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !5047, line: 65, size: 512, elements: !5057)
!5057 = !{!5058, !5059, !5092, !5098, !5099, !5100, !5101, !5102}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5056, file: !5047, line: 66, baseType: !2793, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5056, file: !5047, line: 67, baseType: !5060, size: 64, offset: 64)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5062)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !5047, line: 125, size: 640, elements: !5063)
!5063 = !{!5064, !5065, !5069, !5070, !5074, !5075, !5079, !5083, !5087, !5088}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !5062, file: !5047, line: 132, baseType: !820, size: 8)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !5062, file: !5047, line: 143, baseType: !5066, size: 64, offset: 64)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!319, !5055}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !5062, file: !5047, line: 155, baseType: !5066, size: 64, offset: 128)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !5062, file: !5047, line: 192, baseType: !5071, size: 64, offset: 192)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!820, !5055}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !5062, file: !5047, line: 209, baseType: !5071, size: 64, offset: 256)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5062, file: !5047, line: 227, baseType: !5076, size: 64, offset: 320)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!437, !5055, !820, !437}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5062, file: !5047, line: 238, baseType: !5080, size: 64, offset: 384)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{null, !5055}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !5062, file: !5047, line: 248, baseType: !5084, size: 64, offset: 448)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !5055, !401, !109}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !5062, file: !5047, line: 258, baseType: !5084, size: 64, offset: 512)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !5062, file: !5047, line: 279, baseType: !5089, size: 64, offset: 576)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !5055, !1428}
!5092 = !DIDerivedType(tag: DW_TAG_member, scope: !5056, file: !5047, line: 84, baseType: !5093, size: 128, offset: 128)
!5093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5056, file: !5047, line: 84, size: 128, elements: !5094)
!5094 = !{!5095, !5096, !5097}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5093, file: !5047, line: 85, baseType: !323, size: 128)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5093, file: !5047, line: 87, baseType: !1428, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5093, file: !5047, line: 89, baseType: !960, size: 128, align: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5056, file: !5047, line: 91, baseType: !552, size: 64, offset: 256)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !5056, file: !5047, line: 92, baseType: !552, size: 64, offset: 320)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5056, file: !5047, line: 93, baseType: !278, size: 64, offset: 384)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5056, file: !5047, line: 94, baseType: !291, size: 32, offset: 448)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5056, file: !5047, line: 95, baseType: !109, size: 32, offset: 480)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5043, file: !4910, line: 433, baseType: !3298, size: 64, offset: 192)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5043, file: !4910, line: 435, baseType: !3287, size: 32, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "cb_out", scope: !4909, file: !4910, line: 436, baseType: !5043, size: 320, offset: 1536)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4793, file: !247, line: 349, baseType: !5108, size: 64, offset: 832)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!287, !305, !4925, !4932}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4793, file: !247, line: 375, baseType: !5112, size: 64, offset: 896)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!109, !4803, !305, !5115}
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !5117, line: 1036, size: 256, elements: !5118)
!5117 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!5118 = !{!5119, !5120, !5121, !5122, !5123, !5124, !5125}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5116, file: !5117, line: 1037, baseType: !279, size: 32)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5116, file: !5117, line: 1038, baseType: !279, size: 32, offset: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5116, file: !5117, line: 1039, baseType: !279, size: 32, offset: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5116, file: !5117, line: 1040, baseType: !279, size: 32, offset: 96)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5116, file: !5117, line: 1042, baseType: !279, size: 32, offset: 128)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !5116, file: !5117, line: 1043, baseType: !279, size: 32, offset: 160)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5116, file: !5117, line: 1044, baseType: !553, size: 64, offset: 192)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4793, file: !247, line: 393, baseType: !5127, size: 64, offset: 960)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!109, !4803, !305, !1967, !5130}
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !277, line: 113, baseType: !552)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4793, file: !247, line: 402, baseType: !5133, size: 64, offset: 1024)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{null, !5136, !4803}
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !226, line: 76, size: 256, elements: !5138)
!5138 = !{!5139, !5160, !5164, !5165}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5137, file: !226, line: 78, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !5136, !5143}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5145, line: 79, size: 128, elements: !5146)
!5145 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5146 = !{!5147, !5148}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5144, file: !5145, line: 80, baseType: !319, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5144, file: !5145, line: 81, baseType: !5149, size: 64, offset: 64)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5151, line: 5, baseType: !5152)
!5151 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5153)
!5153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5154, size: 192, elements: !1548)
!5154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5155)
!5155 = !{!5156, !5157, !5158, !5159}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5154, file: !3, line: 21, baseType: !7, size: 32)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5154, file: !3, line: 21, baseType: !7, size: 32, offset: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5154, file: !3, line: 21, baseType: !275, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5154, file: !3, line: 21, baseType: !275, size: 64, offset: 128)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5137, file: !226, line: 79, baseType: !5161, size: 64, offset: 64)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !5136, !319}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5137, file: !226, line: 80, baseType: !275, size: 64, offset: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5137, file: !226, line: 81, baseType: !319, size: 64, offset: 192)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4793, file: !247, line: 405, baseType: !109, size: 32, offset: 1088)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4793, file: !247, line: 407, baseType: !109, size: 32, offset: 1120)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4793, file: !247, line: 409, baseType: !109, size: 32, offset: 1152)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4793, file: !247, line: 411, baseType: !401, size: 64, offset: 1216)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4793, file: !247, line: 413, baseType: !401, size: 64, offset: 1280)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4793, file: !247, line: 415, baseType: !401, size: 64, offset: 1344)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4793, file: !247, line: 423, baseType: !549, size: 32, offset: 1408)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4793, file: !247, line: 433, baseType: !5174, size: 64, offset: 1472)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5176)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !149, line: 145, size: 192, elements: !5177)
!5177 = !{!5178, !5179, !5180, !5185}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5176, file: !149, line: 146, baseType: !7, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5176, file: !149, line: 147, baseType: !148, size: 32, offset: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5176, file: !149, line: 148, baseType: !5181, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !149, line: 54, baseType: !5183)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!109, !305, !275, !4803}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5176, file: !149, line: 149, baseType: !319, size: 64, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4793, file: !247, line: 435, baseType: !109, size: 32, offset: 1536)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4793, file: !247, line: 444, baseType: !3218, size: 64, offset: 1600)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !306, file: !209, line: 88, baseType: !275, size: 64, offset: 448)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !306, file: !209, line: 98, baseType: !4841, size: 64, offset: 512)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !306, file: !209, line: 107, baseType: !4841, size: 64, offset: 576)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !306, file: !209, line: 110, baseType: !4841, size: 64, offset: 640)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !306, file: !209, line: 117, baseType: !820, size: 8, offset: 704)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !306, file: !209, line: 125, baseType: !4817, size: 64, offset: 768)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !306, file: !209, line: 135, baseType: !549, size: 32, offset: 832)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !306, file: !209, line: 143, baseType: !820, size: 8, offset: 864)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !306, file: !209, line: 146, baseType: !480, size: 64, offset: 896)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !306, file: !209, line: 149, baseType: !401, size: 64, offset: 960)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !306, file: !209, line: 159, baseType: !740, size: 256, offset: 1024)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !306, file: !209, line: 166, baseType: !740, size: 256, offset: 1280)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !306, file: !209, line: 174, baseType: !299, size: 32, offset: 1536)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !306, file: !209, line: 177, baseType: !740, size: 256, offset: 1600)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !306, file: !209, line: 183, baseType: !323, size: 128, offset: 1856)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !306, file: !209, line: 191, baseType: !323, size: 128, offset: 1984)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !306, file: !209, line: 198, baseType: !740, size: 256, offset: 2112)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !306, file: !209, line: 205, baseType: !323, size: 128, offset: 2368)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !306, file: !209, line: 220, baseType: !820, size: 8, offset: 2496)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !306, file: !209, line: 230, baseType: !5208, size: 64, offset: 2560)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !5210, line: 91, size: 2432, elements: !5211)
!5210 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c3f5f08fd7c156883238a0e593b6d6")
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5262, !5263, !5285, !5286}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5209, file: !5210, line: 95, baseType: !305, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5209, file: !5210, line: 99, baseType: !1275, size: 192, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !5209, file: !5210, line: 106, baseType: !982, size: 320, offset: 256)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !5209, file: !5210, line: 111, baseType: !2218, size: 64, offset: 576)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5209, file: !5210, line: 127, baseType: !746, size: 64, offset: 640)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5209, file: !5210, line: 131, baseType: !1428, size: 64, offset: 704)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5209, file: !5210, line: 138, baseType: !299, size: 32, offset: 768)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5209, file: !5210, line: 142, baseType: !549, size: 32, offset: 800)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !5209, file: !5210, line: 162, baseType: !549, size: 32, offset: 832)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !5209, file: !5210, line: 171, baseType: !7, size: 32, offset: 864)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5209, file: !5210, line: 176, baseType: !7, size: 32, offset: 896)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !5209, file: !5210, line: 182, baseType: !109, size: 32, offset: 928)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !5209, file: !5210, line: 188, baseType: !109, size: 32, offset: 960)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5209, file: !5210, line: 199, baseType: !5226, size: 960, offset: 1024)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !157, line: 252, size: 960, elements: !5227)
!5227 = !{!5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !5226, file: !157, line: 258, baseType: !109, size: 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !5226, file: !157, line: 259, baseType: !369, size: 16, offset: 32)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !5226, file: !157, line: 260, baseType: !369, size: 16, offset: 48)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !5226, file: !157, line: 261, baseType: !369, size: 16, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !5226, file: !157, line: 262, baseType: !369, size: 16, offset: 80)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !5226, file: !157, line: 263, baseType: !369, size: 16, offset: 96)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !5226, file: !157, line: 264, baseType: !369, size: 16, offset: 112)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !5226, file: !157, line: 265, baseType: !369, size: 16, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !5226, file: !157, line: 266, baseType: !369, size: 16, offset: 144)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !5226, file: !157, line: 267, baseType: !369, size: 16, offset: 160)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !5226, file: !157, line: 268, baseType: !369, size: 16, offset: 176)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5226, file: !157, line: 303, baseType: !549, size: 32, offset: 192)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !5226, file: !157, line: 320, baseType: !109, size: 32, offset: 224)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !5226, file: !157, line: 321, baseType: !369, size: 16, offset: 256)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !5226, file: !157, line: 322, baseType: !369, size: 16, offset: 272)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !5226, file: !157, line: 323, baseType: !369, size: 16, offset: 288)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !5226, file: !157, line: 324, baseType: !369, size: 16, offset: 304)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !5226, file: !157, line: 325, baseType: !369, size: 16, offset: 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !5226, file: !157, line: 326, baseType: !369, size: 16, offset: 336)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !5226, file: !157, line: 327, baseType: !369, size: 16, offset: 352)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !5226, file: !157, line: 328, baseType: !369, size: 16, offset: 368)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !5226, file: !157, line: 329, baseType: !369, size: 16, offset: 384)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !5226, file: !157, line: 330, baseType: !369, size: 16, offset: 400)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !5226, file: !157, line: 331, baseType: !369, size: 16, offset: 416)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !5226, file: !157, line: 332, baseType: !369, size: 16, offset: 432)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !5226, file: !157, line: 333, baseType: !369, size: 16, offset: 448)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5226, file: !157, line: 341, baseType: !369, size: 16, offset: 464)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5226, file: !157, line: 349, baseType: !369, size: 16, offset: 480)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5226, file: !157, line: 378, baseType: !360, size: 8, offset: 496)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !5226, file: !157, line: 389, baseType: !820, size: 8, offset: 504)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5226, file: !157, line: 396, baseType: !323, size: 128, offset: 512)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5226, file: !157, line: 403, baseType: !3708, size: 256, offset: 640)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5226, file: !157, line: 411, baseType: !156, size: 32, offset: 896)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5226, file: !157, line: 418, baseType: !199, size: 32, offset: 928)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5209, file: !5210, line: 207, baseType: !820, size: 8, offset: 1984)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !5209, file: !5210, line: 212, baseType: !5264, size: 64, offset: 2048)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !5266, line: 123, size: 448, elements: !5267)
!5266 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!5267 = !{!5268, !5269, !5270, !5271, !5272, !5273}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5265, file: !5266, line: 124, baseType: !7, size: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5265, file: !5266, line: 125, baseType: !698, size: 32, offset: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !5265, file: !5266, line: 126, baseType: !323, size: 128, offset: 64)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !5265, file: !5266, line: 127, baseType: !323, size: 128, offset: 192)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5265, file: !5266, line: 128, baseType: !1308, size: 64, offset: 320)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !5265, file: !5266, line: 129, baseType: !5274, size: 64, offset: 384)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !5266, line: 132, size: 320, elements: !5276)
!5276 = !{!5277, !5278, !5283, !5284}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5275, file: !5266, line: 133, baseType: !323, size: 128)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5275, file: !5266, line: 134, baseType: !5279, size: 64, offset: 128)
!5279 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !5266, line: 116, baseType: !5280)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !5274}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !5275, file: !5266, line: 135, baseType: !5264, size: 64, offset: 192)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !5275, file: !5266, line: 137, baseType: !109, size: 32, offset: 256)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !5209, file: !5210, line: 218, baseType: !323, size: 128, offset: 2112)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !5209, file: !5210, line: 225, baseType: !1275, size: 192, offset: 2240)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !306, file: !209, line: 237, baseType: !336, size: 32, offset: 2624)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !306, file: !209, line: 242, baseType: !336, size: 32, offset: 2656)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !306, file: !209, line: 265, baseType: !549, size: 32, offset: 2688)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !306, file: !209, line: 268, baseType: !323, size: 128, offset: 2752)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !306, file: !209, line: 276, baseType: !336, size: 32, offset: 2880)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !306, file: !209, line: 279, baseType: !7, size: 32, offset: 2912)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !306, file: !209, line: 282, baseType: !5294, size: 8704, offset: 2944)
!5294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5295, line: 375, size: 8704, elements: !5296)
!5295 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5296 = !{!5297, !5298, !5304, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5294, file: !5295, line: 386, baseType: !740, size: 256)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5294, file: !5295, line: 396, baseType: !5299, size: 448, offset: 256)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5300, line: 85, size: 448, elements: !5301)
!5300 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5301 = !{!5302, !5303}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5299, file: !5300, line: 89, baseType: !5025, size: 320)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5299, file: !5300, line: 95, baseType: !323, size: 128, offset: 320)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5294, file: !5295, line: 406, baseType: !5305, size: 64, offset: 704)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5300, line: 46, size: 512, elements: !5307)
!5307 = !{!5308, !5309, !5311, !5314, !5315, !5316}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5306, file: !5300, line: 48, baseType: !5031, size: 192)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5306, file: !5300, line: 55, baseType: !5310, size: 64, offset: 192)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5306, file: !5300, line: 61, baseType: !5312, size: 32, offset: 256)
!5312 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5313, line: 27, baseType: !549)
!5313 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5306, file: !5300, line: 66, baseType: !323, size: 128, offset: 320)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5306, file: !5300, line: 71, baseType: !820, size: 8, offset: 448)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5306, file: !5300, line: 74, baseType: !820, size: 8, offset: 456)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5294, file: !5295, line: 414, baseType: !740, size: 256, offset: 768)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5294, file: !5295, line: 422, baseType: !1293, size: 192, offset: 1024)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5294, file: !5295, line: 430, baseType: !1293, size: 192, offset: 1216)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5294, file: !5295, line: 433, baseType: !740, size: 256, offset: 1408)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5294, file: !5295, line: 435, baseType: !109, size: 32, offset: 1664)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5294, file: !5295, line: 437, baseType: !323, size: 128, offset: 1728)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5294, file: !5295, line: 443, baseType: !336, size: 32, offset: 1856)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5294, file: !5295, line: 448, baseType: !109, size: 32, offset: 1888)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5294, file: !5295, line: 452, baseType: !5326, size: 128, offset: 1920)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1294, line: 246, size: 128, elements: !5327)
!5327 = !{!5328}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5326, file: !1294, line: 247, baseType: !1297, size: 128)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5294, file: !5295, line: 460, baseType: !323, size: 128, offset: 2048)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5294, file: !5295, line: 470, baseType: !2946, size: 64, offset: 2176)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5294, file: !5295, line: 474, baseType: !1000, size: 256, offset: 2240)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5294, file: !5295, line: 482, baseType: !109, size: 32, offset: 2496)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5294, file: !5295, line: 490, baseType: !323, size: 128, offset: 2560)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5294, file: !5295, line: 499, baseType: !109, size: 32, offset: 2688)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5294, file: !5295, line: 506, baseType: !323, size: 128, offset: 2752)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5294, file: !5295, line: 514, baseType: !109, size: 32, offset: 2880)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5294, file: !5295, line: 521, baseType: !323, size: 128, offset: 2944)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5294, file: !5295, line: 530, baseType: !323, size: 128, offset: 3072)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5294, file: !5295, line: 539, baseType: !323, size: 128, offset: 3200)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5294, file: !5295, line: 541, baseType: !109, size: 32, offset: 3328)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5294, file: !5295, line: 541, baseType: !109, size: 32, offset: 3360)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5294, file: !5295, line: 542, baseType: !109, size: 32, offset: 3392)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5294, file: !5295, line: 542, baseType: !109, size: 32, offset: 3424)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5294, file: !5295, line: 543, baseType: !5345, size: 64, offset: 3456)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5347)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5295, line: 47, size: 576, elements: !5348)
!5348 = !{!5349, !5468, !5472, !5473, !5479, !5486, !5490, !5494, !5498}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5347, file: !5295, line: 83, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!5353, !305, !4803, !5453}
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5355, line: 117, size: 1600, elements: !5356)
!5355 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5cd71656f00b65d2ac7e671422852fe")
!5356 = !{!5357, !5358, !5359, !5394, !5395, !5417, !5441, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5354, file: !5355, line: 121, baseType: !305, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5354, file: !5355, line: 126, baseType: !323, size: 128, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5354, file: !5355, line: 131, baseType: !5360, size: 256, offset: 192)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5361, line: 55, size: 256, elements: !5362)
!5361 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5362 = !{!5363, !5364, !5365, !5388, !5389}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5360, file: !5361, line: 56, baseType: !1967, size: 32)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5360, file: !5361, line: 57, baseType: !1967, size: 32, offset: 32)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5360, file: !5361, line: 58, baseType: !5366, size: 64, offset: 64)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5361, line: 67, size: 3136, elements: !5368)
!5368 = !{!5369, !5370, !5386}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5367, file: !5361, line: 73, baseType: !109, size: 32)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5367, file: !5361, line: 82, baseType: !5371, size: 1536, offset: 64)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5372, size: 1536, elements: !5384)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5374, line: 80, size: 960, elements: !5375)
!5374 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5375 = !{!5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5373, file: !5374, line: 84, baseType: !323, size: 128)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5373, file: !5374, line: 89, baseType: !5360, size: 256, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5373, file: !5374, line: 166, baseType: !1967, size: 32, offset: 384)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5373, file: !5374, line: 171, baseType: !3708, size: 256, offset: 416)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5373, file: !5374, line: 176, baseType: !1967, size: 32, offset: 672)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5373, file: !5374, line: 184, baseType: !5130, size: 64, offset: 704)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5373, file: !5374, line: 189, baseType: !305, size: 64, offset: 768)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5373, file: !5374, line: 197, baseType: !323, size: 128, offset: 832)
!5384 = !{!5385}
!5385 = !DISubrange(count: 24)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5367, file: !5361, line: 106, baseType: !5387, size: 1536, offset: 1600)
!5387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5131, size: 1536, elements: !5384)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5360, file: !5361, line: 59, baseType: !291, size: 32, offset: 128)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5360, file: !5361, line: 60, baseType: !5390, size: 64, offset: 192)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !5393}
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5354, file: !5355, line: 136, baseType: !2095, size: 128, offset: 448)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5354, file: !5355, line: 141, baseType: !5396, size: 64, offset: 576)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5398)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5399, line: 61, size: 192, elements: !5400)
!5399 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!5400 = !{!5401, !5402, !5403, !5404, !5410, !5411, !5412, !5413, !5414, !5415, !5416}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5398, file: !5399, line: 63, baseType: !549, size: 32)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5398, file: !5399, line: 72, baseType: !360, size: 8, offset: 32)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !5398, file: !5399, line: 75, baseType: !360, size: 8, offset: 40)
!5404 = !DIDerivedType(tag: DW_TAG_member, scope: !5398, file: !5399, line: 77, baseType: !5405, size: 32, offset: 48)
!5405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5398, file: !5399, line: 77, size: 32, elements: !5406)
!5406 = !{!5407, !5409}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !5405, file: !5399, line: 86, baseType: !5408, size: 32)
!5408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 32, elements: !970)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !5405, file: !5399, line: 112, baseType: !5408, size: 32)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !5398, file: !5399, line: 121, baseType: !5408, size: 32, offset: 80)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !5398, file: !5399, line: 129, baseType: !5408, size: 32, offset: 112)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !5398, file: !5399, line: 132, baseType: !360, size: 8, offset: 144)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !5398, file: !5399, line: 134, baseType: !360, size: 8, offset: 152)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !5398, file: !5399, line: 137, baseType: !820, size: 8, offset: 160)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !5398, file: !5399, line: 140, baseType: !820, size: 8, offset: 168)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !5398, file: !5399, line: 143, baseType: !820, size: 8, offset: 176)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5354, file: !5355, line: 145, baseType: !5418, size: 64, offset: 640)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5420)
!5420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !5355, line: 42, size: 192, elements: !5421)
!5421 = !{!5422, !5426, !5430}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5420, file: !5355, line: 53, baseType: !5423, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !5353}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !5420, file: !5355, line: 73, baseType: !5427, size: 64, offset: 64)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!109, !5353, !4803, !812}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !5420, file: !5355, line: 97, baseType: !5431, size: 64, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!109, !5353, !4803, !7, !7, !5434, !7}
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4838, line: 96, size: 64, elements: !5436)
!5436 = !{!5437, !5438, !5439, !5440}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5435, file: !4838, line: 97, baseType: !371, size: 16)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5435, file: !4838, line: 98, baseType: !371, size: 16, offset: 16)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5435, file: !4838, line: 99, baseType: !371, size: 16, offset: 32)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5435, file: !4838, line: 100, baseType: !371, size: 16, offset: 48)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5354, file: !5355, line: 150, baseType: !5442, size: 128, offset: 704)
!5442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !970)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5354, file: !5355, line: 168, baseType: !5442, size: 128, offset: 832)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5354, file: !5355, line: 175, baseType: !5131, size: 64, offset: 960)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5354, file: !5355, line: 180, baseType: !7, size: 32, offset: 1024)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5354, file: !5355, line: 185, baseType: !7, size: 32, offset: 1056)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5354, file: !5355, line: 190, baseType: !109, size: 32, offset: 1088)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !5354, file: !5355, line: 196, baseType: !109, size: 32, offset: 1120)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !5354, file: !5355, line: 202, baseType: !109, size: 32, offset: 1152)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !5354, file: !5355, line: 206, baseType: !323, size: 128, offset: 1216)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5354, file: !5355, line: 213, baseType: !5452, size: 256, offset: 1344)
!5452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !970)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5455)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !5117, line: 703, size: 832, elements: !5456)
!5456 = !{!5457, !5458, !5459, !5460, !5461, !5462, !5464, !5465, !5466}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5455, file: !5117, line: 705, baseType: !279, size: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5455, file: !5117, line: 707, baseType: !279, size: 32, offset: 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5455, file: !5117, line: 709, baseType: !279, size: 32, offset: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5455, file: !5117, line: 714, baseType: !279, size: 32, offset: 96)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5455, file: !5117, line: 719, baseType: !279, size: 32, offset: 128)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5455, file: !5117, line: 725, baseType: !5463, size: 128, offset: 160)
!5463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, elements: !970)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5455, file: !5117, line: 727, baseType: !5463, size: 128, offset: 288)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5455, file: !5117, line: 729, baseType: !5463, size: 128, offset: 416)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5455, file: !5117, line: 735, baseType: !5467, size: 256, offset: 576)
!5467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 256, elements: !970)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5347, file: !5295, line: 98, baseType: !5469, size: 64, offset: 64)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!5396, !5453}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5347, file: !5295, line: 114, baseType: !4877, size: 64, offset: 128)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5347, file: !5295, line: 124, baseType: !5474, size: 64, offset: 192)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!156, !305, !5477}
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5226)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5347, file: !5295, line: 201, baseType: !5480, size: 64, offset: 256)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!109, !305, !5483}
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5485, line: 921, flags: DIFlagFwdDecl)
!5485 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5347, file: !5295, line: 283, baseType: !5487, size: 64, offset: 320)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!109, !305, !5483, !820}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5347, file: !5295, line: 302, baseType: !5491, size: 64, offset: 384)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!5483, !305}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5347, file: !5295, line: 323, baseType: !5495, size: 64, offset: 448)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{null, !5483}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5347, file: !5295, line: 338, baseType: !5495, size: 64, offset: 512)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5294, file: !5295, line: 546, baseType: !820, size: 8, offset: 3520)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5294, file: !5295, line: 547, baseType: !820, size: 8, offset: 3528)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5294, file: !5295, line: 548, baseType: !820, size: 8, offset: 3536)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5294, file: !5295, line: 549, baseType: !1057, size: 704, offset: 3584)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5294, file: !5295, line: 557, baseType: !740, size: 256, offset: 4288)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5294, file: !5295, line: 565, baseType: !323, size: 128, offset: 4544)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5294, file: !5295, line: 573, baseType: !5372, size: 64, offset: 4672)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5294, file: !5295, line: 578, baseType: !5372, size: 64, offset: 4736)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5294, file: !5295, line: 583, baseType: !5372, size: 64, offset: 4800)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5294, file: !5295, line: 589, baseType: !5372, size: 64, offset: 4864)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5294, file: !5295, line: 594, baseType: !5372, size: 64, offset: 4928)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5294, file: !5295, line: 599, baseType: !5372, size: 64, offset: 4992)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5294, file: !5295, line: 604, baseType: !5372, size: 64, offset: 5056)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5294, file: !5295, line: 609, baseType: !5372, size: 64, offset: 5120)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5294, file: !5295, line: 614, baseType: !5372, size: 64, offset: 5184)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5294, file: !5295, line: 619, baseType: !5372, size: 64, offset: 5248)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5294, file: !5295, line: 624, baseType: !5372, size: 64, offset: 5312)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5294, file: !5295, line: 629, baseType: !5372, size: 64, offset: 5376)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5294, file: !5295, line: 634, baseType: !5372, size: 64, offset: 5440)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5294, file: !5295, line: 639, baseType: !5372, size: 64, offset: 5504)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5294, file: !5295, line: 644, baseType: !5372, size: 64, offset: 5568)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5294, file: !5295, line: 649, baseType: !5372, size: 64, offset: 5632)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5294, file: !5295, line: 655, baseType: !5372, size: 64, offset: 5696)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5294, file: !5295, line: 660, baseType: !5372, size: 64, offset: 5760)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5294, file: !5295, line: 669, baseType: !5372, size: 64, offset: 5824)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5294, file: !5295, line: 675, baseType: !5372, size: 64, offset: 5888)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5294, file: !5295, line: 681, baseType: !5372, size: 64, offset: 5952)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5294, file: !5295, line: 686, baseType: !5372, size: 64, offset: 6016)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5294, file: !5295, line: 692, baseType: !5372, size: 64, offset: 6080)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5294, file: !5295, line: 697, baseType: !5372, size: 64, offset: 6144)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5294, file: !5295, line: 703, baseType: !5372, size: 64, offset: 6208)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5294, file: !5295, line: 709, baseType: !5372, size: 64, offset: 6272)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5294, file: !5295, line: 714, baseType: !5372, size: 64, offset: 6336)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5294, file: !5295, line: 722, baseType: !5372, size: 64, offset: 6400)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5294, file: !5295, line: 728, baseType: !5372, size: 64, offset: 6464)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5294, file: !5295, line: 734, baseType: !5372, size: 64, offset: 6528)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5294, file: !5295, line: 739, baseType: !5372, size: 64, offset: 6592)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5294, file: !5295, line: 744, baseType: !5372, size: 64, offset: 6656)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5294, file: !5295, line: 749, baseType: !5372, size: 64, offset: 6720)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5294, file: !5295, line: 754, baseType: !5372, size: 64, offset: 6784)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5294, file: !5295, line: 759, baseType: !5372, size: 64, offset: 6848)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5294, file: !5295, line: 764, baseType: !5372, size: 64, offset: 6912)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5294, file: !5295, line: 769, baseType: !5372, size: 64, offset: 6976)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5294, file: !5295, line: 774, baseType: !5372, size: 64, offset: 7040)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5294, file: !5295, line: 778, baseType: !5372, size: 64, offset: 7104)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5294, file: !5295, line: 784, baseType: !5372, size: 64, offset: 7168)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5294, file: !5295, line: 789, baseType: !5372, size: 64, offset: 7232)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5294, file: !5295, line: 794, baseType: !5372, size: 64, offset: 7296)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5294, file: !5295, line: 799, baseType: !5372, size: 64, offset: 7360)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5294, file: !5295, line: 804, baseType: !5372, size: 64, offset: 7424)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5294, file: !5295, line: 810, baseType: !5372, size: 64, offset: 7488)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5294, file: !5295, line: 816, baseType: !5372, size: 64, offset: 7552)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5294, file: !5295, line: 821, baseType: !5372, size: 64, offset: 7616)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5294, file: !5295, line: 827, baseType: !5372, size: 64, offset: 7680)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5294, file: !5295, line: 832, baseType: !5372, size: 64, offset: 7744)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5294, file: !5295, line: 839, baseType: !5372, size: 64, offset: 7808)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5294, file: !5295, line: 846, baseType: !5372, size: 64, offset: 7872)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5294, file: !5295, line: 853, baseType: !5372, size: 64, offset: 7936)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5294, file: !5295, line: 861, baseType: !5372, size: 64, offset: 8000)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5294, file: !5295, line: 869, baseType: !5372, size: 64, offset: 8064)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5294, file: !5295, line: 876, baseType: !5372, size: 64, offset: 8128)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5294, file: !5295, line: 882, baseType: !5372, size: 64, offset: 8192)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5294, file: !5295, line: 888, baseType: !5372, size: 64, offset: 8256)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5294, file: !5295, line: 891, baseType: !1967, size: 32, offset: 8320)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5294, file: !5295, line: 891, baseType: !1967, size: 32, offset: 8352)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5294, file: !5295, line: 899, baseType: !820, size: 8, offset: 8384)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5294, file: !5295, line: 913, baseType: !820, size: 8, offset: 8392)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5294, file: !5295, line: 919, baseType: !820, size: 8, offset: 8400)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5294, file: !5295, line: 929, baseType: !820, size: 8, offset: 8408)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5294, file: !5295, line: 937, baseType: !820, size: 8, offset: 8416)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5294, file: !5295, line: 943, baseType: !5372, size: 64, offset: 8448)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5294, file: !5295, line: 946, baseType: !1967, size: 32, offset: 8512)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5294, file: !5295, line: 946, baseType: !1967, size: 32, offset: 8544)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5294, file: !5295, line: 955, baseType: !5483, size: 64, offset: 8576)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5294, file: !5295, line: 957, baseType: !5574, size: 64, offset: 8640)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5576)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5577, line: 1454, size: 128, elements: !5578)
!5577 = !DIFile(filename: "./include/drm/drm_modeset_helper_vtables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c76c951af964ace4726c40f2de2c86a8")
!5578 = !{!5579, !5580}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_tail", scope: !5576, file: !5577, line: 1490, baseType: !5495, size: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_setup", scope: !5576, file: !5577, line: 1511, baseType: !5581, size: 64, offset: 64)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!109, !5483}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !306, file: !209, line: 285, baseType: !740, size: 256, offset: 11648)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !306, file: !209, line: 288, baseType: !1293, size: 192, offset: 11904)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !306, file: !209, line: 291, baseType: !5587, size: 64, offset: 12096)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !5589, line: 59, size: 1984, elements: !5590)
!5589 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!5590 = !{!5591, !5592}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5588, file: !5589, line: 60, baseType: !1244, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !5588, file: !5589, line: 61, baseType: !5593, size: 1920, offset: 64)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !5594, line: 190, size: 1920, elements: !5595)
!5594 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!5595 = !{!5596, !5618, !5619, !5620, !5621, !5622, !5623}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !5593, file: !5594, line: 200, baseType: !5597, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{null, !5600, !278, !4597, !4597}
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5602)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !5594, line: 157, size: 1344, elements: !5603)
!5603 = !{!5604, !5605, !5606, !5607, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5602, file: !5594, line: 159, baseType: !278, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5602, file: !5594, line: 161, baseType: !552, size: 64, offset: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5602, file: !5594, line: 163, baseType: !552, size: 64, offset: 128)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5602, file: !5594, line: 165, baseType: !5608, size: 64, offset: 192)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !5602, file: !5594, line: 166, baseType: !323, size: 128, offset: 256)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5602, file: !5594, line: 167, baseType: !323, size: 128, offset: 384)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5602, file: !5594, line: 168, baseType: !852, size: 192, align: 64, offset: 512)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !5602, file: !5594, line: 169, baseType: !852, size: 192, align: 64, offset: 704)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !5602, file: !5594, line: 170, baseType: !852, size: 192, align: 64, offset: 896)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !5602, file: !5594, line: 171, baseType: !552, size: 64, offset: 1088)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !5602, file: !5594, line: 172, baseType: !552, size: 64, offset: 1152)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !5602, file: !5594, line: 173, baseType: !552, size: 64, offset: 1216)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5602, file: !5594, line: 174, baseType: !278, size: 64, offset: 1280)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5593, file: !5594, line: 206, baseType: !323, size: 128, offset: 64)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !5593, file: !5594, line: 209, baseType: !5602, size: 1344, offset: 192)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !5593, file: !5594, line: 211, baseType: !1479, size: 128, offset: 1536)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !5593, file: !5594, line: 212, baseType: !1479, size: 128, offset: 1664)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !5593, file: !5594, line: 213, baseType: !1482, size: 64, offset: 1792)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !5593, file: !5594, line: 215, baseType: !278, size: 64, offset: 1856)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !306, file: !209, line: 294, baseType: !5625, size: 64, offset: 12160)
!5625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5626, size: 64)
!5626 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !209, line: 17, flags: DIFlagFwdDecl)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !306, file: !209, line: 304, baseType: !208, size: 32, offset: 12224)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !306, file: !209, line: 312, baseType: !5629, size: 64, offset: 12288)
!5629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5630, size: 64)
!5630 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !209, line: 18, flags: DIFlagFwdDecl)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !306, file: !209, line: 319, baseType: !740, size: 256, offset: 12352)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !306, file: !209, line: 327, baseType: !323, size: 128, offset: 12608)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !288, file: !216, line: 302, baseType: !1623, size: 64, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !288, file: !216, line: 314, baseType: !5635, size: 1536, offset: 192)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !5589, line: 52, size: 1536, elements: !5636)
!5636 = !{!5637, !5638, !5639, !5640}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5635, file: !5589, line: 53, baseType: !1244, size: 64)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !5635, file: !5589, line: 54, baseType: !5602, size: 1344, offset: 64)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !5635, file: !5589, line: 55, baseType: !1482, size: 64, offset: 1408)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !5635, file: !5589, line: 56, baseType: !275, size: 64, offset: 1472)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !288, file: !216, line: 322, baseType: !448, size: 64, offset: 1728)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !216, line: 331, baseType: !109, size: 32, offset: 1792)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !288, file: !216, line: 344, baseType: !4908, size: 64, offset: 1856)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !288, file: !216, line: 364, baseType: !4925, size: 64, offset: 1920)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !288, file: !216, line: 373, baseType: !5020, size: 64, offset: 1984)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !288, file: !216, line: 382, baseType: !5021, size: 384, offset: 2048)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !288, file: !216, line: 398, baseType: !5648, size: 128, offset: 2432)
!5648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !216, line: 392, size: 128, elements: !5649)
!5649 = !{!5650}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5648, file: !216, line: 393, baseType: !323, size: 128)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !288, file: !216, line: 409, baseType: !5652, size: 64, offset: 2560)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5654)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !216, line: 69, size: 896, elements: !5655)
!5655 = !{!5656, !5660, !5664, !5668, !5674, !5678, !5682, !5683, !5687, !5691, !5695, !5699, !5700, !5704}
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5654, file: !216, line: 77, baseType: !5657, size: 64)
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5658, size: 64)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{null, !287}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5654, file: !216, line: 86, baseType: !5661, size: 64, offset: 64)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = !DISubroutineType(types: !5663)
!5663 = !{!109, !287, !4803}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5654, file: !216, line: 95, baseType: !5665, size: 64, offset: 128)
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{null, !287, !4803}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !5654, file: !216, line: 110, baseType: !5669, size: 64, offset: 192)
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{null, !5136, !7, !5672}
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !5654, file: !216, line: 121, baseType: !5675, size: 64, offset: 256)
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!4908, !287, !109}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5654, file: !216, line: 130, baseType: !5679, size: 64, offset: 320)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = !DISubroutineType(types: !5681)
!5681 = !{!109, !287}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !5654, file: !216, line: 139, baseType: !5657, size: 64, offset: 384)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !5654, file: !216, line: 153, baseType: !5684, size: 64, offset: 448)
!5684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5685, size: 64)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!4932, !287}
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !5654, file: !216, line: 163, baseType: !5688, size: 64, offset: 512)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!109, !287, !4997}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !5654, file: !216, line: 173, baseType: !5692, size: 64, offset: 576)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{null, !287, !4997}
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5654, file: !216, line: 186, baseType: !5696, size: 64, offset: 640)
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!109, !287, !2653}
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !5654, file: !216, line: 196, baseType: !5679, size: 64, offset: 704)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5654, file: !216, line: 209, baseType: !5701, size: 64, offset: 768)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!215, !287}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5654, file: !216, line: 218, baseType: !2696, size: 64, offset: 832)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !288, file: !216, line: 416, baseType: !323, size: 128, offset: 2624)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !288, file: !216, line: 423, baseType: !5707, size: 64, offset: 2752)
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !216, line: 230, size: 256, elements: !5709)
!5709 = !{!5710, !5712, !5713}
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5708, file: !216, line: 238, baseType: !5711, size: 64)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5708, file: !216, line: 246, baseType: !437, size: 64, offset: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5708, file: !216, line: 253, baseType: !323, size: 128, offset: 128)
!5714 = !{!5715, !5716, !5717, !5718, !5721, !5724, !5725, !5727, !5731, !5734, !5737, !5738, !5740}
!5715 = !DILocalVariable(name: "fb", arg: 1, scope: !284, file: !3, line: 53, type: !5353)
!5716 = !DILocalVariable(name: "plane", arg: 2, scope: !284, file: !3, line: 54, type: !7)
!5717 = !DILocalVariable(name: "dev", scope: !284, file: !3, line: 56, type: !305)
!5718 = !DILocalVariable(name: "__ret_do_once", scope: !5719, file: !3, line: 58, type: !820)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 58, column: 6)
!5720 = distinct !DILexicalBlock(scope: !284, file: !3, line: 58, column: 6)
!5721 = !DILocalVariable(name: "__ret_cond", scope: !5722, file: !3, line: 58, type: !820)
!5722 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 58, column: 6)
!5723 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 58, column: 6)
!5724 = !DILocalVariable(name: "__ret_once", scope: !5722, file: !3, line: 58, type: !820)
!5725 = !DILocalVariable(name: "__ret_warn_on", scope: !5726, file: !3, line: 58, type: !109)
!5726 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 58, column: 6)
!5727 = !DILocalVariable(name: "__flags", scope: !5728, file: !3, line: 58, type: !109)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 58, column: 6)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 58, column: 6)
!5730 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 58, column: 6)
!5731 = !DILocalVariable(name: "__ret_do_once", scope: !5732, file: !3, line: 60, type: !820)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 60, column: 11)
!5733 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 60, column: 11)
!5734 = !DILocalVariable(name: "__ret_cond", scope: !5735, file: !3, line: 60, type: !820)
!5735 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 60, column: 11)
!5736 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 60, column: 11)
!5737 = !DILocalVariable(name: "__ret_once", scope: !5735, file: !3, line: 60, type: !820)
!5738 = !DILocalVariable(name: "__ret_warn_on", scope: !5739, file: !3, line: 60, type: !109)
!5739 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 60, column: 11)
!5740 = !DILocalVariable(name: "__flags", scope: !5741, file: !3, line: 60, type: !109)
!5741 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 60, column: 11)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 60, column: 11)
!5743 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 60, column: 11)
!5744 = !DIGlobalVariableExpression(var: !5745, expr: !DIExpression())
!5745 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !5746, isLocal: true, isDefinition: true)
!5746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 80, elements: !5747)
!5747 = !{!5748}
!5748 = !DISubrange(count: 10)
!5749 = !DIGlobalVariableExpression(var: !5750, expr: !DIExpression())
!5750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !5751, isLocal: true, isDefinition: true)
!5751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1448, elements: !5752)
!5752 = !{!5753}
!5753 = !DISubrange(count: 181)
!5754 = !DIGlobalVariableExpression(var: !5755, expr: !DIExpression())
!5755 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !5756, isLocal: true, isDefinition: true)
!5756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 360, elements: !5757)
!5757 = !{!5758}
!5758 = !DISubrange(count: 45)
!5759 = !DIGlobalVariableExpression(var: !5760, expr: !DIExpression())
!5760 = distinct !DIGlobalVariable(name: "__already_done", scope: !284, file: !3, line: 60, type: !820, isLocal: true, isDefinition: true)
!5761 = !DIGlobalVariableExpression(var: !5762, expr: !DIExpression())
!5762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !5763, isLocal: true, isDefinition: true)
!5763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 272, elements: !5764)
!5764 = !{!5765}
!5765 = !DISubrange(count: 34)
!5766 = !DIGlobalVariableExpression(var: !5767, expr: !DIExpression())
!5767 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_get_obj317", scope: !2, file: !3, line: 65, type: !275, isLocal: true, isDefinition: true)
!5768 = !DIGlobalVariableExpression(var: !5769, expr: !DIExpression())
!5769 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_destroy318", scope: !2, file: !3, line: 107, type: !275, isLocal: true, isDefinition: true)
!5770 = !DIGlobalVariableExpression(var: !5771, expr: !DIExpression())
!5771 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_create_handle319", scope: !2, file: !3, line: 127, type: !275, isLocal: true, isDefinition: true)
!5772 = !DIGlobalVariableExpression(var: !5773, expr: !DIExpression())
!5773 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !5774, isLocal: true, isDefinition: true)
!5774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 240, elements: !5775)
!5775 = !{!5776}
!5776 = !DISubrange(count: 30)
!5777 = !DIGlobalVariableExpression(var: !5778, expr: !DIExpression())
!5778 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !5779, isLocal: true, isDefinition: true)
!5779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 400, elements: !5780)
!5780 = !{!5781}
!5781 = !DISubrange(count: 50)
!5782 = !DIGlobalVariableExpression(var: !5783, expr: !DIExpression())
!5783 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !5784, isLocal: true, isDefinition: true)
!5784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 232, elements: !5785)
!5785 = !{!5786}
!5786 = !DISubrange(count: 29)
!5787 = !DIGlobalVariableExpression(var: !5788, expr: !DIExpression())
!5788 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !5789, isLocal: true, isDefinition: true)
!5789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 536, elements: !5790)
!5790 = !{!5791}
!5791 = !DISubrange(count: 67)
!5792 = !DIGlobalVariableExpression(var: !5793, expr: !DIExpression())
!5793 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_init_with_funcs320", scope: !2, file: !3, line: 215, type: !275, isLocal: true, isDefinition: true)
!5794 = !DIGlobalVariableExpression(var: !5795, expr: !DIExpression())
!5795 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_create_with_funcs321", scope: !2, file: !3, line: 253, type: !275, isLocal: true, isDefinition: true)
!5796 = !DIGlobalVariableExpression(var: !5797, expr: !DIExpression())
!5797 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_create322", scope: !2, file: !3, line: 289, type: !275, isLocal: true, isDefinition: true)
!5798 = !DIGlobalVariableExpression(var: !5799, expr: !DIExpression())
!5799 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_create_with_dirty323", scope: !2, file: !3, line: 327, type: !275, isLocal: true, isDefinition: true)
!5800 = !DIGlobalVariableExpression(var: !5801, expr: !DIExpression())
!5801 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_vmap324", scope: !2, file: !3, line: 391, type: !275, isLocal: true, isDefinition: true)
!5802 = !DIGlobalVariableExpression(var: !5803, expr: !DIExpression())
!5803 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_vunmap325", scope: !2, file: !3, line: 417, type: !275, isLocal: true, isDefinition: true)
!5804 = !DIGlobalVariableExpression(var: !5805, expr: !DIExpression())
!5805 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_begin_cpu_access326", scope: !2, file: !3, line: 482, type: !275, isLocal: true, isDefinition: true)
!5806 = !DIGlobalVariableExpression(var: !5807, expr: !DIExpression())
!5807 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_end_cpu_access327", scope: !2, file: !3, line: 499, type: !275, isLocal: true, isDefinition: true)
!5808 = !DIGlobalVariableExpression(var: !5809, expr: !DIExpression())
!5809 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_gem_fb_afbc_init328", scope: !2, file: !3, line: 619, type: !275, isLocal: true, isDefinition: true)
!5810 = !DIGlobalVariableExpression(var: !5811, expr: !DIExpression())
!5811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !5812, isLocal: true, isDefinition: true)
!5812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 368, elements: !5813)
!5813 = !{!5814}
!5814 = !DISubrange(count: 46)
!5815 = !DIGlobalVariableExpression(var: !5816, expr: !DIExpression())
!5816 = distinct !DIGlobalVariable(scope: null, file: !265, line: 480, type: !5817, isLocal: true, isDefinition: true)
!5817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 168, elements: !5818)
!5818 = !{!5819}
!5819 = !DISubrange(count: 21)
!5820 = !DIGlobalVariableExpression(var: !5821, expr: !DIExpression())
!5821 = distinct !DIGlobalVariable(name: "drm_gem_fb_funcs", scope: !2, file: !3, line: 255, type: !5419, isLocal: true, isDefinition: true)
!5822 = !DIGlobalVariableExpression(var: !5823, expr: !DIExpression())
!5823 = distinct !DIGlobalVariable(name: "drm_gem_fb_funcs_dirtyfb", scope: !2, file: !3, line: 291, type: !5419, isLocal: true, isDefinition: true)
!5824 = !DIGlobalVariableExpression(var: !5825, expr: !DIExpression())
!5825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !5826, isLocal: true, isDefinition: true)
!5826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 456, elements: !5827)
!5827 = !{!5828}
!5828 = !DISubrange(count: 57)
!5829 = !DIGlobalVariableExpression(var: !5830, expr: !DIExpression())
!5830 = distinct !DIGlobalVariable(scope: null, file: !3, line: 543, type: !5831, isLocal: true, isDefinition: true)
!5831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 344, elements: !5832)
!5832 = !{!5833}
!5833 = !DISubrange(count: 43)
!5834 = !DIGlobalVariableExpression(var: !5835, expr: !DIExpression())
!5835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 565, type: !5836, isLocal: true, isDefinition: true)
!5836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 224, elements: !5837)
!5837 = !{!5838}
!5838 = !DISubrange(count: 28)
!5839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 264, elements: !5840)
!5840 = !{!5841}
!5841 = !DISubrange(count: 33)
!5842 = !{i32 7, !"Dwarf Version", i32 5}
!5843 = !{i32 2, !"Debug Info Version", i32 3}
!5844 = !{i32 1, !"wchar_size", i32 2}
!5845 = !{i32 8, !"cf-protection-branch", i32 1}
!5846 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5847 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5848 = !{i32 1, !"Code Model", i32 2}
!5849 = !{i32 1, !"override-stack-alignment", i32 8}
!5850 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5851 = !DILocation(line: 53, column: 67, scope: !284)
!5852 = !DILocation(line: 54, column: 21, scope: !284)
!5853 = !DILocation(line: 56, column: 2, scope: !284)
!5854 = !DILocation(line: 56, column: 21, scope: !284)
!5855 = !DILocation(line: 56, column: 27, scope: !284)
!5856 = !DILocation(line: 56, column: 31, scope: !284)
!5857 = !DILocation(line: 58, column: 6, scope: !5719)
!5858 = !DILocation(line: 58, column: 6, scope: !5722)
!5859 = !{i8 0, i8 2}
!5860 = !DILocation(line: 58, column: 6, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 58, column: 6)
!5862 = !DILocation(line: 0, scope: !5861)
!5863 = !DILocation(line: 58, column: 6, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 58, column: 6)
!5865 = !DILocation(line: 58, column: 6, scope: !5723)
!5866 = !DILocation(line: 58, column: 6, scope: !5726)
!5867 = !DILocation(line: 58, column: 6, scope: !5730)
!5868 = !DILocation(line: 58, column: 6, scope: !5729)
!5869 = !DILocation(line: 58, column: 6, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 58, column: 6)
!5871 = !DILocation(line: 58, column: 6, scope: !5728)
!5872 = !DILocation(line: 58, column: 6, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 58, column: 6)
!5874 = !DILocation(line: 58, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 58, column: 6)
!5876 = !{i64 2155959655, i64 2155959684, i64 2155959730, i64 2155959788, i64 2155959842, i64 2155959896, i64 2155959951, i64 2155959982, i64 2155960290, i64 2155960296, i64 2155960343, i64 2155960366, i64 2155960392}
!5877 = !DILocation(line: 58, column: 6, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 58, column: 6)
!5879 = !DILocation(line: 58, column: 6, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 58, column: 6)
!5881 = !DILocation(line: 58, column: 6, scope: !5720)
!5882 = !DILocation(line: 58, column: 6, scope: !284)
!5883 = !DILocation(line: 59, column: 3, scope: !5720)
!5884 = !DILocation(line: 60, column: 11, scope: !5732)
!5885 = !DILocation(line: 60, column: 11, scope: !5735)
!5886 = !DILocation(line: 60, column: 11, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 60, column: 11)
!5888 = !DILocation(line: 0, scope: !5887)
!5889 = !DILocation(line: 60, column: 11, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 60, column: 11)
!5891 = !DILocation(line: 60, column: 11, scope: !5736)
!5892 = !DILocation(line: 60, column: 11, scope: !5739)
!5893 = !DILocation(line: 60, column: 11, scope: !5743)
!5894 = !DILocation(line: 60, column: 11, scope: !5742)
!5895 = !DILocation(line: 60, column: 11, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 60, column: 11)
!5897 = !DILocation(line: 60, column: 11, scope: !5741)
!5898 = !DILocation(line: 60, column: 11, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 60, column: 11)
!5900 = !DILocation(line: 60, column: 11, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 60, column: 11)
!5902 = !{i64 2155963109, i64 2155963138, i64 2155963184, i64 2155963242, i64 2155963296, i64 2155963350, i64 2155963405, i64 2155963436, i64 2155963744, i64 2155963750, i64 2155963797, i64 2155963820, i64 2155963846}
!5903 = !DILocation(line: 60, column: 11, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 60, column: 11)
!5905 = !DILocation(line: 60, column: 11, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 60, column: 11)
!5907 = !DILocation(line: 60, column: 11, scope: !5733)
!5908 = !DILocation(line: 60, column: 11, scope: !5720)
!5909 = !DILocation(line: 61, column: 3, scope: !5733)
!5910 = !DILocation(line: 63, column: 9, scope: !284)
!5911 = !DILocation(line: 63, column: 13, scope: !284)
!5912 = !DILocation(line: 63, column: 17, scope: !284)
!5913 = !DILocation(line: 63, column: 2, scope: !284)
!5914 = !DILocation(line: 64, column: 1, scope: !284)
!5915 = !DISubprogram(name: "__warn_printk", scope: !890, file: !890, line: 93, type: !5916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{null, !319, null}
!5918 = !DISubprogram(name: "dev_driver_string", scope: !94, file: !94, line: 1247, type: !5919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{!319, !4354}
!5921 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !5919, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5922)
!5922 = !{!5923}
!5923 = !DILocalVariable(name: "dev", arg: 1, scope: !5921, file: !94, line: 858, type: !4354)
!5924 = !DILocation(line: 858, column: 57, scope: !5921)
!5925 = !DILocation(line: 861, column: 6, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5921, file: !94, line: 861, column: 6)
!5927 = !DILocation(line: 861, column: 11, scope: !5926)
!5928 = !DILocation(line: 861, column: 6, scope: !5921)
!5929 = !DILocation(line: 862, column: 10, scope: !5926)
!5930 = !DILocation(line: 862, column: 15, scope: !5926)
!5931 = !DILocation(line: 862, column: 3, scope: !5926)
!5932 = !DILocation(line: 864, column: 23, scope: !5921)
!5933 = !DILocation(line: 864, column: 28, scope: !5921)
!5934 = !DILocation(line: 864, column: 9, scope: !5921)
!5935 = !DILocation(line: 864, column: 2, scope: !5921)
!5936 = !DILocation(line: 865, column: 1, scope: !5921)
!5937 = distinct !DISubprogram(name: "drm_gem_fb_destroy", scope: !3, file: !3, line: 97, type: !5424, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5938)
!5938 = !{!5939, !5940}
!5939 = !DILocalVariable(name: "fb", arg: 1, scope: !5937, file: !3, line: 97, type: !5353)
!5940 = !DILocalVariable(name: "i", scope: !5937, file: !3, line: 99, type: !7)
!5941 = !DILocation(line: 97, column: 49, scope: !5937)
!5942 = !DILocation(line: 99, column: 2, scope: !5937)
!5943 = !DILocation(line: 99, column: 15, scope: !5937)
!5944 = !DILocation(line: 101, column: 9, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 101, column: 2)
!5946 = !DILocation(line: 101, column: 7, scope: !5945)
!5947 = !DILocation(line: 101, column: 14, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 101, column: 2)
!5949 = !DILocation(line: 101, column: 18, scope: !5948)
!5950 = !DILocation(line: 101, column: 22, scope: !5948)
!5951 = !DILocation(line: 101, column: 30, scope: !5948)
!5952 = !DILocation(line: 101, column: 16, scope: !5948)
!5953 = !DILocation(line: 101, column: 2, scope: !5945)
!5954 = !DILocation(line: 102, column: 22, scope: !5948)
!5955 = !DILocation(line: 102, column: 26, scope: !5948)
!5956 = !DILocation(line: 102, column: 30, scope: !5948)
!5957 = !DILocation(line: 102, column: 3, scope: !5948)
!5958 = !DILocation(line: 101, column: 43, scope: !5948)
!5959 = !DILocation(line: 101, column: 2, scope: !5948)
!5960 = distinct !{!5960, !5953, !5961, !5962, !5963}
!5961 = !DILocation(line: 102, column: 32, scope: !5945)
!5962 = !{!"llvm.loop.mustprogress"}
!5963 = !{!"llvm.loop.unroll.disable"}
!5964 = !DILocation(line: 104, column: 26, scope: !5937)
!5965 = !DILocation(line: 104, column: 2, scope: !5937)
!5966 = !DILocation(line: 105, column: 8, scope: !5937)
!5967 = !DILocation(line: 105, column: 2, scope: !5937)
!5968 = !DILocation(line: 106, column: 1, scope: !5937)
!5969 = distinct !DISubprogram(name: "drm_gem_object_put", scope: !216, file: !216, line: 501, type: !5658, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5970)
!5970 = !{!5971}
!5971 = !DILocalVariable(name: "obj", arg: 1, scope: !5969, file: !216, line: 501, type: !287)
!5972 = !DILocation(line: 501, column: 43, scope: !5969)
!5973 = !DILocation(line: 503, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5969, file: !216, line: 503, column: 6)
!5975 = !DILocation(line: 503, column: 6, scope: !5969)
!5976 = !DILocation(line: 504, column: 24, scope: !5974)
!5977 = !DILocation(line: 504, column: 3, scope: !5974)
!5978 = !DILocation(line: 505, column: 1, scope: !5969)
!5979 = !DISubprogram(name: "drm_framebuffer_cleanup", scope: !5355, file: !5355, line: 225, type: !5424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5980 = !DISubprogram(name: "kfree", scope: !265, file: !265, line: 227, type: !5981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{null, !1728}
!5983 = distinct !DISubprogram(name: "drm_gem_fb_create_handle", scope: !3, file: !3, line: 122, type: !5428, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5984)
!5984 = !{!5985, !5986, !5987}
!5985 = !DILocalVariable(name: "fb", arg: 1, scope: !5983, file: !3, line: 122, type: !5353)
!5986 = !DILocalVariable(name: "file", arg: 2, scope: !5983, file: !3, line: 122, type: !4803)
!5987 = !DILocalVariable(name: "handle", arg: 3, scope: !5983, file: !3, line: 123, type: !812)
!5988 = !DILocation(line: 122, column: 54, scope: !5983)
!5989 = !DILocation(line: 122, column: 75, scope: !5983)
!5990 = !DILocation(line: 123, column: 23, scope: !5983)
!5991 = !DILocation(line: 125, column: 31, scope: !5983)
!5992 = !DILocation(line: 125, column: 37, scope: !5983)
!5993 = !DILocation(line: 125, column: 41, scope: !5983)
!5994 = !DILocation(line: 125, column: 49, scope: !5983)
!5995 = !DILocation(line: 125, column: 9, scope: !5983)
!5996 = !DILocation(line: 125, column: 2, scope: !5983)
!5997 = !DISubprogram(name: "drm_gem_handle_create", scope: !216, file: !216, line: 507, type: !5998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5998 = !DISubroutineType(types: !5999)
!5999 = !{!109, !4803, !287, !1809}
!6000 = distinct !DISubprogram(name: "drm_gem_fb_init_with_funcs", scope: !3, file: !3, line: 151, type: !6001, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6003)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{!109, !305, !5353, !4803, !5453, !5418}
!6003 = !{!6004, !6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012, !6013, !6017, !6018, !6019}
!6004 = !DILocalVariable(name: "dev", arg: 1, scope: !6000, file: !3, line: 151, type: !305)
!6005 = !DILocalVariable(name: "fb", arg: 2, scope: !6000, file: !3, line: 152, type: !5353)
!6006 = !DILocalVariable(name: "file", arg: 3, scope: !6000, file: !3, line: 153, type: !4803)
!6007 = !DILocalVariable(name: "mode_cmd", arg: 4, scope: !6000, file: !3, line: 154, type: !5453)
!6008 = !DILocalVariable(name: "funcs", arg: 5, scope: !6000, file: !3, line: 155, type: !5418)
!6009 = !DILocalVariable(name: "info", scope: !6000, file: !3, line: 157, type: !5396)
!6010 = !DILocalVariable(name: "objs", scope: !6000, file: !3, line: 158, type: !5452)
!6011 = !DILocalVariable(name: "i", scope: !6000, file: !3, line: 159, type: !7)
!6012 = !DILocalVariable(name: "ret", scope: !6000, file: !3, line: 160, type: !109)
!6013 = !DILocalVariable(name: "width", scope: !6014, file: !3, line: 177, type: !7)
!6014 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 176, column: 41)
!6015 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 176, column: 2)
!6016 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 176, column: 2)
!6017 = !DILocalVariable(name: "height", scope: !6014, file: !3, line: 178, type: !7)
!6018 = !DILocalVariable(name: "min_size", scope: !6014, file: !3, line: 179, type: !7)
!6019 = !DILabel(scope: !6000, name: "err_gem_object_put", file: !3, line: 208)
!6020 = !DILocation(line: 151, column: 51, scope: !6000)
!6021 = !DILocation(line: 152, column: 35, scope: !6000)
!6022 = !DILocation(line: 153, column: 28, scope: !6000)
!6023 = !DILocation(line: 154, column: 42, scope: !6000)
!6024 = !DILocation(line: 155, column: 47, scope: !6000)
!6025 = !DILocation(line: 157, column: 2, scope: !6000)
!6026 = !DILocation(line: 157, column: 32, scope: !6000)
!6027 = !DILocation(line: 158, column: 2, scope: !6000)
!6028 = !DILocation(line: 158, column: 25, scope: !6000)
!6029 = !DILocation(line: 159, column: 2, scope: !6000)
!6030 = !DILocation(line: 159, column: 15, scope: !6000)
!6031 = !DILocation(line: 160, column: 2, scope: !6000)
!6032 = !DILocation(line: 160, column: 6, scope: !6000)
!6033 = !DILocation(line: 162, column: 29, scope: !6000)
!6034 = !DILocation(line: 162, column: 34, scope: !6000)
!6035 = !DILocation(line: 162, column: 9, scope: !6000)
!6036 = !DILocation(line: 162, column: 7, scope: !6000)
!6037 = !DILocation(line: 163, column: 7, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 163, column: 6)
!6039 = !DILocation(line: 163, column: 6, scope: !6000)
!6040 = !DILocation(line: 164, column: 3, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 163, column: 13)
!6042 = !DILocation(line: 165, column: 3, scope: !6041)
!6043 = !DILocation(line: 168, column: 34, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 168, column: 6)
!6045 = !DILocation(line: 168, column: 6, scope: !6044)
!6046 = !DILocation(line: 168, column: 39, scope: !6044)
!6047 = !DILocation(line: 169, column: 32, scope: !6044)
!6048 = !DILocation(line: 169, column: 37, scope: !6044)
!6049 = !DILocation(line: 169, column: 47, scope: !6044)
!6050 = !DILocation(line: 170, column: 11, scope: !6044)
!6051 = !DILocation(line: 170, column: 21, scope: !6044)
!6052 = !DILocation(line: 169, column: 7, scope: !6044)
!6053 = !DILocation(line: 168, column: 6, scope: !6000)
!6054 = !DILocation(line: 171, column: 3, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 170, column: 35)
!6056 = !DILocation(line: 173, column: 3, scope: !6055)
!6057 = !DILocation(line: 176, column: 9, scope: !6016)
!6058 = !DILocation(line: 176, column: 7, scope: !6016)
!6059 = !DILocation(line: 176, column: 14, scope: !6015)
!6060 = !DILocation(line: 176, column: 18, scope: !6015)
!6061 = !DILocation(line: 176, column: 24, scope: !6015)
!6062 = !DILocation(line: 176, column: 16, scope: !6015)
!6063 = !DILocation(line: 176, column: 2, scope: !6016)
!6064 = !DILocation(line: 177, column: 3, scope: !6014)
!6065 = !DILocation(line: 177, column: 16, scope: !6014)
!6066 = !DILocation(line: 177, column: 24, scope: !6014)
!6067 = !DILocation(line: 177, column: 34, scope: !6014)
!6068 = !DILocation(line: 177, column: 43, scope: !6014)
!6069 = !DILocation(line: 177, column: 47, scope: !6014)
!6070 = !DILocation(line: 177, column: 53, scope: !6014)
!6071 = !DILocation(line: 177, column: 40, scope: !6014)
!6072 = !DILocation(line: 178, column: 3, scope: !6014)
!6073 = !DILocation(line: 178, column: 16, scope: !6014)
!6074 = !DILocation(line: 178, column: 25, scope: !6014)
!6075 = !DILocation(line: 178, column: 35, scope: !6014)
!6076 = !DILocation(line: 178, column: 45, scope: !6014)
!6077 = !DILocation(line: 178, column: 49, scope: !6014)
!6078 = !DILocation(line: 178, column: 55, scope: !6014)
!6079 = !DILocation(line: 178, column: 42, scope: !6014)
!6080 = !DILocation(line: 179, column: 3, scope: !6014)
!6081 = !DILocation(line: 179, column: 16, scope: !6014)
!6082 = !DILocation(line: 181, column: 35, scope: !6014)
!6083 = !DILocation(line: 181, column: 41, scope: !6014)
!6084 = !DILocation(line: 181, column: 51, scope: !6014)
!6085 = !DILocation(line: 181, column: 59, scope: !6014)
!6086 = !DILocation(line: 181, column: 13, scope: !6014)
!6087 = !DILocation(line: 181, column: 8, scope: !6014)
!6088 = !DILocation(line: 181, column: 3, scope: !6014)
!6089 = !DILocation(line: 181, column: 11, scope: !6014)
!6090 = !DILocation(line: 182, column: 13, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 182, column: 7)
!6092 = !DILocation(line: 182, column: 8, scope: !6091)
!6093 = !DILocation(line: 182, column: 7, scope: !6014)
!6094 = !DILocation(line: 183, column: 4, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 182, column: 17)
!6096 = !DILocation(line: 184, column: 8, scope: !6095)
!6097 = !DILocation(line: 185, column: 4, scope: !6095)
!6098 = !DILocation(line: 188, column: 15, scope: !6014)
!6099 = !DILocation(line: 188, column: 22, scope: !6014)
!6100 = !DILocation(line: 188, column: 29, scope: !6014)
!6101 = !DILocation(line: 188, column: 39, scope: !6014)
!6102 = !DILocation(line: 188, column: 47, scope: !6014)
!6103 = !DILocation(line: 188, column: 27, scope: !6014)
!6104 = !DILocation(line: 188, column: 14, scope: !6014)
!6105 = !DILocation(line: 189, column: 33, scope: !6014)
!6106 = !DILocation(line: 189, column: 39, scope: !6014)
!6107 = !DILocation(line: 189, column: 42, scope: !6014)
!6108 = !DILocation(line: 189, column: 7, scope: !6014)
!6109 = !DILocation(line: 189, column: 5, scope: !6014)
!6110 = !DILocation(line: 190, column: 7, scope: !6014)
!6111 = !DILocation(line: 190, column: 17, scope: !6014)
!6112 = !DILocation(line: 190, column: 25, scope: !6014)
!6113 = !DILocation(line: 190, column: 5, scope: !6014)
!6114 = !DILocation(line: 188, column: 12, scope: !6014)
!6115 = !DILocation(line: 192, column: 12, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 192, column: 7)
!6117 = !DILocation(line: 192, column: 7, scope: !6116)
!6118 = !DILocation(line: 192, column: 16, scope: !6116)
!6119 = !DILocation(line: 192, column: 23, scope: !6116)
!6120 = !DILocation(line: 192, column: 21, scope: !6116)
!6121 = !DILocation(line: 192, column: 7, scope: !6014)
!6122 = !DILocation(line: 193, column: 4, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 192, column: 33)
!6124 = !DILocation(line: 196, column: 28, scope: !6123)
!6125 = !DILocation(line: 196, column: 23, scope: !6123)
!6126 = !DILocation(line: 196, column: 4, scope: !6123)
!6127 = !DILocation(line: 197, column: 8, scope: !6123)
!6128 = !DILocation(line: 198, column: 4, scope: !6123)
!6129 = !DILocation(line: 200, column: 2, scope: !6015)
!6130 = !DILocation(line: 200, column: 2, scope: !6014)
!6131 = !DILocation(line: 176, column: 37, scope: !6015)
!6132 = !DILocation(line: 176, column: 2, scope: !6015)
!6133 = distinct !{!6133, !6063, !6134, !5962, !5963}
!6134 = !DILocation(line: 200, column: 2, scope: !6016)
!6135 = !DILocation(line: 202, column: 24, scope: !6000)
!6136 = !DILocation(line: 202, column: 29, scope: !6000)
!6137 = !DILocation(line: 202, column: 33, scope: !6000)
!6138 = !DILocation(line: 202, column: 43, scope: !6000)
!6139 = !DILocation(line: 202, column: 49, scope: !6000)
!6140 = !DILocation(line: 202, column: 52, scope: !6000)
!6141 = !DILocation(line: 202, column: 8, scope: !6000)
!6142 = !DILocation(line: 202, column: 6, scope: !6000)
!6143 = !DILocation(line: 203, column: 6, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 203, column: 6)
!6145 = !DILocation(line: 203, column: 6, scope: !6000)
!6146 = !DILocation(line: 204, column: 3, scope: !6144)
!6147 = !DILocation(line: 206, column: 2, scope: !6000)
!6148 = !DILocation(line: 208, column: 1, scope: !6000)
!6149 = !DILocation(line: 209, column: 2, scope: !6000)
!6150 = !DILocation(line: 209, column: 9, scope: !6000)
!6151 = !DILocation(line: 209, column: 11, scope: !6000)
!6152 = !DILocation(line: 210, column: 3, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 209, column: 16)
!6154 = !DILocation(line: 211, column: 27, scope: !6153)
!6155 = !DILocation(line: 211, column: 22, scope: !6153)
!6156 = !DILocation(line: 211, column: 3, scope: !6153)
!6157 = distinct !{!6157, !6149, !6158, !5962, !5963}
!6158 = !DILocation(line: 212, column: 2, scope: !6000)
!6159 = !DILocation(line: 213, column: 9, scope: !6000)
!6160 = !DILocation(line: 213, column: 2, scope: !6000)
!6161 = !DILocation(line: 214, column: 1, scope: !6000)
!6162 = !DISubprogram(name: "drm_get_format_info", scope: !5399, file: !5399, line: 310, type: !6163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6163 = !DISubroutineType(types: !6164)
!6164 = !{!5396, !305, !5453}
!6165 = !DISubprogram(name: "__drm_dev_dbg", scope: !226, file: !226, line: 411, type: !6166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{null, !6168, !4354, !225, !319, null}
!6168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6169, size: 64)
!6169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !6170, line: 16, size: 448, align: 64, elements: !6171)
!6170 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!6171 = !{!6172, !6173, !6174, !6175, !6176, !6177, !6178, !6179}
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !6169, file: !6170, line: 21, baseType: !319, size: 64)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !6169, file: !6170, line: 22, baseType: !319, size: 64, offset: 64)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6169, file: !6170, line: 23, baseType: !319, size: 64, offset: 128)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6169, file: !6170, line: 24, baseType: !319, size: 64, offset: 192)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !6169, file: !6170, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !6169, file: !6170, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6169, file: !6170, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6169, file: !6170, line: 57, baseType: !6180, size: 128, offset: 320)
!6180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6169, file: !6170, line: 54, size: 128, elements: !6181)
!6181 = !{!6182, !6197}
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !6180, file: !6170, line: 55, baseType: !6183, size: 128)
!6183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !1069, line: 359, size: 128, elements: !6184)
!6184 = !{!6185}
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6183, file: !1069, line: 360, baseType: !6186, size: 128)
!6186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1069, line: 85, size: 128, elements: !6187)
!6187 = !{!6188, !6189}
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6186, file: !1069, line: 86, baseType: !299, size: 32)
!6189 = !DIDerivedType(tag: DW_TAG_member, scope: !6186, file: !1069, line: 101, baseType: !6190, size: 64, offset: 64)
!6190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6186, file: !1069, line: 101, size: 64, elements: !6191)
!6191 = !{!6192, !6193, !6194}
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6190, file: !1069, line: 102, baseType: !278, size: 64)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6190, file: !1069, line: 103, baseType: !1067, size: 64)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6190, file: !1069, line: 104, baseType: !6195, size: 64)
!6195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6196, size: 64)
!6196 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1069, line: 104, flags: DIFlagFwdDecl)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !6180, file: !6170, line: 56, baseType: !6198, size: 128)
!6198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !1069, line: 363, size: 128, elements: !6199)
!6199 = !{!6200}
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6198, file: !1069, line: 364, baseType: !6186, size: 128)
!6201 = distinct !DISubprogram(name: "drm_drv_uses_atomic_modeset", scope: !247, file: !247, line: 580, type: !6202, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6204)
!6202 = !DISubroutineType(types: !6203)
!6203 = !{!820, !305}
!6204 = !{!6205}
!6205 = !DILocalVariable(name: "dev", arg: 1, scope: !6201, file: !247, line: 580, type: !305)
!6206 = !DILocation(line: 580, column: 67, scope: !6201)
!6207 = !DILocation(line: 582, column: 32, scope: !6201)
!6208 = !DILocation(line: 582, column: 9, scope: !6201)
!6209 = !DILocation(line: 582, column: 52, scope: !6201)
!6210 = !DILocation(line: 583, column: 4, scope: !6201)
!6211 = !DILocation(line: 583, column: 9, scope: !6201)
!6212 = !DILocation(line: 583, column: 21, scope: !6201)
!6213 = !DILocation(line: 583, column: 27, scope: !6201)
!6214 = !DILocation(line: 583, column: 30, scope: !6201)
!6215 = !DILocation(line: 583, column: 35, scope: !6201)
!6216 = !DILocation(line: 583, column: 47, scope: !6201)
!6217 = !DILocation(line: 583, column: 54, scope: !6201)
!6218 = !DILocation(line: 583, column: 68, scope: !6201)
!6219 = !DILocation(line: 0, scope: !6201)
!6220 = !DILocation(line: 582, column: 2, scope: !6201)
!6221 = !DISubprogram(name: "drm_any_plane_has_format", scope: !6222, file: !6222, line: 947, type: !6223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6222 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!820, !305, !549, !552}
!6225 = !DISubprogram(name: "drm_gem_object_lookup", scope: !216, file: !216, line: 526, type: !6226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6226 = !DISubroutineType(types: !6227)
!6227 = !{!287, !4803, !549}
!6228 = !DISubprogram(name: "drm_format_info_min_pitch", scope: !5399, file: !5399, line: 320, type: !6229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6229 = !DISubroutineType(types: !6230)
!6230 = !{!5131, !5396, !109, !7}
!6231 = distinct !DISubprogram(name: "drm_gem_fb_init", scope: !3, file: !3, line: 68, type: !6232, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6235)
!6232 = !DISubroutineType(types: !6233)
!6233 = !{!109, !305, !5353, !5453, !6234, !7, !5418}
!6234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!6235 = !{!6236, !6237, !6238, !6239, !6240, !6241, !6242, !6243}
!6236 = !DILocalVariable(name: "dev", arg: 1, scope: !6231, file: !3, line: 68, type: !305)
!6237 = !DILocalVariable(name: "fb", arg: 2, scope: !6231, file: !3, line: 69, type: !5353)
!6238 = !DILocalVariable(name: "mode_cmd", arg: 3, scope: !6231, file: !3, line: 70, type: !5453)
!6239 = !DILocalVariable(name: "obj", arg: 4, scope: !6231, file: !3, line: 71, type: !6234)
!6240 = !DILocalVariable(name: "num_planes", arg: 5, scope: !6231, file: !3, line: 71, type: !7)
!6241 = !DILocalVariable(name: "funcs", arg: 6, scope: !6231, file: !3, line: 72, type: !5418)
!6242 = !DILocalVariable(name: "i", scope: !6231, file: !3, line: 74, type: !7)
!6243 = !DILocalVariable(name: "ret", scope: !6231, file: !3, line: 75, type: !109)
!6244 = !DILocation(line: 68, column: 36, scope: !6231)
!6245 = !DILocation(line: 69, column: 28, scope: !6231)
!6246 = !DILocation(line: 70, column: 35, scope: !6231)
!6247 = !DILocation(line: 71, column: 28, scope: !6231)
!6248 = !DILocation(line: 71, column: 46, scope: !6231)
!6249 = !DILocation(line: 72, column: 40, scope: !6231)
!6250 = !DILocation(line: 74, column: 2, scope: !6231)
!6251 = !DILocation(line: 74, column: 15, scope: !6231)
!6252 = !DILocation(line: 75, column: 2, scope: !6231)
!6253 = !DILocation(line: 75, column: 6, scope: !6231)
!6254 = !DILocation(line: 77, column: 33, scope: !6231)
!6255 = !DILocation(line: 77, column: 38, scope: !6231)
!6256 = !DILocation(line: 77, column: 42, scope: !6231)
!6257 = !DILocation(line: 77, column: 2, scope: !6231)
!6258 = !DILocation(line: 79, column: 9, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6231, file: !3, line: 79, column: 2)
!6260 = !DILocation(line: 79, column: 7, scope: !6259)
!6261 = !DILocation(line: 79, column: 14, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6259, file: !3, line: 79, column: 2)
!6263 = !DILocation(line: 79, column: 18, scope: !6262)
!6264 = !DILocation(line: 79, column: 16, scope: !6262)
!6265 = !DILocation(line: 79, column: 2, scope: !6259)
!6266 = !DILocation(line: 80, column: 16, scope: !6262)
!6267 = !DILocation(line: 80, column: 20, scope: !6262)
!6268 = !DILocation(line: 80, column: 3, scope: !6262)
!6269 = !DILocation(line: 80, column: 7, scope: !6262)
!6270 = !DILocation(line: 80, column: 11, scope: !6262)
!6271 = !DILocation(line: 80, column: 14, scope: !6262)
!6272 = !DILocation(line: 79, column: 31, scope: !6262)
!6273 = !DILocation(line: 79, column: 2, scope: !6262)
!6274 = distinct !{!6274, !6265, !6275, !5962, !5963}
!6275 = !DILocation(line: 80, column: 21, scope: !6259)
!6276 = !DILocation(line: 82, column: 29, scope: !6231)
!6277 = !DILocation(line: 82, column: 34, scope: !6231)
!6278 = !DILocation(line: 82, column: 38, scope: !6231)
!6279 = !DILocation(line: 82, column: 8, scope: !6231)
!6280 = !DILocation(line: 82, column: 6, scope: !6231)
!6281 = !DILocation(line: 83, column: 6, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6231, file: !3, line: 83, column: 6)
!6283 = !DILocation(line: 83, column: 6, scope: !6231)
!6284 = !DILocation(line: 84, column: 3, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 84, column: 3)
!6286 = !DILocation(line: 84, column: 3, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 84, column: 3)
!6288 = !DILocation(line: 84, column: 3, scope: !6282)
!6289 = !DILocation(line: 86, column: 9, scope: !6231)
!6290 = !DILocation(line: 87, column: 1, scope: !6231)
!6291 = !DILocation(line: 86, column: 2, scope: !6231)
!6292 = distinct !DISubprogram(name: "drm_gem_fb_create_with_funcs", scope: !3, file: !3, line: 234, type: !6293, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6295)
!6293 = !DISubroutineType(types: !6294)
!6294 = !{!5353, !305, !4803, !5453, !5418}
!6295 = !{!6296, !6297, !6298, !6299, !6300, !6301}
!6296 = !DILocalVariable(name: "dev", arg: 1, scope: !6292, file: !3, line: 234, type: !305)
!6297 = !DILocalVariable(name: "file", arg: 2, scope: !6292, file: !3, line: 234, type: !4803)
!6298 = !DILocalVariable(name: "mode_cmd", arg: 3, scope: !6292, file: !3, line: 235, type: !5453)
!6299 = !DILocalVariable(name: "funcs", arg: 4, scope: !6292, file: !3, line: 236, type: !5418)
!6300 = !DILocalVariable(name: "fb", scope: !6292, file: !3, line: 238, type: !5353)
!6301 = !DILocalVariable(name: "ret", scope: !6292, file: !3, line: 239, type: !109)
!6302 = !DILocation(line: 234, column: 49, scope: !6292)
!6303 = !DILocation(line: 234, column: 71, scope: !6292)
!6304 = !DILocation(line: 235, column: 40, scope: !6292)
!6305 = !DILocation(line: 236, column: 45, scope: !6292)
!6306 = !DILocation(line: 238, column: 2, scope: !6292)
!6307 = !DILocation(line: 238, column: 26, scope: !6292)
!6308 = !DILocation(line: 239, column: 2, scope: !6292)
!6309 = !DILocation(line: 239, column: 6, scope: !6292)
!6310 = !DILocation(line: 241, column: 7, scope: !6292)
!6311 = !DILocation(line: 241, column: 5, scope: !6292)
!6312 = !DILocation(line: 242, column: 7, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 242, column: 6)
!6314 = !DILocation(line: 242, column: 6, scope: !6292)
!6315 = !DILocation(line: 243, column: 10, scope: !6313)
!6316 = !DILocation(line: 243, column: 3, scope: !6313)
!6317 = !DILocation(line: 245, column: 35, scope: !6292)
!6318 = !DILocation(line: 245, column: 40, scope: !6292)
!6319 = !DILocation(line: 245, column: 44, scope: !6292)
!6320 = !DILocation(line: 245, column: 50, scope: !6292)
!6321 = !DILocation(line: 245, column: 60, scope: !6292)
!6322 = !DILocation(line: 245, column: 8, scope: !6292)
!6323 = !DILocation(line: 245, column: 6, scope: !6292)
!6324 = !DILocation(line: 246, column: 6, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 246, column: 6)
!6326 = !DILocation(line: 246, column: 6, scope: !6292)
!6327 = !DILocation(line: 247, column: 9, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 246, column: 11)
!6329 = !DILocation(line: 247, column: 3, scope: !6328)
!6330 = !DILocation(line: 248, column: 18, scope: !6328)
!6331 = !DILocation(line: 248, column: 10, scope: !6328)
!6332 = !DILocation(line: 248, column: 3, scope: !6328)
!6333 = !DILocation(line: 251, column: 9, scope: !6292)
!6334 = !DILocation(line: 251, column: 2, scope: !6292)
!6335 = !DILocation(line: 252, column: 1, scope: !6292)
!6336 = distinct !DISubprogram(name: "kzalloc", scope: !265, file: !265, line: 719, type: !6337, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6337 = !DISubroutineType(types: !6338)
!6338 = !{!275, !448, !276}
!6339 = !{!6340, !6341}
!6340 = !DILocalVariable(name: "size", arg: 1, scope: !6336, file: !265, line: 719, type: !448)
!6341 = !DILocalVariable(name: "flags", arg: 2, scope: !6336, file: !265, line: 719, type: !276)
!6342 = !DILocation(line: 719, column: 52, scope: !6336)
!6343 = !DILocation(line: 719, column: 64, scope: !6336)
!6344 = !DILocation(line: 721, column: 17, scope: !6336)
!6345 = !DILocation(line: 721, column: 23, scope: !6336)
!6346 = !DILocation(line: 721, column: 29, scope: !6336)
!6347 = !DILocation(line: 721, column: 9, scope: !6336)
!6348 = !DILocation(line: 721, column: 2, scope: !6336)
!6349 = distinct !DISubprogram(name: "ERR_PTR", scope: !6350, file: !6350, line: 39, type: !6351, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6350 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6351 = !DISubroutineType(types: !6352)
!6352 = !{!275, !437}
!6353 = !{!6354}
!6354 = !DILocalVariable(name: "error", arg: 1, scope: !6349, file: !6350, line: 39, type: !437)
!6355 = !DILocation(line: 39, column: 48, scope: !6349)
!6356 = !DILocation(line: 41, column: 18, scope: !6349)
!6357 = !DILocation(line: 41, column: 9, scope: !6349)
!6358 = !DILocation(line: 41, column: 2, scope: !6349)
!6359 = distinct !DISubprogram(name: "drm_gem_fb_create", scope: !3, file: !3, line: 283, type: !5351, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6360)
!6360 = !{!6361, !6362, !6363}
!6361 = !DILocalVariable(name: "dev", arg: 1, scope: !6359, file: !3, line: 283, type: !305)
!6362 = !DILocalVariable(name: "file", arg: 2, scope: !6359, file: !3, line: 283, type: !4803)
!6363 = !DILocalVariable(name: "mode_cmd", arg: 3, scope: !6359, file: !3, line: 284, type: !5453)
!6364 = !DILocation(line: 283, column: 38, scope: !6359)
!6365 = !DILocation(line: 283, column: 60, scope: !6359)
!6366 = !DILocation(line: 284, column: 36, scope: !6359)
!6367 = !DILocation(line: 286, column: 38, scope: !6359)
!6368 = !DILocation(line: 286, column: 43, scope: !6359)
!6369 = !DILocation(line: 286, column: 49, scope: !6359)
!6370 = !DILocation(line: 286, column: 9, scope: !6359)
!6371 = !DILocation(line: 286, column: 2, scope: !6359)
!6372 = distinct !DISubprogram(name: "drm_gem_fb_create_with_dirty", scope: !3, file: !3, line: 321, type: !5351, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6373)
!6373 = !{!6374, !6375, !6376}
!6374 = !DILocalVariable(name: "dev", arg: 1, scope: !6372, file: !3, line: 321, type: !305)
!6375 = !DILocalVariable(name: "file", arg: 2, scope: !6372, file: !3, line: 321, type: !4803)
!6376 = !DILocalVariable(name: "mode_cmd", arg: 3, scope: !6372, file: !3, line: 322, type: !5453)
!6377 = !DILocation(line: 321, column: 49, scope: !6372)
!6378 = !DILocation(line: 321, column: 71, scope: !6372)
!6379 = !DILocation(line: 322, column: 40, scope: !6372)
!6380 = !DILocation(line: 324, column: 38, scope: !6372)
!6381 = !DILocation(line: 324, column: 43, scope: !6372)
!6382 = !DILocation(line: 324, column: 49, scope: !6372)
!6383 = !DILocation(line: 324, column: 9, scope: !6372)
!6384 = !DILocation(line: 324, column: 2, scope: !6372)
!6385 = distinct !DISubprogram(name: "drm_gem_fb_vmap", scope: !3, file: !3, line: 352, type: !6386, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6388)
!6386 = !DISubroutineType(types: !6387)
!6387 = !{!109, !5353, !4997, !4997}
!6388 = !{!6389, !6390, !6391, !6392, !6393, !6394, !6395}
!6389 = !DILocalVariable(name: "fb", arg: 1, scope: !6385, file: !3, line: 352, type: !5353)
!6390 = !DILocalVariable(name: "map", arg: 2, scope: !6385, file: !3, line: 352, type: !4997)
!6391 = !DILocalVariable(name: "data", arg: 3, scope: !6385, file: !3, line: 353, type: !4997)
!6392 = !DILocalVariable(name: "obj", scope: !6385, file: !3, line: 355, type: !287)
!6393 = !DILocalVariable(name: "i", scope: !6385, file: !3, line: 356, type: !7)
!6394 = !DILocalVariable(name: "ret", scope: !6385, file: !3, line: 357, type: !109)
!6395 = !DILabel(scope: !6385, name: "err_drm_gem_vunmap", file: !3, line: 381)
!6396 = !DILocation(line: 352, column: 45, scope: !6385)
!6397 = !DILocation(line: 352, column: 67, scope: !6385)
!6398 = !DILocation(line: 353, column: 25, scope: !6385)
!6399 = !DILocation(line: 355, column: 2, scope: !6385)
!6400 = !DILocation(line: 355, column: 25, scope: !6385)
!6401 = !DILocation(line: 356, column: 2, scope: !6385)
!6402 = !DILocation(line: 356, column: 15, scope: !6385)
!6403 = !DILocation(line: 357, column: 2, scope: !6385)
!6404 = !DILocation(line: 357, column: 6, scope: !6385)
!6405 = !DILocation(line: 359, column: 9, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 359, column: 2)
!6407 = !DILocation(line: 359, column: 7, scope: !6406)
!6408 = !DILocation(line: 359, column: 14, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 359, column: 2)
!6410 = !DILocation(line: 359, column: 18, scope: !6409)
!6411 = !DILocation(line: 359, column: 22, scope: !6409)
!6412 = !DILocation(line: 359, column: 30, scope: !6409)
!6413 = !DILocation(line: 359, column: 16, scope: !6409)
!6414 = !DILocation(line: 359, column: 2, scope: !6406)
!6415 = !DILocation(line: 360, column: 28, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 359, column: 47)
!6417 = !DILocation(line: 360, column: 32, scope: !6416)
!6418 = !DILocation(line: 360, column: 9, scope: !6416)
!6419 = !DILocation(line: 360, column: 7, scope: !6416)
!6420 = !DILocation(line: 361, column: 8, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 361, column: 7)
!6422 = !DILocation(line: 361, column: 7, scope: !6416)
!6423 = !DILocation(line: 362, column: 8, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 361, column: 13)
!6425 = !DILocation(line: 363, column: 4, scope: !6424)
!6426 = !DILocation(line: 365, column: 31, scope: !6416)
!6427 = !DILocation(line: 365, column: 37, scope: !6416)
!6428 = !DILocation(line: 365, column: 41, scope: !6416)
!6429 = !DILocation(line: 365, column: 9, scope: !6416)
!6430 = !DILocation(line: 365, column: 7, scope: !6416)
!6431 = !DILocation(line: 366, column: 7, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 366, column: 7)
!6433 = !DILocation(line: 366, column: 7, scope: !6416)
!6434 = !DILocation(line: 367, column: 4, scope: !6432)
!6435 = !DILocation(line: 368, column: 2, scope: !6416)
!6436 = !DILocation(line: 359, column: 42, scope: !6409)
!6437 = !DILocation(line: 359, column: 2, scope: !6409)
!6438 = distinct !{!6438, !6414, !6439, !5962, !5963}
!6439 = !DILocation(line: 368, column: 2, scope: !6406)
!6440 = !DILocation(line: 370, column: 6, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 370, column: 6)
!6442 = !DILocation(line: 370, column: 6, scope: !6385)
!6443 = !DILocation(line: 371, column: 10, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 371, column: 3)
!6445 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 370, column: 12)
!6446 = !DILocation(line: 371, column: 8, scope: !6444)
!6447 = !DILocation(line: 371, column: 15, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 371, column: 3)
!6449 = !DILocation(line: 371, column: 19, scope: !6448)
!6450 = !DILocation(line: 371, column: 23, scope: !6448)
!6451 = !DILocation(line: 371, column: 31, scope: !6448)
!6452 = !DILocation(line: 371, column: 17, scope: !6448)
!6453 = !DILocation(line: 371, column: 3, scope: !6444)
!6454 = !DILocation(line: 372, column: 12, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 371, column: 48)
!6456 = !DILocation(line: 372, column: 17, scope: !6455)
!6457 = !DILocation(line: 372, column: 22, scope: !6455)
!6458 = !DILocation(line: 372, column: 26, scope: !6455)
!6459 = !DILocation(line: 372, column: 4, scope: !6455)
!6460 = !DILocation(line: 373, column: 27, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 373, column: 8)
!6462 = !DILocation(line: 373, column: 32, scope: !6461)
!6463 = !DILocation(line: 373, column: 8, scope: !6461)
!6464 = !DILocation(line: 373, column: 8, scope: !6455)
!6465 = !DILocation(line: 374, column: 5, scope: !6461)
!6466 = !DILocation(line: 375, column: 20, scope: !6455)
!6467 = !DILocation(line: 375, column: 25, scope: !6455)
!6468 = !DILocation(line: 375, column: 29, scope: !6455)
!6469 = !DILocation(line: 375, column: 33, scope: !6455)
!6470 = !DILocation(line: 375, column: 41, scope: !6455)
!6471 = !DILocation(line: 375, column: 4, scope: !6455)
!6472 = !DILocation(line: 376, column: 3, scope: !6455)
!6473 = !DILocation(line: 371, column: 43, scope: !6448)
!6474 = !DILocation(line: 371, column: 3, scope: !6448)
!6475 = distinct !{!6475, !6453, !6476, !5962, !5963}
!6476 = !DILocation(line: 376, column: 3, scope: !6444)
!6477 = !DILocation(line: 377, column: 2, scope: !6445)
!6478 = !DILocation(line: 379, column: 2, scope: !6385)
!6479 = !DILocation(line: 381, column: 1, scope: !6385)
!6480 = !DILocation(line: 382, column: 2, scope: !6385)
!6481 = !DILocation(line: 382, column: 9, scope: !6385)
!6482 = !DILocation(line: 383, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 382, column: 12)
!6484 = !DILocation(line: 384, column: 28, scope: !6483)
!6485 = !DILocation(line: 384, column: 32, scope: !6483)
!6486 = !DILocation(line: 384, column: 9, scope: !6483)
!6487 = !DILocation(line: 384, column: 7, scope: !6483)
!6488 = !DILocation(line: 385, column: 8, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 385, column: 7)
!6490 = !DILocation(line: 385, column: 7, scope: !6483)
!6491 = !DILocation(line: 386, column: 4, scope: !6489)
!6492 = distinct !{!6492, !6480, !6493, !5962, !5963}
!6493 = !DILocation(line: 388, column: 2, scope: !6385)
!6494 = !DILocation(line: 387, column: 27, scope: !6483)
!6495 = !DILocation(line: 387, column: 33, scope: !6483)
!6496 = !DILocation(line: 387, column: 37, scope: !6483)
!6497 = !DILocation(line: 387, column: 3, scope: !6483)
!6498 = !DILocation(line: 389, column: 9, scope: !6385)
!6499 = !DILocation(line: 389, column: 2, scope: !6385)
!6500 = !DILocation(line: 390, column: 1, scope: !6385)
!6501 = !DISubprogram(name: "drm_gem_vmap_unlocked", scope: !216, file: !216, line: 521, type: !5689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6502 = distinct !DISubprogram(name: "iosys_map_is_null", scope: !4999, file: !4999, line: 235, type: !6503, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6507)
!6503 = !DISubroutineType(types: !6504)
!6504 = !{!820, !6505}
!6505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6506, size: 64)
!6506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4998)
!6507 = !{!6508}
!6508 = !DILocalVariable(name: "map", arg: 1, scope: !6502, file: !4999, line: 235, type: !6505)
!6509 = !DILocation(line: 235, column: 62, scope: !6502)
!6510 = !DILocation(line: 237, column: 6, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6502, file: !4999, line: 237, column: 6)
!6512 = !DILocation(line: 237, column: 11, scope: !6511)
!6513 = !DILocation(line: 237, column: 6, scope: !6502)
!6514 = !DILocation(line: 238, column: 11, scope: !6511)
!6515 = !DILocation(line: 238, column: 16, scope: !6511)
!6516 = !DILocation(line: 238, column: 10, scope: !6511)
!6517 = !DILocation(line: 238, column: 3, scope: !6511)
!6518 = !DILocation(line: 239, column: 10, scope: !6502)
!6519 = !DILocation(line: 239, column: 15, scope: !6502)
!6520 = !DILocation(line: 239, column: 9, scope: !6502)
!6521 = !DILocation(line: 239, column: 2, scope: !6502)
!6522 = !DILocation(line: 240, column: 1, scope: !6502)
!6523 = distinct !DISubprogram(name: "iosys_map_incr", scope: !4999, file: !4999, line: 323, type: !6524, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6526)
!6524 = !DISubroutineType(types: !6525)
!6525 = !{null, !4997, !448}
!6526 = !{!6527, !6528}
!6527 = !DILocalVariable(name: "map", arg: 1, scope: !6523, file: !4999, line: 323, type: !4997)
!6528 = !DILocalVariable(name: "incr", arg: 2, scope: !6523, file: !4999, line: 323, type: !448)
!6529 = !DILocation(line: 323, column: 53, scope: !6523)
!6530 = !DILocation(line: 323, column: 65, scope: !6523)
!6531 = !DILocation(line: 325, column: 6, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6523, file: !4999, line: 325, column: 6)
!6533 = !DILocation(line: 325, column: 11, scope: !6532)
!6534 = !DILocation(line: 325, column: 6, scope: !6523)
!6535 = !DILocation(line: 326, column: 23, scope: !6532)
!6536 = !DILocation(line: 326, column: 3, scope: !6532)
!6537 = !DILocation(line: 326, column: 8, scope: !6532)
!6538 = !DILocation(line: 326, column: 20, scope: !6532)
!6539 = !DILocation(line: 328, column: 17, scope: !6532)
!6540 = !DILocation(line: 328, column: 3, scope: !6532)
!6541 = !DILocation(line: 328, column: 8, scope: !6532)
!6542 = !DILocation(line: 328, column: 14, scope: !6532)
!6543 = !DILocation(line: 329, column: 1, scope: !6523)
!6544 = !DISubprogram(name: "drm_gem_vunmap_unlocked", scope: !216, file: !216, line: 522, type: !5693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6545 = distinct !DISubprogram(name: "drm_gem_fb_vunmap", scope: !3, file: !3, line: 402, type: !6546, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6548)
!6546 = !DISubroutineType(types: !6547)
!6547 = !{null, !5353, !4997}
!6548 = !{!6549, !6550, !6551, !6552}
!6549 = !DILocalVariable(name: "fb", arg: 1, scope: !6545, file: !3, line: 402, type: !5353)
!6550 = !DILocalVariable(name: "map", arg: 2, scope: !6545, file: !3, line: 402, type: !4997)
!6551 = !DILocalVariable(name: "i", scope: !6545, file: !3, line: 404, type: !7)
!6552 = !DILocalVariable(name: "obj", scope: !6545, file: !3, line: 405, type: !287)
!6553 = !DILocation(line: 402, column: 48, scope: !6545)
!6554 = !DILocation(line: 402, column: 70, scope: !6545)
!6555 = !DILocation(line: 404, column: 2, scope: !6545)
!6556 = !DILocation(line: 404, column: 15, scope: !6545)
!6557 = !DILocation(line: 404, column: 19, scope: !6545)
!6558 = !DILocation(line: 404, column: 23, scope: !6545)
!6559 = !DILocation(line: 404, column: 31, scope: !6545)
!6560 = !DILocation(line: 405, column: 2, scope: !6545)
!6561 = !DILocation(line: 405, column: 25, scope: !6545)
!6562 = !DILocation(line: 407, column: 2, scope: !6545)
!6563 = !DILocation(line: 407, column: 9, scope: !6545)
!6564 = !DILocation(line: 408, column: 3, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 407, column: 12)
!6566 = !DILocation(line: 409, column: 28, scope: !6565)
!6567 = !DILocation(line: 409, column: 32, scope: !6565)
!6568 = !DILocation(line: 409, column: 9, scope: !6565)
!6569 = !DILocation(line: 409, column: 7, scope: !6565)
!6570 = !DILocation(line: 410, column: 8, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 410, column: 7)
!6572 = !DILocation(line: 410, column: 7, scope: !6565)
!6573 = !DILocation(line: 411, column: 4, scope: !6571)
!6574 = distinct !{!6574, !6562, !6575, !5962, !5963}
!6575 = !DILocation(line: 415, column: 2, scope: !6545)
!6576 = !DILocation(line: 412, column: 26, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 412, column: 7)
!6578 = !DILocation(line: 412, column: 30, scope: !6577)
!6579 = !DILocation(line: 412, column: 7, scope: !6577)
!6580 = !DILocation(line: 412, column: 7, scope: !6565)
!6581 = !DILocation(line: 413, column: 4, scope: !6577)
!6582 = !DILocation(line: 414, column: 27, scope: !6565)
!6583 = !DILocation(line: 414, column: 33, scope: !6565)
!6584 = !DILocation(line: 414, column: 37, scope: !6565)
!6585 = !DILocation(line: 414, column: 3, scope: !6565)
!6586 = !DILocation(line: 416, column: 1, scope: !6545)
!6587 = distinct !DISubprogram(name: "drm_gem_fb_begin_cpu_access", scope: !3, file: !3, line: 455, type: !6588, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6590)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{!109, !5353, !141}
!6590 = !{!6591, !6592, !6593, !6594, !6595, !6596, !6597}
!6591 = !DILocalVariable(name: "fb", arg: 1, scope: !6587, file: !3, line: 455, type: !5353)
!6592 = !DILocalVariable(name: "dir", arg: 2, scope: !6587, file: !3, line: 455, type: !141)
!6593 = !DILocalVariable(name: "import_attach", scope: !6587, file: !3, line: 457, type: !4925)
!6594 = !DILocalVariable(name: "obj", scope: !6587, file: !3, line: 458, type: !287)
!6595 = !DILocalVariable(name: "i", scope: !6587, file: !3, line: 459, type: !7)
!6596 = !DILocalVariable(name: "ret", scope: !6587, file: !3, line: 460, type: !109)
!6597 = !DILabel(scope: !6587, name: "err___drm_gem_fb_end_cpu_access", file: !3, line: 478)
!6598 = !DILocation(line: 455, column: 57, scope: !6587)
!6599 = !DILocation(line: 455, column: 85, scope: !6587)
!6600 = !DILocation(line: 457, column: 2, scope: !6587)
!6601 = !DILocation(line: 457, column: 29, scope: !6587)
!6602 = !DILocation(line: 458, column: 2, scope: !6587)
!6603 = !DILocation(line: 458, column: 25, scope: !6587)
!6604 = !DILocation(line: 459, column: 2, scope: !6587)
!6605 = !DILocation(line: 459, column: 15, scope: !6587)
!6606 = !DILocation(line: 460, column: 2, scope: !6587)
!6607 = !DILocation(line: 460, column: 6, scope: !6587)
!6608 = !DILocation(line: 462, column: 9, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 462, column: 2)
!6610 = !DILocation(line: 462, column: 7, scope: !6609)
!6611 = !DILocation(line: 462, column: 14, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6609, file: !3, line: 462, column: 2)
!6613 = !DILocation(line: 462, column: 18, scope: !6612)
!6614 = !DILocation(line: 462, column: 22, scope: !6612)
!6615 = !DILocation(line: 462, column: 30, scope: !6612)
!6616 = !DILocation(line: 462, column: 16, scope: !6612)
!6617 = !DILocation(line: 462, column: 2, scope: !6609)
!6618 = !DILocation(line: 463, column: 28, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 462, column: 47)
!6620 = !DILocation(line: 463, column: 32, scope: !6619)
!6621 = !DILocation(line: 463, column: 9, scope: !6619)
!6622 = !DILocation(line: 463, column: 7, scope: !6619)
!6623 = !DILocation(line: 464, column: 8, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6619, file: !3, line: 464, column: 7)
!6625 = !DILocation(line: 464, column: 7, scope: !6619)
!6626 = !DILocation(line: 465, column: 8, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6624, file: !3, line: 464, column: 13)
!6628 = !DILocation(line: 466, column: 4, scope: !6627)
!6629 = !DILocation(line: 468, column: 19, scope: !6619)
!6630 = !DILocation(line: 468, column: 24, scope: !6619)
!6631 = !DILocation(line: 468, column: 17, scope: !6619)
!6632 = !DILocation(line: 469, column: 8, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6619, file: !3, line: 469, column: 7)
!6634 = !DILocation(line: 469, column: 7, scope: !6619)
!6635 = !DILocation(line: 470, column: 4, scope: !6633)
!6636 = !DILocation(line: 471, column: 34, scope: !6619)
!6637 = !DILocation(line: 471, column: 49, scope: !6619)
!6638 = !DILocation(line: 471, column: 57, scope: !6619)
!6639 = !DILocation(line: 471, column: 9, scope: !6619)
!6640 = !DILocation(line: 471, column: 7, scope: !6619)
!6641 = !DILocation(line: 472, column: 7, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6619, file: !3, line: 472, column: 7)
!6643 = !DILocation(line: 472, column: 7, scope: !6619)
!6644 = !DILocation(line: 473, column: 4, scope: !6642)
!6645 = !DILocation(line: 474, column: 2, scope: !6619)
!6646 = !DILocation(line: 462, column: 42, scope: !6612)
!6647 = !DILocation(line: 462, column: 2, scope: !6612)
!6648 = distinct !{!6648, !6617, !6649, !5962, !5963}
!6649 = !DILocation(line: 474, column: 2, scope: !6609)
!6650 = !DILocation(line: 476, column: 2, scope: !6587)
!6651 = !DILocation(line: 478, column: 1, scope: !6587)
!6652 = !DILocation(line: 479, column: 30, scope: !6587)
!6653 = !DILocation(line: 479, column: 34, scope: !6587)
!6654 = !DILocation(line: 479, column: 39, scope: !6587)
!6655 = !DILocation(line: 479, column: 2, scope: !6587)
!6656 = !DILocation(line: 480, column: 9, scope: !6587)
!6657 = !DILocation(line: 480, column: 2, scope: !6587)
!6658 = !DILocation(line: 481, column: 1, scope: !6587)
!6659 = !DISubprogram(name: "dma_buf_begin_cpu_access", scope: !4910, file: !4910, line: 617, type: !4986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6660 = distinct !DISubprogram(name: "__drm_gem_fb_end_cpu_access", scope: !3, file: !3, line: 419, type: !6661, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6663)
!6661 = !DISubroutineType(types: !6662)
!6662 = !{null, !5353, !141, !7}
!6663 = !{!6664, !6665, !6666, !6667, !6668, !6669}
!6664 = !DILocalVariable(name: "fb", arg: 1, scope: !6660, file: !3, line: 419, type: !5353)
!6665 = !DILocalVariable(name: "dir", arg: 2, scope: !6660, file: !3, line: 419, type: !141)
!6666 = !DILocalVariable(name: "num_planes", arg: 3, scope: !6660, file: !3, line: 420, type: !7)
!6667 = !DILocalVariable(name: "import_attach", scope: !6660, file: !3, line: 422, type: !4925)
!6668 = !DILocalVariable(name: "obj", scope: !6660, file: !3, line: 423, type: !287)
!6669 = !DILocalVariable(name: "ret", scope: !6660, file: !3, line: 424, type: !109)
!6670 = !DILocation(line: 419, column: 65, scope: !6660)
!6671 = !DILocation(line: 419, column: 93, scope: !6660)
!6672 = !DILocation(line: 420, column: 19, scope: !6660)
!6673 = !DILocation(line: 422, column: 2, scope: !6660)
!6674 = !DILocation(line: 422, column: 29, scope: !6660)
!6675 = !DILocation(line: 423, column: 2, scope: !6660)
!6676 = !DILocation(line: 423, column: 25, scope: !6660)
!6677 = !DILocation(line: 424, column: 2, scope: !6660)
!6678 = !DILocation(line: 424, column: 6, scope: !6660)
!6679 = !DILocation(line: 426, column: 2, scope: !6660)
!6680 = !DILocation(line: 426, column: 9, scope: !6660)
!6681 = !DILocation(line: 427, column: 3, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6660, file: !3, line: 426, column: 21)
!6683 = !DILocation(line: 428, column: 28, scope: !6682)
!6684 = !DILocation(line: 428, column: 32, scope: !6682)
!6685 = !DILocation(line: 428, column: 9, scope: !6682)
!6686 = !DILocation(line: 428, column: 7, scope: !6682)
!6687 = !DILocation(line: 429, column: 8, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 429, column: 7)
!6689 = !DILocation(line: 429, column: 7, scope: !6682)
!6690 = !DILocation(line: 430, column: 4, scope: !6688)
!6691 = distinct !{!6691, !6679, !6692, !5962, !5963}
!6692 = !DILocation(line: 438, column: 2, scope: !6660)
!6693 = !DILocation(line: 431, column: 19, scope: !6682)
!6694 = !DILocation(line: 431, column: 24, scope: !6682)
!6695 = !DILocation(line: 431, column: 17, scope: !6682)
!6696 = !DILocation(line: 432, column: 8, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 432, column: 7)
!6698 = !DILocation(line: 432, column: 7, scope: !6682)
!6699 = !DILocation(line: 433, column: 4, scope: !6697)
!6700 = !DILocation(line: 434, column: 32, scope: !6682)
!6701 = !DILocation(line: 434, column: 47, scope: !6682)
!6702 = !DILocation(line: 434, column: 55, scope: !6682)
!6703 = !DILocation(line: 434, column: 9, scope: !6682)
!6704 = !DILocation(line: 434, column: 7, scope: !6682)
!6705 = !DILocation(line: 435, column: 7, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 435, column: 7)
!6707 = !DILocation(line: 435, column: 7, scope: !6682)
!6708 = !DILocation(line: 436, column: 4, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6706, file: !3, line: 436, column: 4)
!6710 = !DILocation(line: 436, column: 4, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 436, column: 4)
!6712 = !DILocation(line: 436, column: 4, scope: !6706)
!6713 = !DILocation(line: 439, column: 1, scope: !6660)
!6714 = distinct !DISubprogram(name: "drm_gem_fb_end_cpu_access", scope: !3, file: !3, line: 495, type: !6715, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6717)
!6715 = !DISubroutineType(types: !6716)
!6716 = !{null, !5353, !141}
!6717 = !{!6718, !6719}
!6718 = !DILocalVariable(name: "fb", arg: 1, scope: !6714, file: !3, line: 495, type: !5353)
!6719 = !DILocalVariable(name: "dir", arg: 2, scope: !6714, file: !3, line: 495, type: !141)
!6720 = !DILocation(line: 495, column: 56, scope: !6714)
!6721 = !DILocation(line: 495, column: 84, scope: !6714)
!6722 = !DILocation(line: 497, column: 30, scope: !6714)
!6723 = !DILocation(line: 497, column: 34, scope: !6714)
!6724 = !DILocation(line: 497, column: 39, scope: !6714)
!6725 = !DILocation(line: 497, column: 43, scope: !6714)
!6726 = !DILocation(line: 497, column: 51, scope: !6714)
!6727 = !DILocation(line: 497, column: 2, scope: !6714)
!6728 = !DILocation(line: 498, column: 1, scope: !6714)
!6729 = distinct !DISubprogram(name: "drm_gem_fb_afbc_init", scope: !3, file: !3, line: 597, type: !6730, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6742)
!6730 = !DISubroutineType(types: !6731)
!6731 = !{!109, !305, !5453, !6732}
!6732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6733, size: 64)
!6733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_afbc_framebuffer", file: !5355, line: 305, size: 1792, elements: !6734)
!6734 = !{!6735, !6736, !6737, !6738, !6739, !6740, !6741}
!6735 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6733, file: !5355, line: 309, baseType: !5354, size: 1600)
!6736 = !DIDerivedType(tag: DW_TAG_member, name: "block_width", scope: !6733, file: !5355, line: 313, baseType: !549, size: 32, offset: 1600)
!6737 = !DIDerivedType(tag: DW_TAG_member, name: "block_height", scope: !6733, file: !5355, line: 317, baseType: !549, size: 32, offset: 1632)
!6738 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_width", scope: !6733, file: !5355, line: 321, baseType: !549, size: 32, offset: 1664)
!6739 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_height", scope: !6733, file: !5355, line: 325, baseType: !549, size: 32, offset: 1696)
!6740 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6733, file: !5355, line: 329, baseType: !549, size: 32, offset: 1728)
!6741 = !DIDerivedType(tag: DW_TAG_member, name: "afbc_size", scope: !6733, file: !5355, line: 333, baseType: !549, size: 32, offset: 1760)
!6742 = !{!6743, !6744, !6745, !6746, !6747, !6748}
!6743 = !DILocalVariable(name: "dev", arg: 1, scope: !6729, file: !3, line: 597, type: !305)
!6744 = !DILocalVariable(name: "mode_cmd", arg: 2, scope: !6729, file: !3, line: 598, type: !5453)
!6745 = !DILocalVariable(name: "afbc_fb", arg: 3, scope: !6729, file: !3, line: 599, type: !6732)
!6746 = !DILocalVariable(name: "info", scope: !6729, file: !3, line: 601, type: !5396)
!6747 = !DILocalVariable(name: "objs", scope: !6729, file: !3, line: 602, type: !6234)
!6748 = !DILocalVariable(name: "ret", scope: !6729, file: !3, line: 603, type: !109)
!6749 = !DILocation(line: 597, column: 45, scope: !6729)
!6750 = !DILocation(line: 598, column: 36, scope: !6729)
!6751 = !DILocation(line: 599, column: 34, scope: !6729)
!6752 = !DILocation(line: 601, column: 2, scope: !6729)
!6753 = !DILocation(line: 601, column: 32, scope: !6729)
!6754 = !DILocation(line: 602, column: 2, scope: !6729)
!6755 = !DILocation(line: 602, column: 26, scope: !6729)
!6756 = !DILocation(line: 603, column: 2, scope: !6729)
!6757 = !DILocation(line: 603, column: 6, scope: !6729)
!6758 = !DILocation(line: 605, column: 9, scope: !6729)
!6759 = !DILocation(line: 605, column: 18, scope: !6729)
!6760 = !DILocation(line: 605, column: 23, scope: !6729)
!6761 = !DILocation(line: 605, column: 7, scope: !6729)
!6762 = !DILocation(line: 606, column: 29, scope: !6729)
!6763 = !DILocation(line: 606, column: 34, scope: !6729)
!6764 = !DILocation(line: 606, column: 9, scope: !6729)
!6765 = !DILocation(line: 606, column: 7, scope: !6729)
!6766 = !DILocation(line: 607, column: 7, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 607, column: 6)
!6768 = !DILocation(line: 607, column: 6, scope: !6729)
!6769 = !DILocation(line: 608, column: 3, scope: !6767)
!6770 = !DILocation(line: 610, column: 30, scope: !6729)
!6771 = !DILocation(line: 610, column: 35, scope: !6729)
!6772 = !DILocation(line: 610, column: 45, scope: !6729)
!6773 = !DILocation(line: 610, column: 8, scope: !6729)
!6774 = !DILocation(line: 610, column: 6, scope: !6729)
!6775 = !DILocation(line: 611, column: 6, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 611, column: 6)
!6777 = !DILocation(line: 611, column: 10, scope: !6776)
!6778 = !DILocation(line: 611, column: 6, scope: !6729)
!6779 = !DILocation(line: 612, column: 10, scope: !6776)
!6780 = !DILocation(line: 612, column: 3, scope: !6776)
!6781 = !DILocation(line: 614, column: 6, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6729, file: !3, line: 614, column: 6)
!6783 = !DILocation(line: 614, column: 15, scope: !6782)
!6784 = !DILocation(line: 614, column: 22, scope: !6782)
!6785 = !DILocation(line: 614, column: 31, scope: !6782)
!6786 = !DILocation(line: 614, column: 20, scope: !6782)
!6787 = !DILocation(line: 614, column: 6, scope: !6729)
!6788 = !DILocation(line: 615, column: 3, scope: !6782)
!6789 = !DILocation(line: 617, column: 2, scope: !6729)
!6790 = !DILocation(line: 618, column: 1, scope: !6729)
!6791 = distinct !DISubprogram(name: "drm_gem_afbc_min_size", scope: !3, file: !3, line: 522, type: !6730, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6792)
!6792 = !{!6793, !6794, !6795, !6796, !6797, !6798, !6799, !6800}
!6793 = !DILocalVariable(name: "dev", arg: 1, scope: !6791, file: !3, line: 522, type: !305)
!6794 = !DILocalVariable(name: "mode_cmd", arg: 2, scope: !6791, file: !3, line: 523, type: !5453)
!6795 = !DILocalVariable(name: "afbc_fb", arg: 3, scope: !6791, file: !3, line: 524, type: !6732)
!6796 = !DILocalVariable(name: "n_blocks", scope: !6791, file: !3, line: 526, type: !279)
!6797 = !DILocalVariable(name: "w_alignment", scope: !6791, file: !3, line: 526, type: !279)
!6798 = !DILocalVariable(name: "h_alignment", scope: !6791, file: !3, line: 526, type: !279)
!6799 = !DILocalVariable(name: "hdr_alignment", scope: !6791, file: !3, line: 526, type: !279)
!6800 = !DILocalVariable(name: "bpp", scope: !6791, file: !3, line: 528, type: !279)
!6801 = !DILocation(line: 522, column: 53, scope: !6791)
!6802 = !DILocation(line: 523, column: 37, scope: !6791)
!6803 = !DILocation(line: 524, column: 35, scope: !6791)
!6804 = !DILocation(line: 526, column: 2, scope: !6791)
!6805 = !DILocation(line: 526, column: 8, scope: !6791)
!6806 = !DILocation(line: 526, column: 18, scope: !6791)
!6807 = !DILocation(line: 526, column: 31, scope: !6791)
!6808 = !DILocation(line: 526, column: 44, scope: !6791)
!6809 = !DILocation(line: 528, column: 2, scope: !6791)
!6810 = !DILocation(line: 528, column: 8, scope: !6791)
!6811 = !DILocation(line: 530, column: 10, scope: !6791)
!6812 = !DILocation(line: 530, column: 20, scope: !6791)
!6813 = !DILocation(line: 530, column: 32, scope: !6791)
!6814 = !DILocation(line: 530, column: 2, scope: !6791)
!6815 = !DILocation(line: 532, column: 3, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6791, file: !3, line: 530, column: 67)
!6817 = !DILocation(line: 532, column: 12, scope: !6816)
!6818 = !DILocation(line: 532, column: 24, scope: !6816)
!6819 = !DILocation(line: 533, column: 3, scope: !6816)
!6820 = !DILocation(line: 533, column: 12, scope: !6816)
!6821 = !DILocation(line: 533, column: 25, scope: !6816)
!6822 = !DILocation(line: 534, column: 3, scope: !6816)
!6823 = !DILocation(line: 536, column: 3, scope: !6816)
!6824 = !DILocation(line: 536, column: 12, scope: !6816)
!6825 = !DILocation(line: 536, column: 24, scope: !6816)
!6826 = !DILocation(line: 537, column: 3, scope: !6816)
!6827 = !DILocation(line: 537, column: 12, scope: !6816)
!6828 = !DILocation(line: 537, column: 25, scope: !6816)
!6829 = !DILocation(line: 538, column: 3, scope: !6816)
!6830 = !DILocation(line: 541, column: 2, scope: !6816)
!6831 = !DILocation(line: 543, column: 3, scope: !6816)
!6832 = !DILocation(line: 546, column: 3, scope: !6816)
!6833 = !DILocation(line: 550, column: 16, scope: !6791)
!6834 = !DILocation(line: 550, column: 25, scope: !6791)
!6835 = !DILocation(line: 550, column: 14, scope: !6791)
!6836 = !DILocation(line: 551, column: 16, scope: !6791)
!6837 = !DILocation(line: 551, column: 25, scope: !6791)
!6838 = !DILocation(line: 551, column: 14, scope: !6791)
!6839 = !DILocation(line: 552, column: 16, scope: !6791)
!6840 = !DILocation(line: 553, column: 6, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6791, file: !3, line: 553, column: 6)
!6842 = !DILocation(line: 553, column: 16, scope: !6841)
!6843 = !DILocation(line: 553, column: 28, scope: !6841)
!6844 = !DILocation(line: 553, column: 6, scope: !6791)
!6845 = !DILocation(line: 554, column: 15, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 553, column: 53)
!6847 = !DILocation(line: 555, column: 15, scope: !6846)
!6848 = !DILocation(line: 556, column: 17, scope: !6846)
!6849 = !DILocation(line: 557, column: 2, scope: !6846)
!6850 = !DILocation(line: 559, column: 27, scope: !6791)
!6851 = !DILocation(line: 559, column: 2, scope: !6791)
!6852 = !DILocation(line: 559, column: 11, scope: !6791)
!6853 = !DILocation(line: 559, column: 25, scope: !6791)
!6854 = !DILocation(line: 560, column: 28, scope: !6791)
!6855 = !DILocation(line: 560, column: 2, scope: !6791)
!6856 = !DILocation(line: 560, column: 11, scope: !6791)
!6857 = !DILocation(line: 560, column: 26, scope: !6791)
!6858 = !DILocation(line: 561, column: 20, scope: !6791)
!6859 = !DILocation(line: 561, column: 30, scope: !6791)
!6860 = !DILocation(line: 561, column: 2, scope: !6791)
!6861 = !DILocation(line: 561, column: 11, scope: !6791)
!6862 = !DILocation(line: 561, column: 18, scope: !6791)
!6863 = !DILocation(line: 563, column: 29, scope: !6791)
!6864 = !DILocation(line: 563, column: 34, scope: !6791)
!6865 = !DILocation(line: 563, column: 8, scope: !6791)
!6866 = !DILocation(line: 563, column: 6, scope: !6791)
!6867 = !DILocation(line: 564, column: 7, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6791, file: !3, line: 564, column: 6)
!6869 = !DILocation(line: 564, column: 6, scope: !6791)
!6870 = !DILocation(line: 565, column: 3, scope: !6871)
!6871 = distinct !DILexicalBlock(scope: !6868, file: !3, line: 564, column: 12)
!6872 = !DILocation(line: 566, column: 3, scope: !6871)
!6873 = !DILocation(line: 569, column: 14, scope: !6791)
!6874 = !DILocation(line: 569, column: 23, scope: !6791)
!6875 = !DILocation(line: 569, column: 39, scope: !6791)
!6876 = !DILocation(line: 569, column: 48, scope: !6791)
!6877 = !DILocation(line: 569, column: 37, scope: !6791)
!6878 = !DILocation(line: 570, column: 6, scope: !6791)
!6879 = !DILocation(line: 569, column: 11, scope: !6791)
!6880 = !DILocation(line: 571, column: 23, scope: !6791)
!6881 = !DILocation(line: 571, column: 2, scope: !6791)
!6882 = !DILocation(line: 571, column: 11, scope: !6791)
!6883 = !DILocation(line: 571, column: 21, scope: !6791)
!6884 = !DILocation(line: 572, column: 24, scope: !6791)
!6885 = !DILocation(line: 572, column: 35, scope: !6791)
!6886 = !DILocation(line: 572, column: 33, scope: !6791)
!6887 = !DILocation(line: 572, column: 2, scope: !6791)
!6888 = !DILocation(line: 572, column: 11, scope: !6791)
!6889 = !DILocation(line: 572, column: 21, scope: !6791)
!6890 = !DILocation(line: 575, column: 2, scope: !6791)
!6891 = !DILocation(line: 576, column: 1, scope: !6791)
!6892 = distinct !DISubprogram(name: "kobject_name", scope: !316, file: !316, line: 87, type: !389, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6893)
!6893 = !{!6894}
!6894 = !DILocalVariable(name: "kobj", arg: 1, scope: !6892, file: !316, line: 87, type: !384)
!6895 = !DILocation(line: 87, column: 62, scope: !6892)
!6896 = !DILocation(line: 89, column: 9, scope: !6892)
!6897 = !DILocation(line: 89, column: 15, scope: !6892)
!6898 = !DILocation(line: 89, column: 2, scope: !6892)
!6899 = distinct !DISubprogram(name: "__drm_gem_object_put", scope: !216, file: !216, line: 489, type: !5658, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6900 = !{!6901}
!6901 = !DILocalVariable(name: "obj", arg: 1, scope: !6899, file: !216, line: 489, type: !287)
!6902 = !DILocation(line: 489, column: 45, scope: !6899)
!6903 = !DILocation(line: 491, column: 12, scope: !6899)
!6904 = !DILocation(line: 491, column: 17, scope: !6899)
!6905 = !DILocation(line: 491, column: 2, scope: !6899)
!6906 = !DILocation(line: 492, column: 1, scope: !6899)
!6907 = distinct !DISubprogram(name: "kref_put", scope: !292, file: !292, line: 62, type: !6908, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6910)
!6908 = !DISubroutineType(types: !6909)
!6909 = !{!109, !5393, !5390}
!6910 = !{!6911, !6912}
!6911 = !DILocalVariable(name: "kref", arg: 1, scope: !6907, file: !292, line: 62, type: !5393)
!6912 = !DILocalVariable(name: "release", arg: 2, scope: !6907, file: !292, line: 62, type: !5390)
!6913 = !DILocation(line: 62, column: 41, scope: !6907)
!6914 = !DILocation(line: 62, column: 54, scope: !6907)
!6915 = !DILocation(line: 64, column: 29, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6907, file: !292, line: 64, column: 6)
!6917 = !DILocation(line: 64, column: 35, scope: !6916)
!6918 = !DILocation(line: 64, column: 6, scope: !6916)
!6919 = !DILocation(line: 64, column: 6, scope: !6907)
!6920 = !DILocation(line: 65, column: 3, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6916, file: !292, line: 64, column: 46)
!6922 = !DILocation(line: 65, column: 11, scope: !6921)
!6923 = !DILocation(line: 66, column: 3, scope: !6921)
!6924 = !DILocation(line: 68, column: 2, scope: !6907)
!6925 = !DILocation(line: 69, column: 1, scope: !6907)
!6926 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !239, file: !239, line: 331, type: !6927, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6930)
!6927 = !DISubroutineType(types: !6928)
!6928 = !{!820, !6929}
!6929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!6930 = !{!6931}
!6931 = !DILocalVariable(name: "r", arg: 1, scope: !6926, file: !239, line: 331, type: !6929)
!6932 = !DILocation(line: 331, column: 67, scope: !6926)
!6933 = !DILocation(line: 333, column: 33, scope: !6926)
!6934 = !DILocation(line: 333, column: 9, scope: !6926)
!6935 = !DILocation(line: 333, column: 2, scope: !6926)
!6936 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !239, file: !239, line: 313, type: !6937, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6939)
!6937 = !DISubroutineType(types: !6938)
!6938 = !{!820, !6929, !869}
!6939 = !{!6940, !6941}
!6940 = !DILocalVariable(name: "r", arg: 1, scope: !6936, file: !239, line: 313, type: !6929)
!6941 = !DILocalVariable(name: "oldp", arg: 2, scope: !6936, file: !239, line: 313, type: !869)
!6942 = !DILocation(line: 313, column: 69, scope: !6936)
!6943 = !DILocation(line: 313, column: 77, scope: !6936)
!6944 = !DILocation(line: 315, column: 36, scope: !6936)
!6945 = !DILocation(line: 315, column: 39, scope: !6936)
!6946 = !DILocation(line: 315, column: 9, scope: !6936)
!6947 = !DILocation(line: 315, column: 2, scope: !6936)
!6948 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !239, file: !239, line: 270, type: !6949, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6951)
!6949 = !DISubroutineType(types: !6950)
!6950 = !{!820, !109, !6929, !869}
!6951 = !{!6952, !6953, !6954, !6955}
!6952 = !DILocalVariable(name: "i", arg: 1, scope: !6948, file: !239, line: 270, type: !109)
!6953 = !DILocalVariable(name: "r", arg: 2, scope: !6948, file: !239, line: 270, type: !6929)
!6954 = !DILocalVariable(name: "oldp", arg: 3, scope: !6948, file: !239, line: 270, type: !869)
!6955 = !DILocalVariable(name: "old", scope: !6948, file: !239, line: 272, type: !109)
!6956 = !DILocation(line: 270, column: 61, scope: !6948)
!6957 = !DILocation(line: 270, column: 76, scope: !6948)
!6958 = !DILocation(line: 270, column: 84, scope: !6948)
!6959 = !DILocation(line: 272, column: 2, scope: !6948)
!6960 = !DILocation(line: 272, column: 6, scope: !6948)
!6961 = !DILocation(line: 272, column: 37, scope: !6948)
!6962 = !DILocation(line: 272, column: 41, scope: !6948)
!6963 = !DILocation(line: 272, column: 44, scope: !6948)
!6964 = !DILocation(line: 272, column: 12, scope: !6948)
!6965 = !DILocation(line: 274, column: 6, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6948, file: !239, line: 274, column: 6)
!6967 = !DILocation(line: 274, column: 6, scope: !6948)
!6968 = !DILocation(line: 275, column: 11, scope: !6966)
!6969 = !DILocation(line: 275, column: 4, scope: !6966)
!6970 = !DILocation(line: 275, column: 9, scope: !6966)
!6971 = !DILocation(line: 275, column: 3, scope: !6966)
!6972 = !DILocation(line: 277, column: 6, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6948, file: !239, line: 277, column: 6)
!6974 = !DILocation(line: 277, column: 13, scope: !6973)
!6975 = !DILocation(line: 277, column: 10, scope: !6973)
!6976 = !DILocation(line: 277, column: 6, scope: !6948)
!6977 = !DILocation(line: 278, column: 3, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6973, file: !239, line: 277, column: 16)
!6979 = !DILocation(line: 278, column: 3, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6978, file: !239, line: 278, column: 3)
!6981 = !DILocation(line: 278, column: 3, scope: !6982)
!6982 = distinct !DILexicalBlock(scope: !6980, file: !239, line: 278, column: 3)
!6983 = !DILocation(line: 278, column: 3, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6980, file: !239, line: 278, column: 3)
!6985 = !DILocation(line: 278, column: 3, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !6984, file: !239, line: 278, column: 3)
!6987 = !{i64 2150239616}
!6988 = !DILocation(line: 279, column: 3, scope: !6978)
!6989 = !DILocation(line: 282, column: 6, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6948, file: !239, line: 282, column: 6)
!6991 = !DILocation(line: 282, column: 6, scope: !6948)
!6992 = !DILocation(line: 283, column: 26, scope: !6990)
!6993 = !DILocation(line: 283, column: 3, scope: !6990)
!6994 = !DILocation(line: 285, column: 2, scope: !6948)
!6995 = !DILocation(line: 286, column: 1, scope: !6948)
!6996 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6997, file: !6997, line: 397, type: !6998, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7001)
!6997 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6998 = !DISubroutineType(types: !6999)
!6999 = !{!109, !109, !7000}
!7000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!7001 = !{!7002, !7003}
!7002 = !DILocalVariable(name: "i", arg: 1, scope: !6996, file: !6997, line: 397, type: !109)
!7003 = !DILocalVariable(name: "v", arg: 2, scope: !6996, file: !6997, line: 397, type: !7000)
!7004 = !DILocation(line: 397, column: 30, scope: !6996)
!7005 = !DILocation(line: 397, column: 43, scope: !6996)
!7006 = !DILocation(line: 399, column: 2, scope: !6996)
!7007 = !DILocation(line: 399, column: 2, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !6996, file: !6997, line: 399, column: 2)
!7009 = !DILocation(line: 400, column: 31, scope: !6996)
!7010 = !DILocation(line: 400, column: 2, scope: !6996)
!7011 = !DILocation(line: 401, column: 38, scope: !6996)
!7012 = !DILocation(line: 401, column: 41, scope: !6996)
!7013 = !DILocation(line: 401, column: 9, scope: !6996)
!7014 = !DILocation(line: 401, column: 2, scope: !6996)
!7015 = !DISubprogram(name: "refcount_warn_saturate", scope: !239, file: !239, line: 127, type: !7016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7016 = !DISubroutineType(types: !7017)
!7017 = !{null, !6929, !238}
!7018 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7019, file: !7019, line: 94, type: !7020, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7025)
!7019 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7020 = !DISubroutineType(types: !7021)
!7021 = !{null, !7022, !448}
!7022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7023, size: 64)
!7023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7024)
!7024 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7025 = !{!7026, !7027}
!7026 = !DILocalVariable(name: "v", arg: 1, scope: !7018, file: !7019, line: 94, type: !7022)
!7027 = !DILocalVariable(name: "size", arg: 2, scope: !7018, file: !7019, line: 94, type: !448)
!7028 = !DILocation(line: 94, column: 79, scope: !7018)
!7029 = !DILocation(line: 94, column: 89, scope: !7018)
!7030 = !DILocation(line: 96, column: 20, scope: !7018)
!7031 = !DILocation(line: 96, column: 23, scope: !7018)
!7032 = !DILocation(line: 96, column: 2, scope: !7018)
!7033 = !DILocation(line: 97, column: 2, scope: !7018)
!7034 = !DILocation(line: 98, column: 1, scope: !7018)
!7035 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7036, file: !7036, line: 928, type: !6998, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7037)
!7036 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7037 = !{!7038, !7039}
!7038 = !DILocalVariable(name: "i", arg: 1, scope: !7035, file: !7036, line: 928, type: !109)
!7039 = !DILocalVariable(name: "v", arg: 2, scope: !7035, file: !7036, line: 928, type: !7000)
!7040 = !DILocation(line: 928, column: 34, scope: !7035)
!7041 = !DILocation(line: 928, column: 47, scope: !7035)
!7042 = !DILocation(line: 936, column: 31, scope: !7035)
!7043 = !DILocation(line: 936, column: 34, scope: !7035)
!7044 = !DILocation(line: 936, column: 9, scope: !7035)
!7045 = !DILocation(line: 936, column: 2, scope: !7035)
!7046 = distinct !DISubprogram(name: "kasan_check_write", scope: !7047, file: !7047, line: 44, type: !7048, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7050)
!7047 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7048 = !DISubroutineType(types: !7049)
!7049 = !{!820, !7022, !7}
!7050 = !{!7051, !7052}
!7051 = !DILocalVariable(name: "p", arg: 1, scope: !7046, file: !7047, line: 44, type: !7022)
!7052 = !DILocalVariable(name: "size", arg: 2, scope: !7046, file: !7047, line: 44, type: !7)
!7053 = !DILocation(line: 44, column: 59, scope: !7046)
!7054 = !DILocation(line: 44, column: 75, scope: !7046)
!7055 = !DILocation(line: 46, column: 2, scope: !7046)
!7056 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7057, file: !7057, line: 229, type: !7058, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7060)
!7057 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7058 = !DISubroutineType(types: !7059)
!7059 = !{null, !7022, !448, !109}
!7060 = !{!7061, !7062, !7063}
!7061 = !DILocalVariable(name: "ptr", arg: 1, scope: !7056, file: !7057, line: 229, type: !7022)
!7062 = !DILocalVariable(name: "size", arg: 2, scope: !7056, file: !7057, line: 229, type: !448)
!7063 = !DILocalVariable(name: "type", arg: 3, scope: !7056, file: !7057, line: 230, type: !109)
!7064 = !DILocation(line: 229, column: 60, scope: !7056)
!7065 = !DILocation(line: 229, column: 72, scope: !7056)
!7066 = !DILocation(line: 230, column: 15, scope: !7056)
!7067 = !DILocation(line: 230, column: 23, scope: !7056)
!7068 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7069, file: !7069, line: 101, type: !6998, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7070)
!7069 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7070 = !{!7071, !7072, !7073}
!7071 = !DILocalVariable(name: "i", arg: 1, scope: !7068, file: !7069, line: 101, type: !109)
!7072 = !DILocalVariable(name: "v", arg: 2, scope: !7068, file: !7069, line: 101, type: !7000)
!7073 = !DILocalVariable(name: "__ret", scope: !7074, file: !7069, line: 103, type: !109)
!7074 = distinct !DILexicalBlock(scope: !7068, file: !7069, line: 103, column: 9)
!7075 = !DILocation(line: 101, column: 54, scope: !7068)
!7076 = !DILocation(line: 101, column: 67, scope: !7068)
!7077 = !DILocation(line: 103, column: 9, scope: !7074)
!7078 = !{i64 2148949103, i64 2148949142, i64 2148949163, i64 2148949200, i64 2148949223, i64 2148949232}
!7079 = !DILocation(line: 103, column: 9, scope: !7068)
!7080 = !DILocation(line: 103, column: 2, scope: !7068)
!7081 = distinct !DISubprogram(name: "drm_core_check_feature", scope: !247, file: !247, line: 566, type: !7082, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7086)
!7082 = !DISubroutineType(types: !7083)
!7083 = !{!820, !7084, !246}
!7084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7085, size: 64)
!7085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!7086 = !{!7087, !7088}
!7087 = !DILocalVariable(name: "dev", arg: 1, scope: !7081, file: !247, line: 566, type: !7084)
!7088 = !DILocalVariable(name: "feature", arg: 2, scope: !7081, file: !247, line: 567, type: !246)
!7089 = !DILocation(line: 566, column: 68, scope: !7081)
!7090 = !DILocation(line: 567, column: 32, scope: !7081)
!7091 = !DILocation(line: 569, column: 37, scope: !7081)
!7092 = !DILocation(line: 569, column: 42, scope: !7081)
!7093 = !DILocation(line: 569, column: 9, scope: !7081)
!7094 = !DILocation(line: 569, column: 2, scope: !7081)
!7095 = distinct !DISubprogram(name: "drm_core_check_all_features", scope: !247, file: !247, line: 548, type: !7096, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7098)
!7096 = !DISubroutineType(types: !7097)
!7097 = !{!820, !7084, !549}
!7098 = !{!7099, !7100, !7101}
!7099 = !DILocalVariable(name: "dev", arg: 1, scope: !7095, file: !247, line: 548, type: !7084)
!7100 = !DILocalVariable(name: "features", arg: 2, scope: !7095, file: !247, line: 549, type: !549)
!7101 = !DILocalVariable(name: "supported", scope: !7095, file: !247, line: 551, type: !549)
!7102 = !DILocation(line: 548, column: 73, scope: !7095)
!7103 = !DILocation(line: 549, column: 17, scope: !7095)
!7104 = !DILocation(line: 551, column: 2, scope: !7095)
!7105 = !DILocation(line: 551, column: 6, scope: !7095)
!7106 = !DILocation(line: 551, column: 18, scope: !7095)
!7107 = !DILocation(line: 551, column: 23, scope: !7095)
!7108 = !DILocation(line: 551, column: 31, scope: !7095)
!7109 = !DILocation(line: 551, column: 49, scope: !7095)
!7110 = !DILocation(line: 551, column: 54, scope: !7095)
!7111 = !DILocation(line: 551, column: 47, scope: !7095)
!7112 = !DILocation(line: 553, column: 9, scope: !7095)
!7113 = !DILocation(line: 553, column: 18, scope: !7095)
!7114 = !DILocation(line: 553, column: 22, scope: !7095)
!7115 = !DILocation(line: 553, column: 34, scope: !7095)
!7116 = !DILocation(line: 553, column: 32, scope: !7095)
!7117 = !DILocation(line: 553, column: 47, scope: !7095)
!7118 = !DILocation(line: 553, column: 44, scope: !7095)
!7119 = !DILocation(line: 0, scope: !7095)
!7120 = !DILocation(line: 554, column: 1, scope: !7095)
!7121 = !DILocation(line: 553, column: 2, scope: !7095)
!7122 = !DISubprogram(name: "drm_helper_mode_fill_fb_struct", scope: !7123, file: !7123, line: 34, type: !7124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7123 = !DIFile(filename: "./include/drm/drm_modeset_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bda0a31346f6c0654c3bf45e81bda67a")
!7124 = !DISubroutineType(types: !7125)
!7125 = !{null, !305, !5353, !5453}
!7126 = !DISubprogram(name: "drm_framebuffer_init", scope: !5355, file: !5355, line: 218, type: !7127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7127 = !DISubroutineType(types: !7128)
!7128 = !{!109, !305, !5353, !5418}
!7129 = !DISubprogram(name: "_dev_err", scope: !7130, file: !7130, line: 50, type: !7131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7130 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!7131 = !DISubroutineType(types: !7132)
!7132 = !{null, !4354, !319, null}
!7133 = distinct !DISubprogram(name: "kmalloc", scope: !265, file: !265, line: 591, type: !6337, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7134)
!7134 = !{!7135, !7136, !7137}
!7135 = !DILocalVariable(name: "size", arg: 1, scope: !7133, file: !265, line: 591, type: !448)
!7136 = !DILocalVariable(name: "flags", arg: 2, scope: !7133, file: !265, line: 591, type: !276)
!7137 = !DILocalVariable(name: "index", scope: !7138, file: !265, line: 594, type: !7)
!7138 = distinct !DILexicalBlock(scope: !7139, file: !265, line: 593, column: 42)
!7139 = distinct !DILexicalBlock(scope: !7133, file: !265, line: 593, column: 6)
!7140 = !DILocation(line: 591, column: 61, scope: !7133)
!7141 = !DILocation(line: 591, column: 73, scope: !7133)
!7142 = !DILocation(line: 593, column: 27, scope: !7139)
!7143 = !DILocation(line: 593, column: 6, scope: !7139)
!7144 = !DILocation(line: 593, column: 33, scope: !7139)
!7145 = !DILocation(line: 593, column: 36, scope: !7139)
!7146 = !DILocation(line: 593, column: 6, scope: !7133)
!7147 = !DILocation(line: 594, column: 3, scope: !7138)
!7148 = !DILocation(line: 594, column: 16, scope: !7138)
!7149 = !DILocation(line: 596, column: 7, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7138, file: !265, line: 596, column: 7)
!7151 = !DILocation(line: 596, column: 12, scope: !7150)
!7152 = !DILocation(line: 596, column: 7, scope: !7138)
!7153 = !DILocation(line: 597, column: 25, scope: !7150)
!7154 = !DILocation(line: 597, column: 31, scope: !7150)
!7155 = !DILocation(line: 597, column: 11, scope: !7150)
!7156 = !DILocation(line: 597, column: 4, scope: !7150)
!7157 = !DILocation(line: 599, column: 11, scope: !7138)
!7158 = !DILocation(line: 599, column: 9, scope: !7138)
!7159 = !DILocation(line: 601, column: 33, scope: !7138)
!7160 = !DILocation(line: 601, column: 40, scope: !7138)
!7161 = !DILocation(line: 601, column: 20, scope: !7138)
!7162 = !DILocation(line: 601, column: 5, scope: !7138)
!7163 = !DILocation(line: 601, column: 51, scope: !7138)
!7164 = !DILocation(line: 602, column: 5, scope: !7138)
!7165 = !DILocation(line: 602, column: 12, scope: !7138)
!7166 = !DILocation(line: 600, column: 10, scope: !7138)
!7167 = !DILocation(line: 600, column: 3, scope: !7138)
!7168 = !DILocation(line: 603, column: 2, scope: !7139)
!7169 = !DILocation(line: 604, column: 19, scope: !7133)
!7170 = !DILocation(line: 604, column: 25, scope: !7133)
!7171 = !DILocation(line: 604, column: 9, scope: !7133)
!7172 = !DILocation(line: 604, column: 2, scope: !7133)
!7173 = !DILocation(line: 605, column: 1, scope: !7133)
!7174 = !DISubprogram(name: "kmalloc_large", scope: !265, file: !265, line: 531, type: !6337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7175 = distinct !DISubprogram(name: "__kmalloc_index", scope: !265, file: !265, line: 444, type: !7176, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7178)
!7176 = !DISubroutineType(types: !7177)
!7177 = !{!7, !448, !820}
!7178 = !{!7179, !7180}
!7179 = !DILocalVariable(name: "size", arg: 1, scope: !7175, file: !265, line: 444, type: !448)
!7180 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7175, file: !265, line: 445, type: !820)
!7181 = !DILocation(line: 444, column: 60, scope: !7175)
!7182 = !DILocation(line: 445, column: 16, scope: !7175)
!7183 = !DILocation(line: 447, column: 7, scope: !7184)
!7184 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 447, column: 6)
!7185 = !DILocation(line: 447, column: 6, scope: !7175)
!7186 = !DILocation(line: 448, column: 3, scope: !7184)
!7187 = !DILocation(line: 450, column: 6, scope: !7188)
!7188 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 450, column: 6)
!7189 = !DILocation(line: 450, column: 11, scope: !7188)
!7190 = !DILocation(line: 450, column: 6, scope: !7175)
!7191 = !DILocation(line: 451, column: 3, scope: !7188)
!7192 = !DILocation(line: 453, column: 32, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 453, column: 6)
!7194 = !DILocation(line: 453, column: 37, scope: !7193)
!7195 = !DILocation(line: 453, column: 42, scope: !7193)
!7196 = !DILocation(line: 453, column: 45, scope: !7193)
!7197 = !DILocation(line: 453, column: 50, scope: !7193)
!7198 = !DILocation(line: 453, column: 6, scope: !7175)
!7199 = !DILocation(line: 454, column: 3, scope: !7193)
!7200 = !DILocation(line: 455, column: 32, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 455, column: 6)
!7202 = !DILocation(line: 455, column: 37, scope: !7201)
!7203 = !DILocation(line: 455, column: 43, scope: !7201)
!7204 = !DILocation(line: 455, column: 46, scope: !7201)
!7205 = !DILocation(line: 455, column: 51, scope: !7201)
!7206 = !DILocation(line: 455, column: 6, scope: !7175)
!7207 = !DILocation(line: 456, column: 3, scope: !7201)
!7208 = !DILocation(line: 457, column: 6, scope: !7209)
!7209 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 457, column: 6)
!7210 = !DILocation(line: 457, column: 11, scope: !7209)
!7211 = !DILocation(line: 457, column: 6, scope: !7175)
!7212 = !DILocation(line: 457, column: 26, scope: !7209)
!7213 = !DILocation(line: 458, column: 6, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 458, column: 6)
!7215 = !DILocation(line: 458, column: 11, scope: !7214)
!7216 = !DILocation(line: 458, column: 6, scope: !7175)
!7217 = !DILocation(line: 458, column: 26, scope: !7214)
!7218 = !DILocation(line: 459, column: 6, scope: !7219)
!7219 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 459, column: 6)
!7220 = !DILocation(line: 459, column: 11, scope: !7219)
!7221 = !DILocation(line: 459, column: 6, scope: !7175)
!7222 = !DILocation(line: 459, column: 26, scope: !7219)
!7223 = !DILocation(line: 460, column: 6, scope: !7224)
!7224 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 460, column: 6)
!7225 = !DILocation(line: 460, column: 11, scope: !7224)
!7226 = !DILocation(line: 460, column: 6, scope: !7175)
!7227 = !DILocation(line: 460, column: 26, scope: !7224)
!7228 = !DILocation(line: 461, column: 6, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 461, column: 6)
!7230 = !DILocation(line: 461, column: 11, scope: !7229)
!7231 = !DILocation(line: 461, column: 6, scope: !7175)
!7232 = !DILocation(line: 461, column: 26, scope: !7229)
!7233 = !DILocation(line: 462, column: 6, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 462, column: 6)
!7235 = !DILocation(line: 462, column: 11, scope: !7234)
!7236 = !DILocation(line: 462, column: 6, scope: !7175)
!7237 = !DILocation(line: 462, column: 26, scope: !7234)
!7238 = !DILocation(line: 463, column: 6, scope: !7239)
!7239 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 463, column: 6)
!7240 = !DILocation(line: 463, column: 11, scope: !7239)
!7241 = !DILocation(line: 463, column: 6, scope: !7175)
!7242 = !DILocation(line: 463, column: 26, scope: !7239)
!7243 = !DILocation(line: 464, column: 6, scope: !7244)
!7244 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 464, column: 6)
!7245 = !DILocation(line: 464, column: 11, scope: !7244)
!7246 = !DILocation(line: 464, column: 6, scope: !7175)
!7247 = !DILocation(line: 464, column: 26, scope: !7244)
!7248 = !DILocation(line: 465, column: 6, scope: !7249)
!7249 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 465, column: 6)
!7250 = !DILocation(line: 465, column: 11, scope: !7249)
!7251 = !DILocation(line: 465, column: 6, scope: !7175)
!7252 = !DILocation(line: 465, column: 26, scope: !7249)
!7253 = !DILocation(line: 466, column: 6, scope: !7254)
!7254 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 466, column: 6)
!7255 = !DILocation(line: 466, column: 11, scope: !7254)
!7256 = !DILocation(line: 466, column: 6, scope: !7175)
!7257 = !DILocation(line: 466, column: 26, scope: !7254)
!7258 = !DILocation(line: 467, column: 6, scope: !7259)
!7259 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 467, column: 6)
!7260 = !DILocation(line: 467, column: 11, scope: !7259)
!7261 = !DILocation(line: 467, column: 6, scope: !7175)
!7262 = !DILocation(line: 467, column: 26, scope: !7259)
!7263 = !DILocation(line: 468, column: 6, scope: !7264)
!7264 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 468, column: 6)
!7265 = !DILocation(line: 468, column: 11, scope: !7264)
!7266 = !DILocation(line: 468, column: 6, scope: !7175)
!7267 = !DILocation(line: 468, column: 26, scope: !7264)
!7268 = !DILocation(line: 469, column: 6, scope: !7269)
!7269 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 469, column: 6)
!7270 = !DILocation(line: 469, column: 11, scope: !7269)
!7271 = !DILocation(line: 469, column: 6, scope: !7175)
!7272 = !DILocation(line: 469, column: 26, scope: !7269)
!7273 = !DILocation(line: 470, column: 6, scope: !7274)
!7274 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 470, column: 6)
!7275 = !DILocation(line: 470, column: 11, scope: !7274)
!7276 = !DILocation(line: 470, column: 6, scope: !7175)
!7277 = !DILocation(line: 470, column: 26, scope: !7274)
!7278 = !DILocation(line: 471, column: 6, scope: !7279)
!7279 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 471, column: 6)
!7280 = !DILocation(line: 471, column: 11, scope: !7279)
!7281 = !DILocation(line: 471, column: 6, scope: !7175)
!7282 = !DILocation(line: 471, column: 26, scope: !7279)
!7283 = !DILocation(line: 472, column: 6, scope: !7284)
!7284 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 472, column: 6)
!7285 = !DILocation(line: 472, column: 11, scope: !7284)
!7286 = !DILocation(line: 472, column: 6, scope: !7175)
!7287 = !DILocation(line: 472, column: 26, scope: !7284)
!7288 = !DILocation(line: 473, column: 6, scope: !7289)
!7289 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 473, column: 6)
!7290 = !DILocation(line: 473, column: 11, scope: !7289)
!7291 = !DILocation(line: 473, column: 6, scope: !7175)
!7292 = !DILocation(line: 473, column: 26, scope: !7289)
!7293 = !DILocation(line: 474, column: 6, scope: !7294)
!7294 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 474, column: 6)
!7295 = !DILocation(line: 474, column: 11, scope: !7294)
!7296 = !DILocation(line: 474, column: 6, scope: !7175)
!7297 = !DILocation(line: 474, column: 27, scope: !7294)
!7298 = !DILocation(line: 475, column: 6, scope: !7299)
!7299 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 475, column: 6)
!7300 = !DILocation(line: 475, column: 11, scope: !7299)
!7301 = !DILocation(line: 475, column: 6, scope: !7175)
!7302 = !DILocation(line: 475, column: 32, scope: !7299)
!7303 = !DILocation(line: 477, column: 50, scope: !7304)
!7304 = distinct !DILexicalBlock(scope: !7175, file: !265, line: 477, column: 6)
!7305 = !DILocation(line: 477, column: 6, scope: !7175)
!7306 = !DILocation(line: 478, column: 3, scope: !7304)
!7307 = !DILocation(line: 478, column: 3, scope: !7308)
!7308 = distinct !DILexicalBlock(scope: !7309, file: !265, line: 478, column: 3)
!7309 = distinct !DILexicalBlock(scope: !7304, file: !265, line: 478, column: 3)
!7310 = !{i32 -2143544701}
!7311 = !DILocation(line: 478, column: 3, scope: !7309)
!7312 = !DILocation(line: 480, column: 3, scope: !7304)
!7313 = !DILocation(line: 480, column: 3, scope: !7314)
!7314 = distinct !DILexicalBlock(scope: !7304, file: !265, line: 480, column: 3)
!7315 = !DILocation(line: 480, column: 3, scope: !7316)
!7316 = distinct !DILexicalBlock(scope: !7314, file: !265, line: 480, column: 3)
!7317 = !DILocation(line: 480, column: 3, scope: !7318)
!7318 = distinct !DILexicalBlock(scope: !7314, file: !265, line: 480, column: 3)
!7319 = !{i64 2151422798, i64 2151422827, i64 2151422873, i64 2151422931, i64 2151422985, i64 2151423039, i64 2151423094, i64 2151423125}
!7320 = !DILocation(line: 483, column: 2, scope: !7175)
!7321 = !DILocation(line: 484, column: 1, scope: !7175)
!7322 = !DISubprogram(name: "kmalloc_trace", scope: !265, file: !265, line: 525, type: !7323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7323 = !DISubroutineType(types: !7324)
!7324 = !{!275, !3173, !276, !448}
!7325 = distinct !DISubprogram(name: "kmalloc_type", scope: !265, file: !265, line: 401, type: !7326, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7328)
!7326 = !DISubroutineType(types: !7327)
!7327 = !{!264, !276, !278}
!7328 = !{!7329, !7330}
!7329 = !DILocalVariable(name: "flags", arg: 1, scope: !7325, file: !265, line: 401, type: !276)
!7330 = !DILocalVariable(name: "caller", arg: 2, scope: !7325, file: !265, line: 401, type: !278)
!7331 = !DILocation(line: 401, column: 67, scope: !7325)
!7332 = !DILocation(line: 401, column: 88, scope: !7325)
!7333 = !DILocation(line: 407, column: 6, scope: !7334)
!7334 = distinct !DILexicalBlock(scope: !7325, file: !265, line: 407, column: 6)
!7335 = !DILocation(line: 407, column: 6, scope: !7325)
!7336 = !DILocation(line: 413, column: 3, scope: !7334)
!7337 = !DILocation(line: 423, column: 38, scope: !7338)
!7338 = distinct !DILexicalBlock(scope: !7325, file: !265, line: 423, column: 6)
!7339 = !DILocation(line: 423, column: 44, scope: !7338)
!7340 = !DILocation(line: 423, column: 6, scope: !7325)
!7341 = !DILocation(line: 424, column: 3, scope: !7338)
!7342 = !DILocation(line: 426, column: 3, scope: !7343)
!7343 = distinct !DILexicalBlock(scope: !7325, file: !265, line: 425, column: 6)
!7344 = !DILocation(line: 429, column: 1, scope: !7325)
!7345 = !DISubprogram(name: "__kmalloc", scope: !265, file: !265, line: 488, type: !6337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7346 = !DISubprogram(name: "__compiletime_assert_117", scope: !265, file: !265, line: 478, type: !1105, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7347 = !DISubprogram(name: "dma_buf_end_cpu_access", scope: !4910, file: !4910, line: 619, type: !4986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7348 = distinct !DISubprogram(name: "drm_gem_afbc_get_bpp", scope: !3, file: !3, line: 503, type: !7349, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7351)
!7349 = !DISubroutineType(types: !7350)
!7350 = !{!279, !305, !5453}
!7351 = !{!7352, !7353, !7354}
!7352 = !DILocalVariable(name: "dev", arg: 1, scope: !7348, file: !3, line: 503, type: !305)
!7353 = !DILocalVariable(name: "mode_cmd", arg: 2, scope: !7348, file: !3, line: 504, type: !5453)
!7354 = !DILocalVariable(name: "info", scope: !7348, file: !3, line: 506, type: !5396)
!7355 = !DILocation(line: 503, column: 54, scope: !7348)
!7356 = !DILocation(line: 504, column: 38, scope: !7348)
!7357 = !DILocation(line: 506, column: 2, scope: !7348)
!7358 = !DILocation(line: 506, column: 32, scope: !7348)
!7359 = !DILocation(line: 508, column: 29, scope: !7348)
!7360 = !DILocation(line: 508, column: 34, scope: !7348)
!7361 = !DILocation(line: 508, column: 9, scope: !7348)
!7362 = !DILocation(line: 508, column: 7, scope: !7348)
!7363 = !DILocation(line: 510, column: 10, scope: !7348)
!7364 = !DILocation(line: 510, column: 16, scope: !7348)
!7365 = !DILocation(line: 510, column: 2, scope: !7348)
!7366 = !DILocation(line: 512, column: 3, scope: !7367)
!7367 = distinct !DILexicalBlock(scope: !7348, file: !3, line: 510, column: 24)
!7368 = !DILocation(line: 514, column: 3, scope: !7367)
!7369 = !DILocation(line: 516, column: 3, scope: !7367)
!7370 = !DILocation(line: 518, column: 30, scope: !7367)
!7371 = !DILocation(line: 518, column: 10, scope: !7367)
!7372 = !DILocation(line: 518, column: 3, scope: !7367)
!7373 = !DILocation(line: 520, column: 1, scope: !7348)
!7374 = !DISubprogram(name: "drm_format_info_bpp", scope: !5399, file: !5399, line: 319, type: !7375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7375 = !DISubroutineType(types: !7376)
!7376 = !{!7, !5396, !109}
