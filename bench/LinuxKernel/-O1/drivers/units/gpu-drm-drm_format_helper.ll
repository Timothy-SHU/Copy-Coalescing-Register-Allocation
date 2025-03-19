; ModuleID = 'drivers/gpu/drm/drm_format_helper.c'
source_filename = "drivers/gpu/drm/drm_format_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_clip_offset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_clip_offset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_memcpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_memcpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_swab: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_swab ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_rgb332: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_rgb332 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_rgb565: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_rgb565 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_xrgb1555: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_xrgb1555 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_argb1555: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_argb1555 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_rgba5551: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_rgba5551 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_rgb888: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_rgb888 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_argb8888: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_argb8888 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_xrgb2101010: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_xrgb2101010 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_argb2101010: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_argb2101010 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_gray8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_gray8 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_blit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_blit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_xrgb8888_to_mono: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_xrgb8888_to_mono ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_fb_build_fourcc_list: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_fb_build_fourcc_list ; .previous"

%struct.drm_format_info = type { i32, i8, i8, %union.anon, [4 x i8], [4 x i8], i8, i8, i8, i8, i8 }
%union.anon = type { [4 x i8] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.iosys_map = type { %union.anon.14, i8 }
%union.anon.14 = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.15, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.15 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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

@__UNIQUE_ID___addressable_drm_fb_clip_offset268 = internal global ptr @drm_fb_clip_offset, section ".discard.addressable", align 8, !dbg !0
@drm_fb_memcpy.default_dst_pitch = internal constant [4 x i32] zeroinitializer, align 16, !dbg !174
@__UNIQUE_ID___addressable_drm_fb_memcpy269 = internal global ptr @drm_fb_memcpy, section ".discard.addressable", align 8, !dbg !4839
@drm_fb_swab.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4841
@.str = private unnamed_addr constant [48 x i8] c"[drm] Format %p4cc has unsupported pixel size.\0A\00", align 1, !dbg !4859
@__UNIQUE_ID___addressable_drm_fb_swab270 = internal global ptr @drm_fb_swab, section ".discard.addressable", align 8, !dbg !4864
@drm_fb_xrgb8888_to_rgb332.dst_pixsize = internal constant [4 x i8] c"\01\00\00\00", align 1, !dbg !4866
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb332271 = internal global ptr @drm_fb_xrgb8888_to_rgb332, section ".discard.addressable", align 8, !dbg !4877
@drm_fb_xrgb8888_to_rgb565.dst_pixsize = internal constant [4 x i8] c"\02\00\00\00", align 1, !dbg !4879
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb565272 = internal global ptr @drm_fb_xrgb8888_to_rgb565, section ".discard.addressable", align 8, !dbg !4890
@drm_fb_xrgb8888_to_xrgb1555.dst_pixsize = internal constant [4 x i8] c"\02\00\00\00", align 1, !dbg !4892
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_xrgb1555273 = internal global ptr @drm_fb_xrgb8888_to_xrgb1555, section ".discard.addressable", align 8, !dbg !4901
@drm_fb_xrgb8888_to_argb1555.dst_pixsize = internal constant [4 x i8] c"\02\00\00\00", align 1, !dbg !4903
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb1555274 = internal global ptr @drm_fb_xrgb8888_to_argb1555, section ".discard.addressable", align 8, !dbg !4912
@drm_fb_xrgb8888_to_rgba5551.dst_pixsize = internal constant [4 x i8] c"\02\00\00\00", align 1, !dbg !4914
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgba5551275 = internal global ptr @drm_fb_xrgb8888_to_rgba5551, section ".discard.addressable", align 8, !dbg !4923
@drm_fb_xrgb8888_to_rgb888.dst_pixsize = internal constant [4 x i8] c"\03\00\00\00", align 1, !dbg !4925
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb888276 = internal global ptr @drm_fb_xrgb8888_to_rgb888, section ".discard.addressable", align 8, !dbg !4934
@drm_fb_xrgb8888_to_argb8888.dst_pixsize = internal constant [4 x i8] c"\04\00\00\00", align 1, !dbg !4936
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb8888277 = internal global ptr @drm_fb_xrgb8888_to_argb8888, section ".discard.addressable", align 8, !dbg !4945
@drm_fb_xrgb8888_to_xrgb2101010.dst_pixsize = internal constant [4 x i8] c"\04\00\00\00", align 1, !dbg !4947
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_xrgb2101010278 = internal global ptr @drm_fb_xrgb8888_to_xrgb2101010, section ".discard.addressable", align 8, !dbg !4956
@drm_fb_xrgb8888_to_argb2101010.dst_pixsize = internal constant [4 x i8] c"\04\00\00\00", align 1, !dbg !4958
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb2101010279 = internal global ptr @drm_fb_xrgb8888_to_argb2101010, section ".discard.addressable", align 8, !dbg !4967
@drm_fb_xrgb8888_to_gray8.dst_pixsize = internal constant [4 x i8] c"\01\00\00\00", align 1, !dbg !4969
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_gray8280 = internal global ptr @drm_fb_xrgb8888_to_gray8, section ".discard.addressable", align 8, !dbg !4978
@drm_fb_blit.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4980
@.str.1 = private unnamed_addr constant [55 x i8] c"[drm] No conversion helper from %p4cc to %p4cc found.\0A\00", align 1, !dbg !4993
@__UNIQUE_ID___addressable_drm_fb_blit281 = internal global ptr @drm_fb_blit, section ".discard.addressable", align 8, !dbg !4998
@drm_fb_xrgb8888_to_mono.default_dst_pitch = internal constant [4 x i32] zeroinitializer, align 16, !dbg !5000
@.str.2 = private unnamed_addr constant [10 x i8] c"%s %s: %s\00", align 1, !dbg !5027
@.str.3 = private unnamed_addr constant [118 x i8] c"drm_WARN_ON(fb->format->format != ((__u32)('X') | ((__u32)('R') << 8) | ((__u32)('2') << 16) | ((__u32)('4') << 24)))\00", align 1, !dbg !5032
@.str.4 = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/drm_format_helper.c\00", align 1, !dbg !5037
@__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_mono284 = internal global ptr @drm_fb_xrgb8888_to_mono, section ".discard.addressable", align 8, !dbg !5042
@drm_fb_build_fourcc_list.extra_fourccs = internal constant [1 x i32] [i32 875713112], align 4, !dbg !5044
@drm_fb_build_fourcc_list.extra_nfourccs = internal constant i64 1, align 8, !dbg !5070
@.str.5 = private unnamed_addr constant [36 x i8] c"[drm] Ignoring native format %p4cc\0A\00", align 1, !dbg !5073
@.str.6 = private unnamed_addr constant [28 x i8] c"adding native format %p4cc\0A\00", align 1, !dbg !5075
@.str.7 = private unnamed_addr constant [38 x i8] c"[drm] Ignoring emulated format %p4cc\0A\00", align 1, !dbg !5080
@.str.8 = private unnamed_addr constant [30 x i8] c"adding emulated format %p4cc\0A\00", align 1, !dbg !5085
@__UNIQUE_ID___addressable_drm_fb_build_fourcc_list285 = internal global ptr @drm_fb_build_fourcc_list, section ".discard.addressable", align 8, !dbg !5090
@drm_fb_xfrm.default_dst_pitch = internal constant [4 x i32] zeroinitializer, align 16, !dbg !5092
@drm_fb_xrgb8888_to_xbgr8888.dst_pixsize = internal constant [4 x i8] c"\04\00\00\00", align 1, !dbg !5107
@drm_fb_xrgb8888_to_abgr8888.dst_pixsize = internal constant [4 x i8] c"\04\00\00\00", align 1, !dbg !5116
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5125
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID___addressable_drm_fb_clip_offset268, ptr @__UNIQUE_ID___addressable_drm_fb_memcpy269, ptr @__UNIQUE_ID___addressable_drm_fb_swab270, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb332271, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb565272, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_xrgb1555273, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb1555274, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgba5551275, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb888276, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb8888277, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_xrgb2101010278, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb2101010279, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_gray8280, ptr @__UNIQUE_ID___addressable_drm_fb_blit281, ptr @__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_mono284, ptr @__UNIQUE_ID___addressable_drm_fb_build_fourcc_list285], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_fb_clip_offset(i32 noundef %pitch, ptr noundef %format, ptr noundef %clip) #0 align 16 !dbg !5139 {
entry:
  %pitch.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store i32 %pitch, ptr %pitch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pitch.addr, metadata !5143, metadata !DIExpression()), !dbg !5146
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !5144, metadata !DIExpression()), !dbg !5147
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !5145, metadata !DIExpression()), !dbg !5148
  %0 = load ptr, ptr %clip.addr, align 8, !dbg !5149
  %1 = load i32, ptr %pitch.addr, align 4, !dbg !5150
  %2 = load ptr, ptr %format.addr, align 8, !dbg !5151
  %3 = getelementptr inbounds %struct.drm_format_info, ptr %2, i32 0, i32 3, !dbg !5152
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 0, !dbg !5151
  %4 = load i8, ptr %arrayidx, align 2, !dbg !5151
  %conv = zext i8 %4 to i32, !dbg !5151
  %call = call i32 @clip_offset(ptr noundef %0, i32 noundef %1, i32 noundef %conv) #14, !dbg !5153
  ret i32 %call, !dbg !5154
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clip_offset(ptr noundef %clip, i32 noundef %pitch, i32 noundef %cpp) #0 align 16 !dbg !5155 {
entry:
  %clip.addr = alloca ptr, align 8
  %pitch.addr = alloca i32, align 4
  %cpp.addr = alloca i32, align 4
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !5159, metadata !DIExpression()), !dbg !5162
  store i32 %pitch, ptr %pitch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pitch.addr, metadata !5160, metadata !DIExpression()), !dbg !5163
  store i32 %cpp, ptr %cpp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpp.addr, metadata !5161, metadata !DIExpression()), !dbg !5164
  %0 = load ptr, ptr %clip.addr, align 8, !dbg !5165
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 1, !dbg !5166
  %1 = load i32, ptr %y1, align 4, !dbg !5166
  %2 = load i32, ptr %pitch.addr, align 4, !dbg !5167
  %mul = mul i32 %1, %2, !dbg !5168
  %3 = load ptr, ptr %clip.addr, align 8, !dbg !5169
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 0, !dbg !5170
  %4 = load i32, ptr %x1, align 4, !dbg !5170
  %5 = load i32, ptr %cpp.addr, align 4, !dbg !5171
  %mul1 = mul i32 %4, %5, !dbg !5172
  %add = add i32 %mul, %mul1, !dbg !5173
  ret i32 %add, !dbg !5174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_memcpy(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !176 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %format = alloca ptr, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %lines = alloca i32, align 4
  %bpp_i = alloca i32, align 4
  %cpp_i = alloca i32, align 4
  %len_i = alloca i64, align 8
  %dst_pitch_i = alloca i32, align 4
  %dst_i = alloca %struct.iosys_map, align 8
  %src_i = alloca %struct.iosys_map, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4820, metadata !DIExpression()), !dbg !5175
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4821, metadata !DIExpression()), !dbg !5176
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4822, metadata !DIExpression()), !dbg !5177
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4823, metadata !DIExpression()), !dbg !5178
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4824, metadata !DIExpression()), !dbg !5179
  call void @llvm.lifetime.start.p0(i64 8, ptr %format) #15, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %format, metadata !4825, metadata !DIExpression()), !dbg !5181
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !5182
  %format1 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4, !dbg !5183
  %1 = load ptr, ptr %format1, align 8, !dbg !5183
  store ptr %1, ptr %format, align 8, !dbg !5181
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4826, metadata !DIExpression()), !dbg !5185
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #15, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %y, metadata !4827, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 4, ptr %lines) #15, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %lines, metadata !4828, metadata !DIExpression()), !dbg !5187
  %2 = load ptr, ptr %clip.addr, align 8, !dbg !5188
  %call = call i32 @drm_rect_height(ptr noundef %2) #14, !dbg !5189
  store i32 %call, ptr %lines, align 4, !dbg !5187
  %3 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5190
  %tobool = icmp ne ptr %3, null, !dbg !5190
  br i1 %tobool, label %if.end, label %if.then, !dbg !5192

if.then:                                          ; preds = %entry
  store ptr @drm_fb_memcpy.default_dst_pitch, ptr %dst_pitch.addr, align 8, !dbg !5193
  br label %if.end, !dbg !5194

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !5195
  br label %for.cond, !dbg !5196

for.cond:                                         ; preds = %for.inc30, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !5197
  %5 = load ptr, ptr %format, align 8, !dbg !5198
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2, !dbg !5199
  %6 = load i8, ptr %num_planes, align 1, !dbg !5199
  %conv = zext i8 %6 to i32, !dbg !5198
  %cmp = icmp ult i32 %4, %conv, !dbg !5200
  br i1 %cmp, label %for.body, label %for.end32, !dbg !5201

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %bpp_i) #15, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %bpp_i, metadata !4829, metadata !DIExpression()), !dbg !5203
  %7 = load ptr, ptr %format, align 8, !dbg !5204
  %8 = load i32, ptr %i, align 4, !dbg !5205
  %call3 = call i32 @drm_format_info_bpp(ptr noundef %7, i32 noundef %8) #14, !dbg !5206
  store i32 %call3, ptr %bpp_i, align 4, !dbg !5203
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpp_i) #15, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %cpp_i, metadata !4833, metadata !DIExpression()), !dbg !5208
  %9 = load i32, ptr %bpp_i, align 4, !dbg !5209
  %add = add i32 %9, 8, !dbg !5209
  %sub = sub i32 %add, 1, !dbg !5209
  %div = udiv i32 %sub, 8, !dbg !5209
  store i32 %div, ptr %cpp_i, align 4, !dbg !5208
  call void @llvm.lifetime.start.p0(i64 8, ptr %len_i) #15, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %len_i, metadata !4834, metadata !DIExpression()), !dbg !5211
  %10 = load ptr, ptr %clip.addr, align 8, !dbg !5212
  %call4 = call i32 @drm_rect_width(ptr noundef %10) #14, !dbg !5212
  %11 = load i32, ptr %bpp_i, align 4, !dbg !5212
  %mul = mul i32 %call4, %11, !dbg !5212
  %add5 = add i32 %mul, 8, !dbg !5212
  %sub6 = sub i32 %add5, 1, !dbg !5212
  %div7 = udiv i32 %sub6, 8, !dbg !5212
  %conv8 = zext i32 %div7 to i64, !dbg !5212
  store i64 %conv8, ptr %len_i, align 8, !dbg !5211
  call void @llvm.lifetime.start.p0(i64 4, ptr %dst_pitch_i) #15, !dbg !5213
  call void @llvm.dbg.declare(metadata ptr %dst_pitch_i, metadata !4835, metadata !DIExpression()), !dbg !5214
  %12 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5215
  %13 = load i32, ptr %i, align 4, !dbg !5216
  %idxprom = zext i32 %13 to i64, !dbg !5215
  %arrayidx = getelementptr i32, ptr %12, i64 %idxprom, !dbg !5215
  %14 = load i32, ptr %arrayidx, align 4, !dbg !5215
  store i32 %14, ptr %dst_pitch_i, align 4, !dbg !5214
  call void @llvm.lifetime.start.p0(i64 16, ptr %dst_i) #15, !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %dst_i, metadata !4836, metadata !DIExpression()), !dbg !5218
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !5219
  %16 = load i32, ptr %i, align 4, !dbg !5220
  %idxprom9 = zext i32 %16 to i64, !dbg !5219
  %arrayidx10 = getelementptr %struct.iosys_map, ptr %15, i64 %idxprom9, !dbg !5219
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dst_i, ptr align 8 %arrayidx10, i64 16, i1 false), !dbg !5219
  call void @llvm.lifetime.start.p0(i64 16, ptr %src_i) #15, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %src_i, metadata !4837, metadata !DIExpression()), !dbg !5222
  %17 = load ptr, ptr %src.addr, align 8, !dbg !5223
  %18 = load i32, ptr %i, align 4, !dbg !5224
  %idxprom11 = zext i32 %18 to i64, !dbg !5223
  %arrayidx12 = getelementptr %struct.iosys_map, ptr %17, i64 %idxprom11, !dbg !5223
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %src_i, ptr align 8 %arrayidx12, i64 16, i1 false), !dbg !5223
  %19 = load i32, ptr %dst_pitch_i, align 4, !dbg !5225
  %tobool13 = icmp ne i32 %19, 0, !dbg !5225
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !5227

if.then14:                                        ; preds = %for.body
  %20 = load i64, ptr %len_i, align 8, !dbg !5228
  %conv15 = trunc i64 %20 to i32, !dbg !5228
  store i32 %conv15, ptr %dst_pitch_i, align 4, !dbg !5229
  br label %if.end16, !dbg !5230

if.end16:                                         ; preds = %if.then14, %for.body
  %21 = load ptr, ptr %clip.addr, align 8, !dbg !5231
  %22 = load ptr, ptr %fb.addr, align 8, !dbg !5232
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %22, i32 0, i32 6, !dbg !5233
  %23 = load i32, ptr %i, align 4, !dbg !5234
  %idxprom17 = zext i32 %23 to i64, !dbg !5232
  %arrayidx18 = getelementptr [4 x i32], ptr %pitches, i64 0, i64 %idxprom17, !dbg !5232
  %24 = load i32, ptr %arrayidx18, align 4, !dbg !5232
  %25 = load i32, ptr %cpp_i, align 4, !dbg !5235
  %call19 = call i32 @clip_offset(ptr noundef %21, i32 noundef %24, i32 noundef %25) #14, !dbg !5236
  %conv20 = zext i32 %call19 to i64, !dbg !5236
  call void @iosys_map_incr(ptr noundef %src_i, i64 noundef %conv20) #14, !dbg !5237
  store i32 0, ptr %y, align 4, !dbg !5238
  br label %for.cond21, !dbg !5240

for.cond21:                                       ; preds = %for.inc, %if.end16
  %26 = load i32, ptr %y, align 4, !dbg !5241
  %27 = load i32, ptr %lines, align 4, !dbg !5243
  %cmp22 = icmp ult i32 %26, %27, !dbg !5244
  br i1 %cmp22, label %for.body24, label %for.end, !dbg !5245

for.body24:                                       ; preds = %for.cond21
  %28 = getelementptr inbounds %struct.iosys_map, ptr %src_i, i32 0, i32 0, !dbg !5246
  %29 = load ptr, ptr %28, align 8, !dbg !5246
  %30 = load i64, ptr %len_i, align 8, !dbg !5248
  call void @iosys_map_memcpy_to(ptr noundef %dst_i, i64 noundef 0, ptr noundef %29, i64 noundef %30) #14, !dbg !5249
  %31 = load ptr, ptr %fb.addr, align 8, !dbg !5250
  %pitches25 = getelementptr inbounds %struct.drm_framebuffer, ptr %31, i32 0, i32 6, !dbg !5251
  %32 = load i32, ptr %i, align 4, !dbg !5252
  %idxprom26 = zext i32 %32 to i64, !dbg !5250
  %arrayidx27 = getelementptr [4 x i32], ptr %pitches25, i64 0, i64 %idxprom26, !dbg !5250
  %33 = load i32, ptr %arrayidx27, align 4, !dbg !5250
  %conv28 = zext i32 %33 to i64, !dbg !5250
  call void @iosys_map_incr(ptr noundef %src_i, i64 noundef %conv28) #14, !dbg !5253
  %34 = load i32, ptr %dst_pitch_i, align 4, !dbg !5254
  %conv29 = zext i32 %34 to i64, !dbg !5254
  call void @iosys_map_incr(ptr noundef %dst_i, i64 noundef %conv29) #14, !dbg !5255
  br label %for.inc, !dbg !5256

for.inc:                                          ; preds = %for.body24
  %35 = load i32, ptr %y, align 4, !dbg !5257
  %inc = add i32 %35, 1, !dbg !5257
  store i32 %inc, ptr %y, align 4, !dbg !5257
  br label %for.cond21, !dbg !5258, !llvm.loop !5259

for.end:                                          ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 16, ptr %src_i) #15, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 16, ptr %dst_i) #15, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 4, ptr %dst_pitch_i) #15, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 8, ptr %len_i) #15, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpp_i) #15, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 4, ptr %bpp_i) #15, !dbg !5263
  br label %for.inc30, !dbg !5264

for.inc30:                                        ; preds = %for.end
  %36 = load i32, ptr %i, align 4, !dbg !5265
  %inc31 = add i32 %36, 1, !dbg !5265
  store i32 %inc31, ptr %i, align 4, !dbg !5265
  br label %for.cond, !dbg !5266, !llvm.loop !5267

for.end32:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %lines) #15, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #15, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 8, ptr %format) #15, !dbg !5269
  ret void, !dbg !5269
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_rect_height(ptr noundef %r) #3 align 16 !dbg !5270 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5276
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 3, !dbg !5277
  %1 = load i32, ptr %y2, align 4, !dbg !5277
  %2 = load ptr, ptr %r.addr, align 8, !dbg !5278
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 1, !dbg !5279
  %3 = load i32, ptr %y1, align 4, !dbg !5279
  %sub = sub i32 %1, %3, !dbg !5280
  ret i32 %sub, !dbg !5281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5282 dso_local i32 @drm_format_info_bpp(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_rect_width(ptr noundef %r) #3 align 16 !dbg !5285 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5289
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 2, !dbg !5290
  %1 = load i32, ptr %x2, align 4, !dbg !5290
  %2 = load ptr, ptr %r.addr, align 8, !dbg !5291
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 0, !dbg !5292
  %3 = load i32, ptr %x1, align 4, !dbg !5292
  %sub = sub i32 %1, %3, !dbg !5293
  ret i32 %sub, !dbg !5294
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_incr(ptr noundef %map, i64 noundef %incr) #3 align 16 !dbg !5295 {
entry:
  %map.addr = alloca ptr, align 8
  %incr.addr = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5299, metadata !DIExpression()), !dbg !5301
  store i64 %incr, ptr %incr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %incr.addr, metadata !5300, metadata !DIExpression()), !dbg !5302
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5303
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !5305
  %1 = load i8, ptr %is_iomem, align 8, !dbg !5305, !range !5306, !noundef !926
  %tobool = trunc i8 %1 to i1, !dbg !5305
  br i1 %tobool, label %if.then, label %if.else, !dbg !5307

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %incr.addr, align 8, !dbg !5308
  %3 = load ptr, ptr %map.addr, align 8, !dbg !5309
  %4 = getelementptr inbounds %struct.iosys_map, ptr %3, i32 0, i32 0, !dbg !5310
  %5 = load ptr, ptr %4, align 8, !dbg !5311
  %add.ptr = getelementptr i8, ptr %5, i64 %2, !dbg !5311
  store ptr %add.ptr, ptr %4, align 8, !dbg !5311
  br label %if.end, !dbg !5309

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %incr.addr, align 8, !dbg !5312
  %7 = load ptr, ptr %map.addr, align 8, !dbg !5313
  %8 = getelementptr inbounds %struct.iosys_map, ptr %7, i32 0, i32 0, !dbg !5314
  %9 = load ptr, ptr %8, align 8, !dbg !5315
  %add.ptr1 = getelementptr i8, ptr %9, i64 %6, !dbg !5315
  store ptr %add.ptr1, ptr %8, align 8, !dbg !5315
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_memcpy_to(ptr noundef %dst, i64 noundef %dst_offset, ptr noundef %src, i64 noundef %len) #3 align 16 !dbg !5317 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_offset.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5321, metadata !DIExpression()), !dbg !5325
  store i64 %dst_offset, ptr %dst_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_offset.addr, metadata !5322, metadata !DIExpression()), !dbg !5326
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5323, metadata !DIExpression()), !dbg !5327
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5324, metadata !DIExpression()), !dbg !5328
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5329
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !5331
  %1 = load i8, ptr %is_iomem, align 8, !dbg !5331, !range !5306, !noundef !926
  %tobool = trunc i8 %1 to i1, !dbg !5331
  br i1 %tobool, label %if.then, label %if.else, !dbg !5332

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !5333
  %3 = getelementptr inbounds %struct.iosys_map, ptr %2, i32 0, i32 0, !dbg !5334
  %4 = load ptr, ptr %3, align 8, !dbg !5334
  %5 = load i64, ptr %dst_offset.addr, align 8, !dbg !5335
  %add.ptr = getelementptr i8, ptr %4, i64 %5, !dbg !5336
  %6 = load ptr, ptr %src.addr, align 8, !dbg !5337
  %7 = load i64, ptr %len.addr, align 8, !dbg !5338
  call void @memcpy_toio(ptr noundef %add.ptr, ptr noundef %6, i64 noundef %7) #14, !dbg !5339
  br label %if.end, !dbg !5339

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5340
  %9 = getelementptr inbounds %struct.iosys_map, ptr %8, i32 0, i32 0, !dbg !5341
  %10 = load ptr, ptr %9, align 8, !dbg !5341
  %11 = load i64, ptr %dst_offset.addr, align 8, !dbg !5342
  %add.ptr1 = getelementptr i8, ptr %10, i64 %11, !dbg !5343
  %12 = load ptr, ptr %src.addr, align 8, !dbg !5344
  %13 = load i64, ptr %len.addr, align 8, !dbg !5345
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr1, ptr align 1 %12, i64 %13, i1 false), !dbg !5346
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5347
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_swab(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip, i1 noundef zeroext %cached) #0 align 16 !dbg !4843 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %cached.addr = alloca i8, align 1
  %format = alloca ptr, align 8
  %cpp = alloca i8, align 1
  %swab_line = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4847, metadata !DIExpression()), !dbg !5348
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4848, metadata !DIExpression()), !dbg !5349
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4849, metadata !DIExpression()), !dbg !5350
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4850, metadata !DIExpression()), !dbg !5351
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4851, metadata !DIExpression()), !dbg !5352
  %frombool = zext i1 %cached to i8
  store i8 %frombool, ptr %cached.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cached.addr, metadata !4852, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr %format) #15, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %format, metadata !4853, metadata !DIExpression()), !dbg !5355
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !5356
  %format1 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4, !dbg !5357
  %1 = load ptr, ptr %format1, align 8, !dbg !5357
  store ptr %1, ptr %format, align 8, !dbg !5355
  call void @llvm.lifetime.start.p0(i64 1, ptr %cpp) #15, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %cpp, metadata !4854, metadata !DIExpression()), !dbg !5359
  %2 = load ptr, ptr %format, align 8, !dbg !5360
  %call = call i32 @drm_format_info_bpp(ptr noundef %2, i32 noundef 0) #14, !dbg !5360
  %add = add i32 %call, 8, !dbg !5360
  %sub = sub i32 %add, 1, !dbg !5360
  %div = udiv i32 %sub, 8, !dbg !5360
  %conv = trunc i32 %div to i8, !dbg !5360
  store i8 %conv, ptr %cpp, align 1, !dbg !5359
  call void @llvm.lifetime.start.p0(i64 8, ptr %swab_line) #15, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %swab_line, metadata !4855, metadata !DIExpression()), !dbg !5362
  %3 = load i8, ptr %cpp, align 1, !dbg !5363
  %conv2 = zext i8 %3 to i32, !dbg !5363
  switch i32 %conv2, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb3
  ], !dbg !5364

sw.bb:                                            ; preds = %entry
  store ptr @drm_fb_swab32_line, ptr %swab_line, align 8, !dbg !5365
  br label %sw.epilog, !dbg !5367

sw.bb3:                                           ; preds = %entry
  store ptr @drm_fb_swab16_line, ptr %swab_line, align 8, !dbg !5368
  br label %sw.epilog, !dbg !5369

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !5370

do.body:                                          ; preds = %sw.default
  %4 = load i8, ptr @drm_fb_swab.__print_once, align 1, !dbg !5371, !range !5306, !noundef !926
  %tobool = trunc i8 %4 to i1, !dbg !5371
  br i1 %tobool, label %if.end, label %if.then, !dbg !5374

if.then:                                          ; preds = %do.body
  store i8 1, ptr @drm_fb_swab.__print_once, align 1, !dbg !5375
  br label %do.body4, !dbg !5377

do.body4:                                         ; preds = %if.then
  br label %do.cond, !dbg !5379

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5379

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %fb.addr, align 8, !dbg !5377
  %dev = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 0, !dbg !5377
  %6 = load ptr, ptr %dev, align 8, !dbg !5377
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2, !dbg !5377
  %7 = load ptr, ptr %dev5, align 8, !dbg !5377
  %8 = load ptr, ptr %format, align 8, !dbg !5377
  %format6 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 0, !dbg !5377
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef @.str, ptr noundef %format6) #16, !dbg !5377
  br label %if.end, !dbg !5375

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond7, !dbg !5374

do.cond7:                                         ; preds = %if.end
  br label %do.end8, !dbg !5374

do.end8:                                          ; preds = %do.cond7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5381

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !5382
  %10 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5383
  %11 = load ptr, ptr %src.addr, align 8, !dbg !5384
  %12 = load ptr, ptr %fb.addr, align 8, !dbg !5385
  %13 = load ptr, ptr %clip.addr, align 8, !dbg !5386
  %14 = load i8, ptr %cached.addr, align 1, !dbg !5387, !range !5306, !noundef !926
  %tobool9 = trunc i8 %14 to i1, !dbg !5387
  %15 = load ptr, ptr %swab_line, align 8, !dbg !5388
  %call10 = call i32 @drm_fb_xfrm(ptr noundef %9, ptr noundef %10, ptr noundef %cpp, ptr noundef %11, ptr noundef %12, ptr noundef %13, i1 noundef zeroext %tobool9, ptr noundef %15) #14, !dbg !5389
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5390
  br label %cleanup, !dbg !5390

cleanup:                                          ; preds = %sw.epilog, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %swab_line) #15, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 1, ptr %cpp) #15, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 8, ptr %format) #15, !dbg !5390
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5390

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_swab32_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5391 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf32 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %send32 = alloca ptr, align 8
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5393, metadata !DIExpression()), !dbg !5399
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5394, metadata !DIExpression()), !dbg !5400
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5395, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf32) #15, !dbg !5402
  call void @llvm.dbg.declare(metadata ptr %dbuf32, metadata !5396, metadata !DIExpression()), !dbg !5403
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5404
  store ptr %0, ptr %dbuf32, align 8, !dbg !5403
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5397, metadata !DIExpression()), !dbg !5406
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5407
  store ptr %1, ptr %sbuf32, align 8, !dbg !5406
  call void @llvm.lifetime.start.p0(i64 8, ptr %send32) #15, !dbg !5408
  call void @llvm.dbg.declare(metadata ptr %send32, metadata !5398, metadata !DIExpression()), !dbg !5409
  %2 = load ptr, ptr %sbuf32, align 8, !dbg !5410
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5411
  %idx.ext = zext i32 %3 to i64, !dbg !5412
  %add.ptr = getelementptr i32, ptr %2, i64 %idx.ext, !dbg !5412
  store ptr %add.ptr, ptr %send32, align 8, !dbg !5409
  br label %while.cond, !dbg !5413

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5414
  %5 = load ptr, ptr %send32, align 8, !dbg !5415
  %cmp = icmp ult ptr %4, %5, !dbg !5416
  br i1 %cmp, label %while.body, label %while.end, !dbg !5413

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %sbuf32, align 8, !dbg !5417
  %incdec.ptr = getelementptr i32, ptr %6, i32 1, !dbg !5417
  store ptr %incdec.ptr, ptr %sbuf32, align 8, !dbg !5417
  %7 = load i32, ptr %6, align 4, !dbg !5417
  %8 = call i32 @llvm.bswap.i32(i32 %7), !dbg !5417
  %9 = load ptr, ptr %dbuf32, align 8, !dbg !5418
  %incdec.ptr1 = getelementptr i32, ptr %9, i32 1, !dbg !5418
  store ptr %incdec.ptr1, ptr %dbuf32, align 8, !dbg !5418
  store i32 %8, ptr %9, align 4, !dbg !5419
  br label %while.cond, !dbg !5413, !llvm.loop !5420

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %send32) #15, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf32) #15, !dbg !5421
  ret void, !dbg !5421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_swab16_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5422 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf16 = alloca ptr, align 8
  %sbuf16 = alloca ptr, align 8
  %send16 = alloca ptr, align 8
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5424, metadata !DIExpression()), !dbg !5432
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5425, metadata !DIExpression()), !dbg !5433
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5426, metadata !DIExpression()), !dbg !5434
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf16) #15, !dbg !5435
  call void @llvm.dbg.declare(metadata ptr %dbuf16, metadata !5427, metadata !DIExpression()), !dbg !5436
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5437
  store ptr %0, ptr %dbuf16, align 8, !dbg !5436
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf16) #15, !dbg !5438
  call void @llvm.dbg.declare(metadata ptr %sbuf16, metadata !5429, metadata !DIExpression()), !dbg !5439
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5440
  store ptr %1, ptr %sbuf16, align 8, !dbg !5439
  call void @llvm.lifetime.start.p0(i64 8, ptr %send16) #15, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %send16, metadata !5431, metadata !DIExpression()), !dbg !5442
  %2 = load ptr, ptr %sbuf16, align 8, !dbg !5443
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5444
  %idx.ext = zext i32 %3 to i64, !dbg !5445
  %add.ptr = getelementptr i16, ptr %2, i64 %idx.ext, !dbg !5445
  store ptr %add.ptr, ptr %send16, align 8, !dbg !5442
  br label %while.cond, !dbg !5446

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %sbuf16, align 8, !dbg !5447
  %5 = load ptr, ptr %send16, align 8, !dbg !5448
  %cmp = icmp ult ptr %4, %5, !dbg !5449
  br i1 %cmp, label %while.body, label %while.end, !dbg !5446

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %sbuf16, align 8, !dbg !5450
  %incdec.ptr = getelementptr i16, ptr %6, i32 1, !dbg !5450
  store ptr %incdec.ptr, ptr %sbuf16, align 8, !dbg !5450
  %7 = load i16, ptr %6, align 2, !dbg !5450
  %8 = call i16 @llvm.bswap.i16(i16 %7), !dbg !5450
  %9 = load ptr, ptr %dbuf16, align 8, !dbg !5451
  %incdec.ptr1 = getelementptr i16, ptr %9, i32 1, !dbg !5451
  store ptr %incdec.ptr1, ptr %dbuf16, align 8, !dbg !5451
  store i16 %8, ptr %9, align 2, !dbg !5452
  br label %while.cond, !dbg !5446, !llvm.loop !5453

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %send16) #15, !dbg !5454
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf16) #15, !dbg !5454
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf16) #15, !dbg !5454
  ret void, !dbg !5454
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5455 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_fb_xfrm(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %dst_pixsize, ptr noundef %src, ptr noundef %fb, ptr noundef %clip, i1 noundef zeroext %vaddr_cached_hint, ptr noundef %xfrm_line) #0 align 16 !dbg !5094 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %dst_pixsize.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %vaddr_cached_hint.addr = alloca i8, align 1
  %xfrm_line.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5099, metadata !DIExpression()), !dbg !5459
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !5100, metadata !DIExpression()), !dbg !5460
  store ptr %dst_pixsize, ptr %dst_pixsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pixsize.addr, metadata !5101, metadata !DIExpression()), !dbg !5461
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5102, metadata !DIExpression()), !dbg !5462
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !5103, metadata !DIExpression()), !dbg !5463
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !5104, metadata !DIExpression()), !dbg !5464
  %frombool = zext i1 %vaddr_cached_hint to i8
  store i8 %frombool, ptr %vaddr_cached_hint.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %vaddr_cached_hint.addr, metadata !5105, metadata !DIExpression()), !dbg !5465
  store ptr %xfrm_line, ptr %xfrm_line.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xfrm_line.addr, metadata !5106, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5467
  %tobool = icmp ne ptr %0, null, !dbg !5467
  br i1 %tobool, label %if.end, label %if.then, !dbg !5469

if.then:                                          ; preds = %entry
  store ptr @drm_fb_xfrm.default_dst_pitch, ptr %dst_pitch.addr, align 8, !dbg !5470
  br label %if.end, !dbg !5471

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !5472
  %arrayidx = getelementptr %struct.iosys_map, ptr %1, i64 0, !dbg !5472
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %arrayidx, i32 0, i32 1, !dbg !5474
  %2 = load i8, ptr %is_iomem, align 8, !dbg !5474, !range !5306, !noundef !926
  %tobool1 = trunc i8 %2 to i1, !dbg !5474
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5475

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !5476
  %arrayidx3 = getelementptr %struct.iosys_map, ptr %3, i64 0, !dbg !5476
  %4 = getelementptr inbounds %struct.iosys_map, ptr %arrayidx3, i32 0, i32 0, !dbg !5477
  %5 = load ptr, ptr %4, align 8, !dbg !5477
  %6 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5478
  %arrayidx4 = getelementptr i32, ptr %6, i64 0, !dbg !5478
  %7 = load i32, ptr %arrayidx4, align 4, !dbg !5478
  %conv = zext i32 %7 to i64, !dbg !5478
  %8 = load ptr, ptr %dst_pixsize.addr, align 8, !dbg !5479
  %arrayidx5 = getelementptr i8, ptr %8, i64 0, !dbg !5479
  %9 = load i8, ptr %arrayidx5, align 1, !dbg !5479
  %conv6 = zext i8 %9 to i64, !dbg !5479
  %10 = load ptr, ptr %src.addr, align 8, !dbg !5480
  %arrayidx7 = getelementptr %struct.iosys_map, ptr %10, i64 0, !dbg !5480
  %11 = getelementptr inbounds %struct.iosys_map, ptr %arrayidx7, i32 0, i32 0, !dbg !5481
  %12 = load ptr, ptr %11, align 8, !dbg !5481
  %13 = load ptr, ptr %fb.addr, align 8, !dbg !5482
  %14 = load ptr, ptr %clip.addr, align 8, !dbg !5483
  %15 = load i8, ptr %vaddr_cached_hint.addr, align 1, !dbg !5484, !range !5306, !noundef !926
  %tobool8 = trunc i8 %15 to i1, !dbg !5484
  %16 = load ptr, ptr %xfrm_line.addr, align 8, !dbg !5485
  %call = call i32 @__drm_fb_xfrm_toio(ptr noundef %5, i64 noundef %conv, i64 noundef %conv6, ptr noundef %12, ptr noundef %13, ptr noundef %14, i1 noundef zeroext %tobool8, ptr noundef %16) #14, !dbg !5486
  store i32 %call, ptr %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !5488
  %arrayidx9 = getelementptr %struct.iosys_map, ptr %17, i64 0, !dbg !5488
  %18 = getelementptr inbounds %struct.iosys_map, ptr %arrayidx9, i32 0, i32 0, !dbg !5489
  %19 = load ptr, ptr %18, align 8, !dbg !5489
  %20 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5490
  %arrayidx10 = getelementptr i32, ptr %20, i64 0, !dbg !5490
  %21 = load i32, ptr %arrayidx10, align 4, !dbg !5490
  %conv11 = zext i32 %21 to i64, !dbg !5490
  %22 = load ptr, ptr %dst_pixsize.addr, align 8, !dbg !5491
  %arrayidx12 = getelementptr i8, ptr %22, i64 0, !dbg !5491
  %23 = load i8, ptr %arrayidx12, align 1, !dbg !5491
  %conv13 = zext i8 %23 to i64, !dbg !5491
  %24 = load ptr, ptr %src.addr, align 8, !dbg !5492
  %arrayidx14 = getelementptr %struct.iosys_map, ptr %24, i64 0, !dbg !5492
  %25 = getelementptr inbounds %struct.iosys_map, ptr %arrayidx14, i32 0, i32 0, !dbg !5493
  %26 = load ptr, ptr %25, align 8, !dbg !5493
  %27 = load ptr, ptr %fb.addr, align 8, !dbg !5494
  %28 = load ptr, ptr %clip.addr, align 8, !dbg !5495
  %29 = load i8, ptr %vaddr_cached_hint.addr, align 1, !dbg !5496, !range !5306, !noundef !926
  %tobool15 = trunc i8 %29 to i1, !dbg !5496
  %30 = load ptr, ptr %xfrm_line.addr, align 8, !dbg !5497
  %call16 = call i32 @__drm_fb_xfrm(ptr noundef %19, i64 noundef %conv11, i64 noundef %conv13, ptr noundef %26, ptr noundef %27, ptr noundef %28, i1 noundef zeroext %tobool15, ptr noundef %30) #14, !dbg !5498
  store i32 %call16, ptr %retval, align 4, !dbg !5499
  br label %return, !dbg !5499

return:                                           ; preds = %if.else, %if.then2
  %31 = load i32, ptr %retval, align 4, !dbg !5500
  ret i32 %31, !dbg !5500
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_rgb332(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4868 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4870, metadata !DIExpression()), !dbg !5501
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4871, metadata !DIExpression()), !dbg !5502
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4872, metadata !DIExpression()), !dbg !5503
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4873, metadata !DIExpression()), !dbg !5504
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4874, metadata !DIExpression()), !dbg !5505
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5506
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5507
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5508
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !5509
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !5510
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_rgb332.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_rgb332_line) #14, !dbg !5511
  ret void, !dbg !5512
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_rgb332_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5513 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf8 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5515, metadata !DIExpression()), !dbg !5524
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5516, metadata !DIExpression()), !dbg !5525
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5517, metadata !DIExpression()), !dbg !5526
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf8) #15, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %dbuf8, metadata !5518, metadata !DIExpression()), !dbg !5528
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5529
  store ptr %0, ptr %dbuf8, align 8, !dbg !5528
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5530
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5519, metadata !DIExpression()), !dbg !5531
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5532
  store ptr %1, ptr %sbuf32, align 8, !dbg !5531
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5522, metadata !DIExpression()), !dbg !5534
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !5523, metadata !DIExpression()), !dbg !5536
  store i32 0, ptr %x, align 4, !dbg !5537
  br label %for.cond, !dbg !5539

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !5540
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5542
  %cmp = icmp ult i32 %2, %3, !dbg !5543
  br i1 %cmp, label %for.body, label %for.end, !dbg !5544

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5545
  %5 = load i32, ptr %x, align 4, !dbg !5545
  %idxprom = zext i32 %5 to i64, !dbg !5545
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5545
  %6 = load i32, ptr %arrayidx, align 4, !dbg !5545
  store i32 %6, ptr %pix, align 4, !dbg !5547
  %7 = load i32, ptr %pix, align 4, !dbg !5548
  %and = and i32 %7, 14680064, !dbg !5549
  %shr = lshr i32 %and, 16, !dbg !5550
  %8 = load i32, ptr %pix, align 4, !dbg !5551
  %and1 = and i32 %8, 57344, !dbg !5552
  %shr2 = lshr i32 %and1, 11, !dbg !5553
  %or = or i32 %shr, %shr2, !dbg !5554
  %9 = load i32, ptr %pix, align 4, !dbg !5555
  %and3 = and i32 %9, 192, !dbg !5556
  %shr4 = lshr i32 %and3, 6, !dbg !5557
  %or5 = or i32 %or, %shr4, !dbg !5558
  %conv = trunc i32 %or5 to i8, !dbg !5559
  %10 = load ptr, ptr %dbuf8, align 8, !dbg !5560
  %11 = load i32, ptr %x, align 4, !dbg !5561
  %idxprom6 = zext i32 %11 to i64, !dbg !5560
  %arrayidx7 = getelementptr i8, ptr %10, i64 %idxprom6, !dbg !5560
  store i8 %conv, ptr %arrayidx7, align 1, !dbg !5562
  br label %for.inc, !dbg !5563

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %x, align 4, !dbg !5564
  %inc = add i32 %12, 1, !dbg !5564
  store i32 %inc, ptr %x, align 4, !dbg !5564
  br label %for.cond, !dbg !5565, !llvm.loop !5566

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf8) #15, !dbg !5568
  ret void, !dbg !5568
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_rgb565(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip, i1 noundef zeroext %__swab) #0 align 16 !dbg !4881 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %__swab.addr = alloca i8, align 1
  %xfrm_line = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4883, metadata !DIExpression()), !dbg !5569
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4884, metadata !DIExpression()), !dbg !5570
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4885, metadata !DIExpression()), !dbg !5571
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4886, metadata !DIExpression()), !dbg !5572
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4887, metadata !DIExpression()), !dbg !5573
  %frombool = zext i1 %__swab to i8
  store i8 %frombool, ptr %__swab.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %__swab.addr, metadata !4888, metadata !DIExpression()), !dbg !5574
  call void @llvm.lifetime.start.p0(i64 8, ptr %xfrm_line) #15, !dbg !5575
  call void @llvm.dbg.declare(metadata ptr %xfrm_line, metadata !4889, metadata !DIExpression()), !dbg !5576
  %0 = load i8, ptr %__swab.addr, align 1, !dbg !5577, !range !5306, !noundef !926
  %tobool = trunc i8 %0 to i1, !dbg !5577
  br i1 %tobool, label %if.then, label %if.else, !dbg !5579

if.then:                                          ; preds = %entry
  store ptr @drm_fb_xrgb8888_to_rgb565_swab_line, ptr %xfrm_line, align 8, !dbg !5580
  br label %if.end, !dbg !5581

if.else:                                          ; preds = %entry
  store ptr @drm_fb_xrgb8888_to_rgb565_line, ptr %xfrm_line, align 8, !dbg !5582
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !5583
  %2 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5584
  %3 = load ptr, ptr %src.addr, align 8, !dbg !5585
  %4 = load ptr, ptr %fb.addr, align 8, !dbg !5586
  %5 = load ptr, ptr %clip.addr, align 8, !dbg !5587
  %6 = load ptr, ptr %xfrm_line, align 8, !dbg !5588
  %call = call i32 @drm_fb_xfrm(ptr noundef %1, ptr noundef %2, ptr noundef @drm_fb_xrgb8888_to_rgb565.dst_pixsize, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false, ptr noundef %6) #14, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %xfrm_line) #15, !dbg !5590
  ret void, !dbg !5590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_rgb565_swab_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5591 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf16 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %val16 = alloca i16, align 2
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5593, metadata !DIExpression()), !dbg !5602
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5594, metadata !DIExpression()), !dbg !5603
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5595, metadata !DIExpression()), !dbg !5604
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf16) #15, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %dbuf16, metadata !5596, metadata !DIExpression()), !dbg !5606
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5607
  store ptr %0, ptr %dbuf16, align 8, !dbg !5606
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5598, metadata !DIExpression()), !dbg !5609
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5610
  store ptr %1, ptr %sbuf32, align 8, !dbg !5609
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5599, metadata !DIExpression()), !dbg !5612
  call void @llvm.lifetime.start.p0(i64 2, ptr %val16) #15, !dbg !5613
  call void @llvm.dbg.declare(metadata ptr %val16, metadata !5600, metadata !DIExpression()), !dbg !5614
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !5601, metadata !DIExpression()), !dbg !5616
  store i32 0, ptr %x, align 4, !dbg !5617
  br label %for.cond, !dbg !5619

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !5620
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5622
  %cmp = icmp ult i32 %2, %3, !dbg !5623
  br i1 %cmp, label %for.body, label %for.end, !dbg !5624

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5625
  %5 = load i32, ptr %x, align 4, !dbg !5625
  %idxprom = zext i32 %5 to i64, !dbg !5625
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5625
  %6 = load i32, ptr %arrayidx, align 4, !dbg !5625
  store i32 %6, ptr %pix, align 4, !dbg !5627
  %7 = load i32, ptr %pix, align 4, !dbg !5628
  %and = and i32 %7, 16252928, !dbg !5629
  %shr = lshr i32 %and, 8, !dbg !5630
  %8 = load i32, ptr %pix, align 4, !dbg !5631
  %and1 = and i32 %8, 64512, !dbg !5632
  %shr2 = lshr i32 %and1, 5, !dbg !5633
  %or = or i32 %shr, %shr2, !dbg !5634
  %9 = load i32, ptr %pix, align 4, !dbg !5635
  %and3 = and i32 %9, 248, !dbg !5636
  %shr4 = lshr i32 %and3, 3, !dbg !5637
  %or5 = or i32 %or, %shr4, !dbg !5638
  %conv = trunc i32 %or5 to i16, !dbg !5639
  store i16 %conv, ptr %val16, align 2, !dbg !5640
  %10 = load i16, ptr %val16, align 2, !dbg !5641
  %11 = call i16 @llvm.bswap.i16(i16 %10), !dbg !5641
  %12 = load ptr, ptr %dbuf16, align 8, !dbg !5642
  %13 = load i32, ptr %x, align 4, !dbg !5643
  %idxprom6 = zext i32 %13 to i64, !dbg !5642
  %arrayidx7 = getelementptr i16, ptr %12, i64 %idxprom6, !dbg !5642
  store i16 %11, ptr %arrayidx7, align 2, !dbg !5644
  br label %for.inc, !dbg !5645

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %x, align 4, !dbg !5646
  %inc = add i32 %14, 1, !dbg !5646
  store i32 %inc, ptr %x, align 4, !dbg !5646
  br label %for.cond, !dbg !5647, !llvm.loop !5648

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 2, ptr %val16) #15, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf16) #15, !dbg !5650
  ret void, !dbg !5650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_rgb565_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5651 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf16 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %val16 = alloca i16, align 2
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5653, metadata !DIExpression()), !dbg !5661
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5654, metadata !DIExpression()), !dbg !5662
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5655, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf16) #15, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %dbuf16, metadata !5656, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5666
  store ptr %0, ptr %dbuf16, align 8, !dbg !5665
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5657, metadata !DIExpression()), !dbg !5668
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5669
  store ptr %1, ptr %sbuf32, align 8, !dbg !5668
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5658, metadata !DIExpression()), !dbg !5671
  call void @llvm.lifetime.start.p0(i64 2, ptr %val16) #15, !dbg !5672
  call void @llvm.dbg.declare(metadata ptr %val16, metadata !5659, metadata !DIExpression()), !dbg !5673
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !5660, metadata !DIExpression()), !dbg !5675
  store i32 0, ptr %x, align 4, !dbg !5676
  br label %for.cond, !dbg !5678

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !5679
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5681
  %cmp = icmp ult i32 %2, %3, !dbg !5682
  br i1 %cmp, label %for.body, label %for.end, !dbg !5683

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5684
  %5 = load i32, ptr %x, align 4, !dbg !5684
  %idxprom = zext i32 %5 to i64, !dbg !5684
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5684
  %6 = load i32, ptr %arrayidx, align 4, !dbg !5684
  store i32 %6, ptr %pix, align 4, !dbg !5686
  %7 = load i32, ptr %pix, align 4, !dbg !5687
  %and = and i32 %7, 16252928, !dbg !5688
  %shr = lshr i32 %and, 8, !dbg !5689
  %8 = load i32, ptr %pix, align 4, !dbg !5690
  %and1 = and i32 %8, 64512, !dbg !5691
  %shr2 = lshr i32 %and1, 5, !dbg !5692
  %or = or i32 %shr, %shr2, !dbg !5693
  %9 = load i32, ptr %pix, align 4, !dbg !5694
  %and3 = and i32 %9, 248, !dbg !5695
  %shr4 = lshr i32 %and3, 3, !dbg !5696
  %or5 = or i32 %or, %shr4, !dbg !5697
  %conv = trunc i32 %or5 to i16, !dbg !5698
  store i16 %conv, ptr %val16, align 2, !dbg !5699
  %10 = load i16, ptr %val16, align 2, !dbg !5700
  %11 = load ptr, ptr %dbuf16, align 8, !dbg !5701
  %12 = load i32, ptr %x, align 4, !dbg !5702
  %idxprom6 = zext i32 %12 to i64, !dbg !5701
  %arrayidx7 = getelementptr i16, ptr %11, i64 %idxprom6, !dbg !5701
  store i16 %10, ptr %arrayidx7, align 2, !dbg !5703
  br label %for.inc, !dbg !5704

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %x, align 4, !dbg !5705
  %inc = add i32 %13, 1, !dbg !5705
  store i32 %inc, ptr %x, align 4, !dbg !5705
  br label %for.cond, !dbg !5706, !llvm.loop !5707

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 2, ptr %val16) #15, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf16) #15, !dbg !5709
  ret void, !dbg !5709
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_xrgb1555(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4894 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4896, metadata !DIExpression()), !dbg !5710
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4897, metadata !DIExpression()), !dbg !5711
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4898, metadata !DIExpression()), !dbg !5712
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4899, metadata !DIExpression()), !dbg !5713
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4900, metadata !DIExpression()), !dbg !5714
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5715
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5716
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5717
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !5718
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !5719
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_xrgb1555.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_xrgb1555_line) #14, !dbg !5720
  ret void, !dbg !5721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_xrgb1555_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5722 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf16 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %val16 = alloca i16, align 2
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5724, metadata !DIExpression()), !dbg !5732
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5725, metadata !DIExpression()), !dbg !5733
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5726, metadata !DIExpression()), !dbg !5734
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf16) #15, !dbg !5735
  call void @llvm.dbg.declare(metadata ptr %dbuf16, metadata !5727, metadata !DIExpression()), !dbg !5736
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5737
  store ptr %0, ptr %dbuf16, align 8, !dbg !5736
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5738
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5728, metadata !DIExpression()), !dbg !5739
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5740
  store ptr %1, ptr %sbuf32, align 8, !dbg !5739
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5729, metadata !DIExpression()), !dbg !5742
  call void @llvm.lifetime.start.p0(i64 2, ptr %val16) #15, !dbg !5743
  call void @llvm.dbg.declare(metadata ptr %val16, metadata !5730, metadata !DIExpression()), !dbg !5744
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !5745
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !5731, metadata !DIExpression()), !dbg !5746
  store i32 0, ptr %x, align 4, !dbg !5747
  br label %for.cond, !dbg !5749

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !5750
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5752
  %cmp = icmp ult i32 %2, %3, !dbg !5753
  br i1 %cmp, label %for.body, label %for.end, !dbg !5754

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5755
  %5 = load i32, ptr %x, align 4, !dbg !5755
  %idxprom = zext i32 %5 to i64, !dbg !5755
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5755
  %6 = load i32, ptr %arrayidx, align 4, !dbg !5755
  store i32 %6, ptr %pix, align 4, !dbg !5757
  %7 = load i32, ptr %pix, align 4, !dbg !5758
  %and = and i32 %7, 16252928, !dbg !5759
  %shr = lshr i32 %and, 9, !dbg !5760
  %8 = load i32, ptr %pix, align 4, !dbg !5761
  %and1 = and i32 %8, 63488, !dbg !5762
  %shr2 = lshr i32 %and1, 6, !dbg !5763
  %or = or i32 %shr, %shr2, !dbg !5764
  %9 = load i32, ptr %pix, align 4, !dbg !5765
  %and3 = and i32 %9, 248, !dbg !5766
  %shr4 = lshr i32 %and3, 3, !dbg !5767
  %or5 = or i32 %or, %shr4, !dbg !5768
  %conv = trunc i32 %or5 to i16, !dbg !5769
  store i16 %conv, ptr %val16, align 2, !dbg !5770
  %10 = load i16, ptr %val16, align 2, !dbg !5771
  %11 = load ptr, ptr %dbuf16, align 8, !dbg !5772
  %12 = load i32, ptr %x, align 4, !dbg !5773
  %idxprom6 = zext i32 %12 to i64, !dbg !5772
  %arrayidx7 = getelementptr i16, ptr %11, i64 %idxprom6, !dbg !5772
  store i16 %10, ptr %arrayidx7, align 2, !dbg !5774
  br label %for.inc, !dbg !5775

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %x, align 4, !dbg !5776
  %inc = add i32 %13, 1, !dbg !5776
  store i32 %inc, ptr %x, align 4, !dbg !5776
  br label %for.cond, !dbg !5777, !llvm.loop !5778

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 2, ptr %val16) #15, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf16) #15, !dbg !5780
  ret void, !dbg !5780
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_argb1555(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4905 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4907, metadata !DIExpression()), !dbg !5781
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4908, metadata !DIExpression()), !dbg !5782
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4909, metadata !DIExpression()), !dbg !5783
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4910, metadata !DIExpression()), !dbg !5784
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4911, metadata !DIExpression()), !dbg !5785
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5786
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5787
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5788
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !5789
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !5790
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_argb1555.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_argb1555_line) #14, !dbg !5791
  ret void, !dbg !5792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_argb1555_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5793 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf16 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %val16 = alloca i16, align 2
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5795, metadata !DIExpression()), !dbg !5803
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5796, metadata !DIExpression()), !dbg !5804
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5797, metadata !DIExpression()), !dbg !5805
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf16) #15, !dbg !5806
  call void @llvm.dbg.declare(metadata ptr %dbuf16, metadata !5798, metadata !DIExpression()), !dbg !5807
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5808
  store ptr %0, ptr %dbuf16, align 8, !dbg !5807
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5799, metadata !DIExpression()), !dbg !5810
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5811
  store ptr %1, ptr %sbuf32, align 8, !dbg !5810
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5800, metadata !DIExpression()), !dbg !5813
  call void @llvm.lifetime.start.p0(i64 2, ptr %val16) #15, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %val16, metadata !5801, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !5802, metadata !DIExpression()), !dbg !5817
  store i32 0, ptr %x, align 4, !dbg !5818
  br label %for.cond, !dbg !5820

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !5821
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5823
  %cmp = icmp ult i32 %2, %3, !dbg !5824
  br i1 %cmp, label %for.body, label %for.end, !dbg !5825

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5826
  %5 = load i32, ptr %x, align 4, !dbg !5826
  %idxprom = zext i32 %5 to i64, !dbg !5826
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5826
  %6 = load i32, ptr %arrayidx, align 4, !dbg !5826
  store i32 %6, ptr %pix, align 4, !dbg !5828
  %7 = load i32, ptr %pix, align 4, !dbg !5829
  %and = and i32 %7, 16252928, !dbg !5830
  %shr = lshr i32 %and, 9, !dbg !5831
  %conv = zext i32 %shr to i64, !dbg !5832
  %or = or i64 32768, %conv, !dbg !5833
  %8 = load i32, ptr %pix, align 4, !dbg !5834
  %and1 = and i32 %8, 63488, !dbg !5835
  %shr2 = lshr i32 %and1, 6, !dbg !5836
  %conv3 = zext i32 %shr2 to i64, !dbg !5837
  %or4 = or i64 %or, %conv3, !dbg !5838
  %9 = load i32, ptr %pix, align 4, !dbg !5839
  %and5 = and i32 %9, 248, !dbg !5840
  %shr6 = lshr i32 %and5, 3, !dbg !5841
  %conv7 = zext i32 %shr6 to i64, !dbg !5842
  %or8 = or i64 %or4, %conv7, !dbg !5843
  %conv9 = trunc i64 %or8 to i16, !dbg !5844
  store i16 %conv9, ptr %val16, align 2, !dbg !5845
  %10 = load i16, ptr %val16, align 2, !dbg !5846
  %11 = load ptr, ptr %dbuf16, align 8, !dbg !5847
  %12 = load i32, ptr %x, align 4, !dbg !5848
  %idxprom10 = zext i32 %12 to i64, !dbg !5847
  %arrayidx11 = getelementptr i16, ptr %11, i64 %idxprom10, !dbg !5847
  store i16 %10, ptr %arrayidx11, align 2, !dbg !5849
  br label %for.inc, !dbg !5850

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %x, align 4, !dbg !5851
  %inc = add i32 %13, 1, !dbg !5851
  store i32 %inc, ptr %x, align 4, !dbg !5851
  br label %for.cond, !dbg !5852, !llvm.loop !5853

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !5855
  call void @llvm.lifetime.end.p0(i64 2, ptr %val16) #15, !dbg !5855
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !5855
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5855
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf16) #15, !dbg !5855
  ret void, !dbg !5855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_rgba5551(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4916 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4918, metadata !DIExpression()), !dbg !5856
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4919, metadata !DIExpression()), !dbg !5857
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4920, metadata !DIExpression()), !dbg !5858
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4921, metadata !DIExpression()), !dbg !5859
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4922, metadata !DIExpression()), !dbg !5860
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5861
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5862
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5863
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !5864
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !5865
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_rgba5551.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_rgba5551_line) #14, !dbg !5866
  ret void, !dbg !5867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_rgba5551_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5868 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf16 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %val16 = alloca i16, align 2
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5870, metadata !DIExpression()), !dbg !5878
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5871, metadata !DIExpression()), !dbg !5879
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5872, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf16) #15, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %dbuf16, metadata !5873, metadata !DIExpression()), !dbg !5882
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5883
  store ptr %0, ptr %dbuf16, align 8, !dbg !5882
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5874, metadata !DIExpression()), !dbg !5885
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5886
  store ptr %1, ptr %sbuf32, align 8, !dbg !5885
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !5887
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5875, metadata !DIExpression()), !dbg !5888
  call void @llvm.lifetime.start.p0(i64 2, ptr %val16) #15, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %val16, metadata !5876, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !5891
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !5877, metadata !DIExpression()), !dbg !5892
  store i32 0, ptr %x, align 4, !dbg !5893
  br label %for.cond, !dbg !5895

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !5896
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5898
  %cmp = icmp ult i32 %2, %3, !dbg !5899
  br i1 %cmp, label %for.body, label %for.end, !dbg !5900

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5901
  %5 = load i32, ptr %x, align 4, !dbg !5901
  %idxprom = zext i32 %5 to i64, !dbg !5901
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5901
  %6 = load i32, ptr %arrayidx, align 4, !dbg !5901
  store i32 %6, ptr %pix, align 4, !dbg !5903
  %7 = load i32, ptr %pix, align 4, !dbg !5904
  %and = and i32 %7, 16252928, !dbg !5905
  %shr = lshr i32 %and, 8, !dbg !5906
  %8 = load i32, ptr %pix, align 4, !dbg !5907
  %and1 = and i32 %8, 63488, !dbg !5908
  %shr2 = lshr i32 %and1, 5, !dbg !5909
  %or = or i32 %shr, %shr2, !dbg !5910
  %9 = load i32, ptr %pix, align 4, !dbg !5911
  %and3 = and i32 %9, 248, !dbg !5912
  %shr4 = lshr i32 %and3, 2, !dbg !5913
  %or5 = or i32 %or, %shr4, !dbg !5914
  %conv = zext i32 %or5 to i64, !dbg !5915
  %or6 = or i64 %conv, 1, !dbg !5916
  %conv7 = trunc i64 %or6 to i16, !dbg !5915
  store i16 %conv7, ptr %val16, align 2, !dbg !5917
  %10 = load i16, ptr %val16, align 2, !dbg !5918
  %11 = load ptr, ptr %dbuf16, align 8, !dbg !5919
  %12 = load i32, ptr %x, align 4, !dbg !5920
  %idxprom8 = zext i32 %12 to i64, !dbg !5919
  %arrayidx9 = getelementptr i16, ptr %11, i64 %idxprom8, !dbg !5919
  store i16 %10, ptr %arrayidx9, align 2, !dbg !5921
  br label %for.inc, !dbg !5922

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %x, align 4, !dbg !5923
  %inc = add i32 %13, 1, !dbg !5923
  store i32 %inc, ptr %x, align 4, !dbg !5923
  br label %for.cond, !dbg !5924, !llvm.loop !5925

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 2, ptr %val16) #15, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf16) #15, !dbg !5927
  ret void, !dbg !5927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_rgb888(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4927 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4929, metadata !DIExpression()), !dbg !5928
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4930, metadata !DIExpression()), !dbg !5929
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4931, metadata !DIExpression()), !dbg !5930
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4932, metadata !DIExpression()), !dbg !5931
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4933, metadata !DIExpression()), !dbg !5932
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5933
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !5934
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5935
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !5936
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !5937
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_rgb888.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_rgb888_line) #14, !dbg !5938
  ret void, !dbg !5939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_rgb888_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !5940 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf8 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !5942, metadata !DIExpression()), !dbg !5949
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !5943, metadata !DIExpression()), !dbg !5950
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !5944, metadata !DIExpression()), !dbg !5951
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf8) #15, !dbg !5952
  call void @llvm.dbg.declare(metadata ptr %dbuf8, metadata !5945, metadata !DIExpression()), !dbg !5953
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !5954
  store ptr %0, ptr %dbuf8, align 8, !dbg !5953
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !5955
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !5946, metadata !DIExpression()), !dbg !5956
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !5957
  store ptr %1, ptr %sbuf32, align 8, !dbg !5956
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5947, metadata !DIExpression()), !dbg !5959
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !5960
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !5948, metadata !DIExpression()), !dbg !5961
  store i32 0, ptr %x, align 4, !dbg !5962
  br label %for.cond, !dbg !5964

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !5965
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !5967
  %cmp = icmp ult i32 %2, %3, !dbg !5968
  br i1 %cmp, label %for.body, label %for.end, !dbg !5969

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !5970
  %5 = load i32, ptr %x, align 4, !dbg !5970
  %idxprom = zext i32 %5 to i64, !dbg !5970
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !5970
  %6 = load i32, ptr %arrayidx, align 4, !dbg !5970
  store i32 %6, ptr %pix, align 4, !dbg !5972
  %7 = load i32, ptr %pix, align 4, !dbg !5973
  %and = and i32 %7, 255, !dbg !5974
  %shr = lshr i32 %and, 0, !dbg !5975
  %conv = trunc i32 %shr to i8, !dbg !5976
  %8 = load ptr, ptr %dbuf8, align 8, !dbg !5977
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !5977
  store ptr %incdec.ptr, ptr %dbuf8, align 8, !dbg !5977
  store i8 %conv, ptr %8, align 1, !dbg !5978
  %9 = load i32, ptr %pix, align 4, !dbg !5979
  %and1 = and i32 %9, 65280, !dbg !5980
  %shr2 = lshr i32 %and1, 8, !dbg !5981
  %conv3 = trunc i32 %shr2 to i8, !dbg !5982
  %10 = load ptr, ptr %dbuf8, align 8, !dbg !5983
  %incdec.ptr4 = getelementptr i8, ptr %10, i32 1, !dbg !5983
  store ptr %incdec.ptr4, ptr %dbuf8, align 8, !dbg !5983
  store i8 %conv3, ptr %10, align 1, !dbg !5984
  %11 = load i32, ptr %pix, align 4, !dbg !5985
  %and5 = and i32 %11, 16711680, !dbg !5986
  %shr6 = lshr i32 %and5, 16, !dbg !5987
  %conv7 = trunc i32 %shr6 to i8, !dbg !5988
  %12 = load ptr, ptr %dbuf8, align 8, !dbg !5989
  %incdec.ptr8 = getelementptr i8, ptr %12, i32 1, !dbg !5989
  store ptr %incdec.ptr8, ptr %dbuf8, align 8, !dbg !5989
  store i8 %conv7, ptr %12, align 1, !dbg !5990
  br label %for.inc, !dbg !5991

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %x, align 4, !dbg !5992
  %inc = add i32 %13, 1, !dbg !5992
  store i32 %inc, ptr %x, align 4, !dbg !5992
  br label %for.cond, !dbg !5993, !llvm.loop !5994

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !5996
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !5996
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !5996
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf8) #15, !dbg !5996
  ret void, !dbg !5996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_argb8888(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4938 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4940, metadata !DIExpression()), !dbg !5997
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4941, metadata !DIExpression()), !dbg !5998
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4942, metadata !DIExpression()), !dbg !5999
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4943, metadata !DIExpression()), !dbg !6000
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4944, metadata !DIExpression()), !dbg !6001
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6002
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6003
  %2 = load ptr, ptr %src.addr, align 8, !dbg !6004
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !6005
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !6006
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_argb8888.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_argb8888_line) #14, !dbg !6007
  ret void, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_argb8888_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !6009 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf32 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !6011, metadata !DIExpression()), !dbg !6019
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !6012, metadata !DIExpression()), !dbg !6020
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !6013, metadata !DIExpression()), !dbg !6021
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf32) #15, !dbg !6022
  call void @llvm.dbg.declare(metadata ptr %dbuf32, metadata !6014, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !6024
  store ptr %0, ptr %dbuf32, align 8, !dbg !6023
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !6016, metadata !DIExpression()), !dbg !6026
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !6027
  store ptr %1, ptr %sbuf32, align 8, !dbg !6026
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !6028
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6017, metadata !DIExpression()), !dbg !6029
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !6030
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !6018, metadata !DIExpression()), !dbg !6031
  store i32 0, ptr %x, align 4, !dbg !6032
  br label %for.cond, !dbg !6034

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !6035
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !6037
  %cmp = icmp ult i32 %2, %3, !dbg !6038
  br i1 %cmp, label %for.body, label %for.end, !dbg !6039

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !6040
  %5 = load i32, ptr %x, align 4, !dbg !6040
  %idxprom = zext i32 %5 to i64, !dbg !6040
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !6040
  %6 = load i32, ptr %arrayidx, align 4, !dbg !6040
  store i32 %6, ptr %pix, align 4, !dbg !6042
  %7 = load i32, ptr %pix, align 4, !dbg !6043
  %conv = zext i32 %7 to i64, !dbg !6043
  %or = or i64 %conv, 4278190080, !dbg !6043
  %conv1 = trunc i64 %or to i32, !dbg !6043
  store i32 %conv1, ptr %pix, align 4, !dbg !6043
  %8 = load i32, ptr %pix, align 4, !dbg !6044
  %9 = load ptr, ptr %dbuf32, align 8, !dbg !6045
  %10 = load i32, ptr %x, align 4, !dbg !6046
  %idxprom2 = zext i32 %10 to i64, !dbg !6045
  %arrayidx3 = getelementptr i32, ptr %9, i64 %idxprom2, !dbg !6045
  store i32 %8, ptr %arrayidx3, align 4, !dbg !6047
  br label %for.inc, !dbg !6048

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %x, align 4, !dbg !6049
  %inc = add i32 %11, 1, !dbg !6049
  store i32 %inc, ptr %x, align 4, !dbg !6049
  br label %for.cond, !dbg !6050, !llvm.loop !6051

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf32) #15, !dbg !6053
  ret void, !dbg !6053
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_xrgb2101010(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4949 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4951, metadata !DIExpression()), !dbg !6054
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4952, metadata !DIExpression()), !dbg !6055
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4953, metadata !DIExpression()), !dbg !6056
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4954, metadata !DIExpression()), !dbg !6057
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4955, metadata !DIExpression()), !dbg !6058
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6059
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6060
  %2 = load ptr, ptr %src.addr, align 8, !dbg !6061
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !6062
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !6063
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_xrgb2101010.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_xrgb2101010_line) #14, !dbg !6064
  ret void, !dbg !6065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_xrgb2101010_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !6066 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf32 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %val32 = alloca i32, align 4
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !6068, metadata !DIExpression()), !dbg !6076
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !6069, metadata !DIExpression()), !dbg !6077
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !6070, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf32) #15, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %dbuf32, metadata !6071, metadata !DIExpression()), !dbg !6080
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !6081
  store ptr %0, ptr %dbuf32, align 8, !dbg !6080
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !6072, metadata !DIExpression()), !dbg !6083
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !6084
  store ptr %1, ptr %sbuf32, align 8, !dbg !6083
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !6085
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6073, metadata !DIExpression()), !dbg !6086
  call void @llvm.lifetime.start.p0(i64 4, ptr %val32) #15, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %val32, metadata !6074, metadata !DIExpression()), !dbg !6088
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !6075, metadata !DIExpression()), !dbg !6090
  store i32 0, ptr %x, align 4, !dbg !6091
  br label %for.cond, !dbg !6093

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !6094
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !6096
  %cmp = icmp ult i32 %2, %3, !dbg !6097
  br i1 %cmp, label %for.body, label %for.end, !dbg !6098

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !6099
  %5 = load i32, ptr %x, align 4, !dbg !6099
  %idxprom = zext i32 %5 to i64, !dbg !6099
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !6099
  %6 = load i32, ptr %arrayidx, align 4, !dbg !6099
  store i32 %6, ptr %pix, align 4, !dbg !6101
  %7 = load i32, ptr %pix, align 4, !dbg !6102
  %and = and i32 %7, 255, !dbg !6103
  %shl = shl i32 %and, 2, !dbg !6104
  %8 = load i32, ptr %pix, align 4, !dbg !6105
  %and1 = and i32 %8, 65280, !dbg !6106
  %shl2 = shl i32 %and1, 4, !dbg !6107
  %or = or i32 %shl, %shl2, !dbg !6108
  %9 = load i32, ptr %pix, align 4, !dbg !6109
  %and3 = and i32 %9, 16711680, !dbg !6110
  %shl4 = shl i32 %and3, 6, !dbg !6111
  %or5 = or i32 %or, %shl4, !dbg !6112
  store i32 %or5, ptr %val32, align 4, !dbg !6113
  %10 = load i32, ptr %val32, align 4, !dbg !6114
  %11 = load i32, ptr %val32, align 4, !dbg !6115
  %shr = lshr i32 %11, 8, !dbg !6116
  %and6 = and i32 %shr, 3148803, !dbg !6117
  %or7 = or i32 %10, %and6, !dbg !6118
  store i32 %or7, ptr %pix, align 4, !dbg !6119
  %12 = load i32, ptr %pix, align 4, !dbg !6120
  %13 = load ptr, ptr %dbuf32, align 8, !dbg !6121
  %incdec.ptr = getelementptr i32, ptr %13, i32 1, !dbg !6121
  store ptr %incdec.ptr, ptr %dbuf32, align 8, !dbg !6121
  store i32 %12, ptr %13, align 4, !dbg !6122
  br label %for.inc, !dbg !6123

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %x, align 4, !dbg !6124
  %inc = add i32 %14, 1, !dbg !6124
  store i32 %inc, ptr %x, align 4, !dbg !6124
  br label %for.cond, !dbg !6125, !llvm.loop !6126

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 4, ptr %val32) #15, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf32) #15, !dbg !6128
  ret void, !dbg !6128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_argb2101010(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4960 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4962, metadata !DIExpression()), !dbg !6129
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4963, metadata !DIExpression()), !dbg !6130
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4964, metadata !DIExpression()), !dbg !6131
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4965, metadata !DIExpression()), !dbg !6132
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4966, metadata !DIExpression()), !dbg !6133
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6134
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6135
  %2 = load ptr, ptr %src.addr, align 8, !dbg !6136
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !6137
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !6138
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_argb2101010.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_argb2101010_line) #14, !dbg !6139
  ret void, !dbg !6140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_argb2101010_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !6141 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf32 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %val32 = alloca i32, align 4
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !6143, metadata !DIExpression()), !dbg !6151
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !6144, metadata !DIExpression()), !dbg !6152
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !6145, metadata !DIExpression()), !dbg !6153
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf32) #15, !dbg !6154
  call void @llvm.dbg.declare(metadata ptr %dbuf32, metadata !6146, metadata !DIExpression()), !dbg !6155
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !6156
  store ptr %0, ptr %dbuf32, align 8, !dbg !6155
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !6157
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !6147, metadata !DIExpression()), !dbg !6158
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !6159
  store ptr %1, ptr %sbuf32, align 8, !dbg !6158
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !6160
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6148, metadata !DIExpression()), !dbg !6161
  call void @llvm.lifetime.start.p0(i64 4, ptr %val32) #15, !dbg !6162
  call void @llvm.dbg.declare(metadata ptr %val32, metadata !6149, metadata !DIExpression()), !dbg !6163
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !6150, metadata !DIExpression()), !dbg !6165
  store i32 0, ptr %x, align 4, !dbg !6166
  br label %for.cond, !dbg !6168

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !6169
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !6171
  %cmp = icmp ult i32 %2, %3, !dbg !6172
  br i1 %cmp, label %for.body, label %for.end, !dbg !6173

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !6174
  %5 = load i32, ptr %x, align 4, !dbg !6174
  %idxprom = zext i32 %5 to i64, !dbg !6174
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !6174
  %6 = load i32, ptr %arrayidx, align 4, !dbg !6174
  store i32 %6, ptr %pix, align 4, !dbg !6176
  %7 = load i32, ptr %pix, align 4, !dbg !6177
  %and = and i32 %7, 255, !dbg !6178
  %shl = shl i32 %and, 2, !dbg !6179
  %8 = load i32, ptr %pix, align 4, !dbg !6180
  %and1 = and i32 %8, 65280, !dbg !6181
  %shl2 = shl i32 %and1, 4, !dbg !6182
  %or = or i32 %shl, %shl2, !dbg !6183
  %9 = load i32, ptr %pix, align 4, !dbg !6184
  %and3 = and i32 %9, 16711680, !dbg !6185
  %shl4 = shl i32 %and3, 6, !dbg !6186
  %or5 = or i32 %or, %shl4, !dbg !6187
  store i32 %or5, ptr %val32, align 4, !dbg !6188
  %10 = load i32, ptr %val32, align 4, !dbg !6189
  %conv = zext i32 %10 to i64, !dbg !6189
  %or6 = or i64 3221225472, %conv, !dbg !6190
  %11 = load i32, ptr %val32, align 4, !dbg !6191
  %shr = lshr i32 %11, 8, !dbg !6192
  %and7 = and i32 %shr, 3148803, !dbg !6193
  %conv8 = zext i32 %and7 to i64, !dbg !6194
  %or9 = or i64 %or6, %conv8, !dbg !6195
  %conv10 = trunc i64 %or9 to i32, !dbg !6196
  store i32 %conv10, ptr %pix, align 4, !dbg !6197
  %12 = load i32, ptr %pix, align 4, !dbg !6198
  %13 = load ptr, ptr %dbuf32, align 8, !dbg !6199
  %incdec.ptr = getelementptr i32, ptr %13, i32 1, !dbg !6199
  store ptr %incdec.ptr, ptr %dbuf32, align 8, !dbg !6199
  store i32 %12, ptr %13, align 4, !dbg !6200
  br label %for.inc, !dbg !6201

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %x, align 4, !dbg !6202
  %inc = add i32 %14, 1, !dbg !6202
  store i32 %inc, ptr %x, align 4, !dbg !6202
  br label %for.cond, !dbg !6203, !llvm.loop !6204

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !6206
  call void @llvm.lifetime.end.p0(i64 4, ptr %val32) #15, !dbg !6206
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !6206
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !6206
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf32) #15, !dbg !6206
  ret void, !dbg !6206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_gray8(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4971 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4973, metadata !DIExpression()), !dbg !6207
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4974, metadata !DIExpression()), !dbg !6208
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4975, metadata !DIExpression()), !dbg !6209
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4976, metadata !DIExpression()), !dbg !6210
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4977, metadata !DIExpression()), !dbg !6211
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6212
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6213
  %2 = load ptr, ptr %src.addr, align 8, !dbg !6214
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !6215
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !6216
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_gray8.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_gray8_line) #14, !dbg !6217
  ret void, !dbg !6218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_gray8_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !6219 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf8 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %pix = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !6221, metadata !DIExpression()), !dbg !6234
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !6222, metadata !DIExpression()), !dbg !6235
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !6223, metadata !DIExpression()), !dbg !6236
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf8) #15, !dbg !6237
  call void @llvm.dbg.declare(metadata ptr %dbuf8, metadata !6224, metadata !DIExpression()), !dbg !6238
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !6239
  store ptr %0, ptr %dbuf8, align 8, !dbg !6238
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !6225, metadata !DIExpression()), !dbg !6241
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !6242
  store ptr %1, ptr %sbuf32, align 8, !dbg !6241
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !6243
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6226, metadata !DIExpression()), !dbg !6244
  store i32 0, ptr %x, align 4, !dbg !6245
  br label %for.cond, !dbg !6246

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !6247
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !6248
  %cmp = icmp ult i32 %2, %3, !dbg !6249
  br i1 %cmp, label %for.body, label %for.end, !dbg !6250

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !6227, metadata !DIExpression()), !dbg !6252
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !6253
  %5 = load i32, ptr %x, align 4, !dbg !6253
  %idxprom = zext i32 %5 to i64, !dbg !6253
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !6253
  %6 = load i32, ptr %arrayidx, align 4, !dbg !6253
  store i32 %6, ptr %pix, align 4, !dbg !6252
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #15, !dbg !6254
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6231, metadata !DIExpression()), !dbg !6255
  %7 = load i32, ptr %pix, align 4, !dbg !6256
  %and = and i32 %7, 16711680, !dbg !6257
  %shr = lshr i32 %and, 16, !dbg !6258
  %conv = trunc i32 %shr to i8, !dbg !6259
  store i8 %conv, ptr %r, align 1, !dbg !6255
  call void @llvm.lifetime.start.p0(i64 1, ptr %g) #15, !dbg !6260
  call void @llvm.dbg.declare(metadata ptr %g, metadata !6232, metadata !DIExpression()), !dbg !6261
  %8 = load i32, ptr %pix, align 4, !dbg !6262
  %and1 = and i32 %8, 65280, !dbg !6263
  %shr2 = lshr i32 %and1, 8, !dbg !6264
  %conv3 = trunc i32 %shr2 to i8, !dbg !6265
  store i8 %conv3, ptr %g, align 1, !dbg !6261
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #15, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6233, metadata !DIExpression()), !dbg !6267
  %9 = load i32, ptr %pix, align 4, !dbg !6268
  %and4 = and i32 %9, 255, !dbg !6269
  %conv5 = trunc i32 %and4 to i8, !dbg !6268
  store i8 %conv5, ptr %b, align 1, !dbg !6267
  %10 = load i8, ptr %r, align 1, !dbg !6270
  %conv6 = zext i8 %10 to i32, !dbg !6270
  %mul = mul i32 3, %conv6, !dbg !6271
  %11 = load i8, ptr %g, align 1, !dbg !6272
  %conv7 = zext i8 %11 to i32, !dbg !6272
  %mul8 = mul i32 6, %conv7, !dbg !6273
  %add = add i32 %mul, %mul8, !dbg !6274
  %12 = load i8, ptr %b, align 1, !dbg !6275
  %conv9 = zext i8 %12 to i32, !dbg !6275
  %add10 = add i32 %add, %conv9, !dbg !6276
  %div = sdiv i32 %add10, 10, !dbg !6277
  %conv11 = trunc i32 %div to i8, !dbg !6278
  %13 = load ptr, ptr %dbuf8, align 8, !dbg !6279
  %incdec.ptr = getelementptr i8, ptr %13, i32 1, !dbg !6279
  store ptr %incdec.ptr, ptr %dbuf8, align 8, !dbg !6279
  store i8 %conv11, ptr %13, align 1, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #15, !dbg !6281
  call void @llvm.lifetime.end.p0(i64 1, ptr %g) #15, !dbg !6281
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #15, !dbg !6281
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !6281
  br label %for.inc, !dbg !6282

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %x, align 4, !dbg !6283
  %inc = add i32 %14, 1, !dbg !6283
  store i32 %inc, ptr %x, align 4, !dbg !6283
  br label %for.cond, !dbg !6284, !llvm.loop !6285

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !6287
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !6287
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf8) #15, !dbg !6287
  ret void, !dbg !6287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_fb_blit(ptr noundef %dst, ptr noundef %dst_pitch, i32 noundef %dst_format, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !4982 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %dst_format.addr = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %fb_format = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4986, metadata !DIExpression()), !dbg !6288
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !4987, metadata !DIExpression()), !dbg !6289
  store i32 %dst_format, ptr %dst_format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dst_format.addr, metadata !4988, metadata !DIExpression()), !dbg !6290
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4989, metadata !DIExpression()), !dbg !6291
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !4990, metadata !DIExpression()), !dbg !6292
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !4991, metadata !DIExpression()), !dbg !6293
  call void @llvm.lifetime.start.p0(i64 4, ptr %fb_format) #15, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %fb_format, metadata !4992, metadata !DIExpression()), !dbg !6295
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !6296
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4, !dbg !6297
  %1 = load ptr, ptr %format, align 8, !dbg !6297
  %format1 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 0, !dbg !6298
  %2 = load i32, ptr %format1, align 4, !dbg !6298
  store i32 %2, ptr %fb_format, align 4, !dbg !6295
  %3 = load i32, ptr %fb_format, align 4, !dbg !6299
  %4 = load i32, ptr %dst_format.addr, align 4, !dbg !6301
  %cmp = icmp eq i32 %3, %4, !dbg !6302
  br i1 %cmp, label %if.then, label %if.else, !dbg !6303

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !6304
  %6 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6306
  %7 = load ptr, ptr %src.addr, align 8, !dbg !6307
  %8 = load ptr, ptr %fb.addr, align 8, !dbg !6308
  %9 = load ptr, ptr %clip.addr, align 8, !dbg !6309
  call void @drm_fb_memcpy(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #14, !dbg !6310
  store i32 0, ptr %retval, align 4, !dbg !6311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6311

if.else:                                          ; preds = %entry
  %10 = load i32, ptr %fb_format, align 4, !dbg !6312
  %11 = load i32, ptr %dst_format.addr, align 4, !dbg !6314
  %or = or i32 %11, -2147483648, !dbg !6315
  %cmp2 = icmp eq i32 %10, %or, !dbg !6316
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !6317

if.then3:                                         ; preds = %if.else
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !6318
  %13 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6320
  %14 = load ptr, ptr %src.addr, align 8, !dbg !6321
  %15 = load ptr, ptr %fb.addr, align 8, !dbg !6322
  %16 = load ptr, ptr %clip.addr, align 8, !dbg !6323
  call void @drm_fb_swab(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i1 noundef zeroext false) #14, !dbg !6324
  store i32 0, ptr %retval, align 4, !dbg !6325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6325

if.else4:                                         ; preds = %if.else
  %17 = load i32, ptr %fb_format, align 4, !dbg !6326
  %18 = load i32, ptr %dst_format.addr, align 4, !dbg !6328
  %and = and i32 %18, 2147483647, !dbg !6329
  %cmp5 = icmp eq i32 %17, %and, !dbg !6330
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !6331

if.then6:                                         ; preds = %if.else4
  %19 = load ptr, ptr %dst.addr, align 8, !dbg !6332
  %20 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6334
  %21 = load ptr, ptr %src.addr, align 8, !dbg !6335
  %22 = load ptr, ptr %fb.addr, align 8, !dbg !6336
  %23 = load ptr, ptr %clip.addr, align 8, !dbg !6337
  call void @drm_fb_swab(ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i1 noundef zeroext false) #14, !dbg !6338
  store i32 0, ptr %retval, align 4, !dbg !6339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6339

if.else7:                                         ; preds = %if.else4
  %24 = load i32, ptr %fb_format, align 4, !dbg !6340
  %cmp8 = icmp eq i32 %24, 875713112, !dbg !6342
  br i1 %cmp8, label %if.then9, label %if.end52, !dbg !6343

if.then9:                                         ; preds = %if.else7
  %25 = load i32, ptr %dst_format.addr, align 4, !dbg !6344
  %cmp10 = icmp eq i32 %25, 909199186, !dbg !6347
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !6348

if.then11:                                        ; preds = %if.then9
  %26 = load ptr, ptr %dst.addr, align 8, !dbg !6349
  %27 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6351
  %28 = load ptr, ptr %src.addr, align 8, !dbg !6352
  %29 = load ptr, ptr %fb.addr, align 8, !dbg !6353
  %30 = load ptr, ptr %clip.addr, align 8, !dbg !6354
  call void @drm_fb_xrgb8888_to_rgb565(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i1 noundef zeroext false) #14, !dbg !6355
  store i32 0, ptr %retval, align 4, !dbg !6356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6356

if.else12:                                        ; preds = %if.then9
  %31 = load i32, ptr %dst_format.addr, align 4, !dbg !6357
  %cmp13 = icmp eq i32 %31, 892424792, !dbg !6359
  br i1 %cmp13, label %if.then14, label %if.else15, !dbg !6360

if.then14:                                        ; preds = %if.else12
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !6361
  %33 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6363
  %34 = load ptr, ptr %src.addr, align 8, !dbg !6364
  %35 = load ptr, ptr %fb.addr, align 8, !dbg !6365
  %36 = load ptr, ptr %clip.addr, align 8, !dbg !6366
  call void @drm_fb_xrgb8888_to_xrgb1555(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36) #14, !dbg !6367
  store i32 0, ptr %retval, align 4, !dbg !6368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6368

if.else15:                                        ; preds = %if.else12
  %37 = load i32, ptr %dst_format.addr, align 4, !dbg !6369
  %cmp16 = icmp eq i32 %37, 892424769, !dbg !6371
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !6372

if.then17:                                        ; preds = %if.else15
  %38 = load ptr, ptr %dst.addr, align 8, !dbg !6373
  %39 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6375
  %40 = load ptr, ptr %src.addr, align 8, !dbg !6376
  %41 = load ptr, ptr %fb.addr, align 8, !dbg !6377
  %42 = load ptr, ptr %clip.addr, align 8, !dbg !6378
  call void @drm_fb_xrgb8888_to_argb1555(ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42) #14, !dbg !6379
  store i32 0, ptr %retval, align 4, !dbg !6380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6380

if.else18:                                        ; preds = %if.else15
  %43 = load i32, ptr %dst_format.addr, align 4, !dbg !6381
  %cmp19 = icmp eq i32 %43, 892420434, !dbg !6383
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !6384

if.then20:                                        ; preds = %if.else18
  %44 = load ptr, ptr %dst.addr, align 8, !dbg !6385
  %45 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6387
  %46 = load ptr, ptr %src.addr, align 8, !dbg !6388
  %47 = load ptr, ptr %fb.addr, align 8, !dbg !6389
  %48 = load ptr, ptr %clip.addr, align 8, !dbg !6390
  call void @drm_fb_xrgb8888_to_rgba5551(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48) #14, !dbg !6391
  store i32 0, ptr %retval, align 4, !dbg !6392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6392

if.else21:                                        ; preds = %if.else18
  %49 = load i32, ptr %dst_format.addr, align 4, !dbg !6393
  %cmp22 = icmp eq i32 %49, 875710290, !dbg !6395
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !6396

if.then23:                                        ; preds = %if.else21
  %50 = load ptr, ptr %dst.addr, align 8, !dbg !6397
  %51 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6399
  %52 = load ptr, ptr %src.addr, align 8, !dbg !6400
  %53 = load ptr, ptr %fb.addr, align 8, !dbg !6401
  %54 = load ptr, ptr %clip.addr, align 8, !dbg !6402
  call void @drm_fb_xrgb8888_to_rgb888(ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54) #14, !dbg !6403
  store i32 0, ptr %retval, align 4, !dbg !6404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6404

if.else24:                                        ; preds = %if.else21
  %55 = load i32, ptr %dst_format.addr, align 4, !dbg !6405
  %cmp25 = icmp eq i32 %55, 875713089, !dbg !6407
  br i1 %cmp25, label %if.then26, label %if.else27, !dbg !6408

if.then26:                                        ; preds = %if.else24
  %56 = load ptr, ptr %dst.addr, align 8, !dbg !6409
  %57 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6411
  %58 = load ptr, ptr %src.addr, align 8, !dbg !6412
  %59 = load ptr, ptr %fb.addr, align 8, !dbg !6413
  %60 = load ptr, ptr %clip.addr, align 8, !dbg !6414
  call void @drm_fb_xrgb8888_to_argb8888(ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60) #14, !dbg !6415
  store i32 0, ptr %retval, align 4, !dbg !6416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6416

if.else27:                                        ; preds = %if.else24
  %61 = load i32, ptr %dst_format.addr, align 4, !dbg !6417
  %cmp28 = icmp eq i32 %61, 875709016, !dbg !6419
  br i1 %cmp28, label %if.then29, label %if.else30, !dbg !6420

if.then29:                                        ; preds = %if.else27
  %62 = load ptr, ptr %dst.addr, align 8, !dbg !6421
  %63 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6423
  %64 = load ptr, ptr %src.addr, align 8, !dbg !6424
  %65 = load ptr, ptr %fb.addr, align 8, !dbg !6425
  %66 = load ptr, ptr %clip.addr, align 8, !dbg !6426
  call void @drm_fb_xrgb8888_to_xbgr8888(ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66) #14, !dbg !6427
  store i32 0, ptr %retval, align 4, !dbg !6428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

if.else30:                                        ; preds = %if.else27
  %67 = load i32, ptr %dst_format.addr, align 4, !dbg !6429
  %cmp31 = icmp eq i32 %67, 875708993, !dbg !6431
  br i1 %cmp31, label %if.then32, label %if.else33, !dbg !6432

if.then32:                                        ; preds = %if.else30
  %68 = load ptr, ptr %dst.addr, align 8, !dbg !6433
  %69 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6435
  %70 = load ptr, ptr %src.addr, align 8, !dbg !6436
  %71 = load ptr, ptr %fb.addr, align 8, !dbg !6437
  %72 = load ptr, ptr %clip.addr, align 8, !dbg !6438
  call void @drm_fb_xrgb8888_to_abgr8888(ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72) #14, !dbg !6439
  store i32 0, ptr %retval, align 4, !dbg !6440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6440

if.else33:                                        ; preds = %if.else30
  %73 = load i32, ptr %dst_format.addr, align 4, !dbg !6441
  %cmp34 = icmp eq i32 %73, 808669784, !dbg !6443
  br i1 %cmp34, label %if.then35, label %if.else36, !dbg !6444

if.then35:                                        ; preds = %if.else33
  %74 = load ptr, ptr %dst.addr, align 8, !dbg !6445
  %75 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6447
  %76 = load ptr, ptr %src.addr, align 8, !dbg !6448
  %77 = load ptr, ptr %fb.addr, align 8, !dbg !6449
  %78 = load ptr, ptr %clip.addr, align 8, !dbg !6450
  call void @drm_fb_xrgb8888_to_xrgb2101010(ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77, ptr noundef %78) #14, !dbg !6451
  store i32 0, ptr %retval, align 4, !dbg !6452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6452

if.else36:                                        ; preds = %if.else33
  %79 = load i32, ptr %dst_format.addr, align 4, !dbg !6453
  %cmp37 = icmp eq i32 %79, 808669761, !dbg !6455
  br i1 %cmp37, label %if.then38, label %if.else39, !dbg !6456

if.then38:                                        ; preds = %if.else36
  %80 = load ptr, ptr %dst.addr, align 8, !dbg !6457
  %81 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6459
  %82 = load ptr, ptr %src.addr, align 8, !dbg !6460
  %83 = load ptr, ptr %fb.addr, align 8, !dbg !6461
  %84 = load ptr, ptr %clip.addr, align 8, !dbg !6462
  call void @drm_fb_xrgb8888_to_argb2101010(ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84) #14, !dbg !6463
  store i32 0, ptr %retval, align 4, !dbg !6464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6464

if.else39:                                        ; preds = %if.else36
  %85 = load i32, ptr %dst_format.addr, align 4, !dbg !6465
  %cmp40 = icmp eq i32 %85, 875714626, !dbg !6467
  br i1 %cmp40, label %if.then41, label %if.end, !dbg !6468

if.then41:                                        ; preds = %if.else39
  %86 = load ptr, ptr %dst.addr, align 8, !dbg !6469
  %87 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6471
  %88 = load ptr, ptr %src.addr, align 8, !dbg !6472
  %89 = load ptr, ptr %fb.addr, align 8, !dbg !6473
  %90 = load ptr, ptr %clip.addr, align 8, !dbg !6474
  call void @drm_fb_swab(ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %90, i1 noundef zeroext false) #14, !dbg !6475
  store i32 0, ptr %retval, align 4, !dbg !6476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6476

if.end:                                           ; preds = %if.else39
  br label %if.end42

if.end42:                                         ; preds = %if.end
  br label %if.end43

if.end43:                                         ; preds = %if.end42
  br label %if.end44

if.end44:                                         ; preds = %if.end43
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48
  br label %if.end50

if.end50:                                         ; preds = %if.end49
  br label %if.end51

if.end51:                                         ; preds = %if.end50
  br label %if.end52, !dbg !6477

if.end52:                                         ; preds = %if.end51, %if.else7
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  br label %if.end54

if.end54:                                         ; preds = %if.end53
  br label %if.end55

if.end55:                                         ; preds = %if.end54
  br label %do.body, !dbg !6478

do.body:                                          ; preds = %if.end55
  %91 = load i8, ptr @drm_fb_blit.__print_once, align 1, !dbg !6479, !range !5306, !noundef !926
  %tobool = trunc i8 %91 to i1, !dbg !6479
  br i1 %tobool, label %if.end59, label %if.then56, !dbg !6482

if.then56:                                        ; preds = %do.body
  store i8 1, ptr @drm_fb_blit.__print_once, align 1, !dbg !6483
  br label %do.body57, !dbg !6485

do.body57:                                        ; preds = %if.then56
  br label %do.cond, !dbg !6487

do.cond:                                          ; preds = %do.body57
  br label %do.end, !dbg !6487

do.end:                                           ; preds = %do.cond
  %92 = load ptr, ptr %fb.addr, align 8, !dbg !6485
  %dev = getelementptr inbounds %struct.drm_framebuffer, ptr %92, i32 0, i32 0, !dbg !6485
  %93 = load ptr, ptr %dev, align 8, !dbg !6485
  %dev58 = getelementptr inbounds %struct.drm_device, ptr %93, i32 0, i32 2, !dbg !6485
  %94 = load ptr, ptr %dev58, align 8, !dbg !6485
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef @.str.1, ptr noundef %fb_format, ptr noundef %dst_format.addr) #16, !dbg !6485
  br label %if.end59, !dbg !6483

if.end59:                                         ; preds = %do.end, %do.body
  br label %do.cond60, !dbg !6482

do.cond60:                                        ; preds = %if.end59
  br label %do.end61, !dbg !6482

do.end61:                                         ; preds = %do.cond60
  store i32 -22, ptr %retval, align 4, !dbg !6489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6489

cleanup:                                          ; preds = %do.end61, %if.then41, %if.then38, %if.then35, %if.then32, %if.then29, %if.then26, %if.then23, %if.then20, %if.then17, %if.then14, %if.then11, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fb_format) #15, !dbg !6490
  %95 = load i32, ptr %retval, align 4, !dbg !6490
  ret i32 %95, !dbg !6490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_xbgr8888(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !5109 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5111, metadata !DIExpression()), !dbg !6491
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !5112, metadata !DIExpression()), !dbg !6492
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5113, metadata !DIExpression()), !dbg !6493
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !5114, metadata !DIExpression()), !dbg !6494
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !5115, metadata !DIExpression()), !dbg !6495
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6496
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6497
  %2 = load ptr, ptr %src.addr, align 8, !dbg !6498
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !6499
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !6500
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_xbgr8888.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_xbgr8888_line) #14, !dbg !6501
  ret void, !dbg !6502
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_abgr8888(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !5118 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5120, metadata !DIExpression()), !dbg !6503
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !5121, metadata !DIExpression()), !dbg !6504
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5122, metadata !DIExpression()), !dbg !6505
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !5123, metadata !DIExpression()), !dbg !6506
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !5124, metadata !DIExpression()), !dbg !6507
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6508
  %1 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6509
  %2 = load ptr, ptr %src.addr, align 8, !dbg !6510
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !6511
  %4 = load ptr, ptr %clip.addr, align 8, !dbg !6512
  %call = call i32 @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, ptr noundef @drm_fb_xrgb8888_to_abgr8888.dst_pixsize, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef @drm_fb_xrgb8888_to_abgr8888_line) #14, !dbg !6513
  ret void, !dbg !6514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_fb_xrgb8888_to_mono(ptr noundef %dst, ptr noundef %dst_pitch, ptr noundef %src, ptr noundef %fb, ptr noundef %clip) #0 align 16 !dbg !5002 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %linepixels = alloca i32, align 4
  %lines = alloca i32, align 4
  %cpp = alloca i32, align 4
  %len_src32 = alloca i32, align 4
  %dev = alloca ptr, align 8
  %vaddr = alloca ptr, align 8
  %dst_pitch_0 = alloca i32, align 4
  %y = alloca i32, align 4
  %mono = alloca ptr, align 8
  %gray8 = alloca ptr, align 8
  %src32 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5004, metadata !DIExpression()), !dbg !6515
  store ptr %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !5005, metadata !DIExpression()), !dbg !6516
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5006, metadata !DIExpression()), !dbg !6517
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !5007, metadata !DIExpression()), !dbg !6518
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !5008, metadata !DIExpression()), !dbg !6519
  call void @llvm.lifetime.start.p0(i64 4, ptr %linepixels) #15, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %linepixels, metadata !5009, metadata !DIExpression()), !dbg !6521
  %0 = load ptr, ptr %clip.addr, align 8, !dbg !6522
  %call = call i32 @drm_rect_width(ptr noundef %0) #14, !dbg !6523
  store i32 %call, ptr %linepixels, align 4, !dbg !6521
  call void @llvm.lifetime.start.p0(i64 4, ptr %lines) #15, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %lines, metadata !5010, metadata !DIExpression()), !dbg !6525
  %1 = load ptr, ptr %clip.addr, align 8, !dbg !6526
  %call1 = call i32 @drm_rect_height(ptr noundef %1) #14, !dbg !6527
  store i32 %call1, ptr %lines, align 4, !dbg !6525
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpp) #15, !dbg !6528
  call void @llvm.dbg.declare(metadata ptr %cpp, metadata !5011, metadata !DIExpression()), !dbg !6529
  %2 = load ptr, ptr %fb.addr, align 8, !dbg !6530
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 4, !dbg !6531
  %3 = load ptr, ptr %format, align 8, !dbg !6531
  %4 = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 3, !dbg !6532
  %arrayidx = getelementptr [4 x i8], ptr %4, i64 0, i64 0, !dbg !6530
  %5 = load i8, ptr %arrayidx, align 2, !dbg !6530
  %conv = zext i8 %5 to i32, !dbg !6530
  store i32 %conv, ptr %cpp, align 4, !dbg !6529
  call void @llvm.lifetime.start.p0(i64 4, ptr %len_src32) #15, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %len_src32, metadata !5012, metadata !DIExpression()), !dbg !6534
  %6 = load i32, ptr %linepixels, align 4, !dbg !6535
  %7 = load i32, ptr %cpp, align 4, !dbg !6536
  %mul = mul i32 %6, %7, !dbg !6537
  store i32 %mul, ptr %len_src32, align 4, !dbg !6534
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5013, metadata !DIExpression()), !dbg !6539
  %8 = load ptr, ptr %fb.addr, align 8, !dbg !6540
  %dev2 = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 0, !dbg !6541
  %9 = load ptr, ptr %dev2, align 8, !dbg !6541
  store ptr %9, ptr %dev, align 8, !dbg !6539
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #15, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !5014, metadata !DIExpression()), !dbg !6543
  %10 = load ptr, ptr %src.addr, align 8, !dbg !6544
  %arrayidx3 = getelementptr %struct.iosys_map, ptr %10, i64 0, !dbg !6544
  %11 = getelementptr inbounds %struct.iosys_map, ptr %arrayidx3, i32 0, i32 0, !dbg !6545
  %12 = load ptr, ptr %11, align 8, !dbg !6545
  store ptr %12, ptr %vaddr, align 8, !dbg !6543
  call void @llvm.lifetime.start.p0(i64 4, ptr %dst_pitch_0) #15, !dbg !6546
  call void @llvm.dbg.declare(metadata ptr %dst_pitch_0, metadata !5015, metadata !DIExpression()), !dbg !6547
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #15, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5016, metadata !DIExpression()), !dbg !6549
  call void @llvm.lifetime.start.p0(i64 8, ptr %mono) #15, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %mono, metadata !5017, metadata !DIExpression()), !dbg !6551
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !6552
  %arrayidx4 = getelementptr %struct.iosys_map, ptr %13, i64 0, !dbg !6552
  %14 = getelementptr inbounds %struct.iosys_map, ptr %arrayidx4, i32 0, i32 0, !dbg !6553
  %15 = load ptr, ptr %14, align 8, !dbg !6553
  store ptr %15, ptr %mono, align 8, !dbg !6551
  call void @llvm.lifetime.start.p0(i64 8, ptr %gray8) #15, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %gray8, metadata !5018, metadata !DIExpression()), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %src32) #15, !dbg !6555
  call void @llvm.dbg.declare(metadata ptr %src32, metadata !5019, metadata !DIExpression()), !dbg !6556
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6557
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5020, metadata !DIExpression()), !dbg !6557
  %16 = load ptr, ptr %fb.addr, align 8, !dbg !6557
  %format5 = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 4, !dbg !6557
  %17 = load ptr, ptr %format5, align 8, !dbg !6557
  %format6 = getelementptr inbounds %struct.drm_format_info, ptr %17, i32 0, i32 0, !dbg !6557
  %18 = load i32, ptr %format6, align 4, !dbg !6557
  %cmp = icmp ne i32 %18, 875713112, !dbg !6557
  %lnot = xor i1 %cmp, true, !dbg !6557
  %lnot8 = xor i1 %lnot, true, !dbg !6557
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6557
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6557
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !6558
  %tobool = icmp ne i32 %19, 0, !dbg !6558
  %lnot9 = xor i1 %tobool, true, !dbg !6558
  %lnot11 = xor i1 %lnot9, true, !dbg !6558
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6558
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6558
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6558
  %tobool14 = icmp ne i64 %expval, 0, !dbg !6558
  br i1 %tobool14, label %if.then, label %if.end, !dbg !6557

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6558

do.body:                                          ; preds = %if.then
  br label %do.body15, !dbg !6559

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !6560

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !6560

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %dev, align 8, !dbg !6559
  %dev16 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2, !dbg !6559
  %21 = load ptr, ptr %dev16, align 8, !dbg !6559
  %call17 = call ptr @dev_driver_string(ptr noundef %21) #14, !dbg !6559
  %22 = load ptr, ptr %dev, align 8, !dbg !6559
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2, !dbg !6559
  %23 = load ptr, ptr %dev18, align 8, !dbg !6559
  %call19 = call ptr @dev_name(ptr noundef %23) #14, !dbg !6559
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2, ptr noundef %call17, ptr noundef %call19, ptr noundef @.str.3) #14, !dbg !6559
  br label %do.body20, !dbg !6559

do.body20:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5023, metadata !DIExpression()), !dbg !6562
  store i32 2313, ptr %__flags, align 4, !dbg !6562
  br label %do.body21, !dbg !6562

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6563

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6563

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6562

do.body24:                                        ; preds = %do.end23
  %24 = load i32, ptr %__flags, align 4, !dbg !6565
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 1021, i32 %24, i64 12) #15, !dbg !6565, !srcloc !6567
  br label %do.cond25, !dbg !6565

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !6565

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !6562

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !6568

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6568

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6559
  br label %do.cond30, !dbg !6562

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !6562

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6559

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6570

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6570

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !6559

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6559

do.end36:                                         ; preds = %do.cond35
  br label %if.end, !dbg !6559

if.end:                                           ; preds = %do.end36, %entry
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !6557
  %tobool37 = icmp ne i32 %25, 0, !dbg !6557
  %lnot38 = xor i1 %tobool37, true, !dbg !6557
  %lnot40 = xor i1 %lnot38, true, !dbg !6557
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !6557
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !6557
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !6557
  store i64 %expval43, ptr %tmp, align 8, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6572
  %26 = load i64, ptr %tmp, align 8, !dbg !6557
  %tobool44 = icmp ne i64 %26, 0, !dbg !6572
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !6573

if.then45:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6574

if.end46:                                         ; preds = %if.end
  %27 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6575
  %tobool47 = icmp ne ptr %27, null, !dbg !6575
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !6577

if.then48:                                        ; preds = %if.end46
  store ptr @drm_fb_xrgb8888_to_mono.default_dst_pitch, ptr %dst_pitch.addr, align 8, !dbg !6578
  br label %if.end49, !dbg !6579

if.end49:                                         ; preds = %if.then48, %if.end46
  %28 = load ptr, ptr %dst_pitch.addr, align 8, !dbg !6580
  %arrayidx50 = getelementptr i32, ptr %28, i64 0, !dbg !6580
  %29 = load i32, ptr %arrayidx50, align 4, !dbg !6580
  store i32 %29, ptr %dst_pitch_0, align 4, !dbg !6581
  %30 = load i32, ptr %dst_pitch_0, align 4, !dbg !6582
  %tobool51 = icmp ne i32 %30, 0, !dbg !6582
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !6584

if.then52:                                        ; preds = %if.end49
  %31 = load i32, ptr %linepixels, align 4, !dbg !6585
  %add = add i32 %31, 8, !dbg !6585
  %sub = sub i32 %add, 1, !dbg !6585
  %div = udiv i32 %sub, 8, !dbg !6585
  store i32 %div, ptr %dst_pitch_0, align 4, !dbg !6586
  br label %if.end53, !dbg !6587

if.end53:                                         ; preds = %if.then52, %if.end49
  %32 = load i32, ptr %len_src32, align 4, !dbg !6588
  %33 = load i32, ptr %linepixels, align 4, !dbg !6589
  %add54 = add i32 %32, %33, !dbg !6590
  %conv55 = zext i32 %add54 to i64, !dbg !6588
  %call56 = call noalias ptr @kmalloc(i64 noundef %conv55, i32 noundef 3264) #17, !dbg !6591
  store ptr %call56, ptr %src32, align 8, !dbg !6592
  %34 = load ptr, ptr %src32, align 8, !dbg !6593
  %tobool57 = icmp ne ptr %34, null, !dbg !6593
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !6595

if.then58:                                        ; preds = %if.end53
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6596

if.end59:                                         ; preds = %if.end53
  %35 = load ptr, ptr %src32, align 8, !dbg !6597
  %36 = load i32, ptr %len_src32, align 4, !dbg !6598
  %idx.ext = zext i32 %36 to i64, !dbg !6599
  %add.ptr = getelementptr i8, ptr %35, i64 %idx.ext, !dbg !6599
  store ptr %add.ptr, ptr %gray8, align 8, !dbg !6600
  %37 = load ptr, ptr %clip.addr, align 8, !dbg !6601
  %38 = load ptr, ptr %fb.addr, align 8, !dbg !6602
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %38, i32 0, i32 6, !dbg !6603
  %arrayidx60 = getelementptr [4 x i32], ptr %pitches, i64 0, i64 0, !dbg !6602
  %39 = load i32, ptr %arrayidx60, align 8, !dbg !6602
  %40 = load i32, ptr %cpp, align 4, !dbg !6604
  %call61 = call i32 @clip_offset(ptr noundef %37, i32 noundef %39, i32 noundef %40) #14, !dbg !6605
  %41 = load ptr, ptr %vaddr, align 8, !dbg !6606
  %idx.ext62 = zext i32 %call61 to i64, !dbg !6606
  %add.ptr63 = getelementptr i8, ptr %41, i64 %idx.ext62, !dbg !6606
  store ptr %add.ptr63, ptr %vaddr, align 8, !dbg !6606
  store i32 0, ptr %y, align 4, !dbg !6607
  br label %for.cond, !dbg !6609

for.cond:                                         ; preds = %for.inc, %if.end59
  %42 = load i32, ptr %y, align 4, !dbg !6610
  %43 = load i32, ptr %lines, align 4, !dbg !6612
  %cmp64 = icmp ult i32 %42, %43, !dbg !6613
  br i1 %cmp64, label %for.body, label %for.end, !dbg !6614

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %src32, align 8, !dbg !6615
  %45 = load ptr, ptr %vaddr, align 8, !dbg !6617
  %46 = load i32, ptr %len_src32, align 4, !dbg !6618
  %conv66 = zext i32 %46 to i64, !dbg !6618
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %44, ptr align 1 %45, i64 %conv66, i1 false), !dbg !6619
  store ptr %44, ptr %src32, align 8, !dbg !6620
  %47 = load ptr, ptr %gray8, align 8, !dbg !6621
  %48 = load ptr, ptr %src32, align 8, !dbg !6622
  %49 = load i32, ptr %linepixels, align 4, !dbg !6623
  call void @drm_fb_xrgb8888_to_gray8_line(ptr noundef %47, ptr noundef %48, i32 noundef %49) #14, !dbg !6624
  %50 = load ptr, ptr %mono, align 8, !dbg !6625
  %51 = load ptr, ptr %gray8, align 8, !dbg !6626
  %52 = load i32, ptr %linepixels, align 4, !dbg !6627
  call void @drm_fb_gray8_to_mono_line(ptr noundef %50, ptr noundef %51, i32 noundef %52) #14, !dbg !6628
  %53 = load ptr, ptr %fb.addr, align 8, !dbg !6629
  %pitches67 = getelementptr inbounds %struct.drm_framebuffer, ptr %53, i32 0, i32 6, !dbg !6630
  %arrayidx68 = getelementptr [4 x i32], ptr %pitches67, i64 0, i64 0, !dbg !6629
  %54 = load i32, ptr %arrayidx68, align 8, !dbg !6629
  %55 = load ptr, ptr %vaddr, align 8, !dbg !6631
  %idx.ext69 = zext i32 %54 to i64, !dbg !6631
  %add.ptr70 = getelementptr i8, ptr %55, i64 %idx.ext69, !dbg !6631
  store ptr %add.ptr70, ptr %vaddr, align 8, !dbg !6631
  %56 = load i32, ptr %dst_pitch_0, align 4, !dbg !6632
  %57 = load ptr, ptr %mono, align 8, !dbg !6633
  %idx.ext71 = zext i32 %56 to i64, !dbg !6633
  %add.ptr72 = getelementptr i8, ptr %57, i64 %idx.ext71, !dbg !6633
  store ptr %add.ptr72, ptr %mono, align 8, !dbg !6633
  br label %for.inc, !dbg !6634

for.inc:                                          ; preds = %for.body
  %58 = load i32, ptr %y, align 4, !dbg !6635
  %inc = add i32 %58, 1, !dbg !6635
  store i32 %inc, ptr %y, align 4, !dbg !6635
  br label %for.cond, !dbg !6636, !llvm.loop !6637

for.end:                                          ; preds = %for.cond
  %59 = load ptr, ptr %src32, align 8, !dbg !6639
  call void @kfree(ptr noundef %59) #14, !dbg !6640
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6641
  br label %cleanup, !dbg !6641

cleanup:                                          ; preds = %for.end, %if.then58, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %src32) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %gray8) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %mono) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %dst_pitch_0) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %len_src32) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpp) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %lines) #15, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %linepixels) #15, !dbg !6641
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6641

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6642 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6645 dso_local ptr @dev_driver_string(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !6648 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6650, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6652
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6654
  %1 = load ptr, ptr %init_name, align 8, !dbg !6654
  %tobool = icmp ne ptr %1, null, !dbg !6652
  br i1 %tobool, label %if.then, label %if.end, !dbg !6655

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6656
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6657
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6657
  store ptr %3, ptr %retval, align 8, !dbg !6658
  br label %return, !dbg !6658

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6659
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6660
  %call = call ptr @kobject_name(ptr noundef %kobj) #14, !dbg !6661
  store ptr %call, ptr %retval, align 8, !dbg !6662
  br label %return, !dbg !6662

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6663
  ret ptr %5, !dbg !6663
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6664 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6668, metadata !DIExpression()), !dbg !6673
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6669, metadata !DIExpression()), !dbg !6674
  %0 = load i64, ptr %size.addr, align 8, !dbg !6675
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6676
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6677

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6678
  %tobool = icmp ne i64 %2, 0, !dbg !6678
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6679

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6680
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6670, metadata !DIExpression()), !dbg !6681
  %3 = load i64, ptr %size.addr, align 8, !dbg !6682
  %cmp = icmp ugt i64 %3, 8192, !dbg !6684
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6685

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6686
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6687
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6688
  store ptr %call, ptr %retval, align 8, !dbg !6689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6689

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6690
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !6690
  store i32 %call2, ptr %index, align 4, !dbg !6691
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6692
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6693
  %9 = ptrtoint ptr %8 to i64, !dbg !6693
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !6694
  %idxprom = zext i32 %call3 to i64, !dbg !6695
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6695
  %10 = load i32, ptr %index, align 4, !dbg !6696
  %idxprom4 = zext i32 %10 to i64, !dbg !6695
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6695
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6695
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6697
  %13 = load i64, ptr %size.addr, align 8, !dbg !6698
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6699
  store ptr %call6, ptr %retval, align 8, !dbg !6700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6700

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6701
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6702
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6703
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6704
  store ptr %call8, ptr %retval, align 8, !dbg !6705
  br label %return, !dbg !6705

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6706
  ret ptr %16, !dbg !6706
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_gray8_to_mono_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !6707 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf8 = alloca ptr, align 8
  %sbuf8 = alloca ptr, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  %__UNIQUE_ID___x282 = alloca i32, align 4
  %__UNIQUE_ID___y283 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %byte = alloca i8, align 1
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !6709, metadata !DIExpression()), !dbg !6721
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !6710, metadata !DIExpression()), !dbg !6722
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !6711, metadata !DIExpression()), !dbg !6723
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf8) #15, !dbg !6724
  call void @llvm.dbg.declare(metadata ptr %dbuf8, metadata !6712, metadata !DIExpression()), !dbg !6725
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !6726
  store ptr %0, ptr %dbuf8, align 8, !dbg !6725
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf8) #15, !dbg !6727
  call void @llvm.dbg.declare(metadata ptr %sbuf8, metadata !6713, metadata !DIExpression()), !dbg !6728
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !6729
  store ptr %1, ptr %sbuf8, align 8, !dbg !6728
  br label %while.cond, !dbg !6730

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i32, ptr %pixels.addr, align 4, !dbg !6731
  %tobool = icmp ne i32 %2, 0, !dbg !6730
  br i1 %tobool, label %while.body, label %while.end, !dbg !6730

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6714, metadata !DIExpression()), !dbg !6733
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #15, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !6716, metadata !DIExpression()), !dbg !6734
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x282) #15, !dbg !6735
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x282, metadata !6717, metadata !DIExpression()), !dbg !6735
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !6735
  store i32 %3, ptr %__UNIQUE_ID___x282, align 4, !dbg !6735
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y283) #15, !dbg !6735
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y283, metadata !6719, metadata !DIExpression()), !dbg !6735
  store i32 8, ptr %__UNIQUE_ID___y283, align 4, !dbg !6735
  %4 = load i32, ptr %__UNIQUE_ID___x282, align 4, !dbg !6735
  %5 = load i32, ptr %__UNIQUE_ID___y283, align 4, !dbg !6735
  %cmp = icmp ult i32 %4, %5, !dbg !6735
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6735

cond.true:                                        ; preds = %while.body
  %6 = load i32, ptr %__UNIQUE_ID___x282, align 4, !dbg !6735
  br label %cond.end, !dbg !6735

cond.false:                                       ; preds = %while.body
  %7 = load i32, ptr %__UNIQUE_ID___y283, align 4, !dbg !6735
  br label %cond.end, !dbg !6735

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !6735
  store i32 %cond, ptr %tmp, align 4, !dbg !6735
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y283) #15, !dbg !6736
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x282) #15, !dbg !6736
  %8 = load i32, ptr %tmp, align 4, !dbg !6735
  store i32 %8, ptr %bits, align 4, !dbg !6734
  call void @llvm.lifetime.start.p0(i64 1, ptr %byte) #15, !dbg !6737
  call void @llvm.dbg.declare(metadata ptr %byte, metadata !6720, metadata !DIExpression()), !dbg !6738
  store i8 0, ptr %byte, align 1, !dbg !6738
  store i32 0, ptr %i, align 4, !dbg !6739
  br label %for.cond, !dbg !6741

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, ptr %i, align 4, !dbg !6742
  %10 = load i32, ptr %bits, align 4, !dbg !6744
  %cmp1 = icmp ult i32 %9, %10, !dbg !6745
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6746

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %sbuf8, align 8, !dbg !6747
  %incdec.ptr = getelementptr i8, ptr %11, i32 1, !dbg !6747
  store ptr %incdec.ptr, ptr %sbuf8, align 8, !dbg !6747
  %12 = load i8, ptr %11, align 1, !dbg !6750
  %conv = zext i8 %12 to i32, !dbg !6750
  %cmp2 = icmp sge i32 %conv, 128, !dbg !6751
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6752

if.then:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !6753
  %sh_prom = zext i32 %13 to i64, !dbg !6753
  %shl = shl i64 1, %sh_prom, !dbg !6753
  %14 = load i8, ptr %byte, align 1, !dbg !6754
  %conv4 = zext i8 %14 to i64, !dbg !6754
  %or = or i64 %conv4, %shl, !dbg !6754
  %conv5 = trunc i64 %or to i8, !dbg !6754
  store i8 %conv5, ptr %byte, align 1, !dbg !6754
  br label %if.end, !dbg !6755

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6756

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !dbg !6757
  %inc = add i32 %15, 1, !dbg !6757
  store i32 %inc, ptr %i, align 4, !dbg !6757
  %16 = load i32, ptr %pixels.addr, align 4, !dbg !6758
  %dec = add i32 %16, -1, !dbg !6758
  store i32 %dec, ptr %pixels.addr, align 4, !dbg !6758
  br label %for.cond, !dbg !6759, !llvm.loop !6760

for.end:                                          ; preds = %for.cond
  %17 = load i8, ptr %byte, align 1, !dbg !6762
  %18 = load ptr, ptr %dbuf8, align 8, !dbg !6763
  %incdec.ptr6 = getelementptr i8, ptr %18, i32 1, !dbg !6763
  store ptr %incdec.ptr6, ptr %dbuf8, align 8, !dbg !6763
  store i8 %17, ptr %18, align 1, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 1, ptr %byte) #15, !dbg !6765
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #15, !dbg !6765
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6765
  br label %while.cond, !dbg !6730, !llvm.loop !6766

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf8) #15, !dbg !6767
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf8) #15, !dbg !6767
  ret void, !dbg !6767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6768 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @drm_fb_build_fourcc_list(ptr noundef %dev, ptr noundef %native_fourccs, i64 noundef %native_nfourccs, ptr noundef %fourccs_out, i64 noundef %nfourccs_out) #0 align 16 !dbg !5046 {
entry:
  %dev.addr = alloca ptr, align 8
  %native_fourccs.addr = alloca ptr, align 8
  %native_nfourccs.addr = alloca i64, align 8
  %fourccs_out.addr = alloca ptr, align 8
  %nfourccs_out.addr = alloca i64, align 8
  %fourccs = alloca ptr, align 8
  %fourccs_end = alloca ptr, align 8
  %i = alloca i64, align 8
  %fourcc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %fourcc11 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5052, metadata !DIExpression()), !dbg !6771
  store ptr %native_fourccs, ptr %native_fourccs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %native_fourccs.addr, metadata !5053, metadata !DIExpression()), !dbg !6772
  store i64 %native_nfourccs, ptr %native_nfourccs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %native_nfourccs.addr, metadata !5054, metadata !DIExpression()), !dbg !6773
  store ptr %fourccs_out, ptr %fourccs_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fourccs_out.addr, metadata !5055, metadata !DIExpression()), !dbg !6774
  store i64 %nfourccs_out, ptr %nfourccs_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nfourccs_out.addr, metadata !5056, metadata !DIExpression()), !dbg !6775
  call void @llvm.lifetime.start.p0(i64 8, ptr %fourccs) #15, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %fourccs, metadata !5057, metadata !DIExpression()), !dbg !6777
  %0 = load ptr, ptr %fourccs_out.addr, align 8, !dbg !6778
  store ptr %0, ptr %fourccs, align 8, !dbg !6777
  call void @llvm.lifetime.start.p0(i64 8, ptr %fourccs_end) #15, !dbg !6779
  call void @llvm.dbg.declare(metadata ptr %fourccs_end, metadata !5058, metadata !DIExpression()), !dbg !6780
  %1 = load ptr, ptr %fourccs_out.addr, align 8, !dbg !6781
  %2 = load i64, ptr %nfourccs_out.addr, align 8, !dbg !6782
  %add.ptr = getelementptr i32, ptr %1, i64 %2, !dbg !6783
  store ptr %add.ptr, ptr %fourccs_end, align 8, !dbg !6780
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5059, metadata !DIExpression()), !dbg !6785
  store i64 0, ptr %i, align 8, !dbg !6786
  br label %for.cond, !dbg !6787

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !dbg !6788
  %4 = load i64, ptr %native_nfourccs.addr, align 8, !dbg !6789
  %cmp = icmp ult i64 %3, %4, !dbg !6790
  br i1 %cmp, label %for.body, label %for.end, !dbg !6791

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %fourcc) #15, !dbg !6792
  call void @llvm.dbg.declare(metadata ptr %fourcc, metadata !5060, metadata !DIExpression()), !dbg !6793
  %5 = load ptr, ptr %native_fourccs.addr, align 8, !dbg !6794
  %6 = load i64, ptr %i, align 8, !dbg !6795
  %arrayidx = getelementptr i32, ptr %5, i64 %6, !dbg !6794
  %7 = load i32, ptr %arrayidx, align 4, !dbg !6794
  %call = call i32 @drm_fb_nonalpha_fourcc(i32 noundef %7) #14, !dbg !6796
  store i32 %call, ptr %fourcc, align 4, !dbg !6793
  %8 = load ptr, ptr %fourccs_out.addr, align 8, !dbg !6797
  %9 = load ptr, ptr %fourccs, align 8, !dbg !6799
  %10 = load ptr, ptr %fourccs_out.addr, align 8, !dbg !6800
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !6801
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64, !dbg !6801
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6801
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !6801
  %11 = load i32, ptr %fourcc, align 4, !dbg !6802
  %call1 = call zeroext i1 @is_listed_fourcc(ptr noundef %8, i64 noundef %sub.ptr.div, i32 noundef %11) #14, !dbg !6803
  br i1 %call1, label %if.then, label %if.else, !dbg !6804

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6805

if.else:                                          ; preds = %for.body
  %12 = load ptr, ptr %fourccs, align 8, !dbg !6807
  %13 = load ptr, ptr %fourccs_end, align 8, !dbg !6809
  %cmp2 = icmp eq ptr %12, %13, !dbg !6810
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !6811

if.then3:                                         ; preds = %if.else
  br label %do.body, !dbg !6812

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6815

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6815

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6812
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2, !dbg !6812
  %15 = load ptr, ptr %dev4, align 8, !dbg !6812
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef @.str.5, ptr noundef %fourcc) #16, !dbg !6812
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6817

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !6818
  %tobool = icmp ne ptr %16, null, !dbg !6818
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6818

cond.true:                                        ; preds = %if.end5
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !6818
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2, !dbg !6818
  %18 = load ptr, ptr %dev6, align 8, !dbg !6818
  br label %cond.end, !dbg !6818

cond.false:                                       ; preds = %if.end5
  br label %cond.end, !dbg !6818

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %18, %cond.true ], [ null, %cond.false ], !dbg !6818
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str.6, ptr noundef %fourcc) #14, !dbg !6818
  %19 = load i32, ptr %fourcc, align 4, !dbg !6819
  %20 = load ptr, ptr %fourccs, align 8, !dbg !6820
  store i32 %19, ptr %20, align 4, !dbg !6821
  %21 = load ptr, ptr %fourccs, align 8, !dbg !6822
  %incdec.ptr = getelementptr i32, ptr %21, i32 1, !dbg !6822
  store ptr %incdec.ptr, ptr %fourccs, align 8, !dbg !6822
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6823
  br label %cleanup, !dbg !6823

cleanup:                                          ; preds = %cond.end, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fourcc) #15, !dbg !6823
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6824

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %22 = load i64, ptr %i, align 8, !dbg !6825
  %inc = add i64 %22, 1, !dbg !6825
  store i64 %inc, ptr %i, align 8, !dbg !6825
  br label %for.cond, !dbg !6826, !llvm.loop !6827

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !6829
  br label %for.cond7, !dbg !6830

for.cond7:                                        ; preds = %for.inc38, %for.end
  %23 = load i64, ptr %i, align 8, !dbg !6831
  %cmp8 = icmp ult i64 %23, 1, !dbg !6832
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !6833

land.rhs:                                         ; preds = %for.cond7
  %24 = load ptr, ptr %fourccs, align 8, !dbg !6834
  %25 = load ptr, ptr %fourccs_end, align 8, !dbg !6835
  %cmp9 = icmp ult ptr %24, %25, !dbg !6836
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond7
  %26 = phi i1 [ false, %for.cond7 ], [ %cmp9, %land.rhs ], !dbg !6837
  br i1 %26, label %for.body10, label %for.end40, !dbg !6838

for.body10:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %fourcc11) #15, !dbg !6839
  call void @llvm.dbg.declare(metadata ptr %fourcc11, metadata !5064, metadata !DIExpression()), !dbg !6840
  %27 = load i64, ptr %i, align 8, !dbg !6841
  %arrayidx12 = getelementptr [1 x i32], ptr @drm_fb_build_fourcc_list.extra_fourccs, i64 0, i64 %27, !dbg !6842
  %28 = load i32, ptr %arrayidx12, align 4, !dbg !6842
  store i32 %28, ptr %fourcc11, align 4, !dbg !6840
  %29 = load ptr, ptr %fourccs_out.addr, align 8, !dbg !6843
  %30 = load ptr, ptr %fourccs, align 8, !dbg !6845
  %31 = load ptr, ptr %fourccs_out.addr, align 8, !dbg !6846
  %sub.ptr.lhs.cast13 = ptrtoint ptr %30 to i64, !dbg !6847
  %sub.ptr.rhs.cast14 = ptrtoint ptr %31 to i64, !dbg !6847
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14, !dbg !6847
  %sub.ptr.div16 = sdiv exact i64 %sub.ptr.sub15, 4, !dbg !6847
  %32 = load i32, ptr %fourcc11, align 4, !dbg !6848
  %call17 = call zeroext i1 @is_listed_fourcc(ptr noundef %29, i64 noundef %sub.ptr.div16, i32 noundef %32) #14, !dbg !6849
  br i1 %call17, label %if.then18, label %if.else19, !dbg !6850

if.then18:                                        ; preds = %for.body10
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !6851

if.else19:                                        ; preds = %for.body10
  %33 = load ptr, ptr %fourccs, align 8, !dbg !6853
  %34 = load ptr, ptr %fourccs_end, align 8, !dbg !6855
  %cmp20 = icmp eq ptr %33, %34, !dbg !6856
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !6857

if.then21:                                        ; preds = %if.else19
  br label %do.body22, !dbg !6858

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !6861

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !6861

do.end24:                                         ; preds = %do.cond23
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !6858
  %dev25 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2, !dbg !6858
  %36 = load ptr, ptr %dev25, align 8, !dbg !6858
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef @.str.7, ptr noundef %fourcc11) #16, !dbg !6858
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !6863

if.end26:                                         ; preds = %if.else19
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !6864
  %tobool28 = icmp ne ptr %37, null, !dbg !6864
  br i1 %tobool28, label %cond.true29, label %cond.false31, !dbg !6864

cond.true29:                                      ; preds = %if.end27
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !6864
  %dev30 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 2, !dbg !6864
  %39 = load ptr, ptr %dev30, align 8, !dbg !6864
  br label %cond.end32, !dbg !6864

cond.false31:                                     ; preds = %if.end27
  br label %cond.end32, !dbg !6864

cond.end32:                                       ; preds = %cond.false31, %cond.true29
  %cond33 = phi ptr [ %39, %cond.true29 ], [ null, %cond.false31 ], !dbg !6864
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond33, i32 noundef 2, ptr noundef @.str.8, ptr noundef %fourcc11) #14, !dbg !6864
  %40 = load i32, ptr %fourcc11, align 4, !dbg !6865
  %41 = load ptr, ptr %fourccs, align 8, !dbg !6866
  store i32 %40, ptr %41, align 4, !dbg !6867
  %42 = load ptr, ptr %fourccs, align 8, !dbg !6868
  %incdec.ptr34 = getelementptr i32, ptr %42, i32 1, !dbg !6868
  store ptr %incdec.ptr34, ptr %fourccs, align 8, !dbg !6868
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6869
  br label %cleanup35, !dbg !6869

cleanup35:                                        ; preds = %cond.end32, %do.end24, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %fourcc11) #15, !dbg !6869
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %unreachable [
    i32 0, label %cleanup.cont37
    i32 9, label %for.inc38
  ]

cleanup.cont37:                                   ; preds = %cleanup35
  br label %for.inc38, !dbg !6870

for.inc38:                                        ; preds = %cleanup.cont37, %cleanup35
  %43 = load i64, ptr %i, align 8, !dbg !6871
  %inc39 = add i64 %43, 1, !dbg !6871
  store i64 %inc39, ptr %i, align 8, !dbg !6871
  br label %for.cond7, !dbg !6872, !llvm.loop !6873

for.end40:                                        ; preds = %land.end
  %44 = load ptr, ptr %fourccs, align 8, !dbg !6875
  %45 = load ptr, ptr %fourccs_out.addr, align 8, !dbg !6876
  %sub.ptr.lhs.cast41 = ptrtoint ptr %44 to i64, !dbg !6877
  %sub.ptr.rhs.cast42 = ptrtoint ptr %45 to i64, !dbg !6877
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42, !dbg !6877
  %sub.ptr.div44 = sdiv exact i64 %sub.ptr.sub43, 4, !dbg !6877
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !6878
  call void @llvm.lifetime.end.p0(i64 8, ptr %fourccs_end) #15, !dbg !6878
  call void @llvm.lifetime.end.p0(i64 8, ptr %fourccs) #15, !dbg !6878
  ret i64 %sub.ptr.div44, !dbg !6879

unreachable:                                      ; preds = %cleanup35, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_fb_nonalpha_fourcc(i32 noundef %fourcc) #0 align 16 !dbg !6880 {
entry:
  %retval = alloca i32, align 4
  %fourcc.addr = alloca i32, align 4
  store i32 %fourcc, ptr %fourcc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fourcc.addr, metadata !6884, metadata !DIExpression()), !dbg !6885
  %0 = load i32, ptr %fourcc.addr, align 4, !dbg !6886
  switch i32 %0, label %sw.epilog [
    i32 892424769, label %sw.bb
    i32 892420673, label %sw.bb1
    i32 892420434, label %sw.bb2
    i32 892420418, label %sw.bb3
    i32 875713089, label %sw.bb4
    i32 875708993, label %sw.bb5
    i32 875708754, label %sw.bb6
    i32 875708738, label %sw.bb7
    i32 808669761, label %sw.bb8
    i32 808665665, label %sw.bb9
    i32 808665426, label %sw.bb10
    i32 808665410, label %sw.bb11
  ], !dbg !6887

sw.bb:                                            ; preds = %entry
  store i32 892424792, ptr %retval, align 4, !dbg !6888
  br label %return, !dbg !6888

sw.bb1:                                           ; preds = %entry
  store i32 892420696, ptr %retval, align 4, !dbg !6890
  br label %return, !dbg !6890

sw.bb2:                                           ; preds = %entry
  store i32 892426322, ptr %retval, align 4, !dbg !6891
  br label %return, !dbg !6891

sw.bb3:                                           ; preds = %entry
  store i32 892426306, ptr %retval, align 4, !dbg !6892
  br label %return, !dbg !6892

sw.bb4:                                           ; preds = %entry
  store i32 875713112, ptr %retval, align 4, !dbg !6893
  br label %return, !dbg !6893

sw.bb5:                                           ; preds = %entry
  store i32 875709016, ptr %retval, align 4, !dbg !6894
  br label %return, !dbg !6894

sw.bb6:                                           ; preds = %entry
  store i32 875714642, ptr %retval, align 4, !dbg !6895
  br label %return, !dbg !6895

sw.bb7:                                           ; preds = %entry
  store i32 875714626, ptr %retval, align 4, !dbg !6896
  br label %return, !dbg !6896

sw.bb8:                                           ; preds = %entry
  store i32 808669784, ptr %retval, align 4, !dbg !6897
  br label %return, !dbg !6897

sw.bb9:                                           ; preds = %entry
  store i32 808665688, ptr %retval, align 4, !dbg !6898
  br label %return, !dbg !6898

sw.bb10:                                          ; preds = %entry
  store i32 808671314, ptr %retval, align 4, !dbg !6899
  br label %return, !dbg !6899

sw.bb11:                                          ; preds = %entry
  store i32 808671298, ptr %retval, align 4, !dbg !6900
  br label %return, !dbg !6900

sw.epilog:                                        ; preds = %entry
  %1 = load i32, ptr %fourcc.addr, align 4, !dbg !6901
  store i32 %1, ptr %retval, align 4, !dbg !6902
  br label %return, !dbg !6902

return:                                           ; preds = %sw.epilog, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, ptr %retval, align 4, !dbg !6903
  ret i32 %2, !dbg !6903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_listed_fourcc(ptr noundef %fourccs, i64 noundef %nfourccs, i32 noundef %fourcc) #0 align 16 !dbg !6904 {
entry:
  %retval = alloca i1, align 1
  %fourccs.addr = alloca ptr, align 8
  %nfourccs.addr = alloca i64, align 8
  %fourcc.addr = alloca i32, align 4
  %fourccs_end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fourccs, ptr %fourccs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fourccs.addr, metadata !6909, metadata !DIExpression()), !dbg !6913
  store i64 %nfourccs, ptr %nfourccs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nfourccs.addr, metadata !6910, metadata !DIExpression()), !dbg !6914
  store i32 %fourcc, ptr %fourcc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fourcc.addr, metadata !6911, metadata !DIExpression()), !dbg !6915
  call void @llvm.lifetime.start.p0(i64 8, ptr %fourccs_end) #15, !dbg !6916
  call void @llvm.dbg.declare(metadata ptr %fourccs_end, metadata !6912, metadata !DIExpression()), !dbg !6917
  %0 = load ptr, ptr %fourccs.addr, align 8, !dbg !6918
  %1 = load i64, ptr %nfourccs.addr, align 8, !dbg !6919
  %add.ptr = getelementptr i32, ptr %0, i64 %1, !dbg !6920
  store ptr %add.ptr, ptr %fourccs_end, align 8, !dbg !6917
  br label %while.cond, !dbg !6921

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %fourccs.addr, align 8, !dbg !6922
  %3 = load ptr, ptr %fourccs_end, align 8, !dbg !6923
  %cmp = icmp ult ptr %2, %3, !dbg !6924
  br i1 %cmp, label %while.body, label %while.end, !dbg !6921

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %fourccs.addr, align 8, !dbg !6925
  %5 = load i32, ptr %4, align 4, !dbg !6928
  %6 = load i32, ptr %fourcc.addr, align 4, !dbg !6929
  %cmp1 = icmp eq i32 %5, %6, !dbg !6930
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6931

if.then:                                          ; preds = %while.body
  store i1 true, ptr %retval, align 1, !dbg !6932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6932

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %fourccs.addr, align 8, !dbg !6933
  %incdec.ptr = getelementptr i32, ptr %7, i32 1, !dbg !6933
  store ptr %incdec.ptr, ptr %fourccs.addr, align 8, !dbg !6933
  br label %while.cond, !dbg !6921, !llvm.loop !6934

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %retval, align 1, !dbg !6936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6936

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fourccs_end) #15, !dbg !6937
  %8 = load i1, ptr %retval, align 1, !dbg !6937
  ret i1 %8, !dbg !6937
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6938 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6974 dso_local void @memcpy_toio(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__drm_fb_xfrm_toio(ptr noundef %dst, i64 noundef %dst_pitch, i64 noundef %dst_pixsize, ptr noundef %vaddr, ptr noundef %fb, ptr noundef %clip, i1 noundef zeroext %vaddr_cached_hint, ptr noundef %xfrm_line) #0 align 16 !dbg !6980 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca i64, align 8
  %dst_pixsize.addr = alloca i64, align 8
  %vaddr.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %vaddr_cached_hint.addr = alloca i8, align 1
  %xfrm_line.addr = alloca ptr, align 8
  %linepixels = alloca i64, align 8
  %lines = alloca i64, align 8
  %dbuf_len = alloca i64, align 8
  %stmp_off = alloca i64, align 8
  %sbuf_len = alloca i64, align 8
  %stmp = alloca ptr, align 8
  %i = alloca i64, align 8
  %sbuf = alloca ptr, align 8
  %dbuf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6984, metadata !DIExpression()), !dbg !7001
  store i64 %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !6985, metadata !DIExpression()), !dbg !7002
  store i64 %dst_pixsize, ptr %dst_pixsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pixsize.addr, metadata !6986, metadata !DIExpression()), !dbg !7003
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !6987, metadata !DIExpression()), !dbg !7004
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6988, metadata !DIExpression()), !dbg !7005
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !6989, metadata !DIExpression()), !dbg !7006
  %frombool = zext i1 %vaddr_cached_hint to i8
  store i8 %frombool, ptr %vaddr_cached_hint.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %vaddr_cached_hint.addr, metadata !6990, metadata !DIExpression()), !dbg !7007
  store ptr %xfrm_line, ptr %xfrm_line.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xfrm_line.addr, metadata !6991, metadata !DIExpression()), !dbg !7008
  call void @llvm.lifetime.start.p0(i64 8, ptr %linepixels) #15, !dbg !7009
  call void @llvm.dbg.declare(metadata ptr %linepixels, metadata !6992, metadata !DIExpression()), !dbg !7010
  %0 = load ptr, ptr %clip.addr, align 8, !dbg !7011
  %call = call i32 @drm_rect_width(ptr noundef %0) #14, !dbg !7012
  %conv = sext i32 %call to i64, !dbg !7012
  store i64 %conv, ptr %linepixels, align 8, !dbg !7010
  call void @llvm.lifetime.start.p0(i64 8, ptr %lines) #15, !dbg !7013
  call void @llvm.dbg.declare(metadata ptr %lines, metadata !6993, metadata !DIExpression()), !dbg !7014
  %1 = load ptr, ptr %clip.addr, align 8, !dbg !7015
  %call1 = call i32 @drm_rect_height(ptr noundef %1) #14, !dbg !7016
  %conv2 = sext i32 %call1 to i64, !dbg !7016
  store i64 %conv2, ptr %lines, align 8, !dbg !7014
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf_len) #15, !dbg !7017
  call void @llvm.dbg.declare(metadata ptr %dbuf_len, metadata !6994, metadata !DIExpression()), !dbg !7018
  %2 = load i64, ptr %linepixels, align 8, !dbg !7019
  %3 = load i64, ptr %dst_pixsize.addr, align 8, !dbg !7020
  %mul = mul i64 %2, %3, !dbg !7021
  store i64 %mul, ptr %dbuf_len, align 8, !dbg !7018
  call void @llvm.lifetime.start.p0(i64 8, ptr %stmp_off) #15, !dbg !7022
  call void @llvm.dbg.declare(metadata ptr %stmp_off, metadata !6995, metadata !DIExpression()), !dbg !7023
  %4 = load i64, ptr %dbuf_len, align 8, !dbg !7024
  %sub = sub i64 %4, 1, !dbg !7024
  %or = or i64 %sub, 7, !dbg !7024
  %add = add i64 %or, 1, !dbg !7024
  store i64 %add, ptr %stmp_off, align 8, !dbg !7023
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf_len) #15, !dbg !7025
  call void @llvm.dbg.declare(metadata ptr %sbuf_len, metadata !6996, metadata !DIExpression()), !dbg !7026
  %5 = load i64, ptr %linepixels, align 8, !dbg !7027
  %6 = load ptr, ptr %fb.addr, align 8, !dbg !7028
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 4, !dbg !7029
  %7 = load ptr, ptr %format, align 8, !dbg !7029
  %8 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3, !dbg !7030
  %arrayidx = getelementptr [4 x i8], ptr %8, i64 0, i64 0, !dbg !7028
  %9 = load i8, ptr %arrayidx, align 2, !dbg !7028
  %conv3 = zext i8 %9 to i64, !dbg !7028
  %mul4 = mul i64 %5, %conv3, !dbg !7031
  store i64 %mul4, ptr %sbuf_len, align 8, !dbg !7026
  call void @llvm.lifetime.start.p0(i64 8, ptr %stmp) #15, !dbg !7032
  call void @llvm.dbg.declare(metadata ptr %stmp, metadata !6997, metadata !DIExpression()), !dbg !7033
  store ptr null, ptr %stmp, align 8, !dbg !7033
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !7034
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6998, metadata !DIExpression()), !dbg !7035
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf) #15, !dbg !7036
  call void @llvm.dbg.declare(metadata ptr %sbuf, metadata !6999, metadata !DIExpression()), !dbg !7037
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf) #15, !dbg !7038
  call void @llvm.dbg.declare(metadata ptr %dbuf, metadata !7000, metadata !DIExpression()), !dbg !7039
  %10 = load i8, ptr %vaddr_cached_hint.addr, align 1, !dbg !7040, !range !5306, !noundef !926
  %tobool = trunc i8 %10 to i1, !dbg !7040
  br i1 %tobool, label %if.then, label %if.else, !dbg !7042

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %dbuf_len, align 8, !dbg !7043
  %call5 = call noalias ptr @kmalloc(i64 noundef %11, i32 noundef 3264) #17, !dbg !7045
  store ptr %call5, ptr %dbuf, align 8, !dbg !7046
  br label %if.end, !dbg !7047

if.else:                                          ; preds = %entry
  %12 = load i64, ptr %stmp_off, align 8, !dbg !7048
  %13 = load i64, ptr %sbuf_len, align 8, !dbg !7050
  %add6 = add i64 %12, %13, !dbg !7051
  %call7 = call noalias ptr @kmalloc(i64 noundef %add6, i32 noundef 3264) #17, !dbg !7052
  store ptr %call7, ptr %dbuf, align 8, !dbg !7053
  %14 = load ptr, ptr %dbuf, align 8, !dbg !7054
  %15 = load i64, ptr %stmp_off, align 8, !dbg !7055
  %add.ptr = getelementptr i8, ptr %14, i64 %15, !dbg !7056
  store ptr %add.ptr, ptr %stmp, align 8, !dbg !7057
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %dbuf, align 8, !dbg !7058
  %tobool8 = icmp ne ptr %16, null, !dbg !7058
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !7060

if.then9:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !7061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7061

if.end10:                                         ; preds = %if.end
  %17 = load i64, ptr %dst_pitch.addr, align 8, !dbg !7062
  %tobool11 = icmp ne i64 %17, 0, !dbg !7062
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !7064

if.then12:                                        ; preds = %if.end10
  %18 = load i64, ptr %linepixels, align 8, !dbg !7065
  %19 = load i64, ptr %dst_pixsize.addr, align 8, !dbg !7066
  %mul13 = mul i64 %18, %19, !dbg !7067
  store i64 %mul13, ptr %dst_pitch.addr, align 8, !dbg !7068
  br label %if.end14, !dbg !7069

if.end14:                                         ; preds = %if.then12, %if.end10
  %20 = load ptr, ptr %clip.addr, align 8, !dbg !7070
  %21 = load ptr, ptr %fb.addr, align 8, !dbg !7071
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %21, i32 0, i32 6, !dbg !7072
  %arrayidx15 = getelementptr [4 x i32], ptr %pitches, i64 0, i64 0, !dbg !7071
  %22 = load i32, ptr %arrayidx15, align 8, !dbg !7071
  %23 = load ptr, ptr %fb.addr, align 8, !dbg !7073
  %format16 = getelementptr inbounds %struct.drm_framebuffer, ptr %23, i32 0, i32 4, !dbg !7074
  %24 = load ptr, ptr %format16, align 8, !dbg !7074
  %25 = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 3, !dbg !7075
  %arrayidx17 = getelementptr [4 x i8], ptr %25, i64 0, i64 0, !dbg !7073
  %26 = load i8, ptr %arrayidx17, align 2, !dbg !7073
  %conv18 = zext i8 %26 to i32, !dbg !7073
  %call19 = call i32 @clip_offset(ptr noundef %20, i32 noundef %22, i32 noundef %conv18) #14, !dbg !7076
  %27 = load ptr, ptr %vaddr.addr, align 8, !dbg !7077
  %idx.ext = zext i32 %call19 to i64, !dbg !7077
  %add.ptr20 = getelementptr i8, ptr %27, i64 %idx.ext, !dbg !7077
  store ptr %add.ptr20, ptr %vaddr.addr, align 8, !dbg !7077
  store i64 0, ptr %i, align 8, !dbg !7078
  br label %for.cond, !dbg !7080

for.cond:                                         ; preds = %for.inc, %if.end14
  %28 = load i64, ptr %i, align 8, !dbg !7081
  %29 = load i64, ptr %lines, align 8, !dbg !7083
  %cmp = icmp ult i64 %28, %29, !dbg !7084
  br i1 %cmp, label %for.body, label %for.end, !dbg !7085

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %stmp, align 8, !dbg !7086
  %tobool22 = icmp ne ptr %30, null, !dbg !7086
  br i1 %tobool22, label %if.then23, label %if.else24, !dbg !7089

if.then23:                                        ; preds = %for.body
  %31 = load ptr, ptr %stmp, align 8, !dbg !7090
  %32 = load ptr, ptr %vaddr.addr, align 8, !dbg !7091
  %33 = load i64, ptr %sbuf_len, align 8, !dbg !7092
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %32, i64 %33, i1 false), !dbg !7093
  store ptr %31, ptr %sbuf, align 8, !dbg !7094
  br label %if.end25, !dbg !7095

if.else24:                                        ; preds = %for.body
  %34 = load ptr, ptr %vaddr.addr, align 8, !dbg !7096
  store ptr %34, ptr %sbuf, align 8, !dbg !7097
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  %35 = load ptr, ptr %xfrm_line.addr, align 8, !dbg !7098
  %36 = load ptr, ptr %dbuf, align 8, !dbg !7099
  %37 = load ptr, ptr %sbuf, align 8, !dbg !7100
  %38 = load i64, ptr %linepixels, align 8, !dbg !7101
  %conv26 = trunc i64 %38 to i32, !dbg !7101
  call void %35(ptr noundef %36, ptr noundef %37, i32 noundef %conv26) #14, !dbg !7098
  %39 = load ptr, ptr %dst.addr, align 8, !dbg !7102
  %40 = load ptr, ptr %dbuf, align 8, !dbg !7103
  %41 = load i64, ptr %dbuf_len, align 8, !dbg !7104
  call void @memcpy_toio(ptr noundef %39, ptr noundef %40, i64 noundef %41) #14, !dbg !7105
  %42 = load ptr, ptr %fb.addr, align 8, !dbg !7106
  %pitches27 = getelementptr inbounds %struct.drm_framebuffer, ptr %42, i32 0, i32 6, !dbg !7107
  %arrayidx28 = getelementptr [4 x i32], ptr %pitches27, i64 0, i64 0, !dbg !7106
  %43 = load i32, ptr %arrayidx28, align 8, !dbg !7106
  %44 = load ptr, ptr %vaddr.addr, align 8, !dbg !7108
  %idx.ext29 = zext i32 %43 to i64, !dbg !7108
  %add.ptr30 = getelementptr i8, ptr %44, i64 %idx.ext29, !dbg !7108
  store ptr %add.ptr30, ptr %vaddr.addr, align 8, !dbg !7108
  %45 = load i64, ptr %dst_pitch.addr, align 8, !dbg !7109
  %46 = load ptr, ptr %dst.addr, align 8, !dbg !7110
  %add.ptr31 = getelementptr i8, ptr %46, i64 %45, !dbg !7110
  store ptr %add.ptr31, ptr %dst.addr, align 8, !dbg !7110
  br label %for.inc, !dbg !7111

for.inc:                                          ; preds = %if.end25
  %47 = load i64, ptr %i, align 8, !dbg !7112
  %inc = add i64 %47, 1, !dbg !7112
  store i64 %inc, ptr %i, align 8, !dbg !7112
  br label %for.cond, !dbg !7113, !llvm.loop !7114

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %dbuf, align 8, !dbg !7116
  call void @kfree(ptr noundef %48) #14, !dbg !7117
  store i32 0, ptr %retval, align 4, !dbg !7118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7118

cleanup:                                          ; preds = %for.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %stmp) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf_len) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %stmp_off) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf_len) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %lines) #15, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %linepixels) #15, !dbg !7119
  %49 = load i32, ptr %retval, align 4, !dbg !7119
  ret i32 %49, !dbg !7119
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__drm_fb_xfrm(ptr noundef %dst, i64 noundef %dst_pitch, i64 noundef %dst_pixsize, ptr noundef %vaddr, ptr noundef %fb, ptr noundef %clip, i1 noundef zeroext %vaddr_cached_hint, ptr noundef %xfrm_line) #0 align 16 !dbg !7120 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dst_pitch.addr = alloca i64, align 8
  %dst_pixsize.addr = alloca i64, align 8
  %vaddr.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %vaddr_cached_hint.addr = alloca i8, align 1
  %xfrm_line.addr = alloca ptr, align 8
  %linepixels = alloca i64, align 8
  %lines = alloca i64, align 8
  %sbuf_len = alloca i64, align 8
  %stmp = alloca ptr, align 8
  %i = alloca i64, align 8
  %sbuf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7122, metadata !DIExpression()), !dbg !7136
  store i64 %dst_pitch, ptr %dst_pitch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pitch.addr, metadata !7123, metadata !DIExpression()), !dbg !7137
  store i64 %dst_pixsize, ptr %dst_pixsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_pixsize.addr, metadata !7124, metadata !DIExpression()), !dbg !7138
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !7125, metadata !DIExpression()), !dbg !7139
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !7126, metadata !DIExpression()), !dbg !7140
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !7127, metadata !DIExpression()), !dbg !7141
  %frombool = zext i1 %vaddr_cached_hint to i8
  store i8 %frombool, ptr %vaddr_cached_hint.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %vaddr_cached_hint.addr, metadata !7128, metadata !DIExpression()), !dbg !7142
  store ptr %xfrm_line, ptr %xfrm_line.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xfrm_line.addr, metadata !7129, metadata !DIExpression()), !dbg !7143
  call void @llvm.lifetime.start.p0(i64 8, ptr %linepixels) #15, !dbg !7144
  call void @llvm.dbg.declare(metadata ptr %linepixels, metadata !7130, metadata !DIExpression()), !dbg !7145
  %0 = load ptr, ptr %clip.addr, align 8, !dbg !7146
  %call = call i32 @drm_rect_width(ptr noundef %0) #14, !dbg !7147
  %conv = sext i32 %call to i64, !dbg !7147
  store i64 %conv, ptr %linepixels, align 8, !dbg !7145
  call void @llvm.lifetime.start.p0(i64 8, ptr %lines) #15, !dbg !7148
  call void @llvm.dbg.declare(metadata ptr %lines, metadata !7131, metadata !DIExpression()), !dbg !7149
  %1 = load ptr, ptr %clip.addr, align 8, !dbg !7150
  %call1 = call i32 @drm_rect_height(ptr noundef %1) #14, !dbg !7151
  %conv2 = sext i32 %call1 to i64, !dbg !7151
  store i64 %conv2, ptr %lines, align 8, !dbg !7149
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf_len) #15, !dbg !7152
  call void @llvm.dbg.declare(metadata ptr %sbuf_len, metadata !7132, metadata !DIExpression()), !dbg !7153
  %2 = load i64, ptr %linepixels, align 8, !dbg !7154
  %3 = load ptr, ptr %fb.addr, align 8, !dbg !7155
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4, !dbg !7156
  %4 = load ptr, ptr %format, align 8, !dbg !7156
  %5 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 3, !dbg !7157
  %arrayidx = getelementptr [4 x i8], ptr %5, i64 0, i64 0, !dbg !7155
  %6 = load i8, ptr %arrayidx, align 2, !dbg !7155
  %conv3 = zext i8 %6 to i64, !dbg !7155
  %mul = mul i64 %2, %conv3, !dbg !7158
  store i64 %mul, ptr %sbuf_len, align 8, !dbg !7153
  call void @llvm.lifetime.start.p0(i64 8, ptr %stmp) #15, !dbg !7159
  call void @llvm.dbg.declare(metadata ptr %stmp, metadata !7133, metadata !DIExpression()), !dbg !7160
  store ptr null, ptr %stmp, align 8, !dbg !7160
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !7161
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7134, metadata !DIExpression()), !dbg !7162
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf) #15, !dbg !7163
  call void @llvm.dbg.declare(metadata ptr %sbuf, metadata !7135, metadata !DIExpression()), !dbg !7164
  %7 = load i8, ptr %vaddr_cached_hint.addr, align 1, !dbg !7165, !range !5306, !noundef !926
  %tobool = trunc i8 %7 to i1, !dbg !7165
  br i1 %tobool, label %if.end7, label %if.then, !dbg !7167

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %sbuf_len, align 8, !dbg !7168
  %call4 = call noalias ptr @kmalloc(i64 noundef %8, i32 noundef 3264) #17, !dbg !7170
  store ptr %call4, ptr %stmp, align 8, !dbg !7171
  %9 = load ptr, ptr %stmp, align 8, !dbg !7172
  %tobool5 = icmp ne ptr %9, null, !dbg !7172
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !7174

if.then6:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !7175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7175

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !7176

if.end7:                                          ; preds = %if.end, %entry
  %10 = load i64, ptr %dst_pitch.addr, align 8, !dbg !7177
  %tobool8 = icmp ne i64 %10, 0, !dbg !7177
  br i1 %tobool8, label %if.end13, label %if.then9, !dbg !7179

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %clip.addr, align 8, !dbg !7180
  %call10 = call i32 @drm_rect_width(ptr noundef %11) #14, !dbg !7181
  %conv11 = sext i32 %call10 to i64, !dbg !7181
  %12 = load i64, ptr %dst_pixsize.addr, align 8, !dbg !7182
  %mul12 = mul i64 %conv11, %12, !dbg !7183
  store i64 %mul12, ptr %dst_pitch.addr, align 8, !dbg !7184
  br label %if.end13, !dbg !7185

if.end13:                                         ; preds = %if.then9, %if.end7
  %13 = load ptr, ptr %clip.addr, align 8, !dbg !7186
  %14 = load ptr, ptr %fb.addr, align 8, !dbg !7187
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 6, !dbg !7188
  %arrayidx14 = getelementptr [4 x i32], ptr %pitches, i64 0, i64 0, !dbg !7187
  %15 = load i32, ptr %arrayidx14, align 8, !dbg !7187
  %16 = load ptr, ptr %fb.addr, align 8, !dbg !7189
  %format15 = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 4, !dbg !7190
  %17 = load ptr, ptr %format15, align 8, !dbg !7190
  %18 = getelementptr inbounds %struct.drm_format_info, ptr %17, i32 0, i32 3, !dbg !7191
  %arrayidx16 = getelementptr [4 x i8], ptr %18, i64 0, i64 0, !dbg !7189
  %19 = load i8, ptr %arrayidx16, align 2, !dbg !7189
  %conv17 = zext i8 %19 to i32, !dbg !7189
  %call18 = call i32 @clip_offset(ptr noundef %13, i32 noundef %15, i32 noundef %conv17) #14, !dbg !7192
  %20 = load ptr, ptr %vaddr.addr, align 8, !dbg !7193
  %idx.ext = zext i32 %call18 to i64, !dbg !7193
  %add.ptr = getelementptr i8, ptr %20, i64 %idx.ext, !dbg !7193
  store ptr %add.ptr, ptr %vaddr.addr, align 8, !dbg !7193
  store i64 0, ptr %i, align 8, !dbg !7194
  br label %for.cond, !dbg !7196

for.cond:                                         ; preds = %for.inc, %if.end13
  %21 = load i64, ptr %i, align 8, !dbg !7197
  %22 = load i64, ptr %lines, align 8, !dbg !7199
  %cmp = icmp ult i64 %21, %22, !dbg !7200
  br i1 %cmp, label %for.body, label %for.end, !dbg !7201

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %stmp, align 8, !dbg !7202
  %tobool20 = icmp ne ptr %23, null, !dbg !7202
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !7205

if.then21:                                        ; preds = %for.body
  %24 = load ptr, ptr %stmp, align 8, !dbg !7206
  %25 = load ptr, ptr %vaddr.addr, align 8, !dbg !7207
  %26 = load i64, ptr %sbuf_len, align 8, !dbg !7208
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %25, i64 %26, i1 false), !dbg !7209
  store ptr %24, ptr %sbuf, align 8, !dbg !7210
  br label %if.end22, !dbg !7211

if.else:                                          ; preds = %for.body
  %27 = load ptr, ptr %vaddr.addr, align 8, !dbg !7212
  store ptr %27, ptr %sbuf, align 8, !dbg !7213
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %28 = load ptr, ptr %xfrm_line.addr, align 8, !dbg !7214
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !7215
  %30 = load ptr, ptr %sbuf, align 8, !dbg !7216
  %31 = load i64, ptr %linepixels, align 8, !dbg !7217
  %conv23 = trunc i64 %31 to i32, !dbg !7217
  call void %28(ptr noundef %29, ptr noundef %30, i32 noundef %conv23) #14, !dbg !7214
  %32 = load ptr, ptr %fb.addr, align 8, !dbg !7218
  %pitches24 = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 6, !dbg !7219
  %arrayidx25 = getelementptr [4 x i32], ptr %pitches24, i64 0, i64 0, !dbg !7218
  %33 = load i32, ptr %arrayidx25, align 8, !dbg !7218
  %34 = load ptr, ptr %vaddr.addr, align 8, !dbg !7220
  %idx.ext26 = zext i32 %33 to i64, !dbg !7220
  %add.ptr27 = getelementptr i8, ptr %34, i64 %idx.ext26, !dbg !7220
  store ptr %add.ptr27, ptr %vaddr.addr, align 8, !dbg !7220
  %35 = load i64, ptr %dst_pitch.addr, align 8, !dbg !7221
  %36 = load ptr, ptr %dst.addr, align 8, !dbg !7222
  %add.ptr28 = getelementptr i8, ptr %36, i64 %35, !dbg !7222
  store ptr %add.ptr28, ptr %dst.addr, align 8, !dbg !7222
  br label %for.inc, !dbg !7223

for.inc:                                          ; preds = %if.end22
  %37 = load i64, ptr %i, align 8, !dbg !7224
  %inc = add i64 %37, 1, !dbg !7224
  store i64 %inc, ptr %i, align 8, !dbg !7224
  br label %for.cond, !dbg !7225, !llvm.loop !7226

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %stmp, align 8, !dbg !7228
  call void @kfree(ptr noundef %38) #14, !dbg !7229
  store i32 0, ptr %retval, align 4, !dbg !7230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7230

cleanup:                                          ; preds = %for.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf) #15, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 8, ptr %stmp) #15, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf_len) #15, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 8, ptr %lines) #15, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 8, ptr %linepixels) #15, !dbg !7231
  %39 = load i32, ptr %retval, align 4, !dbg !7231
  ret i32 %39, !dbg !7231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_xbgr8888_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !7232 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf32 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !7234, metadata !DIExpression()), !dbg !7241
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !7235, metadata !DIExpression()), !dbg !7242
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !7236, metadata !DIExpression()), !dbg !7243
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf32) #15, !dbg !7244
  call void @llvm.dbg.declare(metadata ptr %dbuf32, metadata !7237, metadata !DIExpression()), !dbg !7245
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !7246
  store ptr %0, ptr %dbuf32, align 8, !dbg !7245
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !7247
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !7238, metadata !DIExpression()), !dbg !7248
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !7249
  store ptr %1, ptr %sbuf32, align 8, !dbg !7248
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !7250
  call void @llvm.dbg.declare(metadata ptr %x, metadata !7239, metadata !DIExpression()), !dbg !7251
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !7252
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !7240, metadata !DIExpression()), !dbg !7253
  store i32 0, ptr %x, align 4, !dbg !7254
  br label %for.cond, !dbg !7256

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !7257
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !7259
  %cmp = icmp ult i32 %2, %3, !dbg !7260
  br i1 %cmp, label %for.body, label %for.end, !dbg !7261

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !7262
  %5 = load i32, ptr %x, align 4, !dbg !7262
  %idxprom = zext i32 %5 to i64, !dbg !7262
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !7262
  %6 = load i32, ptr %arrayidx, align 4, !dbg !7262
  store i32 %6, ptr %pix, align 4, !dbg !7264
  %7 = load i32, ptr %pix, align 4, !dbg !7265
  %and = and i32 %7, 16711680, !dbg !7266
  %shr = lshr i32 %and, 16, !dbg !7267
  %shl = shl i32 %shr, 0, !dbg !7268
  %8 = load i32, ptr %pix, align 4, !dbg !7269
  %and1 = and i32 %8, 65280, !dbg !7270
  %shr2 = lshr i32 %and1, 8, !dbg !7271
  %shl3 = shl i32 %shr2, 8, !dbg !7272
  %or = or i32 %shl, %shl3, !dbg !7273
  %9 = load i32, ptr %pix, align 4, !dbg !7274
  %and4 = and i32 %9, 255, !dbg !7275
  %shr5 = lshr i32 %and4, 0, !dbg !7276
  %shl6 = shl i32 %shr5, 16, !dbg !7277
  %or7 = or i32 %or, %shl6, !dbg !7278
  %10 = load i32, ptr %pix, align 4, !dbg !7279
  %and8 = and i32 %10, -16777216, !dbg !7280
  %shr9 = lshr i32 %and8, 24, !dbg !7281
  %shl10 = shl i32 %shr9, 24, !dbg !7282
  %or11 = or i32 %or7, %shl10, !dbg !7283
  store i32 %or11, ptr %pix, align 4, !dbg !7284
  %11 = load i32, ptr %pix, align 4, !dbg !7285
  %12 = load ptr, ptr %dbuf32, align 8, !dbg !7286
  %incdec.ptr = getelementptr i32, ptr %12, i32 1, !dbg !7286
  store ptr %incdec.ptr, ptr %dbuf32, align 8, !dbg !7286
  store i32 %11, ptr %12, align 4, !dbg !7287
  br label %for.inc, !dbg !7288

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %x, align 4, !dbg !7289
  %inc = add i32 %13, 1, !dbg !7289
  store i32 %inc, ptr %x, align 4, !dbg !7289
  br label %for.cond, !dbg !7290, !llvm.loop !7291

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf32) #15, !dbg !7293
  ret void, !dbg !7293
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_fb_xrgb8888_to_abgr8888_line(ptr noundef %dbuf, ptr noundef %sbuf, i32 noundef %pixels) #0 align 16 !dbg !7294 {
entry:
  %dbuf.addr = alloca ptr, align 8
  %sbuf.addr = alloca ptr, align 8
  %pixels.addr = alloca i32, align 4
  %dbuf32 = alloca ptr, align 8
  %sbuf32 = alloca ptr, align 8
  %x = alloca i32, align 4
  %pix = alloca i32, align 4
  store ptr %dbuf, ptr %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbuf.addr, metadata !7296, metadata !DIExpression()), !dbg !7303
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !7297, metadata !DIExpression()), !dbg !7304
  store i32 %pixels, ptr %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels.addr, metadata !7298, metadata !DIExpression()), !dbg !7305
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbuf32) #15, !dbg !7306
  call void @llvm.dbg.declare(metadata ptr %dbuf32, metadata !7299, metadata !DIExpression()), !dbg !7307
  %0 = load ptr, ptr %dbuf.addr, align 8, !dbg !7308
  store ptr %0, ptr %dbuf32, align 8, !dbg !7307
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbuf32) #15, !dbg !7309
  call void @llvm.dbg.declare(metadata ptr %sbuf32, metadata !7300, metadata !DIExpression()), !dbg !7310
  %1 = load ptr, ptr %sbuf.addr, align 8, !dbg !7311
  store ptr %1, ptr %sbuf32, align 8, !dbg !7310
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15, !dbg !7312
  call void @llvm.dbg.declare(metadata ptr %x, metadata !7301, metadata !DIExpression()), !dbg !7313
  call void @llvm.lifetime.start.p0(i64 4, ptr %pix) #15, !dbg !7314
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !7302, metadata !DIExpression()), !dbg !7315
  store i32 0, ptr %x, align 4, !dbg !7316
  br label %for.cond, !dbg !7318

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %x, align 4, !dbg !7319
  %3 = load i32, ptr %pixels.addr, align 4, !dbg !7321
  %cmp = icmp ult i32 %2, %3, !dbg !7322
  br i1 %cmp, label %for.body, label %for.end, !dbg !7323

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sbuf32, align 8, !dbg !7324
  %5 = load i32, ptr %x, align 4, !dbg !7324
  %idxprom = zext i32 %5 to i64, !dbg !7324
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !7324
  %6 = load i32, ptr %arrayidx, align 4, !dbg !7324
  store i32 %6, ptr %pix, align 4, !dbg !7326
  %7 = load i32, ptr %pix, align 4, !dbg !7327
  %and = and i32 %7, 16711680, !dbg !7328
  %shr = lshr i32 %and, 16, !dbg !7329
  %shl = shl i32 %shr, 0, !dbg !7330
  %8 = load i32, ptr %pix, align 4, !dbg !7331
  %and1 = and i32 %8, 65280, !dbg !7332
  %shr2 = lshr i32 %and1, 8, !dbg !7333
  %shl3 = shl i32 %shr2, 8, !dbg !7334
  %or = or i32 %shl, %shl3, !dbg !7335
  %9 = load i32, ptr %pix, align 4, !dbg !7336
  %and4 = and i32 %9, 255, !dbg !7337
  %shr5 = lshr i32 %and4, 0, !dbg !7338
  %shl6 = shl i32 %shr5, 16, !dbg !7339
  %or7 = or i32 %or, %shl6, !dbg !7340
  %conv = zext i32 %or7 to i64, !dbg !7341
  %or8 = or i64 %conv, 4278190080, !dbg !7342
  %conv9 = trunc i64 %or8 to i32, !dbg !7341
  store i32 %conv9, ptr %pix, align 4, !dbg !7343
  %10 = load i32, ptr %pix, align 4, !dbg !7344
  %11 = load ptr, ptr %dbuf32, align 8, !dbg !7345
  %incdec.ptr = getelementptr i32, ptr %11, i32 1, !dbg !7345
  store ptr %incdec.ptr, ptr %dbuf32, align 8, !dbg !7345
  store i32 %10, ptr %11, align 4, !dbg !7346
  br label %for.inc, !dbg !7347

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %x, align 4, !dbg !7348
  %inc = add i32 %12, 1, !dbg !7348
  store i32 %inc, ptr %x, align 4, !dbg !7348
  br label %for.cond, !dbg !7349, !llvm.loop !7350

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pix) #15, !dbg !7352
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15, !dbg !7352
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbuf32) #15, !dbg !7352
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbuf32) #15, !dbg !7352
  ret void, !dbg !7352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !7353 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !7355, metadata !DIExpression()), !dbg !7356
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !7357
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !7358
  %1 = load ptr, ptr %name, align 8, !dbg !7358
  ret ptr %1, !dbg !7359
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7360 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !7361 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7365, metadata !DIExpression()), !dbg !7367
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7366, metadata !DIExpression()), !dbg !7368
  %0 = load i64, ptr %size.addr, align 8, !dbg !7369
  %tobool = icmp ne i64 %0, 0, !dbg !7369
  br i1 %tobool, label %if.end, label %if.then, !dbg !7371

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7372
  br label %return, !dbg !7372

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7373
  %cmp = icmp ule i64 %1, 8, !dbg !7375
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7376

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7377
  br label %return, !dbg !7377

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7378
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7380
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7381

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7382
  %cmp4 = icmp ule i64 %3, 96, !dbg !7383
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7384

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7385
  br label %return, !dbg !7385

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7386
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7388
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7389

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7390
  %cmp9 = icmp ule i64 %5, 192, !dbg !7391
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7392

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7393
  br label %return, !dbg !7393

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7394
  %cmp12 = icmp ule i64 %6, 8, !dbg !7396
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7397

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7398
  br label %return, !dbg !7398

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7399
  %cmp15 = icmp ule i64 %7, 16, !dbg !7401
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7402

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7403
  br label %return, !dbg !7403

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7404
  %cmp18 = icmp ule i64 %8, 32, !dbg !7406
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7407

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7408
  br label %return, !dbg !7408

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7409
  %cmp21 = icmp ule i64 %9, 64, !dbg !7411
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7412

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7413
  br label %return, !dbg !7413

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7414
  %cmp24 = icmp ule i64 %10, 128, !dbg !7416
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7417

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7418
  br label %return, !dbg !7418

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7419
  %cmp27 = icmp ule i64 %11, 256, !dbg !7421
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7422

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7423
  br label %return, !dbg !7423

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7424
  %cmp30 = icmp ule i64 %12, 512, !dbg !7426
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7427

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7428
  br label %return, !dbg !7428

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7429
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7431
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7432

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7433
  br label %return, !dbg !7433

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7434
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7436
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7437

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7438
  br label %return, !dbg !7438

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7439
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7441
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7442

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7443
  br label %return, !dbg !7443

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7444
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7446
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7447

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7448
  br label %return, !dbg !7448

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7449
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7451
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7452

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7453
  br label %return, !dbg !7453

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7454
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7456
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7457

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7458
  br label %return, !dbg !7458

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7459
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7461
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7462

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7463
  br label %return, !dbg !7463

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7464
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7466
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7467

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7468
  br label %return, !dbg !7468

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7469
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7471
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7472

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7473
  br label %return, !dbg !7473

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7474
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7476
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7477

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7478
  br label %return, !dbg !7478

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7479
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7481
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7482

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7483
  br label %return, !dbg !7483

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7484
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7486
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7487

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7488
  br label %return, !dbg !7488

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7489, !range !5306, !noundef !926
  %tobool69 = trunc i8 %25 to i1, !dbg !7489
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7491

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7492

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #19, !dbg !7493, !srcloc !7496
  unreachable, !dbg !7493

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7497

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7498

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7499

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7501

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7499

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #15, !dbg !7503, !srcloc !7505
  br label %do.end75, !dbg !7503

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7499

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7506
  br label %return, !dbg !7506

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7507
  ret i32 %26, !dbg !7507
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7508 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !7514 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7518, metadata !DIExpression()), !dbg !7520
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7519, metadata !DIExpression()), !dbg !7521
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7522
  %and = and i32 %0, 17, !dbg !7522
  %cmp = icmp eq i32 %and, 0, !dbg !7522
  %lnot = xor i1 %cmp, true, !dbg !7522
  %lnot1 = xor i1 %lnot, true, !dbg !7522
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7522
  %conv = sext i32 %lnot.ext to i64, !dbg !7522
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7522
  %tobool = icmp ne i64 %expval, 0, !dbg !7522
  br i1 %tobool, label %if.then, label %if.end, !dbg !7524

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7525
  br label %return, !dbg !7525

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7526
  %and2 = and i32 %1, 1, !dbg !7528
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7528
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7529

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7530
  br label %return, !dbg !7530

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7531
  br label %return, !dbg !7531

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7533
  ret i32 %2, !dbg !7533
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7534 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7535 dso_local void @__compiletime_assert_196() #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137}
!llvm.ident = !{!5138}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_clip_offset268", scope: !2, file: !3, line: 42, type: !153, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_format_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_format_helper\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_format_helper.ll drivers/gpu/drm/drm_format_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !152, globals: !173, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_format_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97870c1f14662a03e0fa778adaedd2c8")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !124, !129, !142}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !118, line: 30, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!121 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!122 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!123 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 10, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "false", value: 0)
!128 = !DIEnumerator(name: "true", value: 1)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !130, line: 330, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!132 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!133 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!134 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!135 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!136 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!137 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!138 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!139 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!140 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!141 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !143, line: 364, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!144 = !{!145, !146, !147, !148, !149, !150, !151}
!145 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!146 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!147 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!148 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!149 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!150 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!151 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!152 = !{!153, !154, !156, !158, !163, !165, !170, !172, !85, !169}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !155, line: 27, baseType: !7)
!155 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !157, line: 154, baseType: !7)
!157 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !160, line: 17, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !155, line: 21, baseType: !162)
!162 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !155, line: 24, baseType: !164)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 61, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !167, line: 72, baseType: !168)
!167 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !167, line: 16, baseType: !169)
!169 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !171, line: 38, baseType: !154)
!171 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !171, line: 36, baseType: !163)
!173 = !{!0, !174, !4839, !4841, !4859, !4864, !4866, !4877, !4879, !4890, !4892, !4901, !4903, !4912, !4914, !4923, !4925, !4934, !4936, !4945, !4947, !4956, !4958, !4967, !4969, !4978, !4980, !4993, !4998, !5000, !5027, !5032, !5037, !5042, !5044, !5070, !5073, !5075, !5080, !5085, !5090, !5092, !5107, !5116, !5125}
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "default_dst_pitch", scope: !176, file: !3, line: 177, type: !4838, isLocal: true, isDefinition: true)
!176 = distinct !DISubprogram(name: "drm_fb_memcpy", scope: !3, file: !3, line: 173, type: !177, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179, !191, !193, !195, !4810}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !181, line: 109, size: 128, elements: !182)
!181 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!182 = !{!183, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !181, line: 110, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !181, line: 110, size: 64, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !184, file: !181, line: 111, baseType: !153, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !184, file: !181, line: 112, baseType: !153, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !180, file: !181, line: 114, baseType: !189, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !157, line: 35, baseType: !190)
!190 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !198, line: 117, size: 1600, elements: !199)
!198 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5cd71656f00b65d2ac7e671422852fe")
!199 = !{!200, !4744, !4745, !4769, !4770, !4771, !4796, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !197, file: !198, line: 121, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !118, line: 50, size: 12736, elements: !203)
!203 = !{!204, !205, !219, !4439, !4445, !4450, !4451, !4454, !4455, !4456, !4457, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4730, !4731, !4732, !4735, !4738, !4739, !4742, !4743}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !202, file: !118, line: 52, baseType: !85, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !202, file: !118, line: 55, baseType: !206, size: 32, offset: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !207, line: 19, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !206, file: !207, line: 20, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !211, line: 113, baseType: !212)
!211 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !211, line: 111, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !212, file: !211, line: 112, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !157, line: 174, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 172, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !216, file: !157, line: 173, baseType: !85, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !202, file: !118, line: 58, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !222)
!222 = !{!223, !3993, !3994, !3997, !3998, !4051, !4121, !4122, !4123, !4124, !4125, !4132, !4224, !4237, !4247, !4251, !4253, !4254, !4255, !4259, !4266, !4267, !4270, !4273, !4277, !4381, !4382, !4383, !4384, !4385, !4386, !4416, !4417, !4418, !4421, !4424, !4433, !4434, !4435, !4436, !4437, !4438}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !221, file: !70, line: 706, baseType: !224, size: 512)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !225, line: 64, size: 512, elements: !226)
!225 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!226 = !{!227, !231, !237, !239, !317, !3896, !3987, !3988, !3989, !3990, !3991, !3992}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !225, line: 65, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !224, file: !225, line: 66, baseType: !232, size: 128, offset: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !157, line: 190, size: 128, elements: !233)
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !157, line: 191, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !232, file: !157, line: 191, baseType: !235, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !224, file: !225, line: 67, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !224, file: !225, line: 68, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !225, line: 168, size: 768, elements: !242)
!242 = !{!243, !244, !276, !277}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !241, file: !225, line: 169, baseType: !232, size: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !241, file: !225, line: 170, baseType: !245, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !246, line: 29, baseType: !247)
!246 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !246, line: 17, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !246, line: 18, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !246, line: 18, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !250, file: !246, line: 19, baseType: !253, size: 32)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !254, line: 14, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !253, file: !254, line: 15, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !258, line: 44, baseType: !259)
!258 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !258, line: 14, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 15, baseType: !262, size: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 15, size: 32, elements: !263)
!263 = !{!264, !265, !270}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !262, file: !258, line: 16, baseType: !215, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !258, line: 24, baseType: !266, size: 16)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !258, line: 24, size: 16, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !266, file: !258, line: 25, baseType: !159, size: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !266, file: !258, line: 26, baseType: !159, size: 8, offset: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !258, line: 28, baseType: !271, size: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !258, line: 28, size: 32, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !271, file: !258, line: 29, baseType: !274, size: 16)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !160, line: 19, baseType: !163)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !271, file: !258, line: 30, baseType: !274, size: 16, offset: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !241, file: !225, line: 171, baseType: !224, size: 512, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !241, file: !225, line: 172, baseType: !278, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !225, line: 133, size: 192, elements: !281)
!281 = !{!282, !289, !294}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !280, file: !225, line: 134, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!85, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !225, line: 135, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!228, !287}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !280, file: !225, line: 136, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!85, !287, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !225, line: 125, size: 20736, elements: !301)
!301 = !{!302, !307, !311, !312, !316}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !300, file: !225, line: 126, baseType: !303, size: 192)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 192, elements: !305)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!305 = !{!306}
!306 = !DISubrange(count: 3)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !300, file: !225, line: 127, baseType: !308, size: 4096, offset: 192)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 4096, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !300, file: !225, line: 128, baseType: !85, size: 32, offset: 4288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !300, file: !225, line: 129, baseType: !313, size: 16384, offset: 4320)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 16384, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !300, file: !225, line: 130, baseType: !85, size: 32, offset: 20704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !224, file: !225, line: 69, baseType: !318, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !225, line: 116, size: 384, elements: !321)
!321 = !{!322, !326, !350, !3858, !3886, !3890}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !320, file: !225, line: 117, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !238}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !320, file: !225, line: 118, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !330, line: 254, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!331 = !{!332, !346}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !329, file: !330, line: 255, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !238, !340, !304}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !157, line: 66, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !167, line: 73, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !167, line: 15, baseType: !339)
!339 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !330, line: 30, size: 128, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !330, line: 31, baseType: !228, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !341, file: !330, line: 32, baseType: !345, size: 16, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !157, line: 24, baseType: !164)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !329, file: !330, line: 256, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!336, !238, !340, !228, !165}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !320, file: !225, line: 119, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !330, line: 84, size: 320, elements: !355)
!355 = !{!356, !357, !361, !3854, !3856}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !330, line: 85, baseType: !228, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !354, file: !330, line: 86, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!345, !238, !340, !85}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !354, file: !330, line: 88, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!345, !238, !365, !85}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !330, line: 175, size: 512, elements: !367)
!367 = !{!368, !369, !370, !371, !3845, !3849, !3850}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !366, file: !330, line: 176, baseType: !341, size: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !366, file: !330, line: 177, baseType: !165, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !366, file: !330, line: 178, baseType: !153, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !366, file: !330, line: 179, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !377)
!377 = !{!378, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3839, !3840, !3841, !3842, !3843, !3844}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !376, file: !14, line: 473, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !381)
!381 = !{!382, !383, !384, !392, !393, !400, !401, !404, !405, !3619, !3620, !3621, !3622, !3623, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3662, !3665, !3666, !3667, !3676, !3677, !3678, !3679}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !380, file: !14, line: 642, baseType: !345, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !380, file: !14, line: 643, baseType: !164, size: 16, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !380, file: !14, line: 644, baseType: !385, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !386, line: 23, baseType: !387)
!386 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 21, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !387, file: !386, line: 22, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !157, line: 37, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !167, line: 49, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !380, file: !14, line: 645, baseType: !232, size: 128, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !380, file: !14, line: 646, baseType: !394, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !386, line: 28, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 26, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !386, line: 27, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !157, line: 38, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !167, line: 50, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !380, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !380, file: !14, line: 650, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !380, file: !14, line: 651, baseType: !402, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !380, file: !14, line: 654, baseType: !406, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !409)
!409 = !{!410, !3447, !3457, !3461, !3465, !3469, !3473, !3477, !3481, !3485, !3489, !3490, !3494, !3498, !3535, !3564, !3568, !3574, !3578, !3582, !3586, !3590, !3594, !3600, !3604}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !408, file: !14, line: 1967, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !379, !414, !7}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !416, line: 82, size: 1536, elements: !417)
!416 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!417 = !{!418, !419, !429, !437, !438, !457, !458, !462, !475, !3430, !3431, !3432, !3433, !3439, !3440, !3441}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !415, file: !416, line: 84, baseType: !7, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !415, file: !416, line: 85, baseType: !420, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !421, line: 275, baseType: !422)
!421 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !421, line: 275, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !422, file: !421, line: 275, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !421, line: 69, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !421, line: 64, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !426, file: !421, line: 65, baseType: !7, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !415, file: !416, line: 86, baseType: !430, size: 128, offset: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !431, line: 38, size: 128, elements: !432)
!431 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!432 = !{!433, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !431, line: 39, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !430, file: !431, line: 39, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !415, file: !416, line: 87, baseType: !414, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !415, file: !416, line: 88, baseType: !439, size: 128, offset: 256)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !416, line: 49, size: 128, elements: !440)
!440 = !{!441, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !416, line: 50, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !416, line: 50, size: 64, elements: !443)
!443 = !{!444, !450}
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !416, line: 51, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !416, line: 51, size: 64, elements: !446)
!446 = !{!447, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !445, file: !416, line: 52, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !160, line: 21, baseType: !154)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !445, file: !416, line: 52, baseType: !448, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !442, file: !416, line: 54, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !160, line: 23, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !155, line: 31, baseType: !453)
!453 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !416, line: 56, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !415, file: !416, line: 89, baseType: !379, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !415, file: !416, line: 91, baseType: !459, size: 256, offset: 448)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !415, file: !416, line: 94, baseType: !463, size: 64, offset: 704)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !464, line: 25, size: 64, elements: !465)
!464 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !464, line: 26, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !464, line: 26, size: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !467, file: !464, line: 28, baseType: !452, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !464, line: 30, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !464, line: 30, size: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !464, line: 31, baseType: !245, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !464, line: 32, baseType: !85, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !415, file: !416, line: 95, baseType: !476, size: 64, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !416, line: 128, size: 1024, align: 512, elements: !479)
!479 = !{!480, !484, !485, !492, !498, !502, !506, !510, !511, !515, !519, !3420, !3424}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !478, file: !416, line: 129, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!85, !414, !7}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !478, file: !416, line: 130, baseType: !481, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !478, file: !416, line: 131, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!85, !489, !491}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !478, file: !416, line: 132, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!85, !489, !7, !228, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !478, file: !416, line: 134, baseType: !499, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!85, !489}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !478, file: !416, line: 135, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!85, !414}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !478, file: !416, line: 136, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !414}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !478, file: !416, line: 137, baseType: !507, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !478, file: !416, line: 138, baseType: !512, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !414, !379}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !478, file: !416, line: 139, baseType: !516, size: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!304, !414, !304, !85}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !478, file: !416, line: 140, baseType: !520, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !3419}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !525, line: 70, size: 256, elements: !526)
!525 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!526 = !{!527, !528, !3415, !3416}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !524, file: !525, line: 71, baseType: !414, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !524, file: !525, line: 72, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !531)
!531 = !{!532, !533, !536, !537, !538, !542, !1020, !1868, !1908, !1993, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2010, !2014, !2015, !2018, !2021, !2024, !2027, !2028, !2029, !2070, !3348, !3349, !3350, !3351, !3352, !3353, !3356, !3358, !3365, !3366, !3367, !3368, !3369, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !530, file: !14, line: 1191, baseType: !232, size: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !530, file: !14, line: 1192, baseType: !534, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !157, line: 21, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !157, line: 18, baseType: !448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !530, file: !14, line: 1193, baseType: !162, size: 8, offset: 160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !530, file: !14, line: 1194, baseType: !169, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !530, file: !14, line: 1195, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !157, line: 52, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !167, line: 88, baseType: !541)
!541 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !530, file: !14, line: 1196, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !545)
!545 = !{!546, !547, !548, !555, !559, !563, !567, !1005, !1006, !1010, !1012, !1013, !1014, !1016, !1017, !1018, !1019}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !14, line: 2367, baseType: !228, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !544, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !544, file: !14, line: 2376, baseType: !549, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!85, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !554, line: 32, flags: DIFlagFwdDecl)
!554 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !544, file: !14, line: 2377, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !544, file: !14, line: 2378, baseType: !560, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!414, !543, !85, !228, !153}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !544, file: !14, line: 2380, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !529}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !544, file: !14, line: 2381, baseType: !568, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !570)
!570 = !{!571, !572, !573, !577, !599, !625, !626, !627, !628, !632, !637, !638, !658, !714, !715, !716, !717, !718, !719, !720, !721, !729, !733, !760, !781, !782, !783, !784, !793, !816, !817, !820, !823, !824, !825, !826, !827, !828, !829, !834, !835, !963, !971, !972, !973, !975, !979, !980, !984, !985, !986, !987, !989, !990, !991, !998, !999, !1000, !1004}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !569, file: !6, line: 403, baseType: !5, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !569, file: !6, line: 406, baseType: !232, size: 128, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !569, file: !6, line: 409, baseType: !574, size: 448, offset: 192)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 448, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 56)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !569, file: !6, line: 417, baseType: !578, size: 768, offset: 640)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !579)
!579 = !{!580, !581, !582, !583, !586}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !578, file: !6, line: 46, baseType: !224, size: 512)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !578, file: !6, line: 47, baseType: !568, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !578, file: !6, line: 48, baseType: !238, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !578, file: !6, line: 49, baseType: !584, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !578, file: !6, line: 50, baseType: !587, size: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !589, line: 26, size: 256, elements: !590)
!589 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !588, file: !589, line: 27, baseType: !7, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !588, file: !589, line: 28, baseType: !593, size: 192, offset: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !594, line: 43, size: 192, elements: !595)
!594 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!595 = !{!596, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !593, file: !594, line: 44, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !254, line: 23, baseType: !253)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !593, file: !594, line: 45, baseType: !232, size: 128, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !569, file: !6, line: 418, baseType: !600, size: 64, offset: 1408)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !602)
!602 = !{!603, !604, !609, !613, !617, !621}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !601, file: !6, line: 54, baseType: !341, size: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !601, file: !6, line: 55, baseType: !605, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!336, !600, !608, !304}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !601, file: !6, line: 57, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!336, !600, !608, !228, !165}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !601, file: !6, line: 59, baseType: !614, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !568, !228}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !601, file: !6, line: 60, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!85, !568}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !601, file: !6, line: 61, baseType: !622, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !568}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !569, file: !6, line: 419, baseType: !228, size: 64, offset: 1472)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !569, file: !6, line: 420, baseType: !228, size: 64, offset: 1536)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !569, file: !6, line: 421, baseType: !238, size: 64, offset: 1600)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !569, file: !6, line: 424, baseType: !629, size: 64, offset: 1664)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !569, file: !6, line: 425, baseType: !633, size: 64, offset: 1728)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !160, line: 20, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !155, line: 26, baseType: !85)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !569, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !569, file: !6, line: 435, baseType: !639, size: 256, offset: 1856)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !640, line: 66, size: 256, elements: !641)
!640 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!641 = !{!642, !651, !652, !657}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !639, file: !640, line: 67, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !644, line: 13, baseType: !645)
!644 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !157, line: 181, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 179, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !646, file: !157, line: 180, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !160, line: 22, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !155, line: 30, baseType: !541)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !639, file: !640, line: 68, baseType: !597, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !639, file: !640, line: 70, baseType: !653, size: 32, offset: 96)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !654, line: 15, size: 32, elements: !655)
!654 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !653, file: !654, line: 20, baseType: !215, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !639, file: !640, line: 72, baseType: !232, size: 128, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !569, file: !6, line: 437, baseType: !659, size: 64, offset: 2112)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !661, line: 69, size: 320, elements: !662)
!661 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!662 = !{!663, !664, !665, !685, !687, !691, !692}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !660, file: !661, line: 70, baseType: !228, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !660, file: !661, line: 71, baseType: !568, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !660, file: !661, line: 72, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !661, line: 47, size: 256, elements: !669)
!669 = !{!670, !671, !677, !681}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !661, line: 49, baseType: !7, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !668, file: !661, line: 51, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!85, !228, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !668, file: !661, line: 53, baseType: !678, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!85, !304, !675}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !668, file: !661, line: 55, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !153}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !660, file: !661, line: 73, baseType: !686, size: 16, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !660, file: !661, line: 74, baseType: !688, size: 8, offset: 208)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !160, line: 16, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !155, line: 20, baseType: !690)
!690 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !661, line: 75, baseType: !159, size: 8, offset: 216)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !661, line: 76, baseType: !693, size: 64, offset: 256)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !661, line: 76, size: 64, elements: !694)
!694 = !{!695, !696, !703}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !693, file: !661, line: 77, baseType: !153, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !693, file: !661, line: 78, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !661, line: 86, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !699, file: !661, line: 87, baseType: !7, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !699, file: !661, line: 88, baseType: !304, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !693, file: !661, line: 79, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !661, line: 92, size: 256, elements: !707)
!707 = !{!708, !709, !710, !712, !713}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !706, file: !661, line: 94, baseType: !7, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !706, file: !661, line: 95, baseType: !7, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !706, file: !661, line: 96, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !706, file: !661, line: 97, baseType: !666, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !706, file: !661, line: 98, baseType: !153, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !569, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !569, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !569, file: !6, line: 442, baseType: !629, size: 64, offset: 2240)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !569, file: !6, line: 443, baseType: !633, size: 64, offset: 2304)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !569, file: !6, line: 444, baseType: !189, size: 8, offset: 2368)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !569, file: !6, line: 451, baseType: !189, size: 8, offset: 2376)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !569, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !569, file: !6, line: 455, baseType: !722, size: 64, offset: 2432)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !724, line: 23, size: 96, elements: !725)
!724 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !723, file: !724, line: 24, baseType: !85, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !723, file: !724, line: 24, baseType: !85, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !723, file: !724, line: 24, baseType: !85, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !569, file: !6, line: 458, baseType: !730, size: 64, offset: 2496)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!85}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !569, file: !6, line: 460, baseType: !734, size: 4032, align: 512, offset: 2560)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 4032, elements: !758)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !736)
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !735, file: !6, line: 363, baseType: !153, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !735, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !735, file: !6, line: 367, baseType: !740, size: 448, offset: 128)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !740, file: !6, line: 320, baseType: !568, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !740, file: !6, line: 321, baseType: !744, size: 384, offset: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !745, line: 40, size: 384, elements: !746)
!745 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !745, line: 41, baseType: !748, size: 384, align: 64)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 384, align: 64, elements: !756)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !750, line: 5, size: 192, align: 64, elements: !751)
!750 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!751 = !{!752, !753, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !749, file: !750, line: 6, baseType: !169, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !749, file: !750, line: 7, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !749, file: !750, line: 8, baseType: !754, size: 64, offset: 128)
!756 = !{!757}
!757 = !DISubrange(count: 2)
!758 = !{!759}
!759 = !DISubrange(count: 7)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !569, file: !6, line: 463, baseType: !761, size: 192, offset: 6592)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !762, line: 8, size: 192, elements: !763)
!762 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!763 = !{!764, !765, !767}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !761, file: !762, line: 10, baseType: !7, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !761, file: !762, line: 11, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !761, file: !762, line: 12, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !770, line: 59, size: 48, elements: !771)
!770 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!771 = !{!772, !776, !777, !778, !779, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !769, file: !770, line: 60, baseType: !773, size: 16)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !160, line: 18, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !155, line: 23, baseType: !775)
!775 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !769, file: !770, line: 61, baseType: !773, size: 16, offset: 16)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !769, file: !770, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !769, file: !770, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !770, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !769, file: !770, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !569, file: !6, line: 465, baseType: !169, size: 64, offset: 6784)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !569, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !569, file: !6, line: 470, baseType: !232, size: 128, offset: 6912)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !569, file: !6, line: 471, baseType: !785, size: 64, offset: 7040)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !787, line: 33, size: 96, elements: !788)
!787 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!788 = !{!789, !790, !791, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !786, file: !787, line: 37, baseType: !85, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !786, file: !787, line: 43, baseType: !85, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !786, file: !787, line: 45, baseType: !164, size: 16, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !786, file: !787, line: 47, baseType: !164, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !569, file: !6, line: 476, baseType: !794, size: 64, offset: 7104)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !796)
!796 = !{!797, !813, !814, !815}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !795, file: !6, line: 379, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !800, line: 204, baseType: !801)
!800 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !800, line: 197, size: 192, elements: !802)
!802 = !{!803, !805, !806, !807, !809, !811}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !801, file: !800, line: 198, baseType: !804, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !800, line: 21, baseType: !154)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !801, file: !800, line: 199, baseType: !162, size: 8, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !801, file: !800, line: 200, baseType: !162, size: 8, offset: 40)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !801, file: !800, line: 201, baseType: !808, size: 16, offset: 48)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !800, line: 17, baseType: !163)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !801, file: !800, line: 202, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !800, line: 16, baseType: !452)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !801, file: !800, line: 203, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !800, line: 22, baseType: !452)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !795, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !795, file: !6, line: 381, baseType: !304, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !795, file: !6, line: 382, baseType: !304, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !569, file: !6, line: 477, baseType: !795, size: 256, offset: 7168)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !569, file: !6, line: 480, baseType: !818, size: 64, offset: 7424)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !569, file: !6, line: 483, baseType: !821, size: 64, offset: 7488)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !569, file: !6, line: 488, baseType: !304, size: 64, offset: 7552)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !569, file: !6, line: 492, baseType: !153, size: 64, offset: 7616)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !569, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !569, file: !6, line: 495, baseType: !153, size: 64, offset: 7744)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !569, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !569, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !569, file: !6, line: 500, baseType: !830, size: 64, offset: 7872)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !832, line: 45, baseType: !833)
!832 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !569, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !569, file: !6, line: 504, baseType: !836, size: 64, offset: 8000)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !839, line: 96, size: 192, elements: !840)
!839 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!840 = !{!841, !842, !923, !927}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !838, file: !839, line: 97, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !838, file: !839, line: 98, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !839, line: 24, size: 3072, elements: !845)
!845 = !{!846, !848, !849, !850, !851, !875, !876, !877, !878, !896, !908, !909, !920, !921, !922}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !844, file: !839, line: 26, baseType: !847, size: 128)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 128, elements: !756)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !844, file: !839, line: 27, baseType: !847, size: 128, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !844, file: !839, line: 28, baseType: !85, size: 32, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !844, file: !839, line: 31, baseType: !245, size: 32, align: 512, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !844, file: !839, line: 32, baseType: !852, size: 960, offset: 576)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !853, line: 206, size: 960, elements: !854)
!853 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!854 = !{!855, !864, !869, !871, !872, !874}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !852, file: !853, line: 207, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !157, line: 232, size: 128, align: 64, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !157, line: 233, baseType: !856, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !857, file: !157, line: 234, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !856}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !852, file: !853, line: 208, baseType: !865, size: 256, offset: 64)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 256, elements: !867)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!867 = !{!868}
!868 = !DISubrange(count: 4)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !852, file: !853, line: 209, baseType: !870, size: 256, offset: 320)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !867)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !852, file: !853, line: 213, baseType: !339, size: 64, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !852, file: !853, line: 215, baseType: !873, size: 256, offset: 640)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !867)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !853, line: 216, baseType: !159, size: 8, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !844, file: !839, line: 33, baseType: !169, size: 64, offset: 1536)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !844, file: !839, line: 34, baseType: !169, size: 64, offset: 1600)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !844, file: !839, line: 35, baseType: !189, size: 8, offset: 1664)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !844, file: !839, line: 36, baseType: !879, size: 320, offset: 1728)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !880, line: 11, size: 320, elements: !881)
!880 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!881 = !{!882, !889, !890, !895}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !879, file: !880, line: 16, baseType: !883, size: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !157, line: 198, size: 128, elements: !884)
!884 = !{!885, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !157, line: 199, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !883, file: !157, line: 199, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !879, file: !880, line: 17, baseType: !169, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !879, file: !880, line: 18, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !879, file: !880, line: 19, baseType: !448, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !844, file: !839, line: 37, baseType: !897, size: 256, offset: 2048)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !898, line: 98, size: 256, elements: !899)
!898 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !897, file: !898, line: 99, baseType: !643, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !897, file: !898, line: 100, baseType: !232, size: 128, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !897, file: !898, line: 101, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !898, line: 21, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !844, file: !839, line: 38, baseType: !857, size: 128, align: 64, offset: 2304)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !844, file: !839, line: 39, baseType: !910, size: 64, offset: 2432)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !839, line: 49, size: 768, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !911, file: !839, line: 50, baseType: !245, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !911, file: !839, line: 51, baseType: !870, size: 256, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !911, file: !839, line: 53, baseType: !870, size: 256, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !911, file: !839, line: 54, baseType: !169, size: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !911, file: !839, line: 55, baseType: !910, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !911, file: !839, line: 56, baseType: !85, size: 32, offset: 704)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !911, file: !839, line: 57, baseType: !85, size: 32, offset: 736)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !844, file: !839, line: 40, baseType: !169, size: 64, offset: 2496)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !844, file: !839, line: 42, baseType: !85, size: 32, offset: 2560)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !844, file: !839, line: 43, baseType: !837, size: 64, offset: 2624)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !838, file: !839, line: 99, baseType: !924, offset: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !925, line: 211, elements: !926)
!925 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!926 = !{}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !838, file: !839, line: 100, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !839, line: 63, size: 3008, elements: !930)
!930 = !{!931, !932, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !962}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !929, file: !839, line: 64, baseType: !910, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !929, file: !839, line: 65, baseType: !933, size: 192, offset: 64)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 192, elements: !305)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !929, file: !839, line: 67, baseType: !85, size: 32, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !929, file: !839, line: 68, baseType: !639, size: 256, offset: 320)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !929, file: !839, line: 69, baseType: !245, size: 32, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !929, file: !839, line: 70, baseType: !639, size: 256, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !929, file: !839, line: 71, baseType: !169, size: 64, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !929, file: !839, line: 72, baseType: !169, size: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !929, file: !839, line: 73, baseType: !169, size: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !929, file: !839, line: 74, baseType: !169, size: 64, offset: 1088)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !929, file: !839, line: 75, baseType: !169, size: 64, offset: 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !929, file: !839, line: 76, baseType: !169, size: 64, offset: 1216)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !929, file: !839, line: 77, baseType: !169, size: 64, offset: 1280)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !929, file: !839, line: 78, baseType: !169, size: 64, offset: 1344)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !929, file: !839, line: 79, baseType: !189, size: 8, offset: 1408)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !929, file: !839, line: 80, baseType: !169, size: 64, offset: 1472)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !929, file: !839, line: 81, baseType: !639, size: 256, offset: 1536)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !929, file: !839, line: 82, baseType: !588, size: 256, offset: 1792)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !929, file: !839, line: 84, baseType: !215, size: 32, offset: 2048)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !929, file: !839, line: 87, baseType: !169, size: 64, offset: 2112)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !929, file: !839, line: 88, baseType: !169, size: 64, offset: 2176)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !929, file: !839, line: 89, baseType: !954, size: 704, offset: 2240)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !898, line: 111, size: 704, elements: !955)
!955 = !{!956, !957, !958, !961}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !954, file: !898, line: 112, baseType: !897, size: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !954, file: !898, line: 113, baseType: !879, size: 320, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !954, file: !898, line: 116, baseType: !959, size: 64, offset: 576)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !898, line: 18, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !954, file: !898, line: 117, baseType: !85, size: 32, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !929, file: !839, line: 90, baseType: !837, size: 64, offset: 2944)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !569, file: !6, line: 515, baseType: !964, size: 64, offset: 8064)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !966, line: 117, size: 128, elements: !967)
!966 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !965, file: !966, line: 118, baseType: !635, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !965, file: !966, line: 119, baseType: !635, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !965, file: !966, line: 120, baseType: !339, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !569, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !569, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !569, file: !6, line: 520, baseType: !974, size: 64, offset: 8192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !569, file: !6, line: 523, baseType: !976, size: 64, offset: 8256)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !569, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !569, file: !6, line: 525, baseType: !981, size: 64, offset: 8384)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !569, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !569, file: !6, line: 533, baseType: !153, size: 64, offset: 8512)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !569, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !569, file: !6, line: 535, baseType: !988, size: 64, offset: 8640)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !569, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !569, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !569, file: !6, line: 540, baseType: !992, size: 64, offset: 8768)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !994, line: 32, size: 64, elements: !995)
!994 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !993, file: !994, line: 33, baseType: !635, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !993, file: !994, line: 34, baseType: !635, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !569, file: !6, line: 563, baseType: !232, size: 128, offset: 8832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !569, file: !6, line: 565, baseType: !232, size: 128, offset: 8960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !569, file: !6, line: 568, baseType: !1001, size: 64, offset: 9088)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !569, file: !6, line: 570, baseType: !215, size: 32, offset: 9152)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !14, line: 2382, baseType: !543, size: 64, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !544, file: !14, line: 2383, baseType: !1007, size: 64, offset: 512)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !157, line: 194, size: 64, elements: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1007, file: !157, line: 195, baseType: !886, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !544, file: !14, line: 2385, baseType: !1011, offset: 576)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !925, line: 206, elements: !926)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !544, file: !14, line: 2386, baseType: !1011, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !544, file: !14, line: 2387, baseType: !1011, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !544, file: !14, line: 2388, baseType: !1015, offset: 576)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, elements: !305)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !544, file: !14, line: 2390, baseType: !1011, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !544, file: !14, line: 2391, baseType: !1011, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !544, file: !14, line: 2392, baseType: !1011, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !544, file: !14, line: 2393, baseType: !1011, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !530, file: !14, line: 1197, baseType: !1021, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1024)
!1024 = !{!1025, !1029, !1033, !1034, !1038, !1044, !1048, !1049, !1050, !1054, !1058, !1062, !1063, !1064, !1070, !1074, !1075, !1793, !1794, !1795, !1796, !1800, !1804, !1851, !1866, !1867}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1023, file: !14, line: 2058, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!379, !529}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1023, file: !14, line: 2059, baseType: !1030, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !379}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1023, file: !14, line: 2060, baseType: !1030, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1023, file: !14, line: 2062, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !379, !85}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1023, file: !14, line: 2063, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!85, !379, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1023, file: !14, line: 2064, baseType: !1045, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!85, !379}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1023, file: !14, line: 2065, baseType: !1030, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1023, file: !14, line: 2066, baseType: !564, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1023, file: !14, line: 2067, baseType: !1051, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!85, !529, !85}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1023, file: !14, line: 2068, baseType: !1055, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!85, !529, !13}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1023, file: !14, line: 2069, baseType: !1059, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!85, !529}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1023, file: !14, line: 2070, baseType: !1055, size: 64, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1023, file: !14, line: 2071, baseType: !1059, size: 64, offset: 768)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1023, file: !14, line: 2072, baseType: !1065, size: 64, offset: 832)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!85, !414, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1023, file: !14, line: 2073, baseType: !1071, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!85, !529, !766, !304}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1023, file: !14, line: 2074, baseType: !564, size: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1023, file: !14, line: 2076, baseType: !1076, size: 64, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!85, !1079, !414}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1081, line: 17, size: 960, elements: !1082)
!1081 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1113, !1114, !1792}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1080, file: !1081, line: 18, baseType: !304, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1080, file: !1081, line: 19, baseType: !165, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1080, file: !1081, line: 20, baseType: !165, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1080, file: !1081, line: 21, baseType: !165, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1080, file: !1081, line: 22, baseType: !165, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1080, file: !1081, line: 23, baseType: !539, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1080, file: !1081, line: 24, baseType: !539, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1080, file: !1081, line: 25, baseType: !639, size: 256, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1080, file: !1081, line: 26, baseType: !1092, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1081, line: 32, size: 256, elements: !1095)
!1095 = !{!1096, !1101, !1105, !1109}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1094, file: !1081, line: 33, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!153, !1079, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1094, file: !1081, line: 34, baseType: !1102, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1079, !153}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !1081, line: 35, baseType: !1106, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!153, !1079, !153, !1100}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1094, file: !1081, line: 36, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!85, !1079, !153}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1080, file: !1081, line: 27, baseType: !85, size: 32, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1080, file: !1081, line: 28, baseType: !1115, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1118)
!1118 = !{!1119, !1130, !1131, !1133, !1134, !1135, !1136, !1137, !1193, !1393, !1402, !1408, !1409, !1782, !1783, !1784, !1785, !1787, !1788, !1791}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !14, line: 995, baseType: !1120, size: 128)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !14, line: 995, size: 128, elements: !1121)
!1121 = !{!1122, !1128, !1129}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1120, file: !14, line: 996, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1124, line: 60, size: 64, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1123, file: !1124, line: 61, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1120, file: !14, line: 997, baseType: !857, size: 128, align: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1120, file: !14, line: 998, baseType: !7, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1117, file: !14, line: 1005, baseType: !245, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1117, file: !14, line: 1006, baseType: !1132, size: 32, offset: 160)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !157, line: 156, baseType: !7)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1117, file: !14, line: 1007, baseType: !643, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1117, file: !14, line: 1008, baseType: !639, size: 256, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1117, file: !14, line: 1009, baseType: !539, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1117, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1117, file: !14, line: 1011, baseType: !1138, size: 256, offset: 640)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1139)
!1139 = !{!1140, !1161, !1189, !1190, !1191, !1192}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1138, file: !14, line: 949, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1142, line: 34, baseType: !1143)
!1142 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1142, line: 25, size: 64, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1143, file: !1142, line: 26, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1147, line: 27, baseType: !1148)
!1147 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1147, line: 13, size: 64, elements: !1149)
!1149 = !{!1150, !1160}
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !1147, line: 14, baseType: !1151, size: 32)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !1147, line: 14, size: 32, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1151, file: !1147, line: 15, baseType: !215, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1147, line: 16, baseType: !1155, size: 32)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1151, file: !1147, line: 16, size: 32, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1155, file: !1147, line: 18, baseType: !159, size: 8)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1155, file: !1147, line: 19, baseType: !1159, size: 24, offset: 8)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, elements: !305)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1148, file: !1147, line: 26, baseType: !257, size: 32, offset: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1138, file: !14, line: 950, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1170, !1171, !1178, !1179}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1163, file: !19, line: 61, baseType: !210, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1163, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1163, file: !19, line: 63, baseType: !245, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1163, file: !19, line: 65, baseType: !1169, size: 256, offset: 128)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 256, elements: !867)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1163, file: !19, line: 66, baseType: !1007, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1163, file: !19, line: 68, baseType: !1172, size: 192, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1173, line: 41, baseType: !1174)
!1173 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1173, line: 37, size: 192, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1174, file: !1173, line: 38, baseType: !245, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1174, file: !1173, line: 39, baseType: !232, size: 128, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1163, file: !19, line: 69, baseType: !857, size: 128, align: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1163, file: !19, line: 70, baseType: !1180, offset: 768)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, elements: !1187)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1181, file: !19, line: 55, baseType: !85, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1181, file: !19, line: 56, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1187 = !{!1188}
!1188 = !DISubrange(count: -1)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1138, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1138, file: !14, line: 952, baseType: !385, size: 32, offset: 160)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1138, file: !14, line: 952, baseType: !385, size: 32, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1138, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1117, file: !14, line: 1012, baseType: !1194, size: 64, offset: 896)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1197, line: 110, size: 1472, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1215, !1216, !1217, !1218, !1219, !1220, !1338, !1339, !1340, !1341, !1342, !1373, !1376, !1380, !1388}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1196, file: !1197, line: 111, baseType: !643, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1196, file: !1197, line: 112, baseType: !385, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1196, file: !1197, line: 113, baseType: !394, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1196, file: !1197, line: 114, baseType: !385, size: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1196, file: !1197, line: 115, baseType: !394, size: 32, offset: 160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1196, file: !1197, line: 116, baseType: !385, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1196, file: !1197, line: 117, baseType: !394, size: 32, offset: 224)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1196, file: !1197, line: 118, baseType: !385, size: 32, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1196, file: !1197, line: 119, baseType: !394, size: 32, offset: 288)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1196, file: !1197, line: 120, baseType: !7, size: 32, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1196, file: !1197, line: 121, baseType: !1210, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1211, line: 24, baseType: !1212)
!1211 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 24, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1212, file: !1211, line: 24, baseType: !451, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1196, file: !1197, line: 122, baseType: !1210, size: 64, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1196, file: !1197, line: 123, baseType: !1210, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1196, file: !1197, line: 124, baseType: !1210, size: 64, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1196, file: !1197, line: 125, baseType: !1210, size: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1196, file: !1197, line: 127, baseType: !162, size: 8, offset: 704)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1196, file: !1197, line: 129, baseType: !1221, size: 64, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1223, line: 195, size: 1728, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1224 = !{!1225, !1226, !1229, !1234, !1243, !1246, !1247, !1254, !1255, !1256, !1257, !1260, !1261, !1262, !1263, !1264, !1302, !1323}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1222, file: !1223, line: 196, baseType: !210, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1222, file: !1223, line: 197, baseType: !1227, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1223, line: 28, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !157, line: 104, baseType: !635)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1223, line: 198, baseType: !1230, size: 192, offset: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !1223, line: 198, size: 192, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1230, file: !1223, line: 199, baseType: !232, size: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1230, file: !1223, line: 200, baseType: !749, size: 192, align: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1222, file: !1223, line: 205, baseType: !1235, size: 320, offset: 256)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1236, line: 48, size: 320, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1237 = !{!1238, !1239, !1240, !1241, !1242}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1235, file: !1236, line: 49, baseType: !643, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1235, file: !1236, line: 55, baseType: !643, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1235, file: !1236, line: 57, baseType: !653, size: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1235, file: !1236, line: 59, baseType: !597, size: 32, offset: 160)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1235, file: !1236, line: 60, baseType: !232, size: 128, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1222, file: !1223, line: 206, baseType: !1244, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1223, line: 206, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1222, file: !1223, line: 207, baseType: !153, size: 64, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1223, line: 208, baseType: !1248, size: 64, offset: 704)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !1223, line: 208, size: 64, elements: !1249)
!1249 = !{!1250, !1253}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1248, file: !1223, line: 209, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1252, line: 8, baseType: !650)
!1252 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1248, file: !1223, line: 210, baseType: !1251, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1222, file: !1223, line: 212, baseType: !1251, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1222, file: !1223, line: 213, baseType: !385, size: 32, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1222, file: !1223, line: 214, baseType: !394, size: 32, offset: 864)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1222, file: !1223, line: 215, baseType: !1258, size: 32, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1223, line: 31, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !157, line: 110, baseType: !448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1222, file: !1223, line: 216, baseType: !164, size: 16, offset: 928)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1222, file: !1223, line: 217, baseType: !164, size: 16, offset: 944)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1222, file: !1223, line: 221, baseType: !775, size: 16, offset: 960)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1222, file: !1223, line: 228, baseType: !169, size: 64, offset: 1024)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1223, line: 245, baseType: !1265, size: 320, offset: 1088)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !1223, line: 245, size: 320, elements: !1266)
!1266 = !{!1267, !1294}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1265, file: !1223, line: 246, baseType: !1268, size: 320)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1223, line: 114, size: 320, elements: !1269)
!1269 = !{!1270, !1271, !1283, !1286, !1293}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1268, file: !1223, line: 116, baseType: !169, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1223, line: 117, baseType: !1272, size: 64, offset: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !1223, line: 117, size: 64, elements: !1273)
!1273 = !{!1274, !1282}
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !1223, line: 118, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !1223, line: 118, size: 64, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1275, file: !1223, line: 120, baseType: !274, size: 16)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1275, file: !1223, line: 121, baseType: !1279, size: 48, offset: 16)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 48, elements: !1280)
!1280 = !{!1281}
!1281 = !DISubrange(count: 6)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1272, file: !1223, line: 127, baseType: !169, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1268, file: !1223, line: 129, baseType: !1284, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1223, line: 102, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1268, file: !1223, line: 130, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1223, line: 108, size: 192, elements: !1289)
!1289 = !{!1290, !1291, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1288, file: !1223, line: 109, baseType: !857, size: 128, align: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1288, file: !1223, line: 110, baseType: !210, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1288, file: !1223, line: 111, baseType: !189, size: 8, offset: 160)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1268, file: !1223, line: 131, baseType: !228, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !1223, line: 247, baseType: !1295, size: 320)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !1223, line: 247, size: 320, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1295, file: !1223, line: 248, baseType: !169, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1295, file: !1223, line: 249, baseType: !169, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1295, file: !1223, line: 250, baseType: !1284, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1295, file: !1223, line: 251, baseType: !1287, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1295, file: !1223, line: 252, baseType: !304, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1223, line: 260, baseType: !1303, size: 256, offset: 1408)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !1223, line: 260, size: 256, elements: !1304)
!1304 = !{!1305, !1311}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1303, file: !1223, line: 261, baseType: !1306, size: 256)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1223, line: 134, size: 256, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1306, file: !1223, line: 135, baseType: !153, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1306, file: !1223, line: 136, baseType: !1310, size: 256)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !867)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !1223, line: 262, baseType: !1312, size: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1223, line: 262, size: 256, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1312, file: !1223, line: 264, baseType: !232, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1312, file: !1223, line: 265, baseType: !1316, size: 128, offset: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1317, line: 22, size: 128, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1318 = !{!1319, !1322}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1316, file: !1317, line: 23, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1317, line: 23, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1316, file: !1317, line: 24, baseType: !169, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1222, file: !1223, line: 280, baseType: !1324, size: 64, offset: 1664)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1223, line: 176, size: 192, elements: !1326)
!1326 = !{!1327, !1336, !1337}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1325, file: !1223, line: 177, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1223, line: 171, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!85, !1221, !1332, !1334, !1221}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1325, file: !1223, line: 178, baseType: !1221, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1325, file: !1223, line: 179, baseType: !1284, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1196, file: !1197, line: 130, baseType: !1221, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1196, file: !1197, line: 131, baseType: !1221, size: 64, offset: 896)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1196, file: !1197, line: 132, baseType: !1221, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1196, file: !1197, line: 135, baseType: !153, size: 64, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1196, file: !1197, line: 137, baseType: !1343, size: 64, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1345, line: 14, size: 1088, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1346 = !{!1347, !1348, !1357, !1358, !1359, !1360, !1361, !1362}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1344, file: !1345, line: 15, baseType: !210, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1344, file: !1345, line: 17, baseType: !1349, size: 320, offset: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1350, line: 22, size: 320, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1351 = !{!1352, !1353, !1354, !1355}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !1350, line: 23, baseType: !597, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1349, file: !1350, line: 24, baseType: !649, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1349, file: !1350, line: 26, baseType: !232, size: 128, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1349, file: !1350, line: 28, baseType: !1356, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1344, file: !1345, line: 19, baseType: !169, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1344, file: !1345, line: 20, baseType: !643, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1344, file: !1345, line: 23, baseType: !883, size: 128, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1344, file: !1345, line: 24, baseType: !385, size: 32, offset: 640)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1344, file: !1345, line: 29, baseType: !643, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1344, file: !1345, line: 36, baseType: !1363, size: 320, offset: 768)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1364, line: 15, size: 320, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1363, file: !1364, line: 16, baseType: !597, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1363, file: !1364, line: 18, baseType: !85, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1363, file: !1364, line: 19, baseType: !85, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1363, file: !1364, line: 20, baseType: !85, size: 32, offset: 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1363, file: !1364, line: 21, baseType: !85, size: 32, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1363, file: !1364, line: 22, baseType: !169, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1363, file: !1364, line: 23, baseType: !169, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1196, file: !1197, line: 138, baseType: !1374, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !386, line: 18, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1196, file: !1197, line: 139, baseType: !1377, size: 64, offset: 1216)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1379, line: 16, flags: DIFlagFwdDecl)
!1379 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1196, file: !1197, line: 140, baseType: !1381, size: 64, offset: 1280)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1197, line: 25, size: 64, elements: !1383)
!1383 = !{!1384, !1385, !1386}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1382, file: !1197, line: 26, baseType: !215, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1382, file: !1197, line: 27, baseType: !85, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1382, file: !1197, line: 28, baseType: !1387, offset: 64)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, elements: !1187)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1197, line: 142, baseType: !1389, size: 128, offset: 1344)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !1197, line: 142, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1389, file: !1197, line: 143, baseType: !85, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1389, file: !1197, line: 144, baseType: !857, size: 128, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1117, file: !14, line: 1013, baseType: !1394, size: 256, offset: 960)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1394, file: !14, line: 971, baseType: !169, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1394, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1394, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1394, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1394, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1394, file: !14, line: 976, baseType: !539, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1117, file: !14, line: 1014, baseType: !1403, size: 128, offset: 1216)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1404, line: 8, size: 128, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1403, file: !1404, line: 9, baseType: !523, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1403, file: !1404, line: 10, baseType: !414, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1117, file: !14, line: 1015, baseType: !379, size: 64, offset: 1344)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1117, file: !14, line: 1016, baseType: !1410, size: 64, offset: 1408)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1413)
!1413 = !{!1414, !1415, !1420, !1424, !1428, !1457, !1458, !1464, !1477, !1484, !1488, !1489, !1703, !1704, !1708, !1713, !1714, !1718, !1722, !1728, !1729, !1733, !1734, !1741, !1745, !1749, !1755, !1759, !1763, !1767, !1771, !1772, !1778}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1412, file: !14, line: 1915, baseType: !568, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1412, file: !14, line: 1916, baseType: !1416, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!539, !1419, !539, !85}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1412, file: !14, line: 1917, baseType: !1421, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!336, !1419, !304, !165, !1100}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1412, file: !14, line: 1918, baseType: !1425, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!336, !1419, !228, !165, !1100}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1412, file: !14, line: 1919, baseType: !1429, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!336, !1432, !1454}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1441, !1442, !1443, !1444}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1433, file: !14, line: 374, baseType: !1419, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1433, file: !14, line: 375, baseType: !539, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1433, file: !14, line: 376, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1432, !339}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1433, file: !14, line: 377, baseType: !153, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1433, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1433, file: !14, line: 379, baseType: !274, size: 16, offset: 288)
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !14, line: 380, baseType: !1445, size: 64, offset: 320)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !14, line: 380, size: 64, elements: !1446)
!1446 = !{!1447, !1450}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1445, file: !14, line: 386, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1445, file: !14, line: 395, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!336, !153}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1456, line: 17, flags: DIFlagFwdDecl)
!1456 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1412, file: !14, line: 1920, baseType: !1429, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1412, file: !14, line: 1921, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!85, !1432, !1462, !7}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1412, file: !14, line: 1923, baseType: !1465, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!85, !1419, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1470)
!1470 = !{!1471, !1476}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1469, file: !14, line: 1859, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!189, !1468, !228, !85, !539, !451, !7}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1469, file: !14, line: 1860, baseType: !539, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1412, file: !14, line: 1924, baseType: !1478, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1481, !1419, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !171, line: 59, baseType: !7)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !554, line: 31, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1412, file: !14, line: 1925, baseType: !1485, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!339, !1419, !7, !169}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1412, file: !14, line: 1926, baseType: !1485, size: 64, offset: 640)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1412, file: !14, line: 1927, baseType: !1490, size: 64, offset: 704)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!85, !1419, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1495, line: 625, size: 1344, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1496 = !{!1497, !1506, !1661, !1667, !1674, !1675, !1680, !1681, !1686, !1687, !1690, !1694, !1695, !1696, !1697, !1698, !1701}
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !1495, line: 628, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1494, file: !1495, line: 628, size: 128, elements: !1499)
!1499 = !{!1500, !1505}
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1495, line: 629, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !1495, line: 629, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1501, file: !1495, line: 631, baseType: !169, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1501, file: !1495, line: 632, baseType: !169, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1498, file: !1495, line: 635, baseType: !857, size: 128, align: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1494, file: !1495, line: 639, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1495, line: 733, size: 10240, elements: !1509)
!1509 = !{!1510, !1659}
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1495, line: 734, baseType: !1511, size: 10240)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !1495, line: 734, size: 10240, elements: !1512)
!1512 = !{!1513, !1517, !1530, !1534, !1535, !1536, !1537, !1538, !1539, !1548, !1549, !1550, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1589, !1591, !1594, !1639, !1640, !1641, !1644, !1645, !1646, !1649, !1650, !1651, !1657, !1658}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1495, line: 739, baseType: !1514, size: 512, align: 512)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !1495, line: 739, size: 512, align: 512, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1514, file: !1495, line: 747, baseType: !215, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1511, file: !1495, line: 750, baseType: !1518, size: 128, offset: 512)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1519, line: 218, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1520 = !{!1521, !1528, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1519, line: 219, baseType: !1522, size: 32)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !1519, line: 219, size: 32, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1522, file: !1519, line: 220, baseType: !245, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1522, file: !1519, line: 221, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1519, line: 197, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1519, line: 197, elements: !926)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1518, file: !1519, line: 223, baseType: !7, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1518, file: !1519, line: 224, baseType: !153, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1511, file: !1495, line: 752, baseType: !1531, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!169, !1419, !169, !169, !169, !169}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1511, file: !1495, line: 756, baseType: !169, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1511, file: !1495, line: 757, baseType: !169, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1511, file: !1495, line: 760, baseType: !169, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1511, file: !1495, line: 761, baseType: !169, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1511, file: !1495, line: 763, baseType: !169, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1511, file: !1495, line: 764, baseType: !1540, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1542, line: 299, baseType: !1543)
!1542 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1542, line: 299, size: 64, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1543, file: !1542, line: 299, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1547, line: 18, baseType: !169)
!1547 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1511, file: !1495, line: 773, baseType: !215, size: 32, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1511, file: !1495, line: 785, baseType: !215, size: 32, offset: 1120)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1511, file: !1495, line: 795, baseType: !1551, size: 64, offset: 1152)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1495, line: 726, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1552, file: !1495, line: 727, baseType: !451, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1552, file: !1495, line: 728, baseType: !85, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1511, file: !1495, line: 801, baseType: !169, size: 64, offset: 1216)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1511, file: !1495, line: 804, baseType: !643, size: 64, offset: 1280)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1511, file: !1495, line: 806, baseType: !85, size: 32, offset: 1344)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1511, file: !1495, line: 808, baseType: !245, size: 32, offset: 1376)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1511, file: !1495, line: 823, baseType: !1235, size: 320, offset: 1408)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1511, file: !1495, line: 825, baseType: !232, size: 128, offset: 1728)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1511, file: !1495, line: 845, baseType: !85, size: 32, offset: 1856)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1511, file: !1495, line: 849, baseType: !169, size: 64, offset: 1920)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1511, file: !1495, line: 850, baseType: !169, size: 64, offset: 1984)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1511, file: !1495, line: 852, baseType: !169, size: 64, offset: 2048)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1511, file: !1495, line: 853, baseType: !169, size: 64, offset: 2112)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1511, file: !1495, line: 854, baseType: !645, size: 64, offset: 2176)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1511, file: !1495, line: 855, baseType: !169, size: 64, offset: 2240)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1511, file: !1495, line: 856, baseType: !169, size: 64, offset: 2304)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1511, file: !1495, line: 857, baseType: !169, size: 64, offset: 2368)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1511, file: !1495, line: 858, baseType: !169, size: 64, offset: 2432)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1511, file: !1495, line: 865, baseType: !425, size: 32, offset: 2496)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1511, file: !1495, line: 867, baseType: !245, size: 32, offset: 2528)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1511, file: !1495, line: 869, baseType: !169, size: 64, offset: 2560)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1511, file: !1495, line: 869, baseType: !169, size: 64, offset: 2624)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1511, file: !1495, line: 869, baseType: !169, size: 64, offset: 2688)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1511, file: !1495, line: 869, baseType: !169, size: 64, offset: 2752)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1511, file: !1495, line: 870, baseType: !169, size: 64, offset: 2816)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1511, file: !1495, line: 870, baseType: !169, size: 64, offset: 2880)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1511, file: !1495, line: 870, baseType: !169, size: 64, offset: 2944)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1511, file: !1495, line: 871, baseType: !169, size: 64, offset: 3008)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1511, file: !1495, line: 871, baseType: !169, size: 64, offset: 3072)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1511, file: !1495, line: 871, baseType: !169, size: 64, offset: 3136)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1511, file: !1495, line: 871, baseType: !169, size: 64, offset: 3200)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1511, file: !1495, line: 873, baseType: !1586, size: 3328, offset: 3264)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 3328, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 52)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1511, file: !1495, line: 875, baseType: !1590, size: 1280, offset: 6592)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 1280, elements: !867)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1511, file: !1495, line: 877, baseType: !1592, size: 64, offset: 7872)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1495, line: 877, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1511, file: !1495, line: 880, baseType: !1595, size: 1088, offset: 7936)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1596, line: 72, baseType: !1597)
!1596 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1596, line: 23, size: 1088, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1606, !1607, !1608, !1609, !1636, !1637, !1638}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1597, file: !1596, line: 28, baseType: !451, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1597, file: !1596, line: 38, baseType: !645, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1597, file: !1596, line: 40, baseType: !169, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1597, file: !1596, line: 43, baseType: !1235, size: 320, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1597, file: !1596, line: 44, baseType: !1604, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1596, line: 44, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1597, file: !1596, line: 48, baseType: !169, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1597, file: !1596, line: 59, baseType: !639, size: 256, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1597, file: !1596, line: 60, baseType: !153, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1597, file: !1596, line: 61, baseType: !1610, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1613, line: 13, size: 1216, elements: !1614)
!1613 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1612, file: !1613, line: 14, baseType: !153, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1612, file: !1613, line: 15, baseType: !169, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1612, file: !1613, line: 17, baseType: !169, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1612, file: !1613, line: 17, baseType: !169, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1612, file: !1613, line: 18, baseType: !169, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1612, file: !1613, line: 18, baseType: !169, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1612, file: !1613, line: 19, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1612, file: !1613, line: 21, baseType: !339, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1612, file: !1613, line: 23, baseType: !339, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1612, file: !1613, line: 24, baseType: !339, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1612, file: !1613, line: 25, baseType: !339, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1612, file: !1613, line: 26, baseType: !339, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1612, file: !1613, line: 27, baseType: !339, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1612, file: !1613, line: 28, baseType: !339, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1612, file: !1613, line: 29, baseType: !339, size: 64, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1612, file: !1613, line: 30, baseType: !339, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1612, file: !1613, line: 31, baseType: !339, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1612, file: !1613, line: 32, baseType: !339, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1612, file: !1613, line: 33, baseType: !339, size: 64, offset: 1152)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1597, file: !1596, line: 63, baseType: !215, size: 32, offset: 1024)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1597, file: !1596, line: 69, baseType: !274, size: 16, offset: 1056)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1597, file: !1596, line: 70, baseType: !773, size: 16, offset: 1072)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !1495, line: 882, baseType: !169, size: 64, offset: 9024)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1511, file: !1495, line: 885, baseType: !245, size: 32, offset: 9088)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1511, file: !1495, line: 886, baseType: !1642, size: 64, offset: 9152)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1495, line: 732, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1511, file: !1495, line: 901, baseType: !1374, size: 64, offset: 9216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1511, file: !1495, line: 904, baseType: !1419, size: 64, offset: 9280)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1511, file: !1495, line: 906, baseType: !1647, size: 64, offset: 9344)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1495, line: 906, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1511, file: !1495, line: 930, baseType: !215, size: 32, offset: 9408)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1511, file: !1495, line: 933, baseType: !215, size: 32, offset: 9440)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1511, file: !1495, line: 935, baseType: !1652, size: 64, offset: 9472)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1652, file: !44, line: 104, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1511, file: !1495, line: 940, baseType: !643, size: 64, offset: 9536)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1511, file: !1495, line: 942, baseType: !897, size: 256, offset: 9600)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1508, file: !1495, line: 986, baseType: !1660, offset: 10240)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, elements: !1187)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1494, file: !1495, line: 640, baseType: !1662, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1542, line: 297, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1542, line: 297, size: 64, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1663, file: !1542, line: 297, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1547, line: 19, baseType: !169)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !1495, line: 646, baseType: !1668, size: 64, offset: 256)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1494, file: !1495, line: 646, size: 64, elements: !1669)
!1669 = !{!1670, !1673}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1668, file: !1495, line: 647, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1495, line: 542, baseType: !169)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1668, file: !1495, line: 648, baseType: !1672, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1494, file: !1495, line: 666, baseType: !85, size: 32, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1494, file: !1495, line: 667, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1495, line: 579, size: 320, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1677, file: !1495, line: 580, baseType: !1235, size: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1494, file: !1495, line: 670, baseType: !189, size: 8, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1494, file: !1495, line: 681, baseType: !1682, size: 256, offset: 512)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1494, file: !1495, line: 678, size: 256, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1682, file: !1495, line: 679, baseType: !749, size: 192, align: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1682, file: !1495, line: 680, baseType: !169, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1494, file: !1495, line: 689, baseType: !232, size: 128, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1494, file: !1495, line: 691, baseType: !1688, size: 64, offset: 896)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1495, line: 691, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1494, file: !1495, line: 694, baseType: !1691, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1495, line: 694, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1494, file: !1495, line: 697, baseType: !169, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1494, file: !1495, line: 699, baseType: !1419, size: 64, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1494, file: !1495, line: 700, baseType: !153, size: 64, offset: 1152)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1494, file: !1495, line: 711, baseType: !643, size: 64, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1494, file: !1495, line: 717, baseType: !1699, size: 64, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1495, line: 717, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1494, file: !1495, line: 722, baseType: !1702, offset: 1344)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1495, line: 570, elements: !926)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1412, file: !14, line: 1928, baseType: !169, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1412, file: !14, line: 1929, baseType: !1705, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!85, !379, !1419}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1412, file: !14, line: 1930, baseType: !1709, size: 64, offset: 896)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!85, !1419, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !153)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1412, file: !14, line: 1931, baseType: !1705, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1412, file: !14, line: 1932, baseType: !1715, size: 64, offset: 1024)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!85, !1419, !539, !539, !85}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1412, file: !14, line: 1933, baseType: !1719, size: 64, offset: 1088)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!85, !85, !1419, !85}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !14, line: 1934, baseType: !1723, size: 64, offset: 1152)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!85, !1419, !85, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1412, file: !14, line: 1935, baseType: !1531, size: 64, offset: 1216)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1412, file: !14, line: 1936, baseType: !1730, size: 64, offset: 1280)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!85, !85}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1412, file: !14, line: 1937, baseType: !1723, size: 64, offset: 1344)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1412, file: !14, line: 1938, baseType: !1735, size: 64, offset: 1408)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!336, !1738, !1419, !1100, !165, !7}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1740, line: 59, flags: DIFlagFwdDecl)
!1740 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1412, file: !14, line: 1939, baseType: !1742, size: 64, offset: 1472)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!336, !1419, !1100, !1738, !165, !7}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1412, file: !14, line: 1940, baseType: !1746, size: 64, offset: 1536)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1419}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1412, file: !14, line: 1941, baseType: !1750, size: 64, offset: 1600)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!85, !1419, !85, !1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1412, file: !14, line: 1942, baseType: !1756, size: 64, offset: 1664)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!339, !1419, !85, !539, !539}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1412, file: !14, line: 1944, baseType: !1760, size: 64, offset: 1728)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1079, !1419}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1412, file: !14, line: 1948, baseType: !1764, size: 64, offset: 1792)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!336, !1419, !539, !1419, !539, !165, !7}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1412, file: !14, line: 1950, baseType: !1768, size: 64, offset: 1856)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!539, !1419, !539, !1419, !539, !539, !7}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1412, file: !14, line: 1953, baseType: !1715, size: 64, offset: 1920)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1412, file: !14, line: 1954, baseType: !1773, size: 64, offset: 1984)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!85, !1776, !7}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1412, file: !14, line: 1955, baseType: !1779, size: 64, offset: 2048)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!85, !1776, !1462, !7}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1117, file: !14, line: 1018, baseType: !451, size: 64, offset: 1472)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1117, file: !14, line: 1020, baseType: !153, size: 64, offset: 1536)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1117, file: !14, line: 1023, baseType: !153, size: 64, offset: 1600)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1117, file: !14, line: 1027, baseType: !1786, size: 64, offset: 1664)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1117, file: !14, line: 1029, baseType: !375, size: 64, offset: 1728)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1117, file: !14, line: 1030, baseType: !1789, size: 32, offset: 1792)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1790, line: 8, baseType: !448)
!1790 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1117, file: !14, line: 1031, baseType: !1789, size: 32, offset: 1824)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1080, file: !1081, line: 29, baseType: !153, size: 64, offset: 896)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1023, file: !14, line: 2077, baseType: !1076, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1023, file: !14, line: 2078, baseType: !1076, size: 64, offset: 1152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1023, file: !14, line: 2079, baseType: !1076, size: 64, offset: 1216)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1023, file: !14, line: 2081, baseType: !1797, size: 64, offset: 1280)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!336, !529, !85, !304, !165, !539}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1023, file: !14, line: 2082, baseType: !1801, size: 64, offset: 1344)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!336, !529, !85, !228, !165, !539}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1023, file: !14, line: 2083, baseType: !1805, size: 64, offset: 1408)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!1808, !379}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1811)
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1836, !1837, !1838}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1810, file: !27, line: 297, baseType: !883, size: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1810, file: !27, line: 298, baseType: !232, size: 128, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1810, file: !27, line: 299, baseType: !232, size: 128, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1810, file: !27, line: 300, baseType: !232, size: 128, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1810, file: !27, line: 301, baseType: !639, size: 256, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1810, file: !27, line: 302, baseType: !245, size: 32, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1810, file: !27, line: 303, baseType: !215, size: 32, offset: 800)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1810, file: !27, line: 304, baseType: !529, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1810, file: !27, line: 305, baseType: !1821, size: 64, offset: 896)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1822)
!1822 = !{!1823, !1835}
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !27, line: 69, baseType: !1824, size: 32)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !27, line: 69, size: 32, elements: !1825)
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1824, file: !27, line: 70, baseType: !385, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1824, file: !27, line: 71, baseType: !394, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1824, file: !27, line: 72, baseType: !1829, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1830, line: 24, baseType: !1831)
!1830 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 22, size: 32, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1831, file: !1830, line: 23, baseType: !1834, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1830, line: 20, baseType: !391)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1810, file: !27, line: 306, baseType: !539, size: 64, offset: 960)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1810, file: !27, line: 307, baseType: !169, size: 64, offset: 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1810, file: !27, line: 308, baseType: !1839, size: 576, offset: 1088)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1840)
!1840 = !{!1841, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1839, file: !27, line: 206, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !541)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1839, file: !27, line: 207, baseType: !1842, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1839, file: !27, line: 208, baseType: !1842, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1839, file: !27, line: 209, baseType: !1842, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1839, file: !27, line: 210, baseType: !1842, size: 64, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1839, file: !27, line: 211, baseType: !1842, size: 64, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1839, file: !27, line: 212, baseType: !1842, size: 64, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1839, file: !27, line: 213, baseType: !1251, size: 64, offset: 448)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1839, file: !27, line: 214, baseType: !1251, size: 64, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1023, file: !14, line: 2085, baseType: !1852, size: 64, offset: 1472)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!339, !529, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1857, line: 15, size: 256, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1858 = !{!1859, !1860, !1861, !1862, !1863}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1856, file: !1857, line: 16, baseType: !156, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1856, file: !1857, line: 19, baseType: !85, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1856, file: !1857, line: 26, baseType: !169, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1856, file: !1857, line: 33, baseType: !169, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1856, file: !1857, line: 36, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1495, line: 33, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1023, file: !14, line: 2087, baseType: !1852, size: 64, offset: 1536)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1023, file: !14, line: 2089, baseType: !564, size: 64, offset: 1600)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !530, file: !14, line: 1198, baseType: !1869, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1872)
!1872 = !{!1873, !1877, !1881, !1885, !1886, !1887, !1888, !1889, !1894, !1899, !1903}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1871, file: !27, line: 325, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!85, !1809}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1871, file: !27, line: 326, baseType: !1878, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1809, !529, !85}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1871, file: !27, line: 327, baseType: !1882, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1809}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1871, file: !27, line: 328, baseType: !1874, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1871, file: !27, line: 329, baseType: !1874, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1871, file: !27, line: 330, baseType: !1874, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1871, file: !27, line: 331, baseType: !1051, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1871, file: !27, line: 334, baseType: !1890, size: 64, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1893, !379}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1871, file: !27, line: 335, baseType: !1895, size: 64, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!85, !379, !1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1871, file: !27, line: 337, baseType: !1900, size: 64, offset: 576)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!85, !379, !1893}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1871, file: !27, line: 339, baseType: !1904, size: 64, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!85, !529, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !530, file: !14, line: 1199, baseType: !1909, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1912)
!1912 = !{!1913, !1919, !1920, !1924, !1925, !1926, !1941, !1964, !1968, !1969, !1992}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1911, file: !27, line: 431, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!85, !529, !85, !85, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1911, file: !27, line: 432, baseType: !1051, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1911, file: !27, line: 433, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!85, !529, !7}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1911, file: !27, line: 434, baseType: !1921, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1911, file: !27, line: 435, baseType: !1051, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1911, file: !27, line: 436, baseType: !1927, size: 64, offset: 320)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!85, !529, !85, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1932)
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1931, file: !27, line: 418, baseType: !85, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1931, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1931, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1931, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1931, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1931, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1931, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1931, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1911, file: !27, line: 437, baseType: !1942, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!85, !529, !1821, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1946, file: !27, line: 346, baseType: !85, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1946, file: !27, line: 347, baseType: !451, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1946, file: !27, line: 348, baseType: !451, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1946, file: !27, line: 349, baseType: !451, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1946, file: !27, line: 350, baseType: !451, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1946, file: !27, line: 351, baseType: !451, size: 64, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1946, file: !27, line: 352, baseType: !451, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1946, file: !27, line: 353, baseType: !649, size: 64, offset: 448)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1946, file: !27, line: 355, baseType: !649, size: 64, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1946, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1946, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1946, file: !27, line: 358, baseType: !451, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1946, file: !27, line: 359, baseType: !451, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1946, file: !27, line: 360, baseType: !451, size: 64, offset: 768)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1946, file: !27, line: 361, baseType: !649, size: 64, offset: 832)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1946, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1911, file: !27, line: 438, baseType: !1965, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!85, !529, !1907, !1945}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1911, file: !27, line: 440, baseType: !1942, size: 64, offset: 512)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1911, file: !27, line: 441, baseType: !1970, size: 64, offset: 576)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!85, !529, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1974, file: !27, line: 412, baseType: !7, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1974, file: !27, line: 413, baseType: !1978, size: 1344, offset: 64)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1979, size: 1344, elements: !305)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1991}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1979, file: !27, line: 398, baseType: !7, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1979, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1979, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1979, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1979, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1979, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1979, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1979, file: !27, line: 406, baseType: !453, size: 64, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1979, file: !27, line: 407, baseType: !1990, size: 64, offset: 320)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !157, line: 132, baseType: !451)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1979, file: !27, line: 408, baseType: !1990, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1911, file: !27, line: 442, baseType: !1921, size: 64, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !530, file: !14, line: 1200, baseType: !1994, size: 64, offset: 576)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !530, file: !14, line: 1201, baseType: !169, size: 64, offset: 640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !530, file: !14, line: 1202, baseType: !169, size: 64, offset: 704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !530, file: !14, line: 1203, baseType: !169, size: 64, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !530, file: !14, line: 1204, baseType: !414, size: 64, offset: 832)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !530, file: !14, line: 1205, baseType: !1235, size: 320, offset: 896)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !530, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !530, file: !14, line: 1207, baseType: !215, size: 32, offset: 1248)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !530, file: !14, line: 1209, baseType: !153, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !530, file: !14, line: 1211, baseType: !2006, size: 64, offset: 1344)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !530, file: !14, line: 1223, baseType: !2011, size: 64, offset: 1408)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !431, line: 34, size: 64, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2011, file: !431, line: 35, baseType: !434, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !530, file: !14, line: 1224, baseType: !232, size: 128, offset: 1472)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !530, file: !14, line: 1225, baseType: !2016, size: 64, offset: 1600)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !530, file: !14, line: 1226, baseType: !2019, size: 64, offset: 1664)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !530, file: !14, line: 1227, baseType: !2022, size: 64, offset: 1728)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !530, file: !14, line: 1228, baseType: !2025, size: 64, offset: 1792)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !530, file: !14, line: 1229, baseType: !883, size: 128, offset: 1856)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !530, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !530, file: !14, line: 1231, baseType: !2030, size: 2496, offset: 2048)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2036, !2068}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !27, line: 522, baseType: !7, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2030, file: !27, line: 523, baseType: !1235, size: 320, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2030, file: !27, line: 524, baseType: !2035, size: 192, offset: 384)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 192, elements: !305)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2030, file: !27, line: 525, baseType: !2037, size: 1728, offset: 576)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 1728, elements: !305)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !2039)
!2039 = !{!2040, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2038, file: !27, line: 223, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !2043)
!2043 = !{!2044, !2045, !2058, !2059}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2042, file: !27, line: 446, baseType: !85, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2042, file: !27, line: 447, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2048, file: !27, line: 313, baseType: !1051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2048, file: !27, line: 314, baseType: !1051, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2048, file: !27, line: 315, baseType: !1051, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2048, file: !27, line: 316, baseType: !1051, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2048, file: !27, line: 317, baseType: !1874, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2048, file: !27, line: 318, baseType: !1874, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2048, file: !27, line: 319, baseType: !1874, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2048, file: !27, line: 320, baseType: !1904, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2042, file: !27, line: 448, baseType: !568, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2042, file: !27, line: 449, baseType: !2041, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2038, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2038, file: !27, line: 226, baseType: !232, size: 128, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2038, file: !27, line: 227, baseType: !169, size: 64, offset: 256)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2038, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2038, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2038, file: !27, line: 230, baseType: !1842, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2038, file: !27, line: 231, baseType: !1842, size: 64, offset: 448)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2038, file: !27, line: 232, baseType: !153, size: 64, offset: 512)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2030, file: !27, line: 526, baseType: !2069, size: 192, offset: 2304)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 192, elements: !305)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !530, file: !14, line: 1233, baseType: !2071, size: 2368, offset: 4544)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2071, file: !14, line: 1185, baseType: !164, size: 16)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2071, file: !14, line: 1186, baseType: !164, size: 16, offset: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2071, file: !14, line: 1187, baseType: !2076, size: 2304, offset: 64)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2077, size: 2304, elements: !305)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2078, line: 12, size: 768, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2079 = !{!2080, !2088, !2089, !3346, !3347}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2077, file: !2078, line: 13, baseType: !2081, size: 384)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2082, line: 17, size: 384, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2083 = !{!2084, !2085, !2086, !2087}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2081, file: !2082, line: 18, baseType: !85, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2081, file: !2082, line: 19, baseType: !85, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2081, file: !2082, line: 20, baseType: !1172, size: 192, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2081, file: !2082, line: 22, baseType: !857, size: 128, align: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2077, file: !2078, line: 14, baseType: !711, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2077, file: !2078, line: 15, baseType: !2090, size: 64, offset: 448)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2091, line: 16, size: 64, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2090, file: !2091, line: 17, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1740, line: 746, size: 58368, elements: !2096)
!2096 = !{!2097, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2177, !2188, !2283, !2287, !2290, !2321, !2322, !2323, !2324, !2335, !2337, !2338, !2339, !2340, !2341, !2342, !2353, !2354, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2371, !2372, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2460, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2508, !2514, !2515, !2516, !2517, !2518, !2522, !2525, !2532, !2537, !2540, !2543, !2546, !2550, !2688, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2726, !2727, !2728, !2737, !2745, !2746, !2747, !2748, !2749, !2754, !2755, !2756, !2759, !2760, !2763, !2766, !2769, !2777, !2780, !2781, !2867, !2868, !2869, !2870, !2871, !2877, !2878, !2879, !2880, !2883, !2884, !2887, !2890, !2891, !2894, !2895, !2896, !2899, !2900, !2901, !2902, !2903, !2904, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2936, !2937, !3003, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3015, !3087, !3089, !3090, !3091, !3092, !3093, !3094, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3123, !3124, !3125}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2095, file: !1740, line: 752, baseType: !2098, size: 192)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2099, line: 56, size: 192, elements: !2100)
!2099 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2100 = !{!2101, !2102, !2103, !2104}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2099, line: 57, baseType: !169, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2098, file: !2099, line: 58, baseType: !169, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2098, file: !2099, line: 59, baseType: !448, size: 32, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2098, file: !2099, line: 61, baseType: !448, size: 32, offset: 160)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2095, file: !1740, line: 754, baseType: !7, size: 32, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2095, file: !1740, line: 767, baseType: !153, size: 64, offset: 256)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2095, file: !1740, line: 768, baseType: !210, size: 32, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !1740, line: 770, baseType: !7, size: 32, offset: 352)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2095, file: !1740, line: 771, baseType: !7, size: 32, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2095, file: !1740, line: 774, baseType: !85, size: 32, offset: 416)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2095, file: !1740, line: 775, baseType: !2112, size: 128, offset: 448)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2113, line: 58, size: 128, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2114 = !{!2115, !2116, !2121, !2122}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2112, file: !2113, line: 59, baseType: !1123, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !2113, line: 60, baseType: !2117, size: 32, offset: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !2113, line: 60, size: 32, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2117, file: !2113, line: 61, baseType: !7, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2117, file: !2113, line: 62, baseType: !215, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2112, file: !2113, line: 65, baseType: !274, size: 16, offset: 96)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2112, file: !2113, line: 65, baseType: !274, size: 16, offset: 112)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2095, file: !1740, line: 776, baseType: !7, size: 32, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2095, file: !1740, line: 777, baseType: !169, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2095, file: !1740, line: 778, baseType: !2094, size: 64, offset: 704)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2095, file: !1740, line: 787, baseType: !85, size: 32, offset: 768)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2095, file: !1740, line: 788, baseType: !85, size: 32, offset: 800)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2095, file: !1740, line: 790, baseType: !85, size: 32, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2095, file: !1740, line: 792, baseType: !85, size: 32, offset: 864)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2095, file: !1740, line: 793, baseType: !85, size: 32, offset: 896)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2095, file: !1740, line: 794, baseType: !85, size: 32, offset: 928)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2095, file: !1740, line: 795, baseType: !7, size: 32, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2095, file: !1740, line: 797, baseType: !2134, size: 2048, offset: 1024)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1740, line: 551, size: 2048, elements: !2135)
!2135 = !{!2136, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2156, !2159, !2160, !2161}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2134, file: !1740, line: 553, baseType: !2137, size: 128)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1740, line: 411, size: 128, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2137, file: !1740, line: 412, baseType: !169, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2137, file: !1740, line: 413, baseType: !448, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2134, file: !1740, line: 554, baseType: !749, size: 192, align: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2134, file: !1740, line: 555, baseType: !451, size: 64, offset: 320)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2134, file: !1740, line: 556, baseType: !451, size: 64, offset: 384)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2134, file: !1740, line: 558, baseType: !232, size: 128, offset: 448)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2134, file: !1740, line: 559, baseType: !7, size: 32, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2134, file: !1740, line: 561, baseType: !451, size: 64, offset: 640)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2134, file: !1740, line: 562, baseType: !451, size: 64, offset: 704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2134, file: !1740, line: 563, baseType: !451, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2134, file: !1740, line: 564, baseType: !451, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2134, file: !1740, line: 565, baseType: !649, size: 64, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2134, file: !1740, line: 566, baseType: !451, size: 64, offset: 960)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2134, file: !1740, line: 568, baseType: !451, size: 64, offset: 1024)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2134, file: !1740, line: 571, baseType: !85, size: 32, offset: 1088)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2134, file: !1740, line: 572, baseType: !2155, size: 64, offset: 1152)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2134, file: !1740, line: 574, baseType: !2157, size: 64, offset: 1216)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1740, line: 49, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2134, file: !1740, line: 576, baseType: !2157, size: 64, offset: 1280)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2134, file: !1740, line: 578, baseType: !169, size: 64, offset: 1344)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2134, file: !1740, line: 588, baseType: !2162, size: 512, align: 512, offset: 1536)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1740, line: 497, size: 512, align: 512, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2162, file: !1740, line: 498, baseType: !451, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2162, file: !1740, line: 499, baseType: !451, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2162, file: !1740, line: 500, baseType: !451, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2162, file: !1740, line: 501, baseType: !448, size: 32, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2162, file: !1740, line: 502, baseType: !448, size: 32, offset: 224)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2162, file: !1740, line: 503, baseType: !169, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2162, file: !1740, line: 504, baseType: !169, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2162, file: !1740, line: 505, baseType: !169, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2162, file: !1740, line: 506, baseType: !2173, size: 64, align: 64, offset: 448)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1740, line: 445, size: 64, align: 64, elements: !2174)
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2173, file: !1740, line: 446, baseType: !7, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2173, file: !1740, line: 447, baseType: !7, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2095, file: !1740, line: 798, baseType: !2178, size: 384, offset: 3072)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1740, line: 592, size: 384, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2178, file: !1740, line: 593, baseType: !232, size: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2178, file: !1740, line: 594, baseType: !169, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2178, file: !1740, line: 595, baseType: !169, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2178, file: !1740, line: 596, baseType: !7, size: 32, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2178, file: !1740, line: 597, baseType: !164, size: 16, offset: 288)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2178, file: !1740, line: 598, baseType: !164, size: 16, offset: 304)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2178, file: !1740, line: 600, baseType: !2187, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2095, file: !1740, line: 799, baseType: !2189, size: 1792, offset: 3456)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1740, line: 610, size: 1792, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2280, !2281}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2189, file: !1740, line: 611, baseType: !749, size: 192, align: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2189, file: !1740, line: 618, baseType: !451, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2189, file: !1740, line: 619, baseType: !451, size: 64, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2189, file: !1740, line: 620, baseType: !451, size: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2189, file: !1740, line: 621, baseType: !451, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2189, file: !1740, line: 622, baseType: !451, size: 64, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2189, file: !1740, line: 629, baseType: !649, size: 64, offset: 512)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2189, file: !1740, line: 630, baseType: !451, size: 64, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !1740, line: 631, baseType: !7, size: 32, offset: 640)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2189, file: !1740, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2189, file: !1740, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2189, file: !1740, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2189, file: !1740, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2189, file: !1740, line: 662, baseType: !2205, size: 512, offset: 704)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !2206)
!2206 = !{!2207, !2215, !2216, !2221, !2276, !2277, !2278, !2279}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2205, file: !33, line: 119, baseType: !2208, size: 256)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2209, line: 9, size: 256, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2208, file: !2209, line: 10, baseType: !749, size: 192, align: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2208, file: !2209, line: 11, baseType: !2213, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2214, line: 29, baseType: !649)
!2214 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2205, file: !33, line: 120, baseType: !2213, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2205, file: !33, line: 121, baseType: !2217, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!32, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2205, file: !33, line: 122, baseType: !2222, size: 64, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !2224)
!2224 = !{!2225, !2250, !2251, !2254, !2259, !2260, !2271, !2275}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2223, file: !33, line: 160, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2227, file: !33, line: 216, baseType: !597, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2227, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2227, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2227, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2227, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2227, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2227, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2227, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2227, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2227, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2227, file: !33, line: 227, baseType: !164, size: 16, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2227, file: !33, line: 228, baseType: !164, size: 16, offset: 208)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2227, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2227, file: !33, line: 235, baseType: !2213, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2227, file: !33, line: 236, baseType: !2220, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2227, file: !33, line: 237, baseType: !2213, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2227, file: !33, line: 238, baseType: !2220, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2227, file: !33, line: 239, baseType: !2247, size: 4096, align: 512, offset: 512)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2223, size: 4096, align: 512, elements: !2248)
!2248 = !{!2249}
!2249 = !DISubrange(count: 8)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2223, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2223, file: !33, line: 162, baseType: !2252, size: 32, offset: 96)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !157, line: 32, baseType: !2253)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !167, line: 96, baseType: !85)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2223, file: !33, line: 163, baseType: !2255, size: 32, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !421, line: 274, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !421, line: 274, size: 32, elements: !2257)
!2257 = !{!2258}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2256, file: !421, line: 274, baseType: !425, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2223, file: !33, line: 164, baseType: !2220, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2223, file: !33, line: 165, baseType: !2261, size: 128, offset: 256)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2209, line: 14, size: 128, elements: !2262)
!2262 = !{!2263}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2261, file: !2209, line: 15, baseType: !2264, size: 128)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !750, line: 26, size: 128, elements: !2265)
!2265 = !{!2266, !2270}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2264, file: !750, line: 27, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !750, line: 12, size: 64, elements: !2268)
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2267, file: !750, line: 13, baseType: !754, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2264, file: !750, line: 28, baseType: !754, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2223, file: !33, line: 166, baseType: !2272, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2213}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2223, file: !33, line: 167, baseType: !2213, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2205, file: !33, line: 123, baseType: !159, size: 8, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2205, file: !33, line: 124, baseType: !159, size: 8, offset: 456)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2205, file: !33, line: 125, baseType: !159, size: 8, offset: 464)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2205, file: !33, line: 126, baseType: !159, size: 8, offset: 472)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2189, file: !1740, line: 671, baseType: !2205, size: 512, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2189, file: !1740, line: 679, baseType: !2282, size: 64, offset: 1728)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2095, file: !1740, line: 800, baseType: !2284, size: 64, offset: 5248)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1740, line: 800, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2095, file: !1740, line: 809, baseType: !2288, size: 64, offset: 5312)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1740, line: 70, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2095, file: !1740, line: 825, baseType: !2291, size: 2048, align: 512, offset: 5632)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1740, line: 509, size: 2048, align: 512, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2291, file: !1740, line: 511, baseType: !451, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2291, file: !1740, line: 512, baseType: !451, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2291, file: !1740, line: 513, baseType: !451, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2291, file: !1740, line: 514, baseType: !451, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2291, file: !1740, line: 515, baseType: !451, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2291, file: !1740, line: 516, baseType: !451, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2291, file: !1740, line: 518, baseType: !451, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2291, file: !1740, line: 519, baseType: !451, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2291, file: !1740, line: 520, baseType: !649, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2291, file: !1740, line: 522, baseType: !451, size: 64, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2291, file: !1740, line: 523, baseType: !451, size: 64, offset: 640)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2291, file: !1740, line: 524, baseType: !649, size: 64, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2291, file: !1740, line: 526, baseType: !649, size: 64, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2291, file: !1740, line: 527, baseType: !451, size: 64, offset: 832)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2291, file: !1740, line: 529, baseType: !451, size: 64, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2291, file: !1740, line: 530, baseType: !451, size: 64, offset: 960)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2291, file: !1740, line: 531, baseType: !451, size: 64, offset: 1024)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2291, file: !1740, line: 532, baseType: !451, size: 64, offset: 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2291, file: !1740, line: 533, baseType: !451, size: 64, offset: 1152)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2291, file: !1740, line: 535, baseType: !451, size: 64, offset: 1216)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2291, file: !1740, line: 536, baseType: !451, size: 64, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2291, file: !1740, line: 537, baseType: !451, size: 64, offset: 1344)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2291, file: !1740, line: 538, baseType: !451, size: 64, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2291, file: !1740, line: 539, baseType: !451, size: 64, offset: 1472)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2291, file: !1740, line: 540, baseType: !451, size: 64, offset: 1536)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2291, file: !1740, line: 541, baseType: !451, size: 64, offset: 1600)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2291, file: !1740, line: 542, baseType: !451, size: 64, offset: 1664)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2291, file: !1740, line: 543, baseType: !451, size: 64, offset: 1728)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2095, file: !1740, line: 833, baseType: !7, size: 32, offset: 7680)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2095, file: !1740, line: 836, baseType: !7, size: 32, offset: 7712)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2095, file: !1740, line: 837, baseType: !85, size: 32, offset: 7744)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2095, file: !1740, line: 838, baseType: !2325, size: 64, offset: 7808)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2328, line: 19, baseType: !2329)
!2328 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2328, line: 19, size: 64, elements: !2330)
!2330 = !{!2331}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2329, file: !2328, line: 19, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 64, elements: !2333)
!2333 = !{!2334}
!2334 = !DISubrange(count: 1)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2095, file: !1740, line: 839, baseType: !2336, size: 64, offset: 7872)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2095, file: !1740, line: 840, baseType: !2327, size: 64, offset: 7936)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2095, file: !1740, line: 841, baseType: !153, size: 64, offset: 8000)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2095, file: !1740, line: 843, baseType: !164, size: 16, offset: 8064)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2095, file: !1740, line: 845, baseType: !164, size: 16, offset: 8080)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2095, file: !1740, line: 848, baseType: !85, size: 32, offset: 8096)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2095, file: !1740, line: 849, baseType: !2343, size: 32, offset: 8128)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1740, line: 718, size: 32, elements: !2344)
!2344 = !{!2345, !2352}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2343, file: !1740, line: 724, baseType: !2346, size: 32)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2343, file: !1740, line: 719, size: 32, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2351}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2346, file: !1740, line: 720, baseType: !159, size: 8)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2346, file: !1740, line: 721, baseType: !159, size: 8, offset: 8)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2346, file: !1740, line: 722, baseType: !159, size: 8, offset: 16)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2346, file: !1740, line: 723, baseType: !159, size: 8, offset: 24)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2343, file: !1740, line: 725, baseType: !448, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2095, file: !1740, line: 850, baseType: !232, size: 128, offset: 8192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2095, file: !1740, line: 851, baseType: !2355, size: 64, offset: 8320)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1740, line: 60, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2095, file: !1740, line: 855, baseType: !169, size: 64, offset: 8384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2095, file: !1740, line: 856, baseType: !159, size: 8, offset: 8448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2095, file: !1740, line: 857, baseType: !159, size: 8, offset: 8456)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2095, file: !1740, line: 858, baseType: !85, size: 32, offset: 8480)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2095, file: !1740, line: 859, baseType: !232, size: 128, offset: 8512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2095, file: !1740, line: 860, baseType: !85, size: 32, offset: 8640)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2095, file: !1740, line: 861, baseType: !232, size: 128, offset: 8704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2095, file: !1740, line: 873, baseType: !2365, size: 256, offset: 8832)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1740, line: 376, size: 256, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2365, file: !1740, line: 381, baseType: !169, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2365, file: !1740, line: 384, baseType: !453, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2365, file: !1740, line: 389, baseType: !453, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2365, file: !1740, line: 392, baseType: !453, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2095, file: !1740, line: 875, baseType: !232, size: 128, offset: 9088)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2095, file: !1740, line: 877, baseType: !2373, size: 320, offset: 9216)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2374, line: 86, size: 320, elements: !2375)
!2374 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2375 = !{!2376, !2377, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2373, file: !2374, line: 87, baseType: !85, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2373, file: !2374, line: 88, baseType: !232, size: 128, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2373, file: !2374, line: 89, baseType: !232, size: 128, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2095, file: !1740, line: 878, baseType: !749, size: 192, align: 64, offset: 9536)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2095, file: !1740, line: 881, baseType: !1507, size: 64, offset: 9728)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2095, file: !1740, line: 882, baseType: !1507, size: 64, offset: 9792)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2095, file: !1740, line: 884, baseType: !85, size: 32, offset: 9856)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2095, file: !1740, line: 885, baseType: !85, size: 32, offset: 9888)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2095, file: !1740, line: 886, baseType: !85, size: 32, offset: 9920)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2095, file: !1740, line: 888, baseType: !85, size: 32, offset: 9952)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2095, file: !1740, line: 890, baseType: !169, size: 64, offset: 9984)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2095, file: !1740, line: 893, baseType: !7, size: 32, offset: 10048)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2095, file: !1740, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2095, file: !1740, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2095, file: !1740, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2095, file: !1740, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2095, file: !1740, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2095, file: !1740, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2095, file: !1740, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2095, file: !1740, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2095, file: !1740, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2095, file: !1740, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2095, file: !1740, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2095, file: !1740, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2095, file: !1740, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2095, file: !1740, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2095, file: !1740, line: 969, baseType: !169, size: 64, offset: 10176)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2095, file: !1740, line: 971, baseType: !2404, size: 448, offset: 10240)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2405)
!2405 = !{!2406, !2407, !2412}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2404, file: !38, line: 26, baseType: !169, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2404, file: !38, line: 27, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!339, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2404, file: !38, line: 28, baseType: !2413, size: 320, offset: 128)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2404, file: !38, line: 28, size: 320, elements: !2414)
!2414 = !{!2415, !2425, !2450}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2413, file: !38, line: 37, baseType: !2416, size: 320)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !38, line: 30, size: 320, elements: !2417)
!2417 = !{!2418, !2420, !2421, !2422, !2423, !2424}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2416, file: !38, line: 31, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2416, file: !38, line: 32, baseType: !448, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2416, file: !38, line: 33, baseType: !448, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2416, file: !38, line: 34, baseType: !448, size: 32, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2416, file: !38, line: 35, baseType: !451, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2416, file: !38, line: 36, baseType: !2419, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2413, file: !38, line: 47, baseType: !2426, size: 192)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !38, line: 39, size: 192, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2449}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2426, file: !38, line: 40, baseType: !2252, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2426, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !38, line: 42, baseType: !2431, size: 64, offset: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !38, line: 42, size: 64, elements: !2432)
!2432 = !{!2433, !2441}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2431, file: !38, line: 43, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2436, line: 7, size: 128, elements: !2437)
!2436 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2437 = !{!2438, !2440}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2435, file: !2436, line: 8, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !167, line: 93, baseType: !541)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2435, file: !2436, line: 9, baseType: !541, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2431, file: !38, line: 44, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2444, line: 7, size: 64, elements: !2445)
!2444 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2445 = !{!2446, !2448}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2443, file: !2444, line: 8, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2444, line: 5, baseType: !635)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2443, file: !2444, line: 9, baseType: !635, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2426, file: !38, line: 46, baseType: !451, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2413, file: !38, line: 55, baseType: !2451, size: 256)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !38, line: 49, size: 256, elements: !2452)
!2452 = !{!2453, !2456, !2457, !2458, !2459}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2451, file: !38, line: 50, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2451, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2451, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2451, file: !38, line: 53, baseType: !169, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2451, file: !38, line: 54, baseType: !169, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2095, file: !1740, line: 973, baseType: !2461, size: 32, offset: 10688)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !157, line: 27, baseType: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !167, line: 28, baseType: !85)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2095, file: !1740, line: 974, baseType: !2461, size: 32, offset: 10720)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2095, file: !1740, line: 978, baseType: !169, size: 64, offset: 10752)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2095, file: !1740, line: 987, baseType: !2094, size: 64, offset: 10816)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2095, file: !1740, line: 990, baseType: !2094, size: 64, offset: 10880)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2095, file: !1740, line: 995, baseType: !232, size: 128, offset: 10944)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2095, file: !1740, line: 996, baseType: !232, size: 128, offset: 11072)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2095, file: !1740, line: 997, baseType: !2094, size: 64, offset: 11200)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2095, file: !1740, line: 1005, baseType: !232, size: 128, offset: 11264)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2095, file: !1740, line: 1006, baseType: !232, size: 128, offset: 11392)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2095, file: !1740, line: 1009, baseType: !1162, size: 64, offset: 11520)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2095, file: !1740, line: 1010, baseType: !2474, size: 512, offset: 11584)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 512, elements: !867)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2095, file: !1740, line: 1011, baseType: !232, size: 128, offset: 12096)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2095, file: !1740, line: 1012, baseType: !232, size: 128, offset: 12224)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2095, file: !1740, line: 1014, baseType: !587, size: 64, offset: 12352)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2095, file: !1740, line: 1017, baseType: !766, size: 64, offset: 12416)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2095, file: !1740, line: 1020, baseType: !766, size: 64, offset: 12480)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2095, file: !1740, line: 1023, baseType: !153, size: 64, offset: 12544)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2095, file: !1740, line: 1025, baseType: !451, size: 64, offset: 12608)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2095, file: !1740, line: 1026, baseType: !451, size: 64, offset: 12672)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2095, file: !1740, line: 1031, baseType: !451, size: 64, offset: 12736)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2095, file: !1740, line: 1032, baseType: !2485, size: 192, offset: 12800)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1740, line: 324, size: 192, elements: !2486)
!2486 = !{!2487, !2488, !2489}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2485, file: !1740, line: 326, baseType: !451, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2485, file: !1740, line: 327, baseType: !451, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2485, file: !1740, line: 328, baseType: !597, size: 32, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2095, file: !1740, line: 1041, baseType: !169, size: 64, offset: 12992)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2095, file: !1740, line: 1042, baseType: !169, size: 64, offset: 13056)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2095, file: !1740, line: 1045, baseType: !451, size: 64, offset: 13120)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2095, file: !1740, line: 1048, baseType: !451, size: 64, offset: 13184)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2095, file: !1740, line: 1051, baseType: !169, size: 64, offset: 13248)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2095, file: !1740, line: 1052, baseType: !169, size: 64, offset: 13312)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2095, file: !1740, line: 1055, baseType: !2497, size: 640, offset: 13376)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2498, line: 132, size: 640, elements: !2499)
!2498 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2499 = !{!2500, !2506, !2507}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2497, file: !2498, line: 133, baseType: !2501, size: 576)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2502, size: 576, elements: !305)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2498, line: 117, size: 192, elements: !2503)
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2502, file: !2498, line: 118, baseType: !451, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2502, file: !2498, line: 119, baseType: !2261, size: 128, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2497, file: !2498, line: 134, baseType: !7, size: 32, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2497, file: !2498, line: 135, baseType: !7, size: 32, offset: 608)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2095, file: !1740, line: 1058, baseType: !2509, size: 448, offset: 14016)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2498, line: 144, size: 448, elements: !2510)
!2510 = !{!2511, !2512, !2513}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2509, file: !2498, line: 145, baseType: !857, size: 128, align: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2509, file: !2498, line: 146, baseType: !639, size: 256, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2509, file: !2498, line: 147, baseType: !7, size: 32, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2095, file: !1740, line: 1064, baseType: !1194, size: 64, offset: 14464)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2095, file: !1740, line: 1067, baseType: !1194, size: 64, offset: 14528)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2095, file: !1740, line: 1070, baseType: !1194, size: 64, offset: 14592)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2095, file: !1740, line: 1074, baseType: !1221, size: 64, offset: 14656)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2095, file: !1740, line: 1084, baseType: !2519, size: 128, offset: 14720)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 128, elements: !2520)
!2520 = !{!2521}
!2521 = !DISubrange(count: 16)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2095, file: !1740, line: 1086, baseType: !2523, size: 64, offset: 14848)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1740, line: 55, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2095, file: !1740, line: 1089, baseType: !2526, size: 64, offset: 14912)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2527, line: 12, size: 64, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2528 = !{!2529}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2526, file: !2527, line: 13, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2527, line: 8, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2095, file: !1740, line: 1090, baseType: !2533, size: 128, offset: 14976)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2534, line: 13, size: 128, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2533, file: !2534, line: 14, baseType: !232, size: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2095, file: !1740, line: 1097, baseType: !2538, size: 64, offset: 15104)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1740, line: 50, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2095, file: !1740, line: 1100, baseType: !2541, size: 64, offset: 15168)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1740, line: 1100, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2095, file: !1740, line: 1103, baseType: !2544, size: 64, offset: 15232)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1740, line: 53, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2095, file: !1740, line: 1107, baseType: !2547, size: 64, offset: 15296)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2549, line: 35, flags: DIFlagFwdDecl)
!2549 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2095, file: !1740, line: 1110, baseType: !2551, size: 64, offset: 15360)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2553, line: 93, size: 8768, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2602, !2611, !2612, !2614, !2615, !2616, !2619, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2657, !2658, !2665, !2675, !2678, !2679, !2682, !2683, !2684, !2685, !2686, !2687}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2552, file: !2553, line: 94, baseType: !210, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2552, file: !2553, line: 95, baseType: !215, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2552, file: !2553, line: 96, baseType: !85, size: 32, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2552, file: !2553, line: 97, baseType: !85, size: 32, offset: 96)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2552, file: !2553, line: 98, baseType: !232, size: 128, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2552, file: !2553, line: 100, baseType: !1172, size: 192, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2552, file: !2553, line: 103, baseType: !2094, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2552, file: !2553, line: 106, baseType: !2563, size: 192, offset: 512)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1379, line: 32, size: 192, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2563, file: !1379, line: 33, baseType: !232, size: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2563, file: !1379, line: 34, baseType: !2567, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2568, line: 25, baseType: !2569)
!2568 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2568, line: 23, size: 64, elements: !2570)
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2569, file: !2568, line: 24, baseType: !2332, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2552, file: !2553, line: 109, baseType: !1007, size: 64, offset: 704)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2552, file: !2553, line: 112, baseType: !85, size: 32, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2552, file: !2553, line: 114, baseType: !85, size: 32, offset: 800)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2552, file: !2553, line: 115, baseType: !2094, size: 64, offset: 832)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2552, file: !2553, line: 118, baseType: !85, size: 32, offset: 896)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2552, file: !2553, line: 119, baseType: !7, size: 32, offset: 928)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2552, file: !2553, line: 121, baseType: !2579, size: 64, offset: 960)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2553, line: 80, size: 448, elements: !2581)
!2581 = !{!2582, !2583, !2589}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2580, file: !2553, line: 81, baseType: !215, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2580, file: !2553, line: 82, baseType: !2584, size: 128, offset: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2553, line: 75, size: 128, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2584, file: !2553, line: 76, baseType: !2094, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2584, file: !2553, line: 77, baseType: !2588, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2580, file: !2553, line: 83, baseType: !588, size: 256, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2552, file: !2553, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2552, file: !2553, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2552, file: !2553, line: 138, baseType: !7, size: 32, offset: 1056)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2552, file: !2553, line: 139, baseType: !232, size: 128, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2552, file: !2553, line: 142, baseType: !2205, size: 512, offset: 1216)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2552, file: !2553, line: 143, baseType: !2213, size: 64, offset: 1728)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2552, file: !2553, line: 150, baseType: !2597, size: 256, offset: 1792)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2598, size: 256, elements: !756)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2553, line: 38, size: 128, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2598, file: !2553, line: 39, baseType: !451, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2598, file: !2553, line: 40, baseType: !451, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2552, file: !2553, line: 156, baseType: !2603, size: 192, offset: 2048)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2553, line: 66, size: 192, elements: !2604)
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2603, file: !2553, line: 67, baseType: !2606, size: 192)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2553, line: 47, size: 192, elements: !2607)
!2607 = !{!2608, !2609, !2610}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2606, file: !2553, line: 48, baseType: !645, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2606, file: !2553, line: 49, baseType: !645, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2606, file: !2553, line: 50, baseType: !645, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2552, file: !2553, line: 160, baseType: !2497, size: 640, offset: 2240)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2552, file: !2553, line: 163, baseType: !2613, size: 256, offset: 2880)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 256, elements: !867)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2552, file: !2553, line: 169, baseType: !1162, size: 64, offset: 3136)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2552, file: !2553, line: 172, baseType: !85, size: 32, offset: 3200)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2552, file: !2553, line: 174, baseType: !2617, size: 64, offset: 3264)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2553, line: 174, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2552, file: !2553, line: 185, baseType: !2620, size: 64, offset: 3328)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !421, line: 860, baseType: !2621)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 853, size: 64, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2621, file: !421, line: 858, baseType: !420, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2621, file: !421, line: 859, baseType: !245, size: 32, offset: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2552, file: !2553, line: 186, baseType: !451, size: 64, offset: 3392)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2552, file: !2553, line: 186, baseType: !451, size: 64, offset: 3456)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2552, file: !2553, line: 186, baseType: !451, size: 64, offset: 3520)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2552, file: !2553, line: 186, baseType: !451, size: 64, offset: 3584)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2552, file: !2553, line: 187, baseType: !451, size: 64, offset: 3648)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2552, file: !2553, line: 188, baseType: !451, size: 64, offset: 3712)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2552, file: !2553, line: 189, baseType: !2485, size: 192, offset: 3776)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2552, file: !2553, line: 190, baseType: !169, size: 64, offset: 3968)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2552, file: !2553, line: 190, baseType: !169, size: 64, offset: 4032)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2552, file: !2553, line: 190, baseType: !169, size: 64, offset: 4096)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2552, file: !2553, line: 190, baseType: !169, size: 64, offset: 4160)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2552, file: !2553, line: 191, baseType: !169, size: 64, offset: 4224)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2552, file: !2553, line: 191, baseType: !169, size: 64, offset: 4288)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2552, file: !2553, line: 191, baseType: !169, size: 64, offset: 4352)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2552, file: !2553, line: 191, baseType: !169, size: 64, offset: 4416)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2552, file: !2553, line: 192, baseType: !169, size: 64, offset: 4480)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2552, file: !2553, line: 192, baseType: !169, size: 64, offset: 4544)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2552, file: !2553, line: 192, baseType: !169, size: 64, offset: 4608)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2552, file: !2553, line: 192, baseType: !169, size: 64, offset: 4672)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2552, file: !2553, line: 193, baseType: !169, size: 64, offset: 4736)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2552, file: !2553, line: 193, baseType: !169, size: 64, offset: 4800)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2552, file: !2553, line: 194, baseType: !2647, size: 448, offset: 4864)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2648, line: 12, size: 448, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2647, file: !2648, line: 15, baseType: !451, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2647, file: !2648, line: 17, baseType: !451, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2647, file: !2648, line: 19, baseType: !451, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2647, file: !2648, line: 21, baseType: !451, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2647, file: !2648, line: 29, baseType: !451, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2647, file: !2648, line: 35, baseType: !451, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2647, file: !2648, line: 44, baseType: !451, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2552, file: !2553, line: 202, baseType: !453, size: 64, offset: 5312)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2552, file: !2553, line: 213, baseType: !2659, size: 2048, offset: 5376)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2660, size: 2048, elements: !2520)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2661, line: 43, size: 128, elements: !2662)
!2661 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2660, file: !2661, line: 44, baseType: !168, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2660, file: !2661, line: 45, baseType: !168, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2552, file: !2553, line: 216, baseType: !2666, size: 448, offset: 7424)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2553, line: 30, size: 448, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2666, file: !2553, line: 31, baseType: !85, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2666, file: !2553, line: 32, baseType: !339, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2666, file: !2553, line: 33, baseType: !169, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2666, file: !2553, line: 34, baseType: !451, size: 64, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2666, file: !2553, line: 34, baseType: !451, size: 64, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2666, file: !2553, line: 35, baseType: !169, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2666, file: !2553, line: 35, baseType: !169, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2552, file: !2553, line: 219, baseType: !2676, size: 64, offset: 7872)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2553, line: 219, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2552, file: !2553, line: 222, baseType: !7, size: 32, offset: 7936)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2552, file: !2553, line: 223, baseType: !2680, size: 64, offset: 8000)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2553, line: 223, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2552, file: !2553, line: 230, baseType: !189, size: 8, offset: 8064)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2552, file: !2553, line: 231, baseType: !775, size: 16, offset: 8080)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2552, file: !2553, line: 232, baseType: !775, size: 16, offset: 8096)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2552, file: !2553, line: 234, baseType: !1507, size: 64, offset: 8128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2552, file: !2553, line: 237, baseType: !639, size: 256, offset: 8192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2552, file: !2553, line: 243, baseType: !1235, size: 320, offset: 8448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2095, file: !1740, line: 1111, baseType: !2689, size: 64, offset: 15424)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2553, line: 20, size: 16640, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2690, file: !2553, line: 21, baseType: !245, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2690, file: !2553, line: 22, baseType: !210, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2690, file: !2553, line: 23, baseType: !1172, size: 192, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2690, file: !2553, line: 24, baseType: !2696, size: 16384, offset: 256)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2697, size: 16384, elements: !309)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1379, line: 51, size: 256, elements: !2698)
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2697, file: !1379, line: 52, baseType: !2700, size: 256)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1379, line: 37, size: 256, elements: !2701)
!2701 = !{!2702, !2709, !2710, !2714}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2700, file: !1379, line: 39, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2704, line: 83, baseType: !2705)
!2704 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2704, line: 82, baseType: !2707)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !85}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2700, file: !1379, line: 40, baseType: !169, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2700, file: !1379, line: 46, baseType: !2711, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2704, line: 86, baseType: !2712)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2704, line: 85, baseType: !1002)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2700, file: !1379, line: 48, baseType: !2567, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2095, file: !1740, line: 1112, baseType: !2567, size: 64, offset: 15488)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2095, file: !1740, line: 1113, baseType: !2567, size: 64, offset: 15552)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2095, file: !1740, line: 1115, baseType: !2567, size: 64, offset: 15616)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2095, file: !1740, line: 1116, baseType: !2563, size: 192, offset: 15680)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2095, file: !1740, line: 1117, baseType: !169, size: 64, offset: 15872)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2095, file: !1740, line: 1118, baseType: !165, size: 64, offset: 15936)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2095, file: !1740, line: 1119, baseType: !7, size: 32, offset: 16000)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2095, file: !1740, line: 1121, baseType: !856, size: 64, offset: 16064)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2095, file: !1740, line: 1125, baseType: !2724, size: 64, offset: 16128)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1740, line: 43, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2095, file: !1740, line: 1127, baseType: !385, size: 32, offset: 16192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2095, file: !1740, line: 1128, baseType: !7, size: 32, offset: 16224)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2095, file: !1740, line: 1130, baseType: !2729, size: 128, offset: 16256)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2730, line: 37, size: 128, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2731 = !{!2732, !2733, !2734}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2729, file: !2730, line: 38, baseType: !85, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2729, file: !2730, line: 39, baseType: !215, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2729, file: !2730, line: 40, baseType: !2735, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2730, line: 24, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2095, file: !1740, line: 1131, baseType: !2738, size: 256, offset: 16384)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2739, line: 12, size: 256, elements: !2740)
!2739 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2740 = !{!2741, !2742, !2743, !2744}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2738, file: !2739, line: 13, baseType: !304, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2738, file: !2739, line: 14, baseType: !169, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2738, file: !2739, line: 15, baseType: !169, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2738, file: !2739, line: 16, baseType: !189, size: 8, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2095, file: !1740, line: 1134, baseType: !451, size: 64, offset: 16640)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2095, file: !1740, line: 1135, baseType: !451, size: 64, offset: 16704)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2095, file: !1740, line: 1138, baseType: !245, size: 32, offset: 16768)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2095, file: !1740, line: 1141, baseType: !597, size: 32, offset: 16800)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2095, file: !1740, line: 1143, baseType: !2750, size: 64, offset: 16832)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1740, line: 735, size: 64, elements: !2751)
!2751 = !{!2752}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2750, file: !1740, line: 736, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2095, file: !1740, line: 1147, baseType: !2264, size: 128, offset: 16896)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2095, file: !1740, line: 1149, baseType: !2094, size: 64, offset: 17024)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2095, file: !1740, line: 1151, baseType: !2757, size: 64, offset: 17088)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1740, line: 1151, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2095, file: !1740, line: 1188, baseType: !153, size: 64, offset: 17152)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2095, file: !1740, line: 1191, baseType: !2761, size: 64, offset: 17216)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1740, line: 44, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2095, file: !1740, line: 1194, baseType: !2764, size: 64, offset: 17280)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1740, line: 45, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2095, file: !1740, line: 1197, baseType: !2767, size: 64, offset: 17344)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1740, line: 61, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2095, file: !1740, line: 1199, baseType: !2770, size: 64, offset: 17408)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2772, line: 99, size: 128, elements: !2773)
!2772 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2773 = !{!2774, !2775, !2776}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2771, file: !2772, line: 100, baseType: !643, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2771, file: !2772, line: 101, baseType: !215, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2771, file: !2772, line: 103, baseType: !164, size: 16, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2095, file: !1740, line: 1202, baseType: !2778, size: 64, offset: 17472)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1740, line: 48, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2095, file: !1740, line: 1205, baseType: !169, size: 64, offset: 17536)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2095, file: !1740, line: 1206, baseType: !2782, size: 64, offset: 17600)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1379, line: 14, baseType: !2784)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1379, line: 12, size: 384, elements: !2785)
!2785 = !{!2786}
!2786 = !DIDerivedType(tag: DW_TAG_member, scope: !2784, file: !1379, line: 13, baseType: !2787, size: 384)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2784, file: !1379, line: 13, size: 384, elements: !2788)
!2788 = !{!2789, !2790, !2791, !2792}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2787, file: !1379, line: 13, baseType: !85, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2787, file: !1379, line: 13, baseType: !85, size: 32, offset: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2787, file: !1379, line: 13, baseType: !85, size: 32, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2787, file: !1379, line: 13, baseType: !2793, size: 256, offset: 128)
!2793 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2794, line: 37, size: 256, elements: !2795)
!2794 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2795 = !{!2796, !2801, !2814, !2820, !2829, !2856, !2861}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2793, file: !2794, line: 42, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2794, line: 39, size: 64, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2797, file: !2794, line: 40, baseType: !2462, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2797, file: !2794, line: 41, baseType: !391, size: 32, offset: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2793, file: !2794, line: 50, baseType: !2802, size: 192)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2794, line: 45, size: 192, elements: !2803)
!2803 = !{!2804, !2806, !2807, !2813}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2802, file: !2794, line: 46, baseType: !2805, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !167, line: 95, baseType: !85)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2802, file: !2794, line: 47, baseType: !85, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2802, file: !2794, line: 48, baseType: !2808, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2794, line: 11, baseType: !2809)
!2809 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2794, line: 8, size: 64, elements: !2810)
!2810 = !{!2811, !2812}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2809, file: !2794, line: 9, baseType: !85, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2809, file: !2794, line: 10, baseType: !153, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2802, file: !2794, line: 49, baseType: !85, size: 32, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2793, file: !2794, line: 57, baseType: !2815, size: 128)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2794, line: 53, size: 128, elements: !2816)
!2816 = !{!2817, !2818, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2815, file: !2794, line: 54, baseType: !2462, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2815, file: !2794, line: 55, baseType: !391, size: 32, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2815, file: !2794, line: 56, baseType: !2808, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2793, file: !2794, line: 66, baseType: !2821, size: 256)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2794, line: 60, size: 256, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2826, !2828}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2821, file: !2794, line: 61, baseType: !2462, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2821, file: !2794, line: 62, baseType: !391, size: 32, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2821, file: !2794, line: 63, baseType: !85, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2821, file: !2794, line: 64, baseType: !2827, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !167, line: 94, baseType: !338)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2821, file: !2794, line: 65, baseType: !2827, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2793, file: !2794, line: 105, baseType: !2830, size: 256)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2794, line: 69, size: 256, elements: !2831)
!2831 = !{!2832, !2833}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2830, file: !2794, line: 70, baseType: !153, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !2794, line: 79, baseType: !2834, size: 192, offset: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !2794, line: 79, size: 192, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2845, !2850}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2834, file: !2794, line: 81, baseType: !85, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2834, file: !2794, line: 86, baseType: !775, size: 16)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2834, file: !2794, line: 92, baseType: !2839, size: 192)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !2794, line: 88, size: 192, elements: !2840)
!2840 = !{!2841, !2843, !2844}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2839, file: !2794, line: 89, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 64, elements: !2248)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2839, file: !2794, line: 90, baseType: !153, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2839, file: !2794, line: 91, baseType: !153, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2834, file: !2794, line: 97, baseType: !2846, size: 96)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !2794, line: 94, size: 96, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2846, file: !2794, line: 95, baseType: !2842, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2846, file: !2794, line: 96, baseType: !154, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2834, file: !2794, line: 103, baseType: !2851, size: 128)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !2794, line: 99, size: 128, elements: !2852)
!2852 = !{!2853, !2854, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2851, file: !2794, line: 100, baseType: !169, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2851, file: !2794, line: 101, baseType: !154, size: 32, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2851, file: !2794, line: 102, baseType: !154, size: 32, offset: 96)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2793, file: !2794, line: 111, baseType: !2857, size: 128)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2794, line: 108, size: 128, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2857, file: !2794, line: 109, baseType: !339, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2857, file: !2794, line: 110, baseType: !85, size: 32, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2793, file: !2794, line: 118, baseType: !2862, size: 128)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2793, file: !2794, line: 114, size: 128, elements: !2863)
!2863 = !{!2864, !2865, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2862, file: !2794, line: 115, baseType: !153, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2862, file: !2794, line: 116, baseType: !85, size: 32, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2862, file: !2794, line: 117, baseType: !7, size: 32, offset: 96)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2095, file: !1740, line: 1208, baseType: !2647, size: 448, offset: 17664)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2095, file: !1740, line: 1215, baseType: !451, size: 64, offset: 18112)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2095, file: !1740, line: 1217, baseType: !451, size: 64, offset: 18176)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2095, file: !1740, line: 1219, baseType: !451, size: 64, offset: 18240)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2095, file: !1740, line: 1223, baseType: !2872, size: 64, offset: 18304)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2873, line: 99, baseType: !2874)
!2873 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2873, line: 99, size: 64, elements: !2875)
!2875 = !{!2876}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2874, file: !2873, line: 99, baseType: !2332, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2095, file: !1740, line: 1225, baseType: !420, size: 32, offset: 18368)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2095, file: !1740, line: 1226, baseType: !85, size: 32, offset: 18400)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2095, file: !1740, line: 1227, baseType: !85, size: 32, offset: 18432)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2095, file: !1740, line: 1231, baseType: !2881, size: 64, offset: 18496)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1740, line: 1231, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2095, file: !1740, line: 1233, baseType: !232, size: 128, offset: 18560)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2095, file: !1740, line: 1240, baseType: !2885, size: 64, offset: 18688)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1740, line: 62, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2095, file: !1740, line: 1242, baseType: !2888, size: 64, offset: 18752)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1740, line: 1242, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2095, file: !1740, line: 1244, baseType: !232, size: 128, offset: 18816)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2095, file: !1740, line: 1245, baseType: !2892, size: 64, offset: 18944)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1740, line: 51, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2095, file: !1740, line: 1246, baseType: !639, size: 256, offset: 19008)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2095, file: !1740, line: 1247, baseType: !7, size: 32, offset: 19264)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2095, file: !1740, line: 1250, baseType: !2897, size: 64, offset: 19328)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1740, line: 57, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2095, file: !1740, line: 1251, baseType: !639, size: 256, offset: 19392)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2095, file: !1740, line: 1252, baseType: !232, size: 128, offset: 19648)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2095, file: !1740, line: 1259, baseType: !1699, size: 64, offset: 19776)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2095, file: !1740, line: 1260, baseType: !775, size: 16, offset: 19840)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2095, file: !1740, line: 1261, baseType: !775, size: 16, offset: 19856)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2095, file: !1740, line: 1314, baseType: !2905, size: 64, offset: 19904)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2907, line: 62, size: 256, align: 256, elements: !2908)
!2907 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2908 = !{!2909, !2910, !2911, !2912, !2913, !2914, !2915}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2906, file: !2907, line: 75, baseType: !154, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2906, file: !2907, line: 90, baseType: !154, size: 32, offset: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2906, file: !2907, line: 112, baseType: !452, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2906, file: !2907, line: 132, baseType: !154, size: 32, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2906, file: !2907, line: 140, baseType: !154, size: 32, offset: 160)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2906, file: !2907, line: 149, baseType: !154, size: 32, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2906, file: !2907, line: 154, baseType: !2916, offset: 224)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, elements: !1187)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2095, file: !1740, line: 1315, baseType: !448, size: 32, offset: 19968)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2095, file: !1740, line: 1316, baseType: !448, size: 32, offset: 20000)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2095, file: !1740, line: 1321, baseType: !169, size: 64, offset: 20032)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2095, file: !1740, line: 1325, baseType: !85, size: 32, offset: 20096)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2095, file: !1740, line: 1326, baseType: !85, size: 32, offset: 20128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2095, file: !1740, line: 1327, baseType: !85, size: 32, offset: 20160)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2095, file: !1740, line: 1328, baseType: !85, size: 32, offset: 20192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2095, file: !1740, line: 1329, baseType: !857, size: 128, align: 64, offset: 20224)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2095, file: !1740, line: 1332, baseType: !2926, size: 128, offset: 20352)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2927, line: 51, size: 128, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2928 = !{!2929, !2934, !2935}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2926, file: !2927, line: 60, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2931, line: 7, size: 64, elements: !2932)
!2931 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2932 = !{!2933}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2930, file: !2931, line: 12, baseType: !2329, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2926, file: !2927, line: 63, baseType: !189, size: 8, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2926, file: !2927, line: 70, baseType: !189, size: 8, offset: 72)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2095, file: !1740, line: 1335, baseType: !1738, size: 64, offset: 20480)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2095, file: !1740, line: 1337, baseType: !2938, size: 128, offset: 20544)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2927, line: 39, size: 128, elements: !2939)
!2939 = !{!2940, !3001, !3002}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2938, file: !2927, line: 40, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1495, line: 74, size: 512, align: 128, elements: !2943)
!2943 = !{!2944, !2945, !2995, !3000}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2942, file: !1495, line: 75, baseType: !169, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !1495, line: 83, baseType: !2946, size: 320, offset: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2942, file: !1495, line: 83, size: 320, elements: !2947)
!2947 = !{!2948, !2969, !2983, !2987, !2994}
!2948 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !1495, line: 84, baseType: !2949, size: 320)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !1495, line: 84, size: 320, elements: !2950)
!2950 = !{!2951, !2962, !2963, !2968}
!2951 = !DIDerivedType(tag: DW_TAG_member, scope: !2949, file: !1495, line: 90, baseType: !2952, size: 128)
!2952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !1495, line: 90, size: 128, elements: !2953)
!2953 = !{!2954, !2955, !2960, !2961}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2952, file: !1495, line: 91, baseType: !232, size: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !1495, line: 94, baseType: !2956, size: 128)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !1495, line: 94, size: 128, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2956, file: !1495, line: 96, baseType: !153, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2956, file: !1495, line: 98, baseType: !7, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2952, file: !1495, line: 102, baseType: !232, size: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2952, file: !1495, line: 103, baseType: !232, size: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2949, file: !1495, line: 106, baseType: !375, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, scope: !2949, file: !1495, line: 107, baseType: !2964, size: 64, offset: 192)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !1495, line: 107, size: 64, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2964, file: !1495, line: 108, baseType: !169, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2964, file: !1495, line: 109, baseType: !169, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2949, file: !1495, line: 117, baseType: !169, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !1495, line: 119, baseType: !2970, size: 320)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !1495, line: 119, size: 320, elements: !2971)
!2971 = !{!2972, !2973, !2976, !2977, !2978}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2970, file: !1495, line: 124, baseType: !169, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2970, file: !1495, line: 125, baseType: !2974, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1495, line: 125, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2970, file: !1495, line: 126, baseType: !169, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2970, file: !1495, line: 127, baseType: !169, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2970, file: !1495, line: 128, baseType: !2979, size: 64, offset: 256)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2970, file: !1495, line: 128, size: 64, elements: !2980)
!2980 = !{!2981, !2982}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2979, file: !1495, line: 133, baseType: !169, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2979, file: !1495, line: 138, baseType: !643, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !1495, line: 141, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !1495, line: 141, size: 64, elements: !2985)
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2984, file: !1495, line: 142, baseType: !169, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !1495, line: 144, baseType: !2988, size: 128)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !1495, line: 144, size: 128, elements: !2989)
!2989 = !{!2990, !2993}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2988, file: !1495, line: 146, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1495, line: 146, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2988, file: !1495, line: 147, baseType: !153, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2946, file: !1495, line: 161, baseType: !857, size: 128, align: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !1495, line: 164, baseType: !2996, size: 32, offset: 384)
!2996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2942, file: !1495, line: 164, size: 32, elements: !2997)
!2997 = !{!2998, !2999}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2996, file: !1495, line: 169, baseType: !215, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2996, file: !1495, line: 177, baseType: !7, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2942, file: !1495, line: 181, baseType: !215, size: 32, offset: 416)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2938, file: !2927, line: 42, baseType: !154, size: 32, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2938, file: !2927, line: 43, baseType: !154, size: 32, offset: 96)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2095, file: !1740, line: 1340, baseType: !3004, size: 64, offset: 20672)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1740, line: 69, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2095, file: !1740, line: 1351, baseType: !85, size: 32, offset: 20736)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2095, file: !1740, line: 1352, baseType: !85, size: 32, offset: 20768)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2095, file: !1740, line: 1354, baseType: !169, size: 64, offset: 20800)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2095, file: !1740, line: 1364, baseType: !451, size: 64, offset: 20864)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2095, file: !1740, line: 1365, baseType: !451, size: 64, offset: 20928)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2095, file: !1740, line: 1412, baseType: !169, size: 64, offset: 20992)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2095, file: !1740, line: 1453, baseType: !3013, size: 64, offset: 21056)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1740, line: 1453, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2095, file: !1740, line: 1457, baseType: !3016, size: 64, offset: 21120)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !3018)
!3018 = !{!3019, !3020, !3039, !3042, !3043, !3076, !3086}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3017, file: !44, line: 62, baseType: !43, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !3017, file: !44, line: 64, baseType: !3021, size: 192, offset: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3017, file: !44, line: 64, size: 192, elements: !3022)
!3022 = !{!3023, !3034}
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !44, line: 65, baseType: !3024, size: 192)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !44, line: 65, size: 192, elements: !3025)
!3025 = !{!3026, !3033}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3024, file: !44, line: 66, baseType: !3027, size: 128)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3028, line: 50, size: 128, elements: !3029)
!3028 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3029 = !{!3030, !3031, !3032}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3027, file: !3028, line: 52, baseType: !169, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3027, file: !3028, line: 54, baseType: !7, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3027, file: !3028, line: 55, baseType: !7, size: 32, offset: 96)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3024, file: !44, line: 67, baseType: !169, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !44, line: 70, baseType: !3035, size: 192)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !44, line: 70, size: 192, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3035, file: !44, line: 71, baseType: !857, size: 128, align: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3035, file: !44, line: 72, baseType: !169, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3017, file: !44, line: 76, baseType: !3040, size: 64, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3017, file: !44, line: 77, baseType: !169, size: 64, offset: 320)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3017, file: !44, line: 79, baseType: !3044, size: 64, offset: 384)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3028, line: 25, size: 256, elements: !3046)
!3046 = !{!3047, !3053, !3057}
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !3045, file: !3028, line: 26, baseType: !3048, size: 128)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3045, file: !3028, line: 26, size: 128, elements: !3049)
!3049 = !{!3050, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3048, file: !3028, line: 27, baseType: !3051, size: 128)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !2520)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3048, file: !3028, line: 28, baseType: !3051, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3045, file: !3028, line: 31, baseType: !3054, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3056)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3028, line: 23, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, scope: !3045, file: !3028, line: 33, baseType: !3058, size: 64, offset: 192)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3045, file: !3028, line: 33, size: 64, elements: !3059)
!3059 = !{!3060, !3066, !3071}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3058, file: !3028, line: 38, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3058, file: !3028, line: 34, size: 64, elements: !3062)
!3062 = !{!3063, !3064, !3065}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3061, file: !3028, line: 35, baseType: !635, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3061, file: !3028, line: 36, baseType: !159, size: 8, offset: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3061, file: !3028, line: 37, baseType: !159, size: 8, offset: 40)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3058, file: !3028, line: 42, baseType: !3067, size: 16)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3058, file: !3028, line: 39, size: 16, elements: !3068)
!3068 = !{!3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3067, file: !3028, line: 40, baseType: !159, size: 8)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3067, file: !3028, line: 41, baseType: !159, size: 8, offset: 8)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3058, file: !3028, line: 46, baseType: !3072, size: 16)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3058, file: !3028, line: 43, size: 16, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3072, file: !3028, line: 44, baseType: !159, size: 8)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3072, file: !3028, line: 45, baseType: !159, size: 8, offset: 8)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3017, file: !44, line: 81, baseType: !3077, size: 64, offset: 448)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !3079)
!3079 = !{!3080, !3081, !3082, !3083, !3084, !3085}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3078, file: !44, line: 86, baseType: !3040, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3078, file: !44, line: 87, baseType: !169, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3078, file: !44, line: 88, baseType: !169, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3078, file: !44, line: 89, baseType: !169, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3078, file: !44, line: 90, baseType: !189, size: 8, offset: 256)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3078, file: !44, line: 92, baseType: !3077, size: 64, offset: 320)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3017, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2095, file: !1740, line: 1463, baseType: !3088, offset: 21184)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1740, line: 739, elements: !926)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2095, file: !1740, line: 1470, baseType: !857, size: 128, align: 64, offset: 21184)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2095, file: !1740, line: 1471, baseType: !210, size: 32, offset: 21312)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2095, file: !1740, line: 1472, baseType: !85, size: 32, offset: 21344)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2095, file: !1740, line: 1474, baseType: !2094, size: 64, offset: 21376)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2095, file: !1740, line: 1475, baseType: !879, size: 320, offset: 21440)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2095, file: !1740, line: 1478, baseType: !3095, size: 64, offset: 21760)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1456, line: 49, size: 512, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101, !3102, !3104, !3105, !3106, !3108}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3096, file: !1456, line: 50, baseType: !3095, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3096, file: !1456, line: 51, baseType: !153, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3096, file: !1456, line: 52, baseType: !169, size: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3096, file: !1456, line: 53, baseType: !169, size: 64, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3096, file: !1456, line: 54, baseType: !3103, size: 64, offset: 256)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3096, file: !1456, line: 56, baseType: !7, size: 32, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3096, file: !1456, line: 58, baseType: !7, size: 32, offset: 352)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3096, file: !1456, line: 59, baseType: !3107, size: 64, offset: 384)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !157, line: 159, baseType: !451)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3096, file: !1456, line: 60, baseType: !1622, size: 64, offset: 448)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2095, file: !1740, line: 1482, baseType: !210, size: 32, offset: 21824)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2095, file: !1740, line: 1489, baseType: !153, size: 64, offset: 21888)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2095, file: !1740, line: 1504, baseType: !153, size: 64, offset: 21952)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2095, file: !1740, line: 1505, baseType: !452, size: 64, offset: 22016)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2095, file: !1740, line: 1506, baseType: !451, size: 64, offset: 22080)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2095, file: !1740, line: 1507, baseType: !452, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2095, file: !1740, line: 1508, baseType: !452, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2095, file: !1740, line: 1509, baseType: !452, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2095, file: !1740, line: 1510, baseType: !857, size: 128, align: 64, offset: 22208)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2095, file: !1740, line: 1511, baseType: !85, size: 32, offset: 22336)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2095, file: !1740, line: 1515, baseType: !3120, size: 64, offset: 22400)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1124, line: 56, size: 64, elements: !3121)
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3120, file: !1124, line: 57, baseType: !1127, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2095, file: !1740, line: 1518, baseType: !3120, size: 64, offset: 22464)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2095, file: !1740, line: 1528, baseType: !857, size: 128, align: 64, offset: 22528)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2095, file: !1740, line: 1552, baseType: !3126, size: 35328, offset: 23040)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3127, line: 430, size: 35328, elements: !3128)
!3127 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3128 = !{!3129, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3158, !3159, !3160, !3161, !3162, !3163, !3166, !3167, !3168, !3169}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3126, file: !3127, line: 432, baseType: !3130, size: 192)
!3130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3131, size: 192, elements: !305)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3132, line: 16, size: 64, elements: !3133)
!3132 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3131, file: !3132, line: 17, baseType: !274, size: 16)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3131, file: !3132, line: 18, baseType: !274, size: 16, offset: 16)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3131, file: !3132, line: 19, baseType: !274, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3131, file: !3132, line: 19, baseType: !274, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3131, file: !3132, line: 19, baseType: !274, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3131, file: !3132, line: 19, baseType: !274, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3131, file: !3132, line: 19, baseType: !274, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3131, file: !3132, line: 20, baseType: !274, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3131, file: !3132, line: 20, baseType: !274, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3131, file: !3132, line: 20, baseType: !274, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3131, file: !3132, line: 20, baseType: !274, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3131, file: !3132, line: 20, baseType: !274, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3131, file: !3132, line: 20, baseType: !274, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3126, file: !3127, line: 436, baseType: !169, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3126, file: !3127, line: 440, baseType: !164, size: 16, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3126, file: !3127, line: 441, baseType: !164, size: 16, offset: 272)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3126, file: !3127, line: 442, baseType: !164, size: 16, offset: 288)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3126, file: !3127, line: 443, baseType: !164, size: 16, offset: 304)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3126, file: !3127, line: 447, baseType: !169, size: 64, offset: 320)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3126, file: !3127, line: 448, baseType: !169, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3126, file: !3127, line: 459, baseType: !3155, size: 256, offset: 448)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3156, size: 256, elements: !867)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3127, line: 428, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3126, file: !3127, line: 461, baseType: !169, size: 64, offset: 704)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3126, file: !3127, line: 463, baseType: !169, size: 64, offset: 768)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3126, file: !3127, line: 465, baseType: !169, size: 64, offset: 832)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3126, file: !3127, line: 466, baseType: !169, size: 64, offset: 896)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3126, file: !3127, line: 467, baseType: !169, size: 64, offset: 960)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3126, file: !3127, line: 473, baseType: !3164, size: 64, offset: 1024)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3127, line: 10, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3126, file: !3127, line: 480, baseType: !169, size: 64, offset: 1088)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3126, file: !3127, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3126, file: !3127, line: 491, baseType: !448, size: 32, offset: 1184)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3126, file: !3127, line: 501, baseType: !3170, size: 33792, offset: 1536)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3171, line: 448, size: 33792, elements: !3172)
!3171 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3172 = !{!3173, !3174, !3175, !3337, !3338, !3344, !3345}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3170, file: !3171, line: 461, baseType: !7, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3170, file: !3171, line: 468, baseType: !169, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3170, file: !3171, line: 476, baseType: !3176, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3171, line: 356, size: 33280, align: 512, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3177, file: !3171, line: 358, baseType: !7, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3177, file: !3171, line: 361, baseType: !7, size: 32, offset: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3177, file: !3171, line: 364, baseType: !451, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3177, file: !3171, line: 367, baseType: !451, size: 64, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3177, file: !3171, line: 370, baseType: !451, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3177, file: !3171, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3177, file: !3171, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3177, file: !3171, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3177, file: !3171, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3177, file: !3171, line: 397, baseType: !3189, size: 32768, offset: 512)
!3189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3171, line: 348, size: 32768, elements: !3190)
!3190 = !{!3191, !3206, !3243, !3320, !3333}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3189, file: !3171, line: 349, baseType: !3192, size: 896)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3171, line: 12, size: 896, elements: !3193)
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3205}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3192, file: !3171, line: 13, baseType: !448, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3192, file: !3171, line: 14, baseType: !448, size: 32, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3192, file: !3171, line: 15, baseType: !448, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3192, file: !3171, line: 16, baseType: !448, size: 32, offset: 96)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3192, file: !3171, line: 17, baseType: !448, size: 32, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3192, file: !3171, line: 18, baseType: !448, size: 32, offset: 160)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3192, file: !3171, line: 19, baseType: !448, size: 32, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3192, file: !3171, line: 22, baseType: !3202, size: 640, offset: 224)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 640, elements: !3203)
!3203 = !{!3204}
!3204 = !DISubrange(count: 20)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3192, file: !3171, line: 25, baseType: !448, size: 32, offset: 864)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3189, file: !3171, line: 350, baseType: !3207, size: 4096, align: 128)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3171, line: 34, size: 4096, align: 128, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3228, !3229, !3230, !3232, !3234, !3238}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3207, file: !3171, line: 35, baseType: !274, size: 16)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3207, file: !3171, line: 36, baseType: !274, size: 16, offset: 16)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3207, file: !3171, line: 37, baseType: !274, size: 16, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3207, file: !3171, line: 38, baseType: !274, size: 16, offset: 48)
!3213 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !3171, line: 39, baseType: !3214, size: 128, offset: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3207, file: !3171, line: 39, size: 128, elements: !3215)
!3215 = !{!3216, !3221}
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !3171, line: 40, baseType: !3217, size: 128)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !3171, line: 40, size: 128, elements: !3218)
!3218 = !{!3219, !3220}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3217, file: !3171, line: 41, baseType: !451, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3217, file: !3171, line: 42, baseType: !451, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !3171, line: 44, baseType: !3222, size: 128)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !3171, line: 44, size: 128, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3222, file: !3171, line: 45, baseType: !448, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3222, file: !3171, line: 46, baseType: !448, size: 32, offset: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3222, file: !3171, line: 47, baseType: !448, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3222, file: !3171, line: 48, baseType: !448, size: 32, offset: 96)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3207, file: !3171, line: 51, baseType: !448, size: 32, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3207, file: !3171, line: 52, baseType: !448, size: 32, offset: 224)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3207, file: !3171, line: 55, baseType: !3231, size: 1024, offset: 256)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 1024, elements: !460)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3207, file: !3171, line: 58, baseType: !3233, size: 2048, offset: 1280)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 2048, elements: !309)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3207, file: !3171, line: 60, baseType: !3235, size: 384, offset: 3328)
!3235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 384, elements: !3236)
!3236 = !{!3237}
!3237 = !DISubrange(count: 12)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !3171, line: 62, baseType: !3239, size: 384, offset: 3712)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3207, file: !3171, line: 62, size: 384, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3239, file: !3171, line: 63, baseType: !3235, size: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3239, file: !3171, line: 64, baseType: !3235, size: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3189, file: !3171, line: 351, baseType: !3244, size: 1088)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3171, line: 79, size: 1088, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3319}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3244, file: !3171, line: 80, baseType: !448, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3244, file: !3171, line: 81, baseType: !448, size: 32, offset: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3244, file: !3171, line: 82, baseType: !448, size: 32, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3244, file: !3171, line: 83, baseType: !448, size: 32, offset: 96)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3244, file: !3171, line: 84, baseType: !448, size: 32, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3244, file: !3171, line: 85, baseType: !448, size: 32, offset: 160)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3244, file: !3171, line: 86, baseType: !448, size: 32, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3244, file: !3171, line: 88, baseType: !3202, size: 640, offset: 224)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3244, file: !3171, line: 89, baseType: !159, size: 8, offset: 864)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3244, file: !3171, line: 90, baseType: !159, size: 8, offset: 872)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3244, file: !3171, line: 91, baseType: !159, size: 8, offset: 880)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3244, file: !3171, line: 92, baseType: !159, size: 8, offset: 888)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3244, file: !3171, line: 93, baseType: !159, size: 8, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3244, file: !3171, line: 94, baseType: !159, size: 8, offset: 904)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3244, file: !3171, line: 95, baseType: !3261, size: 64, offset: 960)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3263, line: 11, size: 128, elements: !3264)
!3263 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3264 = !{!3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3262, file: !3263, line: 12, baseType: !339, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3262, file: !3263, line: 13, baseType: !3267, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3269, line: 103, size: 1344, elements: !3270)
!3269 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3299, !3300, !3301}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3268, file: !3269, line: 109, baseType: !169, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3268, file: !3269, line: 110, baseType: !169, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3268, file: !3269, line: 111, baseType: !169, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3268, file: !3269, line: 112, baseType: !169, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3268, file: !3269, line: 113, baseType: !169, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3268, file: !3269, line: 114, baseType: !169, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3268, file: !3269, line: 117, baseType: !169, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3268, file: !3269, line: 118, baseType: !169, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3268, file: !3269, line: 119, baseType: !169, size: 64, offset: 512)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3268, file: !3269, line: 120, baseType: !169, size: 64, offset: 576)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3268, file: !3269, line: 121, baseType: !169, size: 64, offset: 640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3268, file: !3269, line: 122, baseType: !169, size: 64, offset: 704)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3268, file: !3269, line: 123, baseType: !169, size: 64, offset: 768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3268, file: !3269, line: 124, baseType: !169, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3268, file: !3269, line: 125, baseType: !169, size: 64, offset: 896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3268, file: !3269, line: 139, baseType: !169, size: 64, offset: 960)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3268, file: !3269, line: 142, baseType: !169, size: 64, offset: 1024)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !3269, line: 144, baseType: !3289, size: 64, offset: 1088)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !3269, line: 144, size: 64, elements: !3290)
!3290 = !{!3291, !3292, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3289, file: !3269, line: 146, baseType: !274, size: 16)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3289, file: !3269, line: 148, baseType: !451, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3289, file: !3269, line: 150, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3269, line: 59, size: 64, elements: !3295)
!3295 = !{!3296, !3297, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3294, file: !3269, line: 61, baseType: !451, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3294, file: !3269, line: 63, baseType: !451, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3294, file: !3269, line: 65, baseType: !451, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3268, file: !3269, line: 153, baseType: !169, size: 64, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3268, file: !3269, line: 154, baseType: !169, size: 64, offset: 1216)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !3269, line: 156, baseType: !3302, size: 64, offset: 1280)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !3269, line: 156, size: 64, elements: !3303)
!3303 = !{!3304, !3305, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3302, file: !3269, line: 158, baseType: !274, size: 16)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3302, file: !3269, line: 160, baseType: !451, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3302, file: !3269, line: 162, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3269, line: 69, size: 64, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3307, file: !3269, line: 71, baseType: !451, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3307, file: !3269, line: 73, baseType: !451, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3307, file: !3269, line: 75, baseType: !451, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3307, file: !3269, line: 77, baseType: !451, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3307, file: !3269, line: 80, baseType: !451, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3307, file: !3269, line: 83, baseType: !451, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3307, file: !3269, line: 86, baseType: !451, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3307, file: !3269, line: 88, baseType: !451, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3307, file: !3269, line: 93, baseType: !451, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3307, file: !3269, line: 100, baseType: !451, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3244, file: !3171, line: 96, baseType: !448, size: 32, offset: 1024)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3189, file: !3171, line: 352, baseType: !3321, size: 4608, align: 512)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3171, line: 333, size: 4608, align: 512, elements: !3322)
!3322 = !{!3323, !3324, !3331}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3321, file: !3171, line: 334, baseType: !3207, size: 4096, align: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3321, file: !3171, line: 335, baseType: !3325, size: 512, offset: 4096)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3171, line: 312, size: 512, elements: !3326)
!3326 = !{!3327, !3328, !3329}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3325, file: !3171, line: 313, baseType: !451, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3325, file: !3171, line: 314, baseType: !451, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3325, file: !3171, line: 315, baseType: !3330, size: 384, offset: 128)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, elements: !1280)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3321, file: !3171, line: 336, baseType: !3332, offset: 4608)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !1187)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3189, file: !3171, line: 353, baseType: !3334, size: 32768)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32768, elements: !3335)
!3335 = !{!3336}
!3336 = !DISubrange(count: 4096)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3170, file: !3171, line: 484, baseType: !3176, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3170, file: !3171, line: 491, baseType: !3339, size: 128, offset: 256)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3171, line: 404, size: 128, elements: !3340)
!3340 = !{!3341, !3342, !3343}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3339, file: !3171, line: 424, baseType: !451, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3339, file: !3171, line: 432, baseType: !7, size: 32, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3339, file: !3171, line: 440, baseType: !7, size: 32, offset: 96)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3170, file: !3171, line: 498, baseType: !3339, size: 128, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3170, file: !3171, line: 508, baseType: !3177, size: 33280, align: 512, offset: 512)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2077, file: !2078, line: 16, baseType: !1172, size: 192, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2077, file: !2078, line: 17, baseType: !215, size: 32, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !530, file: !14, line: 1240, baseType: !153, size: 64, offset: 6912)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !530, file: !14, line: 1243, baseType: !448, size: 32, offset: 6976)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !530, file: !14, line: 1245, baseType: !1251, size: 64, offset: 7040)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !530, file: !14, line: 1246, baseType: !1251, size: 64, offset: 7104)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !530, file: !14, line: 1248, baseType: !154, size: 32, offset: 7168)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !530, file: !14, line: 1249, baseType: !3354, size: 64, offset: 7232)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !530, file: !14, line: 1252, baseType: !3357, size: 256, offset: 7296)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !460)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !530, file: !14, line: 1253, baseType: !3359, size: 128, offset: 7552)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3360, line: 21, baseType: !3361)
!3360 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3360, line: 19, size: 128, elements: !3362)
!3362 = !{!3363}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3361, file: !3360, line: 20, baseType: !3364, size: 128)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !2520)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !530, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !530, file: !14, line: 1261, baseType: !639, size: 256, offset: 7744)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !530, file: !14, line: 1267, baseType: !228, size: 64, offset: 8000)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !530, file: !14, line: 1269, baseType: !476, size: 64, offset: 8064)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !530, file: !14, line: 1271, baseType: !3370, size: 448, offset: 8128)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1857, line: 63, size: 448, elements: !3371)
!3371 = !{!3372, !3377, !3378, !3379, !3380, !3381, !3382}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3370, file: !1857, line: 64, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!169, !3376, !1855}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3370, file: !1857, line: 66, baseType: !3373, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3370, file: !1857, line: 69, baseType: !339, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3370, file: !1857, line: 70, baseType: !85, size: 32, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3370, file: !1857, line: 71, baseType: !7, size: 32, offset: 224)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3370, file: !1857, line: 74, baseType: !232, size: 128, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3370, file: !1857, line: 85, baseType: !3383, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !530, file: !14, line: 1274, baseType: !643, size: 64, offset: 8576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !530, file: !14, line: 1280, baseType: !643, size: 64, offset: 8640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !530, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !530, file: !14, line: 1286, baseType: !1789, size: 32, offset: 8736)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !530, file: !14, line: 1289, baseType: !959, size: 64, offset: 8768)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !530, file: !14, line: 1290, baseType: !1007, size: 64, offset: 8832)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !530, file: !14, line: 1297, baseType: !1374, size: 64, offset: 8896)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !530, file: !14, line: 1304, baseType: !3392, size: 64, offset: 8960)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3393, line: 49, size: 64, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3394 = !{!3395}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3392, file: !3393, line: 50, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3393, line: 41, size: 512, align: 512, elements: !3398)
!3398 = !{!3399, !3400, !3405}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3397, file: !3393, line: 43, baseType: !245, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3397, file: !3393, line: 45, baseType: !3401, size: 192, offset: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3393, line: 29, size: 192, elements: !3402)
!3402 = !{!3403, !3404}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3401, file: !3393, line: 30, baseType: !232, size: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3401, file: !3393, line: 32, baseType: !339, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3397, file: !3393, line: 46, baseType: !339, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !530, file: !14, line: 1305, baseType: !3392, size: 64, offset: 9024)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !530, file: !14, line: 1306, baseType: !857, size: 128, align: 64, offset: 9088)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !530, file: !14, line: 1307, baseType: !897, size: 256, offset: 9216)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !530, file: !14, line: 1309, baseType: !639, size: 256, offset: 9472)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !530, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !530, file: !14, line: 1317, baseType: !245, size: 32, align: 512, offset: 10240)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !530, file: !14, line: 1318, baseType: !232, size: 128, offset: 10304)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !530, file: !14, line: 1320, baseType: !245, size: 32, offset: 10432)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !530, file: !14, line: 1321, baseType: !232, size: 128, offset: 10496)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !524, file: !525, line: 73, baseType: !85, size: 32, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !524, file: !525, line: 74, baseType: !3417, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1211, line: 42, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !478, file: !416, line: 141, baseType: !3421, size: 64, offset: 704)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!85, !1917, !189}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !478, file: !416, line: 142, baseType: !3425, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!414, !414, !3428}
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !415, file: !416, line: 96, baseType: !529, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !415, file: !416, line: 97, baseType: !169, size: 64, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !415, file: !416, line: 98, baseType: !153, size: 64, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !416, line: 100, baseType: !3434, size: 128, offset: 1024)
!3434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 100, size: 128, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3434, file: !416, line: 101, baseType: !232, size: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3434, file: !416, line: 102, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !415, file: !416, line: 104, baseType: !232, size: 128, offset: 1152)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !415, file: !416, line: 105, baseType: !232, size: 128, offset: 1280)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !415, file: !416, line: 113, baseType: !3442, size: 128, offset: 1408)
!3442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 109, size: 128, elements: !3443)
!3443 = !{!3444, !3445, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3442, file: !416, line: 110, baseType: !883, size: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3442, file: !416, line: 111, baseType: !430, size: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3442, file: !416, line: 112, baseType: !857, size: 128, align: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !408, file: !14, line: 1968, baseType: !3448, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!228, !414, !379, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3453, line: 10, size: 128, elements: !3454)
!3453 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3452, file: !3453, line: 11, baseType: !682, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3452, file: !3453, line: 12, baseType: !153, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !408, file: !14, line: 1969, baseType: !3458, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!85, !3417, !379, !85}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !408, file: !14, line: 1970, baseType: !3462, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!402, !379, !85, !189}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !408, file: !14, line: 1972, baseType: !3466, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!85, !414, !304, !85}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !408, file: !14, line: 1974, baseType: !3470, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!85, !3417, !379, !414, !345, !189}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !408, file: !14, line: 1976, baseType: !3474, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!85, !414, !379, !414}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !408, file: !14, line: 1977, baseType: !3478, size: 64, offset: 448)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!85, !379, !414}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !408, file: !14, line: 1978, baseType: !3482, size: 64, offset: 512)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!85, !3417, !379, !414, !228}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !408, file: !14, line: 1980, baseType: !3486, size: 64, offset: 576)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!85, !3417, !379, !414, !345}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !408, file: !14, line: 1982, baseType: !3478, size: 64, offset: 640)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !408, file: !14, line: 1983, baseType: !3491, size: 64, offset: 704)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!85, !3417, !379, !414, !345, !534}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !408, file: !14, line: 1985, baseType: !3495, size: 64, offset: 768)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!85, !3417, !379, !414, !379, !414, !7}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !408, file: !14, line: 1987, baseType: !3499, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!85, !3417, !414, !3502}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3517, !3526, !3527, !3532, !3533, !3534}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3503, file: !14, line: 227, baseType: !7, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3503, file: !14, line: 228, baseType: !345, size: 16, offset: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !14, line: 241, baseType: !3508, size: 32, offset: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !14, line: 241, size: 32, elements: !3509)
!3509 = !{!3510, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3508, file: !14, line: 242, baseType: !385, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3508, file: !14, line: 243, baseType: !3512, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3513, line: 16, baseType: !3514)
!3513 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3513, line: 14, size: 32, elements: !3515)
!3515 = !{!3516}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3514, file: !3513, line: 15, baseType: !390, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !14, line: 245, baseType: !3518, size: 32, offset: 96)
!3518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !14, line: 245, size: 32, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3518, file: !14, line: 246, baseType: !394, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3518, file: !14, line: 247, baseType: !3522, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3513, line: 20, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3513, line: 18, size: 32, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3523, file: !3513, line: 19, baseType: !398, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3503, file: !14, line: 249, baseType: !539, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3503, file: !14, line: 250, baseType: !3528, size: 128, offset: 192)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1252, line: 13, size: 128, elements: !3529)
!3529 = !{!3530, !3531}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3528, file: !1252, line: 14, baseType: !1251, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3528, file: !1252, line: 15, baseType: !339, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3503, file: !14, line: 251, baseType: !3528, size: 128, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3503, file: !14, line: 252, baseType: !3528, size: 128, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3503, file: !14, line: 259, baseType: !1419, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !408, file: !14, line: 1988, baseType: !3536, size: 64, offset: 896)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!85, !3417, !1917, !3539, !448, !7}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3541, line: 22, size: 1280, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3540, file: !3541, line: 23, baseType: !448, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3540, file: !3541, line: 24, baseType: !345, size: 16, offset: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3540, file: !3541, line: 25, baseType: !7, size: 32, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3540, file: !3541, line: 26, baseType: !1259, size: 32, offset: 96)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3540, file: !3541, line: 27, baseType: !451, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3540, file: !3541, line: 28, baseType: !451, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3540, file: !3541, line: 41, baseType: !451, size: 64, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3540, file: !3541, line: 42, baseType: !534, size: 32, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3540, file: !3541, line: 43, baseType: !534, size: 32, offset: 352)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3540, file: !3541, line: 44, baseType: !385, size: 32, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3540, file: !3541, line: 45, baseType: !394, size: 32, offset: 416)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3540, file: !3541, line: 46, baseType: !539, size: 64, offset: 448)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3540, file: !3541, line: 47, baseType: !3528, size: 128, offset: 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3540, file: !3541, line: 48, baseType: !3528, size: 128, offset: 640)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3540, file: !3541, line: 49, baseType: !3528, size: 128, offset: 768)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3540, file: !3541, line: 50, baseType: !3528, size: 128, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3540, file: !3541, line: 51, baseType: !451, size: 64, offset: 1024)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3540, file: !3541, line: 52, baseType: !451, size: 64, offset: 1088)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3540, file: !3541, line: 53, baseType: !448, size: 32, offset: 1152)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3540, file: !3541, line: 54, baseType: !448, size: 32, offset: 1184)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3540, file: !3541, line: 55, baseType: !451, size: 64, offset: 1216)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !408, file: !14, line: 1990, baseType: !3565, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!336, !414, !304, !165}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !408, file: !14, line: 1991, baseType: !3569, size: 64, offset: 1024)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!85, !379, !3572, !451, !451}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !408, file: !14, line: 1993, baseType: !3575, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!85, !379, !85}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !408, file: !14, line: 1994, baseType: !3579, size: 64, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!85, !379, !414, !1419, !7, !345}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !408, file: !14, line: 1997, baseType: !3583, size: 64, offset: 1216)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!85, !3417, !379, !1419, !345}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !408, file: !14, line: 1999, baseType: !3587, size: 64, offset: 1280)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!402, !3417, !414, !85}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !408, file: !14, line: 2001, baseType: !3591, size: 64, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!85, !3417, !414, !402, !85}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !408, file: !14, line: 2003, baseType: !3595, size: 64, offset: 1408)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!85, !3417, !414, !3598}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !408, file: !14, line: 2005, baseType: !3601, size: 64, offset: 1472)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!85, !414, !3598}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !408, file: !14, line: 2006, baseType: !3605, size: 64, offset: 1536)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!3608, !379}
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3610)
!3610 = !{!3611, !3618}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3609, file: !14, line: 3193, baseType: !3612, size: 128)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3613, line: 296, size: 128, elements: !3614)
!3613 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3614 = !{!3615, !3616, !3617}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3612, file: !3613, line: 297, baseType: !245, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3612, file: !3613, line: 299, baseType: !156, size: 32, offset: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3612, file: !3613, line: 300, baseType: !153, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3609, file: !14, line: 3194, baseType: !448, size: 32, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !380, file: !14, line: 655, baseType: !529, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !380, file: !14, line: 656, baseType: !375, size: 64, offset: 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !380, file: !14, line: 659, baseType: !153, size: 64, offset: 576)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !380, file: !14, line: 663, baseType: !169, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !14, line: 671, baseType: !3624, size: 32, offset: 704)
!3624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !14, line: 671, size: 32, elements: !3625)
!3625 = !{!3626, !3627}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3624, file: !14, line: 672, baseType: !192, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3624, file: !14, line: 673, baseType: !7, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !380, file: !14, line: 675, baseType: !534, size: 32, offset: 736)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !380, file: !14, line: 676, baseType: !539, size: 64, offset: 768)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !380, file: !14, line: 677, baseType: !3528, size: 128, offset: 832)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !380, file: !14, line: 678, baseType: !3528, size: 128, offset: 960)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !380, file: !14, line: 679, baseType: !3528, size: 128, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !380, file: !14, line: 680, baseType: !245, size: 32, offset: 1216)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !380, file: !14, line: 681, baseType: !164, size: 16, offset: 1248)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !380, file: !14, line: 682, baseType: !159, size: 8, offset: 1264)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !380, file: !14, line: 683, baseType: !159, size: 8, offset: 1272)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !380, file: !14, line: 684, baseType: !1990, size: 64, offset: 1280)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !380, file: !14, line: 691, baseType: !169, size: 64, offset: 1344)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !380, file: !14, line: 692, baseType: !1235, size: 320, offset: 1408)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !380, file: !14, line: 694, baseType: !169, size: 64, offset: 1728)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !380, file: !14, line: 695, baseType: !169, size: 64, offset: 1792)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !380, file: !14, line: 697, baseType: !883, size: 128, offset: 1856)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !380, file: !14, line: 698, baseType: !232, size: 128, offset: 1984)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !380, file: !14, line: 707, baseType: !232, size: 128, offset: 2112)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !380, file: !14, line: 708, baseType: !232, size: 128, offset: 2240)
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !14, line: 709, baseType: !3647, size: 128, offset: 2368)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !14, line: 709, size: 128, elements: !3648)
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3647, file: !14, line: 710, baseType: !1007, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3647, file: !14, line: 711, baseType: !857, size: 128, align: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !380, file: !14, line: 713, baseType: !645, size: 64, offset: 2496)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !380, file: !14, line: 714, baseType: !645, size: 64, offset: 2560)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !380, file: !14, line: 715, baseType: !215, size: 32, offset: 2624)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !380, file: !14, line: 716, baseType: !215, size: 32, offset: 2656)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !380, file: !14, line: 717, baseType: !215, size: 32, offset: 2688)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !380, file: !14, line: 719, baseType: !215, size: 32, offset: 2720)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !14, line: 721, baseType: !3658, size: 64, offset: 2752)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !14, line: 721, size: 64, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3658, file: !14, line: 722, baseType: !1410, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3658, file: !14, line: 723, baseType: !1030, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !380, file: !14, line: 725, baseType: !3663, size: 64, offset: 2816)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !380, file: !14, line: 726, baseType: !376, size: 1536, align: 64, offset: 2880)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !380, file: !14, line: 727, baseType: !232, size: 128, offset: 4416)
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !14, line: 728, baseType: !3668, size: 64, offset: 4544)
!3668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !14, line: 728, size: 64, elements: !3669)
!3669 = !{!3670, !3671, !3674, !3675}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3668, file: !14, line: 729, baseType: !1738, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3668, file: !14, line: 730, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3668, file: !14, line: 731, baseType: !304, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3668, file: !14, line: 732, baseType: !7, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !380, file: !14, line: 735, baseType: !154, size: 32, offset: 4608)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !380, file: !14, line: 738, baseType: !154, size: 32, offset: 4640)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !380, file: !14, line: 739, baseType: !3354, size: 64, offset: 4672)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !380, file: !14, line: 750, baseType: !153, size: 64, offset: 4736)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !376, file: !14, line: 474, baseType: !3612, size: 128, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !376, file: !14, line: 475, baseType: !1235, size: 320, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !376, file: !14, line: 476, baseType: !156, size: 32, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !376, file: !14, line: 477, baseType: !215, size: 32, offset: 544)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !376, file: !14, line: 482, baseType: !2264, size: 128, offset: 576)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !376, file: !14, line: 483, baseType: !169, size: 64, offset: 704)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !376, file: !14, line: 484, baseType: !169, size: 64, offset: 768)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !376, file: !14, line: 485, baseType: !3688, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3690)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3691)
!3691 = !{!3692, !3696, !3766, !3770, !3774, !3780, !3784, !3788, !3793, !3797, !3801, !3805, !3806, !3810, !3814, !3818, !3823, !3827, !3834, !3835}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3690, file: !14, line: 405, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!85, !2941, !1042}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3690, file: !14, line: 406, baseType: !3697, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!85, !1419, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1495, line: 293, size: 1536, elements: !3702)
!3702 = !{!3703, !3733, !3747}
!3703 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !1495, line: 295, baseType: !3704, size: 512)
!3704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !1495, line: 295, size: 512, elements: !3705)
!3705 = !{!3706, !3732}
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !1495, line: 296, baseType: !3707, size: 448)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !1495, line: 296, size: 448, elements: !3708)
!3708 = !{!3709, !3710, !3719, !3720, !3721, !3730, !3731}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3707, file: !1495, line: 298, baseType: !169, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !1495, line: 299, baseType: !3711, size: 128, offset: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3707, file: !1495, line: 299, size: 128, elements: !3712)
!3712 = !{!3713, !3714}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3711, file: !1495, line: 300, baseType: !232, size: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !3711, file: !1495, line: 302, baseType: !3715, size: 128)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3711, file: !1495, line: 302, size: 128, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3715, file: !1495, line: 303, baseType: !153, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3715, file: !1495, line: 305, baseType: !7, size: 32, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3707, file: !1495, line: 310, baseType: !375, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3707, file: !1495, line: 311, baseType: !169, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !1495, line: 312, baseType: !3722, size: 64, offset: 320)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3707, file: !1495, line: 312, size: 64, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3722, file: !1495, line: 313, baseType: !153, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3722, file: !1495, line: 314, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1495, line: 257, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1495, line: 255, size: 64, elements: !3728)
!3728 = !{!3729}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3727, file: !1495, line: 256, baseType: !169, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3707, file: !1495, line: 316, baseType: !215, size: 32, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3707, file: !1495, line: 317, baseType: !215, size: 32, offset: 416)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3704, file: !1495, line: 323, baseType: !2942, size: 512, align: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !1495, line: 325, baseType: !3734, size: 512, offset: 512)
!3734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !1495, line: 325, size: 512, elements: !3735)
!3735 = !{!3736, !3746}
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !3734, file: !1495, line: 326, baseType: !3737, size: 320)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3734, file: !1495, line: 326, size: 320, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3737, file: !1495, line: 327, baseType: !169, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3737, file: !1495, line: 328, baseType: !169, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3737, file: !1495, line: 329, baseType: !169, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3737, file: !1495, line: 331, baseType: !215, size: 32, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3737, file: !1495, line: 332, baseType: !215, size: 32, offset: 224)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3737, file: !1495, line: 333, baseType: !215, size: 32, offset: 256)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3737, file: !1495, line: 335, baseType: !7, size: 32, offset: 288)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3734, file: !1495, line: 339, baseType: !2942, size: 512, align: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !1495, line: 341, baseType: !3748, size: 512, offset: 1024)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !1495, line: 341, size: 512, elements: !3749)
!3749 = !{!3750, !3759, !3765}
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !3748, file: !1495, line: 342, baseType: !3751, size: 384)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3748, file: !1495, line: 342, size: 384, elements: !3752)
!3752 = !{!3753, !3754, !3755, !3756, !3757, !3758}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3751, file: !1495, line: 343, baseType: !169, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3751, file: !1495, line: 344, baseType: !169, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3751, file: !1495, line: 346, baseType: !153, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3751, file: !1495, line: 347, baseType: !153, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3751, file: !1495, line: 348, baseType: !153, size: 64, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3751, file: !1495, line: 349, baseType: !153, size: 64, offset: 320)
!3759 = !DIDerivedType(tag: DW_TAG_member, scope: !3748, file: !1495, line: 352, baseType: !3760, size: 256)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3748, file: !1495, line: 352, size: 256, elements: !3761)
!3761 = !{!3762, !3763, !3764}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3760, file: !1495, line: 353, baseType: !169, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3760, file: !1495, line: 354, baseType: !169, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3760, file: !1495, line: 356, baseType: !232, size: 128, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3748, file: !1495, line: 359, baseType: !2942, size: 512, align: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3690, file: !14, line: 409, baseType: !3767, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!85, !375, !1042}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3690, file: !14, line: 412, baseType: !3771, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!189, !375, !3700}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3690, file: !14, line: 414, baseType: !3775, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3690, file: !14, line: 416, baseType: !3781, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!85, !1419, !375, !539, !7, !3103, !1754}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3690, file: !14, line: 419, baseType: !3785, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!85, !1419, !375, !539, !7, !7, !2941, !153}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3690, file: !14, line: 424, baseType: !3789, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3792, !375, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !157, line: 131, baseType: !451)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3690, file: !14, line: 425, baseType: !3794, size: 64, offset: 512)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3700, !165, !165}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3690, file: !14, line: 426, baseType: !3798, size: 64, offset: 576)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!189, !3700, !156}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3690, file: !14, line: 427, baseType: !3802, size: 64, offset: 640)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3700}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3690, file: !14, line: 428, baseType: !1429, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3690, file: !14, line: 433, baseType: !3807, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!85, !375, !3700, !3700, !50}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3690, file: !14, line: 435, baseType: !3811, size: 64, offset: 832)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!85, !3700}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3690, file: !14, line: 436, baseType: !3815, size: 64, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!189, !3700, !165, !165}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3690, file: !14, line: 438, baseType: !3819, size: 64, offset: 960)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3700, !3822, !3822}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3690, file: !14, line: 439, baseType: !3824, size: 64, offset: 1024)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!85, !375, !2941}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3690, file: !14, line: 442, baseType: !3828, size: 64, offset: 1088)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!85, !3831, !1419, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3690, file: !14, line: 444, baseType: !1746, size: 64, offset: 1152)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3690, file: !14, line: 445, baseType: !3836, size: 64, offset: 1216)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!85, !1432, !1454}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !14, line: 486, baseType: !169, size: 64, offset: 896)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !376, file: !14, line: 487, baseType: !1235, size: 320, offset: 960)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !376, file: !14, line: 488, baseType: !1789, size: 32, offset: 1280)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !376, file: !14, line: 489, baseType: !245, size: 32, offset: 1312)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !376, file: !14, line: 490, baseType: !232, size: 128, offset: 1344)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !376, file: !14, line: 491, baseType: !153, size: 64, offset: 1472)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !366, file: !330, line: 180, baseType: !3846, size: 64, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!336, !1419, !238, !365, !304, !539, !165}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !366, file: !330, line: 182, baseType: !3846, size: 64, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !366, file: !330, line: 184, baseType: !3851, size: 64, offset: 448)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!85, !1419, !238, !365, !1493}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !354, file: !330, line: 90, baseType: !3855, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !354, file: !330, line: 91, baseType: !3857, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !320, file: !225, line: 120, baseType: !3859, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!3862, !287}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3864)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3865)
!3865 = !{!3866, !3867, !3871, !3875, !3881, !3885}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3864, file: !58, line: 40, baseType: !57, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3864, file: !58, line: 41, baseType: !3868, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!189}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3864, file: !58, line: 42, baseType: !3872, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!153}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3864, file: !58, line: 43, baseType: !3876, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!1622, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3864, file: !58, line: 44, baseType: !3882, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!1622}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3864, file: !58, line: 45, baseType: !682, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !320, file: !225, line: 121, baseType: !3887, size: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!1622, !287}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !320, file: !225, line: 122, baseType: !3891, size: 64, offset: 320)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !287, !3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !224, file: !225, line: 70, baseType: !3897, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !554, line: 190, size: 1152, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3979, !3980, !3981, !3982, !3983, !3986}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3898, file: !554, line: 191, baseType: !215, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3898, file: !554, line: 192, baseType: !215, size: 32, offset: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3898, file: !554, line: 202, baseType: !3897, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3898, file: !554, line: 203, baseType: !228, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3898, file: !554, line: 205, baseType: !749, size: 192, align: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3898, file: !554, line: 207, baseType: !1622, size: 64, offset: 384)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3898, file: !554, line: 208, baseType: !7, size: 32, offset: 448)
!3907 = !DIDerivedType(tag: DW_TAG_member, scope: !3898, file: !554, line: 209, baseType: !3908, size: 256, offset: 512)
!3908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3898, file: !554, line: 209, size: 256, elements: !3909)
!3909 = !{!3910, !3919, !3923}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3908, file: !554, line: 210, baseType: !3911, size: 256)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !554, line: 153, size: 256, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3918}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3911, file: !554, line: 154, baseType: !169, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3911, file: !554, line: 156, baseType: !2267, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3911, file: !554, line: 162, baseType: !3916, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !554, line: 162, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3911, file: !554, line: 167, baseType: !169, size: 64, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3908, file: !554, line: 211, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !554, line: 170, size: 64, elements: !3921)
!3921 = !{!3922}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3920, file: !554, line: 171, baseType: !3897, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3908, file: !554, line: 212, baseType: !3924, size: 256)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !554, line: 174, size: 256, elements: !3925)
!3925 = !{!3926, !3974, !3977, !3978}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3924, file: !554, line: 175, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3929)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !554, line: 271, size: 768, elements: !3930)
!3930 = !{!3931, !3951, !3955, !3956, !3957, !3958, !3959, !3963, !3964, !3965, !3966, !3970}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3929, file: !554, line: 276, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!85, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !554, line: 251, size: 1216, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3936, file: !554, line: 253, baseType: !3897, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3936, file: !554, line: 254, baseType: !1419, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3936, file: !554, line: 255, baseType: !1079, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3936, file: !554, line: 256, baseType: !153, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3936, file: !554, line: 259, baseType: !639, size: 256, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3936, file: !554, line: 260, baseType: !639, size: 256, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3936, file: !554, line: 261, baseType: !85, size: 32, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3936, file: !554, line: 262, baseType: !232, size: 128, offset: 832)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3936, file: !554, line: 263, baseType: !304, size: 64, offset: 960)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3936, file: !554, line: 265, baseType: !165, size: 64, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3936, file: !554, line: 266, baseType: !189, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3936, file: !554, line: 267, baseType: !189, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3936, file: !554, line: 268, baseType: !1691, size: 64, offset: 1152)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3929, file: !554, line: 277, baseType: !3952, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !3935}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3929, file: !554, line: 290, baseType: !1110, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3929, file: !554, line: 292, baseType: !1097, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3929, file: !554, line: 293, baseType: !1106, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3929, file: !554, line: 294, baseType: !1102, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3929, file: !554, line: 296, baseType: !3960, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!336, !3935, !304, !165, !539}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3929, file: !554, line: 306, baseType: !165, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3929, file: !554, line: 313, baseType: !189, size: 8, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3929, file: !554, line: 314, baseType: !3960, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3929, file: !554, line: 317, baseType: !3967, size: 64, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!1481, !3935, !1482}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3929, file: !554, line: 320, baseType: !3971, size: 64, offset: 704)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!85, !3935, !1493}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3924, file: !554, line: 176, baseType: !3975, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !554, line: 35, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3924, file: !554, line: 177, baseType: !539, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3924, file: !554, line: 178, baseType: !3897, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3898, file: !554, line: 215, baseType: !153, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3898, file: !554, line: 221, baseType: !451, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3898, file: !554, line: 223, baseType: !164, size: 16, offset: 896)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3898, file: !554, line: 224, baseType: !345, size: 16, offset: 912)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3898, file: !554, line: 225, baseType: !3984, size: 64, offset: 960)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !554, line: 36, flags: DIFlagFwdDecl)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3898, file: !554, line: 227, baseType: !857, size: 128, align: 64, offset: 1024)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !224, file: !225, line: 71, baseType: !206, size: 32, offset: 448)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !224, file: !225, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !224, file: !225, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !224, file: !225, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !224, file: !225, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !224, file: !225, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !70, line: 707, baseType: !220, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !221, file: !70, line: 709, baseType: !3995, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !221, file: !70, line: 711, baseType: !228, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !221, file: !70, line: 712, baseType: !3999, size: 64, offset: 704)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4001)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4011, !4016, !4020}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4001, file: !70, line: 90, baseType: !228, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4001, file: !70, line: 91, baseType: !351, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4001, file: !70, line: 92, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!85, !4009, !299}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4001, file: !70, line: 93, baseType: !4012, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!304, !4009, !4015, !3894, !3895}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4001, file: !70, line: 95, baseType: !4017, size: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !220}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4001, file: !70, line: 97, baseType: !4021, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4024)
!4024 = !{!4025, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4023, file: !77, line: 287, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!85, !220}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4023, file: !77, line: 288, baseType: !4017, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4023, file: !77, line: 289, baseType: !4026, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4023, file: !77, line: 290, baseType: !4026, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4023, file: !77, line: 291, baseType: !4026, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4023, file: !77, line: 292, baseType: !4026, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4023, file: !77, line: 293, baseType: !4026, size: 64, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4023, file: !77, line: 294, baseType: !4026, size: 64, offset: 448)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4023, file: !77, line: 295, baseType: !4026, size: 64, offset: 512)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4023, file: !77, line: 296, baseType: !4026, size: 64, offset: 576)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4023, file: !77, line: 297, baseType: !4026, size: 64, offset: 640)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4023, file: !77, line: 298, baseType: !4026, size: 64, offset: 704)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4023, file: !77, line: 299, baseType: !4026, size: 64, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4023, file: !77, line: 300, baseType: !4026, size: 64, offset: 832)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4023, file: !77, line: 301, baseType: !4026, size: 64, offset: 896)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4023, file: !77, line: 302, baseType: !4026, size: 64, offset: 960)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4023, file: !77, line: 303, baseType: !4026, size: 64, offset: 1024)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4023, file: !77, line: 304, baseType: !4026, size: 64, offset: 1088)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4023, file: !77, line: 305, baseType: !4026, size: 64, offset: 1152)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4023, file: !77, line: 306, baseType: !4026, size: 64, offset: 1216)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4023, file: !77, line: 307, baseType: !4026, size: 64, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4023, file: !77, line: 308, baseType: !4026, size: 64, offset: 1344)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4023, file: !77, line: 309, baseType: !4026, size: 64, offset: 1408)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !221, file: !70, line: 714, baseType: !4052, size: 64, offset: 768)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4054)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4055, line: 80, size: 1344, elements: !4056)
!4055 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4120}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4054, file: !4055, line: 81, baseType: !228, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4054, file: !4055, line: 82, baseType: !228, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4054, file: !4055, line: 83, baseType: !351, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4054, file: !4055, line: 84, baseType: !351, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4054, file: !4055, line: 85, baseType: !351, size: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4054, file: !4055, line: 87, baseType: !4063, size: 64, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!85, !220, !4066}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074, !4075, !4079, !4083, !4084, !4085, !4086, !4087, !4095, !4096, !4097, !4098, !4099, !4100}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4067, file: !64, line: 97, baseType: !228, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4067, file: !64, line: 98, baseType: !4052, size: 64, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4067, file: !64, line: 100, baseType: !568, size: 64, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4067, file: !64, line: 101, baseType: !228, size: 64, offset: 192)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4067, file: !64, line: 103, baseType: !189, size: 8, offset: 256)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4067, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4067, file: !64, line: 106, baseType: !4076, size: 64, offset: 320)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4078)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4067, file: !64, line: 107, baseType: !4080, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4082)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4067, file: !64, line: 109, baseType: !4026, size: 64, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4067, file: !64, line: 110, baseType: !4017, size: 64, offset: 512)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4067, file: !64, line: 111, baseType: !4026, size: 64, offset: 576)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4067, file: !64, line: 112, baseType: !4017, size: 64, offset: 640)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4067, file: !64, line: 113, baseType: !4088, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!85, !220, !4091}
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4092)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4093)
!4093 = !{!4094}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4092, file: !77, line: 59, baseType: !85, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4067, file: !64, line: 114, baseType: !4026, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4067, file: !64, line: 115, baseType: !351, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4067, file: !64, line: 116, baseType: !351, size: 64, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4067, file: !64, line: 118, baseType: !4021, size: 64, offset: 960)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4067, file: !64, line: 119, baseType: !4017, size: 64, offset: 1024)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4067, file: !64, line: 121, baseType: !4101, size: 64, offset: 1088)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4054, file: !4055, line: 88, baseType: !4006, size: 64, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4054, file: !4055, line: 89, baseType: !4026, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4054, file: !4055, line: 90, baseType: !4017, size: 64, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4054, file: !4055, line: 91, baseType: !4017, size: 64, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4054, file: !4055, line: 92, baseType: !4017, size: 64, offset: 640)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4054, file: !4055, line: 94, baseType: !4026, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4054, file: !4055, line: 95, baseType: !4026, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4054, file: !4055, line: 97, baseType: !4088, size: 64, offset: 832)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4054, file: !4055, line: 98, baseType: !4026, size: 64, offset: 896)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4054, file: !4055, line: 100, baseType: !4026, size: 64, offset: 960)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4054, file: !4055, line: 102, baseType: !4026, size: 64, offset: 1024)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4054, file: !4055, line: 103, baseType: !4017, size: 64, offset: 1088)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4054, file: !4055, line: 105, baseType: !4021, size: 64, offset: 1152)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4054, file: !4055, line: 107, baseType: !4117, size: 64, offset: 1216)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4055, line: 107, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4054, file: !4055, line: 109, baseType: !189, size: 8, offset: 1280)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !221, file: !70, line: 715, baseType: !4066, size: 64, offset: 832)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !221, file: !70, line: 717, baseType: !153, size: 64, offset: 896)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !221, file: !70, line: 719, baseType: !153, size: 64, offset: 960)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !221, file: !70, line: 721, baseType: !639, size: 256, offset: 1024)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !221, file: !70, line: 725, baseType: !4126, size: 448, offset: 1280)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4126, file: !70, line: 518, baseType: !232, size: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4126, file: !70, line: 519, baseType: !232, size: 128, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4126, file: !70, line: 520, baseType: !232, size: 128, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4126, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !221, file: !70, line: 726, baseType: !4133, size: 2496, offset: 1728)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4217, !4221}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4133, file: !77, line: 664, baseType: !4091, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4133, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4133, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4133, file: !77, line: 667, baseType: !189, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4133, file: !77, line: 668, baseType: !189, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4133, file: !77, line: 669, baseType: !189, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4133, file: !77, line: 670, baseType: !189, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4133, file: !77, line: 671, baseType: !189, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4133, file: !77, line: 672, baseType: !189, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4133, file: !77, line: 673, baseType: !189, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4133, file: !77, line: 674, baseType: !189, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4133, file: !77, line: 675, baseType: !448, size: 32, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4133, file: !77, line: 676, baseType: !245, size: 32, offset: 96)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4133, file: !77, line: 678, baseType: !232, size: 128, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4133, file: !77, line: 679, baseType: !588, size: 256, offset: 256)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4133, file: !77, line: 680, baseType: !4151, size: 64, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4153, line: 43, size: 1536, elements: !4154)
!4153 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4154 = !{!4155, !4156, !4157, !4158, !4159, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4152, file: !4153, line: 44, baseType: !228, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4152, file: !4153, line: 45, baseType: !85, size: 32, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4152, file: !4153, line: 46, baseType: !232, size: 128, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4152, file: !4153, line: 47, baseType: !245, size: 32, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4152, file: !4153, line: 48, baseType: !4160, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4152, file: !4153, line: 49, baseType: !879, size: 320, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4152, file: !4153, line: 50, baseType: !169, size: 64, offset: 704)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4152, file: !4153, line: 51, baseType: !2213, size: 64, offset: 768)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4152, file: !4153, line: 52, baseType: !2213, size: 64, offset: 832)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4152, file: !4153, line: 53, baseType: !2213, size: 64, offset: 896)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4152, file: !4153, line: 54, baseType: !2213, size: 64, offset: 960)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4152, file: !4153, line: 55, baseType: !2213, size: 64, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4152, file: !4153, line: 56, baseType: !169, size: 64, offset: 1088)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4152, file: !4153, line: 57, baseType: !169, size: 64, offset: 1152)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4152, file: !4153, line: 58, baseType: !169, size: 64, offset: 1216)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4152, file: !4153, line: 59, baseType: !169, size: 64, offset: 1280)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4152, file: !4153, line: 60, baseType: !169, size: 64, offset: 1344)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4152, file: !4153, line: 61, baseType: !220, size: 64, offset: 1408)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4152, file: !4153, line: 62, baseType: !189, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4152, file: !4153, line: 63, baseType: !189, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4133, file: !77, line: 681, baseType: !189, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4133, file: !77, line: 682, baseType: !189, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4133, file: !77, line: 683, baseType: !189, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4133, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4133, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4133, file: !77, line: 690, baseType: !2205, size: 512, offset: 640)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4133, file: !77, line: 691, baseType: !451, size: 64, offset: 1152)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4133, file: !77, line: 692, baseType: !897, size: 256, offset: 1216)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4133, file: !77, line: 693, baseType: !1172, size: 192, offset: 1472)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4133, file: !77, line: 694, baseType: !4160, size: 64, offset: 1664)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4133, file: !77, line: 695, baseType: !215, size: 32, offset: 1728)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4133, file: !77, line: 696, baseType: !215, size: 32, offset: 1760)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4133, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4133, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4133, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4133, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4133, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4133, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4133, file: !77, line: 703, baseType: !189, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4133, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4133, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4133, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4133, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4133, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4133, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4133, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4133, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4133, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4133, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4133, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4133, file: !77, line: 715, baseType: !451, size: 64, offset: 2048)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4133, file: !77, line: 716, baseType: !451, size: 64, offset: 2112)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4133, file: !77, line: 717, baseType: !451, size: 64, offset: 2176)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4133, file: !77, line: 718, baseType: !451, size: 64, offset: 2240)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4133, file: !77, line: 720, baseType: !4212, size: 64, offset: 2304)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4214)
!4214 = !{!4215, !4216}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4213, file: !77, line: 633, baseType: !245, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4213, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4133, file: !77, line: 721, baseType: !4218, size: 64, offset: 2368)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !220, !635}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4133, file: !77, line: 722, baseType: !4222, size: 64, offset: 2432)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !221, file: !70, line: 727, baseType: !4225, size: 64, offset: 4224)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4227)
!4227 = !{!4228, !4229, !4230, !4234, !4235, !4236}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4226, file: !77, line: 743, baseType: !4023, size: 1472)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4226, file: !77, line: 744, baseType: !4026, size: 64, offset: 1472)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4226, file: !77, line: 745, baseType: !4231, size: 64, offset: 1536)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{null, !220, !189}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4226, file: !77, line: 746, baseType: !4026, size: 64, offset: 1600)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4226, file: !77, line: 747, baseType: !4017, size: 64, offset: 1664)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4226, file: !77, line: 748, baseType: !4017, size: 64, offset: 1728)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !221, file: !70, line: 736, baseType: !4238, size: 128, offset: 4288)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4239)
!4239 = !{!4240, !4244}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4238, file: !70, line: 531, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4243, line: 13, flags: DIFlagFwdDecl)
!4243 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4238, file: !70, line: 532, baseType: !4245, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !221, file: !70, line: 738, baseType: !4248, size: 64, offset: 4416)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4250)
!4250 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !221, file: !70, line: 740, baseType: !4252, size: 64, offset: 4480)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !221, file: !70, line: 741, baseType: !451, size: 64, offset: 4544)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !221, file: !70, line: 746, baseType: !451, size: 64, offset: 4608)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !221, file: !70, line: 747, baseType: !4256, size: 64, offset: 4672)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4258)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !221, file: !70, line: 749, baseType: !4260, size: 64, offset: 4736)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4262)
!4262 = !{!4263, !4264, !4265}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4261, file: !70, line: 433, baseType: !7, size: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4261, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4261, file: !70, line: 435, baseType: !169, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !221, file: !70, line: 751, baseType: !232, size: 128, offset: 4800)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !221, file: !70, line: 762, baseType: !4268, size: 64, offset: 4928)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !221, file: !70, line: 770, baseType: !4271, offset: 4992)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4272, line: 5, elements: !926)
!4272 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !221, file: !70, line: 772, baseType: !4274, size: 64, offset: 4992)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4276, line: 18, flags: DIFlagFwdDecl)
!4276 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !221, file: !70, line: 773, baseType: !4278, size: 64, offset: 5056)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4280, line: 41, size: 512, elements: !4281)
!4280 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4281 = !{!4282, !4283, !4377, !4378, !4379, !4380}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4279, file: !4280, line: 42, baseType: !4278, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4279, file: !4280, line: 43, baseType: !4284, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4280, line: 125, size: 1408, elements: !4287)
!4287 = !{!4288, !4292, !4296, !4302, !4306, !4307, !4312, !4316, !4320, !4324, !4328, !4329, !4333, !4337, !4341, !4352, !4353, !4354, !4355, !4365, !4369, !4373}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4286, file: !4280, line: 126, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!4278, !4278}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4286, file: !4280, line: 127, baseType: !4293, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{null, !4278}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4286, file: !4280, line: 128, baseType: !4297, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!189, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4279)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4286, file: !4280, line: 129, baseType: !4303, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!1622, !4300, !4009}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4286, file: !4280, line: 131, baseType: !4297, size: 64, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4286, file: !4280, line: 133, baseType: !4308, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!4311, !4300}
!4311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4280, line: 132, flags: DIFlagFwdDecl)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4286, file: !4280, line: 134, baseType: !4313, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!189, !4300, !228}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4286, file: !4280, line: 136, baseType: !4317, size: 64, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!85, !4300, !228, !7, !153, !165}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4286, file: !4280, line: 141, baseType: !4321, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!85, !4300, !228, !974, !165}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4286, file: !4280, line: 144, baseType: !4325, size: 64, offset: 576)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!228, !4300}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4286, file: !4280, line: 145, baseType: !4325, size: 64, offset: 640)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4286, file: !4280, line: 146, baseType: !4330, size: 64, offset: 704)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!4278, !4300}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4286, file: !4280, line: 148, baseType: !4334, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4278, !4300, !4278}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4286, file: !4280, line: 151, baseType: !4338, size: 64, offset: 832)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!4278, !4300, !228}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4286, file: !4280, line: 153, baseType: !4342, size: 64, offset: 896)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!85, !4300, !228, !228, !7, !7, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4280, line: 94, size: 640, elements: !4347)
!4347 = !{!4348, !4349, !4350}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4346, file: !4280, line: 95, baseType: !4278, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4346, file: !4280, line: 96, baseType: !7, size: 32, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4346, file: !4280, line: 97, baseType: !4351, size: 512, offset: 128)
!4351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 512, elements: !2248)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4286, file: !4280, line: 158, baseType: !4334, size: 64, offset: 960)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4286, file: !4280, line: 161, baseType: !4330, size: 64, offset: 1024)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4286, file: !4280, line: 163, baseType: !4289, size: 64, offset: 1088)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4286, file: !4280, line: 164, baseType: !4356, size: 64, offset: 1152)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!85, !4300, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4280, line: 73, size: 128, elements: !4361)
!4361 = !{!4362, !4363, !4364}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4360, file: !4280, line: 74, baseType: !7, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4360, file: !4280, line: 75, baseType: !7, size: 32, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4360, file: !4280, line: 76, baseType: !4300, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4286, file: !4280, line: 166, baseType: !4366, size: 64, offset: 1216)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!153, !4278, !85}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4286, file: !4280, line: 167, baseType: !4370, size: 64, offset: 1280)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!85, !4300, !7}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4286, file: !4280, line: 168, baseType: !4374, size: 64, offset: 1344)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!85, !4278}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4279, file: !4280, line: 44, baseType: !220, size: 64, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4279, file: !4280, line: 45, baseType: !232, size: 128, offset: 192)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4279, file: !4280, line: 46, baseType: !232, size: 128, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4279, file: !4280, line: 47, baseType: !159, size: 8, offset: 448)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !221, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !221, file: !70, line: 778, baseType: !534, size: 32, offset: 5152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !221, file: !70, line: 779, baseType: !448, size: 32, offset: 5184)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !221, file: !70, line: 781, baseType: !245, size: 32, offset: 5216)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !221, file: !70, line: 782, baseType: !232, size: 128, offset: 5248)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !221, file: !70, line: 784, baseType: !4387, size: 64, offset: 5376)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4389)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4390, line: 52, size: 768, elements: !4391)
!4390 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4400, !4404, !4405, !4406, !4407, !4411, !4415}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4389, file: !4390, line: 53, baseType: !228, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4389, file: !4390, line: 55, baseType: !351, size: 64, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4389, file: !4390, line: 56, baseType: !351, size: 64, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4389, file: !4390, line: 58, baseType: !4006, size: 64, offset: 192)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4389, file: !4390, line: 59, baseType: !4397, size: 64, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!304, !4009, !4015}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4389, file: !4390, line: 61, baseType: !4401, size: 64, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{null, !4387}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4389, file: !4390, line: 62, baseType: !4017, size: 64, offset: 384)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4389, file: !4390, line: 64, baseType: !4026, size: 64, offset: 448)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4389, file: !4390, line: 66, baseType: !3862, size: 64, offset: 512)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4389, file: !4390, line: 67, baseType: !4408, size: 64, offset: 576)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!1622, !4009}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4389, file: !4390, line: 69, baseType: !4412, size: 64, offset: 640)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4009, !3894, !3895}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4389, file: !4390, line: 71, baseType: !4021, size: 64, offset: 704)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !221, file: !70, line: 785, baseType: !351, size: 64, offset: 5440)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !221, file: !70, line: 787, baseType: !4017, size: 64, offset: 5504)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !221, file: !70, line: 788, baseType: !4419, size: 64, offset: 5568)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !221, file: !70, line: 789, baseType: !4422, size: 64, offset: 5632)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !221, file: !70, line: 791, baseType: !4425, size: 64, offset: 5696)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4426, file: !70, line: 598, baseType: !92, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4426, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4426, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4426, file: !70, line: 601, baseType: !189, size: 8, offset: 96)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4426, file: !70, line: 602, baseType: !189, size: 8, offset: 104)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !221, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !221, file: !70, line: 795, baseType: !189, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !221, file: !70, line: 796, baseType: !189, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !221, file: !70, line: 797, baseType: !189, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !221, file: !70, line: 798, baseType: !189, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !221, file: !70, line: 799, baseType: !189, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !202, file: !118, line: 73, baseType: !4440, size: 256, offset: 128)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !118, line: 66, size: 256, elements: !4441)
!4441 = !{!4442, !4443, !4444}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4440, file: !118, line: 68, baseType: !232, size: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4440, file: !118, line: 70, baseType: !153, size: 64, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4440, file: !118, line: 72, baseType: !245, size: 32, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !202, file: !118, line: 76, baseType: !4446, size: 64, offset: 384)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4449, line: 42, flags: DIFlagFwdDecl)
!4449 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !202, file: !118, line: 88, baseType: !153, size: 64, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !202, file: !118, line: 98, baseType: !4452, size: 64, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !118, line: 13, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !202, file: !118, line: 107, baseType: !4452, size: 64, offset: 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !202, file: !118, line: 110, baseType: !4452, size: 64, offset: 640)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !202, file: !118, line: 117, baseType: !189, size: 8, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !202, file: !118, line: 125, baseType: !4458, size: 64, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4460, line: 65, size: 1280, elements: !4461)
!4460 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4473, !4474, !4475, !4476, !4477, !4478, !4479}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4459, file: !4460, line: 66, baseType: !206, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4459, file: !4460, line: 67, baseType: !201, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4459, file: !4460, line: 72, baseType: !304, size: 64, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4459, file: !4460, line: 77, baseType: !85, size: 32, offset: 192)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4459, file: !4460, line: 82, baseType: !4467, size: 192, offset: 256)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4468, line: 19, size: 192, elements: !4469)
!4468 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4469 = !{!4470, !4471, !4472}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4467, file: !4468, line: 20, baseType: !3612, size: 128)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4467, file: !4468, line: 21, baseType: !7, size: 32, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4467, file: !4468, line: 22, baseType: !7, size: 32, offset: 160)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4459, file: !4460, line: 83, baseType: !153, size: 64, offset: 448)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4459, file: !4460, line: 99, baseType: !4458, size: 64, offset: 512)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4459, file: !4460, line: 107, baseType: !85, size: 32, offset: 576)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4459, file: !4460, line: 116, baseType: !232, size: 128, offset: 640)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4459, file: !4460, line: 128, baseType: !232, size: 128, offset: 768)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4459, file: !4460, line: 139, baseType: !4467, size: 192, offset: 896)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4459, file: !4460, line: 147, baseType: !4467, size: 192, offset: 1088)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !202, file: !118, line: 135, baseType: !448, size: 32, offset: 832)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !202, file: !118, line: 143, baseType: !189, size: 8, offset: 864)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !202, file: !118, line: 146, baseType: !379, size: 64, offset: 896)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !202, file: !118, line: 149, baseType: !304, size: 64, offset: 960)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !202, file: !118, line: 159, baseType: !639, size: 256, offset: 1024)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !202, file: !118, line: 166, baseType: !639, size: 256, offset: 1280)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !202, file: !118, line: 174, baseType: !215, size: 32, offset: 1536)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !202, file: !118, line: 177, baseType: !639, size: 256, offset: 1600)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !202, file: !118, line: 183, baseType: !232, size: 128, offset: 1856)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !202, file: !118, line: 191, baseType: !232, size: 128, offset: 1984)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !202, file: !118, line: 198, baseType: !639, size: 256, offset: 2112)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !202, file: !118, line: 205, baseType: !232, size: 128, offset: 2368)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !202, file: !118, line: 220, baseType: !189, size: 8, offset: 2496)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !202, file: !118, line: 230, baseType: !4494, size: 64, offset: 2560)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !118, line: 15, flags: DIFlagFwdDecl)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !202, file: !118, line: 237, baseType: !245, size: 32, offset: 2624)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !202, file: !118, line: 242, baseType: !245, size: 32, offset: 2656)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !202, file: !118, line: 265, baseType: !448, size: 32, offset: 2688)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !202, file: !118, line: 268, baseType: !232, size: 128, offset: 2752)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !202, file: !118, line: 276, baseType: !245, size: 32, offset: 2880)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !202, file: !118, line: 279, baseType: !7, size: 32, offset: 2912)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !202, file: !118, line: 282, baseType: !4503, size: 8704, offset: 2944)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4504, line: 375, size: 8704, elements: !4505)
!4504 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4505 = !{!4506, !4507, !4526, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4503, file: !4504, line: 386, baseType: !639, size: 256)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4503, file: !4504, line: 396, baseType: !4508, size: 448, offset: 256)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4509, line: 85, size: 448, elements: !4510)
!4509 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4510 = !{!4511, !4525}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4508, file: !4509, line: 89, baseType: !4512, size: 320)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4513, line: 47, size: 320, elements: !4514)
!4513 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4512, file: !4513, line: 48, baseType: !639, size: 256)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4512, file: !4513, line: 49, baseType: !4517, size: 64, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4513, line: 55, size: 192, elements: !4519)
!4519 = !{!4520, !4521, !4522, !4523, !4524}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4518, file: !4513, line: 56, baseType: !2094, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4518, file: !4513, line: 57, baseType: !169, size: 64, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4518, file: !4513, line: 58, baseType: !7, size: 32, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4518, file: !4513, line: 59, baseType: !164, size: 16, offset: 160)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4518, file: !4513, line: 60, baseType: !164, size: 16, offset: 176)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4508, file: !4509, line: 95, baseType: !232, size: 128, offset: 320)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4503, file: !4504, line: 406, baseType: !4527, size: 64, offset: 704)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4509, line: 46, size: 512, elements: !4529)
!4529 = !{!4530, !4531, !4533, !4536, !4537, !4538}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4528, file: !4509, line: 48, baseType: !4518, size: 192)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4528, file: !4509, line: 55, baseType: !4532, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4528, file: !4509, line: 61, baseType: !4534, size: 32, offset: 256)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4535, line: 27, baseType: !448)
!4535 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4528, file: !4509, line: 66, baseType: !232, size: 128, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4528, file: !4509, line: 71, baseType: !189, size: 8, offset: 448)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4528, file: !4509, line: 74, baseType: !189, size: 8, offset: 456)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4503, file: !4504, line: 414, baseType: !639, size: 256, offset: 768)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4503, file: !4504, line: 422, baseType: !4467, size: 192, offset: 1024)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4503, file: !4504, line: 430, baseType: !4467, size: 192, offset: 1216)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4503, file: !4504, line: 433, baseType: !639, size: 256, offset: 1408)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4503, file: !4504, line: 435, baseType: !85, size: 32, offset: 1664)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4503, file: !4504, line: 437, baseType: !232, size: 128, offset: 1728)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4503, file: !4504, line: 443, baseType: !245, size: 32, offset: 1856)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4503, file: !4504, line: 448, baseType: !85, size: 32, offset: 1888)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4503, file: !4504, line: 452, baseType: !4548, size: 128, offset: 1920)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !4468, line: 246, size: 128, elements: !4549)
!4549 = !{!4550}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4548, file: !4468, line: 247, baseType: !3612, size: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4503, file: !4504, line: 460, baseType: !232, size: 128, offset: 2048)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4503, file: !4504, line: 470, baseType: !3120, size: 64, offset: 2176)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4503, file: !4504, line: 474, baseType: !897, size: 256, offset: 2240)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4503, file: !4504, line: 482, baseType: !85, size: 32, offset: 2496)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4503, file: !4504, line: 490, baseType: !232, size: 128, offset: 2560)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4503, file: !4504, line: 499, baseType: !85, size: 32, offset: 2688)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4503, file: !4504, line: 506, baseType: !232, size: 128, offset: 2752)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4503, file: !4504, line: 514, baseType: !85, size: 32, offset: 2880)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4503, file: !4504, line: 521, baseType: !232, size: 128, offset: 2944)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4503, file: !4504, line: 530, baseType: !232, size: 128, offset: 3072)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4503, file: !4504, line: 539, baseType: !232, size: 128, offset: 3200)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4503, file: !4504, line: 541, baseType: !85, size: 32, offset: 3328)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4503, file: !4504, line: 541, baseType: !85, size: 32, offset: 3360)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4503, file: !4504, line: 542, baseType: !85, size: 32, offset: 3392)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4503, file: !4504, line: 542, baseType: !85, size: 32, offset: 3424)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4503, file: !4504, line: 543, baseType: !4567, size: 64, offset: 3456)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4504, line: 47, size: 576, elements: !4570)
!4570 = !{!4571, !4594, !4619, !4623, !4631, !4637, !4641, !4645, !4649}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4569, file: !4504, line: 83, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!4575, !201, !4576, !4578}
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4460, line: 35, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4580)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !4581, line: 703, size: 832, elements: !4582)
!4581 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4588, !4590, !4591, !4592}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4580, file: !4581, line: 705, baseType: !154, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4580, file: !4581, line: 707, baseType: !154, size: 32, offset: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4580, file: !4581, line: 709, baseType: !154, size: 32, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4580, file: !4581, line: 714, baseType: !154, size: 32, offset: 96)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4580, file: !4581, line: 719, baseType: !154, size: 32, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4580, file: !4581, line: 725, baseType: !4589, size: 128, offset: 160)
!4589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !867)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4580, file: !4581, line: 727, baseType: !4589, size: 128, offset: 288)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4580, file: !4581, line: 729, baseType: !4589, size: 128, offset: 416)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4580, file: !4581, line: 735, baseType: !4593, size: 256, offset: 576)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !867)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4569, file: !4504, line: 98, baseType: !4595, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!4598, !4578}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4600)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4601, line: 61, size: 192, elements: !4602)
!4601 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!4602 = !{!4603, !4604, !4605, !4606, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4600, file: !4601, line: 63, baseType: !448, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4600, file: !4601, line: 72, baseType: !159, size: 8, offset: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !4600, file: !4601, line: 75, baseType: !159, size: 8, offset: 40)
!4606 = !DIDerivedType(tag: DW_TAG_member, scope: !4600, file: !4601, line: 77, baseType: !4607, size: 32, offset: 48)
!4607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4600, file: !4601, line: 77, size: 32, elements: !4608)
!4608 = !{!4609, !4611}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !4607, file: !4601, line: 86, baseType: !4610, size: 32)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32, elements: !867)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !4607, file: !4601, line: 112, baseType: !4610, size: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !4600, file: !4601, line: 121, baseType: !4610, size: 32, offset: 80)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !4600, file: !4601, line: 129, baseType: !4610, size: 32, offset: 112)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !4600, file: !4601, line: 132, baseType: !159, size: 8, offset: 144)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !4600, file: !4601, line: 134, baseType: !159, size: 8, offset: 152)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !4600, file: !4601, line: 137, baseType: !189, size: 8, offset: 160)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !4600, file: !4601, line: 140, baseType: !189, size: 8, offset: 168)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !4600, file: !4601, line: 143, baseType: !189, size: 8, offset: 176)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4569, file: !4504, line: 114, baseType: !4620, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !201}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4569, file: !4504, line: 124, baseType: !4624, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!4627, !201, !4628}
!4627 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !4504, line: 124, flags: DIFlagFwdDecl)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4630)
!4630 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !4504, line: 39, flags: DIFlagFwdDecl)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4569, file: !4504, line: 201, baseType: !4632, size: 64, offset: 256)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!85, !201, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4504, line: 36, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4569, file: !4504, line: 283, baseType: !4638, size: 64, offset: 320)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!85, !201, !4635, !189}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4569, file: !4504, line: 302, baseType: !4642, size: 64, offset: 384)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!4635, !201}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4569, file: !4504, line: 323, baseType: !4646, size: 64, offset: 448)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !4635}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4569, file: !4504, line: 338, baseType: !4646, size: 64, offset: 512)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4503, file: !4504, line: 546, baseType: !189, size: 8, offset: 3520)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4503, file: !4504, line: 547, baseType: !189, size: 8, offset: 3528)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4503, file: !4504, line: 548, baseType: !189, size: 8, offset: 3536)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4503, file: !4504, line: 549, baseType: !954, size: 704, offset: 3584)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4503, file: !4504, line: 557, baseType: !639, size: 256, offset: 4288)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4503, file: !4504, line: 565, baseType: !232, size: 128, offset: 4544)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4503, file: !4504, line: 573, baseType: !4657, size: 64, offset: 4672)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4504, line: 573, flags: DIFlagFwdDecl)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4503, file: !4504, line: 578, baseType: !4657, size: 64, offset: 4736)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4503, file: !4504, line: 583, baseType: !4657, size: 64, offset: 4800)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4503, file: !4504, line: 589, baseType: !4657, size: 64, offset: 4864)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4503, file: !4504, line: 594, baseType: !4657, size: 64, offset: 4928)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4503, file: !4504, line: 599, baseType: !4657, size: 64, offset: 4992)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4503, file: !4504, line: 604, baseType: !4657, size: 64, offset: 5056)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4503, file: !4504, line: 609, baseType: !4657, size: 64, offset: 5120)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4503, file: !4504, line: 614, baseType: !4657, size: 64, offset: 5184)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4503, file: !4504, line: 619, baseType: !4657, size: 64, offset: 5248)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4503, file: !4504, line: 624, baseType: !4657, size: 64, offset: 5312)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4503, file: !4504, line: 629, baseType: !4657, size: 64, offset: 5376)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4503, file: !4504, line: 634, baseType: !4657, size: 64, offset: 5440)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4503, file: !4504, line: 639, baseType: !4657, size: 64, offset: 5504)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4503, file: !4504, line: 644, baseType: !4657, size: 64, offset: 5568)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4503, file: !4504, line: 649, baseType: !4657, size: 64, offset: 5632)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4503, file: !4504, line: 655, baseType: !4657, size: 64, offset: 5696)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4503, file: !4504, line: 660, baseType: !4657, size: 64, offset: 5760)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4503, file: !4504, line: 669, baseType: !4657, size: 64, offset: 5824)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4503, file: !4504, line: 675, baseType: !4657, size: 64, offset: 5888)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4503, file: !4504, line: 681, baseType: !4657, size: 64, offset: 5952)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4503, file: !4504, line: 686, baseType: !4657, size: 64, offset: 6016)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4503, file: !4504, line: 692, baseType: !4657, size: 64, offset: 6080)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4503, file: !4504, line: 697, baseType: !4657, size: 64, offset: 6144)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4503, file: !4504, line: 703, baseType: !4657, size: 64, offset: 6208)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4503, file: !4504, line: 709, baseType: !4657, size: 64, offset: 6272)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4503, file: !4504, line: 714, baseType: !4657, size: 64, offset: 6336)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4503, file: !4504, line: 722, baseType: !4657, size: 64, offset: 6400)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4503, file: !4504, line: 728, baseType: !4657, size: 64, offset: 6464)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4503, file: !4504, line: 734, baseType: !4657, size: 64, offset: 6528)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4503, file: !4504, line: 739, baseType: !4657, size: 64, offset: 6592)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4503, file: !4504, line: 744, baseType: !4657, size: 64, offset: 6656)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4503, file: !4504, line: 749, baseType: !4657, size: 64, offset: 6720)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4503, file: !4504, line: 754, baseType: !4657, size: 64, offset: 6784)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4503, file: !4504, line: 759, baseType: !4657, size: 64, offset: 6848)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4503, file: !4504, line: 764, baseType: !4657, size: 64, offset: 6912)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4503, file: !4504, line: 769, baseType: !4657, size: 64, offset: 6976)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4503, file: !4504, line: 774, baseType: !4657, size: 64, offset: 7040)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4503, file: !4504, line: 778, baseType: !4657, size: 64, offset: 7104)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4503, file: !4504, line: 784, baseType: !4657, size: 64, offset: 7168)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4503, file: !4504, line: 789, baseType: !4657, size: 64, offset: 7232)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4503, file: !4504, line: 794, baseType: !4657, size: 64, offset: 7296)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4503, file: !4504, line: 799, baseType: !4657, size: 64, offset: 7360)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4503, file: !4504, line: 804, baseType: !4657, size: 64, offset: 7424)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4503, file: !4504, line: 810, baseType: !4657, size: 64, offset: 7488)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4503, file: !4504, line: 816, baseType: !4657, size: 64, offset: 7552)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4503, file: !4504, line: 821, baseType: !4657, size: 64, offset: 7616)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4503, file: !4504, line: 827, baseType: !4657, size: 64, offset: 7680)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4503, file: !4504, line: 832, baseType: !4657, size: 64, offset: 7744)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4503, file: !4504, line: 839, baseType: !4657, size: 64, offset: 7808)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4503, file: !4504, line: 846, baseType: !4657, size: 64, offset: 7872)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4503, file: !4504, line: 853, baseType: !4657, size: 64, offset: 7936)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4503, file: !4504, line: 861, baseType: !4657, size: 64, offset: 8000)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4503, file: !4504, line: 869, baseType: !4657, size: 64, offset: 8064)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4503, file: !4504, line: 876, baseType: !4657, size: 64, offset: 8128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4503, file: !4504, line: 882, baseType: !4657, size: 64, offset: 8192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4503, file: !4504, line: 888, baseType: !4657, size: 64, offset: 8256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4503, file: !4504, line: 891, baseType: !1259, size: 32, offset: 8320)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4503, file: !4504, line: 891, baseType: !1259, size: 32, offset: 8352)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4503, file: !4504, line: 899, baseType: !189, size: 8, offset: 8384)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4503, file: !4504, line: 913, baseType: !189, size: 8, offset: 8392)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4503, file: !4504, line: 919, baseType: !189, size: 8, offset: 8400)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4503, file: !4504, line: 929, baseType: !189, size: 8, offset: 8408)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4503, file: !4504, line: 937, baseType: !189, size: 8, offset: 8416)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4503, file: !4504, line: 943, baseType: !4657, size: 64, offset: 8448)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4503, file: !4504, line: 946, baseType: !1259, size: 32, offset: 8512)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4503, file: !4504, line: 946, baseType: !1259, size: 32, offset: 8544)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4503, file: !4504, line: 955, baseType: !4635, size: 64, offset: 8576)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4503, file: !4504, line: 957, baseType: !4727, size: 64, offset: 8640)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4729)
!4729 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4504, line: 957, flags: DIFlagFwdDecl)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !202, file: !118, line: 285, baseType: !639, size: 256, offset: 11648)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !202, file: !118, line: 288, baseType: !4467, size: 192, offset: 11904)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !202, file: !118, line: 291, baseType: !4733, size: 64, offset: 12096)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !118, line: 16, flags: DIFlagFwdDecl)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !202, file: !118, line: 294, baseType: !4736, size: 64, offset: 12160)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !118, line: 17, flags: DIFlagFwdDecl)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !202, file: !118, line: 304, baseType: !117, size: 32, offset: 12224)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !202, file: !118, line: 312, baseType: !4740, size: 64, offset: 12288)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !118, line: 18, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !202, file: !118, line: 319, baseType: !639, size: 256, offset: 12352)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !202, file: !118, line: 327, baseType: !232, size: 128, offset: 12608)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !197, file: !198, line: 126, baseType: !232, size: 128, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !197, file: !198, line: 131, baseType: !4746, size: 256, offset: 192)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4747, line: 55, size: 256, elements: !4748)
!4747 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4748 = !{!4749, !4750, !4751, !4763, !4764}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4746, file: !4747, line: 56, baseType: !1259, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4746, file: !4747, line: 57, baseType: !1259, size: 32, offset: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4746, file: !4747, line: 58, baseType: !4752, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4747, line: 67, size: 3136, elements: !4754)
!4754 = !{!4755, !4756, !4760}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4753, file: !4747, line: 73, baseType: !85, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4753, file: !4747, line: 82, baseType: !4757, size: 1536, offset: 64)
!4757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, size: 1536, elements: !4758)
!4758 = !{!4759}
!4759 = !DISubrange(count: 24)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4753, file: !4747, line: 106, baseType: !4761, size: 1536, offset: 1600)
!4761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4762, size: 1536, elements: !4758)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !157, line: 113, baseType: !451)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4746, file: !4747, line: 59, baseType: !206, size: 32, offset: 128)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4746, file: !4747, line: 60, baseType: !4765, size: 64, offset: 192)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{null, !4768}
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !197, file: !198, line: 136, baseType: !2519, size: 128, offset: 448)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !197, file: !198, line: 141, baseType: !4598, size: 64, offset: 576)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !197, file: !198, line: 145, baseType: !4772, size: 64, offset: 640)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4774)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !198, line: 42, size: 192, elements: !4775)
!4775 = !{!4776, !4780, !4784}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4774, file: !198, line: 53, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !4575}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4774, file: !198, line: 73, baseType: !4781, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!85, !4575, !4576, !711}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4774, file: !198, line: 97, baseType: !4785, size: 64, offset: 128)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!85, !4575, !4576, !7, !7, !4788, !7}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4790, line: 96, size: 64, elements: !4791)
!4790 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4791 = !{!4792, !4793, !4794, !4795}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4789, file: !4790, line: 97, baseType: !164, size: 16)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4789, file: !4790, line: 98, baseType: !164, size: 16, offset: 16)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4789, file: !4790, line: 99, baseType: !164, size: 16, offset: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4789, file: !4790, line: 100, baseType: !164, size: 16, offset: 48)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !197, file: !198, line: 150, baseType: !4797, size: 128, offset: 704)
!4797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !867)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !197, file: !198, line: 168, baseType: !4797, size: 128, offset: 832)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !197, file: !198, line: 175, baseType: !4762, size: 64, offset: 960)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !197, file: !198, line: 180, baseType: !7, size: 32, offset: 1024)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !197, file: !198, line: 185, baseType: !7, size: 32, offset: 1056)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !198, line: 190, baseType: !85, size: 32, offset: 1088)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !197, file: !198, line: 196, baseType: !85, size: 32, offset: 1120)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !197, file: !198, line: 202, baseType: !85, size: 32, offset: 1152)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !197, file: !198, line: 206, baseType: !232, size: 128, offset: 1216)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !197, file: !198, line: 213, baseType: !4807, size: 256, offset: 1344)
!4807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4808, size: 256, elements: !867)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !198, line: 37, flags: DIFlagFwdDecl)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4812)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !4813, line: 46, size: 128, elements: !4814)
!4813 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!4814 = !{!4815, !4816, !4817, !4818}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4812, file: !4813, line: 47, baseType: !85, size: 32)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4812, file: !4813, line: 47, baseType: !85, size: 32, offset: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4812, file: !4813, line: 47, baseType: !85, size: 32, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4812, file: !4813, line: 47, baseType: !85, size: 32, offset: 96)
!4819 = !{!4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4833, !4834, !4835, !4836, !4837}
!4820 = !DILocalVariable(name: "dst", arg: 1, scope: !176, file: !3, line: 173, type: !179)
!4821 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !176, file: !3, line: 173, type: !191)
!4822 = !DILocalVariable(name: "src", arg: 3, scope: !176, file: !3, line: 174, type: !193)
!4823 = !DILocalVariable(name: "fb", arg: 4, scope: !176, file: !3, line: 174, type: !195)
!4824 = !DILocalVariable(name: "clip", arg: 5, scope: !176, file: !3, line: 175, type: !4810)
!4825 = !DILocalVariable(name: "format", scope: !176, file: !3, line: 181, type: !4598)
!4826 = !DILocalVariable(name: "i", scope: !176, file: !3, line: 182, type: !7)
!4827 = !DILocalVariable(name: "y", scope: !176, file: !3, line: 182, type: !7)
!4828 = !DILocalVariable(name: "lines", scope: !176, file: !3, line: 182, type: !7)
!4829 = !DILocalVariable(name: "bpp_i", scope: !4830, file: !3, line: 188, type: !7)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 187, column: 43)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 187, column: 2)
!4832 = distinct !DILexicalBlock(scope: !176, file: !3, line: 187, column: 2)
!4833 = !DILocalVariable(name: "cpp_i", scope: !4830, file: !3, line: 189, type: !7)
!4834 = !DILocalVariable(name: "len_i", scope: !4830, file: !3, line: 190, type: !165)
!4835 = !DILocalVariable(name: "dst_pitch_i", scope: !4830, file: !3, line: 191, type: !7)
!4836 = !DILocalVariable(name: "dst_i", scope: !4830, file: !3, line: 192, type: !180)
!4837 = !DILocalVariable(name: "src_i", scope: !4830, file: !3, line: 193, type: !180)
!4838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 128, elements: !867)
!4839 = !DIGlobalVariableExpression(var: !4840, expr: !DIExpression())
!4840 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_memcpy269", scope: !2, file: !3, line: 207, type: !153, isLocal: true, isDefinition: true)
!4841 = !DIGlobalVariableExpression(var: !4842, expr: !DIExpression())
!4842 = distinct !DIGlobalVariable(name: "__print_once", scope: !4843, file: !3, line: 266, type: !189, isLocal: true, isDefinition: true)
!4843 = distinct !DISubprogram(name: "drm_fb_swab", scope: !3, file: !3, line: 250, type: !4844, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4846)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{null, !179, !191, !193, !195, !4810, !189}
!4846 = !{!4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855}
!4847 = !DILocalVariable(name: "dst", arg: 1, scope: !4843, file: !3, line: 250, type: !179)
!4848 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4843, file: !3, line: 250, type: !191)
!4849 = !DILocalVariable(name: "src", arg: 3, scope: !4843, file: !3, line: 251, type: !193)
!4850 = !DILocalVariable(name: "fb", arg: 4, scope: !4843, file: !3, line: 251, type: !195)
!4851 = !DILocalVariable(name: "clip", arg: 5, scope: !4843, file: !3, line: 252, type: !4810)
!4852 = !DILocalVariable(name: "cached", arg: 6, scope: !4843, file: !3, line: 252, type: !189)
!4853 = !DILocalVariable(name: "format", scope: !4843, file: !3, line: 254, type: !4598)
!4854 = !DILocalVariable(name: "cpp", scope: !4843, file: !3, line: 255, type: !159)
!4855 = !DILocalVariable(name: "swab_line", scope: !4843, file: !3, line: 256, type: !4856)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{null, !153, !1622, !7}
!4859 = !DIGlobalVariableExpression(var: !4860, expr: !DIExpression())
!4860 = distinct !DIGlobalVariable(scope: null, file: !3, line: 266, type: !4861, isLocal: true, isDefinition: true)
!4861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 384, elements: !4862)
!4862 = !{!4863}
!4863 = !DISubrange(count: 48)
!4864 = !DIGlobalVariableExpression(var: !4865, expr: !DIExpression())
!4865 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_swab270", scope: !2, file: !3, line: 273, type: !153, isLocal: true, isDefinition: true)
!4866 = !DIGlobalVariableExpression(var: !4867, expr: !DIExpression())
!4867 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4868, file: !3, line: 314, type: !4875, isLocal: true, isDefinition: true)
!4868 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb332", scope: !3, file: !3, line: 310, type: !177, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4869)
!4869 = !{!4870, !4871, !4872, !4873, !4874}
!4870 = !DILocalVariable(name: "dst", arg: 1, scope: !4868, file: !3, line: 310, type: !179)
!4871 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4868, file: !3, line: 310, type: !191)
!4872 = !DILocalVariable(name: "src", arg: 3, scope: !4868, file: !3, line: 311, type: !193)
!4873 = !DILocalVariable(name: "fb", arg: 4, scope: !4868, file: !3, line: 311, type: !195)
!4874 = !DILocalVariable(name: "clip", arg: 5, scope: !4868, file: !3, line: 312, type: !4810)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4876, size: 32, elements: !867)
!4876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!4877 = !DIGlobalVariableExpression(var: !4878, expr: !DIExpression())
!4878 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb332271", scope: !2, file: !3, line: 321, type: !153, isLocal: true, isDefinition: true)
!4879 = !DIGlobalVariableExpression(var: !4880, expr: !DIExpression())
!4880 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4881, file: !3, line: 384, type: !4875, isLocal: true, isDefinition: true)
!4881 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb565", scope: !3, file: !3, line: 380, type: !4844, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4882)
!4882 = !{!4883, !4884, !4885, !4886, !4887, !4888, !4889}
!4883 = !DILocalVariable(name: "dst", arg: 1, scope: !4881, file: !3, line: 380, type: !179)
!4884 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4881, file: !3, line: 380, type: !191)
!4885 = !DILocalVariable(name: "src", arg: 3, scope: !4881, file: !3, line: 381, type: !193)
!4886 = !DILocalVariable(name: "fb", arg: 4, scope: !4881, file: !3, line: 381, type: !195)
!4887 = !DILocalVariable(name: "clip", arg: 5, scope: !4881, file: !3, line: 382, type: !4810)
!4888 = !DILocalVariable(name: "__swab", arg: 6, scope: !4881, file: !3, line: 382, type: !189)
!4889 = !DILocalVariable(name: "xfrm_line", scope: !4881, file: !3, line: 388, type: !4856)
!4890 = !DIGlobalVariableExpression(var: !4891, expr: !DIExpression())
!4891 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb565272", scope: !2, file: !3, line: 397, type: !153, isLocal: true, isDefinition: true)
!4892 = !DIGlobalVariableExpression(var: !4893, expr: !DIExpression())
!4893 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4894, file: !3, line: 441, type: !4875, isLocal: true, isDefinition: true)
!4894 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_xrgb1555", scope: !3, file: !3, line: 437, type: !177, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4895)
!4895 = !{!4896, !4897, !4898, !4899, !4900}
!4896 = !DILocalVariable(name: "dst", arg: 1, scope: !4894, file: !3, line: 437, type: !179)
!4897 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4894, file: !3, line: 437, type: !191)
!4898 = !DILocalVariable(name: "src", arg: 3, scope: !4894, file: !3, line: 438, type: !193)
!4899 = !DILocalVariable(name: "fb", arg: 4, scope: !4894, file: !3, line: 438, type: !195)
!4900 = !DILocalVariable(name: "clip", arg: 5, scope: !4894, file: !3, line: 439, type: !4810)
!4901 = !DIGlobalVariableExpression(var: !4902, expr: !DIExpression())
!4902 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_xrgb1555273", scope: !2, file: !3, line: 448, type: !153, isLocal: true, isDefinition: true)
!4903 = !DIGlobalVariableExpression(var: !4904, expr: !DIExpression())
!4904 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4905, file: !3, line: 493, type: !4875, isLocal: true, isDefinition: true)
!4905 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_argb1555", scope: !3, file: !3, line: 489, type: !177, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4906)
!4906 = !{!4907, !4908, !4909, !4910, !4911}
!4907 = !DILocalVariable(name: "dst", arg: 1, scope: !4905, file: !3, line: 489, type: !179)
!4908 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4905, file: !3, line: 489, type: !191)
!4909 = !DILocalVariable(name: "src", arg: 3, scope: !4905, file: !3, line: 490, type: !193)
!4910 = !DILocalVariable(name: "fb", arg: 4, scope: !4905, file: !3, line: 490, type: !195)
!4911 = !DILocalVariable(name: "clip", arg: 5, scope: !4905, file: !3, line: 491, type: !4810)
!4912 = !DIGlobalVariableExpression(var: !4913, expr: !DIExpression())
!4913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb1555274", scope: !2, file: !3, line: 500, type: !153, isLocal: true, isDefinition: true)
!4914 = !DIGlobalVariableExpression(var: !4915, expr: !DIExpression())
!4915 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4916, file: !3, line: 545, type: !4875, isLocal: true, isDefinition: true)
!4916 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgba5551", scope: !3, file: !3, line: 541, type: !177, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4917)
!4917 = !{!4918, !4919, !4920, !4921, !4922}
!4918 = !DILocalVariable(name: "dst", arg: 1, scope: !4916, file: !3, line: 541, type: !179)
!4919 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4916, file: !3, line: 541, type: !191)
!4920 = !DILocalVariable(name: "src", arg: 3, scope: !4916, file: !3, line: 542, type: !193)
!4921 = !DILocalVariable(name: "fb", arg: 4, scope: !4916, file: !3, line: 542, type: !195)
!4922 = !DILocalVariable(name: "clip", arg: 5, scope: !4916, file: !3, line: 543, type: !4810)
!4923 = !DIGlobalVariableExpression(var: !4924, expr: !DIExpression())
!4924 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgba5551275", scope: !2, file: !3, line: 552, type: !153, isLocal: true, isDefinition: true)
!4925 = !DIGlobalVariableExpression(var: !4926, expr: !DIExpression())
!4926 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4927, file: !3, line: 595, type: !4875, isLocal: true, isDefinition: true)
!4927 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb888", scope: !3, file: !3, line: 591, type: !177, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4928)
!4928 = !{!4929, !4930, !4931, !4932, !4933}
!4929 = !DILocalVariable(name: "dst", arg: 1, scope: !4927, file: !3, line: 591, type: !179)
!4930 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4927, file: !3, line: 591, type: !191)
!4931 = !DILocalVariable(name: "src", arg: 3, scope: !4927, file: !3, line: 592, type: !193)
!4932 = !DILocalVariable(name: "fb", arg: 4, scope: !4927, file: !3, line: 592, type: !195)
!4933 = !DILocalVariable(name: "clip", arg: 5, scope: !4927, file: !3, line: 593, type: !4810)
!4934 = !DIGlobalVariableExpression(var: !4935, expr: !DIExpression())
!4935 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_rgb888276", scope: !2, file: !3, line: 602, type: !153, isLocal: true, isDefinition: true)
!4936 = !DIGlobalVariableExpression(var: !4937, expr: !DIExpression())
!4937 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4938, file: !3, line: 643, type: !4875, isLocal: true, isDefinition: true)
!4938 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_argb8888", scope: !3, file: !3, line: 639, type: !177, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4944}
!4940 = !DILocalVariable(name: "dst", arg: 1, scope: !4938, file: !3, line: 639, type: !179)
!4941 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4938, file: !3, line: 639, type: !191)
!4942 = !DILocalVariable(name: "src", arg: 3, scope: !4938, file: !3, line: 640, type: !193)
!4943 = !DILocalVariable(name: "fb", arg: 4, scope: !4938, file: !3, line: 640, type: !195)
!4944 = !DILocalVariable(name: "clip", arg: 5, scope: !4938, file: !3, line: 641, type: !4810)
!4945 = !DIGlobalVariableExpression(var: !4946, expr: !DIExpression())
!4946 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb8888277", scope: !2, file: !3, line: 650, type: !153, isLocal: true, isDefinition: true)
!4947 = !DIGlobalVariableExpression(var: !4948, expr: !DIExpression())
!4948 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4949, file: !3, line: 755, type: !4875, isLocal: true, isDefinition: true)
!4949 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_xrgb2101010", scope: !3, file: !3, line: 751, type: !177, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4950)
!4950 = !{!4951, !4952, !4953, !4954, !4955}
!4951 = !DILocalVariable(name: "dst", arg: 1, scope: !4949, file: !3, line: 751, type: !179)
!4952 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4949, file: !3, line: 751, type: !191)
!4953 = !DILocalVariable(name: "src", arg: 3, scope: !4949, file: !3, line: 752, type: !193)
!4954 = !DILocalVariable(name: "fb", arg: 4, scope: !4949, file: !3, line: 752, type: !195)
!4955 = !DILocalVariable(name: "clip", arg: 5, scope: !4949, file: !3, line: 753, type: !4810)
!4956 = !DIGlobalVariableExpression(var: !4957, expr: !DIExpression())
!4957 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_xrgb2101010278", scope: !2, file: !3, line: 762, type: !153, isLocal: true, isDefinition: true)
!4958 = !DIGlobalVariableExpression(var: !4959, expr: !DIExpression())
!4959 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4960, file: !3, line: 808, type: !4875, isLocal: true, isDefinition: true)
!4960 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_argb2101010", scope: !3, file: !3, line: 804, type: !177, scopeLine: 807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4961)
!4961 = !{!4962, !4963, !4964, !4965, !4966}
!4962 = !DILocalVariable(name: "dst", arg: 1, scope: !4960, file: !3, line: 804, type: !179)
!4963 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4960, file: !3, line: 804, type: !191)
!4964 = !DILocalVariable(name: "src", arg: 3, scope: !4960, file: !3, line: 805, type: !193)
!4965 = !DILocalVariable(name: "fb", arg: 4, scope: !4960, file: !3, line: 805, type: !195)
!4966 = !DILocalVariable(name: "clip", arg: 5, scope: !4960, file: !3, line: 806, type: !4810)
!4967 = !DIGlobalVariableExpression(var: !4968, expr: !DIExpression())
!4968 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_argb2101010279", scope: !2, file: !3, line: 815, type: !153, isLocal: true, isDefinition: true)
!4969 = !DIGlobalVariableExpression(var: !4970, expr: !DIExpression())
!4970 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !4971, file: !3, line: 863, type: !4875, isLocal: true, isDefinition: true)
!4971 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_gray8", scope: !3, file: !3, line: 859, type: !177, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4972)
!4972 = !{!4973, !4974, !4975, !4976, !4977}
!4973 = !DILocalVariable(name: "dst", arg: 1, scope: !4971, file: !3, line: 859, type: !179)
!4974 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4971, file: !3, line: 859, type: !191)
!4975 = !DILocalVariable(name: "src", arg: 3, scope: !4971, file: !3, line: 860, type: !193)
!4976 = !DILocalVariable(name: "fb", arg: 4, scope: !4971, file: !3, line: 860, type: !195)
!4977 = !DILocalVariable(name: "clip", arg: 5, scope: !4971, file: !3, line: 861, type: !4810)
!4978 = !DIGlobalVariableExpression(var: !4979, expr: !DIExpression())
!4979 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_gray8280", scope: !2, file: !3, line: 870, type: !153, isLocal: true, isDefinition: true)
!4980 = !DIGlobalVariableExpression(var: !4981, expr: !DIExpression())
!4981 = distinct !DIGlobalVariable(name: "__print_once", scope: !4982, file: !3, line: 949, type: !189, isLocal: true, isDefinition: true)
!4982 = distinct !DISubprogram(name: "drm_fb_blit", scope: !3, file: !3, line: 897, type: !4983, scopeLine: 900, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!85, !179, !191, !1259, !193, !195, !4810}
!4985 = !{!4986, !4987, !4988, !4989, !4990, !4991, !4992}
!4986 = !DILocalVariable(name: "dst", arg: 1, scope: !4982, file: !3, line: 897, type: !179)
!4987 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !4982, file: !3, line: 897, type: !191)
!4988 = !DILocalVariable(name: "dst_format", arg: 3, scope: !4982, file: !3, line: 897, type: !1259)
!4989 = !DILocalVariable(name: "src", arg: 4, scope: !4982, file: !3, line: 898, type: !193)
!4990 = !DILocalVariable(name: "fb", arg: 5, scope: !4982, file: !3, line: 898, type: !195)
!4991 = !DILocalVariable(name: "clip", arg: 6, scope: !4982, file: !3, line: 899, type: !4810)
!4992 = !DILocalVariable(name: "fb_format", scope: !4982, file: !3, line: 901, type: !1259)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 949, type: !4995, isLocal: true, isDefinition: true)
!4995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 440, elements: !4996)
!4996 = !{!4997}
!4997 = !DISubrange(count: 55)
!4998 = !DIGlobalVariableExpression(var: !4999, expr: !DIExpression())
!4999 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_blit281", scope: !2, file: !3, line: 954, type: !153, isLocal: true, isDefinition: true)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(name: "default_dst_pitch", scope: !5002, file: !3, line: 1007, type: !4838, isLocal: true, isDefinition: true)
!5002 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_mono", scope: !3, file: !3, line: 1003, type: !177, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5003)
!5003 = !{!5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5023}
!5004 = !DILocalVariable(name: "dst", arg: 1, scope: !5002, file: !3, line: 1003, type: !179)
!5005 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !5002, file: !3, line: 1003, type: !191)
!5006 = !DILocalVariable(name: "src", arg: 3, scope: !5002, file: !3, line: 1004, type: !193)
!5007 = !DILocalVariable(name: "fb", arg: 4, scope: !5002, file: !3, line: 1004, type: !195)
!5008 = !DILocalVariable(name: "clip", arg: 5, scope: !5002, file: !3, line: 1005, type: !4810)
!5009 = !DILocalVariable(name: "linepixels", scope: !5002, file: !3, line: 1010, type: !7)
!5010 = !DILocalVariable(name: "lines", scope: !5002, file: !3, line: 1011, type: !7)
!5011 = !DILocalVariable(name: "cpp", scope: !5002, file: !3, line: 1012, type: !7)
!5012 = !DILocalVariable(name: "len_src32", scope: !5002, file: !3, line: 1013, type: !7)
!5013 = !DILocalVariable(name: "dev", scope: !5002, file: !3, line: 1014, type: !201)
!5014 = !DILocalVariable(name: "vaddr", scope: !5002, file: !3, line: 1015, type: !153)
!5015 = !DILocalVariable(name: "dst_pitch_0", scope: !5002, file: !3, line: 1016, type: !7)
!5016 = !DILocalVariable(name: "y", scope: !5002, file: !3, line: 1017, type: !7)
!5017 = !DILocalVariable(name: "mono", scope: !5002, file: !3, line: 1018, type: !158)
!5018 = !DILocalVariable(name: "gray8", scope: !5002, file: !3, line: 1018, type: !158)
!5019 = !DILocalVariable(name: "src32", scope: !5002, file: !3, line: 1019, type: !2419)
!5020 = !DILocalVariable(name: "__ret_warn_on", scope: !5021, file: !3, line: 1021, type: !85)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 1021, column: 6)
!5022 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1021, column: 6)
!5023 = !DILocalVariable(name: "__flags", scope: !5024, file: !3, line: 1021, type: !85)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 1021, column: 6)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1021, column: 6)
!5026 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 1021, column: 6)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1021, type: !5029, isLocal: true, isDefinition: true)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 80, elements: !5030)
!5030 = !{!5031}
!5031 = !DISubrange(count: 10)
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1021, type: !5034, isLocal: true, isDefinition: true)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 944, elements: !5035)
!5035 = !{!5036}
!5036 = !DISubrange(count: 118)
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1021, type: !5039, isLocal: true, isDefinition: true)
!5039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 288, elements: !5040)
!5040 = !{!5041}
!5041 = !DISubrange(count: 36)
!5042 = !DIGlobalVariableExpression(var: !5043, expr: !DIExpression())
!5043 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_xrgb8888_to_mono284", scope: !2, file: !3, line: 1062, type: !153, isLocal: true, isDefinition: true)
!5044 = !DIGlobalVariableExpression(var: !5045, expr: !DIExpression())
!5045 = distinct !DIGlobalVariable(name: "extra_fourccs", scope: !5046, file: !3, line: 1144, type: !5068, isLocal: true, isDefinition: true)
!5046 = distinct !DISubprogram(name: "drm_fb_build_fourcc_list", scope: !3, file: !3, line: 1134, type: !5047, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5051)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!165, !201, !5049, !165, !2419, !165}
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!5051 = !{!5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5064}
!5052 = !DILocalVariable(name: "dev", arg: 1, scope: !5046, file: !3, line: 1134, type: !201)
!5053 = !DILocalVariable(name: "native_fourccs", arg: 2, scope: !5046, file: !3, line: 1135, type: !5049)
!5054 = !DILocalVariable(name: "native_nfourccs", arg: 3, scope: !5046, file: !3, line: 1135, type: !165)
!5055 = !DILocalVariable(name: "fourccs_out", arg: 4, scope: !5046, file: !3, line: 1136, type: !2419)
!5056 = !DILocalVariable(name: "nfourccs_out", arg: 5, scope: !5046, file: !3, line: 1136, type: !165)
!5057 = !DILocalVariable(name: "fourccs", scope: !5046, file: !3, line: 1149, type: !2419)
!5058 = !DILocalVariable(name: "fourccs_end", scope: !5046, file: !3, line: 1150, type: !5049)
!5059 = !DILocalVariable(name: "i", scope: !5046, file: !3, line: 1151, type: !165)
!5060 = !DILocalVariable(name: "fourcc", scope: !5061, file: !3, line: 1163, type: !448)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 1157, column: 40)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 1157, column: 2)
!5063 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 1157, column: 2)
!5064 = !DILocalVariable(name: "fourcc", scope: !5065, file: !3, line: 1183, type: !448)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 1182, column: 68)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 1182, column: 2)
!5067 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 1182, column: 2)
!5068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5069, size: 32, elements: !2333)
!5069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!5070 = !DIGlobalVariableExpression(var: !5071, expr: !DIExpression())
!5071 = distinct !DIGlobalVariable(name: "extra_nfourccs", scope: !5046, file: !3, line: 1147, type: !5072, isLocal: true, isDefinition: true)
!5072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1168, type: !5039, isLocal: true, isDefinition: true)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1172, type: !5077, isLocal: true, isDefinition: true)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 224, elements: !5078)
!5078 = !{!5079}
!5079 = !DISubrange(count: 28)
!5080 = !DIGlobalVariableExpression(var: !5081, expr: !DIExpression())
!5081 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1188, type: !5082, isLocal: true, isDefinition: true)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 304, elements: !5083)
!5083 = !{!5084}
!5084 = !DISubrange(count: 38)
!5085 = !DIGlobalVariableExpression(var: !5086, expr: !DIExpression())
!5086 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1192, type: !5087, isLocal: true, isDefinition: true)
!5087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 240, elements: !5088)
!5088 = !{!5089}
!5089 = !DISubrange(count: 30)
!5090 = !DIGlobalVariableExpression(var: !5091, expr: !DIExpression())
!5091 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_fb_build_fourcc_list285", scope: !2, file: !3, line: 1200, type: !153, isLocal: true, isDefinition: true)
!5092 = !DIGlobalVariableExpression(var: !5093, expr: !DIExpression())
!5093 = distinct !DIGlobalVariable(name: "default_dst_pitch", scope: !5094, file: !3, line: 139, type: !4838, isLocal: true, isDefinition: true)
!5094 = distinct !DISubprogram(name: "drm_fb_xfrm", scope: !3, file: !3, line: 133, type: !5095, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5098)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!85, !179, !191, !5097, !193, !195, !4810, !189, !4856}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106}
!5099 = !DILocalVariable(name: "dst", arg: 1, scope: !5094, file: !3, line: 133, type: !179)
!5100 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !5094, file: !3, line: 134, type: !191)
!5101 = !DILocalVariable(name: "dst_pixsize", arg: 3, scope: !5094, file: !3, line: 134, type: !5097)
!5102 = !DILocalVariable(name: "src", arg: 4, scope: !5094, file: !3, line: 135, type: !193)
!5103 = !DILocalVariable(name: "fb", arg: 5, scope: !5094, file: !3, line: 135, type: !195)
!5104 = !DILocalVariable(name: "clip", arg: 6, scope: !5094, file: !3, line: 136, type: !4810)
!5105 = !DILocalVariable(name: "vaddr_cached_hint", arg: 7, scope: !5094, file: !3, line: 136, type: !189)
!5106 = !DILocalVariable(name: "xfrm_line", arg: 8, scope: !5094, file: !3, line: 137, type: !4856)
!5107 = !DIGlobalVariableExpression(var: !5108, expr: !DIExpression())
!5108 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !5109, file: !3, line: 704, type: !4875, isLocal: true, isDefinition: true)
!5109 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_xbgr8888", scope: !3, file: !3, line: 699, type: !177, scopeLine: 703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5110)
!5110 = !{!5111, !5112, !5113, !5114, !5115}
!5111 = !DILocalVariable(name: "dst", arg: 1, scope: !5109, file: !3, line: 699, type: !179)
!5112 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !5109, file: !3, line: 699, type: !191)
!5113 = !DILocalVariable(name: "src", arg: 3, scope: !5109, file: !3, line: 700, type: !193)
!5114 = !DILocalVariable(name: "fb", arg: 4, scope: !5109, file: !3, line: 701, type: !195)
!5115 = !DILocalVariable(name: "clip", arg: 5, scope: !5109, file: !3, line: 702, type: !4810)
!5116 = !DIGlobalVariableExpression(var: !5117, expr: !DIExpression())
!5117 = distinct !DIGlobalVariable(name: "dst_pixsize", scope: !5118, file: !3, line: 674, type: !4875, isLocal: true, isDefinition: true)
!5118 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_abgr8888", scope: !3, file: !3, line: 669, type: !177, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5119)
!5119 = !{!5120, !5121, !5122, !5123, !5124}
!5120 = !DILocalVariable(name: "dst", arg: 1, scope: !5118, file: !3, line: 669, type: !179)
!5121 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !5118, file: !3, line: 669, type: !191)
!5122 = !DILocalVariable(name: "src", arg: 3, scope: !5118, file: !3, line: 670, type: !193)
!5123 = !DILocalVariable(name: "fb", arg: 4, scope: !5118, file: !3, line: 671, type: !195)
!5124 = !DILocalVariable(name: "clip", arg: 5, scope: !5118, file: !3, line: 672, type: !4810)
!5125 = !DIGlobalVariableExpression(var: !5126, expr: !DIExpression())
!5126 = distinct !DIGlobalVariable(scope: null, file: !143, line: 480, type: !5127, isLocal: true, isDefinition: true)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 168, elements: !5128)
!5128 = !{!5129}
!5129 = !DISubrange(count: 21)
!5130 = !{i32 7, !"Dwarf Version", i32 5}
!5131 = !{i32 2, !"Debug Info Version", i32 3}
!5132 = !{i32 1, !"wchar_size", i32 2}
!5133 = !{i32 8, !"cf-protection-branch", i32 1}
!5134 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5135 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5136 = !{i32 1, !"Code Model", i32 2}
!5137 = !{i32 1, !"override-stack-alignment", i32 8}
!5138 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5139 = distinct !DISubprogram(name: "drm_fb_clip_offset", scope: !3, file: !3, line: 37, type: !5140, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!7, !7, !4598, !4810}
!5142 = !{!5143, !5144, !5145}
!5143 = !DILocalVariable(name: "pitch", arg: 1, scope: !5139, file: !3, line: 37, type: !7)
!5144 = !DILocalVariable(name: "format", arg: 2, scope: !5139, file: !3, line: 37, type: !4598)
!5145 = !DILocalVariable(name: "clip", arg: 3, scope: !5139, file: !3, line: 38, type: !4810)
!5146 = !DILocation(line: 37, column: 46, scope: !5139)
!5147 = !DILocation(line: 37, column: 83, scope: !5139)
!5148 = !DILocation(line: 38, column: 28, scope: !5139)
!5149 = !DILocation(line: 40, column: 21, scope: !5139)
!5150 = !DILocation(line: 40, column: 27, scope: !5139)
!5151 = !DILocation(line: 40, column: 34, scope: !5139)
!5152 = !DILocation(line: 40, column: 42, scope: !5139)
!5153 = !DILocation(line: 40, column: 9, scope: !5139)
!5154 = !DILocation(line: 40, column: 2, scope: !5139)
!5155 = distinct !DISubprogram(name: "clip_offset", scope: !3, file: !3, line: 23, type: !5156, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5158)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!7, !4810, !7, !7}
!5158 = !{!5159, !5160, !5161}
!5159 = !DILocalVariable(name: "clip", arg: 1, scope: !5155, file: !3, line: 23, type: !4810)
!5160 = !DILocalVariable(name: "pitch", arg: 2, scope: !5155, file: !3, line: 23, type: !7)
!5161 = !DILocalVariable(name: "cpp", arg: 3, scope: !5155, file: !3, line: 23, type: !7)
!5162 = !DILocation(line: 23, column: 56, scope: !5155)
!5163 = !DILocation(line: 23, column: 75, scope: !5155)
!5164 = !DILocation(line: 23, column: 95, scope: !5155)
!5165 = !DILocation(line: 25, column: 9, scope: !5155)
!5166 = !DILocation(line: 25, column: 15, scope: !5155)
!5167 = !DILocation(line: 25, column: 20, scope: !5155)
!5168 = !DILocation(line: 25, column: 18, scope: !5155)
!5169 = !DILocation(line: 25, column: 28, scope: !5155)
!5170 = !DILocation(line: 25, column: 34, scope: !5155)
!5171 = !DILocation(line: 25, column: 39, scope: !5155)
!5172 = !DILocation(line: 25, column: 37, scope: !5155)
!5173 = !DILocation(line: 25, column: 26, scope: !5155)
!5174 = !DILocation(line: 25, column: 2, scope: !5155)
!5175 = !DILocation(line: 173, column: 38, scope: !176)
!5176 = !DILocation(line: 173, column: 63, scope: !176)
!5177 = !DILocation(line: 174, column: 30, scope: !176)
!5178 = !DILocation(line: 174, column: 65, scope: !176)
!5179 = !DILocation(line: 175, column: 29, scope: !176)
!5180 = !DILocation(line: 181, column: 2, scope: !176)
!5181 = !DILocation(line: 181, column: 32, scope: !176)
!5182 = !DILocation(line: 181, column: 41, scope: !176)
!5183 = !DILocation(line: 181, column: 45, scope: !176)
!5184 = !DILocation(line: 182, column: 2, scope: !176)
!5185 = !DILocation(line: 182, column: 15, scope: !176)
!5186 = !DILocation(line: 182, column: 18, scope: !176)
!5187 = !DILocation(line: 182, column: 21, scope: !176)
!5188 = !DILocation(line: 182, column: 45, scope: !176)
!5189 = !DILocation(line: 182, column: 29, scope: !176)
!5190 = !DILocation(line: 184, column: 7, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !176, file: !3, line: 184, column: 6)
!5192 = !DILocation(line: 184, column: 6, scope: !176)
!5193 = !DILocation(line: 185, column: 13, scope: !5191)
!5194 = !DILocation(line: 185, column: 3, scope: !5191)
!5195 = !DILocation(line: 187, column: 9, scope: !4832)
!5196 = !DILocation(line: 187, column: 7, scope: !4832)
!5197 = !DILocation(line: 187, column: 14, scope: !4831)
!5198 = !DILocation(line: 187, column: 18, scope: !4831)
!5199 = !DILocation(line: 187, column: 26, scope: !4831)
!5200 = !DILocation(line: 187, column: 16, scope: !4831)
!5201 = !DILocation(line: 187, column: 2, scope: !4832)
!5202 = !DILocation(line: 188, column: 3, scope: !4830)
!5203 = !DILocation(line: 188, column: 16, scope: !4830)
!5204 = !DILocation(line: 188, column: 44, scope: !4830)
!5205 = !DILocation(line: 188, column: 52, scope: !4830)
!5206 = !DILocation(line: 188, column: 24, scope: !4830)
!5207 = !DILocation(line: 189, column: 3, scope: !4830)
!5208 = !DILocation(line: 189, column: 16, scope: !4830)
!5209 = !DILocation(line: 189, column: 24, scope: !4830)
!5210 = !DILocation(line: 190, column: 3, scope: !4830)
!5211 = !DILocation(line: 190, column: 10, scope: !4830)
!5212 = !DILocation(line: 190, column: 18, scope: !4830)
!5213 = !DILocation(line: 191, column: 3, scope: !4830)
!5214 = !DILocation(line: 191, column: 16, scope: !4830)
!5215 = !DILocation(line: 191, column: 30, scope: !4830)
!5216 = !DILocation(line: 191, column: 40, scope: !4830)
!5217 = !DILocation(line: 192, column: 3, scope: !4830)
!5218 = !DILocation(line: 192, column: 20, scope: !4830)
!5219 = !DILocation(line: 192, column: 28, scope: !4830)
!5220 = !DILocation(line: 192, column: 32, scope: !4830)
!5221 = !DILocation(line: 193, column: 3, scope: !4830)
!5222 = !DILocation(line: 193, column: 20, scope: !4830)
!5223 = !DILocation(line: 193, column: 28, scope: !4830)
!5224 = !DILocation(line: 193, column: 32, scope: !4830)
!5225 = !DILocation(line: 195, column: 8, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 195, column: 7)
!5227 = !DILocation(line: 195, column: 7, scope: !4830)
!5228 = !DILocation(line: 196, column: 18, scope: !5226)
!5229 = !DILocation(line: 196, column: 16, scope: !5226)
!5230 = !DILocation(line: 196, column: 4, scope: !5226)
!5231 = !DILocation(line: 198, column: 38, scope: !4830)
!5232 = !DILocation(line: 198, column: 44, scope: !4830)
!5233 = !DILocation(line: 198, column: 48, scope: !4830)
!5234 = !DILocation(line: 198, column: 56, scope: !4830)
!5235 = !DILocation(line: 198, column: 60, scope: !4830)
!5236 = !DILocation(line: 198, column: 26, scope: !4830)
!5237 = !DILocation(line: 198, column: 3, scope: !4830)
!5238 = !DILocation(line: 199, column: 10, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 199, column: 3)
!5240 = !DILocation(line: 199, column: 8, scope: !5239)
!5241 = !DILocation(line: 199, column: 15, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 199, column: 3)
!5243 = !DILocation(line: 199, column: 19, scope: !5242)
!5244 = !DILocation(line: 199, column: 17, scope: !5242)
!5245 = !DILocation(line: 199, column: 3, scope: !5239)
!5246 = !DILocation(line: 201, column: 41, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 199, column: 31)
!5248 = !DILocation(line: 201, column: 48, scope: !5247)
!5249 = !DILocation(line: 201, column: 4, scope: !5247)
!5250 = !DILocation(line: 202, column: 27, scope: !5247)
!5251 = !DILocation(line: 202, column: 31, scope: !5247)
!5252 = !DILocation(line: 202, column: 39, scope: !5247)
!5253 = !DILocation(line: 202, column: 4, scope: !5247)
!5254 = !DILocation(line: 203, column: 27, scope: !5247)
!5255 = !DILocation(line: 203, column: 4, scope: !5247)
!5256 = !DILocation(line: 204, column: 3, scope: !5247)
!5257 = !DILocation(line: 199, column: 27, scope: !5242)
!5258 = !DILocation(line: 199, column: 3, scope: !5242)
!5259 = distinct !{!5259, !5245, !5260, !5261, !5262}
!5260 = !DILocation(line: 204, column: 3, scope: !5239)
!5261 = !{!"llvm.loop.mustprogress"}
!5262 = !{!"llvm.loop.unroll.disable"}
!5263 = !DILocation(line: 205, column: 2, scope: !4831)
!5264 = !DILocation(line: 205, column: 2, scope: !4830)
!5265 = !DILocation(line: 187, column: 38, scope: !4831)
!5266 = !DILocation(line: 187, column: 2, scope: !4831)
!5267 = distinct !{!5267, !5201, !5268, !5261, !5262}
!5268 = !DILocation(line: 205, column: 2, scope: !4832)
!5269 = !DILocation(line: 206, column: 1, scope: !176)
!5270 = distinct !DISubprogram(name: "drm_rect_height", scope: !4813, file: !4813, line: 196, type: !5271, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5273)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!85, !4810}
!5273 = !{!5274}
!5274 = !DILocalVariable(name: "r", arg: 1, scope: !5270, file: !4813, line: 196, type: !4810)
!5275 = !DILocation(line: 196, column: 58, scope: !5270)
!5276 = !DILocation(line: 198, column: 9, scope: !5270)
!5277 = !DILocation(line: 198, column: 12, scope: !5270)
!5278 = !DILocation(line: 198, column: 17, scope: !5270)
!5279 = !DILocation(line: 198, column: 20, scope: !5270)
!5280 = !DILocation(line: 198, column: 15, scope: !5270)
!5281 = !DILocation(line: 198, column: 2, scope: !5270)
!5282 = !DISubprogram(name: "drm_format_info_bpp", scope: !4601, file: !4601, line: 319, type: !5283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!7, !4598, !85}
!5285 = distinct !DISubprogram(name: "drm_rect_width", scope: !4813, file: !4813, line: 184, type: !5271, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5286)
!5286 = !{!5287}
!5287 = !DILocalVariable(name: "r", arg: 1, scope: !5285, file: !4813, line: 184, type: !4810)
!5288 = !DILocation(line: 184, column: 57, scope: !5285)
!5289 = !DILocation(line: 186, column: 9, scope: !5285)
!5290 = !DILocation(line: 186, column: 12, scope: !5285)
!5291 = !DILocation(line: 186, column: 17, scope: !5285)
!5292 = !DILocation(line: 186, column: 20, scope: !5285)
!5293 = !DILocation(line: 186, column: 15, scope: !5285)
!5294 = !DILocation(line: 186, column: 2, scope: !5285)
!5295 = distinct !DISubprogram(name: "iosys_map_incr", scope: !181, file: !181, line: 323, type: !5296, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5298)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !179, !165}
!5298 = !{!5299, !5300}
!5299 = !DILocalVariable(name: "map", arg: 1, scope: !5295, file: !181, line: 323, type: !179)
!5300 = !DILocalVariable(name: "incr", arg: 2, scope: !5295, file: !181, line: 323, type: !165)
!5301 = !DILocation(line: 323, column: 53, scope: !5295)
!5302 = !DILocation(line: 323, column: 65, scope: !5295)
!5303 = !DILocation(line: 325, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5295, file: !181, line: 325, column: 6)
!5305 = !DILocation(line: 325, column: 11, scope: !5304)
!5306 = !{i8 0, i8 2}
!5307 = !DILocation(line: 325, column: 6, scope: !5295)
!5308 = !DILocation(line: 326, column: 23, scope: !5304)
!5309 = !DILocation(line: 326, column: 3, scope: !5304)
!5310 = !DILocation(line: 326, column: 8, scope: !5304)
!5311 = !DILocation(line: 326, column: 20, scope: !5304)
!5312 = !DILocation(line: 328, column: 17, scope: !5304)
!5313 = !DILocation(line: 328, column: 3, scope: !5304)
!5314 = !DILocation(line: 328, column: 8, scope: !5304)
!5315 = !DILocation(line: 328, column: 14, scope: !5304)
!5316 = !DILocation(line: 329, column: 1, scope: !5295)
!5317 = distinct !DISubprogram(name: "iosys_map_memcpy_to", scope: !181, file: !181, line: 286, type: !5318, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5320)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{null, !179, !165, !1622, !165}
!5320 = !{!5321, !5322, !5323, !5324}
!5321 = !DILocalVariable(name: "dst", arg: 1, scope: !5317, file: !181, line: 286, type: !179)
!5322 = !DILocalVariable(name: "dst_offset", arg: 2, scope: !5317, file: !181, line: 286, type: !165)
!5323 = !DILocalVariable(name: "src", arg: 3, scope: !5317, file: !181, line: 287, type: !1622)
!5324 = !DILocalVariable(name: "len", arg: 4, scope: !5317, file: !181, line: 287, type: !165)
!5325 = !DILocation(line: 286, column: 58, scope: !5317)
!5326 = !DILocation(line: 286, column: 70, scope: !5317)
!5327 = !DILocation(line: 287, column: 24, scope: !5317)
!5328 = !DILocation(line: 287, column: 36, scope: !5317)
!5329 = !DILocation(line: 289, column: 6, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5317, file: !181, line: 289, column: 6)
!5331 = !DILocation(line: 289, column: 11, scope: !5330)
!5332 = !DILocation(line: 289, column: 6, scope: !5317)
!5333 = !DILocation(line: 290, column: 15, scope: !5330)
!5334 = !DILocation(line: 290, column: 20, scope: !5330)
!5335 = !DILocation(line: 290, column: 34, scope: !5330)
!5336 = !DILocation(line: 290, column: 32, scope: !5330)
!5337 = !DILocation(line: 290, column: 46, scope: !5330)
!5338 = !DILocation(line: 290, column: 51, scope: !5330)
!5339 = !DILocation(line: 290, column: 3, scope: !5330)
!5340 = !DILocation(line: 292, column: 10, scope: !5330)
!5341 = !DILocation(line: 292, column: 15, scope: !5330)
!5342 = !DILocation(line: 292, column: 23, scope: !5330)
!5343 = !DILocation(line: 292, column: 21, scope: !5330)
!5344 = !DILocation(line: 292, column: 35, scope: !5330)
!5345 = !DILocation(line: 292, column: 40, scope: !5330)
!5346 = !DILocation(line: 292, column: 3, scope: !5330)
!5347 = !DILocation(line: 293, column: 1, scope: !5317)
!5348 = !DILocation(line: 250, column: 36, scope: !4843)
!5349 = !DILocation(line: 250, column: 61, scope: !4843)
!5350 = !DILocation(line: 251, column: 28, scope: !4843)
!5351 = !DILocation(line: 251, column: 63, scope: !4843)
!5352 = !DILocation(line: 252, column: 27, scope: !4843)
!5353 = !DILocation(line: 252, column: 38, scope: !4843)
!5354 = !DILocation(line: 254, column: 2, scope: !4843)
!5355 = !DILocation(line: 254, column: 32, scope: !4843)
!5356 = !DILocation(line: 254, column: 41, scope: !4843)
!5357 = !DILocation(line: 254, column: 45, scope: !4843)
!5358 = !DILocation(line: 255, column: 2, scope: !4843)
!5359 = !DILocation(line: 255, column: 5, scope: !4843)
!5360 = !DILocation(line: 255, column: 11, scope: !4843)
!5361 = !DILocation(line: 256, column: 2, scope: !4843)
!5362 = !DILocation(line: 256, column: 9, scope: !4843)
!5363 = !DILocation(line: 258, column: 10, scope: !4843)
!5364 = !DILocation(line: 258, column: 2, scope: !4843)
!5365 = !DILocation(line: 260, column: 13, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 258, column: 15)
!5367 = !DILocation(line: 261, column: 3, scope: !5366)
!5368 = !DILocation(line: 263, column: 13, scope: !5366)
!5369 = !DILocation(line: 264, column: 3, scope: !5366)
!5370 = !DILocation(line: 266, column: 3, scope: !5366)
!5371 = !DILocation(line: 266, column: 3, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 266, column: 3)
!5373 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 266, column: 3)
!5374 = !DILocation(line: 266, column: 3, scope: !5373)
!5375 = !DILocation(line: 266, column: 3, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 266, column: 3)
!5377 = !DILocation(line: 266, column: 3, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 266, column: 3)
!5379 = !DILocation(line: 266, column: 3, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 266, column: 3)
!5381 = !DILocation(line: 268, column: 3, scope: !5366)
!5382 = !DILocation(line: 271, column: 14, scope: !4843)
!5383 = !DILocation(line: 271, column: 19, scope: !4843)
!5384 = !DILocation(line: 271, column: 36, scope: !4843)
!5385 = !DILocation(line: 271, column: 41, scope: !4843)
!5386 = !DILocation(line: 271, column: 45, scope: !4843)
!5387 = !DILocation(line: 271, column: 51, scope: !4843)
!5388 = !DILocation(line: 271, column: 59, scope: !4843)
!5389 = !DILocation(line: 271, column: 2, scope: !4843)
!5390 = !DILocation(line: 272, column: 1, scope: !4843)
!5391 = distinct !DISubprogram(name: "drm_fb_swab32_line", scope: !3, file: !3, line: 219, type: !4857, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5392)
!5392 = !{!5393, !5394, !5395, !5396, !5397, !5398}
!5393 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5391, file: !3, line: 219, type: !153)
!5394 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5391, file: !3, line: 219, type: !1622)
!5395 = !DILocalVariable(name: "pixels", arg: 3, scope: !5391, file: !3, line: 219, type: !7)
!5396 = !DILocalVariable(name: "dbuf32", scope: !5391, file: !3, line: 221, type: !2419)
!5397 = !DILocalVariable(name: "sbuf32", scope: !5391, file: !3, line: 222, type: !5049)
!5398 = !DILocalVariable(name: "send32", scope: !5391, file: !3, line: 223, type: !5049)
!5399 = !DILocation(line: 219, column: 38, scope: !5391)
!5400 = !DILocation(line: 219, column: 56, scope: !5391)
!5401 = !DILocation(line: 219, column: 75, scope: !5391)
!5402 = !DILocation(line: 221, column: 2, scope: !5391)
!5403 = !DILocation(line: 221, column: 7, scope: !5391)
!5404 = !DILocation(line: 221, column: 16, scope: !5391)
!5405 = !DILocation(line: 222, column: 2, scope: !5391)
!5406 = !DILocation(line: 222, column: 13, scope: !5391)
!5407 = !DILocation(line: 222, column: 22, scope: !5391)
!5408 = !DILocation(line: 223, column: 2, scope: !5391)
!5409 = !DILocation(line: 223, column: 13, scope: !5391)
!5410 = !DILocation(line: 223, column: 22, scope: !5391)
!5411 = !DILocation(line: 223, column: 31, scope: !5391)
!5412 = !DILocation(line: 223, column: 29, scope: !5391)
!5413 = !DILocation(line: 225, column: 2, scope: !5391)
!5414 = !DILocation(line: 225, column: 9, scope: !5391)
!5415 = !DILocation(line: 225, column: 18, scope: !5391)
!5416 = !DILocation(line: 225, column: 16, scope: !5391)
!5417 = !DILocation(line: 226, column: 15, scope: !5391)
!5418 = !DILocation(line: 226, column: 10, scope: !5391)
!5419 = !DILocation(line: 226, column: 13, scope: !5391)
!5420 = distinct !{!5420, !5413, !5417, !5261, !5262}
!5421 = !DILocation(line: 227, column: 1, scope: !5391)
!5422 = distinct !DISubprogram(name: "drm_fb_swab16_line", scope: !3, file: !3, line: 209, type: !4857, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5423 = !{!5424, !5425, !5426, !5427, !5429, !5431}
!5424 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5422, file: !3, line: 209, type: !153)
!5425 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5422, file: !3, line: 209, type: !1622)
!5426 = !DILocalVariable(name: "pixels", arg: 3, scope: !5422, file: !3, line: 209, type: !7)
!5427 = !DILocalVariable(name: "dbuf16", scope: !5422, file: !3, line: 211, type: !5428)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!5429 = !DILocalVariable(name: "sbuf16", scope: !5422, file: !3, line: 212, type: !5430)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!5431 = !DILocalVariable(name: "send16", scope: !5422, file: !3, line: 213, type: !5430)
!5432 = !DILocation(line: 209, column: 38, scope: !5422)
!5433 = !DILocation(line: 209, column: 56, scope: !5422)
!5434 = !DILocation(line: 209, column: 75, scope: !5422)
!5435 = !DILocation(line: 211, column: 2, scope: !5422)
!5436 = !DILocation(line: 211, column: 7, scope: !5422)
!5437 = !DILocation(line: 211, column: 16, scope: !5422)
!5438 = !DILocation(line: 212, column: 2, scope: !5422)
!5439 = !DILocation(line: 212, column: 13, scope: !5422)
!5440 = !DILocation(line: 212, column: 22, scope: !5422)
!5441 = !DILocation(line: 213, column: 2, scope: !5422)
!5442 = !DILocation(line: 213, column: 13, scope: !5422)
!5443 = !DILocation(line: 213, column: 22, scope: !5422)
!5444 = !DILocation(line: 213, column: 31, scope: !5422)
!5445 = !DILocation(line: 213, column: 29, scope: !5422)
!5446 = !DILocation(line: 215, column: 2, scope: !5422)
!5447 = !DILocation(line: 215, column: 9, scope: !5422)
!5448 = !DILocation(line: 215, column: 18, scope: !5422)
!5449 = !DILocation(line: 215, column: 16, scope: !5422)
!5450 = !DILocation(line: 216, column: 15, scope: !5422)
!5451 = !DILocation(line: 216, column: 10, scope: !5422)
!5452 = !DILocation(line: 216, column: 13, scope: !5422)
!5453 = distinct !{!5453, !5446, !5450, !5261, !5262}
!5454 = !DILocation(line: 217, column: 1, scope: !5422)
!5455 = !DISubprogram(name: "_dev_warn", scope: !5456, file: !5456, line: 52, type: !5457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5456 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5457 = !DISubroutineType(types: !5458)
!5458 = !{null, !4009, !228, null}
!5459 = !DILocation(line: 133, column: 42, scope: !5094)
!5460 = !DILocation(line: 134, column: 30, scope: !5094)
!5461 = !DILocation(line: 134, column: 51, scope: !5094)
!5462 = !DILocation(line: 135, column: 34, scope: !5094)
!5463 = !DILocation(line: 135, column: 69, scope: !5094)
!5464 = !DILocation(line: 136, column: 33, scope: !5094)
!5465 = !DILocation(line: 136, column: 44, scope: !5094)
!5466 = !DILocation(line: 137, column: 17, scope: !5094)
!5467 = !DILocation(line: 143, column: 7, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 143, column: 6)
!5469 = !DILocation(line: 143, column: 6, scope: !5094)
!5470 = !DILocation(line: 144, column: 13, scope: !5468)
!5471 = !DILocation(line: 144, column: 3, scope: !5468)
!5472 = !DILocation(line: 147, column: 6, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 147, column: 6)
!5474 = !DILocation(line: 147, column: 13, scope: !5473)
!5475 = !DILocation(line: 147, column: 6, scope: !5094)
!5476 = !DILocation(line: 148, column: 29, scope: !5473)
!5477 = !DILocation(line: 148, column: 36, scope: !5473)
!5478 = !DILocation(line: 148, column: 49, scope: !5473)
!5479 = !DILocation(line: 148, column: 63, scope: !5473)
!5480 = !DILocation(line: 149, column: 8, scope: !5473)
!5481 = !DILocation(line: 149, column: 15, scope: !5473)
!5482 = !DILocation(line: 149, column: 22, scope: !5473)
!5483 = !DILocation(line: 149, column: 26, scope: !5473)
!5484 = !DILocation(line: 149, column: 32, scope: !5473)
!5485 = !DILocation(line: 149, column: 51, scope: !5473)
!5486 = !DILocation(line: 148, column: 10, scope: !5473)
!5487 = !DILocation(line: 148, column: 3, scope: !5473)
!5488 = !DILocation(line: 151, column: 24, scope: !5473)
!5489 = !DILocation(line: 151, column: 31, scope: !5473)
!5490 = !DILocation(line: 151, column: 38, scope: !5473)
!5491 = !DILocation(line: 151, column: 52, scope: !5473)
!5492 = !DILocation(line: 152, column: 10, scope: !5473)
!5493 = !DILocation(line: 152, column: 17, scope: !5473)
!5494 = !DILocation(line: 152, column: 24, scope: !5473)
!5495 = !DILocation(line: 152, column: 28, scope: !5473)
!5496 = !DILocation(line: 152, column: 34, scope: !5473)
!5497 = !DILocation(line: 152, column: 53, scope: !5473)
!5498 = !DILocation(line: 151, column: 10, scope: !5473)
!5499 = !DILocation(line: 151, column: 3, scope: !5473)
!5500 = !DILocation(line: 153, column: 1, scope: !5094)
!5501 = !DILocation(line: 310, column: 50, scope: !4868)
!5502 = !DILocation(line: 310, column: 75, scope: !4868)
!5503 = !DILocation(line: 311, column: 35, scope: !4868)
!5504 = !DILocation(line: 311, column: 70, scope: !4868)
!5505 = !DILocation(line: 312, column: 34, scope: !4868)
!5506 = !DILocation(line: 318, column: 14, scope: !4868)
!5507 = !DILocation(line: 318, column: 19, scope: !4868)
!5508 = !DILocation(line: 318, column: 43, scope: !4868)
!5509 = !DILocation(line: 318, column: 48, scope: !4868)
!5510 = !DILocation(line: 318, column: 52, scope: !4868)
!5511 = !DILocation(line: 318, column: 2, scope: !4868)
!5512 = !DILocation(line: 320, column: 1, scope: !4868)
!5513 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb332_line", scope: !3, file: !3, line: 275, type: !4857, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5514 = !{!5515, !5516, !5517, !5518, !5519, !5522, !5523}
!5515 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5513, file: !3, line: 275, type: !153)
!5516 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5513, file: !3, line: 275, type: !1622)
!5517 = !DILocalVariable(name: "pixels", arg: 3, scope: !5513, file: !3, line: 275, type: !7)
!5518 = !DILocalVariable(name: "dbuf8", scope: !5513, file: !3, line: 277, type: !158)
!5519 = !DILocalVariable(name: "sbuf32", scope: !5513, file: !3, line: 278, type: !5520)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!5522 = !DILocalVariable(name: "x", scope: !5513, file: !3, line: 279, type: !7)
!5523 = !DILocalVariable(name: "pix", scope: !5513, file: !3, line: 280, type: !448)
!5524 = !DILocation(line: 275, column: 50, scope: !5513)
!5525 = !DILocation(line: 275, column: 68, scope: !5513)
!5526 = !DILocation(line: 275, column: 87, scope: !5513)
!5527 = !DILocation(line: 277, column: 2, scope: !5513)
!5528 = !DILocation(line: 277, column: 6, scope: !5513)
!5529 = !DILocation(line: 277, column: 14, scope: !5513)
!5530 = !DILocation(line: 278, column: 2, scope: !5513)
!5531 = !DILocation(line: 278, column: 16, scope: !5513)
!5532 = !DILocation(line: 278, column: 25, scope: !5513)
!5533 = !DILocation(line: 279, column: 2, scope: !5513)
!5534 = !DILocation(line: 279, column: 15, scope: !5513)
!5535 = !DILocation(line: 280, column: 2, scope: !5513)
!5536 = !DILocation(line: 280, column: 6, scope: !5513)
!5537 = !DILocation(line: 282, column: 9, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 282, column: 2)
!5539 = !DILocation(line: 282, column: 7, scope: !5538)
!5540 = !DILocation(line: 282, column: 14, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 282, column: 2)
!5542 = !DILocation(line: 282, column: 18, scope: !5541)
!5543 = !DILocation(line: 282, column: 16, scope: !5541)
!5544 = !DILocation(line: 282, column: 2, scope: !5538)
!5545 = !DILocation(line: 283, column: 9, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 282, column: 31)
!5547 = !DILocation(line: 283, column: 7, scope: !5546)
!5548 = !DILocation(line: 284, column: 16, scope: !5546)
!5549 = !DILocation(line: 284, column: 20, scope: !5546)
!5550 = !DILocation(line: 284, column: 34, scope: !5546)
!5551 = !DILocation(line: 285, column: 9, scope: !5546)
!5552 = !DILocation(line: 285, column: 13, scope: !5546)
!5553 = !DILocation(line: 285, column: 27, scope: !5546)
!5554 = !DILocation(line: 284, column: 41, scope: !5546)
!5555 = !DILocation(line: 286, column: 9, scope: !5546)
!5556 = !DILocation(line: 286, column: 13, scope: !5546)
!5557 = !DILocation(line: 286, column: 27, scope: !5546)
!5558 = !DILocation(line: 285, column: 34, scope: !5546)
!5559 = !DILocation(line: 284, column: 14, scope: !5546)
!5560 = !DILocation(line: 284, column: 3, scope: !5546)
!5561 = !DILocation(line: 284, column: 9, scope: !5546)
!5562 = !DILocation(line: 284, column: 12, scope: !5546)
!5563 = !DILocation(line: 287, column: 2, scope: !5546)
!5564 = !DILocation(line: 282, column: 27, scope: !5541)
!5565 = !DILocation(line: 282, column: 2, scope: !5541)
!5566 = distinct !{!5566, !5544, !5567, !5261, !5262}
!5567 = !DILocation(line: 287, column: 2, scope: !5538)
!5568 = !DILocation(line: 288, column: 1, scope: !5513)
!5569 = !DILocation(line: 380, column: 50, scope: !4881)
!5570 = !DILocation(line: 380, column: 75, scope: !4881)
!5571 = !DILocation(line: 381, column: 35, scope: !4881)
!5572 = !DILocation(line: 381, column: 70, scope: !4881)
!5573 = !DILocation(line: 382, column: 34, scope: !4881)
!5574 = !DILocation(line: 382, column: 45, scope: !4881)
!5575 = !DILocation(line: 388, column: 2, scope: !4881)
!5576 = !DILocation(line: 388, column: 9, scope: !4881)
!5577 = !DILocation(line: 390, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 390, column: 6)
!5579 = !DILocation(line: 390, column: 6, scope: !4881)
!5580 = !DILocation(line: 391, column: 13, scope: !5578)
!5581 = !DILocation(line: 391, column: 3, scope: !5578)
!5582 = !DILocation(line: 393, column: 13, scope: !5578)
!5583 = !DILocation(line: 395, column: 14, scope: !4881)
!5584 = !DILocation(line: 395, column: 19, scope: !4881)
!5585 = !DILocation(line: 395, column: 43, scope: !4881)
!5586 = !DILocation(line: 395, column: 48, scope: !4881)
!5587 = !DILocation(line: 395, column: 52, scope: !4881)
!5588 = !DILocation(line: 395, column: 65, scope: !4881)
!5589 = !DILocation(line: 395, column: 2, scope: !4881)
!5590 = !DILocation(line: 396, column: 1, scope: !4881)
!5591 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb565_swab_line", scope: !3, file: !3, line: 341, type: !4857, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5592)
!5592 = !{!5593, !5594, !5595, !5596, !5598, !5599, !5600, !5601}
!5593 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5591, file: !3, line: 341, type: !153)
!5594 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5591, file: !3, line: 341, type: !1622)
!5595 = !DILocalVariable(name: "pixels", arg: 3, scope: !5591, file: !3, line: 342, type: !7)
!5596 = !DILocalVariable(name: "dbuf16", scope: !5591, file: !3, line: 344, type: !5597)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!5598 = !DILocalVariable(name: "sbuf32", scope: !5591, file: !3, line: 345, type: !5520)
!5599 = !DILocalVariable(name: "x", scope: !5591, file: !3, line: 346, type: !7)
!5600 = !DILocalVariable(name: "val16", scope: !5591, file: !3, line: 347, type: !274)
!5601 = !DILocalVariable(name: "pix", scope: !5591, file: !3, line: 348, type: !448)
!5602 = !DILocation(line: 341, column: 55, scope: !5591)
!5603 = !DILocation(line: 341, column: 73, scope: !5591)
!5604 = !DILocation(line: 342, column: 20, scope: !5591)
!5605 = !DILocation(line: 344, column: 2, scope: !5591)
!5606 = !DILocation(line: 344, column: 10, scope: !5591)
!5607 = !DILocation(line: 344, column: 19, scope: !5591)
!5608 = !DILocation(line: 345, column: 2, scope: !5591)
!5609 = !DILocation(line: 345, column: 16, scope: !5591)
!5610 = !DILocation(line: 345, column: 25, scope: !5591)
!5611 = !DILocation(line: 346, column: 2, scope: !5591)
!5612 = !DILocation(line: 346, column: 15, scope: !5591)
!5613 = !DILocation(line: 347, column: 2, scope: !5591)
!5614 = !DILocation(line: 347, column: 6, scope: !5591)
!5615 = !DILocation(line: 348, column: 2, scope: !5591)
!5616 = !DILocation(line: 348, column: 6, scope: !5591)
!5617 = !DILocation(line: 350, column: 9, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 350, column: 2)
!5619 = !DILocation(line: 350, column: 7, scope: !5618)
!5620 = !DILocation(line: 350, column: 14, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 350, column: 2)
!5622 = !DILocation(line: 350, column: 18, scope: !5621)
!5623 = !DILocation(line: 350, column: 16, scope: !5621)
!5624 = !DILocation(line: 350, column: 2, scope: !5618)
!5625 = !DILocation(line: 351, column: 9, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 350, column: 31)
!5627 = !DILocation(line: 351, column: 7, scope: !5626)
!5628 = !DILocation(line: 352, column: 13, scope: !5626)
!5629 = !DILocation(line: 352, column: 17, scope: !5626)
!5630 = !DILocation(line: 352, column: 31, scope: !5626)
!5631 = !DILocation(line: 353, column: 6, scope: !5626)
!5632 = !DILocation(line: 353, column: 10, scope: !5626)
!5633 = !DILocation(line: 353, column: 24, scope: !5626)
!5634 = !DILocation(line: 352, column: 37, scope: !5626)
!5635 = !DILocation(line: 354, column: 6, scope: !5626)
!5636 = !DILocation(line: 354, column: 10, scope: !5626)
!5637 = !DILocation(line: 354, column: 24, scope: !5626)
!5638 = !DILocation(line: 353, column: 30, scope: !5626)
!5639 = !DILocation(line: 352, column: 11, scope: !5626)
!5640 = !DILocation(line: 352, column: 9, scope: !5626)
!5641 = !DILocation(line: 355, column: 15, scope: !5626)
!5642 = !DILocation(line: 355, column: 3, scope: !5626)
!5643 = !DILocation(line: 355, column: 10, scope: !5626)
!5644 = !DILocation(line: 355, column: 13, scope: !5626)
!5645 = !DILocation(line: 356, column: 2, scope: !5626)
!5646 = !DILocation(line: 350, column: 27, scope: !5621)
!5647 = !DILocation(line: 350, column: 2, scope: !5621)
!5648 = distinct !{!5648, !5624, !5649, !5261, !5262}
!5649 = !DILocation(line: 356, column: 2, scope: !5618)
!5650 = !DILocation(line: 357, column: 1, scope: !5591)
!5651 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb565_line", scope: !3, file: !3, line: 323, type: !4857, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5652)
!5652 = !{!5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660}
!5653 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5651, file: !3, line: 323, type: !153)
!5654 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5651, file: !3, line: 323, type: !1622)
!5655 = !DILocalVariable(name: "pixels", arg: 3, scope: !5651, file: !3, line: 323, type: !7)
!5656 = !DILocalVariable(name: "dbuf16", scope: !5651, file: !3, line: 325, type: !5597)
!5657 = !DILocalVariable(name: "sbuf32", scope: !5651, file: !3, line: 326, type: !5520)
!5658 = !DILocalVariable(name: "x", scope: !5651, file: !3, line: 327, type: !7)
!5659 = !DILocalVariable(name: "val16", scope: !5651, file: !3, line: 328, type: !274)
!5660 = !DILocalVariable(name: "pix", scope: !5651, file: !3, line: 329, type: !448)
!5661 = !DILocation(line: 323, column: 50, scope: !5651)
!5662 = !DILocation(line: 323, column: 68, scope: !5651)
!5663 = !DILocation(line: 323, column: 87, scope: !5651)
!5664 = !DILocation(line: 325, column: 2, scope: !5651)
!5665 = !DILocation(line: 325, column: 10, scope: !5651)
!5666 = !DILocation(line: 325, column: 19, scope: !5651)
!5667 = !DILocation(line: 326, column: 2, scope: !5651)
!5668 = !DILocation(line: 326, column: 16, scope: !5651)
!5669 = !DILocation(line: 326, column: 25, scope: !5651)
!5670 = !DILocation(line: 327, column: 2, scope: !5651)
!5671 = !DILocation(line: 327, column: 15, scope: !5651)
!5672 = !DILocation(line: 328, column: 2, scope: !5651)
!5673 = !DILocation(line: 328, column: 6, scope: !5651)
!5674 = !DILocation(line: 329, column: 2, scope: !5651)
!5675 = !DILocation(line: 329, column: 6, scope: !5651)
!5676 = !DILocation(line: 331, column: 9, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 331, column: 2)
!5678 = !DILocation(line: 331, column: 7, scope: !5677)
!5679 = !DILocation(line: 331, column: 14, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 331, column: 2)
!5681 = !DILocation(line: 331, column: 18, scope: !5680)
!5682 = !DILocation(line: 331, column: 16, scope: !5680)
!5683 = !DILocation(line: 331, column: 2, scope: !5677)
!5684 = !DILocation(line: 332, column: 9, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 331, column: 31)
!5686 = !DILocation(line: 332, column: 7, scope: !5685)
!5687 = !DILocation(line: 333, column: 13, scope: !5685)
!5688 = !DILocation(line: 333, column: 17, scope: !5685)
!5689 = !DILocation(line: 333, column: 31, scope: !5685)
!5690 = !DILocation(line: 334, column: 6, scope: !5685)
!5691 = !DILocation(line: 334, column: 10, scope: !5685)
!5692 = !DILocation(line: 334, column: 24, scope: !5685)
!5693 = !DILocation(line: 333, column: 37, scope: !5685)
!5694 = !DILocation(line: 335, column: 6, scope: !5685)
!5695 = !DILocation(line: 335, column: 10, scope: !5685)
!5696 = !DILocation(line: 335, column: 24, scope: !5685)
!5697 = !DILocation(line: 334, column: 30, scope: !5685)
!5698 = !DILocation(line: 333, column: 11, scope: !5685)
!5699 = !DILocation(line: 333, column: 9, scope: !5685)
!5700 = !DILocation(line: 336, column: 15, scope: !5685)
!5701 = !DILocation(line: 336, column: 3, scope: !5685)
!5702 = !DILocation(line: 336, column: 10, scope: !5685)
!5703 = !DILocation(line: 336, column: 13, scope: !5685)
!5704 = !DILocation(line: 337, column: 2, scope: !5685)
!5705 = !DILocation(line: 331, column: 27, scope: !5680)
!5706 = !DILocation(line: 331, column: 2, scope: !5680)
!5707 = distinct !{!5707, !5683, !5708, !5261, !5262}
!5708 = !DILocation(line: 337, column: 2, scope: !5677)
!5709 = !DILocation(line: 338, column: 1, scope: !5651)
!5710 = !DILocation(line: 437, column: 52, scope: !4894)
!5711 = !DILocation(line: 437, column: 77, scope: !4894)
!5712 = !DILocation(line: 438, column: 30, scope: !4894)
!5713 = !DILocation(line: 438, column: 65, scope: !4894)
!5714 = !DILocation(line: 439, column: 29, scope: !4894)
!5715 = !DILocation(line: 445, column: 14, scope: !4894)
!5716 = !DILocation(line: 445, column: 19, scope: !4894)
!5717 = !DILocation(line: 445, column: 43, scope: !4894)
!5718 = !DILocation(line: 445, column: 48, scope: !4894)
!5719 = !DILocation(line: 445, column: 52, scope: !4894)
!5720 = !DILocation(line: 445, column: 2, scope: !4894)
!5721 = !DILocation(line: 447, column: 1, scope: !4894)
!5722 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_xrgb1555_line", scope: !3, file: !3, line: 399, type: !4857, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5723 = !{!5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731}
!5724 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5722, file: !3, line: 399, type: !153)
!5725 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5722, file: !3, line: 399, type: !1622)
!5726 = !DILocalVariable(name: "pixels", arg: 3, scope: !5722, file: !3, line: 399, type: !7)
!5727 = !DILocalVariable(name: "dbuf16", scope: !5722, file: !3, line: 401, type: !5597)
!5728 = !DILocalVariable(name: "sbuf32", scope: !5722, file: !3, line: 402, type: !5520)
!5729 = !DILocalVariable(name: "x", scope: !5722, file: !3, line: 403, type: !7)
!5730 = !DILocalVariable(name: "val16", scope: !5722, file: !3, line: 404, type: !274)
!5731 = !DILocalVariable(name: "pix", scope: !5722, file: !3, line: 405, type: !448)
!5732 = !DILocation(line: 399, column: 52, scope: !5722)
!5733 = !DILocation(line: 399, column: 70, scope: !5722)
!5734 = !DILocation(line: 399, column: 89, scope: !5722)
!5735 = !DILocation(line: 401, column: 2, scope: !5722)
!5736 = !DILocation(line: 401, column: 10, scope: !5722)
!5737 = !DILocation(line: 401, column: 19, scope: !5722)
!5738 = !DILocation(line: 402, column: 2, scope: !5722)
!5739 = !DILocation(line: 402, column: 16, scope: !5722)
!5740 = !DILocation(line: 402, column: 25, scope: !5722)
!5741 = !DILocation(line: 403, column: 2, scope: !5722)
!5742 = !DILocation(line: 403, column: 15, scope: !5722)
!5743 = !DILocation(line: 404, column: 2, scope: !5722)
!5744 = !DILocation(line: 404, column: 6, scope: !5722)
!5745 = !DILocation(line: 405, column: 2, scope: !5722)
!5746 = !DILocation(line: 405, column: 6, scope: !5722)
!5747 = !DILocation(line: 407, column: 9, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 407, column: 2)
!5749 = !DILocation(line: 407, column: 7, scope: !5748)
!5750 = !DILocation(line: 407, column: 14, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 407, column: 2)
!5752 = !DILocation(line: 407, column: 18, scope: !5751)
!5753 = !DILocation(line: 407, column: 16, scope: !5751)
!5754 = !DILocation(line: 407, column: 2, scope: !5748)
!5755 = !DILocation(line: 408, column: 9, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 407, column: 31)
!5757 = !DILocation(line: 408, column: 7, scope: !5756)
!5758 = !DILocation(line: 409, column: 13, scope: !5756)
!5759 = !DILocation(line: 409, column: 17, scope: !5756)
!5760 = !DILocation(line: 409, column: 31, scope: !5756)
!5761 = !DILocation(line: 410, column: 6, scope: !5756)
!5762 = !DILocation(line: 410, column: 10, scope: !5756)
!5763 = !DILocation(line: 410, column: 24, scope: !5756)
!5764 = !DILocation(line: 409, column: 37, scope: !5756)
!5765 = !DILocation(line: 411, column: 6, scope: !5756)
!5766 = !DILocation(line: 411, column: 10, scope: !5756)
!5767 = !DILocation(line: 411, column: 24, scope: !5756)
!5768 = !DILocation(line: 410, column: 30, scope: !5756)
!5769 = !DILocation(line: 409, column: 11, scope: !5756)
!5770 = !DILocation(line: 409, column: 9, scope: !5756)
!5771 = !DILocation(line: 412, column: 15, scope: !5756)
!5772 = !DILocation(line: 412, column: 3, scope: !5756)
!5773 = !DILocation(line: 412, column: 10, scope: !5756)
!5774 = !DILocation(line: 412, column: 13, scope: !5756)
!5775 = !DILocation(line: 413, column: 2, scope: !5756)
!5776 = !DILocation(line: 407, column: 27, scope: !5751)
!5777 = !DILocation(line: 407, column: 2, scope: !5751)
!5778 = distinct !{!5778, !5754, !5779, !5261, !5262}
!5779 = !DILocation(line: 413, column: 2, scope: !5748)
!5780 = !DILocation(line: 414, column: 1, scope: !5722)
!5781 = !DILocation(line: 489, column: 52, scope: !4905)
!5782 = !DILocation(line: 489, column: 77, scope: !4905)
!5783 = !DILocation(line: 490, column: 30, scope: !4905)
!5784 = !DILocation(line: 490, column: 65, scope: !4905)
!5785 = !DILocation(line: 491, column: 29, scope: !4905)
!5786 = !DILocation(line: 497, column: 14, scope: !4905)
!5787 = !DILocation(line: 497, column: 19, scope: !4905)
!5788 = !DILocation(line: 497, column: 43, scope: !4905)
!5789 = !DILocation(line: 497, column: 48, scope: !4905)
!5790 = !DILocation(line: 497, column: 52, scope: !4905)
!5791 = !DILocation(line: 497, column: 2, scope: !4905)
!5792 = !DILocation(line: 499, column: 1, scope: !4905)
!5793 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_argb1555_line", scope: !3, file: !3, line: 450, type: !4857, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5794)
!5794 = !{!5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802}
!5795 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5793, file: !3, line: 450, type: !153)
!5796 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5793, file: !3, line: 450, type: !1622)
!5797 = !DILocalVariable(name: "pixels", arg: 3, scope: !5793, file: !3, line: 450, type: !7)
!5798 = !DILocalVariable(name: "dbuf16", scope: !5793, file: !3, line: 452, type: !5597)
!5799 = !DILocalVariable(name: "sbuf32", scope: !5793, file: !3, line: 453, type: !5520)
!5800 = !DILocalVariable(name: "x", scope: !5793, file: !3, line: 454, type: !7)
!5801 = !DILocalVariable(name: "val16", scope: !5793, file: !3, line: 455, type: !274)
!5802 = !DILocalVariable(name: "pix", scope: !5793, file: !3, line: 456, type: !448)
!5803 = !DILocation(line: 450, column: 52, scope: !5793)
!5804 = !DILocation(line: 450, column: 70, scope: !5793)
!5805 = !DILocation(line: 450, column: 89, scope: !5793)
!5806 = !DILocation(line: 452, column: 2, scope: !5793)
!5807 = !DILocation(line: 452, column: 10, scope: !5793)
!5808 = !DILocation(line: 452, column: 19, scope: !5793)
!5809 = !DILocation(line: 453, column: 2, scope: !5793)
!5810 = !DILocation(line: 453, column: 16, scope: !5793)
!5811 = !DILocation(line: 453, column: 25, scope: !5793)
!5812 = !DILocation(line: 454, column: 2, scope: !5793)
!5813 = !DILocation(line: 454, column: 15, scope: !5793)
!5814 = !DILocation(line: 455, column: 2, scope: !5793)
!5815 = !DILocation(line: 455, column: 6, scope: !5793)
!5816 = !DILocation(line: 456, column: 2, scope: !5793)
!5817 = !DILocation(line: 456, column: 6, scope: !5793)
!5818 = !DILocation(line: 458, column: 9, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 458, column: 2)
!5820 = !DILocation(line: 458, column: 7, scope: !5819)
!5821 = !DILocation(line: 458, column: 14, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 458, column: 2)
!5823 = !DILocation(line: 458, column: 18, scope: !5822)
!5824 = !DILocation(line: 458, column: 16, scope: !5822)
!5825 = !DILocation(line: 458, column: 2, scope: !5819)
!5826 = !DILocation(line: 459, column: 9, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 458, column: 31)
!5828 = !DILocation(line: 459, column: 7, scope: !5827)
!5829 = !DILocation(line: 461, column: 6, scope: !5827)
!5830 = !DILocation(line: 461, column: 10, scope: !5827)
!5831 = !DILocation(line: 461, column: 24, scope: !5827)
!5832 = !DILocation(line: 461, column: 4, scope: !5827)
!5833 = !DILocation(line: 460, column: 19, scope: !5827)
!5834 = !DILocation(line: 462, column: 6, scope: !5827)
!5835 = !DILocation(line: 462, column: 10, scope: !5827)
!5836 = !DILocation(line: 462, column: 24, scope: !5827)
!5837 = !DILocation(line: 462, column: 4, scope: !5827)
!5838 = !DILocation(line: 461, column: 30, scope: !5827)
!5839 = !DILocation(line: 463, column: 6, scope: !5827)
!5840 = !DILocation(line: 463, column: 10, scope: !5827)
!5841 = !DILocation(line: 463, column: 24, scope: !5827)
!5842 = !DILocation(line: 463, column: 4, scope: !5827)
!5843 = !DILocation(line: 462, column: 30, scope: !5827)
!5844 = !DILocation(line: 460, column: 11, scope: !5827)
!5845 = !DILocation(line: 460, column: 9, scope: !5827)
!5846 = !DILocation(line: 464, column: 15, scope: !5827)
!5847 = !DILocation(line: 464, column: 3, scope: !5827)
!5848 = !DILocation(line: 464, column: 10, scope: !5827)
!5849 = !DILocation(line: 464, column: 13, scope: !5827)
!5850 = !DILocation(line: 465, column: 2, scope: !5827)
!5851 = !DILocation(line: 458, column: 27, scope: !5822)
!5852 = !DILocation(line: 458, column: 2, scope: !5822)
!5853 = distinct !{!5853, !5825, !5854, !5261, !5262}
!5854 = !DILocation(line: 465, column: 2, scope: !5819)
!5855 = !DILocation(line: 466, column: 1, scope: !5793)
!5856 = !DILocation(line: 541, column: 52, scope: !4916)
!5857 = !DILocation(line: 541, column: 77, scope: !4916)
!5858 = !DILocation(line: 542, column: 30, scope: !4916)
!5859 = !DILocation(line: 542, column: 65, scope: !4916)
!5860 = !DILocation(line: 543, column: 29, scope: !4916)
!5861 = !DILocation(line: 549, column: 14, scope: !4916)
!5862 = !DILocation(line: 549, column: 19, scope: !4916)
!5863 = !DILocation(line: 549, column: 43, scope: !4916)
!5864 = !DILocation(line: 549, column: 48, scope: !4916)
!5865 = !DILocation(line: 549, column: 52, scope: !4916)
!5866 = !DILocation(line: 549, column: 2, scope: !4916)
!5867 = !DILocation(line: 551, column: 1, scope: !4916)
!5868 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgba5551_line", scope: !3, file: !3, line: 502, type: !4857, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5869)
!5869 = !{!5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877}
!5870 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5868, file: !3, line: 502, type: !153)
!5871 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5868, file: !3, line: 502, type: !1622)
!5872 = !DILocalVariable(name: "pixels", arg: 3, scope: !5868, file: !3, line: 502, type: !7)
!5873 = !DILocalVariable(name: "dbuf16", scope: !5868, file: !3, line: 504, type: !5597)
!5874 = !DILocalVariable(name: "sbuf32", scope: !5868, file: !3, line: 505, type: !5520)
!5875 = !DILocalVariable(name: "x", scope: !5868, file: !3, line: 506, type: !7)
!5876 = !DILocalVariable(name: "val16", scope: !5868, file: !3, line: 507, type: !274)
!5877 = !DILocalVariable(name: "pix", scope: !5868, file: !3, line: 508, type: !448)
!5878 = !DILocation(line: 502, column: 52, scope: !5868)
!5879 = !DILocation(line: 502, column: 70, scope: !5868)
!5880 = !DILocation(line: 502, column: 89, scope: !5868)
!5881 = !DILocation(line: 504, column: 2, scope: !5868)
!5882 = !DILocation(line: 504, column: 10, scope: !5868)
!5883 = !DILocation(line: 504, column: 19, scope: !5868)
!5884 = !DILocation(line: 505, column: 2, scope: !5868)
!5885 = !DILocation(line: 505, column: 16, scope: !5868)
!5886 = !DILocation(line: 505, column: 25, scope: !5868)
!5887 = !DILocation(line: 506, column: 2, scope: !5868)
!5888 = !DILocation(line: 506, column: 15, scope: !5868)
!5889 = !DILocation(line: 507, column: 2, scope: !5868)
!5890 = !DILocation(line: 507, column: 6, scope: !5868)
!5891 = !DILocation(line: 508, column: 2, scope: !5868)
!5892 = !DILocation(line: 508, column: 6, scope: !5868)
!5893 = !DILocation(line: 510, column: 9, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 510, column: 2)
!5895 = !DILocation(line: 510, column: 7, scope: !5894)
!5896 = !DILocation(line: 510, column: 14, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 510, column: 2)
!5898 = !DILocation(line: 510, column: 18, scope: !5897)
!5899 = !DILocation(line: 510, column: 16, scope: !5897)
!5900 = !DILocation(line: 510, column: 2, scope: !5894)
!5901 = !DILocation(line: 511, column: 9, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 510, column: 31)
!5903 = !DILocation(line: 511, column: 7, scope: !5902)
!5904 = !DILocation(line: 512, column: 13, scope: !5902)
!5905 = !DILocation(line: 512, column: 17, scope: !5902)
!5906 = !DILocation(line: 512, column: 31, scope: !5902)
!5907 = !DILocation(line: 513, column: 6, scope: !5902)
!5908 = !DILocation(line: 513, column: 10, scope: !5902)
!5909 = !DILocation(line: 513, column: 24, scope: !5902)
!5910 = !DILocation(line: 512, column: 37, scope: !5902)
!5911 = !DILocation(line: 514, column: 6, scope: !5902)
!5912 = !DILocation(line: 514, column: 10, scope: !5902)
!5913 = !DILocation(line: 514, column: 24, scope: !5902)
!5914 = !DILocation(line: 513, column: 30, scope: !5902)
!5915 = !DILocation(line: 512, column: 11, scope: !5902)
!5916 = !DILocation(line: 514, column: 30, scope: !5902)
!5917 = !DILocation(line: 512, column: 9, scope: !5902)
!5918 = !DILocation(line: 516, column: 15, scope: !5902)
!5919 = !DILocation(line: 516, column: 3, scope: !5902)
!5920 = !DILocation(line: 516, column: 10, scope: !5902)
!5921 = !DILocation(line: 516, column: 13, scope: !5902)
!5922 = !DILocation(line: 517, column: 2, scope: !5902)
!5923 = !DILocation(line: 510, column: 27, scope: !5897)
!5924 = !DILocation(line: 510, column: 2, scope: !5897)
!5925 = distinct !{!5925, !5900, !5926, !5261, !5262}
!5926 = !DILocation(line: 517, column: 2, scope: !5894)
!5927 = !DILocation(line: 518, column: 1, scope: !5868)
!5928 = !DILocation(line: 591, column: 50, scope: !4927)
!5929 = !DILocation(line: 591, column: 75, scope: !4927)
!5930 = !DILocation(line: 592, column: 35, scope: !4927)
!5931 = !DILocation(line: 592, column: 70, scope: !4927)
!5932 = !DILocation(line: 593, column: 34, scope: !4927)
!5933 = !DILocation(line: 599, column: 14, scope: !4927)
!5934 = !DILocation(line: 599, column: 19, scope: !4927)
!5935 = !DILocation(line: 599, column: 43, scope: !4927)
!5936 = !DILocation(line: 599, column: 48, scope: !4927)
!5937 = !DILocation(line: 599, column: 52, scope: !4927)
!5938 = !DILocation(line: 599, column: 2, scope: !4927)
!5939 = !DILocation(line: 601, column: 1, scope: !4927)
!5940 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb888_line", scope: !3, file: !3, line: 554, type: !4857, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5941)
!5941 = !{!5942, !5943, !5944, !5945, !5946, !5947, !5948}
!5942 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5940, file: !3, line: 554, type: !153)
!5943 = !DILocalVariable(name: "sbuf", arg: 2, scope: !5940, file: !3, line: 554, type: !1622)
!5944 = !DILocalVariable(name: "pixels", arg: 3, scope: !5940, file: !3, line: 554, type: !7)
!5945 = !DILocalVariable(name: "dbuf8", scope: !5940, file: !3, line: 556, type: !158)
!5946 = !DILocalVariable(name: "sbuf32", scope: !5940, file: !3, line: 557, type: !5520)
!5947 = !DILocalVariable(name: "x", scope: !5940, file: !3, line: 558, type: !7)
!5948 = !DILocalVariable(name: "pix", scope: !5940, file: !3, line: 559, type: !448)
!5949 = !DILocation(line: 554, column: 50, scope: !5940)
!5950 = !DILocation(line: 554, column: 68, scope: !5940)
!5951 = !DILocation(line: 554, column: 87, scope: !5940)
!5952 = !DILocation(line: 556, column: 2, scope: !5940)
!5953 = !DILocation(line: 556, column: 6, scope: !5940)
!5954 = !DILocation(line: 556, column: 14, scope: !5940)
!5955 = !DILocation(line: 557, column: 2, scope: !5940)
!5956 = !DILocation(line: 557, column: 16, scope: !5940)
!5957 = !DILocation(line: 557, column: 25, scope: !5940)
!5958 = !DILocation(line: 558, column: 2, scope: !5940)
!5959 = !DILocation(line: 558, column: 15, scope: !5940)
!5960 = !DILocation(line: 559, column: 2, scope: !5940)
!5961 = !DILocation(line: 559, column: 6, scope: !5940)
!5962 = !DILocation(line: 561, column: 9, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 561, column: 2)
!5964 = !DILocation(line: 561, column: 7, scope: !5963)
!5965 = !DILocation(line: 561, column: 14, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5963, file: !3, line: 561, column: 2)
!5967 = !DILocation(line: 561, column: 18, scope: !5966)
!5968 = !DILocation(line: 561, column: 16, scope: !5966)
!5969 = !DILocation(line: 561, column: 2, scope: !5963)
!5970 = !DILocation(line: 562, column: 9, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 561, column: 31)
!5972 = !DILocation(line: 562, column: 7, scope: !5971)
!5973 = !DILocation(line: 564, column: 15, scope: !5971)
!5974 = !DILocation(line: 564, column: 19, scope: !5971)
!5975 = !DILocation(line: 564, column: 33, scope: !5971)
!5976 = !DILocation(line: 564, column: 14, scope: !5971)
!5977 = !DILocation(line: 564, column: 9, scope: !5971)
!5978 = !DILocation(line: 564, column: 12, scope: !5971)
!5979 = !DILocation(line: 565, column: 15, scope: !5971)
!5980 = !DILocation(line: 565, column: 19, scope: !5971)
!5981 = !DILocation(line: 565, column: 33, scope: !5971)
!5982 = !DILocation(line: 565, column: 14, scope: !5971)
!5983 = !DILocation(line: 565, column: 9, scope: !5971)
!5984 = !DILocation(line: 565, column: 12, scope: !5971)
!5985 = !DILocation(line: 566, column: 15, scope: !5971)
!5986 = !DILocation(line: 566, column: 19, scope: !5971)
!5987 = !DILocation(line: 566, column: 33, scope: !5971)
!5988 = !DILocation(line: 566, column: 14, scope: !5971)
!5989 = !DILocation(line: 566, column: 9, scope: !5971)
!5990 = !DILocation(line: 566, column: 12, scope: !5971)
!5991 = !DILocation(line: 567, column: 2, scope: !5971)
!5992 = !DILocation(line: 561, column: 27, scope: !5966)
!5993 = !DILocation(line: 561, column: 2, scope: !5966)
!5994 = distinct !{!5994, !5969, !5995, !5261, !5262}
!5995 = !DILocation(line: 567, column: 2, scope: !5963)
!5996 = !DILocation(line: 568, column: 1, scope: !5940)
!5997 = !DILocation(line: 639, column: 52, scope: !4938)
!5998 = !DILocation(line: 639, column: 77, scope: !4938)
!5999 = !DILocation(line: 640, column: 30, scope: !4938)
!6000 = !DILocation(line: 640, column: 65, scope: !4938)
!6001 = !DILocation(line: 641, column: 29, scope: !4938)
!6002 = !DILocation(line: 647, column: 14, scope: !4938)
!6003 = !DILocation(line: 647, column: 19, scope: !4938)
!6004 = !DILocation(line: 647, column: 43, scope: !4938)
!6005 = !DILocation(line: 647, column: 48, scope: !4938)
!6006 = !DILocation(line: 647, column: 52, scope: !4938)
!6007 = !DILocation(line: 647, column: 2, scope: !4938)
!6008 = !DILocation(line: 649, column: 1, scope: !4938)
!6009 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_argb8888_line", scope: !3, file: !3, line: 604, type: !4857, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6010 = !{!6011, !6012, !6013, !6014, !6016, !6017, !6018}
!6011 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6009, file: !3, line: 604, type: !153)
!6012 = !DILocalVariable(name: "sbuf", arg: 2, scope: !6009, file: !3, line: 604, type: !1622)
!6013 = !DILocalVariable(name: "pixels", arg: 3, scope: !6009, file: !3, line: 604, type: !7)
!6014 = !DILocalVariable(name: "dbuf32", scope: !6009, file: !3, line: 606, type: !6015)
!6015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!6016 = !DILocalVariable(name: "sbuf32", scope: !6009, file: !3, line: 607, type: !5520)
!6017 = !DILocalVariable(name: "x", scope: !6009, file: !3, line: 608, type: !7)
!6018 = !DILocalVariable(name: "pix", scope: !6009, file: !3, line: 609, type: !448)
!6019 = !DILocation(line: 604, column: 52, scope: !6009)
!6020 = !DILocation(line: 604, column: 70, scope: !6009)
!6021 = !DILocation(line: 604, column: 89, scope: !6009)
!6022 = !DILocation(line: 606, column: 2, scope: !6009)
!6023 = !DILocation(line: 606, column: 10, scope: !6009)
!6024 = !DILocation(line: 606, column: 19, scope: !6009)
!6025 = !DILocation(line: 607, column: 2, scope: !6009)
!6026 = !DILocation(line: 607, column: 16, scope: !6009)
!6027 = !DILocation(line: 607, column: 25, scope: !6009)
!6028 = !DILocation(line: 608, column: 2, scope: !6009)
!6029 = !DILocation(line: 608, column: 15, scope: !6009)
!6030 = !DILocation(line: 609, column: 2, scope: !6009)
!6031 = !DILocation(line: 609, column: 6, scope: !6009)
!6032 = !DILocation(line: 611, column: 9, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 611, column: 2)
!6034 = !DILocation(line: 611, column: 7, scope: !6033)
!6035 = !DILocation(line: 611, column: 14, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 611, column: 2)
!6037 = !DILocation(line: 611, column: 18, scope: !6036)
!6038 = !DILocation(line: 611, column: 16, scope: !6036)
!6039 = !DILocation(line: 611, column: 2, scope: !6033)
!6040 = !DILocation(line: 612, column: 9, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 611, column: 31)
!6042 = !DILocation(line: 612, column: 7, scope: !6041)
!6043 = !DILocation(line: 613, column: 7, scope: !6041)
!6044 = !DILocation(line: 614, column: 15, scope: !6041)
!6045 = !DILocation(line: 614, column: 3, scope: !6041)
!6046 = !DILocation(line: 614, column: 10, scope: !6041)
!6047 = !DILocation(line: 614, column: 13, scope: !6041)
!6048 = !DILocation(line: 615, column: 2, scope: !6041)
!6049 = !DILocation(line: 611, column: 27, scope: !6036)
!6050 = !DILocation(line: 611, column: 2, scope: !6036)
!6051 = distinct !{!6051, !6039, !6052, !5261, !5262}
!6052 = !DILocation(line: 615, column: 2, scope: !6033)
!6053 = !DILocation(line: 616, column: 1, scope: !6009)
!6054 = !DILocation(line: 751, column: 55, scope: !4949)
!6055 = !DILocation(line: 751, column: 80, scope: !4949)
!6056 = !DILocation(line: 752, column: 33, scope: !4949)
!6057 = !DILocation(line: 752, column: 68, scope: !4949)
!6058 = !DILocation(line: 753, column: 32, scope: !4949)
!6059 = !DILocation(line: 759, column: 14, scope: !4949)
!6060 = !DILocation(line: 759, column: 19, scope: !4949)
!6061 = !DILocation(line: 759, column: 43, scope: !4949)
!6062 = !DILocation(line: 759, column: 48, scope: !4949)
!6063 = !DILocation(line: 759, column: 52, scope: !4949)
!6064 = !DILocation(line: 759, column: 2, scope: !4949)
!6065 = !DILocation(line: 761, column: 1, scope: !4949)
!6066 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_xrgb2101010_line", scope: !3, file: !3, line: 712, type: !4857, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6067)
!6067 = !{!6068, !6069, !6070, !6071, !6072, !6073, !6074, !6075}
!6068 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6066, file: !3, line: 712, type: !153)
!6069 = !DILocalVariable(name: "sbuf", arg: 2, scope: !6066, file: !3, line: 712, type: !1622)
!6070 = !DILocalVariable(name: "pixels", arg: 3, scope: !6066, file: !3, line: 712, type: !7)
!6071 = !DILocalVariable(name: "dbuf32", scope: !6066, file: !3, line: 714, type: !6015)
!6072 = !DILocalVariable(name: "sbuf32", scope: !6066, file: !3, line: 715, type: !5520)
!6073 = !DILocalVariable(name: "x", scope: !6066, file: !3, line: 716, type: !7)
!6074 = !DILocalVariable(name: "val32", scope: !6066, file: !3, line: 717, type: !448)
!6075 = !DILocalVariable(name: "pix", scope: !6066, file: !3, line: 718, type: !448)
!6076 = !DILocation(line: 712, column: 55, scope: !6066)
!6077 = !DILocation(line: 712, column: 73, scope: !6066)
!6078 = !DILocation(line: 712, column: 92, scope: !6066)
!6079 = !DILocation(line: 714, column: 2, scope: !6066)
!6080 = !DILocation(line: 714, column: 10, scope: !6066)
!6081 = !DILocation(line: 714, column: 19, scope: !6066)
!6082 = !DILocation(line: 715, column: 2, scope: !6066)
!6083 = !DILocation(line: 715, column: 16, scope: !6066)
!6084 = !DILocation(line: 715, column: 25, scope: !6066)
!6085 = !DILocation(line: 716, column: 2, scope: !6066)
!6086 = !DILocation(line: 716, column: 15, scope: !6066)
!6087 = !DILocation(line: 717, column: 2, scope: !6066)
!6088 = !DILocation(line: 717, column: 6, scope: !6066)
!6089 = !DILocation(line: 718, column: 2, scope: !6066)
!6090 = !DILocation(line: 718, column: 6, scope: !6066)
!6091 = !DILocation(line: 720, column: 9, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 720, column: 2)
!6093 = !DILocation(line: 720, column: 7, scope: !6092)
!6094 = !DILocation(line: 720, column: 14, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 720, column: 2)
!6096 = !DILocation(line: 720, column: 18, scope: !6095)
!6097 = !DILocation(line: 720, column: 16, scope: !6095)
!6098 = !DILocation(line: 720, column: 2, scope: !6092)
!6099 = !DILocation(line: 721, column: 9, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 720, column: 31)
!6101 = !DILocation(line: 721, column: 7, scope: !6100)
!6102 = !DILocation(line: 722, column: 13, scope: !6100)
!6103 = !DILocation(line: 722, column: 17, scope: !6100)
!6104 = !DILocation(line: 722, column: 31, scope: !6100)
!6105 = !DILocation(line: 723, column: 6, scope: !6100)
!6106 = !DILocation(line: 723, column: 10, scope: !6100)
!6107 = !DILocation(line: 723, column: 24, scope: !6100)
!6108 = !DILocation(line: 722, column: 37, scope: !6100)
!6109 = !DILocation(line: 724, column: 6, scope: !6100)
!6110 = !DILocation(line: 724, column: 10, scope: !6100)
!6111 = !DILocation(line: 724, column: 24, scope: !6100)
!6112 = !DILocation(line: 723, column: 30, scope: !6100)
!6113 = !DILocation(line: 722, column: 9, scope: !6100)
!6114 = !DILocation(line: 725, column: 9, scope: !6100)
!6115 = !DILocation(line: 725, column: 19, scope: !6100)
!6116 = !DILocation(line: 725, column: 25, scope: !6100)
!6117 = !DILocation(line: 725, column: 31, scope: !6100)
!6118 = !DILocation(line: 725, column: 15, scope: !6100)
!6119 = !DILocation(line: 725, column: 7, scope: !6100)
!6120 = !DILocation(line: 726, column: 15, scope: !6100)
!6121 = !DILocation(line: 726, column: 10, scope: !6100)
!6122 = !DILocation(line: 726, column: 13, scope: !6100)
!6123 = !DILocation(line: 727, column: 2, scope: !6100)
!6124 = !DILocation(line: 720, column: 27, scope: !6095)
!6125 = !DILocation(line: 720, column: 2, scope: !6095)
!6126 = distinct !{!6126, !6098, !6127, !5261, !5262}
!6127 = !DILocation(line: 727, column: 2, scope: !6092)
!6128 = !DILocation(line: 728, column: 1, scope: !6066)
!6129 = !DILocation(line: 804, column: 55, scope: !4960)
!6130 = !DILocation(line: 804, column: 80, scope: !4960)
!6131 = !DILocation(line: 805, column: 33, scope: !4960)
!6132 = !DILocation(line: 805, column: 68, scope: !4960)
!6133 = !DILocation(line: 806, column: 32, scope: !4960)
!6134 = !DILocation(line: 812, column: 14, scope: !4960)
!6135 = !DILocation(line: 812, column: 19, scope: !4960)
!6136 = !DILocation(line: 812, column: 43, scope: !4960)
!6137 = !DILocation(line: 812, column: 48, scope: !4960)
!6138 = !DILocation(line: 812, column: 52, scope: !4960)
!6139 = !DILocation(line: 812, column: 2, scope: !4960)
!6140 = !DILocation(line: 814, column: 1, scope: !4960)
!6141 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_argb2101010_line", scope: !3, file: !3, line: 764, type: !4857, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6142)
!6142 = !{!6143, !6144, !6145, !6146, !6147, !6148, !6149, !6150}
!6143 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6141, file: !3, line: 764, type: !153)
!6144 = !DILocalVariable(name: "sbuf", arg: 2, scope: !6141, file: !3, line: 764, type: !1622)
!6145 = !DILocalVariable(name: "pixels", arg: 3, scope: !6141, file: !3, line: 764, type: !7)
!6146 = !DILocalVariable(name: "dbuf32", scope: !6141, file: !3, line: 766, type: !6015)
!6147 = !DILocalVariable(name: "sbuf32", scope: !6141, file: !3, line: 767, type: !5520)
!6148 = !DILocalVariable(name: "x", scope: !6141, file: !3, line: 768, type: !7)
!6149 = !DILocalVariable(name: "val32", scope: !6141, file: !3, line: 769, type: !448)
!6150 = !DILocalVariable(name: "pix", scope: !6141, file: !3, line: 770, type: !448)
!6151 = !DILocation(line: 764, column: 55, scope: !6141)
!6152 = !DILocation(line: 764, column: 73, scope: !6141)
!6153 = !DILocation(line: 764, column: 92, scope: !6141)
!6154 = !DILocation(line: 766, column: 2, scope: !6141)
!6155 = !DILocation(line: 766, column: 10, scope: !6141)
!6156 = !DILocation(line: 766, column: 19, scope: !6141)
!6157 = !DILocation(line: 767, column: 2, scope: !6141)
!6158 = !DILocation(line: 767, column: 16, scope: !6141)
!6159 = !DILocation(line: 767, column: 25, scope: !6141)
!6160 = !DILocation(line: 768, column: 2, scope: !6141)
!6161 = !DILocation(line: 768, column: 15, scope: !6141)
!6162 = !DILocation(line: 769, column: 2, scope: !6141)
!6163 = !DILocation(line: 769, column: 6, scope: !6141)
!6164 = !DILocation(line: 770, column: 2, scope: !6141)
!6165 = !DILocation(line: 770, column: 6, scope: !6141)
!6166 = !DILocation(line: 772, column: 9, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 772, column: 2)
!6168 = !DILocation(line: 772, column: 7, scope: !6167)
!6169 = !DILocation(line: 772, column: 14, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 772, column: 2)
!6171 = !DILocation(line: 772, column: 18, scope: !6170)
!6172 = !DILocation(line: 772, column: 16, scope: !6170)
!6173 = !DILocation(line: 772, column: 2, scope: !6167)
!6174 = !DILocation(line: 773, column: 9, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 772, column: 31)
!6176 = !DILocation(line: 773, column: 7, scope: !6175)
!6177 = !DILocation(line: 774, column: 13, scope: !6175)
!6178 = !DILocation(line: 774, column: 17, scope: !6175)
!6179 = !DILocation(line: 774, column: 31, scope: !6175)
!6180 = !DILocation(line: 775, column: 6, scope: !6175)
!6181 = !DILocation(line: 775, column: 10, scope: !6175)
!6182 = !DILocation(line: 775, column: 24, scope: !6175)
!6183 = !DILocation(line: 774, column: 37, scope: !6175)
!6184 = !DILocation(line: 776, column: 6, scope: !6175)
!6185 = !DILocation(line: 776, column: 10, scope: !6175)
!6186 = !DILocation(line: 776, column: 24, scope: !6175)
!6187 = !DILocation(line: 775, column: 30, scope: !6175)
!6188 = !DILocation(line: 774, column: 9, scope: !6175)
!6189 = !DILocation(line: 778, column: 9, scope: !6175)
!6190 = !DILocation(line: 777, column: 25, scope: !6175)
!6191 = !DILocation(line: 778, column: 19, scope: !6175)
!6192 = !DILocation(line: 778, column: 25, scope: !6175)
!6193 = !DILocation(line: 778, column: 31, scope: !6175)
!6194 = !DILocation(line: 778, column: 17, scope: !6175)
!6195 = !DILocation(line: 778, column: 15, scope: !6175)
!6196 = !DILocation(line: 777, column: 9, scope: !6175)
!6197 = !DILocation(line: 777, column: 7, scope: !6175)
!6198 = !DILocation(line: 779, column: 15, scope: !6175)
!6199 = !DILocation(line: 779, column: 10, scope: !6175)
!6200 = !DILocation(line: 779, column: 13, scope: !6175)
!6201 = !DILocation(line: 780, column: 2, scope: !6175)
!6202 = !DILocation(line: 772, column: 27, scope: !6170)
!6203 = !DILocation(line: 772, column: 2, scope: !6170)
!6204 = distinct !{!6204, !6173, !6205, !5261, !5262}
!6205 = !DILocation(line: 780, column: 2, scope: !6167)
!6206 = !DILocation(line: 781, column: 1, scope: !6141)
!6207 = !DILocation(line: 859, column: 49, scope: !4971)
!6208 = !DILocation(line: 859, column: 74, scope: !4971)
!6209 = !DILocation(line: 860, column: 34, scope: !4971)
!6210 = !DILocation(line: 860, column: 69, scope: !4971)
!6211 = !DILocation(line: 861, column: 33, scope: !4971)
!6212 = !DILocation(line: 867, column: 14, scope: !4971)
!6213 = !DILocation(line: 867, column: 19, scope: !4971)
!6214 = !DILocation(line: 867, column: 43, scope: !4971)
!6215 = !DILocation(line: 867, column: 48, scope: !4971)
!6216 = !DILocation(line: 867, column: 52, scope: !4971)
!6217 = !DILocation(line: 867, column: 2, scope: !4971)
!6218 = !DILocation(line: 869, column: 1, scope: !4971)
!6219 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_gray8_line", scope: !3, file: !3, line: 817, type: !4857, scopeLine: 818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6220)
!6220 = !{!6221, !6222, !6223, !6224, !6225, !6226, !6227, !6231, !6232, !6233}
!6221 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6219, file: !3, line: 817, type: !153)
!6222 = !DILocalVariable(name: "sbuf", arg: 2, scope: !6219, file: !3, line: 817, type: !1622)
!6223 = !DILocalVariable(name: "pixels", arg: 3, scope: !6219, file: !3, line: 817, type: !7)
!6224 = !DILocalVariable(name: "dbuf8", scope: !6219, file: !3, line: 819, type: !158)
!6225 = !DILocalVariable(name: "sbuf32", scope: !6219, file: !3, line: 820, type: !5520)
!6226 = !DILocalVariable(name: "x", scope: !6219, file: !3, line: 821, type: !7)
!6227 = !DILocalVariable(name: "pix", scope: !6228, file: !3, line: 824, type: !448)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 823, column: 31)
!6229 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 823, column: 2)
!6230 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 823, column: 2)
!6231 = !DILocalVariable(name: "r", scope: !6228, file: !3, line: 825, type: !159)
!6232 = !DILocalVariable(name: "g", scope: !6228, file: !3, line: 826, type: !159)
!6233 = !DILocalVariable(name: "b", scope: !6228, file: !3, line: 827, type: !159)
!6234 = !DILocation(line: 817, column: 49, scope: !6219)
!6235 = !DILocation(line: 817, column: 67, scope: !6219)
!6236 = !DILocation(line: 817, column: 86, scope: !6219)
!6237 = !DILocation(line: 819, column: 2, scope: !6219)
!6238 = !DILocation(line: 819, column: 6, scope: !6219)
!6239 = !DILocation(line: 819, column: 14, scope: !6219)
!6240 = !DILocation(line: 820, column: 2, scope: !6219)
!6241 = !DILocation(line: 820, column: 16, scope: !6219)
!6242 = !DILocation(line: 820, column: 25, scope: !6219)
!6243 = !DILocation(line: 821, column: 2, scope: !6219)
!6244 = !DILocation(line: 821, column: 15, scope: !6219)
!6245 = !DILocation(line: 823, column: 9, scope: !6230)
!6246 = !DILocation(line: 823, column: 7, scope: !6230)
!6247 = !DILocation(line: 823, column: 14, scope: !6229)
!6248 = !DILocation(line: 823, column: 18, scope: !6229)
!6249 = !DILocation(line: 823, column: 16, scope: !6229)
!6250 = !DILocation(line: 823, column: 2, scope: !6230)
!6251 = !DILocation(line: 824, column: 3, scope: !6228)
!6252 = !DILocation(line: 824, column: 7, scope: !6228)
!6253 = !DILocation(line: 824, column: 13, scope: !6228)
!6254 = !DILocation(line: 825, column: 3, scope: !6228)
!6255 = !DILocation(line: 825, column: 6, scope: !6228)
!6256 = !DILocation(line: 825, column: 11, scope: !6228)
!6257 = !DILocation(line: 825, column: 15, scope: !6228)
!6258 = !DILocation(line: 825, column: 29, scope: !6228)
!6259 = !DILocation(line: 825, column: 10, scope: !6228)
!6260 = !DILocation(line: 826, column: 3, scope: !6228)
!6261 = !DILocation(line: 826, column: 6, scope: !6228)
!6262 = !DILocation(line: 826, column: 11, scope: !6228)
!6263 = !DILocation(line: 826, column: 15, scope: !6228)
!6264 = !DILocation(line: 826, column: 29, scope: !6228)
!6265 = !DILocation(line: 826, column: 10, scope: !6228)
!6266 = !DILocation(line: 827, column: 3, scope: !6228)
!6267 = !DILocation(line: 827, column: 6, scope: !6228)
!6268 = !DILocation(line: 827, column: 11, scope: !6228)
!6269 = !DILocation(line: 827, column: 15, scope: !6228)
!6270 = !DILocation(line: 830, column: 19, scope: !6228)
!6271 = !DILocation(line: 830, column: 17, scope: !6228)
!6272 = !DILocation(line: 830, column: 27, scope: !6228)
!6273 = !DILocation(line: 830, column: 25, scope: !6228)
!6274 = !DILocation(line: 830, column: 21, scope: !6228)
!6275 = !DILocation(line: 830, column: 31, scope: !6228)
!6276 = !DILocation(line: 830, column: 29, scope: !6228)
!6277 = !DILocation(line: 830, column: 34, scope: !6228)
!6278 = !DILocation(line: 830, column: 14, scope: !6228)
!6279 = !DILocation(line: 830, column: 9, scope: !6228)
!6280 = !DILocation(line: 830, column: 12, scope: !6228)
!6281 = !DILocation(line: 831, column: 2, scope: !6229)
!6282 = !DILocation(line: 831, column: 2, scope: !6228)
!6283 = !DILocation(line: 823, column: 27, scope: !6229)
!6284 = !DILocation(line: 823, column: 2, scope: !6229)
!6285 = distinct !{!6285, !6250, !6286, !5261, !5262}
!6286 = !DILocation(line: 831, column: 2, scope: !6230)
!6287 = !DILocation(line: 832, column: 1, scope: !6219)
!6288 = !DILocation(line: 897, column: 35, scope: !4982)
!6289 = !DILocation(line: 897, column: 60, scope: !4982)
!6290 = !DILocation(line: 897, column: 80, scope: !4982)
!6291 = !DILocation(line: 898, column: 27, scope: !4982)
!6292 = !DILocation(line: 898, column: 62, scope: !4982)
!6293 = !DILocation(line: 899, column: 26, scope: !4982)
!6294 = !DILocation(line: 901, column: 2, scope: !4982)
!6295 = !DILocation(line: 901, column: 11, scope: !4982)
!6296 = !DILocation(line: 901, column: 23, scope: !4982)
!6297 = !DILocation(line: 901, column: 27, scope: !4982)
!6298 = !DILocation(line: 901, column: 35, scope: !4982)
!6299 = !DILocation(line: 903, column: 6, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 903, column: 6)
!6301 = !DILocation(line: 903, column: 19, scope: !6300)
!6302 = !DILocation(line: 903, column: 16, scope: !6300)
!6303 = !DILocation(line: 903, column: 6, scope: !4982)
!6304 = !DILocation(line: 904, column: 17, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 903, column: 31)
!6306 = !DILocation(line: 904, column: 22, scope: !6305)
!6307 = !DILocation(line: 904, column: 33, scope: !6305)
!6308 = !DILocation(line: 904, column: 38, scope: !6305)
!6309 = !DILocation(line: 904, column: 42, scope: !6305)
!6310 = !DILocation(line: 904, column: 3, scope: !6305)
!6311 = !DILocation(line: 905, column: 3, scope: !6305)
!6312 = !DILocation(line: 906, column: 13, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 906, column: 13)
!6314 = !DILocation(line: 906, column: 27, scope: !6313)
!6315 = !DILocation(line: 906, column: 38, scope: !6313)
!6316 = !DILocation(line: 906, column: 23, scope: !6313)
!6317 = !DILocation(line: 906, column: 13, scope: !6300)
!6318 = !DILocation(line: 907, column: 15, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 906, column: 64)
!6320 = !DILocation(line: 907, column: 20, scope: !6319)
!6321 = !DILocation(line: 907, column: 31, scope: !6319)
!6322 = !DILocation(line: 907, column: 36, scope: !6319)
!6323 = !DILocation(line: 907, column: 40, scope: !6319)
!6324 = !DILocation(line: 907, column: 3, scope: !6319)
!6325 = !DILocation(line: 908, column: 3, scope: !6319)
!6326 = !DILocation(line: 909, column: 13, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 909, column: 13)
!6328 = !DILocation(line: 909, column: 27, scope: !6327)
!6329 = !DILocation(line: 909, column: 38, scope: !6327)
!6330 = !DILocation(line: 909, column: 23, scope: !6327)
!6331 = !DILocation(line: 909, column: 13, scope: !6313)
!6332 = !DILocation(line: 910, column: 15, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 909, column: 65)
!6334 = !DILocation(line: 910, column: 20, scope: !6333)
!6335 = !DILocation(line: 910, column: 31, scope: !6333)
!6336 = !DILocation(line: 910, column: 36, scope: !6333)
!6337 = !DILocation(line: 910, column: 40, scope: !6333)
!6338 = !DILocation(line: 910, column: 3, scope: !6333)
!6339 = !DILocation(line: 911, column: 3, scope: !6333)
!6340 = !DILocation(line: 912, column: 13, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 912, column: 13)
!6342 = !DILocation(line: 912, column: 23, scope: !6341)
!6343 = !DILocation(line: 912, column: 13, scope: !6327)
!6344 = !DILocation(line: 913, column: 7, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 913, column: 7)
!6346 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 912, column: 47)
!6347 = !DILocation(line: 913, column: 18, scope: !6345)
!6348 = !DILocation(line: 913, column: 7, scope: !6346)
!6349 = !DILocation(line: 914, column: 30, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 913, column: 40)
!6351 = !DILocation(line: 914, column: 35, scope: !6350)
!6352 = !DILocation(line: 914, column: 46, scope: !6350)
!6353 = !DILocation(line: 914, column: 51, scope: !6350)
!6354 = !DILocation(line: 914, column: 55, scope: !6350)
!6355 = !DILocation(line: 914, column: 4, scope: !6350)
!6356 = !DILocation(line: 915, column: 4, scope: !6350)
!6357 = !DILocation(line: 916, column: 14, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 916, column: 14)
!6359 = !DILocation(line: 916, column: 25, scope: !6358)
!6360 = !DILocation(line: 916, column: 14, scope: !6345)
!6361 = !DILocation(line: 917, column: 32, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 916, column: 49)
!6363 = !DILocation(line: 917, column: 37, scope: !6362)
!6364 = !DILocation(line: 917, column: 48, scope: !6362)
!6365 = !DILocation(line: 917, column: 53, scope: !6362)
!6366 = !DILocation(line: 917, column: 57, scope: !6362)
!6367 = !DILocation(line: 917, column: 4, scope: !6362)
!6368 = !DILocation(line: 918, column: 4, scope: !6362)
!6369 = !DILocation(line: 919, column: 14, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 919, column: 14)
!6371 = !DILocation(line: 919, column: 25, scope: !6370)
!6372 = !DILocation(line: 919, column: 14, scope: !6358)
!6373 = !DILocation(line: 920, column: 32, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 919, column: 49)
!6375 = !DILocation(line: 920, column: 37, scope: !6374)
!6376 = !DILocation(line: 920, column: 48, scope: !6374)
!6377 = !DILocation(line: 920, column: 53, scope: !6374)
!6378 = !DILocation(line: 920, column: 57, scope: !6374)
!6379 = !DILocation(line: 920, column: 4, scope: !6374)
!6380 = !DILocation(line: 921, column: 4, scope: !6374)
!6381 = !DILocation(line: 922, column: 14, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 922, column: 14)
!6383 = !DILocation(line: 922, column: 25, scope: !6382)
!6384 = !DILocation(line: 922, column: 14, scope: !6370)
!6385 = !DILocation(line: 923, column: 32, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 922, column: 49)
!6387 = !DILocation(line: 923, column: 37, scope: !6386)
!6388 = !DILocation(line: 923, column: 48, scope: !6386)
!6389 = !DILocation(line: 923, column: 53, scope: !6386)
!6390 = !DILocation(line: 923, column: 57, scope: !6386)
!6391 = !DILocation(line: 923, column: 4, scope: !6386)
!6392 = !DILocation(line: 924, column: 4, scope: !6386)
!6393 = !DILocation(line: 925, column: 14, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 925, column: 14)
!6395 = !DILocation(line: 925, column: 25, scope: !6394)
!6396 = !DILocation(line: 925, column: 14, scope: !6382)
!6397 = !DILocation(line: 926, column: 30, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 925, column: 47)
!6399 = !DILocation(line: 926, column: 35, scope: !6398)
!6400 = !DILocation(line: 926, column: 46, scope: !6398)
!6401 = !DILocation(line: 926, column: 51, scope: !6398)
!6402 = !DILocation(line: 926, column: 55, scope: !6398)
!6403 = !DILocation(line: 926, column: 4, scope: !6398)
!6404 = !DILocation(line: 927, column: 4, scope: !6398)
!6405 = !DILocation(line: 928, column: 14, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 928, column: 14)
!6407 = !DILocation(line: 928, column: 25, scope: !6406)
!6408 = !DILocation(line: 928, column: 14, scope: !6394)
!6409 = !DILocation(line: 929, column: 32, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 928, column: 49)
!6411 = !DILocation(line: 929, column: 37, scope: !6410)
!6412 = !DILocation(line: 929, column: 48, scope: !6410)
!6413 = !DILocation(line: 929, column: 53, scope: !6410)
!6414 = !DILocation(line: 929, column: 57, scope: !6410)
!6415 = !DILocation(line: 929, column: 4, scope: !6410)
!6416 = !DILocation(line: 930, column: 4, scope: !6410)
!6417 = !DILocation(line: 931, column: 14, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 931, column: 14)
!6419 = !DILocation(line: 931, column: 25, scope: !6418)
!6420 = !DILocation(line: 931, column: 14, scope: !6406)
!6421 = !DILocation(line: 932, column: 32, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 931, column: 49)
!6423 = !DILocation(line: 932, column: 37, scope: !6422)
!6424 = !DILocation(line: 932, column: 48, scope: !6422)
!6425 = !DILocation(line: 932, column: 53, scope: !6422)
!6426 = !DILocation(line: 932, column: 57, scope: !6422)
!6427 = !DILocation(line: 932, column: 4, scope: !6422)
!6428 = !DILocation(line: 933, column: 4, scope: !6422)
!6429 = !DILocation(line: 934, column: 14, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 934, column: 14)
!6431 = !DILocation(line: 934, column: 25, scope: !6430)
!6432 = !DILocation(line: 934, column: 14, scope: !6418)
!6433 = !DILocation(line: 935, column: 32, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 934, column: 49)
!6435 = !DILocation(line: 935, column: 37, scope: !6434)
!6436 = !DILocation(line: 935, column: 48, scope: !6434)
!6437 = !DILocation(line: 935, column: 53, scope: !6434)
!6438 = !DILocation(line: 935, column: 57, scope: !6434)
!6439 = !DILocation(line: 935, column: 4, scope: !6434)
!6440 = !DILocation(line: 936, column: 4, scope: !6434)
!6441 = !DILocation(line: 937, column: 14, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 937, column: 14)
!6443 = !DILocation(line: 937, column: 25, scope: !6442)
!6444 = !DILocation(line: 937, column: 14, scope: !6430)
!6445 = !DILocation(line: 938, column: 35, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 937, column: 52)
!6447 = !DILocation(line: 938, column: 40, scope: !6446)
!6448 = !DILocation(line: 938, column: 51, scope: !6446)
!6449 = !DILocation(line: 938, column: 56, scope: !6446)
!6450 = !DILocation(line: 938, column: 60, scope: !6446)
!6451 = !DILocation(line: 938, column: 4, scope: !6446)
!6452 = !DILocation(line: 939, column: 4, scope: !6446)
!6453 = !DILocation(line: 940, column: 14, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 940, column: 14)
!6455 = !DILocation(line: 940, column: 25, scope: !6454)
!6456 = !DILocation(line: 940, column: 14, scope: !6442)
!6457 = !DILocation(line: 941, column: 35, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 940, column: 52)
!6459 = !DILocation(line: 941, column: 40, scope: !6458)
!6460 = !DILocation(line: 941, column: 51, scope: !6458)
!6461 = !DILocation(line: 941, column: 56, scope: !6458)
!6462 = !DILocation(line: 941, column: 60, scope: !6458)
!6463 = !DILocation(line: 941, column: 4, scope: !6458)
!6464 = !DILocation(line: 942, column: 4, scope: !6458)
!6465 = !DILocation(line: 943, column: 14, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 943, column: 14)
!6467 = !DILocation(line: 943, column: 25, scope: !6466)
!6468 = !DILocation(line: 943, column: 14, scope: !6454)
!6469 = !DILocation(line: 944, column: 16, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 943, column: 49)
!6471 = !DILocation(line: 944, column: 21, scope: !6470)
!6472 = !DILocation(line: 944, column: 32, scope: !6470)
!6473 = !DILocation(line: 944, column: 37, scope: !6470)
!6474 = !DILocation(line: 944, column: 41, scope: !6470)
!6475 = !DILocation(line: 944, column: 4, scope: !6470)
!6476 = !DILocation(line: 945, column: 4, scope: !6470)
!6477 = !DILocation(line: 947, column: 2, scope: !6346)
!6478 = !DILocation(line: 949, column: 2, scope: !4982)
!6479 = !DILocation(line: 949, column: 2, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 949, column: 2)
!6481 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 949, column: 2)
!6482 = !DILocation(line: 949, column: 2, scope: !6481)
!6483 = !DILocation(line: 949, column: 2, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 949, column: 2)
!6485 = !DILocation(line: 949, column: 2, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 949, column: 2)
!6487 = !DILocation(line: 949, column: 2, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 949, column: 2)
!6489 = !DILocation(line: 952, column: 2, scope: !4982)
!6490 = !DILocation(line: 953, column: 1, scope: !4982)
!6491 = !DILocation(line: 699, column: 59, scope: !5109)
!6492 = !DILocation(line: 699, column: 84, scope: !5109)
!6493 = !DILocation(line: 700, column: 30, scope: !5109)
!6494 = !DILocation(line: 701, column: 36, scope: !5109)
!6495 = !DILocation(line: 702, column: 29, scope: !5109)
!6496 = !DILocation(line: 708, column: 14, scope: !5109)
!6497 = !DILocation(line: 708, column: 19, scope: !5109)
!6498 = !DILocation(line: 708, column: 43, scope: !5109)
!6499 = !DILocation(line: 708, column: 48, scope: !5109)
!6500 = !DILocation(line: 708, column: 52, scope: !5109)
!6501 = !DILocation(line: 708, column: 2, scope: !5109)
!6502 = !DILocation(line: 710, column: 1, scope: !5109)
!6503 = !DILocation(line: 669, column: 59, scope: !5118)
!6504 = !DILocation(line: 669, column: 84, scope: !5118)
!6505 = !DILocation(line: 670, column: 30, scope: !5118)
!6506 = !DILocation(line: 671, column: 36, scope: !5118)
!6507 = !DILocation(line: 672, column: 29, scope: !5118)
!6508 = !DILocation(line: 678, column: 14, scope: !5118)
!6509 = !DILocation(line: 678, column: 19, scope: !5118)
!6510 = !DILocation(line: 678, column: 43, scope: !5118)
!6511 = !DILocation(line: 678, column: 48, scope: !5118)
!6512 = !DILocation(line: 678, column: 52, scope: !5118)
!6513 = !DILocation(line: 678, column: 2, scope: !5118)
!6514 = !DILocation(line: 680, column: 1, scope: !5118)
!6515 = !DILocation(line: 1003, column: 48, scope: !5002)
!6516 = !DILocation(line: 1003, column: 73, scope: !5002)
!6517 = !DILocation(line: 1004, column: 33, scope: !5002)
!6518 = !DILocation(line: 1004, column: 68, scope: !5002)
!6519 = !DILocation(line: 1005, column: 32, scope: !5002)
!6520 = !DILocation(line: 1010, column: 2, scope: !5002)
!6521 = !DILocation(line: 1010, column: 15, scope: !5002)
!6522 = !DILocation(line: 1010, column: 43, scope: !5002)
!6523 = !DILocation(line: 1010, column: 28, scope: !5002)
!6524 = !DILocation(line: 1011, column: 2, scope: !5002)
!6525 = !DILocation(line: 1011, column: 15, scope: !5002)
!6526 = !DILocation(line: 1011, column: 39, scope: !5002)
!6527 = !DILocation(line: 1011, column: 23, scope: !5002)
!6528 = !DILocation(line: 1012, column: 2, scope: !5002)
!6529 = !DILocation(line: 1012, column: 15, scope: !5002)
!6530 = !DILocation(line: 1012, column: 21, scope: !5002)
!6531 = !DILocation(line: 1012, column: 25, scope: !5002)
!6532 = !DILocation(line: 1012, column: 33, scope: !5002)
!6533 = !DILocation(line: 1013, column: 2, scope: !5002)
!6534 = !DILocation(line: 1013, column: 15, scope: !5002)
!6535 = !DILocation(line: 1013, column: 27, scope: !5002)
!6536 = !DILocation(line: 1013, column: 40, scope: !5002)
!6537 = !DILocation(line: 1013, column: 38, scope: !5002)
!6538 = !DILocation(line: 1014, column: 2, scope: !5002)
!6539 = !DILocation(line: 1014, column: 21, scope: !5002)
!6540 = !DILocation(line: 1014, column: 27, scope: !5002)
!6541 = !DILocation(line: 1014, column: 31, scope: !5002)
!6542 = !DILocation(line: 1015, column: 2, scope: !5002)
!6543 = !DILocation(line: 1015, column: 8, scope: !5002)
!6544 = !DILocation(line: 1015, column: 16, scope: !5002)
!6545 = !DILocation(line: 1015, column: 23, scope: !5002)
!6546 = !DILocation(line: 1016, column: 2, scope: !5002)
!6547 = !DILocation(line: 1016, column: 15, scope: !5002)
!6548 = !DILocation(line: 1017, column: 2, scope: !5002)
!6549 = !DILocation(line: 1017, column: 15, scope: !5002)
!6550 = !DILocation(line: 1018, column: 2, scope: !5002)
!6551 = !DILocation(line: 1018, column: 6, scope: !5002)
!6552 = !DILocation(line: 1018, column: 13, scope: !5002)
!6553 = !DILocation(line: 1018, column: 20, scope: !5002)
!6554 = !DILocation(line: 1018, column: 28, scope: !5002)
!6555 = !DILocation(line: 1019, column: 2, scope: !5002)
!6556 = !DILocation(line: 1019, column: 7, scope: !5002)
!6557 = !DILocation(line: 1021, column: 6, scope: !5021)
!6558 = !DILocation(line: 1021, column: 6, scope: !5026)
!6559 = !DILocation(line: 1021, column: 6, scope: !5025)
!6560 = !DILocation(line: 1021, column: 6, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 1021, column: 6)
!6562 = !DILocation(line: 1021, column: 6, scope: !5024)
!6563 = !DILocation(line: 1021, column: 6, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 1021, column: 6)
!6565 = !DILocation(line: 1021, column: 6, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 1021, column: 6)
!6567 = !{i64 2154492705, i64 2154492734, i64 2154492780, i64 2154492838, i64 2154492892, i64 2154492946, i64 2154493001, i64 2154493032, i64 2154493340, i64 2154493346, i64 2154493393, i64 2154493416, i64 2154493442}
!6568 = !DILocation(line: 1021, column: 6, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 1021, column: 6)
!6570 = !DILocation(line: 1021, column: 6, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 1021, column: 6)
!6572 = !DILocation(line: 1021, column: 6, scope: !5022)
!6573 = !DILocation(line: 1021, column: 6, scope: !5002)
!6574 = !DILocation(line: 1022, column: 3, scope: !5022)
!6575 = !DILocation(line: 1024, column: 7, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1024, column: 6)
!6577 = !DILocation(line: 1024, column: 6, scope: !5002)
!6578 = !DILocation(line: 1025, column: 13, scope: !6576)
!6579 = !DILocation(line: 1025, column: 3, scope: !6576)
!6580 = !DILocation(line: 1026, column: 16, scope: !5002)
!6581 = !DILocation(line: 1026, column: 14, scope: !5002)
!6582 = !DILocation(line: 1031, column: 7, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1031, column: 6)
!6584 = !DILocation(line: 1031, column: 6, scope: !5002)
!6585 = !DILocation(line: 1032, column: 17, scope: !6583)
!6586 = !DILocation(line: 1032, column: 15, scope: !6583)
!6587 = !DILocation(line: 1032, column: 3, scope: !6583)
!6588 = !DILocation(line: 1045, column: 18, scope: !5002)
!6589 = !DILocation(line: 1045, column: 30, scope: !5002)
!6590 = !DILocation(line: 1045, column: 28, scope: !5002)
!6591 = !DILocation(line: 1045, column: 10, scope: !5002)
!6592 = !DILocation(line: 1045, column: 8, scope: !5002)
!6593 = !DILocation(line: 1046, column: 7, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1046, column: 6)
!6595 = !DILocation(line: 1046, column: 6, scope: !5002)
!6596 = !DILocation(line: 1047, column: 3, scope: !6594)
!6597 = !DILocation(line: 1049, column: 16, scope: !5002)
!6598 = !DILocation(line: 1049, column: 24, scope: !5002)
!6599 = !DILocation(line: 1049, column: 22, scope: !5002)
!6600 = !DILocation(line: 1049, column: 8, scope: !5002)
!6601 = !DILocation(line: 1051, column: 23, scope: !5002)
!6602 = !DILocation(line: 1051, column: 29, scope: !5002)
!6603 = !DILocation(line: 1051, column: 33, scope: !5002)
!6604 = !DILocation(line: 1051, column: 45, scope: !5002)
!6605 = !DILocation(line: 1051, column: 11, scope: !5002)
!6606 = !DILocation(line: 1051, column: 8, scope: !5002)
!6607 = !DILocation(line: 1052, column: 9, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1052, column: 2)
!6609 = !DILocation(line: 1052, column: 7, scope: !6608)
!6610 = !DILocation(line: 1052, column: 14, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6608, file: !3, line: 1052, column: 2)
!6612 = !DILocation(line: 1052, column: 18, scope: !6611)
!6613 = !DILocation(line: 1052, column: 16, scope: !6611)
!6614 = !DILocation(line: 1052, column: 2, scope: !6608)
!6615 = !DILocation(line: 1053, column: 18, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6611, file: !3, line: 1052, column: 30)
!6617 = !DILocation(line: 1053, column: 25, scope: !6616)
!6618 = !DILocation(line: 1053, column: 32, scope: !6616)
!6619 = !DILocation(line: 1053, column: 11, scope: !6616)
!6620 = !DILocation(line: 1053, column: 9, scope: !6616)
!6621 = !DILocation(line: 1054, column: 33, scope: !6616)
!6622 = !DILocation(line: 1054, column: 40, scope: !6616)
!6623 = !DILocation(line: 1054, column: 47, scope: !6616)
!6624 = !DILocation(line: 1054, column: 3, scope: !6616)
!6625 = !DILocation(line: 1055, column: 29, scope: !6616)
!6626 = !DILocation(line: 1055, column: 35, scope: !6616)
!6627 = !DILocation(line: 1055, column: 42, scope: !6616)
!6628 = !DILocation(line: 1055, column: 3, scope: !6616)
!6629 = !DILocation(line: 1056, column: 12, scope: !6616)
!6630 = !DILocation(line: 1056, column: 16, scope: !6616)
!6631 = !DILocation(line: 1056, column: 9, scope: !6616)
!6632 = !DILocation(line: 1057, column: 11, scope: !6616)
!6633 = !DILocation(line: 1057, column: 8, scope: !6616)
!6634 = !DILocation(line: 1058, column: 2, scope: !6616)
!6635 = !DILocation(line: 1052, column: 26, scope: !6611)
!6636 = !DILocation(line: 1052, column: 2, scope: !6611)
!6637 = distinct !{!6637, !6614, !6638, !5261, !5262}
!6638 = !DILocation(line: 1058, column: 2, scope: !6608)
!6639 = !DILocation(line: 1060, column: 8, scope: !5002)
!6640 = !DILocation(line: 1060, column: 2, scope: !5002)
!6641 = !DILocation(line: 1061, column: 1, scope: !5002)
!6642 = !DISubprogram(name: "__warn_printk", scope: !787, file: !787, line: 93, type: !6643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{null, !228, null}
!6645 = !DISubprogram(name: "dev_driver_string", scope: !70, file: !70, line: 1247, type: !6646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{!228, !4009}
!6648 = distinct !DISubprogram(name: "dev_name", scope: !70, file: !70, line: 858, type: !6646, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6649)
!6649 = !{!6650}
!6650 = !DILocalVariable(name: "dev", arg: 1, scope: !6648, file: !70, line: 858, type: !4009)
!6651 = !DILocation(line: 858, column: 57, scope: !6648)
!6652 = !DILocation(line: 861, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6648, file: !70, line: 861, column: 6)
!6654 = !DILocation(line: 861, column: 11, scope: !6653)
!6655 = !DILocation(line: 861, column: 6, scope: !6648)
!6656 = !DILocation(line: 862, column: 10, scope: !6653)
!6657 = !DILocation(line: 862, column: 15, scope: !6653)
!6658 = !DILocation(line: 862, column: 3, scope: !6653)
!6659 = !DILocation(line: 864, column: 23, scope: !6648)
!6660 = !DILocation(line: 864, column: 28, scope: !6648)
!6661 = !DILocation(line: 864, column: 9, scope: !6648)
!6662 = !DILocation(line: 864, column: 2, scope: !6648)
!6663 = !DILocation(line: 865, column: 1, scope: !6648)
!6664 = distinct !DISubprogram(name: "kmalloc", scope: !143, file: !143, line: 591, type: !6665, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6667)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!153, !165, !156}
!6667 = !{!6668, !6669, !6670}
!6668 = !DILocalVariable(name: "size", arg: 1, scope: !6664, file: !143, line: 591, type: !165)
!6669 = !DILocalVariable(name: "flags", arg: 2, scope: !6664, file: !143, line: 591, type: !156)
!6670 = !DILocalVariable(name: "index", scope: !6671, file: !143, line: 594, type: !7)
!6671 = distinct !DILexicalBlock(scope: !6672, file: !143, line: 593, column: 42)
!6672 = distinct !DILexicalBlock(scope: !6664, file: !143, line: 593, column: 6)
!6673 = !DILocation(line: 591, column: 61, scope: !6664)
!6674 = !DILocation(line: 591, column: 73, scope: !6664)
!6675 = !DILocation(line: 593, column: 27, scope: !6672)
!6676 = !DILocation(line: 593, column: 6, scope: !6672)
!6677 = !DILocation(line: 593, column: 33, scope: !6672)
!6678 = !DILocation(line: 593, column: 36, scope: !6672)
!6679 = !DILocation(line: 593, column: 6, scope: !6664)
!6680 = !DILocation(line: 594, column: 3, scope: !6671)
!6681 = !DILocation(line: 594, column: 16, scope: !6671)
!6682 = !DILocation(line: 596, column: 7, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6671, file: !143, line: 596, column: 7)
!6684 = !DILocation(line: 596, column: 12, scope: !6683)
!6685 = !DILocation(line: 596, column: 7, scope: !6671)
!6686 = !DILocation(line: 597, column: 25, scope: !6683)
!6687 = !DILocation(line: 597, column: 31, scope: !6683)
!6688 = !DILocation(line: 597, column: 11, scope: !6683)
!6689 = !DILocation(line: 597, column: 4, scope: !6683)
!6690 = !DILocation(line: 599, column: 11, scope: !6671)
!6691 = !DILocation(line: 599, column: 9, scope: !6671)
!6692 = !DILocation(line: 601, column: 33, scope: !6671)
!6693 = !DILocation(line: 601, column: 40, scope: !6671)
!6694 = !DILocation(line: 601, column: 20, scope: !6671)
!6695 = !DILocation(line: 601, column: 5, scope: !6671)
!6696 = !DILocation(line: 601, column: 51, scope: !6671)
!6697 = !DILocation(line: 602, column: 5, scope: !6671)
!6698 = !DILocation(line: 602, column: 12, scope: !6671)
!6699 = !DILocation(line: 600, column: 10, scope: !6671)
!6700 = !DILocation(line: 600, column: 3, scope: !6671)
!6701 = !DILocation(line: 603, column: 2, scope: !6672)
!6702 = !DILocation(line: 604, column: 19, scope: !6664)
!6703 = !DILocation(line: 604, column: 25, scope: !6664)
!6704 = !DILocation(line: 604, column: 9, scope: !6664)
!6705 = !DILocation(line: 604, column: 2, scope: !6664)
!6706 = !DILocation(line: 605, column: 1, scope: !6664)
!6707 = distinct !DISubprogram(name: "drm_fb_gray8_to_mono_line", scope: !3, file: !3, line: 956, type: !4857, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6708)
!6708 = !{!6709, !6710, !6711, !6712, !6713, !6714, !6716, !6717, !6719, !6720}
!6709 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6707, file: !3, line: 956, type: !153)
!6710 = !DILocalVariable(name: "sbuf", arg: 2, scope: !6707, file: !3, line: 956, type: !1622)
!6711 = !DILocalVariable(name: "pixels", arg: 3, scope: !6707, file: !3, line: 956, type: !7)
!6712 = !DILocalVariable(name: "dbuf8", scope: !6707, file: !3, line: 958, type: !158)
!6713 = !DILocalVariable(name: "sbuf8", scope: !6707, file: !3, line: 959, type: !5097)
!6714 = !DILocalVariable(name: "i", scope: !6715, file: !3, line: 962, type: !7)
!6715 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 961, column: 17)
!6716 = !DILocalVariable(name: "bits", scope: !6715, file: !3, line: 962, type: !7)
!6717 = !DILocalVariable(name: "__UNIQUE_ID___x282", scope: !6718, file: !3, line: 962, type: !7)
!6718 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 962, column: 26)
!6719 = !DILocalVariable(name: "__UNIQUE_ID___y283", scope: !6718, file: !3, line: 962, type: !7)
!6720 = !DILocalVariable(name: "byte", scope: !6715, file: !3, line: 963, type: !159)
!6721 = !DILocation(line: 956, column: 45, scope: !6707)
!6722 = !DILocation(line: 956, column: 63, scope: !6707)
!6723 = !DILocation(line: 956, column: 82, scope: !6707)
!6724 = !DILocation(line: 958, column: 2, scope: !6707)
!6725 = !DILocation(line: 958, column: 6, scope: !6707)
!6726 = !DILocation(line: 958, column: 14, scope: !6707)
!6727 = !DILocation(line: 959, column: 2, scope: !6707)
!6728 = !DILocation(line: 959, column: 12, scope: !6707)
!6729 = !DILocation(line: 959, column: 20, scope: !6707)
!6730 = !DILocation(line: 961, column: 2, scope: !6707)
!6731 = !DILocation(line: 961, column: 9, scope: !6707)
!6732 = !DILocation(line: 962, column: 3, scope: !6715)
!6733 = !DILocation(line: 962, column: 16, scope: !6715)
!6734 = !DILocation(line: 962, column: 19, scope: !6715)
!6735 = !DILocation(line: 962, column: 26, scope: !6718)
!6736 = !DILocation(line: 962, column: 26, scope: !6715)
!6737 = !DILocation(line: 963, column: 3, scope: !6715)
!6738 = !DILocation(line: 963, column: 6, scope: !6715)
!6739 = !DILocation(line: 965, column: 10, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 965, column: 3)
!6741 = !DILocation(line: 965, column: 8, scope: !6740)
!6742 = !DILocation(line: 965, column: 15, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6740, file: !3, line: 965, column: 3)
!6744 = !DILocation(line: 965, column: 19, scope: !6743)
!6745 = !DILocation(line: 965, column: 17, scope: !6743)
!6746 = !DILocation(line: 965, column: 3, scope: !6740)
!6747 = !DILocation(line: 966, column: 14, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6749, file: !3, line: 966, column: 8)
!6749 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 965, column: 40)
!6750 = !DILocation(line: 966, column: 8, scope: !6748)
!6751 = !DILocation(line: 966, column: 17, scope: !6748)
!6752 = !DILocation(line: 966, column: 8, scope: !6749)
!6753 = !DILocation(line: 967, column: 13, scope: !6748)
!6754 = !DILocation(line: 967, column: 10, scope: !6748)
!6755 = !DILocation(line: 967, column: 5, scope: !6748)
!6756 = !DILocation(line: 968, column: 3, scope: !6749)
!6757 = !DILocation(line: 965, column: 26, scope: !6743)
!6758 = !DILocation(line: 965, column: 36, scope: !6743)
!6759 = !DILocation(line: 965, column: 3, scope: !6743)
!6760 = distinct !{!6760, !6746, !6761, !5261, !5262}
!6761 = !DILocation(line: 968, column: 3, scope: !6740)
!6762 = !DILocation(line: 969, column: 14, scope: !6715)
!6763 = !DILocation(line: 969, column: 9, scope: !6715)
!6764 = !DILocation(line: 969, column: 12, scope: !6715)
!6765 = !DILocation(line: 970, column: 2, scope: !6707)
!6766 = distinct !{!6766, !6730, !6765, !5261, !5262}
!6767 = !DILocation(line: 971, column: 1, scope: !6707)
!6768 = !DISubprogram(name: "kfree", scope: !143, file: !143, line: 227, type: !6769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6769 = !DISubroutineType(types: !6770)
!6770 = !{null, !1622}
!6771 = !DILocation(line: 1134, column: 52, scope: !5046)
!6772 = !DILocation(line: 1135, column: 16, scope: !5046)
!6773 = !DILocation(line: 1135, column: 39, scope: !5046)
!6774 = !DILocation(line: 1136, column: 10, scope: !5046)
!6775 = !DILocation(line: 1136, column: 30, scope: !5046)
!6776 = !DILocation(line: 1149, column: 2, scope: !5046)
!6777 = !DILocation(line: 1149, column: 7, scope: !5046)
!6778 = !DILocation(line: 1149, column: 17, scope: !5046)
!6779 = !DILocation(line: 1150, column: 2, scope: !5046)
!6780 = !DILocation(line: 1150, column: 13, scope: !5046)
!6781 = !DILocation(line: 1150, column: 27, scope: !5046)
!6782 = !DILocation(line: 1150, column: 41, scope: !5046)
!6783 = !DILocation(line: 1150, column: 39, scope: !5046)
!6784 = !DILocation(line: 1151, column: 2, scope: !5046)
!6785 = !DILocation(line: 1151, column: 9, scope: !5046)
!6786 = !DILocation(line: 1157, column: 9, scope: !5063)
!6787 = !DILocation(line: 1157, column: 7, scope: !5063)
!6788 = !DILocation(line: 1157, column: 14, scope: !5062)
!6789 = !DILocation(line: 1157, column: 18, scope: !5062)
!6790 = !DILocation(line: 1157, column: 16, scope: !5062)
!6791 = !DILocation(line: 1157, column: 2, scope: !5063)
!6792 = !DILocation(line: 1163, column: 3, scope: !5061)
!6793 = !DILocation(line: 1163, column: 7, scope: !5061)
!6794 = !DILocation(line: 1163, column: 39, scope: !5061)
!6795 = !DILocation(line: 1163, column: 54, scope: !5061)
!6796 = !DILocation(line: 1163, column: 16, scope: !5061)
!6797 = !DILocation(line: 1165, column: 24, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 1165, column: 7)
!6799 = !DILocation(line: 1165, column: 37, scope: !6798)
!6800 = !DILocation(line: 1165, column: 47, scope: !6798)
!6801 = !DILocation(line: 1165, column: 45, scope: !6798)
!6802 = !DILocation(line: 1165, column: 60, scope: !6798)
!6803 = !DILocation(line: 1165, column: 7, scope: !6798)
!6804 = !DILocation(line: 1165, column: 7, scope: !5061)
!6805 = !DILocation(line: 1166, column: 4, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6798, file: !3, line: 1165, column: 69)
!6807 = !DILocation(line: 1167, column: 14, scope: !6808)
!6808 = distinct !DILexicalBlock(scope: !6798, file: !3, line: 1167, column: 14)
!6809 = !DILocation(line: 1167, column: 25, scope: !6808)
!6810 = !DILocation(line: 1167, column: 22, scope: !6808)
!6811 = !DILocation(line: 1167, column: 14, scope: !6798)
!6812 = !DILocation(line: 1168, column: 4, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 1168, column: 4)
!6814 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 1167, column: 38)
!6815 = !DILocation(line: 1168, column: 4, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 1168, column: 4)
!6817 = !DILocation(line: 1169, column: 4, scope: !6814)
!6818 = !DILocation(line: 1172, column: 3, scope: !5061)
!6819 = !DILocation(line: 1174, column: 14, scope: !5061)
!6820 = !DILocation(line: 1174, column: 4, scope: !5061)
!6821 = !DILocation(line: 1174, column: 12, scope: !5061)
!6822 = !DILocation(line: 1175, column: 3, scope: !5061)
!6823 = !DILocation(line: 1176, column: 2, scope: !5062)
!6824 = !DILocation(line: 1176, column: 2, scope: !5061)
!6825 = !DILocation(line: 1157, column: 35, scope: !5062)
!6826 = !DILocation(line: 1157, column: 2, scope: !5062)
!6827 = distinct !{!6827, !6791, !6828, !5261, !5262}
!6828 = !DILocation(line: 1176, column: 2, scope: !5063)
!6829 = !DILocation(line: 1182, column: 9, scope: !5067)
!6830 = !DILocation(line: 1182, column: 7, scope: !5067)
!6831 = !DILocation(line: 1182, column: 15, scope: !5066)
!6832 = !DILocation(line: 1182, column: 17, scope: !5066)
!6833 = !DILocation(line: 1182, column: 35, scope: !5066)
!6834 = !DILocation(line: 1182, column: 39, scope: !5066)
!6835 = !DILocation(line: 1182, column: 49, scope: !5066)
!6836 = !DILocation(line: 1182, column: 47, scope: !5066)
!6837 = !DILocation(line: 0, scope: !5066)
!6838 = !DILocation(line: 1182, column: 2, scope: !5067)
!6839 = !DILocation(line: 1183, column: 3, scope: !5065)
!6840 = !DILocation(line: 1183, column: 7, scope: !5065)
!6841 = !DILocation(line: 1183, column: 30, scope: !5065)
!6842 = !DILocation(line: 1183, column: 16, scope: !5065)
!6843 = !DILocation(line: 1185, column: 24, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 1185, column: 7)
!6845 = !DILocation(line: 1185, column: 37, scope: !6844)
!6846 = !DILocation(line: 1185, column: 47, scope: !6844)
!6847 = !DILocation(line: 1185, column: 45, scope: !6844)
!6848 = !DILocation(line: 1185, column: 60, scope: !6844)
!6849 = !DILocation(line: 1185, column: 7, scope: !6844)
!6850 = !DILocation(line: 1185, column: 7, scope: !5065)
!6851 = !DILocation(line: 1186, column: 4, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 1185, column: 69)
!6853 = !DILocation(line: 1187, column: 14, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 1187, column: 14)
!6855 = !DILocation(line: 1187, column: 25, scope: !6854)
!6856 = !DILocation(line: 1187, column: 22, scope: !6854)
!6857 = !DILocation(line: 1187, column: 14, scope: !6844)
!6858 = !DILocation(line: 1188, column: 4, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6860, file: !3, line: 1188, column: 4)
!6860 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 1187, column: 38)
!6861 = !DILocation(line: 1188, column: 4, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6859, file: !3, line: 1188, column: 4)
!6863 = !DILocation(line: 1189, column: 4, scope: !6860)
!6864 = !DILocation(line: 1192, column: 3, scope: !5065)
!6865 = !DILocation(line: 1194, column: 14, scope: !5065)
!6866 = !DILocation(line: 1194, column: 4, scope: !5065)
!6867 = !DILocation(line: 1194, column: 12, scope: !5065)
!6868 = !DILocation(line: 1195, column: 3, scope: !5065)
!6869 = !DILocation(line: 1196, column: 2, scope: !5066)
!6870 = !DILocation(line: 1196, column: 2, scope: !5065)
!6871 = !DILocation(line: 1182, column: 63, scope: !5066)
!6872 = !DILocation(line: 1182, column: 2, scope: !5066)
!6873 = distinct !{!6873, !6838, !6874, !5261, !5262}
!6874 = !DILocation(line: 1196, column: 2, scope: !5067)
!6875 = !DILocation(line: 1198, column: 9, scope: !5046)
!6876 = !DILocation(line: 1198, column: 19, scope: !5046)
!6877 = !DILocation(line: 1198, column: 17, scope: !5046)
!6878 = !DILocation(line: 1199, column: 1, scope: !5046)
!6879 = !DILocation(line: 1198, column: 2, scope: !5046)
!6880 = distinct !DISubprogram(name: "drm_fb_nonalpha_fourcc", scope: !3, file: !3, line: 1064, type: !6881, scopeLine: 1065, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6883)
!6881 = !DISubroutineType(types: !6882)
!6882 = !{!1259, !1259}
!6883 = !{!6884}
!6884 = !DILocalVariable(name: "fourcc", arg: 1, scope: !6880, file: !3, line: 1064, type: !1259)
!6885 = !DILocation(line: 1064, column: 49, scope: !6880)
!6886 = !DILocation(line: 1067, column: 10, scope: !6880)
!6887 = !DILocation(line: 1067, column: 2, scope: !6880)
!6888 = !DILocation(line: 1069, column: 3, scope: !6889)
!6889 = distinct !DILexicalBlock(scope: !6880, file: !3, line: 1067, column: 18)
!6890 = !DILocation(line: 1071, column: 3, scope: !6889)
!6891 = !DILocation(line: 1073, column: 3, scope: !6889)
!6892 = !DILocation(line: 1075, column: 3, scope: !6889)
!6893 = !DILocation(line: 1077, column: 3, scope: !6889)
!6894 = !DILocation(line: 1079, column: 3, scope: !6889)
!6895 = !DILocation(line: 1081, column: 3, scope: !6889)
!6896 = !DILocation(line: 1083, column: 3, scope: !6889)
!6897 = !DILocation(line: 1085, column: 3, scope: !6889)
!6898 = !DILocation(line: 1087, column: 3, scope: !6889)
!6899 = !DILocation(line: 1089, column: 3, scope: !6889)
!6900 = !DILocation(line: 1091, column: 3, scope: !6889)
!6901 = !DILocation(line: 1094, column: 9, scope: !6880)
!6902 = !DILocation(line: 1094, column: 2, scope: !6880)
!6903 = !DILocation(line: 1095, column: 1, scope: !6880)
!6904 = distinct !DISubprogram(name: "is_listed_fourcc", scope: !3, file: !3, line: 1097, type: !6905, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6908)
!6905 = !DISubroutineType(types: !6906)
!6906 = !{!189, !6907, !165, !1259}
!6907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!6908 = !{!6909, !6910, !6911, !6912}
!6909 = !DILocalVariable(name: "fourccs", arg: 1, scope: !6904, file: !3, line: 1097, type: !6907)
!6910 = !DILocalVariable(name: "nfourccs", arg: 2, scope: !6904, file: !3, line: 1097, type: !165)
!6911 = !DILocalVariable(name: "fourcc", arg: 3, scope: !6904, file: !3, line: 1097, type: !1259)
!6912 = !DILocalVariable(name: "fourccs_end", scope: !6904, file: !3, line: 1099, type: !6907)
!6913 = !DILocation(line: 1097, column: 46, scope: !6904)
!6914 = !DILocation(line: 1097, column: 62, scope: !6904)
!6915 = !DILocation(line: 1097, column: 81, scope: !6904)
!6916 = !DILocation(line: 1099, column: 2, scope: !6904)
!6917 = !DILocation(line: 1099, column: 18, scope: !6904)
!6918 = !DILocation(line: 1099, column: 32, scope: !6904)
!6919 = !DILocation(line: 1099, column: 42, scope: !6904)
!6920 = !DILocation(line: 1099, column: 40, scope: !6904)
!6921 = !DILocation(line: 1101, column: 2, scope: !6904)
!6922 = !DILocation(line: 1101, column: 9, scope: !6904)
!6923 = !DILocation(line: 1101, column: 19, scope: !6904)
!6924 = !DILocation(line: 1101, column: 17, scope: !6904)
!6925 = !DILocation(line: 1102, column: 8, scope: !6926)
!6926 = distinct !DILexicalBlock(scope: !6927, file: !3, line: 1102, column: 7)
!6927 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 1101, column: 32)
!6928 = !DILocation(line: 1102, column: 7, scope: !6926)
!6929 = !DILocation(line: 1102, column: 19, scope: !6926)
!6930 = !DILocation(line: 1102, column: 16, scope: !6926)
!6931 = !DILocation(line: 1102, column: 7, scope: !6927)
!6932 = !DILocation(line: 1103, column: 4, scope: !6926)
!6933 = !DILocation(line: 1104, column: 3, scope: !6927)
!6934 = distinct !{!6934, !6921, !6935, !5261, !5262}
!6935 = !DILocation(line: 1105, column: 2, scope: !6904)
!6936 = !DILocation(line: 1106, column: 2, scope: !6904)
!6937 = !DILocation(line: 1107, column: 1, scope: !6904)
!6938 = !DISubprogram(name: "__drm_dev_dbg", scope: !130, file: !130, line: 411, type: !6939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6939 = !DISubroutineType(types: !6940)
!6940 = !{null, !6941, !4009, !129, !228, null}
!6941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6942, size: 64)
!6942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !6943, line: 16, size: 448, align: 64, elements: !6944)
!6943 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!6944 = !{!6945, !6946, !6947, !6948, !6949, !6950, !6951, !6952}
!6945 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !6942, file: !6943, line: 21, baseType: !228, size: 64)
!6946 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !6942, file: !6943, line: 22, baseType: !228, size: 64, offset: 64)
!6947 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6942, file: !6943, line: 23, baseType: !228, size: 64, offset: 128)
!6948 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6942, file: !6943, line: 24, baseType: !228, size: 64, offset: 192)
!6949 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !6942, file: !6943, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6950 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !6942, file: !6943, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!6951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6942, file: !6943, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!6952 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6942, file: !6943, line: 57, baseType: !6953, size: 128, offset: 320)
!6953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6942, file: !6943, line: 54, size: 128, elements: !6954)
!6954 = !{!6955, !6970}
!6955 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !6953, file: !6943, line: 55, baseType: !6956, size: 128)
!6956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !966, line: 359, size: 128, elements: !6957)
!6957 = !{!6958}
!6958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6956, file: !966, line: 360, baseType: !6959, size: 128)
!6959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !966, line: 85, size: 128, elements: !6960)
!6960 = !{!6961, !6962}
!6961 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6959, file: !966, line: 86, baseType: !215, size: 32)
!6962 = !DIDerivedType(tag: DW_TAG_member, scope: !6959, file: !966, line: 101, baseType: !6963, size: 64, offset: 64)
!6963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6959, file: !966, line: 101, size: 64, elements: !6964)
!6964 = !{!6965, !6966, !6967}
!6965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6963, file: !966, line: 102, baseType: !169, size: 64)
!6966 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6963, file: !966, line: 103, baseType: !964, size: 64)
!6967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6963, file: !966, line: 104, baseType: !6968, size: 64)
!6968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6969, size: 64)
!6969 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !966, line: 104, flags: DIFlagFwdDecl)
!6970 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !6953, file: !6943, line: 56, baseType: !6971, size: 128)
!6971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !966, line: 363, size: 128, elements: !6972)
!6972 = !{!6973}
!6973 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6971, file: !966, line: 364, baseType: !6959, size: 128)
!6974 = !DISubprogram(name: "memcpy_toio", scope: !6975, file: !6975, line: 205, type: !6976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6975 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6976 = !DISubroutineType(types: !6977)
!6977 = !{null, !6978, !1622, !165}
!6978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6979, size: 64)
!6979 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6980 = distinct !DISubprogram(name: "__drm_fb_xfrm_toio", scope: !3, file: !3, line: 88, type: !6981, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6983)
!6981 = !DISubroutineType(types: !6982)
!6982 = !{!85, !153, !169, !169, !1622, !195, !4810, !189, !4856}
!6983 = !{!6984, !6985, !6986, !6987, !6988, !6989, !6990, !6991, !6992, !6993, !6994, !6995, !6996, !6997, !6998, !6999, !7000}
!6984 = !DILocalVariable(name: "dst", arg: 1, scope: !6980, file: !3, line: 88, type: !153)
!6985 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !6980, file: !3, line: 88, type: !169)
!6986 = !DILocalVariable(name: "dst_pixsize", arg: 3, scope: !6980, file: !3, line: 88, type: !169)
!6987 = !DILocalVariable(name: "vaddr", arg: 4, scope: !6980, file: !3, line: 89, type: !1622)
!6988 = !DILocalVariable(name: "fb", arg: 5, scope: !6980, file: !3, line: 89, type: !195)
!6989 = !DILocalVariable(name: "clip", arg: 6, scope: !6980, file: !3, line: 90, type: !4810)
!6990 = !DILocalVariable(name: "vaddr_cached_hint", arg: 7, scope: !6980, file: !3, line: 90, type: !189)
!6991 = !DILocalVariable(name: "xfrm_line", arg: 8, scope: !6980, file: !3, line: 91, type: !4856)
!6992 = !DILocalVariable(name: "linepixels", scope: !6980, file: !3, line: 93, type: !169)
!6993 = !DILocalVariable(name: "lines", scope: !6980, file: !3, line: 94, type: !169)
!6994 = !DILocalVariable(name: "dbuf_len", scope: !6980, file: !3, line: 95, type: !165)
!6995 = !DILocalVariable(name: "stmp_off", scope: !6980, file: !3, line: 96, type: !165)
!6996 = !DILocalVariable(name: "sbuf_len", scope: !6980, file: !3, line: 97, type: !165)
!6997 = !DILocalVariable(name: "stmp", scope: !6980, file: !3, line: 98, type: !153)
!6998 = !DILocalVariable(name: "i", scope: !6980, file: !3, line: 99, type: !169)
!6999 = !DILocalVariable(name: "sbuf", scope: !6980, file: !3, line: 100, type: !1622)
!7000 = !DILocalVariable(name: "dbuf", scope: !6980, file: !3, line: 101, type: !153)
!7001 = !DILocation(line: 88, column: 45, scope: !6980)
!7002 = !DILocation(line: 88, column: 64, scope: !6980)
!7003 = !DILocation(line: 88, column: 89, scope: !6980)
!7004 = !DILocation(line: 89, column: 22, scope: !6980)
!7005 = !DILocation(line: 89, column: 59, scope: !6980)
!7006 = !DILocation(line: 90, column: 33, scope: !6980)
!7007 = !DILocation(line: 90, column: 44, scope: !6980)
!7008 = !DILocation(line: 91, column: 17, scope: !6980)
!7009 = !DILocation(line: 93, column: 2, scope: !6980)
!7010 = !DILocation(line: 93, column: 16, scope: !6980)
!7011 = !DILocation(line: 93, column: 44, scope: !6980)
!7012 = !DILocation(line: 93, column: 29, scope: !6980)
!7013 = !DILocation(line: 94, column: 2, scope: !6980)
!7014 = !DILocation(line: 94, column: 16, scope: !6980)
!7015 = !DILocation(line: 94, column: 40, scope: !6980)
!7016 = !DILocation(line: 94, column: 24, scope: !6980)
!7017 = !DILocation(line: 95, column: 2, scope: !6980)
!7018 = !DILocation(line: 95, column: 9, scope: !6980)
!7019 = !DILocation(line: 95, column: 20, scope: !6980)
!7020 = !DILocation(line: 95, column: 33, scope: !6980)
!7021 = !DILocation(line: 95, column: 31, scope: !6980)
!7022 = !DILocation(line: 96, column: 2, scope: !6980)
!7023 = !DILocation(line: 96, column: 9, scope: !6980)
!7024 = !DILocation(line: 96, column: 20, scope: !6980)
!7025 = !DILocation(line: 97, column: 2, scope: !6980)
!7026 = !DILocation(line: 97, column: 9, scope: !6980)
!7027 = !DILocation(line: 97, column: 20, scope: !6980)
!7028 = !DILocation(line: 97, column: 33, scope: !6980)
!7029 = !DILocation(line: 97, column: 37, scope: !6980)
!7030 = !DILocation(line: 97, column: 45, scope: !6980)
!7031 = !DILocation(line: 97, column: 31, scope: !6980)
!7032 = !DILocation(line: 98, column: 2, scope: !6980)
!7033 = !DILocation(line: 98, column: 8, scope: !6980)
!7034 = !DILocation(line: 99, column: 2, scope: !6980)
!7035 = !DILocation(line: 99, column: 16, scope: !6980)
!7036 = !DILocation(line: 100, column: 2, scope: !6980)
!7037 = !DILocation(line: 100, column: 14, scope: !6980)
!7038 = !DILocation(line: 101, column: 2, scope: !6980)
!7039 = !DILocation(line: 101, column: 8, scope: !6980)
!7040 = !DILocation(line: 103, column: 6, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !6980, file: !3, line: 103, column: 6)
!7042 = !DILocation(line: 103, column: 6, scope: !6980)
!7043 = !DILocation(line: 104, column: 18, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7041, file: !3, line: 103, column: 25)
!7045 = !DILocation(line: 104, column: 10, scope: !7044)
!7046 = !DILocation(line: 104, column: 8, scope: !7044)
!7047 = !DILocation(line: 105, column: 2, scope: !7044)
!7048 = !DILocation(line: 106, column: 18, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7041, file: !3, line: 105, column: 9)
!7050 = !DILocation(line: 106, column: 29, scope: !7049)
!7051 = !DILocation(line: 106, column: 27, scope: !7049)
!7052 = !DILocation(line: 106, column: 10, scope: !7049)
!7053 = !DILocation(line: 106, column: 8, scope: !7049)
!7054 = !DILocation(line: 107, column: 10, scope: !7049)
!7055 = !DILocation(line: 107, column: 17, scope: !7049)
!7056 = !DILocation(line: 107, column: 15, scope: !7049)
!7057 = !DILocation(line: 107, column: 8, scope: !7049)
!7058 = !DILocation(line: 109, column: 7, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !6980, file: !3, line: 109, column: 6)
!7060 = !DILocation(line: 109, column: 6, scope: !6980)
!7061 = !DILocation(line: 110, column: 3, scope: !7059)
!7062 = !DILocation(line: 112, column: 7, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !6980, file: !3, line: 112, column: 6)
!7064 = !DILocation(line: 112, column: 6, scope: !6980)
!7065 = !DILocation(line: 113, column: 15, scope: !7063)
!7066 = !DILocation(line: 113, column: 28, scope: !7063)
!7067 = !DILocation(line: 113, column: 26, scope: !7063)
!7068 = !DILocation(line: 113, column: 13, scope: !7063)
!7069 = !DILocation(line: 113, column: 3, scope: !7063)
!7070 = !DILocation(line: 114, column: 23, scope: !6980)
!7071 = !DILocation(line: 114, column: 29, scope: !6980)
!7072 = !DILocation(line: 114, column: 33, scope: !6980)
!7073 = !DILocation(line: 114, column: 45, scope: !6980)
!7074 = !DILocation(line: 114, column: 49, scope: !6980)
!7075 = !DILocation(line: 114, column: 57, scope: !6980)
!7076 = !DILocation(line: 114, column: 11, scope: !6980)
!7077 = !DILocation(line: 114, column: 8, scope: !6980)
!7078 = !DILocation(line: 116, column: 9, scope: !7079)
!7079 = distinct !DILexicalBlock(scope: !6980, file: !3, line: 116, column: 2)
!7080 = !DILocation(line: 116, column: 7, scope: !7079)
!7081 = !DILocation(line: 116, column: 14, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7079, file: !3, line: 116, column: 2)
!7083 = !DILocation(line: 116, column: 18, scope: !7082)
!7084 = !DILocation(line: 116, column: 16, scope: !7082)
!7085 = !DILocation(line: 116, column: 2, scope: !7079)
!7086 = !DILocation(line: 117, column: 7, scope: !7087)
!7087 = distinct !DILexicalBlock(scope: !7088, file: !3, line: 117, column: 7)
!7088 = distinct !DILexicalBlock(scope: !7082, file: !3, line: 116, column: 30)
!7089 = !DILocation(line: 117, column: 7, scope: !7088)
!7090 = !DILocation(line: 118, column: 18, scope: !7087)
!7091 = !DILocation(line: 118, column: 24, scope: !7087)
!7092 = !DILocation(line: 118, column: 31, scope: !7087)
!7093 = !DILocation(line: 118, column: 11, scope: !7087)
!7094 = !DILocation(line: 118, column: 9, scope: !7087)
!7095 = !DILocation(line: 118, column: 4, scope: !7087)
!7096 = !DILocation(line: 120, column: 11, scope: !7087)
!7097 = !DILocation(line: 120, column: 9, scope: !7087)
!7098 = !DILocation(line: 121, column: 3, scope: !7088)
!7099 = !DILocation(line: 121, column: 13, scope: !7088)
!7100 = !DILocation(line: 121, column: 19, scope: !7088)
!7101 = !DILocation(line: 121, column: 25, scope: !7088)
!7102 = !DILocation(line: 122, column: 15, scope: !7088)
!7103 = !DILocation(line: 122, column: 20, scope: !7088)
!7104 = !DILocation(line: 122, column: 26, scope: !7088)
!7105 = !DILocation(line: 122, column: 3, scope: !7088)
!7106 = !DILocation(line: 123, column: 12, scope: !7088)
!7107 = !DILocation(line: 123, column: 16, scope: !7088)
!7108 = !DILocation(line: 123, column: 9, scope: !7088)
!7109 = !DILocation(line: 124, column: 10, scope: !7088)
!7110 = !DILocation(line: 124, column: 7, scope: !7088)
!7111 = !DILocation(line: 125, column: 2, scope: !7088)
!7112 = !DILocation(line: 116, column: 25, scope: !7082)
!7113 = !DILocation(line: 116, column: 2, scope: !7082)
!7114 = distinct !{!7114, !7085, !7115, !5261, !5262}
!7115 = !DILocation(line: 125, column: 2, scope: !7079)
!7116 = !DILocation(line: 127, column: 8, scope: !6980)
!7117 = !DILocation(line: 127, column: 2, scope: !6980)
!7118 = !DILocation(line: 129, column: 2, scope: !6980)
!7119 = !DILocation(line: 130, column: 1, scope: !6980)
!7120 = distinct !DISubprogram(name: "__drm_fb_xfrm", scope: !3, file: !3, line: 45, type: !6981, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7121)
!7121 = !{!7122, !7123, !7124, !7125, !7126, !7127, !7128, !7129, !7130, !7131, !7132, !7133, !7134, !7135}
!7122 = !DILocalVariable(name: "dst", arg: 1, scope: !7120, file: !3, line: 45, type: !153)
!7123 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !7120, file: !3, line: 45, type: !169)
!7124 = !DILocalVariable(name: "dst_pixsize", arg: 3, scope: !7120, file: !3, line: 45, type: !169)
!7125 = !DILocalVariable(name: "vaddr", arg: 4, scope: !7120, file: !3, line: 46, type: !1622)
!7126 = !DILocalVariable(name: "fb", arg: 5, scope: !7120, file: !3, line: 46, type: !195)
!7127 = !DILocalVariable(name: "clip", arg: 6, scope: !7120, file: !3, line: 47, type: !4810)
!7128 = !DILocalVariable(name: "vaddr_cached_hint", arg: 7, scope: !7120, file: !3, line: 47, type: !189)
!7129 = !DILocalVariable(name: "xfrm_line", arg: 8, scope: !7120, file: !3, line: 48, type: !4856)
!7130 = !DILocalVariable(name: "linepixels", scope: !7120, file: !3, line: 50, type: !169)
!7131 = !DILocalVariable(name: "lines", scope: !7120, file: !3, line: 51, type: !169)
!7132 = !DILocalVariable(name: "sbuf_len", scope: !7120, file: !3, line: 52, type: !165)
!7133 = !DILocalVariable(name: "stmp", scope: !7120, file: !3, line: 53, type: !153)
!7134 = !DILocalVariable(name: "i", scope: !7120, file: !3, line: 54, type: !169)
!7135 = !DILocalVariable(name: "sbuf", scope: !7120, file: !3, line: 55, type: !1622)
!7136 = !DILocation(line: 45, column: 32, scope: !7120)
!7137 = !DILocation(line: 45, column: 51, scope: !7120)
!7138 = !DILocation(line: 45, column: 76, scope: !7120)
!7139 = !DILocation(line: 46, column: 17, scope: !7120)
!7140 = !DILocation(line: 46, column: 54, scope: !7120)
!7141 = !DILocation(line: 47, column: 28, scope: !7120)
!7142 = !DILocation(line: 47, column: 39, scope: !7120)
!7143 = !DILocation(line: 48, column: 12, scope: !7120)
!7144 = !DILocation(line: 50, column: 2, scope: !7120)
!7145 = !DILocation(line: 50, column: 16, scope: !7120)
!7146 = !DILocation(line: 50, column: 44, scope: !7120)
!7147 = !DILocation(line: 50, column: 29, scope: !7120)
!7148 = !DILocation(line: 51, column: 2, scope: !7120)
!7149 = !DILocation(line: 51, column: 16, scope: !7120)
!7150 = !DILocation(line: 51, column: 40, scope: !7120)
!7151 = !DILocation(line: 51, column: 24, scope: !7120)
!7152 = !DILocation(line: 52, column: 2, scope: !7120)
!7153 = !DILocation(line: 52, column: 9, scope: !7120)
!7154 = !DILocation(line: 52, column: 20, scope: !7120)
!7155 = !DILocation(line: 52, column: 33, scope: !7120)
!7156 = !DILocation(line: 52, column: 37, scope: !7120)
!7157 = !DILocation(line: 52, column: 45, scope: !7120)
!7158 = !DILocation(line: 52, column: 31, scope: !7120)
!7159 = !DILocation(line: 53, column: 2, scope: !7120)
!7160 = !DILocation(line: 53, column: 8, scope: !7120)
!7161 = !DILocation(line: 54, column: 2, scope: !7120)
!7162 = !DILocation(line: 54, column: 16, scope: !7120)
!7163 = !DILocation(line: 55, column: 2, scope: !7120)
!7164 = !DILocation(line: 55, column: 14, scope: !7120)
!7165 = !DILocation(line: 62, column: 7, scope: !7166)
!7166 = distinct !DILexicalBlock(scope: !7120, file: !3, line: 62, column: 6)
!7167 = !DILocation(line: 62, column: 6, scope: !7120)
!7168 = !DILocation(line: 63, column: 18, scope: !7169)
!7169 = distinct !DILexicalBlock(scope: !7166, file: !3, line: 62, column: 26)
!7170 = !DILocation(line: 63, column: 10, scope: !7169)
!7171 = !DILocation(line: 63, column: 8, scope: !7169)
!7172 = !DILocation(line: 64, column: 8, scope: !7173)
!7173 = distinct !DILexicalBlock(scope: !7169, file: !3, line: 64, column: 7)
!7174 = !DILocation(line: 64, column: 7, scope: !7169)
!7175 = !DILocation(line: 65, column: 4, scope: !7173)
!7176 = !DILocation(line: 66, column: 2, scope: !7169)
!7177 = !DILocation(line: 68, column: 7, scope: !7178)
!7178 = distinct !DILexicalBlock(scope: !7120, file: !3, line: 68, column: 6)
!7179 = !DILocation(line: 68, column: 6, scope: !7120)
!7180 = !DILocation(line: 69, column: 30, scope: !7178)
!7181 = !DILocation(line: 69, column: 15, scope: !7178)
!7182 = !DILocation(line: 69, column: 38, scope: !7178)
!7183 = !DILocation(line: 69, column: 36, scope: !7178)
!7184 = !DILocation(line: 69, column: 13, scope: !7178)
!7185 = !DILocation(line: 69, column: 3, scope: !7178)
!7186 = !DILocation(line: 70, column: 23, scope: !7120)
!7187 = !DILocation(line: 70, column: 29, scope: !7120)
!7188 = !DILocation(line: 70, column: 33, scope: !7120)
!7189 = !DILocation(line: 70, column: 45, scope: !7120)
!7190 = !DILocation(line: 70, column: 49, scope: !7120)
!7191 = !DILocation(line: 70, column: 57, scope: !7120)
!7192 = !DILocation(line: 70, column: 11, scope: !7120)
!7193 = !DILocation(line: 70, column: 8, scope: !7120)
!7194 = !DILocation(line: 72, column: 9, scope: !7195)
!7195 = distinct !DILexicalBlock(scope: !7120, file: !3, line: 72, column: 2)
!7196 = !DILocation(line: 72, column: 7, scope: !7195)
!7197 = !DILocation(line: 72, column: 14, scope: !7198)
!7198 = distinct !DILexicalBlock(scope: !7195, file: !3, line: 72, column: 2)
!7199 = !DILocation(line: 72, column: 18, scope: !7198)
!7200 = !DILocation(line: 72, column: 16, scope: !7198)
!7201 = !DILocation(line: 72, column: 2, scope: !7195)
!7202 = !DILocation(line: 73, column: 7, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7204, file: !3, line: 73, column: 7)
!7204 = distinct !DILexicalBlock(scope: !7198, file: !3, line: 72, column: 30)
!7205 = !DILocation(line: 73, column: 7, scope: !7204)
!7206 = !DILocation(line: 74, column: 18, scope: !7203)
!7207 = !DILocation(line: 74, column: 24, scope: !7203)
!7208 = !DILocation(line: 74, column: 31, scope: !7203)
!7209 = !DILocation(line: 74, column: 11, scope: !7203)
!7210 = !DILocation(line: 74, column: 9, scope: !7203)
!7211 = !DILocation(line: 74, column: 4, scope: !7203)
!7212 = !DILocation(line: 76, column: 11, scope: !7203)
!7213 = !DILocation(line: 76, column: 9, scope: !7203)
!7214 = !DILocation(line: 77, column: 3, scope: !7204)
!7215 = !DILocation(line: 77, column: 13, scope: !7204)
!7216 = !DILocation(line: 77, column: 18, scope: !7204)
!7217 = !DILocation(line: 77, column: 24, scope: !7204)
!7218 = !DILocation(line: 78, column: 12, scope: !7204)
!7219 = !DILocation(line: 78, column: 16, scope: !7204)
!7220 = !DILocation(line: 78, column: 9, scope: !7204)
!7221 = !DILocation(line: 79, column: 10, scope: !7204)
!7222 = !DILocation(line: 79, column: 7, scope: !7204)
!7223 = !DILocation(line: 80, column: 2, scope: !7204)
!7224 = !DILocation(line: 72, column: 25, scope: !7198)
!7225 = !DILocation(line: 72, column: 2, scope: !7198)
!7226 = distinct !{!7226, !7201, !7227, !5261, !5262}
!7227 = !DILocation(line: 80, column: 2, scope: !7195)
!7228 = !DILocation(line: 82, column: 8, scope: !7120)
!7229 = !DILocation(line: 82, column: 2, scope: !7120)
!7230 = !DILocation(line: 84, column: 2, scope: !7120)
!7231 = !DILocation(line: 85, column: 1, scope: !7120)
!7232 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_xbgr8888_line", scope: !3, file: !3, line: 682, type: !4857, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7233)
!7233 = !{!7234, !7235, !7236, !7237, !7238, !7239, !7240}
!7234 = !DILocalVariable(name: "dbuf", arg: 1, scope: !7232, file: !3, line: 682, type: !153)
!7235 = !DILocalVariable(name: "sbuf", arg: 2, scope: !7232, file: !3, line: 682, type: !1622)
!7236 = !DILocalVariable(name: "pixels", arg: 3, scope: !7232, file: !3, line: 682, type: !7)
!7237 = !DILocalVariable(name: "dbuf32", scope: !7232, file: !3, line: 684, type: !6015)
!7238 = !DILocalVariable(name: "sbuf32", scope: !7232, file: !3, line: 685, type: !5520)
!7239 = !DILocalVariable(name: "x", scope: !7232, file: !3, line: 686, type: !7)
!7240 = !DILocalVariable(name: "pix", scope: !7232, file: !3, line: 687, type: !448)
!7241 = !DILocation(line: 682, column: 52, scope: !7232)
!7242 = !DILocation(line: 682, column: 70, scope: !7232)
!7243 = !DILocation(line: 682, column: 89, scope: !7232)
!7244 = !DILocation(line: 684, column: 2, scope: !7232)
!7245 = !DILocation(line: 684, column: 10, scope: !7232)
!7246 = !DILocation(line: 684, column: 19, scope: !7232)
!7247 = !DILocation(line: 685, column: 2, scope: !7232)
!7248 = !DILocation(line: 685, column: 16, scope: !7232)
!7249 = !DILocation(line: 685, column: 25, scope: !7232)
!7250 = !DILocation(line: 686, column: 2, scope: !7232)
!7251 = !DILocation(line: 686, column: 15, scope: !7232)
!7252 = !DILocation(line: 687, column: 2, scope: !7232)
!7253 = !DILocation(line: 687, column: 6, scope: !7232)
!7254 = !DILocation(line: 689, column: 9, scope: !7255)
!7255 = distinct !DILexicalBlock(scope: !7232, file: !3, line: 689, column: 2)
!7256 = !DILocation(line: 689, column: 7, scope: !7255)
!7257 = !DILocation(line: 689, column: 14, scope: !7258)
!7258 = distinct !DILexicalBlock(scope: !7255, file: !3, line: 689, column: 2)
!7259 = !DILocation(line: 689, column: 18, scope: !7258)
!7260 = !DILocation(line: 689, column: 16, scope: !7258)
!7261 = !DILocation(line: 689, column: 2, scope: !7255)
!7262 = !DILocation(line: 690, column: 9, scope: !7263)
!7263 = distinct !DILexicalBlock(scope: !7258, file: !3, line: 689, column: 31)
!7264 = !DILocation(line: 690, column: 7, scope: !7263)
!7265 = !DILocation(line: 691, column: 11, scope: !7263)
!7266 = !DILocation(line: 691, column: 15, scope: !7263)
!7267 = !DILocation(line: 691, column: 29, scope: !7263)
!7268 = !DILocation(line: 691, column: 36, scope: !7263)
!7269 = !DILocation(line: 692, column: 11, scope: !7263)
!7270 = !DILocation(line: 692, column: 15, scope: !7263)
!7271 = !DILocation(line: 692, column: 29, scope: !7263)
!7272 = !DILocation(line: 692, column: 36, scope: !7263)
!7273 = !DILocation(line: 691, column: 42, scope: !7263)
!7274 = !DILocation(line: 693, column: 11, scope: !7263)
!7275 = !DILocation(line: 693, column: 15, scope: !7263)
!7276 = !DILocation(line: 693, column: 29, scope: !7263)
!7277 = !DILocation(line: 693, column: 36, scope: !7263)
!7278 = !DILocation(line: 692, column: 42, scope: !7263)
!7279 = !DILocation(line: 694, column: 11, scope: !7263)
!7280 = !DILocation(line: 694, column: 15, scope: !7263)
!7281 = !DILocation(line: 694, column: 29, scope: !7263)
!7282 = !DILocation(line: 694, column: 36, scope: !7263)
!7283 = !DILocation(line: 693, column: 42, scope: !7263)
!7284 = !DILocation(line: 691, column: 7, scope: !7263)
!7285 = !DILocation(line: 695, column: 15, scope: !7263)
!7286 = !DILocation(line: 695, column: 10, scope: !7263)
!7287 = !DILocation(line: 695, column: 13, scope: !7263)
!7288 = !DILocation(line: 696, column: 2, scope: !7263)
!7289 = !DILocation(line: 689, column: 27, scope: !7258)
!7290 = !DILocation(line: 689, column: 2, scope: !7258)
!7291 = distinct !{!7291, !7261, !7292, !5261, !5262}
!7292 = !DILocation(line: 696, column: 2, scope: !7255)
!7293 = !DILocation(line: 697, column: 1, scope: !7232)
!7294 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_abgr8888_line", scope: !3, file: !3, line: 652, type: !4857, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7295)
!7295 = !{!7296, !7297, !7298, !7299, !7300, !7301, !7302}
!7296 = !DILocalVariable(name: "dbuf", arg: 1, scope: !7294, file: !3, line: 652, type: !153)
!7297 = !DILocalVariable(name: "sbuf", arg: 2, scope: !7294, file: !3, line: 652, type: !1622)
!7298 = !DILocalVariable(name: "pixels", arg: 3, scope: !7294, file: !3, line: 652, type: !7)
!7299 = !DILocalVariable(name: "dbuf32", scope: !7294, file: !3, line: 654, type: !6015)
!7300 = !DILocalVariable(name: "sbuf32", scope: !7294, file: !3, line: 655, type: !5520)
!7301 = !DILocalVariable(name: "x", scope: !7294, file: !3, line: 656, type: !7)
!7302 = !DILocalVariable(name: "pix", scope: !7294, file: !3, line: 657, type: !448)
!7303 = !DILocation(line: 652, column: 52, scope: !7294)
!7304 = !DILocation(line: 652, column: 70, scope: !7294)
!7305 = !DILocation(line: 652, column: 89, scope: !7294)
!7306 = !DILocation(line: 654, column: 2, scope: !7294)
!7307 = !DILocation(line: 654, column: 10, scope: !7294)
!7308 = !DILocation(line: 654, column: 19, scope: !7294)
!7309 = !DILocation(line: 655, column: 2, scope: !7294)
!7310 = !DILocation(line: 655, column: 16, scope: !7294)
!7311 = !DILocation(line: 655, column: 25, scope: !7294)
!7312 = !DILocation(line: 656, column: 2, scope: !7294)
!7313 = !DILocation(line: 656, column: 15, scope: !7294)
!7314 = !DILocation(line: 657, column: 2, scope: !7294)
!7315 = !DILocation(line: 657, column: 6, scope: !7294)
!7316 = !DILocation(line: 659, column: 9, scope: !7317)
!7317 = distinct !DILexicalBlock(scope: !7294, file: !3, line: 659, column: 2)
!7318 = !DILocation(line: 659, column: 7, scope: !7317)
!7319 = !DILocation(line: 659, column: 14, scope: !7320)
!7320 = distinct !DILexicalBlock(scope: !7317, file: !3, line: 659, column: 2)
!7321 = !DILocation(line: 659, column: 18, scope: !7320)
!7322 = !DILocation(line: 659, column: 16, scope: !7320)
!7323 = !DILocation(line: 659, column: 2, scope: !7317)
!7324 = !DILocation(line: 660, column: 9, scope: !7325)
!7325 = distinct !DILexicalBlock(scope: !7320, file: !3, line: 659, column: 31)
!7326 = !DILocation(line: 660, column: 7, scope: !7325)
!7327 = !DILocation(line: 661, column: 11, scope: !7325)
!7328 = !DILocation(line: 661, column: 15, scope: !7325)
!7329 = !DILocation(line: 661, column: 29, scope: !7325)
!7330 = !DILocation(line: 661, column: 36, scope: !7325)
!7331 = !DILocation(line: 662, column: 11, scope: !7325)
!7332 = !DILocation(line: 662, column: 15, scope: !7325)
!7333 = !DILocation(line: 662, column: 29, scope: !7325)
!7334 = !DILocation(line: 662, column: 36, scope: !7325)
!7335 = !DILocation(line: 661, column: 42, scope: !7325)
!7336 = !DILocation(line: 663, column: 11, scope: !7325)
!7337 = !DILocation(line: 663, column: 15, scope: !7325)
!7338 = !DILocation(line: 663, column: 29, scope: !7325)
!7339 = !DILocation(line: 663, column: 36, scope: !7325)
!7340 = !DILocation(line: 662, column: 42, scope: !7325)
!7341 = !DILocation(line: 661, column: 9, scope: !7325)
!7342 = !DILocation(line: 663, column: 42, scope: !7325)
!7343 = !DILocation(line: 661, column: 7, scope: !7325)
!7344 = !DILocation(line: 665, column: 15, scope: !7325)
!7345 = !DILocation(line: 665, column: 10, scope: !7325)
!7346 = !DILocation(line: 665, column: 13, scope: !7325)
!7347 = !DILocation(line: 666, column: 2, scope: !7325)
!7348 = !DILocation(line: 659, column: 27, scope: !7320)
!7349 = !DILocation(line: 659, column: 2, scope: !7320)
!7350 = distinct !{!7350, !7323, !7351, !5261, !5262}
!7351 = !DILocation(line: 666, column: 2, scope: !7317)
!7352 = !DILocation(line: 667, column: 1, scope: !7294)
!7353 = distinct !DISubprogram(name: "kobject_name", scope: !225, file: !225, line: 87, type: !292, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7354)
!7354 = !{!7355}
!7355 = !DILocalVariable(name: "kobj", arg: 1, scope: !7353, file: !225, line: 87, type: !287)
!7356 = !DILocation(line: 87, column: 62, scope: !7353)
!7357 = !DILocation(line: 89, column: 9, scope: !7353)
!7358 = !DILocation(line: 89, column: 15, scope: !7353)
!7359 = !DILocation(line: 89, column: 2, scope: !7353)
!7360 = !DISubprogram(name: "kmalloc_large", scope: !143, file: !143, line: 531, type: !6665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7361 = distinct !DISubprogram(name: "__kmalloc_index", scope: !143, file: !143, line: 444, type: !7362, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7364)
!7362 = !DISubroutineType(types: !7363)
!7363 = !{!7, !165, !189}
!7364 = !{!7365, !7366}
!7365 = !DILocalVariable(name: "size", arg: 1, scope: !7361, file: !143, line: 444, type: !165)
!7366 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7361, file: !143, line: 445, type: !189)
!7367 = !DILocation(line: 444, column: 60, scope: !7361)
!7368 = !DILocation(line: 445, column: 16, scope: !7361)
!7369 = !DILocation(line: 447, column: 7, scope: !7370)
!7370 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 447, column: 6)
!7371 = !DILocation(line: 447, column: 6, scope: !7361)
!7372 = !DILocation(line: 448, column: 3, scope: !7370)
!7373 = !DILocation(line: 450, column: 6, scope: !7374)
!7374 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 450, column: 6)
!7375 = !DILocation(line: 450, column: 11, scope: !7374)
!7376 = !DILocation(line: 450, column: 6, scope: !7361)
!7377 = !DILocation(line: 451, column: 3, scope: !7374)
!7378 = !DILocation(line: 453, column: 32, scope: !7379)
!7379 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 453, column: 6)
!7380 = !DILocation(line: 453, column: 37, scope: !7379)
!7381 = !DILocation(line: 453, column: 42, scope: !7379)
!7382 = !DILocation(line: 453, column: 45, scope: !7379)
!7383 = !DILocation(line: 453, column: 50, scope: !7379)
!7384 = !DILocation(line: 453, column: 6, scope: !7361)
!7385 = !DILocation(line: 454, column: 3, scope: !7379)
!7386 = !DILocation(line: 455, column: 32, scope: !7387)
!7387 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 455, column: 6)
!7388 = !DILocation(line: 455, column: 37, scope: !7387)
!7389 = !DILocation(line: 455, column: 43, scope: !7387)
!7390 = !DILocation(line: 455, column: 46, scope: !7387)
!7391 = !DILocation(line: 455, column: 51, scope: !7387)
!7392 = !DILocation(line: 455, column: 6, scope: !7361)
!7393 = !DILocation(line: 456, column: 3, scope: !7387)
!7394 = !DILocation(line: 457, column: 6, scope: !7395)
!7395 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 457, column: 6)
!7396 = !DILocation(line: 457, column: 11, scope: !7395)
!7397 = !DILocation(line: 457, column: 6, scope: !7361)
!7398 = !DILocation(line: 457, column: 26, scope: !7395)
!7399 = !DILocation(line: 458, column: 6, scope: !7400)
!7400 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 458, column: 6)
!7401 = !DILocation(line: 458, column: 11, scope: !7400)
!7402 = !DILocation(line: 458, column: 6, scope: !7361)
!7403 = !DILocation(line: 458, column: 26, scope: !7400)
!7404 = !DILocation(line: 459, column: 6, scope: !7405)
!7405 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 459, column: 6)
!7406 = !DILocation(line: 459, column: 11, scope: !7405)
!7407 = !DILocation(line: 459, column: 6, scope: !7361)
!7408 = !DILocation(line: 459, column: 26, scope: !7405)
!7409 = !DILocation(line: 460, column: 6, scope: !7410)
!7410 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 460, column: 6)
!7411 = !DILocation(line: 460, column: 11, scope: !7410)
!7412 = !DILocation(line: 460, column: 6, scope: !7361)
!7413 = !DILocation(line: 460, column: 26, scope: !7410)
!7414 = !DILocation(line: 461, column: 6, scope: !7415)
!7415 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 461, column: 6)
!7416 = !DILocation(line: 461, column: 11, scope: !7415)
!7417 = !DILocation(line: 461, column: 6, scope: !7361)
!7418 = !DILocation(line: 461, column: 26, scope: !7415)
!7419 = !DILocation(line: 462, column: 6, scope: !7420)
!7420 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 462, column: 6)
!7421 = !DILocation(line: 462, column: 11, scope: !7420)
!7422 = !DILocation(line: 462, column: 6, scope: !7361)
!7423 = !DILocation(line: 462, column: 26, scope: !7420)
!7424 = !DILocation(line: 463, column: 6, scope: !7425)
!7425 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 463, column: 6)
!7426 = !DILocation(line: 463, column: 11, scope: !7425)
!7427 = !DILocation(line: 463, column: 6, scope: !7361)
!7428 = !DILocation(line: 463, column: 26, scope: !7425)
!7429 = !DILocation(line: 464, column: 6, scope: !7430)
!7430 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 464, column: 6)
!7431 = !DILocation(line: 464, column: 11, scope: !7430)
!7432 = !DILocation(line: 464, column: 6, scope: !7361)
!7433 = !DILocation(line: 464, column: 26, scope: !7430)
!7434 = !DILocation(line: 465, column: 6, scope: !7435)
!7435 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 465, column: 6)
!7436 = !DILocation(line: 465, column: 11, scope: !7435)
!7437 = !DILocation(line: 465, column: 6, scope: !7361)
!7438 = !DILocation(line: 465, column: 26, scope: !7435)
!7439 = !DILocation(line: 466, column: 6, scope: !7440)
!7440 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 466, column: 6)
!7441 = !DILocation(line: 466, column: 11, scope: !7440)
!7442 = !DILocation(line: 466, column: 6, scope: !7361)
!7443 = !DILocation(line: 466, column: 26, scope: !7440)
!7444 = !DILocation(line: 467, column: 6, scope: !7445)
!7445 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 467, column: 6)
!7446 = !DILocation(line: 467, column: 11, scope: !7445)
!7447 = !DILocation(line: 467, column: 6, scope: !7361)
!7448 = !DILocation(line: 467, column: 26, scope: !7445)
!7449 = !DILocation(line: 468, column: 6, scope: !7450)
!7450 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 468, column: 6)
!7451 = !DILocation(line: 468, column: 11, scope: !7450)
!7452 = !DILocation(line: 468, column: 6, scope: !7361)
!7453 = !DILocation(line: 468, column: 26, scope: !7450)
!7454 = !DILocation(line: 469, column: 6, scope: !7455)
!7455 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 469, column: 6)
!7456 = !DILocation(line: 469, column: 11, scope: !7455)
!7457 = !DILocation(line: 469, column: 6, scope: !7361)
!7458 = !DILocation(line: 469, column: 26, scope: !7455)
!7459 = !DILocation(line: 470, column: 6, scope: !7460)
!7460 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 470, column: 6)
!7461 = !DILocation(line: 470, column: 11, scope: !7460)
!7462 = !DILocation(line: 470, column: 6, scope: !7361)
!7463 = !DILocation(line: 470, column: 26, scope: !7460)
!7464 = !DILocation(line: 471, column: 6, scope: !7465)
!7465 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 471, column: 6)
!7466 = !DILocation(line: 471, column: 11, scope: !7465)
!7467 = !DILocation(line: 471, column: 6, scope: !7361)
!7468 = !DILocation(line: 471, column: 26, scope: !7465)
!7469 = !DILocation(line: 472, column: 6, scope: !7470)
!7470 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 472, column: 6)
!7471 = !DILocation(line: 472, column: 11, scope: !7470)
!7472 = !DILocation(line: 472, column: 6, scope: !7361)
!7473 = !DILocation(line: 472, column: 26, scope: !7470)
!7474 = !DILocation(line: 473, column: 6, scope: !7475)
!7475 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 473, column: 6)
!7476 = !DILocation(line: 473, column: 11, scope: !7475)
!7477 = !DILocation(line: 473, column: 6, scope: !7361)
!7478 = !DILocation(line: 473, column: 26, scope: !7475)
!7479 = !DILocation(line: 474, column: 6, scope: !7480)
!7480 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 474, column: 6)
!7481 = !DILocation(line: 474, column: 11, scope: !7480)
!7482 = !DILocation(line: 474, column: 6, scope: !7361)
!7483 = !DILocation(line: 474, column: 27, scope: !7480)
!7484 = !DILocation(line: 475, column: 6, scope: !7485)
!7485 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 475, column: 6)
!7486 = !DILocation(line: 475, column: 11, scope: !7485)
!7487 = !DILocation(line: 475, column: 6, scope: !7361)
!7488 = !DILocation(line: 475, column: 32, scope: !7485)
!7489 = !DILocation(line: 477, column: 50, scope: !7490)
!7490 = distinct !DILexicalBlock(scope: !7361, file: !143, line: 477, column: 6)
!7491 = !DILocation(line: 477, column: 6, scope: !7361)
!7492 = !DILocation(line: 478, column: 3, scope: !7490)
!7493 = !DILocation(line: 478, column: 3, scope: !7494)
!7494 = distinct !DILexicalBlock(scope: !7495, file: !143, line: 478, column: 3)
!7495 = distinct !DILexicalBlock(scope: !7490, file: !143, line: 478, column: 3)
!7496 = !{i32 -2142435524}
!7497 = !DILocation(line: 478, column: 3, scope: !7495)
!7498 = !DILocation(line: 480, column: 3, scope: !7490)
!7499 = !DILocation(line: 480, column: 3, scope: !7500)
!7500 = distinct !DILexicalBlock(scope: !7490, file: !143, line: 480, column: 3)
!7501 = !DILocation(line: 480, column: 3, scope: !7502)
!7502 = distinct !DILexicalBlock(scope: !7500, file: !143, line: 480, column: 3)
!7503 = !DILocation(line: 480, column: 3, scope: !7504)
!7504 = distinct !DILexicalBlock(scope: !7500, file: !143, line: 480, column: 3)
!7505 = !{i64 2152531975, i64 2152532004, i64 2152532050, i64 2152532108, i64 2152532162, i64 2152532216, i64 2152532271, i64 2152532302}
!7506 = !DILocation(line: 483, column: 2, scope: !7361)
!7507 = !DILocation(line: 484, column: 1, scope: !7361)
!7508 = !DISubprogram(name: "kmalloc_trace", scope: !143, file: !143, line: 525, type: !7509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7509 = !DISubroutineType(types: !7510)
!7510 = !{!153, !7511, !156, !165}
!7511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7512, size: 64)
!7512 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7513, line: 11, flags: DIFlagFwdDecl)
!7513 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!7514 = distinct !DISubprogram(name: "kmalloc_type", scope: !143, file: !143, line: 401, type: !7515, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7517)
!7515 = !DISubroutineType(types: !7516)
!7516 = !{!142, !156, !169}
!7517 = !{!7518, !7519}
!7518 = !DILocalVariable(name: "flags", arg: 1, scope: !7514, file: !143, line: 401, type: !156)
!7519 = !DILocalVariable(name: "caller", arg: 2, scope: !7514, file: !143, line: 401, type: !169)
!7520 = !DILocation(line: 401, column: 67, scope: !7514)
!7521 = !DILocation(line: 401, column: 88, scope: !7514)
!7522 = !DILocation(line: 407, column: 6, scope: !7523)
!7523 = distinct !DILexicalBlock(scope: !7514, file: !143, line: 407, column: 6)
!7524 = !DILocation(line: 407, column: 6, scope: !7514)
!7525 = !DILocation(line: 413, column: 3, scope: !7523)
!7526 = !DILocation(line: 423, column: 38, scope: !7527)
!7527 = distinct !DILexicalBlock(scope: !7514, file: !143, line: 423, column: 6)
!7528 = !DILocation(line: 423, column: 44, scope: !7527)
!7529 = !DILocation(line: 423, column: 6, scope: !7514)
!7530 = !DILocation(line: 424, column: 3, scope: !7527)
!7531 = !DILocation(line: 426, column: 3, scope: !7532)
!7532 = distinct !DILexicalBlock(scope: !7514, file: !143, line: 425, column: 6)
!7533 = !DILocation(line: 429, column: 1, scope: !7514)
!7534 = !DISubprogram(name: "__kmalloc", scope: !143, file: !143, line: 488, type: !6665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7535 = !DISubprogram(name: "__compiletime_assert_196", scope: !143, file: !143, line: 478, type: !1002, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
