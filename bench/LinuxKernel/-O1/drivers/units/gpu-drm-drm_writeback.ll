; ModuleID = 'drivers/gpu/drm/drm_writeback.c'
source_filename = "drivers/gpu/drm/drm_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_writeback_connector_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_writeback_connector_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_writeback_connector_init_with_encoder: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_writeback_connector_init_with_encoder ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_writeback_prepare_job: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_writeback_prepare_job ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_writeback_queue_job: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_writeback_queue_job ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_writeback_cleanup_job: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_writeback_cleanup_job ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_writeback_signal_completion: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_writeback_signal_completion ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_writeback_get_out_fence: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_writeback_get_out_fence ; .previous"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i64, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, ptr, %struct.mutex, i64, i32, ptr, [128 x i8], %struct.mutex, [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, %struct.drm_luminance_range_info, i8, i8, i32, ptr, i32, i32 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [4 x i64], [4 x i64], i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i16, i16 }
%struct.drm_luminance_range_info = type { i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins, i32, i8 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.13 }
%union.anon.13 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.14, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.14 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i64, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.dma_fence = type { ptr, ptr, %union.anon.15, i64, i64, i64, %struct.kref, i32 }
%union.anon.15 = type { %struct.list_head }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr }

@drm_writeback_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_writeback_connector_init312 = internal global ptr @drm_writeback_connector_init, section ".discard.addressable", align 8, !dbg !6138
@.str = private unnamed_addr constant [16 x i8] c"CONNECTOR:%d-%s\00", align 1, !dbg !6140
@__UNIQUE_ID___addressable_drm_writeback_connector_init_with_encoder313 = internal global ptr @drm_writeback_connector_init_with_encoder, section ".discard.addressable", align 8, !dbg !6142
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_writeback.c\00", align 1, !dbg !6144
@__UNIQUE_ID___addressable_drm_writeback_prepare_job314 = internal global ptr @drm_writeback_prepare_job, section ".discard.addressable", align 8, !dbg !6146
@__UNIQUE_ID___addressable_drm_writeback_queue_job315 = internal global ptr @drm_writeback_queue_job, section ".discard.addressable", align 8, !dbg !6148
@__UNIQUE_ID___addressable_drm_writeback_cleanup_job316 = internal global ptr @drm_writeback_cleanup_job, section ".discard.addressable", align 8, !dbg !6150
@drm_writeback_signal_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !6152
@system_long_wq = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_drm_writeback_signal_completion318 = internal global ptr @drm_writeback_signal_completion, section ".discard.addressable", align 8, !dbg !6179
@drm_writeback_fence_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @drm_writeback_fence_get_driver_name, ptr @drm_writeback_fence_get_timeline_name, ptr @drm_writeback_fence_enable_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6200
@__UNIQUE_ID___addressable_drm_writeback_get_out_fence319 = internal global ptr @drm_writeback_get_out_fence, section ".discard.addressable", align 8, !dbg !6181
@.str.2 = private unnamed_addr constant [16 x i8] c"WRITEBACK_FB_ID\00", align 1, !dbg !6183
@.str.3 = private unnamed_addr constant [24 x i8] c"WRITEBACK_PIXEL_FORMATS\00", align 1, !dbg !6185
@.str.4 = private unnamed_addr constant [24 x i8] c"WRITEBACK_OUT_FENCE_PTR\00", align 1, !dbg !6188
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6190
@.str.6 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1, !dbg !6195
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_drm_writeback_connector_init312, ptr @__UNIQUE_ID___addressable_drm_writeback_connector_init_with_encoder313, ptr @__UNIQUE_ID___addressable_drm_writeback_prepare_job314, ptr @__UNIQUE_ID___addressable_drm_writeback_queue_job315, ptr @__UNIQUE_ID___addressable_drm_writeback_cleanup_job316, ptr @__UNIQUE_ID___addressable_drm_writeback_signal_completion318, ptr @__UNIQUE_ID___addressable_drm_writeback_get_out_fence319], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_writeback_connector_init(ptr noundef %dev, ptr noundef %wb_connector, ptr noundef %con_funcs, ptr noundef %enc_helper_funcs, ptr noundef %formats, i32 noundef %n_formats, i32 noundef %possible_crtcs) #0 align 16 !dbg !6211 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %wb_connector.addr = alloca ptr, align 8
  %con_funcs.addr = alloca ptr, align 8
  %enc_helper_funcs.addr = alloca ptr, align 8
  %formats.addr = alloca ptr, align 8
  %n_formats.addr = alloca i32, align 4
  %possible_crtcs.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6215, metadata !DIExpression()), !dbg !6223
  store ptr %wb_connector, ptr %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wb_connector.addr, metadata !6216, metadata !DIExpression()), !dbg !6224
  store ptr %con_funcs, ptr %con_funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_funcs.addr, metadata !6217, metadata !DIExpression()), !dbg !6225
  store ptr %enc_helper_funcs, ptr %enc_helper_funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %enc_helper_funcs.addr, metadata !6218, metadata !DIExpression()), !dbg !6226
  store ptr %formats, ptr %formats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %formats.addr, metadata !6219, metadata !DIExpression()), !dbg !6227
  store i32 %n_formats, ptr %n_formats.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n_formats.addr, metadata !6220, metadata !DIExpression()), !dbg !6228
  store i32 %possible_crtcs, ptr %possible_crtcs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %possible_crtcs.addr, metadata !6221, metadata !DIExpression()), !dbg !6229
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6222, metadata !DIExpression()), !dbg !6231
  store i32 0, ptr %ret, align 4, !dbg !6231
  %0 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6232
  %encoder = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 1, !dbg !6233
  %1 = load ptr, ptr %enc_helper_funcs.addr, align 8, !dbg !6234
  call void @drm_encoder_helper_add(ptr noundef %encoder, ptr noundef %1) #16, !dbg !6235
  %2 = load i32, ptr %possible_crtcs.addr, align 4, !dbg !6236
  %3 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6237
  %encoder1 = getelementptr inbounds %struct.drm_writeback_connector, ptr %3, i32 0, i32 1, !dbg !6238
  %possible_crtcs2 = getelementptr inbounds %struct.drm_encoder, ptr %encoder1, i32 0, i32 6, !dbg !6239
  store i32 %2, ptr %possible_crtcs2, align 8, !dbg !6240
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6241
  %5 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6242
  %encoder3 = getelementptr inbounds %struct.drm_writeback_connector, ptr %5, i32 0, i32 1, !dbg !6243
  %call = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %4, ptr noundef %encoder3, ptr noundef @drm_writeback_encoder_funcs, i32 noundef 5, ptr noundef null) #16, !dbg !6244
  store i32 %call, ptr %ret, align 4, !dbg !6245
  %6 = load i32, ptr %ret, align 4, !dbg !6246
  %tobool = icmp ne i32 %6, 0, !dbg !6246
  br i1 %tobool, label %if.then, label %if.end, !dbg !6248

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6249
  store i32 %7, ptr %retval, align 4, !dbg !6250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6250

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6251
  %9 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6252
  %10 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6253
  %encoder4 = getelementptr inbounds %struct.drm_writeback_connector, ptr %10, i32 0, i32 1, !dbg !6254
  %11 = load ptr, ptr %con_funcs.addr, align 8, !dbg !6255
  %12 = load ptr, ptr %formats.addr, align 8, !dbg !6256
  %13 = load i32, ptr %n_formats.addr, align 4, !dbg !6257
  %call5 = call i32 @drm_writeback_connector_init_with_encoder(ptr noundef %8, ptr noundef %9, ptr noundef %encoder4, ptr noundef %11, ptr noundef %12, i32 noundef %13) #16, !dbg !6258
  store i32 %call5, ptr %ret, align 4, !dbg !6259
  %14 = load i32, ptr %ret, align 4, !dbg !6260
  %tobool6 = icmp ne i32 %14, 0, !dbg !6260
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !6262

if.then7:                                         ; preds = %if.end
  %15 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6263
  %encoder8 = getelementptr inbounds %struct.drm_writeback_connector, ptr %15, i32 0, i32 1, !dbg !6264
  call void @drm_encoder_cleanup(ptr noundef %encoder8) #16, !dbg !6265
  br label %if.end9, !dbg !6265

if.end9:                                          ; preds = %if.then7, %if.end
  %16 = load i32, ptr %ret, align 4, !dbg !6266
  store i32 %16, ptr %retval, align 4, !dbg !6267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6267

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6268
  %17 = load i32, ptr %retval, align 4, !dbg !6268
  ret i32 %17, !dbg !6268
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_encoder_helper_add(ptr noundef %encoder, ptr noundef %funcs) #3 align 16 !dbg !6269 {
entry:
  %encoder.addr = alloca ptr, align 8
  %funcs.addr = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %encoder.addr, metadata !6273, metadata !DIExpression()), !dbg !6275
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !6274, metadata !DIExpression()), !dbg !6276
  %0 = load ptr, ptr %funcs.addr, align 8, !dbg !6277
  %1 = load ptr, ptr %encoder.addr, align 8, !dbg !6278
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 11, !dbg !6279
  store ptr %0, ptr %helper_private, align 8, !dbg !6280
  ret void, !dbg !6281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6282 dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_writeback_connector_init_with_encoder(ptr noundef %dev, ptr noundef %wb_connector, ptr noundef %enc, ptr noundef %con_funcs, ptr noundef %formats, i32 noundef %n_formats) #0 align 16 !dbg !6285 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %wb_connector.addr = alloca ptr, align 8
  %enc.addr = alloca ptr, align 8
  %con_funcs.addr = alloca ptr, align 8
  %formats.addr = alloca ptr, align 8
  %n_formats.addr = alloca i32, align 4
  %blob = alloca ptr, align 8
  %connector = alloca ptr, align 8
  %config = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral21 = alloca %struct.spinlock, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6289, metadata !DIExpression()), !dbg !6302
  store ptr %wb_connector, ptr %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wb_connector.addr, metadata !6290, metadata !DIExpression()), !dbg !6303
  store ptr %enc, ptr %enc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %enc.addr, metadata !6291, metadata !DIExpression()), !dbg !6304
  store ptr %con_funcs, ptr %con_funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_funcs.addr, metadata !6292, metadata !DIExpression()), !dbg !6305
  store ptr %formats, ptr %formats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %formats.addr, metadata !6293, metadata !DIExpression()), !dbg !6306
  store i32 %n_formats, ptr %n_formats.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n_formats.addr, metadata !6294, metadata !DIExpression()), !dbg !6307
  call void @llvm.lifetime.start.p0(i64 8, ptr %blob) #15, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %blob, metadata !6295, metadata !DIExpression()), !dbg !6309
  call void @llvm.lifetime.start.p0(i64 8, ptr %connector) #15, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %connector, metadata !6296, metadata !DIExpression()), !dbg !6311
  %0 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6312
  %base = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 0, !dbg !6313
  store ptr %base, ptr %connector, align 8, !dbg !6311
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #15, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %config, metadata !6297, metadata !DIExpression()), !dbg !6315
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6316
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 31, !dbg !6317
  store ptr %mode_config, ptr %config, align 8, !dbg !6315
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6318
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6299, metadata !DIExpression()), !dbg !6319
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6320
  %call = call i32 @create_writeback_properties(ptr noundef %2) #16, !dbg !6321
  store i32 %call, ptr %ret, align 4, !dbg !6319
  %3 = load i32, ptr %ret, align 4, !dbg !6322
  %cmp = icmp ne i32 %3, 0, !dbg !6324
  br i1 %cmp, label %if.then, label %if.end, !dbg !6325

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !6326
  store i32 %4, ptr %retval, align 4, !dbg !6327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6327

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6328
  %6 = load i32, ptr %n_formats.addr, align 4, !dbg !6329
  %conv = sext i32 %6 to i64, !dbg !6329
  %mul = mul i64 %conv, 4, !dbg !6330
  %7 = load ptr, ptr %formats.addr, align 8, !dbg !6331
  %call1 = call ptr @drm_property_create_blob(ptr noundef %5, i64 noundef %mul, ptr noundef %7) #16, !dbg !6332
  store ptr %call1, ptr %blob, align 8, !dbg !6333
  %8 = load ptr, ptr %blob, align 8, !dbg !6334
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %8) #16, !dbg !6336
  br i1 %call2, label %if.then3, label %if.end6, !dbg !6337

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %blob, align 8, !dbg !6338
  %call4 = call i64 @PTR_ERR(ptr noundef %9) #16, !dbg !6339
  %conv5 = trunc i64 %call4 to i32, !dbg !6339
  store i32 %conv5, ptr %retval, align 4, !dbg !6340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6340

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %connector, align 8, !dbg !6341
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %10, i32 0, i32 12, !dbg !6342
  store i8 0, ptr %interlace_allowed, align 4, !dbg !6343
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6344
  %12 = load ptr, ptr %connector, align 8, !dbg !6345
  %13 = load ptr, ptr %con_funcs.addr, align 8, !dbg !6346
  %call7 = call i32 @drm_connector_init(ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef 18) #16, !dbg !6347
  store i32 %call7, ptr %ret, align 4, !dbg !6348
  %14 = load i32, ptr %ret, align 4, !dbg !6349
  %tobool = icmp ne i32 %14, 0, !dbg !6349
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !6351

if.then8:                                         ; preds = %if.end6
  br label %connector_fail, !dbg !6352

if.end9:                                          ; preds = %if.end6
  %15 = load ptr, ptr %connector, align 8, !dbg !6353
  %16 = load ptr, ptr %enc.addr, align 8, !dbg !6354
  %call10 = call i32 @drm_connector_attach_encoder(ptr noundef %15, ptr noundef %16) #16, !dbg !6355
  store i32 %call10, ptr %ret, align 4, !dbg !6356
  %17 = load i32, ptr %ret, align 4, !dbg !6357
  %tobool11 = icmp ne i32 %17, 0, !dbg !6357
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6359

if.then12:                                        ; preds = %if.end9
  br label %attach_fail, !dbg !6360

if.end13:                                         ; preds = %if.end9
  %18 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6361
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, ptr %18, i32 0, i32 4, !dbg !6362
  call void @INIT_LIST_HEAD(ptr noundef %job_queue) #16, !dbg !6363
  br label %do.body, !dbg !6364

do.body:                                          ; preds = %if.end13
  %19 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6365
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %19, i32 0, i32 3, !dbg !6365
  %call14 = call ptr @spinlock_check(ptr noundef %job_lock) #16, !dbg !6365
  %20 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6365
  %job_lock15 = getelementptr inbounds %struct.drm_writeback_connector, ptr %20, i32 0, i32 3, !dbg !6365
  %21 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6365
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %21, i32 0, i32 0, !dbg !6365
  %22 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6365
  %counter = getelementptr inbounds %struct.atomic_t, ptr %22, i32 0, i32 0, !dbg !6365
  store i32 0, ptr %counter, align 4, !dbg !6365
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %job_lock15, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6365
  br label %do.cond, !dbg !6365

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6365

do.end:                                           ; preds = %do.cond
  %call16 = call i64 @dma_fence_context_alloc(i32 noundef 1) #16, !dbg !6367
  %conv17 = trunc i64 %call16 to i32, !dbg !6367
  %23 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6368
  %fence_context = getelementptr inbounds %struct.drm_writeback_connector, ptr %23, i32 0, i32 5, !dbg !6369
  store i32 %conv17, ptr %fence_context, align 8, !dbg !6370
  br label %do.body18, !dbg !6371

do.body18:                                        ; preds = %do.end
  %24 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6372
  %fence_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %24, i32 0, i32 6, !dbg !6372
  %call19 = call ptr @spinlock_check(ptr noundef %fence_lock) #16, !dbg !6372
  %25 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6372
  %fence_lock20 = getelementptr inbounds %struct.drm_writeback_connector, ptr %25, i32 0, i32 6, !dbg !6372
  %26 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral21, i32 0, i32 0, !dbg !6372
  %raw_lock22 = getelementptr inbounds %struct.raw_spinlock, ptr %26, i32 0, i32 0, !dbg !6372
  %27 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock22, i32 0, i32 0, !dbg !6372
  %counter23 = getelementptr inbounds %struct.atomic_t, ptr %27, i32 0, i32 0, !dbg !6372
  store i32 0, ptr %counter23, align 4, !dbg !6372
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fence_lock20, ptr align 4 %.compoundliteral21, i64 4, i1 false), !dbg !6372
  br label %do.cond24, !dbg !6372

do.cond24:                                        ; preds = %do.body18
  br label %do.end25, !dbg !6372

do.end25:                                         ; preds = %do.cond24
  %28 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6374
  %timeline_name = getelementptr inbounds %struct.drm_writeback_connector, ptr %28, i32 0, i32 8, !dbg !6375
  %arraydecay = getelementptr inbounds [32 x i8], ptr %timeline_name, i64 0, i64 0, !dbg !6374
  %29 = load ptr, ptr %connector, align 8, !dbg !6376
  %base26 = getelementptr inbounds %struct.drm_connector, ptr %29, i32 0, i32 6, !dbg !6377
  %id = getelementptr inbounds %struct.drm_mode_object, ptr %base26, i32 0, i32 0, !dbg !6378
  %30 = load i32, ptr %id, align 8, !dbg !6378
  %31 = load ptr, ptr %connector, align 8, !dbg !6379
  %name = getelementptr inbounds %struct.drm_connector, ptr %31, i32 0, i32 7, !dbg !6380
  %32 = load ptr, ptr %name, align 8, !dbg !6380
  %call27 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 32, ptr noundef @.str, i32 noundef %30, ptr noundef %32) #16, !dbg !6381
  %33 = load ptr, ptr %connector, align 8, !dbg !6382
  %base28 = getelementptr inbounds %struct.drm_connector, ptr %33, i32 0, i32 6, !dbg !6383
  %34 = load ptr, ptr %config, align 8, !dbg !6384
  %writeback_out_fence_ptr_property = getelementptr inbounds %struct.drm_mode_config, ptr %34, i32 0, i32 87, !dbg !6385
  %35 = load ptr, ptr %writeback_out_fence_ptr_property, align 8, !dbg !6385
  call void @drm_object_attach_property(ptr noundef %base28, ptr noundef %35, i64 noundef 0) #16, !dbg !6386
  %36 = load ptr, ptr %connector, align 8, !dbg !6387
  %base29 = getelementptr inbounds %struct.drm_connector, ptr %36, i32 0, i32 6, !dbg !6388
  %37 = load ptr, ptr %config, align 8, !dbg !6389
  %writeback_fb_id_property = getelementptr inbounds %struct.drm_mode_config, ptr %37, i32 0, i32 85, !dbg !6390
  %38 = load ptr, ptr %writeback_fb_id_property, align 8, !dbg !6390
  call void @drm_object_attach_property(ptr noundef %base29, ptr noundef %38, i64 noundef 0) #16, !dbg !6391
  %39 = load ptr, ptr %connector, align 8, !dbg !6392
  %base30 = getelementptr inbounds %struct.drm_connector, ptr %39, i32 0, i32 6, !dbg !6393
  %40 = load ptr, ptr %config, align 8, !dbg !6394
  %writeback_pixel_formats_property = getelementptr inbounds %struct.drm_mode_config, ptr %40, i32 0, i32 86, !dbg !6395
  %41 = load ptr, ptr %writeback_pixel_formats_property, align 8, !dbg !6395
  %42 = load ptr, ptr %blob, align 8, !dbg !6396
  %base31 = getelementptr inbounds %struct.drm_property_blob, ptr %42, i32 0, i32 0, !dbg !6397
  %id32 = getelementptr inbounds %struct.drm_mode_object, ptr %base31, i32 0, i32 0, !dbg !6398
  %43 = load i32, ptr %id32, align 8, !dbg !6398
  %conv33 = zext i32 %43 to i64, !dbg !6396
  call void @drm_object_attach_property(ptr noundef %base30, ptr noundef %41, i64 noundef %conv33) #16, !dbg !6399
  %44 = load ptr, ptr %blob, align 8, !dbg !6400
  %45 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6401
  %pixel_formats_blob_ptr = getelementptr inbounds %struct.drm_writeback_connector, ptr %45, i32 0, i32 2, !dbg !6402
  store ptr %44, ptr %pixel_formats_blob_ptr, align 8, !dbg !6403
  store i32 0, ptr %retval, align 4, !dbg !6404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6404

attach_fail:                                      ; preds = %if.then12
  call void @llvm.dbg.label(metadata !6300), !dbg !6405
  %46 = load ptr, ptr %connector, align 8, !dbg !6406
  call void @drm_connector_cleanup(ptr noundef %46) #16, !dbg !6407
  br label %connector_fail, !dbg !6407

connector_fail:                                   ; preds = %attach_fail, %if.then8
  call void @llvm.dbg.label(metadata !6301), !dbg !6408
  %47 = load ptr, ptr %blob, align 8, !dbg !6409
  call void @drm_property_blob_put(ptr noundef %47) #16, !dbg !6410
  %48 = load i32, ptr %ret, align 4, !dbg !6411
  store i32 %48, ptr %retval, align 4, !dbg !6412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6412

cleanup:                                          ; preds = %connector_fail, %do.end25, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #15, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 8, ptr %connector) #15, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 8, ptr %blob) #15, !dbg !6413
  %49 = load i32, ptr %retval, align 4, !dbg !6413
  ret i32 %49, !dbg !6413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6414 dso_local void @drm_encoder_cleanup(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_writeback_properties(ptr noundef %dev) #0 align 16 !dbg !6415 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6419, metadata !DIExpression()), !dbg !6421
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #15, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !6420, metadata !DIExpression()), !dbg !6423
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6424
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 31, !dbg !6426
  %writeback_fb_id_property = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 85, !dbg !6427
  %1 = load ptr, ptr %writeback_fb_id_property, align 8, !dbg !6427
  %tobool = icmp ne ptr %1, null, !dbg !6424
  br i1 %tobool, label %if.end5, label %if.then, !dbg !6428

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6429
  %call = call ptr @drm_property_create_object(ptr noundef %2, i32 noundef -2147483648, ptr noundef @.str.2, i32 noundef -67372037) #16, !dbg !6431
  store ptr %call, ptr %prop, align 8, !dbg !6432
  %3 = load ptr, ptr %prop, align 8, !dbg !6433
  %tobool1 = icmp ne ptr %3, null, !dbg !6433
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !6435

if.then2:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !6436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6436

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %prop, align 8, !dbg !6437
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6438
  %mode_config3 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 31, !dbg !6439
  %writeback_fb_id_property4 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config3, i32 0, i32 85, !dbg !6440
  store ptr %4, ptr %writeback_fb_id_property4, align 8, !dbg !6441
  br label %if.end5, !dbg !6442

if.end5:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6443
  %mode_config6 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 31, !dbg !6445
  %writeback_pixel_formats_property = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config6, i32 0, i32 86, !dbg !6446
  %7 = load ptr, ptr %writeback_pixel_formats_property, align 8, !dbg !6446
  %tobool7 = icmp ne ptr %7, null, !dbg !6443
  br i1 %tobool7, label %if.end15, label %if.then8, !dbg !6447

if.then8:                                         ; preds = %if.end5
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6448
  %call9 = call ptr @drm_property_create(ptr noundef %8, i32 noundef -2147483628, ptr noundef @.str.3, i32 noundef 0) #16, !dbg !6450
  store ptr %call9, ptr %prop, align 8, !dbg !6451
  %9 = load ptr, ptr %prop, align 8, !dbg !6452
  %tobool10 = icmp ne ptr %9, null, !dbg !6452
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6454

if.then11:                                        ; preds = %if.then8
  store i32 -12, ptr %retval, align 4, !dbg !6455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6455

if.end12:                                         ; preds = %if.then8
  %10 = load ptr, ptr %prop, align 8, !dbg !6456
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6457
  %mode_config13 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 31, !dbg !6458
  %writeback_pixel_formats_property14 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config13, i32 0, i32 86, !dbg !6459
  store ptr %10, ptr %writeback_pixel_formats_property14, align 8, !dbg !6460
  br label %if.end15, !dbg !6461

if.end15:                                         ; preds = %if.end12, %if.end5
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !6462
  %mode_config16 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 31, !dbg !6464
  %writeback_out_fence_ptr_property = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config16, i32 0, i32 87, !dbg !6465
  %13 = load ptr, ptr %writeback_out_fence_ptr_property, align 8, !dbg !6465
  %tobool17 = icmp ne ptr %13, null, !dbg !6462
  br i1 %tobool17, label %if.end25, label %if.then18, !dbg !6466

if.then18:                                        ; preds = %if.end15
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6467
  %call19 = call ptr @drm_property_create_range(ptr noundef %14, i32 noundef -2147483648, ptr noundef @.str.4, i64 noundef 0, i64 noundef -1) #16, !dbg !6469
  store ptr %call19, ptr %prop, align 8, !dbg !6470
  %15 = load ptr, ptr %prop, align 8, !dbg !6471
  %tobool20 = icmp ne ptr %15, null, !dbg !6471
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !6473

if.then21:                                        ; preds = %if.then18
  store i32 -12, ptr %retval, align 4, !dbg !6474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6474

if.end22:                                         ; preds = %if.then18
  %16 = load ptr, ptr %prop, align 8, !dbg !6475
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !6476
  %mode_config23 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 31, !dbg !6477
  %writeback_out_fence_ptr_property24 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config23, i32 0, i32 87, !dbg !6478
  store ptr %16, ptr %writeback_out_fence_ptr_property24, align 8, !dbg !6479
  br label %if.end25, !dbg !6480

if.end25:                                         ; preds = %if.end22, %if.end15
  store i32 0, ptr %retval, align 4, !dbg !6481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6481

cleanup:                                          ; preds = %if.end25, %if.then21, %if.then11, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #15, !dbg !6482
  %18 = load i32, ptr %retval, align 4, !dbg !6482
  ret i32 %18, !dbg !6482
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6483 dso_local ptr @drm_property_create_blob(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6486 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6491, metadata !DIExpression()), !dbg !6492
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6493
  %1 = ptrtoint ptr %0 to i64, !dbg !6493
  %2 = inttoptr i64 %1 to ptr, !dbg !6493
  %3 = ptrtoint ptr %2 to i64, !dbg !6493
  %cmp = icmp uge i64 %3, -4095, !dbg !6493
  %lnot = xor i1 %cmp, true, !dbg !6493
  %lnot1 = xor i1 %lnot, true, !dbg !6493
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6493
  %conv = sext i32 %lnot.ext to i64, !dbg !6493
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6493
  %tobool = icmp ne i64 %expval, 0, !dbg !6493
  ret i1 %tobool, !dbg !6494
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6495 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6499, metadata !DIExpression()), !dbg !6500
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6501
  %1 = ptrtoint ptr %0 to i64, !dbg !6502
  ret i64 %1, !dbg !6503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6504 dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6507 dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !6510 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6515, metadata !DIExpression()), !dbg !6516
  br label %do.body, !dbg !6517

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6518

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6520

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6518

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6522
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6522
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6522
  store volatile ptr %0, ptr %next, align 8, !dbg !6522
  br label %do.end3, !dbg !6522

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6518

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6524

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6525

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6527

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6525

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6529
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6529
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6529
  store volatile ptr %2, ptr %prev, align 8, !dbg !6529
  br label %do.end9, !dbg !6529

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6525

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6531
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !6532 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6538, metadata !DIExpression()), !dbg !6539
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6540
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6541
  ret ptr %1, !dbg !6542
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6543 dso_local i64 @dma_fence_context_alloc(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6546 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6550 dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6554 dso_local void @drm_connector_cleanup(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6555 dso_local void @drm_property_blob_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_writeback_set_fb(ptr noundef %conn_state, ptr noundef %fb) #0 align 16 !dbg !6558 {
entry:
  %retval = alloca i32, align 4
  %conn_state.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %conn_state, ptr %conn_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conn_state.addr, metadata !6562, metadata !DIExpression()), !dbg !6569
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6563, metadata !DIExpression()), !dbg !6570
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6571
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6564, metadata !DIExpression()), !dbg !6571
  %0 = load ptr, ptr %conn_state.addr, align 8, !dbg !6571
  %connector = getelementptr inbounds %struct.drm_connector_state, ptr %0, i32 0, i32 0, !dbg !6571
  %1 = load ptr, ptr %connector, align 8, !dbg !6571
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 10, !dbg !6571
  %2 = load i32, ptr %connector_type, align 4, !dbg !6571
  %cmp = icmp ne i32 %2, 18, !dbg !6571
  %lnot = xor i1 %cmp, true, !dbg !6571
  %lnot1 = xor i1 %lnot, true, !dbg !6571
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6571
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6571
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6572
  %tobool = icmp ne i32 %3, 0, !dbg !6572
  %lnot2 = xor i1 %tobool, true, !dbg !6572
  %lnot4 = xor i1 %lnot2, true, !dbg !6572
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6572
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6572
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6572
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6572
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6571

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6572

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6573
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6566, metadata !DIExpression()), !dbg !6573
  store i32 2305, ptr %__flags, align 4, !dbg !6573
  br label %do.body7, !dbg !6573

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6574

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6574

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6573

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6576
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 296, i32 %4, i64 12) #15, !dbg !6576, !srcloc !6578
  br label %do.cond9, !dbg !6576

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6576

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6573

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6579

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6579

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6572
  br label %do.cond14, !dbg !6573

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6573

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6573

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6571
  %tobool16 = icmp ne i32 %5, 0, !dbg !6571
  %lnot17 = xor i1 %tobool16, true, !dbg !6571
  %lnot19 = xor i1 %lnot17, true, !dbg !6571
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6571
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6571
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6571
  store i64 %expval22, ptr %tmp, align 8, !dbg !6572
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6581
  %6 = load i64, ptr %tmp, align 8, !dbg !6571
  %7 = load ptr, ptr %conn_state.addr, align 8, !dbg !6582
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %7, i32 0, i32 14, !dbg !6584
  %8 = load ptr, ptr %writeback_job, align 8, !dbg !6584
  %tobool23 = icmp ne ptr %8, null, !dbg !6582
  br i1 %tobool23, label %if.end34, label %if.then24, !dbg !6585

if.then24:                                        ; preds = %if.end
  %call = call noalias ptr @kzalloc(i64 noundef 88, i32 noundef 3264) #17, !dbg !6586
  %9 = load ptr, ptr %conn_state.addr, align 8, !dbg !6588
  %writeback_job25 = getelementptr inbounds %struct.drm_connector_state, ptr %9, i32 0, i32 14, !dbg !6589
  store ptr %call, ptr %writeback_job25, align 8, !dbg !6590
  %10 = load ptr, ptr %conn_state.addr, align 8, !dbg !6591
  %writeback_job26 = getelementptr inbounds %struct.drm_connector_state, ptr %10, i32 0, i32 14, !dbg !6593
  %11 = load ptr, ptr %writeback_job26, align 8, !dbg !6593
  %tobool27 = icmp ne ptr %11, null, !dbg !6591
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !6594

if.then28:                                        ; preds = %if.then24
  store i32 -12, ptr %retval, align 4, !dbg !6595
  br label %return, !dbg !6595

if.end29:                                         ; preds = %if.then24
  %12 = load ptr, ptr %conn_state.addr, align 8, !dbg !6596
  %connector30 = getelementptr inbounds %struct.drm_connector_state, ptr %12, i32 0, i32 0, !dbg !6597
  %13 = load ptr, ptr %connector30, align 8, !dbg !6597
  %call31 = call ptr @drm_connector_to_writeback(ptr noundef %13) #16, !dbg !6598
  %14 = load ptr, ptr %conn_state.addr, align 8, !dbg !6599
  %writeback_job32 = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 14, !dbg !6600
  %15 = load ptr, ptr %writeback_job32, align 8, !dbg !6600
  %connector33 = getelementptr inbounds %struct.drm_writeback_job, ptr %15, i32 0, i32 0, !dbg !6601
  store ptr %call31, ptr %connector33, align 8, !dbg !6602
  br label %if.end34, !dbg !6603

if.end34:                                         ; preds = %if.end29, %if.end
  %16 = load ptr, ptr %conn_state.addr, align 8, !dbg !6604
  %writeback_job35 = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 14, !dbg !6605
  %17 = load ptr, ptr %writeback_job35, align 8, !dbg !6605
  %fb36 = getelementptr inbounds %struct.drm_writeback_job, ptr %17, i32 0, i32 4, !dbg !6606
  %18 = load ptr, ptr %fb.addr, align 8, !dbg !6607
  call void @drm_framebuffer_assign(ptr noundef %fb36, ptr noundef %18) #16, !dbg !6608
  store i32 0, ptr %retval, align 4, !dbg !6609
  br label %return, !dbg !6609

return:                                           ; preds = %if.end34, %if.then28
  %19 = load i32, ptr %retval, align 4, !dbg !6610
  ret i32 %19, !dbg !6610
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6611 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6615, metadata !DIExpression()), !dbg !6617
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6616, metadata !DIExpression()), !dbg !6618
  %0 = load i64, ptr %size.addr, align 8, !dbg !6619
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6620
  %or = or i32 %1, 256, !dbg !6621
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !6622
  ret ptr %call, !dbg !6623
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_connector_to_writeback(ptr noundef %connector) #3 align 16 !dbg !6624 {
entry:
  %connector.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !6628, metadata !DIExpression()), !dbg !6631
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6632
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6629, metadata !DIExpression()), !dbg !6632
  %0 = load ptr, ptr %connector.addr, align 8, !dbg !6632
  store ptr %0, ptr %__mptr, align 8, !dbg !6632
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6632
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6632
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6632
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6633
  %2 = load ptr, ptr %tmp, align 8, !dbg !6632
  ret ptr %2, !dbg !6634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_framebuffer_assign(ptr noundef %p, ptr noundef %fb) #3 align 16 !dbg !6635 {
entry:
  %p.addr = alloca ptr, align 8
  %fb.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6640, metadata !DIExpression()), !dbg !6642
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6641, metadata !DIExpression()), !dbg !6643
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !6644
  %tobool = icmp ne ptr %0, null, !dbg !6644
  br i1 %tobool, label %if.then, label %if.end, !dbg !6646

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fb.addr, align 8, !dbg !6647
  call void @drm_framebuffer_get(ptr noundef %1) #16, !dbg !6648
  br label %if.end, !dbg !6648

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6649
  %3 = load ptr, ptr %2, align 8, !dbg !6651
  %tobool1 = icmp ne ptr %3, null, !dbg !6651
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6652

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6653
  %5 = load ptr, ptr %4, align 8, !dbg !6654
  call void @drm_framebuffer_put(ptr noundef %5) #16, !dbg !6655
  br label %if.end3, !dbg !6655

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %fb.addr, align 8, !dbg !6656
  %7 = load ptr, ptr %p.addr, align 8, !dbg !6657
  store ptr %6, ptr %7, align 8, !dbg !6658
  ret void, !dbg !6659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_writeback_prepare_job(ptr noundef %job) #0 align 16 !dbg !6660 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca ptr, align 8
  %connector = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %job, ptr %job.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %job.addr, metadata !6664, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 8, ptr %connector) #15, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %connector, metadata !6665, metadata !DIExpression()), !dbg !6670
  %0 = load ptr, ptr %job.addr, align 8, !dbg !6671
  %connector1 = getelementptr inbounds %struct.drm_writeback_job, ptr %0, i32 0, i32 0, !dbg !6672
  %1 = load ptr, ptr %connector1, align 8, !dbg !6672
  store ptr %1, ptr %connector, align 8, !dbg !6670
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #15, !dbg !6673
  call void @llvm.dbg.declare(metadata ptr %funcs, metadata !6666, metadata !DIExpression()), !dbg !6674
  %2 = load ptr, ptr %connector, align 8, !dbg !6675
  %base = getelementptr inbounds %struct.drm_writeback_connector, ptr %2, i32 0, i32 0, !dbg !6676
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %base, i32 0, i32 35, !dbg !6677
  %3 = load ptr, ptr %helper_private, align 8, !dbg !6677
  store ptr %3, ptr %funcs, align 8, !dbg !6674
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6678
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6667, metadata !DIExpression()), !dbg !6679
  %4 = load ptr, ptr %funcs, align 8, !dbg !6680
  %prepare_writeback_job = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %4, i32 0, i32 8, !dbg !6682
  %5 = load ptr, ptr %prepare_writeback_job, align 8, !dbg !6682
  %tobool = icmp ne ptr %5, null, !dbg !6680
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6683

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %funcs, align 8, !dbg !6684
  %prepare_writeback_job2 = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %6, i32 0, i32 8, !dbg !6686
  %7 = load ptr, ptr %prepare_writeback_job2, align 8, !dbg !6686
  %8 = load ptr, ptr %connector, align 8, !dbg !6687
  %9 = load ptr, ptr %job.addr, align 8, !dbg !6688
  %call = call i32 %7(ptr noundef %8, ptr noundef %9) #16, !dbg !6684
  store i32 %call, ptr %ret, align 4, !dbg !6689
  %10 = load i32, ptr %ret, align 4, !dbg !6690
  %cmp = icmp slt i32 %10, 0, !dbg !6692
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6693

if.then3:                                         ; preds = %if.then
  %11 = load i32, ptr %ret, align 4, !dbg !6694
  store i32 %11, ptr %retval, align 4, !dbg !6695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6695

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6696

if.end4:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %job.addr, align 8, !dbg !6697
  %prepared = getelementptr inbounds %struct.drm_writeback_job, ptr %12, i32 0, i32 1, !dbg !6698
  store i8 1, ptr %prepared, align 8, !dbg !6699
  store i32 0, ptr %retval, align 4, !dbg !6700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6700

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6701
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #15, !dbg !6701
  call void @llvm.lifetime.end.p0(i64 8, ptr %connector) #15, !dbg !6701
  %13 = load i32, ptr %retval, align 4, !dbg !6701
  ret i32 %13, !dbg !6701
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_writeback_queue_job(ptr noundef %wb_connector, ptr noundef %conn_state) #0 align 16 !dbg !6702 {
entry:
  %wb_connector.addr = alloca ptr, align 8
  %conn_state.addr = alloca ptr, align 8
  %job = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %wb_connector, ptr %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wb_connector.addr, metadata !6706, metadata !DIExpression()), !dbg !6715
  store ptr %conn_state, ptr %conn_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conn_state.addr, metadata !6707, metadata !DIExpression()), !dbg !6716
  call void @llvm.lifetime.start.p0(i64 8, ptr %job) #15, !dbg !6717
  call void @llvm.dbg.declare(metadata ptr %job, metadata !6708, metadata !DIExpression()), !dbg !6718
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6709, metadata !DIExpression()), !dbg !6720
  %0 = load ptr, ptr %conn_state.addr, align 8, !dbg !6721
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %0, i32 0, i32 14, !dbg !6722
  %1 = load ptr, ptr %writeback_job, align 8, !dbg !6722
  store ptr %1, ptr %job, align 8, !dbg !6723
  %2 = load ptr, ptr %conn_state.addr, align 8, !dbg !6724
  %writeback_job1 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 14, !dbg !6725
  store ptr null, ptr %writeback_job1, align 8, !dbg !6726
  br label %do.body, !dbg !6727

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6728

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6710, metadata !DIExpression()), !dbg !6729
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6714, metadata !DIExpression()), !dbg !6729
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6729
  %conv = zext i1 %cmp to i32, !dbg !6729
  store i32 1, ptr %tmp, align 4, !dbg !6729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !6730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !6730
  %3 = load i32, ptr %tmp, align 4, !dbg !6729
  %4 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6730
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %4, i32 0, i32 3, !dbg !6730
  %call = call ptr @spinlock_check(ptr noundef %job_lock) #16, !dbg !6730
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !6730
  store i64 %call3, ptr %flags, align 8, !dbg !6730
  br label %do.cond, !dbg !6730

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6730

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !6728

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !6728

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %job, align 8, !dbg !6731
  %list_entry = getelementptr inbounds %struct.drm_writeback_job, ptr %5, i32 0, i32 3, !dbg !6732
  %6 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6733
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, ptr %6, i32 0, i32 4, !dbg !6734
  call void @list_add_tail(ptr noundef %list_entry, ptr noundef %job_queue) #16, !dbg !6735
  %7 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6736
  %job_lock6 = getelementptr inbounds %struct.drm_writeback_connector, ptr %7, i32 0, i32 3, !dbg !6737
  %8 = load i64, ptr %flags, align 8, !dbg !6738
  call void @spin_unlock_irqrestore(ptr noundef %job_lock6, i64 noundef %8) #16, !dbg !6739
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !6740
  call void @llvm.lifetime.end.p0(i64 8, ptr %job) #15, !dbg !6740
  ret void, !dbg !6740
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6741 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !6745 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6749, metadata !DIExpression()), !dbg !6751
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6750, metadata !DIExpression()), !dbg !6752
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6753
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6754
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6755
  %2 = load ptr, ptr %prev, align 8, !dbg !6755
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6756
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !6757
  ret void, !dbg !6758
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !6759 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6763, metadata !DIExpression()), !dbg !6769
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6764, metadata !DIExpression()), !dbg !6770
  br label %do.body, !dbg !6771

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6765, metadata !DIExpression()), !dbg !6772
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6768, metadata !DIExpression()), !dbg !6772
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6772
  %conv = zext i1 %cmp to i32, !dbg !6772
  store i32 1, ptr %tmp, align 4, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !6773
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !6773
  %0 = load i32, ptr %tmp, align 4, !dbg !6772
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6773
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6773
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6773
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !6773
  br label %do.end, !dbg !6773

do.end:                                           ; preds = %do.body
  ret void, !dbg !6774
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_writeback_cleanup_job(ptr noundef %job) #0 align 16 !dbg !6775 {
entry:
  %job.addr = alloca ptr, align 8
  %connector = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  store ptr %job, ptr %job.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %job.addr, metadata !6779, metadata !DIExpression()), !dbg !6782
  call void @llvm.lifetime.start.p0(i64 8, ptr %connector) #15, !dbg !6783
  call void @llvm.dbg.declare(metadata ptr %connector, metadata !6780, metadata !DIExpression()), !dbg !6784
  %0 = load ptr, ptr %job.addr, align 8, !dbg !6785
  %connector1 = getelementptr inbounds %struct.drm_writeback_job, ptr %0, i32 0, i32 0, !dbg !6786
  %1 = load ptr, ptr %connector1, align 8, !dbg !6786
  store ptr %1, ptr %connector, align 8, !dbg !6784
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #15, !dbg !6787
  call void @llvm.dbg.declare(metadata ptr %funcs, metadata !6781, metadata !DIExpression()), !dbg !6788
  %2 = load ptr, ptr %connector, align 8, !dbg !6789
  %base = getelementptr inbounds %struct.drm_writeback_connector, ptr %2, i32 0, i32 0, !dbg !6790
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %base, i32 0, i32 35, !dbg !6791
  %3 = load ptr, ptr %helper_private, align 8, !dbg !6791
  store ptr %3, ptr %funcs, align 8, !dbg !6788
  %4 = load ptr, ptr %job.addr, align 8, !dbg !6792
  %prepared = getelementptr inbounds %struct.drm_writeback_job, ptr %4, i32 0, i32 1, !dbg !6794
  %5 = load i8, ptr %prepared, align 8, !dbg !6794, !range !6795, !noundef !1128
  %tobool = trunc i8 %5 to i1, !dbg !6794
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6796

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %funcs, align 8, !dbg !6797
  %cleanup_writeback_job = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %6, i32 0, i32 9, !dbg !6798
  %7 = load ptr, ptr %cleanup_writeback_job, align 8, !dbg !6798
  %tobool2 = icmp ne ptr %7, null, !dbg !6797
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6799

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %funcs, align 8, !dbg !6800
  %cleanup_writeback_job3 = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %8, i32 0, i32 9, !dbg !6801
  %9 = load ptr, ptr %cleanup_writeback_job3, align 8, !dbg !6801
  %10 = load ptr, ptr %connector, align 8, !dbg !6802
  %11 = load ptr, ptr %job.addr, align 8, !dbg !6803
  call void %9(ptr noundef %10, ptr noundef %11) #16, !dbg !6800
  br label %if.end, !dbg !6800

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load ptr, ptr %job.addr, align 8, !dbg !6804
  %fb = getelementptr inbounds %struct.drm_writeback_job, ptr %12, i32 0, i32 4, !dbg !6806
  %13 = load ptr, ptr %fb, align 8, !dbg !6806
  %tobool4 = icmp ne ptr %13, null, !dbg !6804
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6807

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %job.addr, align 8, !dbg !6808
  %fb6 = getelementptr inbounds %struct.drm_writeback_job, ptr %14, i32 0, i32 4, !dbg !6809
  %15 = load ptr, ptr %fb6, align 8, !dbg !6809
  call void @drm_framebuffer_put(ptr noundef %15) #16, !dbg !6810
  br label %if.end7, !dbg !6810

if.end7:                                          ; preds = %if.then5, %if.end
  %16 = load ptr, ptr %job.addr, align 8, !dbg !6811
  %out_fence = getelementptr inbounds %struct.drm_writeback_job, ptr %16, i32 0, i32 5, !dbg !6813
  %17 = load ptr, ptr %out_fence, align 8, !dbg !6813
  %tobool8 = icmp ne ptr %17, null, !dbg !6811
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6814

if.then9:                                         ; preds = %if.end7
  %18 = load ptr, ptr %job.addr, align 8, !dbg !6815
  %out_fence10 = getelementptr inbounds %struct.drm_writeback_job, ptr %18, i32 0, i32 5, !dbg !6816
  %19 = load ptr, ptr %out_fence10, align 8, !dbg !6816
  call void @dma_fence_put(ptr noundef %19) #16, !dbg !6817
  br label %if.end11, !dbg !6817

if.end11:                                         ; preds = %if.then9, %if.end7
  %20 = load ptr, ptr %job.addr, align 8, !dbg !6818
  call void @kfree(ptr noundef %20) #16, !dbg !6819
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #15, !dbg !6820
  call void @llvm.lifetime.end.p0(i64 8, ptr %connector) #15, !dbg !6820
  ret void, !dbg !6820
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_framebuffer_put(ptr noundef %fb) #3 align 16 !dbg !6821 {
entry:
  %fb.addr = alloca ptr, align 8
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6823, metadata !DIExpression()), !dbg !6824
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !6825
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2, !dbg !6826
  call void @drm_mode_object_put(ptr noundef %base) #16, !dbg !6827
  ret void, !dbg !6828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #3 align 16 !dbg !6829 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6831, metadata !DIExpression()), !dbg !6832
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6833
  %tobool = icmp ne ptr %0, null, !dbg !6833
  br i1 %tobool, label %if.then, label %if.end, !dbg !6835

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !6836
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !6837
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #16, !dbg !6838
  br label %if.end, !dbg !6838

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6839
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6840 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_writeback_signal_completion(ptr noundef %wb_connector, i32 noundef %status) #0 align 16 !dbg !6154 {
entry:
  %wb_connector.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %job = alloca ptr, align 8
  %out_fence = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %head__ = alloca ptr, align 8
  %pos__ = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp38 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %wb_connector, ptr %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wb_connector.addr, metadata !6158, metadata !DIExpression()), !dbg !6843
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !6159, metadata !DIExpression()), !dbg !6844
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6160, metadata !DIExpression()), !dbg !6846
  call void @llvm.lifetime.start.p0(i64 8, ptr %job) #15, !dbg !6847
  call void @llvm.dbg.declare(metadata ptr %job, metadata !6161, metadata !DIExpression()), !dbg !6848
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_fence) #15, !dbg !6849
  call void @llvm.dbg.declare(metadata ptr %out_fence, metadata !6162, metadata !DIExpression()), !dbg !6850
  br label %do.body, !dbg !6851

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6852

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !6853
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6163, metadata !DIExpression()), !dbg !6853
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !6853
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6167, metadata !DIExpression()), !dbg !6853
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6853
  %conv = zext i1 %cmp to i32, !dbg !6853
  store i32 1, ptr %tmp, align 4, !dbg !6853
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !6854
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !6854
  %0 = load i32, ptr %tmp, align 4, !dbg !6853
  %1 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6854
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 3, !dbg !6854
  %call = call ptr @spinlock_check(ptr noundef %job_lock) #16, !dbg !6854
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !6854
  store i64 %call2, ptr %flags, align 8, !dbg !6854
  br label %do.cond, !dbg !6854

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6854

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6852

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6852

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %head__) #15, !dbg !6855
  call void @llvm.dbg.declare(metadata ptr %head__, metadata !6168, metadata !DIExpression()), !dbg !6855
  %2 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6855
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, ptr %2, i32 0, i32 4, !dbg !6855
  store ptr %job_queue, ptr %head__, align 8, !dbg !6855
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos__) #15, !dbg !6855
  call void @llvm.dbg.declare(metadata ptr %pos__, metadata !6170, metadata !DIExpression()), !dbg !6855
  br label %do.body5, !dbg !6856

do.body5:                                         ; preds = %do.end4
  br label %do.cond6, !dbg !6858

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6858

do.end7:                                          ; preds = %do.cond6
  %3 = load ptr, ptr %head__, align 8, !dbg !6856
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6856
  %4 = load volatile ptr, ptr %next, align 8, !dbg !6856
  store ptr %4, ptr %tmp8, align 8, !dbg !6858
  %5 = load ptr, ptr %tmp8, align 8, !dbg !6856
  store ptr %5, ptr %pos__, align 8, !dbg !6855
  %6 = load ptr, ptr %pos__, align 8, !dbg !6855
  %7 = load ptr, ptr %head__, align 8, !dbg !6855
  %cmp10 = icmp ne ptr %6, %7, !dbg !6855
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !6855

cond.true:                                        ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6860
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6171, metadata !DIExpression()), !dbg !6860
  %8 = load ptr, ptr %pos__, align 8, !dbg !6860
  store ptr %8, ptr %__mptr, align 8, !dbg !6860
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6860
  %add.ptr = getelementptr i8, ptr %9, i64 -48, !dbg !6860
  store ptr %add.ptr, ptr %tmp12, align 8, !dbg !6860
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6855
  %10 = load ptr, ptr %tmp12, align 8, !dbg !6860
  br label %cond.end, !dbg !6855

cond.false:                                       ; preds = %do.end7
  br label %cond.end, !dbg !6855

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !6855
  store ptr %cond, ptr %tmp9, align 8, !dbg !6855
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos__) #15, !dbg !6861
  call void @llvm.lifetime.end.p0(i64 8, ptr %head__) #15, !dbg !6861
  %11 = load ptr, ptr %tmp9, align 8, !dbg !6855
  store ptr %11, ptr %job, align 8, !dbg !6862
  %12 = load ptr, ptr %job, align 8, !dbg !6863
  %tobool = icmp ne ptr %12, null, !dbg !6863
  br i1 %tobool, label %if.then, label %if.end, !dbg !6865

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr %job, align 8, !dbg !6866
  %list_entry = getelementptr inbounds %struct.drm_writeback_job, ptr %13, i32 0, i32 3, !dbg !6867
  call void @list_del(ptr noundef %list_entry) #16, !dbg !6868
  br label %if.end, !dbg !6868

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load ptr, ptr %wb_connector.addr, align 8, !dbg !6869
  %job_lock13 = getelementptr inbounds %struct.drm_writeback_connector, ptr %14, i32 0, i32 3, !dbg !6870
  %15 = load i64, ptr %flags, align 8, !dbg !6871
  call void @spin_unlock_irqrestore(ptr noundef %job_lock13, i64 noundef %15) #16, !dbg !6872
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6873
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6173, metadata !DIExpression()), !dbg !6873
  %16 = load ptr, ptr %job, align 8, !dbg !6873
  %tobool14 = icmp ne ptr %16, null, !dbg !6873
  %lnot = xor i1 %tobool14, true, !dbg !6873
  %lnot15 = xor i1 %lnot, true, !dbg !6873
  %lnot16 = xor i1 %lnot15, true, !dbg !6873
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !6873
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6873
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !6874
  %tobool17 = icmp ne i32 %17, 0, !dbg !6874
  %lnot18 = xor i1 %tobool17, true, !dbg !6874
  %lnot20 = xor i1 %lnot18, true, !dbg !6874
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6874
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6874
  %expval = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6874
  %tobool23 = icmp ne i64 %expval, 0, !dbg !6874
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !6873

if.then24:                                        ; preds = %if.end
  br label %do.body25, !dbg !6874

do.body25:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6176, metadata !DIExpression()), !dbg !6875
  store i32 2305, ptr %__flags, align 4, !dbg !6875
  br label %do.body26, !dbg !6875

do.body26:                                        ; preds = %do.body25
  br label %do.cond27, !dbg !6876

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6876

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !6875

do.body29:                                        ; preds = %do.end28
  %18 = load i32, ptr %__flags, align 4, !dbg !6878
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 432, i32 %18, i64 12) #15, !dbg !6878, !srcloc !6880
  br label %do.cond30, !dbg !6878

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6878

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6875

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6881

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6881

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6874
  br label %do.cond35, !dbg !6875

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6875

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6875

if.end37:                                         ; preds = %do.end36, %if.end
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !6873
  %tobool39 = icmp ne i32 %19, 0, !dbg !6873
  %lnot40 = xor i1 %tobool39, true, !dbg !6873
  %lnot42 = xor i1 %lnot40, true, !dbg !6873
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !6873
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !6873
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !6873
  store i64 %expval45, ptr %tmp38, align 8, !dbg !6874
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6883
  %20 = load i64, ptr %tmp38, align 8, !dbg !6873
  %tobool46 = icmp ne i64 %20, 0, !dbg !6883
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !6884

if.then47:                                        ; preds = %if.end37
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6885

if.end48:                                         ; preds = %if.end37
  %21 = load ptr, ptr %job, align 8, !dbg !6886
  %out_fence49 = getelementptr inbounds %struct.drm_writeback_job, ptr %21, i32 0, i32 5, !dbg !6887
  %22 = load ptr, ptr %out_fence49, align 8, !dbg !6887
  store ptr %22, ptr %out_fence, align 8, !dbg !6888
  %23 = load ptr, ptr %out_fence, align 8, !dbg !6889
  %tobool50 = icmp ne ptr %23, null, !dbg !6889
  br i1 %tobool50, label %if.then51, label %if.end57, !dbg !6891

if.then51:                                        ; preds = %if.end48
  %24 = load i32, ptr %status.addr, align 4, !dbg !6892
  %tobool52 = icmp ne i32 %24, 0, !dbg !6892
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !6895

if.then53:                                        ; preds = %if.then51
  %25 = load ptr, ptr %out_fence, align 8, !dbg !6896
  %26 = load i32, ptr %status.addr, align 4, !dbg !6897
  call void @dma_fence_set_error(ptr noundef %25, i32 noundef %26) #16, !dbg !6898
  br label %if.end54, !dbg !6898

if.end54:                                         ; preds = %if.then53, %if.then51
  %27 = load ptr, ptr %out_fence, align 8, !dbg !6899
  %call55 = call i32 @dma_fence_signal(ptr noundef %27) #16, !dbg !6900
  %28 = load ptr, ptr %out_fence, align 8, !dbg !6901
  call void @dma_fence_put(ptr noundef %28) #16, !dbg !6902
  %29 = load ptr, ptr %job, align 8, !dbg !6903
  %out_fence56 = getelementptr inbounds %struct.drm_writeback_job, ptr %29, i32 0, i32 5, !dbg !6904
  store ptr null, ptr %out_fence56, align 8, !dbg !6905
  br label %if.end57, !dbg !6906

if.end57:                                         ; preds = %if.end54, %if.end48
  br label %do.body58, !dbg !6907

do.body58:                                        ; preds = %if.end57
  br label %do.body59, !dbg !6908

do.body59:                                        ; preds = %do.body58
  %30 = load ptr, ptr %job, align 8, !dbg !6910
  %cleanup_work = getelementptr inbounds %struct.drm_writeback_job, ptr %30, i32 0, i32 2, !dbg !6910
  call void @__init_work(ptr noundef %cleanup_work, i32 noundef 0) #16, !dbg !6910
  %31 = load ptr, ptr %job, align 8, !dbg !6910
  %cleanup_work60 = getelementptr inbounds %struct.drm_writeback_job, ptr %31, i32 0, i32 2, !dbg !6910
  %data = getelementptr inbounds %struct.work_struct, ptr %cleanup_work60, i32 0, i32 0, !dbg !6910
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6910
  store i64 68719476704, ptr %counter, align 8, !dbg !6910
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6910
  %32 = load ptr, ptr %job, align 8, !dbg !6910
  %cleanup_work61 = getelementptr inbounds %struct.drm_writeback_job, ptr %32, i32 0, i32 2, !dbg !6910
  %entry62 = getelementptr inbounds %struct.work_struct, ptr %cleanup_work61, i32 0, i32 1, !dbg !6910
  call void @INIT_LIST_HEAD(ptr noundef %entry62) #16, !dbg !6910
  %33 = load ptr, ptr %job, align 8, !dbg !6910
  %cleanup_work63 = getelementptr inbounds %struct.drm_writeback_job, ptr %33, i32 0, i32 2, !dbg !6910
  %func = getelementptr inbounds %struct.work_struct, ptr %cleanup_work63, i32 0, i32 2, !dbg !6910
  store ptr @cleanup_work, ptr %func, align 8, !dbg !6910
  br label %do.cond64, !dbg !6910

do.cond64:                                        ; preds = %do.body59
  br label %do.end65, !dbg !6910

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !6908

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !6908

do.end67:                                         ; preds = %do.cond66
  %34 = load ptr, ptr @system_long_wq, align 8, !dbg !6912
  %35 = load ptr, ptr %job, align 8, !dbg !6913
  %cleanup_work68 = getelementptr inbounds %struct.drm_writeback_job, ptr %35, i32 0, i32 2, !dbg !6914
  %call69 = call zeroext i1 @queue_work(ptr noundef %34, ptr noundef %cleanup_work68) #16, !dbg !6915
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6916
  br label %cleanup, !dbg !6916

cleanup:                                          ; preds = %do.end67, %if.then47
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_fence) #15, !dbg !6916
  call void @llvm.lifetime.end.p0(i64 8, ptr %job) #15, !dbg !6916
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !6916
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6916

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !6917 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6919, metadata !DIExpression()), !dbg !6920
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6921
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !6922
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6923
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6924
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6925
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6926
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6927
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6928
  ret void, !dbg !6929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_set_error(ptr noundef %fence, i32 noundef %error) #3 align 16 !dbg !6930 {
entry:
  %fence.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on35 = alloca i32, align 4
  %__flags54 = alloca i32, align 4
  %tmp67 = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6934, metadata !DIExpression()), !dbg !6946
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6935, metadata !DIExpression()), !dbg !6947
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6948
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6936, metadata !DIExpression()), !dbg !6948
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6948
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !6948
  %1 = ptrtoint ptr %flags to i64, !dbg !6948
  %cmp = icmp ne i64 %1, 0, !dbg !6948
  %conv = zext i1 %cmp to i32, !dbg !6948
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6948
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !6948

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !6948
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !6948
  %4 = ptrtoint ptr %flags1 to i64, !dbg !6948
  %cmp2 = icmp ne i64 %4, 0, !dbg !6948
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6948

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !6948
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !6948
  %6 = load i64, ptr %flags5, align 8, !dbg !6948
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6948
  br i1 %7, label %cond.true, label %cond.false, !dbg !6948

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !6948
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !6948
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #16, !dbg !6948
  %conv7 = zext i1 %call to i32, !dbg !6948
  br label %cond.end, !dbg !6948

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !6948
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !6948
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #16, !dbg !6948
  %conv10 = zext i1 %call9 to i32, !dbg !6948
  br label %cond.end, !dbg !6948

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !6948
  %tobool = icmp ne i32 %cond, 0, !dbg !6948
  %lnot = xor i1 %tobool, true, !dbg !6948
  %lnot11 = xor i1 %lnot, true, !dbg !6948
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !6948
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6948
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6949
  %tobool12 = icmp ne i32 %10, 0, !dbg !6949
  %lnot13 = xor i1 %tobool12, true, !dbg !6949
  %lnot15 = xor i1 %lnot13, true, !dbg !6949
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !6949
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !6949
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !6949
  %tobool18 = icmp ne i64 %expval, 0, !dbg !6949
  br i1 %tobool18, label %if.then, label %if.end, !dbg !6948

if.then:                                          ; preds = %cond.end
  br label %do.body, !dbg !6949

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6938, metadata !DIExpression()), !dbg !6950
  store i32 2305, ptr %__flags, align 4, !dbg !6950
  br label %do.body19, !dbg !6950

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !6951

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !6951

do.end:                                           ; preds = %do.cond
  br label %do.body20, !dbg !6950

do.body20:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !6953
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 580, i32 %11, i64 12) #15, !dbg !6953, !srcloc !6955
  br label %do.cond21, !dbg !6953

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6953

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !6950

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !6956

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6956

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6949
  br label %do.cond26, !dbg !6950

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !6950

do.end27:                                         ; preds = %do.cond26
  br label %if.end, !dbg !6950

if.end:                                           ; preds = %do.end27, %cond.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6948
  %tobool28 = icmp ne i32 %12, 0, !dbg !6948
  %lnot29 = xor i1 %tobool28, true, !dbg !6948
  %lnot31 = xor i1 %lnot29, true, !dbg !6948
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !6948
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !6948
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !6948
  store i64 %expval34, ptr %tmp, align 8, !dbg !6949
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6958
  %13 = load i64, ptr %tmp, align 8, !dbg !6948
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on35) #15, !dbg !6959
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on35, metadata !6941, metadata !DIExpression()), !dbg !6959
  %14 = load i32, ptr %error.addr, align 4, !dbg !6959
  %cmp36 = icmp sge i32 %14, 0, !dbg !6959
  br i1 %cmp36, label %lor.end, label %lor.rhs, !dbg !6959

lor.rhs:                                          ; preds = %if.end
  %15 = load i32, ptr %error.addr, align 4, !dbg !6959
  %cmp38 = icmp slt i32 %15, -4095, !dbg !6959
  br label %lor.end, !dbg !6959

lor.end:                                          ; preds = %lor.rhs, %if.end
  %16 = phi i1 [ true, %if.end ], [ %cmp38, %lor.rhs ]
  %lnot40 = xor i1 %16, true, !dbg !6959
  %lnot42 = xor i1 %lnot40, true, !dbg !6959
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !6959
  store i32 %lnot.ext43, ptr %__ret_warn_on35, align 4, !dbg !6959
  %17 = load i32, ptr %__ret_warn_on35, align 4, !dbg !6960
  %tobool44 = icmp ne i32 %17, 0, !dbg !6960
  %lnot45 = xor i1 %tobool44, true, !dbg !6960
  %lnot47 = xor i1 %lnot45, true, !dbg !6960
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !6960
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !6960
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !6960
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !6960
  br i1 %tobool51, label %if.then52, label %if.end66, !dbg !6959

if.then52:                                        ; preds = %lor.end
  br label %do.body53, !dbg !6960

do.body53:                                        ; preds = %if.then52
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags54) #15, !dbg !6961
  call void @llvm.dbg.declare(metadata ptr %__flags54, metadata !6943, metadata !DIExpression()), !dbg !6961
  store i32 2305, ptr %__flags54, align 4, !dbg !6961
  br label %do.body55, !dbg !6961

do.body55:                                        ; preds = %do.body53
  br label %do.cond56, !dbg !6962

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6962

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !6961

do.body58:                                        ; preds = %do.end57
  %18 = load i32, ptr %__flags54, align 4, !dbg !6964
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 581, i32 %18, i64 12) #15, !dbg !6964, !srcloc !6966
  br label %do.cond59, !dbg !6964

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !6964

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !6961

do.body61:                                        ; preds = %do.end60
  br label %do.cond62, !dbg !6967

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !6967

do.end63:                                         ; preds = %do.cond62
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags54) #15, !dbg !6960
  br label %do.cond64, !dbg !6961

do.cond64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !6961

do.end65:                                         ; preds = %do.cond64
  br label %if.end66, !dbg !6961

if.end66:                                         ; preds = %do.end65, %lor.end
  %19 = load i32, ptr %__ret_warn_on35, align 4, !dbg !6959
  %tobool68 = icmp ne i32 %19, 0, !dbg !6959
  %lnot69 = xor i1 %tobool68, true, !dbg !6959
  %lnot71 = xor i1 %lnot69, true, !dbg !6959
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !6959
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !6959
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !6959
  store i64 %expval74, ptr %tmp67, align 8, !dbg !6960
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on35) #15, !dbg !6969
  %20 = load i64, ptr %tmp67, align 8, !dbg !6959
  %21 = load i32, ptr %error.addr, align 4, !dbg !6970
  %22 = load ptr, ptr %fence.addr, align 8, !dbg !6971
  %error75 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 7, !dbg !6972
  store i32 %21, ptr %error75, align 4, !dbg !6973
  ret void, !dbg !6974
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6975 dso_local i32 @dma_fence_signal(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !6978 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6982, metadata !DIExpression()), !dbg !6984
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6983, metadata !DIExpression()), !dbg !6985
  ret void, !dbg !6986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cleanup_work(ptr noundef %work) #0 align 16 !dbg !6987 {
entry:
  %work.addr = alloca ptr, align 8
  %job = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6989, metadata !DIExpression()), !dbg !6993
  call void @llvm.lifetime.start.p0(i64 8, ptr %job) #15, !dbg !6994
  call void @llvm.dbg.declare(metadata ptr %job, metadata !6990, metadata !DIExpression()), !dbg !6995
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6996
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6991, metadata !DIExpression()), !dbg !6996
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6996
  store ptr %0, ptr %__mptr, align 8, !dbg !6996
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6996
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !6996
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6996
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6997
  %2 = load ptr, ptr %tmp, align 8, !dbg !6996
  store ptr %2, ptr %job, align 8, !dbg !6995
  %3 = load ptr, ptr %job, align 8, !dbg !6998
  call void @drm_writeback_cleanup_job(ptr noundef %3) #16, !dbg !6999
  call void @llvm.lifetime.end.p0(i64 8, ptr %job) #15, !dbg !7000
  ret void, !dbg !7000
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #3 align 16 !dbg !7001 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !7005, metadata !DIExpression()), !dbg !7007
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7006, metadata !DIExpression()), !dbg !7008
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !7009
  %1 = load ptr, ptr %work.addr, align 8, !dbg !7010
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #16, !dbg !7011
  ret i1 %call, !dbg !7012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_writeback_get_out_fence(ptr noundef %wb_connector) #0 align 16 !dbg !7013 {
entry:
  %retval = alloca ptr, align 8
  %wb_connector.addr = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wb_connector, ptr %wb_connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wb_connector.addr, metadata !7017, metadata !DIExpression()), !dbg !7025
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #15, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !7018, metadata !DIExpression()), !dbg !7027
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7019, metadata !DIExpression()), !dbg !7028
  %0 = load ptr, ptr %wb_connector.addr, align 8, !dbg !7028
  %base = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 0, !dbg !7028
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %base, i32 0, i32 10, !dbg !7028
  %1 = load i32, ptr %connector_type, align 4, !dbg !7028
  %cmp = icmp ne i32 %1, 18, !dbg !7028
  %lnot = xor i1 %cmp, true, !dbg !7028
  %lnot1 = xor i1 %lnot, true, !dbg !7028
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7028
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7028
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !7029
  %tobool = icmp ne i32 %2, 0, !dbg !7029
  %lnot2 = xor i1 %tobool, true, !dbg !7029
  %lnot4 = xor i1 %lnot2, true, !dbg !7029
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !7029
  %conv = sext i32 %lnot.ext5 to i64, !dbg !7029
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7029
  %tobool6 = icmp ne i64 %expval, 0, !dbg !7029
  br i1 %tobool6, label %if.then, label %if.end, !dbg !7028

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7029

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !7030
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7022, metadata !DIExpression()), !dbg !7030
  store i32 2305, ptr %__flags, align 4, !dbg !7030
  br label %do.body7, !dbg !7030

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !7031

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !7031

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !7030

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !7033
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 455, i32 %3, i64 12) #15, !dbg !7033, !srcloc !7035
  br label %do.cond9, !dbg !7033

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7033

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !7030

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !7036

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7036

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !7029
  br label %do.cond14, !dbg !7030

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !7030

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !7030

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !7028
  %tobool16 = icmp ne i32 %4, 0, !dbg !7028
  %lnot17 = xor i1 %tobool16, true, !dbg !7028
  %lnot19 = xor i1 %lnot17, true, !dbg !7028
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !7028
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !7028
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !7028
  store i64 %expval22, ptr %tmp, align 8, !dbg !7029
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !7038
  %5 = load i64, ptr %tmp, align 8, !dbg !7028
  %tobool23 = icmp ne i64 %5, 0, !dbg !7038
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !7039

if.then24:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !7040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7040

if.end25:                                         ; preds = %if.end
  %call = call noalias ptr @kzalloc(i64 noundef 64, i32 noundef 3264) #17, !dbg !7041
  store ptr %call, ptr %fence, align 8, !dbg !7042
  %6 = load ptr, ptr %fence, align 8, !dbg !7043
  %tobool26 = icmp ne ptr %6, null, !dbg !7043
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !7045

if.then27:                                        ; preds = %if.end25
  store ptr null, ptr %retval, align 8, !dbg !7046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7046

if.end28:                                         ; preds = %if.end25
  %7 = load ptr, ptr %fence, align 8, !dbg !7047
  %8 = load ptr, ptr %wb_connector.addr, align 8, !dbg !7048
  %fence_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %8, i32 0, i32 6, !dbg !7049
  %9 = load ptr, ptr %wb_connector.addr, align 8, !dbg !7050
  %fence_context = getelementptr inbounds %struct.drm_writeback_connector, ptr %9, i32 0, i32 5, !dbg !7051
  %10 = load i32, ptr %fence_context, align 8, !dbg !7051
  %conv29 = zext i32 %10 to i64, !dbg !7050
  %11 = load ptr, ptr %wb_connector.addr, align 8, !dbg !7052
  %fence_seqno = getelementptr inbounds %struct.drm_writeback_connector, ptr %11, i32 0, i32 7, !dbg !7053
  %12 = load i64, ptr %fence_seqno, align 8, !dbg !7054
  %inc = add i64 %12, 1, !dbg !7054
  store i64 %inc, ptr %fence_seqno, align 8, !dbg !7054
  call void @dma_fence_init(ptr noundef %7, ptr noundef @drm_writeback_fence_ops, ptr noundef %fence_lock, i64 noundef %conv29, i64 noundef %inc) #16, !dbg !7055
  %13 = load ptr, ptr %fence, align 8, !dbg !7056
  store ptr %13, ptr %retval, align 8, !dbg !7057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7057

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #15, !dbg !7058
  %14 = load ptr, ptr %retval, align 8, !dbg !7058
  ret ptr %14, !dbg !7058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7059 dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7062 dso_local ptr @drm_property_create_object(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7065 dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7068 dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !7071 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7073, metadata !DIExpression()), !dbg !7078
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7074, metadata !DIExpression()), !dbg !7079
  %0 = load i64, ptr %size.addr, align 8, !dbg !7080
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7081
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7082

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7083
  %tobool = icmp ne i64 %2, 0, !dbg !7083
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7084

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !7085
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7075, metadata !DIExpression()), !dbg !7086
  %3 = load i64, ptr %size.addr, align 8, !dbg !7087
  %cmp = icmp ugt i64 %3, 8192, !dbg !7089
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7090

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7091
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7092
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !7093
  store ptr %call, ptr %retval, align 8, !dbg !7094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7094

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7095
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !7095
  store i32 %call2, ptr %index, align 4, !dbg !7096
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7097
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7098
  %9 = ptrtoint ptr %8 to i64, !dbg !7098
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !7099
  %idxprom = zext i32 %call3 to i64, !dbg !7100
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7100
  %10 = load i32, ptr %index, align 4, !dbg !7101
  %idxprom4 = zext i32 %10 to i64, !dbg !7100
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7100
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7100
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7102
  %13 = load i64, ptr %size.addr, align 8, !dbg !7103
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !7104
  store ptr %call6, ptr %retval, align 8, !dbg !7105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7105

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !7106
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7107
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7108
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !7109
  store ptr %call8, ptr %retval, align 8, !dbg !7110
  br label %return, !dbg !7110

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7111
  ret ptr %16, !dbg !7111
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7112 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !7113 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7117, metadata !DIExpression()), !dbg !7119
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7118, metadata !DIExpression()), !dbg !7120
  %0 = load i64, ptr %size.addr, align 8, !dbg !7121
  %tobool = icmp ne i64 %0, 0, !dbg !7121
  br i1 %tobool, label %if.end, label %if.then, !dbg !7123

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7124
  br label %return, !dbg !7124

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7125
  %cmp = icmp ule i64 %1, 8, !dbg !7127
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7128

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7129
  br label %return, !dbg !7129

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7130
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7132
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7133

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7134
  %cmp4 = icmp ule i64 %3, 96, !dbg !7135
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7136

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7137
  br label %return, !dbg !7137

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7138
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7140
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7141

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7142
  %cmp9 = icmp ule i64 %5, 192, !dbg !7143
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7144

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7145
  br label %return, !dbg !7145

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7146
  %cmp12 = icmp ule i64 %6, 8, !dbg !7148
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7149

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7150
  br label %return, !dbg !7150

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7151
  %cmp15 = icmp ule i64 %7, 16, !dbg !7153
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7154

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7155
  br label %return, !dbg !7155

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7156
  %cmp18 = icmp ule i64 %8, 32, !dbg !7158
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7159

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7160
  br label %return, !dbg !7160

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7161
  %cmp21 = icmp ule i64 %9, 64, !dbg !7163
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7164

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7165
  br label %return, !dbg !7165

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7166
  %cmp24 = icmp ule i64 %10, 128, !dbg !7168
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7169

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7170
  br label %return, !dbg !7170

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7171
  %cmp27 = icmp ule i64 %11, 256, !dbg !7173
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7174

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7175
  br label %return, !dbg !7175

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7176
  %cmp30 = icmp ule i64 %12, 512, !dbg !7178
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7179

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7180
  br label %return, !dbg !7180

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7181
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7183
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7184

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7185
  br label %return, !dbg !7185

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7186
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7188
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7189

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7190
  br label %return, !dbg !7190

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7191
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7193
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7194

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7195
  br label %return, !dbg !7195

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7196
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7198
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7199

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7200
  br label %return, !dbg !7200

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7201
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7203
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7204

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7205
  br label %return, !dbg !7205

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7206
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7208
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7209

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7210
  br label %return, !dbg !7210

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7211
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7213
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7214

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7215
  br label %return, !dbg !7215

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7216
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7218
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7219

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7220
  br label %return, !dbg !7220

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7221
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7223
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7224

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7225
  br label %return, !dbg !7225

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7226
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7228
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7229

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7230
  br label %return, !dbg !7230

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7231
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7233
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7234

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7235
  br label %return, !dbg !7235

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7236
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7238
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7239

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7240
  br label %return, !dbg !7240

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7241, !range !6795, !noundef !1128
  %tobool69 = trunc i8 %25 to i1, !dbg !7241
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7243

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7244

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_236() #19, !dbg !7245, !srcloc !7248
  unreachable, !dbg !7245

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7249

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7250

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7251

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7253

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7251

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #15, !dbg !7255, !srcloc !7257
  br label %do.end75, !dbg !7255

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7251

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7258
  br label %return, !dbg !7258

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7259
  ret i32 %26, !dbg !7259
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7260 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !7263 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7267, metadata !DIExpression()), !dbg !7269
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7268, metadata !DIExpression()), !dbg !7270
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7271
  %and = and i32 %0, 17, !dbg !7271
  %cmp = icmp eq i32 %and, 0, !dbg !7271
  %lnot = xor i1 %cmp, true, !dbg !7271
  %lnot1 = xor i1 %lnot, true, !dbg !7271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7271
  %conv = sext i32 %lnot.ext to i64, !dbg !7271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7271
  %tobool = icmp ne i64 %expval, 0, !dbg !7271
  br i1 %tobool, label %if.then, label %if.end, !dbg !7273

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7274
  br label %return, !dbg !7274

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7275
  %and2 = and i32 %1, 1, !dbg !7277
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7277
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7278

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7279
  br label %return, !dbg !7279

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7280
  br label %return, !dbg !7280

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7282
  ret i32 %2, !dbg !7282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7283 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7284 dso_local void @__compiletime_assert_236() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_framebuffer_get(ptr noundef %fb) #3 align 16 !dbg !7285 {
entry:
  %fb.addr = alloca ptr, align 8
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !7287, metadata !DIExpression()), !dbg !7288
  %0 = load ptr, ptr %fb.addr, align 8, !dbg !7289
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2, !dbg !7290
  call void @drm_mode_object_get(ptr noundef %base) #16, !dbg !7291
  ret void, !dbg !7292
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7293 dso_local void @drm_mode_object_get(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7296 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7300, metadata !DIExpression()), !dbg !7303
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7301, metadata !DIExpression()), !dbg !7304
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7302, metadata !DIExpression()), !dbg !7305
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7306
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7308
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7309
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !7310
  br i1 %call, label %if.end, label %if.then, !dbg !7311

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7312

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7313
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7314
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7315
  store ptr %3, ptr %prev1, align 8, !dbg !7316
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7317
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7318
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7319
  store ptr %5, ptr %next2, align 8, !dbg !7320
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7321
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7322
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7323
  store ptr %7, ptr %prev3, align 8, !dbg !7324
  br label %do.body, !dbg !7325

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7326

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7328

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7326

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7330
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7330
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7330
  store volatile ptr %9, ptr %next6, align 8, !dbg !7330
  br label %do.end7, !dbg !7330

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7326

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7333 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7337, metadata !DIExpression()), !dbg !7340
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7338, metadata !DIExpression()), !dbg !7341
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7339, metadata !DIExpression()), !dbg !7342
  ret i1 true, !dbg !7343
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7344 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7347 dso_local void @drm_mode_object_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #3 align 16 !dbg !7348 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !7352, metadata !DIExpression()), !dbg !7354
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !7353, metadata !DIExpression()), !dbg !7355
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !7356
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !7358
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #16, !dbg !7359
  br i1 %call, label %if.then, label %if.end, !dbg !7360

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !7361
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !7363
  call void %1(ptr noundef %2) #16, !dbg !7361
  store i32 1, ptr %retval, align 4, !dbg !7364
  br label %return, !dbg !7364

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7365
  br label %return, !dbg !7365

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !7366
  ret i32 %3, !dbg !7366
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !7367 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7372, metadata !DIExpression()), !dbg !7373
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7374
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #16, !dbg !7375
  ret i1 %call, !dbg !7376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7377 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7381, metadata !DIExpression()), !dbg !7383
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7382, metadata !DIExpression()), !dbg !7384
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7385
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7386
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !7387
  ret i1 %call, !dbg !7388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7389 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7393, metadata !DIExpression()), !dbg !7397
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7394, metadata !DIExpression()), !dbg !7398
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7395, metadata !DIExpression()), !dbg !7399
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !7400
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7396, metadata !DIExpression()), !dbg !7401
  %0 = load i32, ptr %i.addr, align 4, !dbg !7402
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7403
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7404
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #16, !dbg !7405
  store i32 %call, ptr %old, align 4, !dbg !7401
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7406
  %tobool = icmp ne ptr %2, null, !dbg !7406
  br i1 %tobool, label %if.then, label %if.end, !dbg !7408

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7409
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7410
  store i32 %3, ptr %4, align 4, !dbg !7411
  br label %if.end, !dbg !7412

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7413
  %6 = load i32, ptr %i.addr, align 4, !dbg !7415
  %cmp = icmp eq i32 %5, %6, !dbg !7416
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7417

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7418

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7420

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7422

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7422

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7420

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7424

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7426

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7426

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7424, !srcloc !7428
  br label %do.cond7, !dbg !7424

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7424

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7420

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7420

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7429

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7430
  %cmp12 = icmp slt i32 %7, 0, !dbg !7430
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7430

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7430
  %9 = load i32, ptr %i.addr, align 4, !dbg !7430
  %sub = sub i32 %8, %9, !dbg !7430
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7430
  br label %lor.end, !dbg !7430

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7430
  %lnot14 = xor i1 %lnot, true, !dbg !7430
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7430
  %conv = sext i32 %lnot.ext to i64, !dbg !7430
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7430
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7430
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7432

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7433
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16, !dbg !7434
  br label %if.end17, !dbg !7434

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7435

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !7436
  %12 = load i1, ptr %retval, align 1, !dbg !7436
  ret i1 %12, !dbg !7436
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7437 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7443, metadata !DIExpression()), !dbg !7445
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7444, metadata !DIExpression()), !dbg !7446
  br label %do.body, !dbg !7447

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7448

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7450
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !7451
  %1 = load i32, ptr %i.addr, align 4, !dbg !7452
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7453
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #16, !dbg !7454
  ret i32 %call, !dbg !7455
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7456 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7459 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7467, metadata !DIExpression()), !dbg !7469
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7468, metadata !DIExpression()), !dbg !7470
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7471
  %1 = load i64, ptr %size.addr, align 8, !dbg !7472
  %conv = trunc i64 %1 to i32, !dbg !7472
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !7473
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7474
  %3 = load i64, ptr %size.addr, align 8, !dbg !7474
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !7474
  ret void, !dbg !7475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7476 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7479, metadata !DIExpression()), !dbg !7481
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7480, metadata !DIExpression()), !dbg !7482
  %0 = load i32, ptr %i.addr, align 4, !dbg !7483
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7484
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #16, !dbg !7485
  ret i32 %call, !dbg !7486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7487 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7492, metadata !DIExpression()), !dbg !7494
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7493, metadata !DIExpression()), !dbg !7495
  ret i1 true, !dbg !7496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7497 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7502, metadata !DIExpression()), !dbg !7505
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7503, metadata !DIExpression()), !dbg !7506
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7504, metadata !DIExpression()), !dbg !7507
  ret void, !dbg !7508
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7509 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7512, metadata !DIExpression()), !dbg !7516
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7513, metadata !DIExpression()), !dbg !7517
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !7518
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7514, metadata !DIExpression()), !dbg !7518
  %0 = load i32, ptr %i.addr, align 4, !dbg !7518
  %sub = sub i32 0, %0, !dbg !7518
  store i32 %sub, ptr %__ret, align 4, !dbg !7518
  %1 = load i32, ptr %__ret, align 4, !dbg !7518
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7518
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7518
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !7518, !srcloc !7519
  store i32 %3, ptr %__ret, align 4, !dbg !7518
  %4 = load i32, ptr %__ret, align 4, !dbg !7518
  store i32 %4, ptr %tmp, align 4, !dbg !7518
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !7520
  %5 = load i32, ptr %tmp, align 4, !dbg !7518
  ret i32 %5, !dbg !7521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !7522 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7524, metadata !DIExpression()), !dbg !7525
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7526
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !7528
  br i1 %call, label %if.end, label %if.then, !dbg !7529

if.then:                                          ; preds = %entry
  br label %return, !dbg !7530

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7531
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7532
  %2 = load ptr, ptr %prev, align 8, !dbg !7532
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7533
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7534
  %4 = load ptr, ptr %next, align 8, !dbg !7534
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !7535
  br label %return, !dbg !7536

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !7537 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7541, metadata !DIExpression()), !dbg !7542
  ret i1 true, !dbg !7543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7544 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7546, metadata !DIExpression()), !dbg !7548
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7547, metadata !DIExpression()), !dbg !7549
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7550
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7551
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7552
  store ptr %0, ptr %prev1, align 8, !dbg !7553
  br label %do.body, !dbg !7554

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7555

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7557

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7555

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7559
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7559
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7559
  store volatile ptr %2, ptr %next4, align 8, !dbg !7559
  br label %do.end5, !dbg !7559

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7555

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7561
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7562 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7570, metadata !DIExpression()), !dbg !7575
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7571, metadata !DIExpression()), !dbg !7576
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !7577
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7572, metadata !DIExpression()), !dbg !7578
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7579
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7580
  %div = udiv i64 %1, 64, !dbg !7580
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7581
  store ptr %add.ptr, ptr %p, align 8, !dbg !7578
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !7582
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7573, metadata !DIExpression()), !dbg !7583
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7584
  %rem = urem i64 %2, 64, !dbg !7584
  %shl = shl i64 1, %rem, !dbg !7584
  store i64 %shl, ptr %mask, align 8, !dbg !7583
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !7585
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7574, metadata !DIExpression()), !dbg !7586
  %3 = load ptr, ptr %p, align 8, !dbg !7587
  %4 = load i64, ptr %3, align 8, !dbg !7588
  store i64 %4, ptr %val, align 8, !dbg !7586
  %5 = load i64, ptr %val, align 8, !dbg !7589
  %6 = load i64, ptr %mask, align 8, !dbg !7590
  %and = and i64 %5, %6, !dbg !7591
  %tobool = icmp ne i64 %and, 0, !dbg !7592
  %lnot = xor i1 %tobool, true, !dbg !7592
  %lnot1 = xor i1 %lnot, true, !dbg !7593
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !7594
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !7594
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !7594
  ret i1 %lnot1, !dbg !7595
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7596 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7599, metadata !DIExpression()), !dbg !7601
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7600, metadata !DIExpression()), !dbg !7602
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7603
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7604
  %div = udiv i64 %1, 64, !dbg !7604
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7605
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !7606
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7607
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7608
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !7609
  ret i1 %call, !dbg !7610
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7611 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7613, metadata !DIExpression()), !dbg !7615
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7614, metadata !DIExpression()), !dbg !7616
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7617
  %1 = load i64, ptr %size.addr, align 8, !dbg !7618
  %conv = trunc i64 %1 to i32, !dbg !7618
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !7619
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7620
  %3 = load i64, ptr %size.addr, align 8, !dbg !7620
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !7620
  ret void, !dbg !7621
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7622 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7625, metadata !DIExpression()), !dbg !7627
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7626, metadata !DIExpression()), !dbg !7628
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7629
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7630
  br i1 %1, label %cond.true, label %cond.false, !dbg !7630

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7631
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7632
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !7633
  %conv = zext i1 %call to i32, !dbg !7633
  br label %cond.end, !dbg !7630

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7634
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7635
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !7636
  %conv2 = zext i1 %call1 to i32, !dbg !7636
  br label %cond.end, !dbg !7630

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7630
  %tobool = icmp ne i32 %cond, 0, !dbg !7630
  ret i1 %tobool, !dbg !7637
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7638 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7640, metadata !DIExpression()), !dbg !7642
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7641, metadata !DIExpression()), !dbg !7643
  ret i1 true, !dbg !7644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7645 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7649, metadata !DIExpression()), !dbg !7651
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7650, metadata !DIExpression()), !dbg !7652
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7653
  %and = and i64 %0, 63, !dbg !7654
  %shl = shl i64 1, %and, !dbg !7655
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7656
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7657
  %shr = ashr i64 %2, 6, !dbg !7658
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7656
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7656
  %and1 = and i64 %shl, %3, !dbg !7659
  %cmp = icmp ne i64 %and1, 0, !dbg !7660
  ret i1 %cmp, !dbg !7661
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7662 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7664, metadata !DIExpression()), !dbg !7667
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7665, metadata !DIExpression()), !dbg !7668
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !7669
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7666, metadata !DIExpression()), !dbg !7670
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7671
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7672
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !7673, !srcloc !7674
  %3 = icmp ult i8 %2, 2, !dbg !7673
  call void @llvm.assume(i1 %3), !dbg !7673
  store i8 %2, ptr %oldbit, align 1, !dbg !7673
  %4 = load i8, ptr %oldbit, align 1, !dbg !7675, !range !6795, !noundef !1128
  %tobool = trunc i8 %4 to i1, !dbg !7675
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !7676
  ret i1 %tobool, !dbg !7677
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7678 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_writeback_fence_get_driver_name(ptr noundef %fence) #0 align 16 !dbg !7681 {
entry:
  %fence.addr = alloca ptr, align 8
  %wb_connector = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !7683, metadata !DIExpression()), !dbg !7687
  call void @llvm.lifetime.start.p0(i64 8, ptr %wb_connector) #15, !dbg !7688
  call void @llvm.dbg.declare(metadata ptr %wb_connector, metadata !7684, metadata !DIExpression()), !dbg !7689
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7690
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7685, metadata !DIExpression()), !dbg !7690
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !7690
  %lock = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 0, !dbg !7690
  %1 = load ptr, ptr %lock, align 8, !dbg !7690
  store ptr %1, ptr %__mptr, align 8, !dbg !7690
  %2 = load ptr, ptr %__mptr, align 8, !dbg !7690
  %add.ptr = getelementptr i8, ptr %2, i64 -1516, !dbg !7690
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7691
  %3 = load ptr, ptr %tmp, align 8, !dbg !7690
  store ptr %3, ptr %wb_connector, align 8, !dbg !7689
  %4 = load ptr, ptr %wb_connector, align 8, !dbg !7692
  %base = getelementptr inbounds %struct.drm_writeback_connector, ptr %4, i32 0, i32 0, !dbg !7693
  %dev = getelementptr inbounds %struct.drm_connector, ptr %base, i32 0, i32 0, !dbg !7694
  %5 = load ptr, ptr %dev, align 8, !dbg !7694
  %driver = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4, !dbg !7695
  %6 = load ptr, ptr %driver, align 8, !dbg !7695
  %name = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 20, !dbg !7696
  %7 = load ptr, ptr %name, align 8, !dbg !7696
  call void @llvm.lifetime.end.p0(i64 8, ptr %wb_connector) #15, !dbg !7697
  ret ptr %7, !dbg !7698
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_writeback_fence_get_timeline_name(ptr noundef %fence) #0 align 16 !dbg !7699 {
entry:
  %fence.addr = alloca ptr, align 8
  %wb_connector = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !7701, metadata !DIExpression()), !dbg !7705
  call void @llvm.lifetime.start.p0(i64 8, ptr %wb_connector) #15, !dbg !7706
  call void @llvm.dbg.declare(metadata ptr %wb_connector, metadata !7702, metadata !DIExpression()), !dbg !7707
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7708
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7703, metadata !DIExpression()), !dbg !7708
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !7708
  %lock = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 0, !dbg !7708
  %1 = load ptr, ptr %lock, align 8, !dbg !7708
  store ptr %1, ptr %__mptr, align 8, !dbg !7708
  %2 = load ptr, ptr %__mptr, align 8, !dbg !7708
  %add.ptr = getelementptr i8, ptr %2, i64 -1516, !dbg !7708
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7709
  %3 = load ptr, ptr %tmp, align 8, !dbg !7708
  store ptr %3, ptr %wb_connector, align 8, !dbg !7707
  %4 = load ptr, ptr %wb_connector, align 8, !dbg !7710
  %timeline_name = getelementptr inbounds %struct.drm_writeback_connector, ptr %4, i32 0, i32 8, !dbg !7711
  %arraydecay = getelementptr inbounds [32 x i8], ptr %timeline_name, i64 0, i64 0, !dbg !7710
  call void @llvm.lifetime.end.p0(i64 8, ptr %wb_connector) #15, !dbg !7712
  ret ptr %arraydecay, !dbg !7713
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_writeback_fence_enable_signaling(ptr noundef %fence) #0 align 16 !dbg !7714 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !7716, metadata !DIExpression()), !dbg !7717
  ret i1 true, !dbg !7718
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6202, !6203, !6204, !6205, !6206, !6207, !6208, !6209}
!llvm.ident = !{!6210}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "drm_writeback_encoder_funcs", scope: !2, file: !3, line: 149, type: !5851, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_writeback.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_writeback\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_writeback.ll drivers/gpu/drm/drm_writeback.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !371, globals: !6137, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_writeback.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee1e102f59354c4f94c56592724d4b32")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !184, !193, !200, !206, !211, !219, !226, !231, !236, !241, !246, !250, !266, !286, !292, !298, !305, !315, !320, !346, !356, !364}
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
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !194, line: 30, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!195 = !{!196, !197, !198, !199}
!196 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!197 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!198 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!199 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !201, line: 98, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!204 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!205 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !201, line: 63, baseType: !7, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "connector_status_connected", value: 1)
!209 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!210 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !201, line: 137, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!214 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!215 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!216 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!217 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!218 = !DIEnumerator(name: "SubPixelNone", value: 5)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !220, line: 78, baseType: !7, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!221 = !{!222, !223, !224, !225}
!222 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!223 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!224 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!225 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !220, line: 85, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!229 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!230 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !232, line: 38, baseType: !7, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!233 = !{!234, !235}
!234 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!235 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !232, line: 563, baseType: !7, size: 32, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!239 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!240 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_set_atomic", file: !242, line: 54, baseType: !7, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/drm/drm_modeset_helper_vtables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c76c951af964ace4726c40f2de2c86a8")
!243 = !{!244, !245}
!244 = !DIEnumerator(name: "LEAVE_ATOMIC_MODE_SET", value: 0)
!245 = !DIEnumerator(name: "ENTER_ATOMIC_MODE_SET", value: 1)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !201, line: 337, baseType: !7, size: 32, elements: !247)
!247 = !{!248, !249}
!248 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!249 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !251, line: 387, baseType: !7, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!253 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!254 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!255 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!256 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!257 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!258 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!259 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!260 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!261 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!262 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!263 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!264 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!265 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !201, line: 502, baseType: !7, size: 32, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!268 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!269 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!270 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!271 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!272 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!273 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!274 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!275 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!276 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!277 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!278 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!279 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!280 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!281 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!282 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!283 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!284 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!285 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !201, line: 421, baseType: !7, size: 32, elements: !287)
!287 = !{!288, !289, !290, !291}
!288 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!289 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!290 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!291 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !201, line: 50, baseType: !7, size: 32, elements: !293)
!293 = !{!294, !295, !296, !297}
!294 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!295 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!296 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!297 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !201, line: 363, baseType: !109, size: 32, elements: !299)
!299 = !{!300, !301, !302, !303, !304}
!300 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!301 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!302 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!303 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!304 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !201, line: 156, baseType: !7, size: 32, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314}
!307 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!308 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!309 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!310 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!311 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!312 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!313 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!314 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !316, line: 10, baseType: !7, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!317 = !{!318, !319}
!318 = !DIEnumerator(name: "false", value: 0)
!319 = !DIEnumerator(name: "true", value: 1)
!320 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !321, line: 30, baseType: !7, size: 32, elements: !322)
!321 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!323 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!324 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!325 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!326 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!327 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!328 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!329 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!330 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!331 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!332 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!333 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!334 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!335 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!336 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!337 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!338 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!339 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!340 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!341 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!342 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!343 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!344 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!345 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !347, line: 364, baseType: !7, size: 32, elements: !348)
!347 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!348 = !{!349, !350, !351, !352, !353, !354, !355}
!349 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!350 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!351 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!352 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!353 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!354 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!355 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !357, line: 119, baseType: !7, size: 32, elements: !358)
!357 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!358 = !{!359, !360, !361, !362, !363}
!359 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!360 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!361 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!362 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!363 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !365, line: 98, baseType: !7, size: 32, elements: !366)
!365 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!366 = !{!367, !368, !369, !370}
!367 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0)
!368 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1)
!369 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2)
!370 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3)
!371 = !{!372, !373, !375, !383, !549, !652, !535, !6134, !388, !6135, !6136, !1190}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !374, line: 154, baseType: !7)
!374 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !374, line: 190, size: 128, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !374, line: 191, baseType: !378, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !379, file: !374, line: 191, baseType: !378, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !385, line: 92, size: 704, elements: !386)
!385 = !DIFile(filename: "./include/drm/drm_writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d42aca196112ef0ada966c3d778d0e1c")
!386 = !{!387, !6128, !6129, !6130, !6131, !6132, !6133}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !384, file: !385, line: 98, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_connector", file: !385, line: 21, size: 12480, elements: !390)
!390 = !{!391, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !389, file: !385, line: 25, baseType: !392, size: 10880)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !201, line: 1494, size: 10880, elements: !393)
!393 = !{!394, !5242, !5243, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5344, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5974, !5986, !5987, !5988, !5990, !5991, !6036, !6058, !6059, !6063, !6064, !6065, !6066, !6067, !6071, !6072, !6074, !6076, !6077, !6080, !6081, !6082, !6083, !6084, !6085, !6086, !6087, !6088, !6097, !6098, !6099, !6100, !6101, !6102, !6103, !6104, !6105}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !392, file: !201, line: 1496, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !194, line: 50, size: 12736, elements: !397)
!397 = !{!398, !399, !412, !4733, !4739, !4845, !4846, !4847, !4848, !4849, !4850, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !5228, !5229, !5230, !5233, !5236, !5237, !5240, !5241}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !396, file: !194, line: 52, baseType: !109, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !396, file: !194, line: 55, baseType: !400, size: 32, offset: 32)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !401, line: 19, size: 32, elements: !402)
!401 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !400, file: !401, line: 20, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !357, line: 113, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !357, line: 111, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !405, file: !357, line: 112, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !374, line: 174, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 172, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !409, file: !374, line: 173, baseType: !109, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !396, file: !194, line: 58, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !415)
!415 = !{!416, !4388, !4389, !4392, !4393, !4446, !4516, !4517, !4518, !4519, !4520, !4527, !4619, !4632, !4642, !4646, !4648, !4649, !4650, !4654, !4661, !4662, !4665, !4668, !4672, !4675, !4676, !4677, !4678, !4679, !4680, !4710, !4711, !4712, !4715, !4718, !4727, !4728, !4729, !4730, !4731, !4732}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !414, file: !94, line: 706, baseType: !417, size: 512)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !418, line: 64, size: 512, elements: !419)
!418 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!419 = !{!420, !424, !425, !427, !512, !4279, !4382, !4383, !4384, !4385, !4386, !4387}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !417, file: !418, line: 65, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !417, file: !418, line: 66, baseType: !379, size: 128, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !417, file: !418, line: 67, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !417, file: !418, line: 68, baseType: !428, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !418, line: 168, size: 768, elements: !430)
!430 = !{!431, !432, !471, !472}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !429, file: !418, line: 169, baseType: !379, size: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !429, file: !418, line: 170, baseType: !433, size: 32, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !434, line: 29, baseType: !435)
!434 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !434, line: 17, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !434, line: 18, baseType: !438, size: 32)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !434, line: 18, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !438, file: !434, line: 19, baseType: !441, size: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !442, line: 14, size: 32, elements: !443)
!442 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !441, file: !442, line: 15, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !446, line: 44, baseType: !447)
!446 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !446, line: 14, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !446, line: 15, baseType: !450, size: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !446, line: 15, size: 32, elements: !451)
!451 = !{!452, !453, !463}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !450, file: !446, line: 16, baseType: !408, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !446, line: 24, baseType: !454, size: 16)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !446, line: 24, size: 16, elements: !455)
!455 = !{!456, !462}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !454, file: !446, line: 25, baseType: !457, size: 8)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !458, line: 17, baseType: !459)
!458 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !460, line: 21, baseType: !461)
!460 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!461 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !454, file: !446, line: 26, baseType: !457, size: 8, offset: 8)
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !446, line: 28, baseType: !464, size: 32)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !446, line: 28, size: 32, elements: !465)
!465 = !{!466, !470}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !464, file: !446, line: 29, baseType: !467, size: 16)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !458, line: 19, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !460, line: 24, baseType: !469)
!469 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !464, file: !446, line: 30, baseType: !467, size: 16, offset: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !429, file: !418, line: 171, baseType: !417, size: 512, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !429, file: !418, line: 172, baseType: !473, size: 64, offset: 704)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !418, line: 133, size: 192, elements: !476)
!476 = !{!477, !484, !489}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !475, file: !418, line: 134, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!109, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !475, file: !418, line: 135, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!421, !482}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !475, file: !418, line: 136, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!109, !482, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !418, line: 125, size: 20736, elements: !496)
!496 = !{!497, !502, !506, !507, !511}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !495, file: !418, line: 126, baseType: !498, size: 192)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 192, elements: !500)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!500 = !{!501}
!501 = !DISubrange(count: 3)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !495, file: !418, line: 127, baseType: !503, size: 4096, offset: 192)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 4096, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !495, file: !418, line: 128, baseType: !109, size: 32, offset: 4288)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !495, file: !418, line: 129, baseType: !508, size: 16384, offset: 4320)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 16384, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 2048)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !495, file: !418, line: 130, baseType: !109, size: 32, offset: 20704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !417, file: !418, line: 69, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !418, line: 116, size: 384, elements: !516)
!516 = !{!517, !521, !550, !4241, !4269, !4273}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !515, file: !418, line: 117, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !426}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !515, file: !418, line: 118, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !525, line: 254, size: 128, elements: !526)
!525 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!526 = !{!527, !542}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !524, file: !525, line: 255, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !426, !536, !499}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !374, line: 66, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !533, line: 73, baseType: !534)
!533 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !533, line: 15, baseType: !535)
!535 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !525, line: 30, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !537, file: !525, line: 31, baseType: !421, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !537, file: !525, line: 32, baseType: !541, size: 16, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !374, line: 24, baseType: !469)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !524, file: !525, line: 256, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!531, !426, !536, !421, !546}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !374, line: 61, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !533, line: 72, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !533, line: 16, baseType: !549)
!549 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !515, file: !418, line: 119, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !525, line: 84, size: 320, elements: !555)
!555 = !{!556, !557, !561, !4237, !4239}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !525, line: 85, baseType: !421, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !554, file: !525, line: 86, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!541, !426, !536, !109}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !554, file: !525, line: 88, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!541, !426, !565, !109}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !525, line: 175, size: 512, elements: !567)
!567 = !{!568, !569, !570, !571, !4228, !4232, !4233}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !566, file: !525, line: 176, baseType: !537, size: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !566, file: !525, line: 177, baseType: !546, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !566, file: !525, line: 178, baseType: !372, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !566, file: !525, line: 179, baseType: !572, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !577)
!577 = !{!578, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4222, !4223, !4224, !4225, !4226, !4227}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !576, file: !14, line: 473, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !581)
!581 = !{!582, !583, !584, !592, !593, !600, !601, !604, !605, !4000, !4001, !4002, !4003, !4004, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4044, !4047, !4048, !4049, !4058, !4059, !4060, !4061}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !580, file: !14, line: 642, baseType: !541, size: 16)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !580, file: !14, line: 643, baseType: !469, size: 16, offset: 16)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !580, file: !14, line: 644, baseType: !585, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !586, line: 23, baseType: !587)
!586 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 21, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !587, file: !586, line: 22, baseType: !590, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !374, line: 37, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !533, line: 49, baseType: !7)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !580, file: !14, line: 645, baseType: !379, size: 128, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !580, file: !14, line: 646, baseType: !594, size: 32, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !586, line: 28, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 26, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !595, file: !586, line: 27, baseType: !598, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !374, line: 38, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !533, line: 50, baseType: !7)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !580, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !580, file: !14, line: 650, baseType: !602, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !580, file: !14, line: 651, baseType: !602, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !580, file: !14, line: 654, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !609)
!609 = !{!610, !3834, !3844, !3848, !3852, !3856, !3860, !3864, !3868, !3872, !3876, !3877, !3881, !3885, !3922, !3951, !3955, !3961, !3965, !3969, !3973, !3977, !3981, !3987, !3991}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !608, file: !14, line: 1967, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !579, !614, !7}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !616, line: 82, size: 1536, elements: !617)
!616 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!617 = !{!618, !619, !629, !637, !638, !658, !659, !663, !676, !3817, !3818, !3819, !3820, !3826, !3827, !3828}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !615, file: !616, line: 84, baseType: !7, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !615, file: !616, line: 85, baseType: !620, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !621, line: 275, baseType: !622)
!621 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !621, line: 275, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !622, file: !621, line: 275, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !621, line: 69, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !621, line: 64, size: 32, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !626, file: !621, line: 65, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !615, file: !616, line: 86, baseType: !630, size: 128, offset: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !631, line: 38, size: 128, elements: !632)
!631 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!632 = !{!633, !635}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !630, file: !631, line: 39, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !630, file: !631, line: 39, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !615, file: !616, line: 87, baseType: !614, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !615, file: !616, line: 88, baseType: !639, size: 128, offset: 256)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !616, line: 49, size: 128, elements: !640)
!640 = !{!641, !655}
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !616, line: 50, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !616, line: 50, size: 64, elements: !643)
!643 = !{!644, !651}
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !616, line: 51, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !642, file: !616, line: 51, size: 64, elements: !646)
!646 = !{!647, !650}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !645, file: !616, line: 52, baseType: !648, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !458, line: 21, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !460, line: 27, baseType: !7)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !645, file: !616, line: 52, baseType: !648, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !642, file: !616, line: 54, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !458, line: 23, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !460, line: 31, baseType: !654)
!654 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !639, file: !616, line: 56, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !615, file: !616, line: 89, baseType: !579, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !615, file: !616, line: 91, baseType: !660, size: 256, offset: 448)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 256, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !615, file: !616, line: 94, baseType: !664, size: 64, offset: 704)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !665, line: 25, size: 64, elements: !666)
!665 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 26, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 26, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !668, file: !665, line: 28, baseType: !653, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !665, line: 30, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !665, line: 30, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !665, line: 31, baseType: !433, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !665, line: 32, baseType: !109, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !615, file: !616, line: 95, baseType: !677, size: 64, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !616, line: 128, size: 1024, align: 512, elements: !680)
!680 = !{!681, !685, !686, !693, !699, !703, !707, !711, !712, !716, !720, !3807, !3811}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !679, file: !616, line: 129, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!109, !614, !7}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !679, file: !616, line: 130, baseType: !682, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !679, file: !616, line: 131, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!109, !690, !692}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !679, file: !616, line: 132, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!109, !690, !7, !421, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !679, file: !616, line: 134, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!109, !690}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !679, file: !616, line: 135, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!109, !614}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !679, file: !616, line: 136, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !614}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !679, file: !616, line: 137, baseType: !708, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !679, file: !616, line: 138, baseType: !713, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !614, !579}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !679, file: !616, line: 139, baseType: !717, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!499, !614, !499, !109}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !679, file: !616, line: 140, baseType: !721, size: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !3806}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !726, line: 70, size: 256, elements: !727)
!726 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!727 = !{!728, !729, !3802, !3803}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !725, file: !726, line: 71, baseType: !614, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !725, file: !726, line: 72, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !732)
!732 = !{!733, !734, !737, !738, !739, !743, !1222, !1361, !1401, !1491, !1495, !1496, !1497, !1498, !1499, !1508, !1509, !1510, !1511, !1516, !1520, !1521, !1524, !1527, !1530, !1533, !1534, !1535, !1576, !3735, !3736, !3737, !3738, !3739, !3740, !3743, !3745, !3752, !3753, !3754, !3755, !3756, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !731, file: !14, line: 1191, baseType: !379, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !731, file: !14, line: 1192, baseType: !735, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !374, line: 21, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !374, line: 18, baseType: !648)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !731, file: !14, line: 1193, baseType: !461, size: 8, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !731, file: !14, line: 1194, baseType: !549, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !731, file: !14, line: 1195, baseType: !740, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !374, line: 52, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !533, line: 88, baseType: !742)
!742 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !731, file: !14, line: 1196, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !746)
!746 = !{!747, !748, !749, !756, !760, !764, !768, !1207, !1208, !1212, !1214, !1215, !1216, !1218, !1219, !1220, !1221}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !745, file: !14, line: 2367, baseType: !421, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !745, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !745, file: !14, line: 2376, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!109, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !755, line: 32, flags: DIFlagFwdDecl)
!755 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !745, file: !14, line: 2377, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !745, file: !14, line: 2378, baseType: !761, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!614, !744, !109, !421, !372}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !745, file: !14, line: 2380, baseType: !765, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !730}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !745, file: !14, line: 2381, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !771)
!771 = !{!772, !773, !774, !778, !800, !826, !827, !828, !829, !833, !838, !839, !859, !915, !916, !917, !918, !919, !922, !923, !924, !932, !936, !963, !984, !985, !986, !987, !996, !1019, !1020, !1023, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1037, !1038, !1165, !1173, !1174, !1175, !1177, !1181, !1182, !1186, !1187, !1188, !1189, !1191, !1192, !1193, !1200, !1201, !1202, !1206}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !770, file: !6, line: 403, baseType: !5, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !770, file: !6, line: 406, baseType: !379, size: 128, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !770, file: !6, line: 409, baseType: !775, size: 448, offset: 192)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 448, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 56)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !770, file: !6, line: 417, baseType: !779, size: 768, offset: 640)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !780)
!780 = !{!781, !782, !783, !784, !787}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !779, file: !6, line: 46, baseType: !417, size: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !779, file: !6, line: 47, baseType: !769, size: 64, offset: 512)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !779, file: !6, line: 48, baseType: !426, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !779, file: !6, line: 49, baseType: !785, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !779, file: !6, line: 50, baseType: !788, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !790, line: 26, size: 256, elements: !791)
!790 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !789, file: !790, line: 27, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !789, file: !790, line: 28, baseType: !794, size: 192, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !795, line: 43, size: 192, elements: !796)
!795 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!796 = !{!797, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !795, line: 44, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !442, line: 23, baseType: !441)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !794, file: !795, line: 45, baseType: !379, size: 128, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !770, file: !6, line: 418, baseType: !801, size: 64, offset: 1408)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !803)
!803 = !{!804, !805, !810, !814, !818, !822}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !802, file: !6, line: 54, baseType: !537, size: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !802, file: !6, line: 55, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!531, !801, !809, !499}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !802, file: !6, line: 57, baseType: !811, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!531, !801, !809, !421, !546}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !802, file: !6, line: 59, baseType: !815, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !769, !421}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !802, file: !6, line: 60, baseType: !819, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!109, !769}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !802, file: !6, line: 61, baseType: !823, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !769}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !770, file: !6, line: 419, baseType: !421, size: 64, offset: 1472)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !770, file: !6, line: 420, baseType: !421, size: 64, offset: 1536)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !770, file: !6, line: 421, baseType: !426, size: 64, offset: 1600)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !770, file: !6, line: 424, baseType: !830, size: 64, offset: 1664)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !770, file: !6, line: 425, baseType: !834, size: 64, offset: 1728)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !458, line: 20, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !460, line: 26, baseType: !109)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !770, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !770, file: !6, line: 435, baseType: !840, size: 256, offset: 1856)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !841, line: 66, size: 256, elements: !842)
!841 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!842 = !{!843, !852, !853, !858}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !840, file: !841, line: 67, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !845, line: 13, baseType: !846)
!845 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !374, line: 181, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 179, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !847, file: !374, line: 180, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !458, line: 22, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !460, line: 30, baseType: !742)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !840, file: !841, line: 68, baseType: !798, size: 32, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !840, file: !841, line: 70, baseType: !854, size: 32, offset: 96)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !855, line: 15, size: 32, elements: !856)
!855 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !854, file: !855, line: 20, baseType: !408, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !840, file: !841, line: 72, baseType: !379, size: 128, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !770, file: !6, line: 437, baseType: !860, size: 64, offset: 2112)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !862, line: 69, size: 320, elements: !863)
!862 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!863 = !{!864, !865, !866, !886, !888, !892, !893}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !862, line: 70, baseType: !421, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !861, file: !862, line: 71, baseType: !769, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !861, file: !862, line: 72, baseType: !867, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !862, line: 47, size: 256, elements: !870)
!870 = !{!871, !872, !878, !882}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !862, line: 49, baseType: !7, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !869, file: !862, line: 51, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!109, !421, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !869, file: !862, line: 53, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!109, !499, !876}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !869, file: !862, line: 55, baseType: !883, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !372}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !861, file: !862, line: 73, baseType: !887, size: 16, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !861, file: !862, line: 74, baseType: !889, size: 8, offset: 208)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !458, line: 16, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !460, line: 20, baseType: !891)
!891 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !862, line: 75, baseType: !457, size: 8, offset: 216)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !862, line: 76, baseType: !894, size: 64, offset: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !862, line: 76, size: 64, elements: !895)
!895 = !{!896, !897, !904}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !894, file: !862, line: 77, baseType: !372, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !894, file: !862, line: 78, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !862, line: 86, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !900, file: !862, line: 87, baseType: !7, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !900, file: !862, line: 88, baseType: !499, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !894, file: !862, line: 79, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !862, line: 92, size: 256, elements: !908)
!908 = !{!909, !910, !911, !913, !914}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !907, file: !862, line: 94, baseType: !7, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !907, file: !862, line: 95, baseType: !7, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !907, file: !862, line: 96, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !907, file: !862, line: 97, baseType: !867, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !907, file: !862, line: 98, baseType: !372, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !770, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !770, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !770, file: !6, line: 442, baseType: !830, size: 64, offset: 2240)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !770, file: !6, line: 443, baseType: !834, size: 64, offset: 2304)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !770, file: !6, line: 444, baseType: !920, size: 8, offset: 2368)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !374, line: 35, baseType: !921)
!921 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !770, file: !6, line: 451, baseType: !920, size: 8, offset: 2376)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !770, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !770, file: !6, line: 455, baseType: !925, size: 64, offset: 2432)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !927, line: 23, size: 96, elements: !928)
!927 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !926, file: !927, line: 24, baseType: !109, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !926, file: !927, line: 24, baseType: !109, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !926, file: !927, line: 24, baseType: !109, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !770, file: !6, line: 458, baseType: !933, size: 64, offset: 2496)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!109}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !770, file: !6, line: 460, baseType: !937, size: 4032, align: 512, offset: 2560)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 4032, elements: !961)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !938, file: !6, line: 363, baseType: !372, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !938, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !938, file: !6, line: 367, baseType: !943, size: 448, offset: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !943, file: !6, line: 320, baseType: !769, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !943, file: !6, line: 321, baseType: !947, size: 384, offset: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !948, line: 40, size: 384, elements: !949)
!948 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !947, file: !948, line: 41, baseType: !951, size: 384, align: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 384, align: 64, elements: !959)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !953, line: 5, size: 192, align: 64, elements: !954)
!953 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!954 = !{!955, !956, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !952, file: !953, line: 6, baseType: !549, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !952, file: !953, line: 7, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !952, file: !953, line: 8, baseType: !957, size: 64, offset: 128)
!959 = !{!960}
!960 = !DISubrange(count: 2)
!961 = !{!962}
!962 = !DISubrange(count: 7)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !770, file: !6, line: 463, baseType: !964, size: 192, offset: 6592)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !965, line: 8, size: 192, elements: !966)
!965 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!966 = !{!967, !968, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !964, file: !965, line: 10, baseType: !7, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !964, file: !965, line: 11, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !964, file: !965, line: 12, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !973, line: 59, size: 48, elements: !974)
!973 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!974 = !{!975, !979, !980, !981, !982, !983}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !972, file: !973, line: 60, baseType: !976, size: 16)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !458, line: 18, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !460, line: 23, baseType: !978)
!978 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !972, file: !973, line: 61, baseType: !976, size: 16, offset: 16)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !972, file: !973, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !972, file: !973, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !972, file: !973, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !972, file: !973, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !770, file: !6, line: 465, baseType: !549, size: 64, offset: 6784)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !770, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !770, file: !6, line: 470, baseType: !379, size: 128, offset: 6912)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !770, file: !6, line: 471, baseType: !988, size: 64, offset: 7040)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !990, line: 33, size: 96, elements: !991)
!990 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!991 = !{!992, !993, !994, !995}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !989, file: !990, line: 37, baseType: !109, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !989, file: !990, line: 43, baseType: !109, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !989, file: !990, line: 45, baseType: !469, size: 16, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !989, file: !990, line: 47, baseType: !469, size: 16, offset: 80)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !770, file: !6, line: 476, baseType: !997, size: 64, offset: 7104)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !999)
!999 = !{!1000, !1016, !1017, !1018}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !998, file: !6, line: 379, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1003, line: 204, baseType: !1004)
!1003 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1003, line: 197, size: 192, elements: !1005)
!1005 = !{!1006, !1008, !1009, !1010, !1012, !1014}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1004, file: !1003, line: 198, baseType: !1007, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1003, line: 21, baseType: !649)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1004, file: !1003, line: 199, baseType: !461, size: 8, offset: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1004, file: !1003, line: 200, baseType: !461, size: 8, offset: 40)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1004, file: !1003, line: 201, baseType: !1011, size: 16, offset: 48)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1003, line: 17, baseType: !468)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1004, file: !1003, line: 202, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1003, line: 16, baseType: !653)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1004, file: !1003, line: 203, baseType: !1015, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1003, line: 22, baseType: !653)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !998, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !998, file: !6, line: 381, baseType: !499, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !998, file: !6, line: 382, baseType: !499, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !770, file: !6, line: 477, baseType: !998, size: 256, offset: 7168)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !770, file: !6, line: 480, baseType: !1021, size: 64, offset: 7424)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !770, file: !6, line: 483, baseType: !1024, size: 64, offset: 7488)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !770, file: !6, line: 488, baseType: !499, size: 64, offset: 7552)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !770, file: !6, line: 492, baseType: !372, size: 64, offset: 7616)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !770, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !770, file: !6, line: 495, baseType: !372, size: 64, offset: 7744)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !770, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !770, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !770, file: !6, line: 500, baseType: !1033, size: 64, offset: 7872)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1035, line: 45, baseType: !1036)
!1035 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !770, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !770, file: !6, line: 504, baseType: !1039, size: 64, offset: 8000)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1042, line: 96, size: 192, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1043 = !{!1044, !1045, !1125, !1129}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1041, file: !1042, line: 97, baseType: !7, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1041, file: !1042, line: 98, baseType: !1046, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1042, line: 24, size: 3072, elements: !1048)
!1048 = !{!1049, !1051, !1052, !1053, !1054, !1078, !1079, !1080, !1081, !1099, !1110, !1111, !1122, !1123, !1124}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1047, file: !1042, line: 26, baseType: !1050, size: 128)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 128, elements: !959)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1047, file: !1042, line: 27, baseType: !1050, size: 128, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1047, file: !1042, line: 28, baseType: !109, size: 32, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1047, file: !1042, line: 31, baseType: !433, size: 32, align: 512, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1047, file: !1042, line: 32, baseType: !1055, size: 960, offset: 576)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1056, line: 206, size: 960, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1057 = !{!1058, !1067, !1072, !1074, !1075, !1077}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1055, file: !1056, line: 207, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !374, line: 232, size: 128, align: 64, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !374, line: 233, baseType: !1059, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1060, file: !374, line: 234, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1059}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1055, file: !1056, line: 208, baseType: !1068, size: 256, offset: 64)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 256, elements: !1070)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1070 = !{!1071}
!1071 = !DISubrange(count: 4)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1055, file: !1056, line: 209, baseType: !1073, size: 256, offset: 320)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 256, elements: !1070)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1055, file: !1056, line: 213, baseType: !535, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1055, file: !1056, line: 215, baseType: !1076, size: 256, offset: 640)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 256, elements: !1070)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !1056, line: 216, baseType: !457, size: 8, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1047, file: !1042, line: 33, baseType: !549, size: 64, offset: 1536)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1047, file: !1042, line: 34, baseType: !549, size: 64, offset: 1600)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1047, file: !1042, line: 35, baseType: !920, size: 8, offset: 1664)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1047, file: !1042, line: 36, baseType: !1082, size: 320, offset: 1728)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1083, line: 11, size: 320, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1084 = !{!1085, !1092, !1093, !1098}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1082, file: !1083, line: 16, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !374, line: 198, size: 128, elements: !1087)
!1087 = !{!1088, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1086, file: !374, line: 199, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1086, file: !374, line: 199, baseType: !1091, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1082, file: !1083, line: 17, baseType: !549, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1082, file: !1083, line: 18, baseType: !1094, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !1083, line: 19, baseType: !648, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1047, file: !1042, line: 37, baseType: !1100, size: 256, offset: 2048)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !321, line: 98, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1100, file: !321, line: 99, baseType: !844, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1100, file: !321, line: 100, baseType: !379, size: 128, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1100, file: !321, line: 101, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !321, line: 21, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1047, file: !1042, line: 38, baseType: !1060, size: 128, align: 64, offset: 2304)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1047, file: !1042, line: 39, baseType: !1112, size: 64, offset: 2432)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1042, line: 49, size: 768, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1113, file: !1042, line: 50, baseType: !433, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1113, file: !1042, line: 51, baseType: !1073, size: 256, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1113, file: !1042, line: 53, baseType: !1073, size: 256, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1113, file: !1042, line: 54, baseType: !549, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1113, file: !1042, line: 55, baseType: !1112, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1113, file: !1042, line: 56, baseType: !109, size: 32, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1113, file: !1042, line: 57, baseType: !109, size: 32, offset: 736)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1047, file: !1042, line: 40, baseType: !549, size: 64, offset: 2496)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1047, file: !1042, line: 42, baseType: !109, size: 32, offset: 2560)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1047, file: !1042, line: 43, baseType: !1040, size: 64, offset: 2624)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1041, file: !1042, line: 99, baseType: !1126, offset: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1127, line: 211, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1128 = !{}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1041, file: !1042, line: 100, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1042, line: 63, size: 3008, elements: !1132)
!1132 = !{!1133, !1134, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1164}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1131, file: !1042, line: 64, baseType: !1112, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1131, file: !1042, line: 65, baseType: !1135, size: 192, offset: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 192, elements: !500)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1131, file: !1042, line: 67, baseType: !109, size: 32, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1131, file: !1042, line: 68, baseType: !840, size: 256, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1131, file: !1042, line: 69, baseType: !433, size: 32, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1131, file: !1042, line: 70, baseType: !840, size: 256, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1131, file: !1042, line: 71, baseType: !549, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1131, file: !1042, line: 72, baseType: !549, size: 64, offset: 960)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1131, file: !1042, line: 73, baseType: !549, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1131, file: !1042, line: 74, baseType: !549, size: 64, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1131, file: !1042, line: 75, baseType: !549, size: 64, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1131, file: !1042, line: 76, baseType: !549, size: 64, offset: 1216)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1131, file: !1042, line: 77, baseType: !549, size: 64, offset: 1280)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1131, file: !1042, line: 78, baseType: !549, size: 64, offset: 1344)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1131, file: !1042, line: 79, baseType: !920, size: 8, offset: 1408)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1131, file: !1042, line: 80, baseType: !549, size: 64, offset: 1472)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1131, file: !1042, line: 81, baseType: !840, size: 256, offset: 1536)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1131, file: !1042, line: 82, baseType: !789, size: 256, offset: 1792)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1131, file: !1042, line: 84, baseType: !408, size: 32, offset: 2048)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1131, file: !1042, line: 87, baseType: !549, size: 64, offset: 2112)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1131, file: !1042, line: 88, baseType: !549, size: 64, offset: 2176)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1131, file: !1042, line: 89, baseType: !1156, size: 704, offset: 2240)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !321, line: 111, size: 704, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1163}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1156, file: !321, line: 112, baseType: !1100, size: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1156, file: !321, line: 113, baseType: !1082, size: 320, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1156, file: !321, line: 116, baseType: !1161, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !321, line: 18, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1156, file: !321, line: 117, baseType: !109, size: 32, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1131, file: !1042, line: 90, baseType: !1040, size: 64, offset: 2944)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !770, file: !6, line: 515, baseType: !1166, size: 64, offset: 8064)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1168, line: 117, size: 128, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1167, file: !1168, line: 118, baseType: !836, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1167, file: !1168, line: 119, baseType: !836, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1167, file: !1168, line: 120, baseType: !535, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !770, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !770, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !770, file: !6, line: 520, baseType: !1176, size: 64, offset: 8192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !770, file: !6, line: 523, baseType: !1178, size: 64, offset: 8256)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !770, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !770, file: !6, line: 525, baseType: !1183, size: 64, offset: 8384)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !770, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !770, file: !6, line: 533, baseType: !372, size: 64, offset: 8512)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !770, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !770, file: !6, line: 535, baseType: !1190, size: 64, offset: 8640)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !770, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !770, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !770, file: !6, line: 540, baseType: !1194, size: 64, offset: 8768)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1196, line: 32, size: 64, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1195, file: !1196, line: 33, baseType: !836, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1195, file: !1196, line: 34, baseType: !836, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !770, file: !6, line: 563, baseType: !379, size: 128, offset: 8832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !770, file: !6, line: 565, baseType: !379, size: 128, offset: 8960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !770, file: !6, line: 568, baseType: !1203, size: 64, offset: 9088)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !770, file: !6, line: 570, baseType: !408, size: 32, offset: 9152)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !14, line: 2382, baseType: !744, size: 64, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !745, file: !14, line: 2383, baseType: !1209, size: 64, offset: 512)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !374, line: 194, size: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1209, file: !374, line: 195, baseType: !1089, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !745, file: !14, line: 2385, baseType: !1213, offset: 576)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1127, line: 206, elements: !1128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !745, file: !14, line: 2386, baseType: !1213, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !745, file: !14, line: 2387, baseType: !1213, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !745, file: !14, line: 2388, baseType: !1217, offset: 576)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1213, elements: !500)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !745, file: !14, line: 2390, baseType: !1213, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !745, file: !14, line: 2391, baseType: !1213, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !745, file: !14, line: 2392, baseType: !1213, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !745, file: !14, line: 2393, baseType: !1213, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !731, file: !14, line: 1197, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1226)
!1226 = !{!1227, !1231, !1235, !1236, !1240, !1246, !1250, !1251, !1252, !1256, !1260, !1264, !1265, !1266, !1272, !1276, !1277, !1284, !1285, !1286, !1287, !1291, !1295, !1344, !1359, !1360}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1225, file: !14, line: 2058, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!579, !730}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1225, file: !14, line: 2059, baseType: !1232, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !579}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1225, file: !14, line: 2060, baseType: !1232, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1225, file: !14, line: 2062, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !579, !109}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1225, file: !14, line: 2063, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!109, !579, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1225, file: !14, line: 2064, baseType: !1247, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!109, !579}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1225, file: !14, line: 2065, baseType: !1232, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1225, file: !14, line: 2066, baseType: !765, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1225, file: !14, line: 2067, baseType: !1253, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!109, !730, !109}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1225, file: !14, line: 2068, baseType: !1257, size: 64, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!109, !730, !13}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1225, file: !14, line: 2069, baseType: !1261, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!109, !730}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1225, file: !14, line: 2070, baseType: !1257, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1225, file: !14, line: 2071, baseType: !1261, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1225, file: !14, line: 2072, baseType: !1267, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!109, !614, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1225, file: !14, line: 2073, baseType: !1273, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!109, !730, !969, !499}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1225, file: !14, line: 2074, baseType: !765, size: 64, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1225, file: !14, line: 2076, baseType: !1278, size: 64, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!109, !1281, !614}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1283, line: 66, flags: DIFlagFwdDecl)
!1283 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1225, file: !14, line: 2077, baseType: !1278, size: 64, offset: 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1225, file: !14, line: 2078, baseType: !1278, size: 64, offset: 1152)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1225, file: !14, line: 2079, baseType: !1278, size: 64, offset: 1216)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1225, file: !14, line: 2081, baseType: !1288, size: 64, offset: 1280)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!531, !730, !109, !499, !546, !740}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1225, file: !14, line: 2082, baseType: !1292, size: 64, offset: 1344)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!531, !730, !109, !421, !546, !740}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1225, file: !14, line: 2083, baseType: !1296, size: 64, offset: 1408)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!1299, !579}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1327, !1328, !1329}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1301, file: !19, line: 297, baseType: !1086, size: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1301, file: !19, line: 298, baseType: !379, size: 128, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1301, file: !19, line: 299, baseType: !379, size: 128, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1301, file: !19, line: 300, baseType: !379, size: 128, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1301, file: !19, line: 301, baseType: !840, size: 256, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1301, file: !19, line: 302, baseType: !433, size: 32, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1301, file: !19, line: 303, baseType: !408, size: 32, offset: 800)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1301, file: !19, line: 304, baseType: !730, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1301, file: !19, line: 305, baseType: !1312, size: 64, offset: 896)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1313)
!1313 = !{!1314, !1326}
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !19, line: 69, baseType: !1315, size: 32)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !19, line: 69, size: 32, elements: !1316)
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1315, file: !19, line: 70, baseType: !585, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1315, file: !19, line: 71, baseType: !594, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1315, file: !19, line: 72, baseType: !1320, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1321, line: 24, baseType: !1322)
!1321 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1321, line: 22, size: 32, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1322, file: !1321, line: 23, baseType: !1325, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1321, line: 20, baseType: !591)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1312, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1301, file: !19, line: 306, baseType: !740, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1301, file: !19, line: 307, baseType: !549, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1301, file: !19, line: 308, baseType: !1330, size: 576, offset: 1088)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1331)
!1331 = !{!1332, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1343}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1330, file: !19, line: 206, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !742)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1330, file: !19, line: 207, baseType: !1333, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1330, file: !19, line: 208, baseType: !1333, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1330, file: !19, line: 209, baseType: !1333, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1330, file: !19, line: 210, baseType: !1333, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1330, file: !19, line: 211, baseType: !1333, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1330, file: !19, line: 212, baseType: !1333, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1330, file: !19, line: 213, baseType: !1341, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1342, line: 8, baseType: !851)
!1342 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1330, file: !19, line: 214, baseType: !1341, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1225, file: !14, line: 2085, baseType: !1345, size: 64, offset: 1472)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!535, !730, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1350, line: 15, size: 256, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1351 = !{!1352, !1353, !1354, !1355, !1356}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1349, file: !1350, line: 16, baseType: !373, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1349, file: !1350, line: 19, baseType: !109, size: 32, offset: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1349, file: !1350, line: 26, baseType: !549, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1349, file: !1350, line: 33, baseType: !549, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1349, file: !1350, line: 36, baseType: !1357, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1225, file: !14, line: 2087, baseType: !1345, size: 64, offset: 1536)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1225, file: !14, line: 2089, baseType: !765, size: 64, offset: 1600)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !731, file: !14, line: 1198, baseType: !1362, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1365)
!1365 = !{!1366, !1370, !1374, !1378, !1379, !1380, !1381, !1382, !1387, !1392, !1396}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1364, file: !19, line: 325, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!109, !1300}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1364, file: !19, line: 326, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1300, !730, !109}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1364, file: !19, line: 327, baseType: !1375, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1300}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1364, file: !19, line: 328, baseType: !1367, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1364, file: !19, line: 329, baseType: !1367, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1364, file: !19, line: 330, baseType: !1367, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1364, file: !19, line: 331, baseType: !1253, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1364, file: !19, line: 334, baseType: !1383, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !579}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1364, file: !19, line: 335, baseType: !1388, size: 64, offset: 512)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!109, !579, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1364, file: !19, line: 337, baseType: !1393, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!109, !579, !1386}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1364, file: !19, line: 339, baseType: !1397, size: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!109, !730, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !731, file: !14, line: 1199, baseType: !1402, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1405)
!1405 = !{!1406, !1417, !1418, !1422, !1423, !1424, !1439, !1462, !1466, !1467, !1490}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1404, file: !19, line: 431, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!109, !730, !109, !109, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1413, line: 8, size: 128, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1412, file: !1413, line: 9, baseType: !724, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1412, file: !1413, line: 10, baseType: !614, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1404, file: !19, line: 432, baseType: !1253, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1404, file: !19, line: 433, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!109, !730, !7}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1404, file: !19, line: 434, baseType: !1419, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1404, file: !19, line: 435, baseType: !1253, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1404, file: !19, line: 436, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!109, !730, !109, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1429, file: !19, line: 418, baseType: !109, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1429, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1429, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1429, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1429, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1429, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1429, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1429, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1404, file: !19, line: 437, baseType: !1440, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!109, !730, !1312, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1444, file: !19, line: 346, baseType: !109, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1444, file: !19, line: 347, baseType: !652, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1444, file: !19, line: 348, baseType: !652, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1444, file: !19, line: 349, baseType: !652, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1444, file: !19, line: 350, baseType: !652, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1444, file: !19, line: 351, baseType: !652, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1444, file: !19, line: 352, baseType: !652, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1444, file: !19, line: 353, baseType: !850, size: 64, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1444, file: !19, line: 355, baseType: !850, size: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1444, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1444, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1444, file: !19, line: 358, baseType: !652, size: 64, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1444, file: !19, line: 359, baseType: !652, size: 64, offset: 704)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1444, file: !19, line: 360, baseType: !652, size: 64, offset: 768)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1444, file: !19, line: 361, baseType: !850, size: 64, offset: 832)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1444, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1404, file: !19, line: 438, baseType: !1463, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!109, !730, !1400, !1443}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1404, file: !19, line: 440, baseType: !1440, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1404, file: !19, line: 441, baseType: !1468, size: 64, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!109, !730, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1472, file: !19, line: 412, baseType: !7, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1472, file: !19, line: 413, baseType: !1476, size: 1344, offset: 64)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 1344, elements: !500)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1489}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !19, line: 398, baseType: !7, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1477, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1477, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1477, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1477, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1477, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1477, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1477, file: !19, line: 406, baseType: !654, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1477, file: !19, line: 407, baseType: !1488, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !374, line: 132, baseType: !652)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1477, file: !19, line: 408, baseType: !1488, size: 64, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1404, file: !19, line: 442, baseType: !1419, size: 64, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !731, file: !14, line: 1200, baseType: !1492, size: 64, offset: 576)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !731, file: !14, line: 1201, baseType: !549, size: 64, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !731, file: !14, line: 1202, baseType: !549, size: 64, offset: 704)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !731, file: !14, line: 1203, baseType: !549, size: 64, offset: 768)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !731, file: !14, line: 1204, baseType: !614, size: 64, offset: 832)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !731, file: !14, line: 1205, baseType: !1500, size: 320, offset: 896)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1501, line: 48, size: 320, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1502 = !{!1503, !1504, !1505, !1506, !1507}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1500, file: !1501, line: 49, baseType: !844, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1500, file: !1501, line: 55, baseType: !844, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1500, file: !1501, line: 57, baseType: !854, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1500, file: !1501, line: 59, baseType: !798, size: 32, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1500, file: !1501, line: 60, baseType: !379, size: 128, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !731, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !731, file: !14, line: 1207, baseType: !408, size: 32, offset: 1248)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !731, file: !14, line: 1209, baseType: !372, size: 64, offset: 1280)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !731, file: !14, line: 1211, baseType: !1512, size: 64, offset: 1344)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !731, file: !14, line: 1223, baseType: !1517, size: 64, offset: 1408)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !631, line: 34, size: 64, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1517, file: !631, line: 35, baseType: !634, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !731, file: !14, line: 1224, baseType: !379, size: 128, offset: 1472)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !731, file: !14, line: 1225, baseType: !1522, size: 64, offset: 1600)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !731, file: !14, line: 1226, baseType: !1525, size: 64, offset: 1664)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !731, file: !14, line: 1227, baseType: !1528, size: 64, offset: 1728)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !731, file: !14, line: 1228, baseType: !1531, size: 64, offset: 1792)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !731, file: !14, line: 1229, baseType: !1086, size: 128, offset: 1856)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !731, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !731, file: !14, line: 1231, baseType: !1536, size: 2496, offset: 2048)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1537)
!1537 = !{!1538, !1539, !1540, !1542, !1574}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1536, file: !19, line: 522, baseType: !7, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1536, file: !19, line: 523, baseType: !1500, size: 320, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1536, file: !19, line: 524, baseType: !1541, size: 192, offset: 384)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 192, elements: !500)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1536, file: !19, line: 525, baseType: !1543, size: 1728, offset: 576)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1544, size: 1728, elements: !500)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1545)
!1545 = !{!1546, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1544, file: !19, line: 223, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1549)
!1549 = !{!1550, !1551, !1564, !1565}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1548, file: !19, line: 446, baseType: !109, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1548, file: !19, line: 447, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1554, file: !19, line: 313, baseType: !1253, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1554, file: !19, line: 314, baseType: !1253, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1554, file: !19, line: 315, baseType: !1253, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1554, file: !19, line: 316, baseType: !1253, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1554, file: !19, line: 317, baseType: !1367, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1554, file: !19, line: 318, baseType: !1367, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1554, file: !19, line: 319, baseType: !1367, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1554, file: !19, line: 320, baseType: !1397, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1548, file: !19, line: 448, baseType: !769, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1548, file: !19, line: 449, baseType: !1547, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1544, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1544, file: !19, line: 226, baseType: !379, size: 128, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1544, file: !19, line: 227, baseType: !549, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1544, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1544, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1544, file: !19, line: 230, baseType: !1333, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1544, file: !19, line: 231, baseType: !1333, size: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1544, file: !19, line: 232, baseType: !372, size: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1536, file: !19, line: 526, baseType: !1575, size: 192, offset: 2304)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 192, elements: !500)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !731, file: !14, line: 1233, baseType: !1577, size: 2368, offset: 4544)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1578)
!1578 = !{!1579, !1580, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1577, file: !14, line: 1185, baseType: !469, size: 16)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1577, file: !14, line: 1186, baseType: !469, size: 16, offset: 16)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1577, file: !14, line: 1187, baseType: !1582, size: 2304, offset: 64)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1583, size: 2304, elements: !500)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1584, line: 12, size: 768, elements: !1585)
!1584 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1585 = !{!1586, !1600, !1601, !3733, !3734}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1583, file: !1584, line: 13, baseType: !1587, size: 384)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1588, line: 17, size: 384, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1589 = !{!1590, !1591, !1592, !1599}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1587, file: !1588, line: 18, baseType: !109, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1587, file: !1588, line: 19, baseType: !109, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1587, file: !1588, line: 20, baseType: !1593, size: 192, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1594, line: 41, baseType: !1595)
!1594 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1594, line: 37, size: 192, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1595, file: !1594, line: 38, baseType: !433, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1595, file: !1594, line: 39, baseType: !379, size: 128, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1587, file: !1588, line: 22, baseType: !1060, size: 128, align: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1583, file: !1584, line: 14, baseType: !912, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1583, file: !1584, line: 15, baseType: !1602, size: 64, offset: 448)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1603, line: 16, size: 64, elements: !1604)
!1603 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1602, file: !1603, line: 17, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1283, line: 746, size: 58368, elements: !1608)
!1608 = !{!1609, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1694, !1705, !1800, !1804, !1807, !1838, !1839, !1840, !1841, !1852, !1854, !1855, !1856, !1857, !1858, !1859, !1870, !1871, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1888, !1889, !1896, !1897, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2897, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2945, !2951, !2952, !2953, !2954, !2955, !2959, !2962, !2969, !2974, !2977, !2980, !2983, !3009, !3147, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3185, !3186, !3187, !3196, !3204, !3205, !3206, !3207, !3208, !3213, !3214, !3215, !3218, !3219, !3222, !3225, !3228, !3236, !3239, !3240, !3326, !3327, !3328, !3329, !3330, !3336, !3337, !3338, !3339, !3342, !3343, !3346, !3349, !3350, !3353, !3354, !3355, !3358, !3359, !3360, !3361, !3362, !3363, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3395, !3396, !3402, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3414, !3486, !3488, !3489, !3490, !3491, !3492, !3493, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3510, !3511, !3512}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1607, file: !1283, line: 752, baseType: !1610, size: 192)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1611, line: 56, size: 192, elements: !1612)
!1611 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1612 = !{!1613, !1614, !1615, !1616}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1610, file: !1611, line: 57, baseType: !549, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1610, file: !1611, line: 58, baseType: !549, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1610, file: !1611, line: 59, baseType: !648, size: 32, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1610, file: !1611, line: 61, baseType: !648, size: 32, offset: 160)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1607, file: !1283, line: 754, baseType: !7, size: 32, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1607, file: !1283, line: 767, baseType: !372, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1607, file: !1283, line: 768, baseType: !404, size: 32, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !1283, line: 770, baseType: !7, size: 32, offset: 352)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1607, file: !1283, line: 771, baseType: !7, size: 32, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1607, file: !1283, line: 774, baseType: !109, size: 32, offset: 416)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1607, file: !1283, line: 775, baseType: !1624, size: 128, offset: 448)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1625, line: 58, size: 128, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1626 = !{!1627, !1633, !1638, !1639}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1624, file: !1625, line: 59, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1629, line: 60, size: 64, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1628, file: !1629, line: 61, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 60, baseType: !1634, size: 32, offset: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 60, size: 32, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1634, file: !1625, line: 61, baseType: !7, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1634, file: !1625, line: 62, baseType: !408, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1624, file: !1625, line: 65, baseType: !467, size: 16, offset: 96)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1624, file: !1625, line: 65, baseType: !467, size: 16, offset: 112)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1607, file: !1283, line: 776, baseType: !7, size: 32, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1607, file: !1283, line: 777, baseType: !549, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1607, file: !1283, line: 778, baseType: !1606, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1607, file: !1283, line: 787, baseType: !109, size: 32, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1607, file: !1283, line: 788, baseType: !109, size: 32, offset: 800)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1607, file: !1283, line: 790, baseType: !109, size: 32, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1607, file: !1283, line: 792, baseType: !109, size: 32, offset: 864)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1607, file: !1283, line: 793, baseType: !109, size: 32, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1607, file: !1283, line: 794, baseType: !109, size: 32, offset: 928)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1607, file: !1283, line: 795, baseType: !7, size: 32, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1607, file: !1283, line: 797, baseType: !1651, size: 2048, offset: 1024)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1283, line: 551, size: 2048, elements: !1652)
!1652 = !{!1653, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1673, !1676, !1677, !1678}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1651, file: !1283, line: 553, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1283, line: 411, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1654, file: !1283, line: 412, baseType: !549, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1654, file: !1283, line: 413, baseType: !648, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1651, file: !1283, line: 554, baseType: !952, size: 192, align: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1651, file: !1283, line: 555, baseType: !652, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1651, file: !1283, line: 556, baseType: !652, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1651, file: !1283, line: 558, baseType: !379, size: 128, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1651, file: !1283, line: 559, baseType: !7, size: 32, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1651, file: !1283, line: 561, baseType: !652, size: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1651, file: !1283, line: 562, baseType: !652, size: 64, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1651, file: !1283, line: 563, baseType: !652, size: 64, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1651, file: !1283, line: 564, baseType: !652, size: 64, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1651, file: !1283, line: 565, baseType: !850, size: 64, offset: 896)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1651, file: !1283, line: 566, baseType: !652, size: 64, offset: 960)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1651, file: !1283, line: 568, baseType: !652, size: 64, offset: 1024)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1651, file: !1283, line: 571, baseType: !109, size: 32, offset: 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1651, file: !1283, line: 572, baseType: !1672, size: 64, offset: 1152)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1651, file: !1283, line: 574, baseType: !1674, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1283, line: 49, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1651, file: !1283, line: 576, baseType: !1674, size: 64, offset: 1280)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1651, file: !1283, line: 578, baseType: !549, size: 64, offset: 1344)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1651, file: !1283, line: 588, baseType: !1679, size: 512, align: 512, offset: 1536)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1283, line: 497, size: 512, align: 512, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1679, file: !1283, line: 498, baseType: !652, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1679, file: !1283, line: 499, baseType: !652, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1679, file: !1283, line: 500, baseType: !652, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1679, file: !1283, line: 501, baseType: !648, size: 32, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1679, file: !1283, line: 502, baseType: !648, size: 32, offset: 224)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1679, file: !1283, line: 503, baseType: !549, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1679, file: !1283, line: 504, baseType: !549, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1679, file: !1283, line: 505, baseType: !549, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1679, file: !1283, line: 506, baseType: !1690, size: 64, align: 64, offset: 448)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1283, line: 445, size: 64, align: 64, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1690, file: !1283, line: 446, baseType: !7, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1690, file: !1283, line: 447, baseType: !7, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1607, file: !1283, line: 798, baseType: !1695, size: 384, offset: 3072)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1283, line: 592, size: 384, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1695, file: !1283, line: 593, baseType: !379, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1695, file: !1283, line: 594, baseType: !549, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1695, file: !1283, line: 595, baseType: !549, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1695, file: !1283, line: 596, baseType: !7, size: 32, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1695, file: !1283, line: 597, baseType: !469, size: 16, offset: 288)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1695, file: !1283, line: 598, baseType: !469, size: 16, offset: 304)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1695, file: !1283, line: 600, baseType: !1704, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1607, file: !1283, line: 799, baseType: !1706, size: 1792, offset: 3456)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1283, line: 610, size: 1792, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1797, !1798}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1706, file: !1283, line: 611, baseType: !952, size: 192, align: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1706, file: !1283, line: 618, baseType: !652, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1706, file: !1283, line: 619, baseType: !652, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1706, file: !1283, line: 620, baseType: !652, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1706, file: !1283, line: 621, baseType: !652, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1706, file: !1283, line: 622, baseType: !652, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1706, file: !1283, line: 629, baseType: !850, size: 64, offset: 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1706, file: !1283, line: 630, baseType: !652, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1283, line: 631, baseType: !7, size: 32, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1706, file: !1283, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1706, file: !1283, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1706, file: !1283, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1706, file: !1283, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1706, file: !1283, line: 662, baseType: !1722, size: 512, offset: 704)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1723)
!1723 = !{!1724, !1732, !1733, !1738, !1793, !1794, !1795, !1796}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1722, file: !25, line: 119, baseType: !1725, size: 256)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1726, line: 9, size: 256, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1725, file: !1726, line: 10, baseType: !952, size: 192, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1725, file: !1726, line: 11, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1731, line: 29, baseType: !850)
!1731 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1722, file: !25, line: 120, baseType: !1730, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1722, file: !25, line: 121, baseType: !1734, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!24, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1722, file: !25, line: 122, baseType: !1739, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1741)
!1741 = !{!1742, !1767, !1768, !1771, !1776, !1777, !1788, !1792}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1740, file: !25, line: 160, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1744, file: !25, line: 216, baseType: !798, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1744, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1744, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1744, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1744, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1744, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1744, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1744, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1744, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1744, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1744, file: !25, line: 227, baseType: !469, size: 16, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1744, file: !25, line: 228, baseType: !469, size: 16, offset: 208)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1744, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1744, file: !25, line: 235, baseType: !1730, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1744, file: !25, line: 236, baseType: !1737, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1744, file: !25, line: 237, baseType: !1730, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1744, file: !25, line: 238, baseType: !1737, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1744, file: !25, line: 239, baseType: !1764, size: 4096, align: 512, offset: 512)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1740, size: 4096, align: 512, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 8)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1740, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1740, file: !25, line: 162, baseType: !1769, size: 32, offset: 96)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !374, line: 32, baseType: !1770)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !533, line: 96, baseType: !109)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1740, file: !25, line: 163, baseType: !1772, size: 32, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !621, line: 274, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !621, line: 274, size: 32, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1773, file: !621, line: 274, baseType: !625, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1740, file: !25, line: 164, baseType: !1737, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1740, file: !25, line: 165, baseType: !1778, size: 128, offset: 256)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1726, line: 14, size: 128, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1778, file: !1726, line: 15, baseType: !1781, size: 128)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !953, line: 26, size: 128, elements: !1782)
!1782 = !{!1783, !1787}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1781, file: !953, line: 27, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !953, line: 12, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1784, file: !953, line: 13, baseType: !957, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1781, file: !953, line: 28, baseType: !957, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1740, file: !25, line: 166, baseType: !1789, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1730}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1740, file: !25, line: 167, baseType: !1730, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1722, file: !25, line: 123, baseType: !457, size: 8, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1722, file: !25, line: 124, baseType: !457, size: 8, offset: 456)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1722, file: !25, line: 125, baseType: !457, size: 8, offset: 464)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1722, file: !25, line: 126, baseType: !457, size: 8, offset: 472)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1706, file: !1283, line: 671, baseType: !1722, size: 512, offset: 1216)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1706, file: !1283, line: 679, baseType: !1799, size: 64, offset: 1728)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1607, file: !1283, line: 800, baseType: !1801, size: 64, offset: 5248)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1283, line: 800, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1607, file: !1283, line: 809, baseType: !1805, size: 64, offset: 5312)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1283, line: 70, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1607, file: !1283, line: 825, baseType: !1808, size: 2048, align: 512, offset: 5632)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1283, line: 509, size: 2048, align: 512, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1808, file: !1283, line: 511, baseType: !652, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1808, file: !1283, line: 512, baseType: !652, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1808, file: !1283, line: 513, baseType: !652, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1808, file: !1283, line: 514, baseType: !652, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1808, file: !1283, line: 515, baseType: !652, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1808, file: !1283, line: 516, baseType: !652, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1808, file: !1283, line: 518, baseType: !652, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1808, file: !1283, line: 519, baseType: !652, size: 64, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1808, file: !1283, line: 520, baseType: !850, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1808, file: !1283, line: 522, baseType: !652, size: 64, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1808, file: !1283, line: 523, baseType: !652, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1808, file: !1283, line: 524, baseType: !850, size: 64, offset: 704)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1808, file: !1283, line: 526, baseType: !850, size: 64, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1808, file: !1283, line: 527, baseType: !652, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1808, file: !1283, line: 529, baseType: !652, size: 64, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1808, file: !1283, line: 530, baseType: !652, size: 64, offset: 960)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1808, file: !1283, line: 531, baseType: !652, size: 64, offset: 1024)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1808, file: !1283, line: 532, baseType: !652, size: 64, offset: 1088)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1808, file: !1283, line: 533, baseType: !652, size: 64, offset: 1152)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1808, file: !1283, line: 535, baseType: !652, size: 64, offset: 1216)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1808, file: !1283, line: 536, baseType: !652, size: 64, offset: 1280)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1808, file: !1283, line: 537, baseType: !652, size: 64, offset: 1344)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1808, file: !1283, line: 538, baseType: !652, size: 64, offset: 1408)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1808, file: !1283, line: 539, baseType: !652, size: 64, offset: 1472)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1808, file: !1283, line: 540, baseType: !652, size: 64, offset: 1536)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1808, file: !1283, line: 541, baseType: !652, size: 64, offset: 1600)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1808, file: !1283, line: 542, baseType: !652, size: 64, offset: 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1808, file: !1283, line: 543, baseType: !652, size: 64, offset: 1728)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1607, file: !1283, line: 833, baseType: !7, size: 32, offset: 7680)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1607, file: !1283, line: 836, baseType: !7, size: 32, offset: 7712)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1607, file: !1283, line: 837, baseType: !109, size: 32, offset: 7744)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1607, file: !1283, line: 838, baseType: !1842, size: 64, offset: 7808)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1845, line: 19, baseType: !1846)
!1845 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1845, line: 19, size: 64, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1846, file: !1845, line: 19, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 64, elements: !1850)
!1850 = !{!1851}
!1851 = !DISubrange(count: 1)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1607, file: !1283, line: 839, baseType: !1853, size: 64, offset: 7872)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1607, file: !1283, line: 840, baseType: !1844, size: 64, offset: 7936)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1607, file: !1283, line: 841, baseType: !372, size: 64, offset: 8000)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1607, file: !1283, line: 843, baseType: !469, size: 16, offset: 8064)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1607, file: !1283, line: 845, baseType: !469, size: 16, offset: 8080)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1607, file: !1283, line: 848, baseType: !109, size: 32, offset: 8096)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1607, file: !1283, line: 849, baseType: !1860, size: 32, offset: 8128)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1283, line: 718, size: 32, elements: !1861)
!1861 = !{!1862, !1869}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1860, file: !1283, line: 724, baseType: !1863, size: 32)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !1283, line: 719, size: 32, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1863, file: !1283, line: 720, baseType: !457, size: 8)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1863, file: !1283, line: 721, baseType: !457, size: 8, offset: 8)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1863, file: !1283, line: 722, baseType: !457, size: 8, offset: 16)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1863, file: !1283, line: 723, baseType: !457, size: 8, offset: 24)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1860, file: !1283, line: 725, baseType: !648, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1607, file: !1283, line: 850, baseType: !379, size: 128, offset: 8192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1607, file: !1283, line: 851, baseType: !1872, size: 64, offset: 8320)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1283, line: 60, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1607, file: !1283, line: 855, baseType: !549, size: 64, offset: 8384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1607, file: !1283, line: 856, baseType: !457, size: 8, offset: 8448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1607, file: !1283, line: 857, baseType: !457, size: 8, offset: 8456)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1607, file: !1283, line: 858, baseType: !109, size: 32, offset: 8480)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1607, file: !1283, line: 859, baseType: !379, size: 128, offset: 8512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1607, file: !1283, line: 860, baseType: !109, size: 32, offset: 8640)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1607, file: !1283, line: 861, baseType: !379, size: 128, offset: 8704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1607, file: !1283, line: 873, baseType: !1882, size: 256, offset: 8832)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1283, line: 376, size: 256, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1882, file: !1283, line: 381, baseType: !549, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1882, file: !1283, line: 384, baseType: !654, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1882, file: !1283, line: 389, baseType: !654, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1882, file: !1283, line: 392, baseType: !654, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1607, file: !1283, line: 875, baseType: !379, size: 128, offset: 9088)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1607, file: !1283, line: 877, baseType: !1890, size: 320, offset: 9216)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1891, line: 86, size: 320, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1890, file: !1891, line: 87, baseType: !109, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1890, file: !1891, line: 88, baseType: !379, size: 128, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1890, file: !1891, line: 89, baseType: !379, size: 128, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1607, file: !1283, line: 878, baseType: !952, size: 192, align: 64, offset: 9536)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1607, file: !1283, line: 881, baseType: !1898, size: 64, offset: 9728)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1900)
!1900 = !{!1901, !2816}
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !38, line: 734, baseType: !1902, size: 10240)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !38, line: 734, size: 10240, elements: !1903)
!1903 = !{!1904, !1908, !1921, !2693, !2694, !2695, !2696, !2697, !2698, !2705, !2706, !2707, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2746, !2748, !2751, !2796, !2797, !2798, !2801, !2802, !2803, !2806, !2807, !2808, !2814, !2815}
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !38, line: 739, baseType: !1905, size: 512, align: 512)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !38, line: 739, size: 512, align: 512, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1905, file: !38, line: 747, baseType: !408, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1902, file: !38, line: 750, baseType: !1909, size: 128, offset: 512)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1910, line: 218, size: 128, elements: !1911)
!1910 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1911 = !{!1912, !1919, !1920}
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1909, file: !1910, line: 219, baseType: !1913, size: 32)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1909, file: !1910, line: 219, size: 32, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1913, file: !1910, line: 220, baseType: !433, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1913, file: !1910, line: 221, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1910, line: 197, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1910, line: 197, elements: !1128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1909, file: !1910, line: 223, baseType: !7, size: 32, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1909, file: !1910, line: 224, baseType: !372, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1902, file: !38, line: 752, baseType: !1922, size: 64, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!549, !1925, !549, !549, !549, !549}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1927)
!1927 = !{!1928, !1934, !1935, !1937, !1938, !1939, !1940, !1941, !2038, !2223, !2232, !2233, !2234, !2683, !2684, !2685, !2686, !2688, !2689, !2692}
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !14, line: 995, baseType: !1929, size: 128)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !14, line: 995, size: 128, elements: !1930)
!1930 = !{!1931, !1932, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1929, file: !14, line: 996, baseType: !1628, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1929, file: !14, line: 997, baseType: !1060, size: 128, align: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1929, file: !14, line: 998, baseType: !7, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1926, file: !14, line: 1005, baseType: !433, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1926, file: !14, line: 1006, baseType: !1936, size: 32, offset: 160)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !374, line: 156, baseType: !7)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1926, file: !14, line: 1007, baseType: !844, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1926, file: !14, line: 1008, baseType: !840, size: 256, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1926, file: !14, line: 1009, baseType: !740, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1926, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1926, file: !14, line: 1011, baseType: !1942, size: 256, offset: 640)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1943)
!1943 = !{!1944, !1965, !2034, !2035, !2036, !2037}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1942, file: !14, line: 949, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1946, line: 34, baseType: !1947)
!1946 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1946, line: 25, size: 64, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1947, file: !1946, line: 26, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1951, line: 27, baseType: !1952)
!1951 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1951, line: 13, size: 64, elements: !1953)
!1953 = !{!1954, !1964}
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1951, line: 14, baseType: !1955, size: 32)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1951, line: 14, size: 32, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1955, file: !1951, line: 15, baseType: !408, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !1951, line: 16, baseType: !1959, size: 32)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !1951, line: 16, size: 32, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1959, file: !1951, line: 18, baseType: !457, size: 8)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1959, file: !1951, line: 19, baseType: !1963, size: 24, offset: 8)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 24, elements: !500)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1952, file: !1951, line: 26, baseType: !445, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1942, file: !14, line: 950, baseType: !1966, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1974, !1975, !1976, !1977}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1967, file: !30, line: 61, baseType: !404, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1967, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1967, file: !30, line: 63, baseType: !433, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1967, file: !30, line: 65, baseType: !1973, size: 256, offset: 128)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, size: 256, elements: !1070)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1967, file: !30, line: 66, baseType: !1209, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1967, file: !30, line: 68, baseType: !1593, size: 192, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !30, line: 69, baseType: !1060, size: 128, align: 64, offset: 640)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1967, file: !30, line: 70, baseType: !1978, offset: 768)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1979, elements: !2032)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1979, file: !30, line: 55, baseType: !109, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1979, file: !30, line: 56, baseType: !1983, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1985, line: 26, size: 1152, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1986 = !{!1987, !2000, !2001, !2002, !2003, !2007, !2008, !2009, !2012, !2015, !2019, !2020, !2031}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1984, file: !1985, line: 27, baseType: !1988, size: 192)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1989, line: 19, size: 192, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1990 = !{!1991, !1998, !1999}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1988, file: !1989, line: 20, baseType: !1992, size: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1993, line: 296, size: 128, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1994 = !{!1995, !1996, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1992, file: !1993, line: 297, baseType: !433, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1992, file: !1993, line: 299, baseType: !373, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1992, file: !1993, line: 300, baseType: !372, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1988, file: !1989, line: 21, baseType: !7, size: 32, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1988, file: !1989, line: 22, baseType: !7, size: 32, offset: 160)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1984, file: !1985, line: 28, baseType: !1060, size: 128, align: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1984, file: !1985, line: 29, baseType: !7, size: 32, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1984, file: !1985, line: 30, baseType: !1606, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1984, file: !1985, line: 31, baseType: !2004, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2006, line: 11, flags: DIFlagFwdDecl)
!2006 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1984, file: !1985, line: 32, baseType: !7, size: 32, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1984, file: !1985, line: 33, baseType: !1983, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1984, file: !1985, line: 35, baseType: !2010, size: 64, offset: 640)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1985, line: 17, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1984, file: !1985, line: 37, baseType: !2013, size: 64, offset: 704)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !586, line: 18, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1984, file: !1985, line: 38, baseType: !2016, size: 64, offset: 768)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2018, line: 16, flags: DIFlagFwdDecl)
!2018 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1984, file: !1985, line: 39, baseType: !109, size: 32, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1984, file: !1985, line: 40, baseType: !2021, size: 192, offset: 896)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2022, line: 9, size: 192, elements: !2023)
!2022 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2023 = !{!2024, !2025, !2029, !2030}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2021, file: !2022, line: 10, baseType: !844, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2021, file: !2022, line: 11, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2022, line: 7, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2021, file: !2022, line: 12, baseType: !7, size: 32, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2021, file: !2022, line: 13, baseType: !404, size: 32, offset: 160)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1984, file: !1985, line: 42, baseType: !109, size: 32, offset: 1088)
!2032 = !{!2033}
!2033 = !DISubrange(count: -1)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1942, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1942, file: !14, line: 952, baseType: !585, size: 32, offset: 160)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1942, file: !14, line: 952, baseType: !585, size: 32, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1942, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1926, file: !14, line: 1012, baseType: !2039, size: 64, offset: 896)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2042, line: 110, size: 1472, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2060, !2061, !2062, !2063, !2064, !2065, !2173, !2174, !2175, !2176, !2177, !2208, !2209, !2210, !2218}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2041, file: !2042, line: 111, baseType: !844, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2041, file: !2042, line: 112, baseType: !585, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2041, file: !2042, line: 113, baseType: !594, size: 32, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2041, file: !2042, line: 114, baseType: !585, size: 32, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2041, file: !2042, line: 115, baseType: !594, size: 32, offset: 160)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2041, file: !2042, line: 116, baseType: !585, size: 32, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2041, file: !2042, line: 117, baseType: !594, size: 32, offset: 224)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2041, file: !2042, line: 118, baseType: !585, size: 32, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2041, file: !2042, line: 119, baseType: !594, size: 32, offset: 288)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2041, file: !2042, line: 120, baseType: !7, size: 32, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2041, file: !2042, line: 121, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2056, line: 24, baseType: !2057)
!2056 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2056, line: 24, size: 64, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2057, file: !2056, line: 24, baseType: !652, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2041, file: !2042, line: 122, baseType: !2055, size: 64, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2041, file: !2042, line: 123, baseType: !2055, size: 64, offset: 512)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2041, file: !2042, line: 124, baseType: !2055, size: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2041, file: !2042, line: 125, baseType: !2055, size: 64, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2041, file: !2042, line: 127, baseType: !461, size: 8, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2041, file: !2042, line: 129, baseType: !2066, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2068, line: 195, size: 1728, elements: !2069)
!2068 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2069 = !{!2070, !2071, !2074, !2079, !2080, !2083, !2084, !2089, !2090, !2091, !2092, !2095, !2096, !2097, !2098, !2099, !2137, !2158}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2067, file: !2068, line: 196, baseType: !404, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2067, file: !2068, line: 197, baseType: !2072, size: 32, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2068, line: 28, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !374, line: 104, baseType: !836)
!2074 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2068, line: 198, baseType: !2075, size: 192, offset: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2068, line: 198, size: 192, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2075, file: !2068, line: 199, baseType: !379, size: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2075, file: !2068, line: 200, baseType: !952, size: 192, align: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2067, file: !2068, line: 205, baseType: !1500, size: 320, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2067, file: !2068, line: 206, baseType: !2081, size: 64, offset: 576)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2068, line: 206, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2067, file: !2068, line: 207, baseType: !372, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2068, line: 208, baseType: !2085, size: 64, offset: 704)
!2085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2068, line: 208, size: 64, elements: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2085, file: !2068, line: 209, baseType: !1341, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2085, file: !2068, line: 210, baseType: !1341, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2067, file: !2068, line: 212, baseType: !1341, size: 64, offset: 768)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2067, file: !2068, line: 213, baseType: !585, size: 32, offset: 832)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2067, file: !2068, line: 214, baseType: !594, size: 32, offset: 864)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2067, file: !2068, line: 215, baseType: !2093, size: 32, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2068, line: 31, baseType: !2094)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !374, line: 110, baseType: !648)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2067, file: !2068, line: 216, baseType: !469, size: 16, offset: 928)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2067, file: !2068, line: 217, baseType: !469, size: 16, offset: 944)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2067, file: !2068, line: 221, baseType: !978, size: 16, offset: 960)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2067, file: !2068, line: 228, baseType: !549, size: 64, offset: 1024)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2068, line: 245, baseType: !2100, size: 320, offset: 1088)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2068, line: 245, size: 320, elements: !2101)
!2101 = !{!2102, !2129}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2100, file: !2068, line: 246, baseType: !2103, size: 320)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2068, line: 114, size: 320, elements: !2104)
!2104 = !{!2105, !2106, !2118, !2121, !2128}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2103, file: !2068, line: 116, baseType: !549, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2103, file: !2068, line: 117, baseType: !2107, size: 64, offset: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2103, file: !2068, line: 117, size: 64, elements: !2108)
!2108 = !{!2109, !2117}
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !2068, line: 118, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2068, line: 118, size: 64, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2110, file: !2068, line: 120, baseType: !467, size: 16)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2110, file: !2068, line: 121, baseType: !2114, size: 48, offset: 16)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 48, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 6)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2107, file: !2068, line: 127, baseType: !549, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2103, file: !2068, line: 129, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2068, line: 102, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2103, file: !2068, line: 130, baseType: !2122, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2068, line: 108, size: 192, elements: !2124)
!2124 = !{!2125, !2126, !2127}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2123, file: !2068, line: 109, baseType: !1060, size: 128, align: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2123, file: !2068, line: 110, baseType: !404, size: 32, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2123, file: !2068, line: 111, baseType: !920, size: 8, offset: 160)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2103, file: !2068, line: 131, baseType: !421, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !2068, line: 247, baseType: !2130, size: 320)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2100, file: !2068, line: 247, size: 320, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135, !2136}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2130, file: !2068, line: 248, baseType: !549, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2130, file: !2068, line: 249, baseType: !549, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2130, file: !2068, line: 250, baseType: !2119, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2130, file: !2068, line: 251, baseType: !2122, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2130, file: !2068, line: 252, baseType: !499, size: 64, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2068, line: 260, baseType: !2138, size: 256, offset: 1408)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2068, line: 260, size: 256, elements: !2139)
!2139 = !{!2140, !2146}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2138, file: !2068, line: 261, baseType: !2141, size: 256)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2068, line: 134, size: 256, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2141, file: !2068, line: 135, baseType: !372, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2141, file: !2068, line: 136, baseType: !2145, size: 256)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 256, elements: !1070)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2138, file: !2068, line: 262, baseType: !2147, size: 256)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2068, line: 262, size: 256, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2147, file: !2068, line: 264, baseType: !379, size: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2147, file: !2068, line: 265, baseType: !2151, size: 128, offset: 128)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2152, line: 22, size: 128, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2153 = !{!2154, !2157}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2151, file: !2152, line: 23, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2152, line: 23, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2151, file: !2152, line: 24, baseType: !549, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2067, file: !2068, line: 280, baseType: !2159, size: 64, offset: 1664)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2068, line: 176, size: 192, elements: !2161)
!2161 = !{!2162, !2171, !2172}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2160, file: !2068, line: 177, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2068, line: 171, baseType: !2164)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!109, !2066, !2167, !2169, !2066}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2160, file: !2068, line: 178, baseType: !2066, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2160, file: !2068, line: 179, baseType: !2119, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2041, file: !2042, line: 130, baseType: !2066, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2041, file: !2042, line: 131, baseType: !2066, size: 64, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2041, file: !2042, line: 132, baseType: !2066, size: 64, offset: 960)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2041, file: !2042, line: 135, baseType: !372, size: 64, offset: 1024)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2041, file: !2042, line: 137, baseType: !2178, size: 64, offset: 1088)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2180, line: 14, size: 1088, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2181 = !{!2182, !2183, !2192, !2193, !2194, !2195, !2196, !2197}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2179, file: !2180, line: 15, baseType: !404, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2179, file: !2180, line: 17, baseType: !2184, size: 320, offset: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2185, line: 22, size: 320, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2186 = !{!2187, !2188, !2189, !2190}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2184, file: !2185, line: 23, baseType: !798, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2184, file: !2185, line: 24, baseType: !850, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2184, file: !2185, line: 26, baseType: !379, size: 128, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2184, file: !2185, line: 28, baseType: !2191, size: 64, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2179, file: !2180, line: 19, baseType: !549, size: 64, offset: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2179, file: !2180, line: 20, baseType: !844, size: 64, offset: 448)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2179, file: !2180, line: 23, baseType: !1086, size: 128, offset: 512)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2179, file: !2180, line: 24, baseType: !585, size: 32, offset: 640)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2179, file: !2180, line: 29, baseType: !844, size: 64, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2179, file: !2180, line: 36, baseType: !2198, size: 320, offset: 768)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2199, line: 15, size: 320, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2198, file: !2199, line: 16, baseType: !798, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2198, file: !2199, line: 18, baseType: !109, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2198, file: !2199, line: 19, baseType: !109, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2198, file: !2199, line: 20, baseType: !109, size: 32, offset: 96)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2198, file: !2199, line: 21, baseType: !109, size: 32, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2198, file: !2199, line: 22, baseType: !549, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2198, file: !2199, line: 23, baseType: !549, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2041, file: !2042, line: 138, baseType: !2013, size: 64, offset: 1152)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2041, file: !2042, line: 139, baseType: !2016, size: 64, offset: 1216)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2041, file: !2042, line: 140, baseType: !2211, size: 64, offset: 1280)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2042, line: 25, size: 64, elements: !2213)
!2213 = !{!2214, !2215, !2216}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2212, file: !2042, line: 26, baseType: !408, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2212, file: !2042, line: 27, baseType: !109, size: 32, offset: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2212, file: !2042, line: 28, baseType: !2217, offset: 64)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, elements: !2032)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !2042, line: 142, baseType: !2219, size: 128, offset: 1344)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2042, line: 142, size: 128, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2219, file: !2042, line: 143, baseType: !109, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2219, file: !2042, line: 144, baseType: !1060, size: 128, align: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1926, file: !14, line: 1013, baseType: !2224, size: 256, offset: 960)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2224, file: !14, line: 971, baseType: !549, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2224, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2224, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2224, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2224, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2224, file: !14, line: 976, baseType: !740, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1926, file: !14, line: 1014, baseType: !1412, size: 128, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1926, file: !14, line: 1015, baseType: !579, size: 64, offset: 1344)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1926, file: !14, line: 1016, baseType: !2235, size: 64, offset: 1408)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2237)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2238)
!2238 = !{!2239, !2240, !2244, !2249, !2253, !2281, !2282, !2288, !2301, !2309, !2313, !2314, !2605, !2606, !2610, !2615, !2616, !2620, !2624, !2630, !2631, !2635, !2636, !2642, !2646, !2650, !2656, !2660, !2664, !2668, !2672, !2673, !2679}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2237, file: !14, line: 1915, baseType: !769, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2237, file: !14, line: 1916, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!740, !1925, !740, !109}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2237, file: !14, line: 1917, baseType: !2245, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!531, !1925, !499, !546, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2237, file: !14, line: 1918, baseType: !2250, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!531, !1925, !421, !546, !2248}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2237, file: !14, line: 1919, baseType: !2254, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!531, !2257, !2279}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2266, !2267, !2268, !2269}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2258, file: !14, line: 374, baseType: !1925, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2258, file: !14, line: 375, baseType: !740, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2258, file: !14, line: 376, baseType: !2263, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !2257, !535}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2258, file: !14, line: 377, baseType: !372, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2258, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2258, file: !14, line: 379, baseType: !467, size: 16, offset: 288)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !14, line: 380, baseType: !2270, size: 64, offset: 320)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2258, file: !14, line: 380, size: 64, elements: !2271)
!2271 = !{!2272, !2275}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2270, file: !14, line: 386, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2270, file: !14, line: 395, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!531, !372}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2237, file: !14, line: 1920, baseType: !2254, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2237, file: !14, line: 1921, baseType: !2283, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!109, !2257, !2286, !7}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2237, file: !14, line: 1923, baseType: !2289, size: 64, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!109, !1925, !2292}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2294)
!2294 = !{!2295, !2300}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2293, file: !14, line: 1859, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2297)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!920, !2292, !421, !109, !740, !652, !7}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2293, file: !14, line: 1860, baseType: !740, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2237, file: !14, line: 1924, baseType: !2302, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!2305, !1925, !2307}
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2306, line: 59, baseType: !7)
!2306 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !755, line: 31, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2237, file: !14, line: 1925, baseType: !2310, size: 64, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!535, !1925, !7, !549}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2237, file: !14, line: 1926, baseType: !2310, size: 64, offset: 640)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2237, file: !14, line: 1927, baseType: !2315, size: 64, offset: 704)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!109, !1925, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2320)
!2320 = !{!2321, !2330, !2331, !2339, !2346, !2347, !2352, !2353, !2358, !2359, !2362, !2598, !2599, !2600, !2601, !2602, !2603}
!2321 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !38, line: 628, baseType: !2322, size: 128)
!2322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2319, file: !38, line: 628, size: 128, elements: !2323)
!2323 = !{!2324, !2329}
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2322, file: !38, line: 629, baseType: !2325, size: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2322, file: !38, line: 629, size: 128, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2325, file: !38, line: 631, baseType: !549, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2325, file: !38, line: 632, baseType: !549, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2322, file: !38, line: 635, baseType: !1060, size: 128, align: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2319, file: !38, line: 639, baseType: !1898, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2319, file: !38, line: 640, baseType: !2332, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2333, line: 297, baseType: !2334)
!2333 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2333, line: 297, size: 64, elements: !2335)
!2335 = !{!2336}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2334, file: !2333, line: 297, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2338, line: 19, baseType: !549)
!2338 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2339 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !38, line: 646, baseType: !2340, size: 64, offset: 256)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2319, file: !38, line: 646, size: 64, elements: !2341)
!2341 = !{!2342, !2345}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2340, file: !38, line: 647, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2344)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !549)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2340, file: !38, line: 648, baseType: !2344, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2319, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2319, file: !38, line: 667, baseType: !2348, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2350)
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2349, file: !38, line: 580, baseType: !1500, size: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2319, file: !38, line: 670, baseType: !920, size: 8, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2319, file: !38, line: 681, baseType: !2354, size: 256, offset: 512)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !38, line: 678, size: 256, elements: !2355)
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2354, file: !38, line: 679, baseType: !952, size: 192, align: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2354, file: !38, line: 680, baseType: !549, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2319, file: !38, line: 689, baseType: !379, size: 128, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2319, file: !38, line: 691, baseType: !2360, size: 64, offset: 896)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2319, file: !38, line: 694, baseType: !2363, size: 64, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2366, line: 563, size: 1024, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2367 = !{!2368, !2372, !2373, !2377, !2381, !2385, !2562, !2566, !2570, !2574, !2575, !2576, !2580, !2584, !2590, !2594}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2365, file: !2366, line: 564, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2318}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2365, file: !2366, line: 569, baseType: !2369, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2365, file: !2366, line: 571, baseType: !2374, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!109, !2318, !549}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2365, file: !2366, line: 572, baseType: !2378, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!109, !2318}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2365, file: !2366, line: 578, baseType: !2382, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!109, !2318, !549, !549, !549}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2365, file: !2366, line: 580, baseType: !2386, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2366, line: 512, size: 896, elements: !2392)
!2392 = !{!2393, !2401, !2402, !2409, !2416, !2426, !2555, !2556, !2558, !2560}
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !2366, line: 513, baseType: !2394, size: 320)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !2366, line: 513, size: 320, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2394, file: !2366, line: 514, baseType: !2318, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2394, file: !2366, line: 515, baseType: !373, size: 32, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2394, file: !2366, line: 516, baseType: !549, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2394, file: !2366, line: 517, baseType: !549, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2394, file: !2366, line: 518, baseType: !549, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2391, file: !2366, line: 520, baseType: !37, size: 32, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2391, file: !2366, line: 522, baseType: !2403, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2338, line: 22, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2338, line: 22, size: 64, elements: !2406)
!2406 = !{!2407}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2405, file: !2338, line: 22, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2338, line: 15, baseType: !549)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2391, file: !2366, line: 524, baseType: !2410, size: 64, offset: 448)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2333, line: 372, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2333, line: 372, size: 64, elements: !2413)
!2413 = !{!2414}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2412, file: !2333, line: 372, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2338, line: 16, baseType: !549)
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !2366, line: 527, baseType: !2417, size: 64, offset: 512)
!2417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2391, file: !2366, line: 527, size: 64, elements: !2418)
!2418 = !{!2419, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2417, file: !2366, line: 528, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2338, line: 21, baseType: !2421)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2338, line: 21, size: 64, elements: !2422)
!2422 = !{!2423}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2421, file: !2338, line: 21, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2338, line: 14, baseType: !549)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2417, file: !2366, line: 529, baseType: !2404, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2391, file: !2366, line: 534, baseType: !2427, size: 64, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2429)
!2429 = !{!2430, !2431, !2549, !2554}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !38, line: 75, baseType: !549, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !38, line: 83, baseType: !2432, size: 320, offset: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !38, line: 83, size: 320, elements: !2433)
!2433 = !{!2434, !2455, !2469, !2473, !2548}
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !38, line: 84, baseType: !2435, size: 320)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !38, line: 84, size: 320, elements: !2436)
!2436 = !{!2437, !2448, !2449, !2454}
!2437 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !38, line: 90, baseType: !2438, size: 128)
!2438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2435, file: !38, line: 90, size: 128, elements: !2439)
!2439 = !{!2440, !2441, !2446, !2447}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2438, file: !38, line: 91, baseType: !379, size: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2438, file: !38, line: 94, baseType: !2442, size: 128)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2438, file: !38, line: 94, size: 128, elements: !2443)
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2442, file: !38, line: 96, baseType: !372, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2442, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2438, file: !38, line: 102, baseType: !379, size: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2438, file: !38, line: 103, baseType: !379, size: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2435, file: !38, line: 106, baseType: !575, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !38, line: 107, baseType: !2450, size: 64, offset: 192)
!2450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2435, file: !38, line: 107, size: 64, elements: !2451)
!2451 = !{!2452, !2453}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2450, file: !38, line: 108, baseType: !549, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2450, file: !38, line: 109, baseType: !549, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2435, file: !38, line: 117, baseType: !549, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !38, line: 119, baseType: !2456, size: 320)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !38, line: 119, size: 320, elements: !2457)
!2457 = !{!2458, !2459, !2462, !2463, !2464}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2456, file: !38, line: 124, baseType: !549, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2456, file: !38, line: 125, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2456, file: !38, line: 126, baseType: !549, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2456, file: !38, line: 127, baseType: !549, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !38, line: 128, baseType: !2465, size: 64, offset: 256)
!2465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !38, line: 128, size: 64, elements: !2466)
!2466 = !{!2467, !2468}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2465, file: !38, line: 133, baseType: !549, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2465, file: !38, line: 138, baseType: !844, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !38, line: 141, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !38, line: 141, size: 64, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2470, file: !38, line: 142, baseType: !549, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !38, line: 144, baseType: !2474, size: 128)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !38, line: 144, size: 128, elements: !2475)
!2475 = !{!2476, !2547}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2474, file: !38, line: 146, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2479)
!2479 = !{!2480, !2490, !2511, !2512, !2513, !2514, !2515, !2529, !2530, !2531}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2478, file: !54, line: 127, baseType: !2481, size: 384)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2482)
!2482 = !{!2483, !2484, !2486, !2487, !2488, !2489}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2481, file: !54, line: 22, baseType: !549, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2481, file: !54, line: 23, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2481, file: !54, line: 24, baseType: !2485, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2481, file: !54, line: 25, baseType: !549, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2481, file: !54, line: 26, baseType: !549, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2481, file: !54, line: 27, baseType: !549, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2478, file: !54, line: 128, baseType: !2491, size: 128, offset: 384)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2492, line: 105, size: 128, elements: !2493)
!2492 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2493 = !{!2494, !2495}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2491, file: !2492, line: 110, baseType: !549, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2491, file: !2492, line: 118, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2492, line: 95, size: 448, elements: !2498)
!2498 = !{!2499, !2500, !2506, !2507, !2508, !2509, !2510}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2497, file: !2492, line: 96, baseType: !844, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2497, file: !2492, line: 97, baseType: !2501, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2492, line: 60, baseType: !2503)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2497, file: !2492, line: 98, baseType: !2501, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2497, file: !2492, line: 99, baseType: !920, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2497, file: !2492, line: 100, baseType: !920, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2497, file: !2492, line: 101, baseType: !1060, size: 128, align: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2497, file: !2492, line: 102, baseType: !2505, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2478, file: !54, line: 129, baseType: !789, size: 256, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2478, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2478, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2478, file: !54, line: 132, baseType: !549, size: 64, offset: 832)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2478, file: !54, line: 133, baseType: !2516, size: 64, offset: 896)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2519)
!2519 = !{!2520, !2524, !2525}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2518, file: !54, line: 83, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !2427}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2518, file: !54, line: 89, baseType: !2386, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2518, file: !54, line: 100, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!109, !2477, !549, !549, !109}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2478, file: !54, line: 134, baseType: !372, size: 64, offset: 960)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2478, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, scope: !2478, file: !54, line: 136, baseType: !2532, size: 128, offset: 1088)
!2532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2478, file: !54, line: 136, size: 128, elements: !2533)
!2533 = !{!2534, !2540}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2532, file: !54, line: 137, baseType: !2535, size: 128)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2536, line: 6, size: 128, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2535, file: !2536, line: 7, baseType: !652, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2535, file: !2536, line: 8, baseType: !652, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, scope: !2532, file: !54, line: 138, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2532, file: !54, line: 138, elements: !2542)
!2542 = !{!2543, !2545}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2541, file: !54, line: 138, baseType: !2544)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2541, file: !54, line: 138, elements: !1128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2541, file: !54, line: 138, baseType: !2546)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2535, elements: !2032)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2474, file: !38, line: 147, baseType: !372, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2432, file: !38, line: 161, baseType: !1060, size: 128, align: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !38, line: 164, baseType: !2550, size: 32, offset: 384)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !38, line: 164, size: 32, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2550, file: !38, line: 169, baseType: !408, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2550, file: !38, line: 177, baseType: !7, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2428, file: !38, line: 181, baseType: !408, size: 32, offset: 416)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2391, file: !2366, line: 535, baseType: !2427, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2391, file: !2366, line: 541, baseType: !2557, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2391, file: !2366, line: 545, baseType: !2559, size: 64, offset: 768)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2391, file: !2366, line: 549, baseType: !2561, size: 64, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2333, line: 520, baseType: !2427)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2365, file: !2366, line: 581, baseType: !2563, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!2389, !2390, !7}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2365, file: !2366, line: 582, baseType: !2567, size: 64, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2389, !2390, !549, !549}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2365, file: !2366, line: 584, baseType: !2571, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!549, !2318}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2365, file: !2366, line: 588, baseType: !2386, size: 64, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2365, file: !2366, line: 591, baseType: !2386, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2365, file: !2366, line: 597, baseType: !2577, size: 64, offset: 704)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!109, !2318, !549, !372, !109, !109}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2365, file: !2366, line: 603, baseType: !2581, size: 64, offset: 768)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!421, !2318}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2365, file: !2366, line: 613, baseType: !2585, size: 64, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!109, !2318, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1283, line: 54, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2365, file: !2366, line: 625, baseType: !2591, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!2588, !2318, !549}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2365, file: !2366, line: 633, baseType: !2595, size: 64, offset: 960)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!2427, !2318, !549}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2319, file: !38, line: 697, baseType: !549, size: 64, offset: 1024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2319, file: !38, line: 699, baseType: !1925, size: 64, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2319, file: !38, line: 700, baseType: !372, size: 64, offset: 1152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2319, file: !38, line: 711, baseType: !844, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2319, file: !38, line: 717, baseType: !2588, size: 64, offset: 1280)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2319, file: !38, line: 722, baseType: !2604, offset: 1344)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2237, file: !14, line: 1928, baseType: !549, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2237, file: !14, line: 1929, baseType: !2607, size: 64, offset: 832)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!109, !579, !1925}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2237, file: !14, line: 1930, baseType: !2611, size: 64, offset: 896)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!109, !1925, !2614}
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !372)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2237, file: !14, line: 1931, baseType: !2607, size: 64, offset: 960)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2237, file: !14, line: 1932, baseType: !2617, size: 64, offset: 1024)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!109, !1925, !740, !740, !109}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2237, file: !14, line: 1933, baseType: !2621, size: 64, offset: 1088)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!109, !109, !1925, !109}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2237, file: !14, line: 1934, baseType: !2625, size: 64, offset: 1152)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!109, !1925, !109, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2237, file: !14, line: 1935, baseType: !1922, size: 64, offset: 1216)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2237, file: !14, line: 1936, baseType: !2632, size: 64, offset: 1280)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!109, !109}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2237, file: !14, line: 1937, baseType: !2625, size: 64, offset: 1344)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2237, file: !14, line: 1938, baseType: !2637, size: 64, offset: 1408)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!531, !2640, !1925, !2248, !546, !7}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1283, line: 59, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2237, file: !14, line: 1939, baseType: !2643, size: 64, offset: 1472)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!531, !1925, !2248, !2640, !546, !7}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2237, file: !14, line: 1940, baseType: !2647, size: 64, offset: 1536)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !1925}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2237, file: !14, line: 1941, baseType: !2651, size: 64, offset: 1600)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!109, !1925, !109, !2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2237, file: !14, line: 1942, baseType: !2657, size: 64, offset: 1664)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!535, !1925, !109, !740, !740}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2237, file: !14, line: 1944, baseType: !2661, size: 64, offset: 1728)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !1281, !1925}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2237, file: !14, line: 1948, baseType: !2665, size: 64, offset: 1792)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!531, !1925, !740, !1925, !740, !546, !7}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2237, file: !14, line: 1950, baseType: !2669, size: 64, offset: 1856)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!740, !1925, !740, !1925, !740, !740, !7}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2237, file: !14, line: 1953, baseType: !2617, size: 64, offset: 1920)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2237, file: !14, line: 1954, baseType: !2674, size: 64, offset: 1984)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!109, !2677, !7}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2237, file: !14, line: 1955, baseType: !2680, size: 64, offset: 2048)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!109, !2677, !2286, !7}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1926, file: !14, line: 1018, baseType: !652, size: 64, offset: 1472)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1926, file: !14, line: 1020, baseType: !372, size: 64, offset: 1536)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1926, file: !14, line: 1023, baseType: !372, size: 64, offset: 1600)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1926, file: !14, line: 1027, baseType: !2687, size: 64, offset: 1664)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1926, file: !14, line: 1029, baseType: !575, size: 64, offset: 1728)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1926, file: !14, line: 1030, baseType: !2690, size: 32, offset: 1792)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2691, line: 8, baseType: !648)
!2691 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1926, file: !14, line: 1031, baseType: !2690, size: 32, offset: 1824)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1902, file: !38, line: 756, baseType: !549, size: 64, offset: 704)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1902, file: !38, line: 757, baseType: !549, size: 64, offset: 768)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1902, file: !38, line: 760, baseType: !549, size: 64, offset: 832)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1902, file: !38, line: 761, baseType: !549, size: 64, offset: 896)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1902, file: !38, line: 763, baseType: !549, size: 64, offset: 960)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1902, file: !38, line: 764, baseType: !2699, size: 64, offset: 1024)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2333, line: 299, baseType: !2701)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2333, line: 299, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2701, file: !2333, line: 299, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2338, line: 18, baseType: !549)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1902, file: !38, line: 773, baseType: !408, size: 32, offset: 1088)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1902, file: !38, line: 785, baseType: !408, size: 32, offset: 1120)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1902, file: !38, line: 795, baseType: !2708, size: 64, offset: 1152)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2710)
!2710 = !{!2711, !2712}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2709, file: !38, line: 727, baseType: !652, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2709, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1902, file: !38, line: 801, baseType: !549, size: 64, offset: 1216)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1902, file: !38, line: 804, baseType: !844, size: 64, offset: 1280)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1902, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1902, file: !38, line: 808, baseType: !433, size: 32, offset: 1376)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1902, file: !38, line: 823, baseType: !1500, size: 320, offset: 1408)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1902, file: !38, line: 825, baseType: !379, size: 128, offset: 1728)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1902, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1902, file: !38, line: 849, baseType: !549, size: 64, offset: 1920)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1902, file: !38, line: 850, baseType: !549, size: 64, offset: 1984)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1902, file: !38, line: 852, baseType: !549, size: 64, offset: 2048)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1902, file: !38, line: 853, baseType: !549, size: 64, offset: 2112)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1902, file: !38, line: 854, baseType: !846, size: 64, offset: 2176)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1902, file: !38, line: 855, baseType: !549, size: 64, offset: 2240)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1902, file: !38, line: 856, baseType: !549, size: 64, offset: 2304)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1902, file: !38, line: 857, baseType: !549, size: 64, offset: 2368)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1902, file: !38, line: 858, baseType: !549, size: 64, offset: 2432)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1902, file: !38, line: 865, baseType: !625, size: 32, offset: 2496)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1902, file: !38, line: 867, baseType: !433, size: 32, offset: 2528)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1902, file: !38, line: 869, baseType: !549, size: 64, offset: 2560)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1902, file: !38, line: 869, baseType: !549, size: 64, offset: 2624)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1902, file: !38, line: 869, baseType: !549, size: 64, offset: 2688)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1902, file: !38, line: 869, baseType: !549, size: 64, offset: 2752)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1902, file: !38, line: 870, baseType: !549, size: 64, offset: 2816)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1902, file: !38, line: 870, baseType: !549, size: 64, offset: 2880)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1902, file: !38, line: 870, baseType: !549, size: 64, offset: 2944)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1902, file: !38, line: 871, baseType: !549, size: 64, offset: 3008)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1902, file: !38, line: 871, baseType: !549, size: 64, offset: 3072)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1902, file: !38, line: 871, baseType: !549, size: 64, offset: 3136)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1902, file: !38, line: 871, baseType: !549, size: 64, offset: 3200)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1902, file: !38, line: 873, baseType: !2743, size: 3328, offset: 3264)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 3328, elements: !2744)
!2744 = !{!2745}
!2745 = !DISubrange(count: 52)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1902, file: !38, line: 875, baseType: !2747, size: 1280, offset: 6592)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2184, size: 1280, elements: !1070)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1902, file: !38, line: 877, baseType: !2749, size: 64, offset: 7872)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1902, file: !38, line: 880, baseType: !2752, size: 1088, offset: 7936)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2753, line: 72, baseType: !2754)
!2753 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2753, line: 23, size: 1088, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2763, !2764, !2765, !2766, !2793, !2794, !2795}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2754, file: !2753, line: 28, baseType: !652, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2754, file: !2753, line: 38, baseType: !846, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2754, file: !2753, line: 40, baseType: !549, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2754, file: !2753, line: 43, baseType: !1500, size: 320, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2754, file: !2753, line: 44, baseType: !2761, size: 64, offset: 512)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2753, line: 44, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2754, file: !2753, line: 48, baseType: !549, size: 64, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2754, file: !2753, line: 59, baseType: !840, size: 256, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2754, file: !2753, line: 60, baseType: !372, size: 64, offset: 896)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2754, file: !2753, line: 61, baseType: !2767, size: 64, offset: 960)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2770, line: 13, size: 1216, elements: !2771)
!2770 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2769, file: !2770, line: 14, baseType: !372, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2769, file: !2770, line: 15, baseType: !549, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2769, file: !2770, line: 17, baseType: !549, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2769, file: !2770, line: 17, baseType: !549, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2769, file: !2770, line: 18, baseType: !549, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2769, file: !2770, line: 18, baseType: !549, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2769, file: !2770, line: 19, baseType: !2779, size: 64, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2769, file: !2770, line: 21, baseType: !535, size: 64, offset: 448)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2769, file: !2770, line: 23, baseType: !535, size: 64, offset: 512)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2769, file: !2770, line: 24, baseType: !535, size: 64, offset: 576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2769, file: !2770, line: 25, baseType: !535, size: 64, offset: 640)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2769, file: !2770, line: 26, baseType: !535, size: 64, offset: 704)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2769, file: !2770, line: 27, baseType: !535, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2769, file: !2770, line: 28, baseType: !535, size: 64, offset: 832)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2769, file: !2770, line: 29, baseType: !535, size: 64, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2769, file: !2770, line: 30, baseType: !535, size: 64, offset: 960)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2769, file: !2770, line: 31, baseType: !535, size: 64, offset: 1024)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2769, file: !2770, line: 32, baseType: !535, size: 64, offset: 1088)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2769, file: !2770, line: 33, baseType: !535, size: 64, offset: 1152)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2754, file: !2753, line: 63, baseType: !408, size: 32, offset: 1024)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2754, file: !2753, line: 69, baseType: !467, size: 16, offset: 1056)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2754, file: !2753, line: 70, baseType: !976, size: 16, offset: 1072)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1902, file: !38, line: 882, baseType: !549, size: 64, offset: 9024)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1902, file: !38, line: 885, baseType: !433, size: 32, offset: 9088)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1902, file: !38, line: 886, baseType: !2799, size: 64, offset: 9152)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1902, file: !38, line: 901, baseType: !2013, size: 64, offset: 9216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1902, file: !38, line: 904, baseType: !1925, size: 64, offset: 9280)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1902, file: !38, line: 906, baseType: !2804, size: 64, offset: 9344)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1902, file: !38, line: 930, baseType: !408, size: 32, offset: 9408)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1902, file: !38, line: 933, baseType: !408, size: 32, offset: 9440)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1902, file: !38, line: 935, baseType: !2809, size: 64, offset: 9472)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2810)
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2809, file: !68, line: 104, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1902, file: !38, line: 940, baseType: !844, size: 64, offset: 9536)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1902, file: !38, line: 942, baseType: !1100, size: 256, offset: 9600)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1899, file: !38, line: 986, baseType: !2817, offset: 10240)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, elements: !2032)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1607, file: !1283, line: 882, baseType: !1898, size: 64, offset: 9792)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1607, file: !1283, line: 884, baseType: !109, size: 32, offset: 9856)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1607, file: !1283, line: 885, baseType: !109, size: 32, offset: 9888)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1607, file: !1283, line: 886, baseType: !109, size: 32, offset: 9920)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1607, file: !1283, line: 888, baseType: !109, size: 32, offset: 9952)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1607, file: !1283, line: 890, baseType: !549, size: 64, offset: 9984)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1607, file: !1283, line: 893, baseType: !7, size: 32, offset: 10048)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1607, file: !1283, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1607, file: !1283, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1607, file: !1283, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1607, file: !1283, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1607, file: !1283, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1607, file: !1283, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1607, file: !1283, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1607, file: !1283, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1607, file: !1283, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1607, file: !1283, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1607, file: !1283, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1607, file: !1283, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1607, file: !1283, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1607, file: !1283, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1607, file: !1283, line: 969, baseType: !549, size: 64, offset: 10176)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1607, file: !1283, line: 971, baseType: !2841, size: 448, offset: 10240)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2842)
!2842 = !{!2843, !2844, !2849}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2841, file: !62, line: 26, baseType: !549, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2841, file: !62, line: 27, baseType: !2845, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!535, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !62, line: 28, baseType: !2850, size: 320, offset: 128)
!2850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2841, file: !62, line: 28, size: 320, elements: !2851)
!2851 = !{!2852, !2862, !2887}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2850, file: !62, line: 37, baseType: !2853, size: 320)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2850, file: !62, line: 30, size: 320, elements: !2854)
!2854 = !{!2855, !2857, !2858, !2859, !2860, !2861}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2853, file: !62, line: 31, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2853, file: !62, line: 32, baseType: !648, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2853, file: !62, line: 33, baseType: !648, size: 32, offset: 96)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2853, file: !62, line: 34, baseType: !648, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2853, file: !62, line: 35, baseType: !652, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2853, file: !62, line: 36, baseType: !2856, size: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2850, file: !62, line: 47, baseType: !2863, size: 192)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2850, file: !62, line: 39, size: 192, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2886}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2863, file: !62, line: 40, baseType: !1769, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2863, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !2863, file: !62, line: 42, baseType: !2868, size: 64, offset: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2863, file: !62, line: 42, size: 64, elements: !2869)
!2869 = !{!2870, !2878}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2868, file: !62, line: 43, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2873, line: 7, size: 128, elements: !2874)
!2873 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2874 = !{!2875, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2872, file: !2873, line: 8, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !533, line: 93, baseType: !742)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2872, file: !2873, line: 9, baseType: !742, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2868, file: !62, line: 44, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2881, line: 7, size: 64, elements: !2882)
!2881 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2882 = !{!2883, !2885}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2880, file: !2881, line: 8, baseType: !2884, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2881, line: 5, baseType: !836)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2880, file: !2881, line: 9, baseType: !836, size: 32, offset: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2863, file: !62, line: 46, baseType: !652, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2850, file: !62, line: 55, baseType: !2888, size: 256)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2850, file: !62, line: 49, size: 256, elements: !2889)
!2889 = !{!2890, !2893, !2894, !2895, !2896}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2888, file: !62, line: 50, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2888, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2888, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2888, file: !62, line: 53, baseType: !549, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2888, file: !62, line: 54, baseType: !549, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1607, file: !1283, line: 973, baseType: !2898, size: 32, offset: 10688)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !374, line: 27, baseType: !2899)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !533, line: 28, baseType: !109)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1607, file: !1283, line: 974, baseType: !2898, size: 32, offset: 10720)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1607, file: !1283, line: 978, baseType: !549, size: 64, offset: 10752)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1607, file: !1283, line: 987, baseType: !1606, size: 64, offset: 10816)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1607, file: !1283, line: 990, baseType: !1606, size: 64, offset: 10880)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1607, file: !1283, line: 995, baseType: !379, size: 128, offset: 10944)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1607, file: !1283, line: 996, baseType: !379, size: 128, offset: 11072)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1607, file: !1283, line: 997, baseType: !1606, size: 64, offset: 11200)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1607, file: !1283, line: 1005, baseType: !379, size: 128, offset: 11264)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1607, file: !1283, line: 1006, baseType: !379, size: 128, offset: 11392)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1607, file: !1283, line: 1009, baseType: !1966, size: 64, offset: 11520)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1607, file: !1283, line: 1010, baseType: !2911, size: 512, offset: 11584)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 512, elements: !1070)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1607, file: !1283, line: 1011, baseType: !379, size: 128, offset: 12096)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1607, file: !1283, line: 1012, baseType: !379, size: 128, offset: 12224)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1607, file: !1283, line: 1014, baseType: !788, size: 64, offset: 12352)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1607, file: !1283, line: 1017, baseType: !969, size: 64, offset: 12416)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1607, file: !1283, line: 1020, baseType: !969, size: 64, offset: 12480)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1607, file: !1283, line: 1023, baseType: !372, size: 64, offset: 12544)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1607, file: !1283, line: 1025, baseType: !652, size: 64, offset: 12608)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1607, file: !1283, line: 1026, baseType: !652, size: 64, offset: 12672)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1607, file: !1283, line: 1031, baseType: !652, size: 64, offset: 12736)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1607, file: !1283, line: 1032, baseType: !2922, size: 192, offset: 12800)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1283, line: 324, size: 192, elements: !2923)
!2923 = !{!2924, !2925, !2926}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2922, file: !1283, line: 326, baseType: !652, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2922, file: !1283, line: 327, baseType: !652, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2922, file: !1283, line: 328, baseType: !798, size: 32, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1607, file: !1283, line: 1041, baseType: !549, size: 64, offset: 12992)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1607, file: !1283, line: 1042, baseType: !549, size: 64, offset: 13056)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1607, file: !1283, line: 1045, baseType: !652, size: 64, offset: 13120)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1607, file: !1283, line: 1048, baseType: !652, size: 64, offset: 13184)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1607, file: !1283, line: 1051, baseType: !549, size: 64, offset: 13248)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1607, file: !1283, line: 1052, baseType: !549, size: 64, offset: 13312)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1607, file: !1283, line: 1055, baseType: !2934, size: 640, offset: 13376)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2935, line: 132, size: 640, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2936 = !{!2937, !2943, !2944}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2934, file: !2935, line: 133, baseType: !2938, size: 576)
!2938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2939, size: 576, elements: !500)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2935, line: 117, size: 192, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2939, file: !2935, line: 118, baseType: !652, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2939, file: !2935, line: 119, baseType: !1778, size: 128, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2934, file: !2935, line: 134, baseType: !7, size: 32, offset: 576)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2934, file: !2935, line: 135, baseType: !7, size: 32, offset: 608)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1607, file: !1283, line: 1058, baseType: !2946, size: 448, offset: 14016)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2935, line: 144, size: 448, elements: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2946, file: !2935, line: 145, baseType: !1060, size: 128, align: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2946, file: !2935, line: 146, baseType: !840, size: 256, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2946, file: !2935, line: 147, baseType: !7, size: 32, offset: 384)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1607, file: !1283, line: 1064, baseType: !2039, size: 64, offset: 14464)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1607, file: !1283, line: 1067, baseType: !2039, size: 64, offset: 14528)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1607, file: !1283, line: 1070, baseType: !2039, size: 64, offset: 14592)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1607, file: !1283, line: 1074, baseType: !2066, size: 64, offset: 14656)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1607, file: !1283, line: 1084, baseType: !2956, size: 128, offset: 14720)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 128, elements: !2957)
!2957 = !{!2958}
!2958 = !DISubrange(count: 16)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1607, file: !1283, line: 1086, baseType: !2960, size: 64, offset: 14848)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1283, line: 55, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1607, file: !1283, line: 1089, baseType: !2963, size: 64, offset: 14912)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2964, line: 12, size: 64, elements: !2965)
!2964 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2965 = !{!2966}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2963, file: !2964, line: 13, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2964, line: 8, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1607, file: !1283, line: 1090, baseType: !2970, size: 128, offset: 14976)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2971, line: 13, size: 128, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2970, file: !2971, line: 14, baseType: !379, size: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1607, file: !1283, line: 1097, baseType: !2975, size: 64, offset: 15104)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1283, line: 50, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1607, file: !1283, line: 1100, baseType: !2978, size: 64, offset: 15168)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1283, line: 1100, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1607, file: !1283, line: 1103, baseType: !2981, size: 64, offset: 15232)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1283, line: 53, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1607, file: !1283, line: 1107, baseType: !2984, size: 64, offset: 15296)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2986, line: 31, size: 576, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2987 = !{!2988, !2989, !2992, !2995, !2998, !2999, !3002, !3005, !3006}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2985, file: !2986, line: 32, baseType: !404, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2985, file: !2986, line: 33, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2986, line: 9, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2985, file: !2986, line: 34, baseType: !2993, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2986, line: 10, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2985, file: !2986, line: 35, baseType: !2996, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2986, line: 8, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2985, file: !2986, line: 36, baseType: !1983, size: 64, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2985, file: !2986, line: 37, baseType: !3000, size: 64, offset: 320)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2068, line: 34, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2985, file: !2986, line: 38, baseType: !3003, size: 64, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2986, line: 38, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2985, file: !2986, line: 39, baseType: !3003, size: 64, offset: 448)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2985, file: !2986, line: 40, baseType: !3007, size: 64, offset: 512)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2986, line: 12, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1607, file: !1283, line: 1110, baseType: !3010, size: 64, offset: 15360)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3012, line: 93, size: 8768, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3061, !3070, !3071, !3073, !3074, !3075, !3078, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3116, !3117, !3124, !3134, !3137, !3138, !3141, !3142, !3143, !3144, !3145, !3146}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3011, file: !3012, line: 94, baseType: !404, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3011, file: !3012, line: 95, baseType: !408, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3011, file: !3012, line: 96, baseType: !109, size: 32, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3011, file: !3012, line: 97, baseType: !109, size: 32, offset: 96)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3011, file: !3012, line: 98, baseType: !379, size: 128, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3011, file: !3012, line: 100, baseType: !1593, size: 192, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3011, file: !3012, line: 103, baseType: !1606, size: 64, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3011, file: !3012, line: 106, baseType: !3022, size: 192, offset: 512)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2018, line: 32, size: 192, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3022, file: !2018, line: 33, baseType: !379, size: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3022, file: !2018, line: 34, baseType: !3026, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3027, line: 25, baseType: !3028)
!3027 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3027, line: 23, size: 64, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3028, file: !3027, line: 24, baseType: !1849, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3011, file: !3012, line: 109, baseType: !1209, size: 64, offset: 704)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3011, file: !3012, line: 112, baseType: !109, size: 32, offset: 768)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3011, file: !3012, line: 114, baseType: !109, size: 32, offset: 800)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3011, file: !3012, line: 115, baseType: !1606, size: 64, offset: 832)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3011, file: !3012, line: 118, baseType: !109, size: 32, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3011, file: !3012, line: 119, baseType: !7, size: 32, offset: 928)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3011, file: !3012, line: 121, baseType: !3038, size: 64, offset: 960)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3012, line: 80, size: 448, elements: !3040)
!3040 = !{!3041, !3042, !3048}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3039, file: !3012, line: 81, baseType: !408, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3039, file: !3012, line: 82, baseType: !3043, size: 128, offset: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3012, line: 75, size: 128, elements: !3044)
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3043, file: !3012, line: 76, baseType: !1606, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3043, file: !3012, line: 77, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3039, file: !3012, line: 83, baseType: !789, size: 256, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3011, file: !3012, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3011, file: !3012, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3011, file: !3012, line: 138, baseType: !7, size: 32, offset: 1056)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3011, file: !3012, line: 139, baseType: !379, size: 128, offset: 1088)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3011, file: !3012, line: 142, baseType: !1722, size: 512, offset: 1216)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3011, file: !3012, line: 143, baseType: !1730, size: 64, offset: 1728)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3011, file: !3012, line: 150, baseType: !3056, size: 256, offset: 1792)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3057, size: 256, elements: !959)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3012, line: 38, size: 128, elements: !3058)
!3058 = !{!3059, !3060}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3057, file: !3012, line: 39, baseType: !652, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3057, file: !3012, line: 40, baseType: !652, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3011, file: !3012, line: 156, baseType: !3062, size: 192, offset: 2048)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3012, line: 66, size: 192, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3062, file: !3012, line: 67, baseType: !3065, size: 192)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3012, line: 47, size: 192, elements: !3066)
!3066 = !{!3067, !3068, !3069}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3065, file: !3012, line: 48, baseType: !846, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3065, file: !3012, line: 49, baseType: !846, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3065, file: !3012, line: 50, baseType: !846, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3011, file: !3012, line: 160, baseType: !2934, size: 640, offset: 2240)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3011, file: !3012, line: 163, baseType: !3072, size: 256, offset: 2880)
!3072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1966, size: 256, elements: !1070)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3011, file: !3012, line: 169, baseType: !1966, size: 64, offset: 3136)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3011, file: !3012, line: 172, baseType: !109, size: 32, offset: 3200)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3011, file: !3012, line: 174, baseType: !3076, size: 64, offset: 3264)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3012, line: 174, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3011, file: !3012, line: 185, baseType: !3079, size: 64, offset: 3328)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !621, line: 860, baseType: !3080)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !621, line: 853, size: 64, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3080, file: !621, line: 858, baseType: !620, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3080, file: !621, line: 859, baseType: !433, size: 32, offset: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3011, file: !3012, line: 186, baseType: !652, size: 64, offset: 3392)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3011, file: !3012, line: 186, baseType: !652, size: 64, offset: 3456)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3011, file: !3012, line: 186, baseType: !652, size: 64, offset: 3520)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3011, file: !3012, line: 186, baseType: !652, size: 64, offset: 3584)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3011, file: !3012, line: 187, baseType: !652, size: 64, offset: 3648)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3011, file: !3012, line: 188, baseType: !652, size: 64, offset: 3712)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3011, file: !3012, line: 189, baseType: !2922, size: 192, offset: 3776)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3011, file: !3012, line: 190, baseType: !549, size: 64, offset: 3968)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3011, file: !3012, line: 190, baseType: !549, size: 64, offset: 4032)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3011, file: !3012, line: 190, baseType: !549, size: 64, offset: 4096)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3011, file: !3012, line: 190, baseType: !549, size: 64, offset: 4160)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3011, file: !3012, line: 191, baseType: !549, size: 64, offset: 4224)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3011, file: !3012, line: 191, baseType: !549, size: 64, offset: 4288)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3011, file: !3012, line: 191, baseType: !549, size: 64, offset: 4352)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3011, file: !3012, line: 191, baseType: !549, size: 64, offset: 4416)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3011, file: !3012, line: 192, baseType: !549, size: 64, offset: 4480)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3011, file: !3012, line: 192, baseType: !549, size: 64, offset: 4544)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3011, file: !3012, line: 192, baseType: !549, size: 64, offset: 4608)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3011, file: !3012, line: 192, baseType: !549, size: 64, offset: 4672)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3011, file: !3012, line: 193, baseType: !549, size: 64, offset: 4736)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3011, file: !3012, line: 193, baseType: !549, size: 64, offset: 4800)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3011, file: !3012, line: 194, baseType: !3106, size: 448, offset: 4864)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3107, line: 12, size: 448, elements: !3108)
!3107 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3114, !3115}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3106, file: !3107, line: 15, baseType: !652, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3106, file: !3107, line: 17, baseType: !652, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3106, file: !3107, line: 19, baseType: !652, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3106, file: !3107, line: 21, baseType: !652, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3106, file: !3107, line: 29, baseType: !652, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3106, file: !3107, line: 35, baseType: !652, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3106, file: !3107, line: 44, baseType: !652, size: 64, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3011, file: !3012, line: 202, baseType: !654, size: 64, offset: 5312)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3011, file: !3012, line: 213, baseType: !3118, size: 2048, offset: 5376)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3119, size: 2048, elements: !2957)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3120, line: 43, size: 128, elements: !3121)
!3120 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3119, file: !3120, line: 44, baseType: !548, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3119, file: !3120, line: 45, baseType: !548, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3011, file: !3012, line: 216, baseType: !3125, size: 448, offset: 7424)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3012, line: 30, size: 448, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3125, file: !3012, line: 31, baseType: !109, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3125, file: !3012, line: 32, baseType: !535, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3125, file: !3012, line: 33, baseType: !549, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3125, file: !3012, line: 34, baseType: !652, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3125, file: !3012, line: 34, baseType: !652, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3125, file: !3012, line: 35, baseType: !549, size: 64, offset: 320)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3125, file: !3012, line: 35, baseType: !549, size: 64, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3011, file: !3012, line: 219, baseType: !3135, size: 64, offset: 7872)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3012, line: 219, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3011, file: !3012, line: 222, baseType: !7, size: 32, offset: 7936)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3011, file: !3012, line: 223, baseType: !3139, size: 64, offset: 8000)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3012, line: 223, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3011, file: !3012, line: 230, baseType: !920, size: 8, offset: 8064)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3011, file: !3012, line: 231, baseType: !978, size: 16, offset: 8080)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3011, file: !3012, line: 232, baseType: !978, size: 16, offset: 8096)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3011, file: !3012, line: 234, baseType: !1898, size: 64, offset: 8128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3011, file: !3012, line: 237, baseType: !840, size: 256, offset: 8192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3011, file: !3012, line: 243, baseType: !1500, size: 320, offset: 8448)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1607, file: !1283, line: 1111, baseType: !3148, size: 64, offset: 15424)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3012, line: 20, size: 16640, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3149, file: !3012, line: 21, baseType: !433, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3149, file: !3012, line: 22, baseType: !404, size: 32, offset: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3149, file: !3012, line: 23, baseType: !1593, size: 192, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3149, file: !3012, line: 24, baseType: !3155, size: 16384, offset: 256)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3156, size: 16384, elements: !504)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2018, line: 51, size: 256, elements: !3157)
!3157 = !{!3158}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3156, file: !2018, line: 52, baseType: !3159, size: 256)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2018, line: 37, size: 256, elements: !3160)
!3160 = !{!3161, !3168, !3169, !3173}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3159, file: !2018, line: 39, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3163, line: 83, baseType: !3164)
!3163 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3163, line: 82, baseType: !3166)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !109}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3159, file: !2018, line: 40, baseType: !549, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3159, file: !2018, line: 46, baseType: !3170, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3163, line: 86, baseType: !3171)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3163, line: 85, baseType: !1204)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3159, file: !2018, line: 48, baseType: !3026, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1607, file: !1283, line: 1112, baseType: !3026, size: 64, offset: 15488)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1607, file: !1283, line: 1113, baseType: !3026, size: 64, offset: 15552)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1607, file: !1283, line: 1115, baseType: !3026, size: 64, offset: 15616)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1607, file: !1283, line: 1116, baseType: !3022, size: 192, offset: 15680)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1607, file: !1283, line: 1117, baseType: !549, size: 64, offset: 15872)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1607, file: !1283, line: 1118, baseType: !546, size: 64, offset: 15936)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1607, file: !1283, line: 1119, baseType: !7, size: 32, offset: 16000)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1607, file: !1283, line: 1121, baseType: !1059, size: 64, offset: 16064)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1607, file: !1283, line: 1125, baseType: !3183, size: 64, offset: 16128)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1283, line: 43, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1607, file: !1283, line: 1127, baseType: !585, size: 32, offset: 16192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1607, file: !1283, line: 1128, baseType: !7, size: 32, offset: 16224)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1607, file: !1283, line: 1130, baseType: !3188, size: 128, offset: 16256)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3189, line: 37, size: 128, elements: !3190)
!3189 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3190 = !{!3191, !3192, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3188, file: !3189, line: 38, baseType: !109, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3188, file: !3189, line: 39, baseType: !408, size: 32, offset: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3188, file: !3189, line: 40, baseType: !3194, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3189, line: 24, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1607, file: !1283, line: 1131, baseType: !3197, size: 256, offset: 16384)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3198, line: 12, size: 256, elements: !3199)
!3198 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3199 = !{!3200, !3201, !3202, !3203}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3197, file: !3198, line: 13, baseType: !499, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3197, file: !3198, line: 14, baseType: !549, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3197, file: !3198, line: 15, baseType: !549, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3197, file: !3198, line: 16, baseType: !920, size: 8, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1607, file: !1283, line: 1134, baseType: !652, size: 64, offset: 16640)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1607, file: !1283, line: 1135, baseType: !652, size: 64, offset: 16704)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1607, file: !1283, line: 1138, baseType: !433, size: 32, offset: 16768)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1607, file: !1283, line: 1141, baseType: !798, size: 32, offset: 16800)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1607, file: !1283, line: 1143, baseType: !3209, size: 64, offset: 16832)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1283, line: 735, size: 64, elements: !3210)
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3209, file: !1283, line: 736, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1607, file: !1283, line: 1147, baseType: !1781, size: 128, offset: 16896)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1607, file: !1283, line: 1149, baseType: !1606, size: 64, offset: 17024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1607, file: !1283, line: 1151, baseType: !3216, size: 64, offset: 17088)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1283, line: 1151, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1607, file: !1283, line: 1188, baseType: !372, size: 64, offset: 17152)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1607, file: !1283, line: 1191, baseType: !3220, size: 64, offset: 17216)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1283, line: 44, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1607, file: !1283, line: 1194, baseType: !3223, size: 64, offset: 17280)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1283, line: 45, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1607, file: !1283, line: 1197, baseType: !3226, size: 64, offset: 17344)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1283, line: 61, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1607, file: !1283, line: 1199, baseType: !3229, size: 64, offset: 17408)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3231, line: 99, size: 128, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3230, file: !3231, line: 100, baseType: !844, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3230, file: !3231, line: 101, baseType: !408, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3230, file: !3231, line: 103, baseType: !469, size: 16, offset: 96)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1607, file: !1283, line: 1202, baseType: !3237, size: 64, offset: 17472)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1283, line: 48, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1607, file: !1283, line: 1205, baseType: !549, size: 64, offset: 17536)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1607, file: !1283, line: 1206, baseType: !3241, size: 64, offset: 17600)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2018, line: 14, baseType: !3243)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2018, line: 12, size: 384, elements: !3244)
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, scope: !3243, file: !2018, line: 13, baseType: !3246, size: 384)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !2018, line: 13, size: 384, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3246, file: !2018, line: 13, baseType: !109, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3246, file: !2018, line: 13, baseType: !109, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3246, file: !2018, line: 13, baseType: !109, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3246, file: !2018, line: 13, baseType: !3252, size: 256, offset: 128)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3253, line: 37, size: 256, elements: !3254)
!3253 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3254 = !{!3255, !3260, !3273, !3279, !3288, !3315, !3320}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3252, file: !3253, line: 42, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3253, line: 39, size: 64, elements: !3257)
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3256, file: !3253, line: 40, baseType: !2899, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3256, file: !3253, line: 41, baseType: !591, size: 32, offset: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3252, file: !3253, line: 50, baseType: !3261, size: 192)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3253, line: 45, size: 192, elements: !3262)
!3262 = !{!3263, !3265, !3266, !3272}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3261, file: !3253, line: 46, baseType: !3264, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !533, line: 95, baseType: !109)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3261, file: !3253, line: 47, baseType: !109, size: 32, offset: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3261, file: !3253, line: 48, baseType: !3267, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3253, line: 11, baseType: !3268)
!3268 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3253, line: 8, size: 64, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3268, file: !3253, line: 9, baseType: !109, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3268, file: !3253, line: 10, baseType: !372, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3261, file: !3253, line: 49, baseType: !109, size: 32, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3252, file: !3253, line: 57, baseType: !3274, size: 128)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3253, line: 53, size: 128, elements: !3275)
!3275 = !{!3276, !3277, !3278}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3274, file: !3253, line: 54, baseType: !2899, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3274, file: !3253, line: 55, baseType: !591, size: 32, offset: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3274, file: !3253, line: 56, baseType: !3267, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3252, file: !3253, line: 66, baseType: !3280, size: 256)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3253, line: 60, size: 256, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3287}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3280, file: !3253, line: 61, baseType: !2899, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3280, file: !3253, line: 62, baseType: !591, size: 32, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3280, file: !3253, line: 63, baseType: !109, size: 32, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3280, file: !3253, line: 64, baseType: !3286, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !533, line: 94, baseType: !534)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3280, file: !3253, line: 65, baseType: !3286, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3252, file: !3253, line: 105, baseType: !3289, size: 256)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3253, line: 69, size: 256, elements: !3290)
!3290 = !{!3291, !3292}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3289, file: !3253, line: 70, baseType: !372, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !3253, line: 79, baseType: !3293, size: 192, offset: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3289, file: !3253, line: 79, size: 192, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3304, !3309}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3293, file: !3253, line: 81, baseType: !109, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3293, file: !3253, line: 86, baseType: !978, size: 16)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3293, file: !3253, line: 92, baseType: !3298, size: 192)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3253, line: 88, size: 192, elements: !3299)
!3299 = !{!3300, !3302, !3303}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3298, file: !3253, line: 89, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 64, elements: !1765)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3298, file: !3253, line: 90, baseType: !372, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3298, file: !3253, line: 91, baseType: !372, size: 64, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3293, file: !3253, line: 97, baseType: !3305, size: 96)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3253, line: 94, size: 96, elements: !3306)
!3306 = !{!3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3305, file: !3253, line: 95, baseType: !3301, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3305, file: !3253, line: 96, baseType: !649, size: 32, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3293, file: !3253, line: 103, baseType: !3310, size: 128)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3253, line: 99, size: 128, elements: !3311)
!3311 = !{!3312, !3313, !3314}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3310, file: !3253, line: 100, baseType: !549, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3310, file: !3253, line: 101, baseType: !649, size: 32, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3310, file: !3253, line: 102, baseType: !649, size: 32, offset: 96)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3252, file: !3253, line: 111, baseType: !3316, size: 128)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3253, line: 108, size: 128, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3316, file: !3253, line: 109, baseType: !535, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3316, file: !3253, line: 110, baseType: !109, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3252, file: !3253, line: 118, baseType: !3321, size: 128)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3253, line: 114, size: 128, elements: !3322)
!3322 = !{!3323, !3324, !3325}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3321, file: !3253, line: 115, baseType: !372, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3321, file: !3253, line: 116, baseType: !109, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3321, file: !3253, line: 117, baseType: !7, size: 32, offset: 96)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1607, file: !1283, line: 1208, baseType: !3106, size: 448, offset: 17664)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1607, file: !1283, line: 1215, baseType: !652, size: 64, offset: 18112)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1607, file: !1283, line: 1217, baseType: !652, size: 64, offset: 18176)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1607, file: !1283, line: 1219, baseType: !652, size: 64, offset: 18240)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1607, file: !1283, line: 1223, baseType: !3331, size: 64, offset: 18304)
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3332, line: 99, baseType: !3333)
!3332 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3332, line: 99, size: 64, elements: !3334)
!3334 = !{!3335}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3333, file: !3332, line: 99, baseType: !1849, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1607, file: !1283, line: 1225, baseType: !620, size: 32, offset: 18368)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1607, file: !1283, line: 1226, baseType: !109, size: 32, offset: 18400)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1607, file: !1283, line: 1227, baseType: !109, size: 32, offset: 18432)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1607, file: !1283, line: 1231, baseType: !3340, size: 64, offset: 18496)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1283, line: 1231, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1607, file: !1283, line: 1233, baseType: !379, size: 128, offset: 18560)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1607, file: !1283, line: 1240, baseType: !3344, size: 64, offset: 18688)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1283, line: 62, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1607, file: !1283, line: 1242, baseType: !3347, size: 64, offset: 18752)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1283, line: 1242, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1607, file: !1283, line: 1244, baseType: !379, size: 128, offset: 18816)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1607, file: !1283, line: 1245, baseType: !3351, size: 64, offset: 18944)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1283, line: 51, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1607, file: !1283, line: 1246, baseType: !840, size: 256, offset: 19008)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1607, file: !1283, line: 1247, baseType: !7, size: 32, offset: 19264)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1607, file: !1283, line: 1250, baseType: !3356, size: 64, offset: 19328)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1283, line: 57, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1607, file: !1283, line: 1251, baseType: !840, size: 256, offset: 19392)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1607, file: !1283, line: 1252, baseType: !379, size: 128, offset: 19648)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1607, file: !1283, line: 1259, baseType: !2588, size: 64, offset: 19776)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1607, file: !1283, line: 1260, baseType: !978, size: 16, offset: 19840)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1607, file: !1283, line: 1261, baseType: !978, size: 16, offset: 19856)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1607, file: !1283, line: 1314, baseType: !3364, size: 64, offset: 19904)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3366, line: 62, size: 256, align: 256, elements: !3367)
!3366 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3367 = !{!3368, !3369, !3370, !3371, !3372, !3373, !3374}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3365, file: !3366, line: 75, baseType: !649, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3365, file: !3366, line: 90, baseType: !649, size: 32, offset: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3365, file: !3366, line: 112, baseType: !653, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3365, file: !3366, line: 132, baseType: !649, size: 32, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3365, file: !3366, line: 140, baseType: !649, size: 32, offset: 160)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3365, file: !3366, line: 149, baseType: !649, size: 32, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3365, file: !3366, line: 154, baseType: !3375, offset: 224)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, elements: !2032)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1607, file: !1283, line: 1315, baseType: !648, size: 32, offset: 19968)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1607, file: !1283, line: 1316, baseType: !648, size: 32, offset: 20000)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1607, file: !1283, line: 1321, baseType: !549, size: 64, offset: 20032)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1607, file: !1283, line: 1325, baseType: !109, size: 32, offset: 20096)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1607, file: !1283, line: 1326, baseType: !109, size: 32, offset: 20128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1607, file: !1283, line: 1327, baseType: !109, size: 32, offset: 20160)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1607, file: !1283, line: 1328, baseType: !109, size: 32, offset: 20192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1607, file: !1283, line: 1329, baseType: !1060, size: 128, align: 64, offset: 20224)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1607, file: !1283, line: 1332, baseType: !3385, size: 128, offset: 20352)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3386, line: 51, size: 128, elements: !3387)
!3386 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3387 = !{!3388, !3393, !3394}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3385, file: !3386, line: 60, baseType: !3389, size: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3390, line: 7, size: 64, elements: !3391)
!3390 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3389, file: !3390, line: 12, baseType: !1846, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3385, file: !3386, line: 63, baseType: !920, size: 8, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3385, file: !3386, line: 70, baseType: !920, size: 8, offset: 72)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1607, file: !1283, line: 1335, baseType: !2640, size: 64, offset: 20480)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1607, file: !1283, line: 1337, baseType: !3397, size: 128, offset: 20544)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3386, line: 39, size: 128, elements: !3398)
!3398 = !{!3399, !3400, !3401}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3397, file: !3386, line: 40, baseType: !2427, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3397, file: !3386, line: 42, baseType: !649, size: 32, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3397, file: !3386, line: 43, baseType: !649, size: 32, offset: 96)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1607, file: !1283, line: 1340, baseType: !3403, size: 64, offset: 20672)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1283, line: 69, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1607, file: !1283, line: 1351, baseType: !109, size: 32, offset: 20736)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1607, file: !1283, line: 1352, baseType: !109, size: 32, offset: 20768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1607, file: !1283, line: 1354, baseType: !549, size: 64, offset: 20800)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1607, file: !1283, line: 1364, baseType: !652, size: 64, offset: 20864)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1607, file: !1283, line: 1365, baseType: !652, size: 64, offset: 20928)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1607, file: !1283, line: 1412, baseType: !549, size: 64, offset: 20992)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1607, file: !1283, line: 1453, baseType: !3412, size: 64, offset: 21056)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1283, line: 1453, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1607, file: !1283, line: 1457, baseType: !3415, size: 64, offset: 21120)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3417)
!3417 = !{!3418, !3419, !3438, !3441, !3442, !3475, !3485}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3416, file: !68, line: 62, baseType: !67, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3416, file: !68, line: 64, baseType: !3420, size: 192, offset: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3416, file: !68, line: 64, size: 192, elements: !3421)
!3421 = !{!3422, !3433}
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !68, line: 65, baseType: !3423, size: 192)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !68, line: 65, size: 192, elements: !3424)
!3424 = !{!3425, !3432}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3423, file: !68, line: 66, baseType: !3426, size: 128)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3427, line: 50, size: 128, elements: !3428)
!3427 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3428 = !{!3429, !3430, !3431}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3426, file: !3427, line: 52, baseType: !549, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3426, file: !3427, line: 54, baseType: !7, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3426, file: !3427, line: 55, baseType: !7, size: 32, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3423, file: !68, line: 67, baseType: !549, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !68, line: 70, baseType: !3434, size: 192)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !68, line: 70, size: 192, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3434, file: !68, line: 71, baseType: !1060, size: 128, align: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3434, file: !68, line: 72, baseType: !549, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3416, file: !68, line: 76, baseType: !3439, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3416, file: !68, line: 77, baseType: !549, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3416, file: !68, line: 79, baseType: !3443, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3427, line: 25, size: 256, elements: !3445)
!3445 = !{!3446, !3452, !3456}
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3427, line: 26, baseType: !3447, size: 128)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3427, line: 26, size: 128, elements: !3448)
!3448 = !{!3449, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3447, file: !3427, line: 27, baseType: !3450, size: 128)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 128, elements: !2957)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3447, file: !3427, line: 28, baseType: !3450, size: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3444, file: !3427, line: 31, baseType: !3453, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3455)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3427, line: 23, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3427, line: 33, baseType: !3457, size: 64, offset: 192)
!3457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3427, line: 33, size: 64, elements: !3458)
!3458 = !{!3459, !3465, !3470}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3457, file: !3427, line: 38, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3457, file: !3427, line: 34, size: 64, elements: !3461)
!3461 = !{!3462, !3463, !3464}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3460, file: !3427, line: 35, baseType: !836, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3460, file: !3427, line: 36, baseType: !457, size: 8, offset: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3460, file: !3427, line: 37, baseType: !457, size: 8, offset: 40)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3457, file: !3427, line: 42, baseType: !3466, size: 16)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3457, file: !3427, line: 39, size: 16, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3466, file: !3427, line: 40, baseType: !457, size: 8)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3466, file: !3427, line: 41, baseType: !457, size: 8, offset: 8)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3457, file: !3427, line: 46, baseType: !3471, size: 16)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3457, file: !3427, line: 43, size: 16, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3471, file: !3427, line: 44, baseType: !457, size: 8)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3471, file: !3427, line: 45, baseType: !457, size: 8, offset: 8)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3416, file: !68, line: 81, baseType: !3476, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3477, file: !68, line: 86, baseType: !3439, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3477, file: !68, line: 87, baseType: !549, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3477, file: !68, line: 88, baseType: !549, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3477, file: !68, line: 89, baseType: !549, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3477, file: !68, line: 90, baseType: !920, size: 8, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3477, file: !68, line: 92, baseType: !3476, size: 64, offset: 320)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3416, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1607, file: !1283, line: 1463, baseType: !3487, offset: 21184)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1283, line: 739, elements: !1128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1607, file: !1283, line: 1470, baseType: !1060, size: 128, align: 64, offset: 21184)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1607, file: !1283, line: 1471, baseType: !404, size: 32, offset: 21312)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1607, file: !1283, line: 1472, baseType: !109, size: 32, offset: 21344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1607, file: !1283, line: 1474, baseType: !1606, size: 64, offset: 21376)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1607, file: !1283, line: 1475, baseType: !1082, size: 320, offset: 21440)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1607, file: !1283, line: 1478, baseType: !3494, size: 64, offset: 21760)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1283, line: 1478, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1607, file: !1283, line: 1482, baseType: !404, size: 32, offset: 21824)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1607, file: !1283, line: 1489, baseType: !372, size: 64, offset: 21888)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1607, file: !1283, line: 1504, baseType: !372, size: 64, offset: 21952)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1607, file: !1283, line: 1505, baseType: !653, size: 64, offset: 22016)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1607, file: !1283, line: 1506, baseType: !652, size: 64, offset: 22080)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1607, file: !1283, line: 1507, baseType: !653, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1607, file: !1283, line: 1508, baseType: !653, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1607, file: !1283, line: 1509, baseType: !653, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1607, file: !1283, line: 1510, baseType: !1060, size: 128, align: 64, offset: 22208)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1607, file: !1283, line: 1511, baseType: !109, size: 32, offset: 22336)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1607, file: !1283, line: 1515, baseType: !3507, size: 64, offset: 22400)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1629, line: 56, size: 64, elements: !3508)
!3508 = !{!3509}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3507, file: !1629, line: 57, baseType: !1632, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1607, file: !1283, line: 1518, baseType: !3507, size: 64, offset: 22464)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1607, file: !1283, line: 1528, baseType: !1060, size: 128, align: 64, offset: 22528)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1607, file: !1283, line: 1552, baseType: !3513, size: 35328, offset: 23040)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3514, line: 430, size: 35328, elements: !3515)
!3514 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3515 = !{!3516, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3545, !3546, !3547, !3548, !3549, !3550, !3553, !3554, !3555, !3556}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3513, file: !3514, line: 432, baseType: !3517, size: 192)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3518, size: 192, elements: !500)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3519, line: 16, size: 64, elements: !3520)
!3519 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3518, file: !3519, line: 17, baseType: !467, size: 16)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3518, file: !3519, line: 18, baseType: !467, size: 16, offset: 16)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3518, file: !3519, line: 19, baseType: !467, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3518, file: !3519, line: 19, baseType: !467, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3518, file: !3519, line: 19, baseType: !467, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3518, file: !3519, line: 19, baseType: !467, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3518, file: !3519, line: 19, baseType: !467, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3518, file: !3519, line: 20, baseType: !467, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3518, file: !3519, line: 20, baseType: !467, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3518, file: !3519, line: 20, baseType: !467, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3518, file: !3519, line: 20, baseType: !467, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3518, file: !3519, line: 20, baseType: !467, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3518, file: !3519, line: 20, baseType: !467, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3513, file: !3514, line: 436, baseType: !549, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3513, file: !3514, line: 440, baseType: !469, size: 16, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3513, file: !3514, line: 441, baseType: !469, size: 16, offset: 272)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3513, file: !3514, line: 442, baseType: !469, size: 16, offset: 288)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3513, file: !3514, line: 443, baseType: !469, size: 16, offset: 304)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3513, file: !3514, line: 447, baseType: !549, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3513, file: !3514, line: 448, baseType: !549, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3513, file: !3514, line: 459, baseType: !3542, size: 256, offset: 448)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3543, size: 256, elements: !1070)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3514, line: 428, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3513, file: !3514, line: 461, baseType: !549, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3513, file: !3514, line: 463, baseType: !549, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3513, file: !3514, line: 465, baseType: !549, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3513, file: !3514, line: 466, baseType: !549, size: 64, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3513, file: !3514, line: 467, baseType: !549, size: 64, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3513, file: !3514, line: 473, baseType: !3551, size: 64, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3514, line: 10, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3513, file: !3514, line: 480, baseType: !549, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3513, file: !3514, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3513, file: !3514, line: 491, baseType: !648, size: 32, offset: 1184)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3513, file: !3514, line: 501, baseType: !3557, size: 33792, offset: 1536)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3558, line: 448, size: 33792, elements: !3559)
!3558 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3559 = !{!3560, !3561, !3562, !3724, !3725, !3731, !3732}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3557, file: !3558, line: 461, baseType: !7, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3557, file: !3558, line: 468, baseType: !549, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3557, file: !3558, line: 476, baseType: !3563, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3558, line: 356, size: 33280, align: 512, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3564, file: !3558, line: 358, baseType: !7, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3564, file: !3558, line: 361, baseType: !7, size: 32, offset: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3564, file: !3558, line: 364, baseType: !652, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3564, file: !3558, line: 367, baseType: !652, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3564, file: !3558, line: 370, baseType: !652, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3564, file: !3558, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3564, file: !3558, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3564, file: !3558, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3564, file: !3558, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3564, file: !3558, line: 397, baseType: !3576, size: 32768, offset: 512)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3558, line: 348, size: 32768, elements: !3577)
!3577 = !{!3578, !3593, !3630, !3707, !3720}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3576, file: !3558, line: 349, baseType: !3579, size: 896)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3558, line: 12, size: 896, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3592}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3579, file: !3558, line: 13, baseType: !648, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3579, file: !3558, line: 14, baseType: !648, size: 32, offset: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3579, file: !3558, line: 15, baseType: !648, size: 32, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3579, file: !3558, line: 16, baseType: !648, size: 32, offset: 96)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3579, file: !3558, line: 17, baseType: !648, size: 32, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3579, file: !3558, line: 18, baseType: !648, size: 32, offset: 160)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3579, file: !3558, line: 19, baseType: !648, size: 32, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3579, file: !3558, line: 22, baseType: !3589, size: 640, offset: 224)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 640, elements: !3590)
!3590 = !{!3591}
!3591 = !DISubrange(count: 20)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3579, file: !3558, line: 25, baseType: !648, size: 32, offset: 864)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3576, file: !3558, line: 350, baseType: !3594, size: 4096, align: 128)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3558, line: 34, size: 4096, align: 128, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3615, !3616, !3617, !3619, !3621, !3625}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3594, file: !3558, line: 35, baseType: !467, size: 16)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3594, file: !3558, line: 36, baseType: !467, size: 16, offset: 16)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3594, file: !3558, line: 37, baseType: !467, size: 16, offset: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3594, file: !3558, line: 38, baseType: !467, size: 16, offset: 48)
!3600 = !DIDerivedType(tag: DW_TAG_member, scope: !3594, file: !3558, line: 39, baseType: !3601, size: 128, offset: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3594, file: !3558, line: 39, size: 128, elements: !3602)
!3602 = !{!3603, !3608}
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3601, file: !3558, line: 40, baseType: !3604, size: 128)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3601, file: !3558, line: 40, size: 128, elements: !3605)
!3605 = !{!3606, !3607}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3604, file: !3558, line: 41, baseType: !652, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3604, file: !3558, line: 42, baseType: !652, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3601, file: !3558, line: 44, baseType: !3609, size: 128)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3601, file: !3558, line: 44, size: 128, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3609, file: !3558, line: 45, baseType: !648, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3609, file: !3558, line: 46, baseType: !648, size: 32, offset: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3609, file: !3558, line: 47, baseType: !648, size: 32, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3609, file: !3558, line: 48, baseType: !648, size: 32, offset: 96)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3594, file: !3558, line: 51, baseType: !648, size: 32, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3594, file: !3558, line: 52, baseType: !648, size: 32, offset: 224)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3594, file: !3558, line: 55, baseType: !3618, size: 1024, offset: 256)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 1024, elements: !661)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3594, file: !3558, line: 58, baseType: !3620, size: 2048, offset: 1280)
!3620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 2048, elements: !504)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3594, file: !3558, line: 60, baseType: !3622, size: 384, offset: 3328)
!3622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 384, elements: !3623)
!3623 = !{!3624}
!3624 = !DISubrange(count: 12)
!3625 = !DIDerivedType(tag: DW_TAG_member, scope: !3594, file: !3558, line: 62, baseType: !3626, size: 384, offset: 3712)
!3626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3594, file: !3558, line: 62, size: 384, elements: !3627)
!3627 = !{!3628, !3629}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3626, file: !3558, line: 63, baseType: !3622, size: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3626, file: !3558, line: 64, baseType: !3622, size: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3576, file: !3558, line: 351, baseType: !3631, size: 1088)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3558, line: 79, size: 1088, elements: !3632)
!3632 = !{!3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3706}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3631, file: !3558, line: 80, baseType: !648, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3631, file: !3558, line: 81, baseType: !648, size: 32, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3631, file: !3558, line: 82, baseType: !648, size: 32, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3631, file: !3558, line: 83, baseType: !648, size: 32, offset: 96)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3631, file: !3558, line: 84, baseType: !648, size: 32, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3631, file: !3558, line: 85, baseType: !648, size: 32, offset: 160)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3631, file: !3558, line: 86, baseType: !648, size: 32, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3631, file: !3558, line: 88, baseType: !3589, size: 640, offset: 224)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3631, file: !3558, line: 89, baseType: !457, size: 8, offset: 864)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3631, file: !3558, line: 90, baseType: !457, size: 8, offset: 872)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3631, file: !3558, line: 91, baseType: !457, size: 8, offset: 880)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3631, file: !3558, line: 92, baseType: !457, size: 8, offset: 888)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3631, file: !3558, line: 93, baseType: !457, size: 8, offset: 896)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3631, file: !3558, line: 94, baseType: !457, size: 8, offset: 904)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3631, file: !3558, line: 95, baseType: !3648, size: 64, offset: 960)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3650, line: 11, size: 128, elements: !3651)
!3650 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3649, file: !3650, line: 12, baseType: !535, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3649, file: !3650, line: 13, baseType: !3654, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3656, line: 103, size: 1344, elements: !3657)
!3656 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3686, !3687, !3688}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3655, file: !3656, line: 109, baseType: !549, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3655, file: !3656, line: 110, baseType: !549, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3655, file: !3656, line: 111, baseType: !549, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3655, file: !3656, line: 112, baseType: !549, size: 64, offset: 192)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3655, file: !3656, line: 113, baseType: !549, size: 64, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3655, file: !3656, line: 114, baseType: !549, size: 64, offset: 320)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3655, file: !3656, line: 117, baseType: !549, size: 64, offset: 384)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3655, file: !3656, line: 118, baseType: !549, size: 64, offset: 448)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3655, file: !3656, line: 119, baseType: !549, size: 64, offset: 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3655, file: !3656, line: 120, baseType: !549, size: 64, offset: 576)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3655, file: !3656, line: 121, baseType: !549, size: 64, offset: 640)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3655, file: !3656, line: 122, baseType: !549, size: 64, offset: 704)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3655, file: !3656, line: 123, baseType: !549, size: 64, offset: 768)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3655, file: !3656, line: 124, baseType: !549, size: 64, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3655, file: !3656, line: 125, baseType: !549, size: 64, offset: 896)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3655, file: !3656, line: 139, baseType: !549, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3655, file: !3656, line: 142, baseType: !549, size: 64, offset: 1024)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !3656, line: 144, baseType: !3676, size: 64, offset: 1088)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !3656, line: 144, size: 64, elements: !3677)
!3677 = !{!3678, !3679, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3676, file: !3656, line: 146, baseType: !467, size: 16)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3676, file: !3656, line: 148, baseType: !652, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3676, file: !3656, line: 150, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3656, line: 59, size: 64, elements: !3682)
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3681, file: !3656, line: 61, baseType: !652, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3681, file: !3656, line: 63, baseType: !652, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3681, file: !3656, line: 65, baseType: !652, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3655, file: !3656, line: 153, baseType: !549, size: 64, offset: 1152)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3655, file: !3656, line: 154, baseType: !549, size: 64, offset: 1216)
!3688 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !3656, line: 156, baseType: !3689, size: 64, offset: 1280)
!3689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !3656, line: 156, size: 64, elements: !3690)
!3690 = !{!3691, !3692, !3693}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3689, file: !3656, line: 158, baseType: !467, size: 16)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3689, file: !3656, line: 160, baseType: !652, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3689, file: !3656, line: 162, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3656, line: 69, size: 64, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3694, file: !3656, line: 71, baseType: !652, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3694, file: !3656, line: 73, baseType: !652, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3694, file: !3656, line: 75, baseType: !652, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3694, file: !3656, line: 77, baseType: !652, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3694, file: !3656, line: 80, baseType: !652, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3694, file: !3656, line: 83, baseType: !652, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3694, file: !3656, line: 86, baseType: !652, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3694, file: !3656, line: 88, baseType: !652, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3694, file: !3656, line: 93, baseType: !652, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3694, file: !3656, line: 100, baseType: !652, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3631, file: !3558, line: 96, baseType: !648, size: 32, offset: 1024)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3576, file: !3558, line: 352, baseType: !3708, size: 4608, align: 512)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3558, line: 333, size: 4608, align: 512, elements: !3709)
!3709 = !{!3710, !3711, !3718}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3708, file: !3558, line: 334, baseType: !3594, size: 4096, align: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3708, file: !3558, line: 335, baseType: !3712, size: 512, offset: 4096)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3558, line: 312, size: 512, elements: !3713)
!3713 = !{!3714, !3715, !3716}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3712, file: !3558, line: 313, baseType: !652, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3712, file: !3558, line: 314, baseType: !652, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3712, file: !3558, line: 315, baseType: !3717, size: 384, offset: 128)
!3717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 384, elements: !2115)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3708, file: !3558, line: 336, baseType: !3719, offset: 4608)
!3719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, elements: !2032)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3576, file: !3558, line: 353, baseType: !3721, size: 32768)
!3721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 32768, elements: !3722)
!3722 = !{!3723}
!3723 = !DISubrange(count: 4096)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3557, file: !3558, line: 484, baseType: !3563, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3557, file: !3558, line: 491, baseType: !3726, size: 128, offset: 256)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3558, line: 404, size: 128, elements: !3727)
!3727 = !{!3728, !3729, !3730}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3726, file: !3558, line: 424, baseType: !652, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3726, file: !3558, line: 432, baseType: !7, size: 32, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3726, file: !3558, line: 440, baseType: !7, size: 32, offset: 96)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3557, file: !3558, line: 498, baseType: !3726, size: 128, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3557, file: !3558, line: 508, baseType: !3564, size: 33280, align: 512, offset: 512)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1583, file: !1584, line: 16, baseType: !1593, size: 192, offset: 512)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1583, file: !1584, line: 17, baseType: !408, size: 32, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !731, file: !14, line: 1240, baseType: !372, size: 64, offset: 6912)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !731, file: !14, line: 1243, baseType: !648, size: 32, offset: 6976)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !731, file: !14, line: 1245, baseType: !1341, size: 64, offset: 7040)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !731, file: !14, line: 1246, baseType: !1341, size: 64, offset: 7104)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !731, file: !14, line: 1248, baseType: !649, size: 32, offset: 7168)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !731, file: !14, line: 1249, baseType: !3741, size: 64, offset: 7232)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !731, file: !14, line: 1252, baseType: !3744, size: 256, offset: 7296)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 256, elements: !661)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !731, file: !14, line: 1253, baseType: !3746, size: 128, offset: 7552)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3747, line: 21, baseType: !3748)
!3747 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3747, line: 19, size: 128, elements: !3749)
!3749 = !{!3750}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3748, file: !3747, line: 20, baseType: !3751, size: 128)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 128, elements: !2957)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !731, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !731, file: !14, line: 1261, baseType: !840, size: 256, offset: 7744)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !731, file: !14, line: 1267, baseType: !421, size: 64, offset: 8000)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !731, file: !14, line: 1269, baseType: !677, size: 64, offset: 8064)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !731, file: !14, line: 1271, baseType: !3757, size: 448, offset: 8128)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1350, line: 63, size: 448, elements: !3758)
!3758 = !{!3759, !3764, !3765, !3766, !3767, !3768, !3769}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3757, file: !1350, line: 64, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!549, !3763, !1348}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3757, file: !1350, line: 66, baseType: !3760, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3757, file: !1350, line: 69, baseType: !535, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3757, file: !1350, line: 70, baseType: !109, size: 32, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3757, file: !1350, line: 71, baseType: !7, size: 32, offset: 224)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3757, file: !1350, line: 74, baseType: !379, size: 128, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3757, file: !1350, line: 85, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !731, file: !14, line: 1274, baseType: !844, size: 64, offset: 8576)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !731, file: !14, line: 1280, baseType: !844, size: 64, offset: 8640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !731, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !731, file: !14, line: 1286, baseType: !2690, size: 32, offset: 8736)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !731, file: !14, line: 1289, baseType: !1161, size: 64, offset: 8768)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !731, file: !14, line: 1290, baseType: !1209, size: 64, offset: 8832)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !731, file: !14, line: 1297, baseType: !2013, size: 64, offset: 8896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !731, file: !14, line: 1304, baseType: !3779, size: 64, offset: 8960)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3780, line: 49, size: 64, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3781 = !{!3782}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3779, file: !3780, line: 50, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3780, line: 41, size: 512, align: 512, elements: !3785)
!3785 = !{!3786, !3787, !3792}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3784, file: !3780, line: 43, baseType: !433, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3784, file: !3780, line: 45, baseType: !3788, size: 192, offset: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3780, line: 29, size: 192, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3788, file: !3780, line: 30, baseType: !379, size: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3788, file: !3780, line: 32, baseType: !535, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3784, file: !3780, line: 46, baseType: !535, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !731, file: !14, line: 1305, baseType: !3779, size: 64, offset: 9024)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !14, line: 1306, baseType: !1060, size: 128, align: 64, offset: 9088)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !731, file: !14, line: 1307, baseType: !1100, size: 256, offset: 9216)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !731, file: !14, line: 1309, baseType: !840, size: 256, offset: 9472)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !731, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !731, file: !14, line: 1317, baseType: !433, size: 32, align: 512, offset: 10240)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !731, file: !14, line: 1318, baseType: !379, size: 128, offset: 10304)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !731, file: !14, line: 1320, baseType: !433, size: 32, offset: 10432)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !731, file: !14, line: 1321, baseType: !379, size: 128, offset: 10496)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !725, file: !726, line: 73, baseType: !109, size: 32, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !725, file: !726, line: 74, baseType: !3804, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2056, line: 42, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !679, file: !616, line: 141, baseType: !3808, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!109, !1410, !920}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !679, file: !616, line: 142, baseType: !3812, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!614, !614, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !615, file: !616, line: 96, baseType: !730, size: 64, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !615, file: !616, line: 97, baseType: !549, size: 64, offset: 896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !615, file: !616, line: 98, baseType: !372, size: 64, offset: 960)
!3820 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !616, line: 100, baseType: !3821, size: 128, offset: 1024)
!3821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !615, file: !616, line: 100, size: 128, elements: !3822)
!3822 = !{!3823, !3824}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3821, file: !616, line: 101, baseType: !379, size: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3821, file: !616, line: 102, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !615, file: !616, line: 104, baseType: !379, size: 128, offset: 1152)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !615, file: !616, line: 105, baseType: !379, size: 128, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !615, file: !616, line: 113, baseType: !3829, size: 128, offset: 1408)
!3829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !615, file: !616, line: 109, size: 128, elements: !3830)
!3830 = !{!3831, !3832, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3829, file: !616, line: 110, baseType: !1086, size: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3829, file: !616, line: 111, baseType: !630, size: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3829, file: !616, line: 112, baseType: !1060, size: 128, align: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !608, file: !14, line: 1968, baseType: !3835, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!421, !614, !579, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3840, line: 10, size: 128, elements: !3841)
!3840 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3841 = !{!3842, !3843}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3839, file: !3840, line: 11, baseType: !883, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3839, file: !3840, line: 12, baseType: !372, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !608, file: !14, line: 1969, baseType: !3845, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!109, !3804, !579, !109}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !608, file: !14, line: 1970, baseType: !3849, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!602, !579, !109, !920}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !608, file: !14, line: 1972, baseType: !3853, size: 64, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!109, !614, !499, !109}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !608, file: !14, line: 1974, baseType: !3857, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!109, !3804, !579, !614, !541, !920}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !608, file: !14, line: 1976, baseType: !3861, size: 64, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!109, !614, !579, !614}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !608, file: !14, line: 1977, baseType: !3865, size: 64, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!109, !579, !614}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !608, file: !14, line: 1978, baseType: !3869, size: 64, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!109, !3804, !579, !614, !421}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !608, file: !14, line: 1980, baseType: !3873, size: 64, offset: 576)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!109, !3804, !579, !614, !541}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !608, file: !14, line: 1982, baseType: !3865, size: 64, offset: 640)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !608, file: !14, line: 1983, baseType: !3878, size: 64, offset: 704)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!109, !3804, !579, !614, !541, !735}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !608, file: !14, line: 1985, baseType: !3882, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!109, !3804, !579, !614, !579, !614, !7}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !608, file: !14, line: 1987, baseType: !3886, size: 64, offset: 832)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!109, !3804, !614, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3904, !3913, !3914, !3919, !3920, !3921}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3890, file: !14, line: 227, baseType: !7, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3890, file: !14, line: 228, baseType: !541, size: 16, offset: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, scope: !3890, file: !14, line: 241, baseType: !3895, size: 32, offset: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3890, file: !14, line: 241, size: 32, elements: !3896)
!3896 = !{!3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3895, file: !14, line: 242, baseType: !585, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3895, file: !14, line: 243, baseType: !3899, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3900, line: 16, baseType: !3901)
!3900 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3900, line: 14, size: 32, elements: !3902)
!3902 = !{!3903}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3901, file: !3900, line: 15, baseType: !590, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, scope: !3890, file: !14, line: 245, baseType: !3905, size: 32, offset: 96)
!3905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3890, file: !14, line: 245, size: 32, elements: !3906)
!3906 = !{!3907, !3908}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3905, file: !14, line: 246, baseType: !594, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3905, file: !14, line: 247, baseType: !3909, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3900, line: 20, baseType: !3910)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3900, line: 18, size: 32, elements: !3911)
!3911 = !{!3912}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3910, file: !3900, line: 19, baseType: !598, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3890, file: !14, line: 249, baseType: !740, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3890, file: !14, line: 250, baseType: !3915, size: 128, offset: 192)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1342, line: 13, size: 128, elements: !3916)
!3916 = !{!3917, !3918}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3915, file: !1342, line: 14, baseType: !1341, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3915, file: !1342, line: 15, baseType: !535, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3890, file: !14, line: 251, baseType: !3915, size: 128, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3890, file: !14, line: 252, baseType: !3915, size: 128, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3890, file: !14, line: 259, baseType: !1925, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !608, file: !14, line: 1988, baseType: !3923, size: 64, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!109, !3804, !1410, !3926, !648, !7}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3928, line: 22, size: 1280, elements: !3929)
!3928 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3927, file: !3928, line: 23, baseType: !648, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3927, file: !3928, line: 24, baseType: !541, size: 16, offset: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3927, file: !3928, line: 25, baseType: !7, size: 32, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3927, file: !3928, line: 26, baseType: !2094, size: 32, offset: 96)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3927, file: !3928, line: 27, baseType: !652, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3927, file: !3928, line: 28, baseType: !652, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3927, file: !3928, line: 41, baseType: !652, size: 64, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3927, file: !3928, line: 42, baseType: !735, size: 32, offset: 320)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3927, file: !3928, line: 43, baseType: !735, size: 32, offset: 352)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3927, file: !3928, line: 44, baseType: !585, size: 32, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3927, file: !3928, line: 45, baseType: !594, size: 32, offset: 416)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3927, file: !3928, line: 46, baseType: !740, size: 64, offset: 448)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3927, file: !3928, line: 47, baseType: !3915, size: 128, offset: 512)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3927, file: !3928, line: 48, baseType: !3915, size: 128, offset: 640)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3927, file: !3928, line: 49, baseType: !3915, size: 128, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3927, file: !3928, line: 50, baseType: !3915, size: 128, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3927, file: !3928, line: 51, baseType: !652, size: 64, offset: 1024)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3927, file: !3928, line: 52, baseType: !652, size: 64, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3927, file: !3928, line: 53, baseType: !648, size: 32, offset: 1152)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3927, file: !3928, line: 54, baseType: !648, size: 32, offset: 1184)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3927, file: !3928, line: 55, baseType: !652, size: 64, offset: 1216)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !608, file: !14, line: 1990, baseType: !3952, size: 64, offset: 960)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!531, !614, !499, !546}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !608, file: !14, line: 1991, baseType: !3956, size: 64, offset: 1024)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!109, !579, !3959, !652, !652}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !608, file: !14, line: 1993, baseType: !3962, size: 64, offset: 1088)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!109, !579, !109}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !608, file: !14, line: 1994, baseType: !3966, size: 64, offset: 1152)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!109, !579, !614, !1925, !7, !541}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !608, file: !14, line: 1997, baseType: !3970, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!109, !3804, !579, !1925, !541}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !608, file: !14, line: 1999, baseType: !3974, size: 64, offset: 1280)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!602, !3804, !614, !109}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !608, file: !14, line: 2001, baseType: !3978, size: 64, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!109, !3804, !614, !602, !109}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !608, file: !14, line: 2003, baseType: !3982, size: 64, offset: 1408)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!109, !3804, !614, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !608, file: !14, line: 2005, baseType: !3988, size: 64, offset: 1472)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!109, !614, !3985}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !608, file: !14, line: 2006, baseType: !3992, size: 64, offset: 1536)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!3995, !579}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3996, file: !14, line: 3193, baseType: !1992, size: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3996, file: !14, line: 3194, baseType: !648, size: 32, offset: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !580, file: !14, line: 655, baseType: !730, size: 64, offset: 448)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !580, file: !14, line: 656, baseType: !575, size: 64, offset: 512)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !580, file: !14, line: 659, baseType: !372, size: 64, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !580, file: !14, line: 663, baseType: !549, size: 64, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !14, line: 671, baseType: !4005, size: 32, offset: 704)
!4005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !14, line: 671, size: 32, elements: !4006)
!4006 = !{!4007, !4009}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4005, file: !14, line: 672, baseType: !4008, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4005, file: !14, line: 673, baseType: !7, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !580, file: !14, line: 675, baseType: !735, size: 32, offset: 736)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !580, file: !14, line: 676, baseType: !740, size: 64, offset: 768)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !580, file: !14, line: 677, baseType: !3915, size: 128, offset: 832)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !580, file: !14, line: 678, baseType: !3915, size: 128, offset: 960)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !580, file: !14, line: 679, baseType: !3915, size: 128, offset: 1088)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !580, file: !14, line: 680, baseType: !433, size: 32, offset: 1216)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !580, file: !14, line: 681, baseType: !469, size: 16, offset: 1248)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !580, file: !14, line: 682, baseType: !457, size: 8, offset: 1264)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !580, file: !14, line: 683, baseType: !457, size: 8, offset: 1272)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !580, file: !14, line: 684, baseType: !1488, size: 64, offset: 1280)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !580, file: !14, line: 691, baseType: !549, size: 64, offset: 1344)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !580, file: !14, line: 692, baseType: !1500, size: 320, offset: 1408)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !580, file: !14, line: 694, baseType: !549, size: 64, offset: 1728)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !580, file: !14, line: 695, baseType: !549, size: 64, offset: 1792)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !580, file: !14, line: 697, baseType: !1086, size: 128, offset: 1856)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !580, file: !14, line: 698, baseType: !379, size: 128, offset: 1984)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !580, file: !14, line: 707, baseType: !379, size: 128, offset: 2112)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !580, file: !14, line: 708, baseType: !379, size: 128, offset: 2240)
!4028 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !14, line: 709, baseType: !4029, size: 128, offset: 2368)
!4029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !14, line: 709, size: 128, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4029, file: !14, line: 710, baseType: !1209, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4029, file: !14, line: 711, baseType: !1060, size: 128, align: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !580, file: !14, line: 713, baseType: !846, size: 64, offset: 2496)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !580, file: !14, line: 714, baseType: !846, size: 64, offset: 2560)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !580, file: !14, line: 715, baseType: !408, size: 32, offset: 2624)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !580, file: !14, line: 716, baseType: !408, size: 32, offset: 2656)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !580, file: !14, line: 717, baseType: !408, size: 32, offset: 2688)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !580, file: !14, line: 719, baseType: !408, size: 32, offset: 2720)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !14, line: 721, baseType: !4040, size: 64, offset: 2752)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !14, line: 721, size: 64, elements: !4041)
!4041 = !{!4042, !4043}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4040, file: !14, line: 722, baseType: !2235, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4040, file: !14, line: 723, baseType: !1232, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !580, file: !14, line: 725, baseType: !4045, size: 64, offset: 2816)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !580, file: !14, line: 726, baseType: !576, size: 1536, align: 64, offset: 2880)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !580, file: !14, line: 727, baseType: !379, size: 128, offset: 4416)
!4049 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !14, line: 728, baseType: !4050, size: 64, offset: 4544)
!4050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !14, line: 728, size: 64, elements: !4051)
!4051 = !{!4052, !4053, !4056, !4057}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4050, file: !14, line: 729, baseType: !2640, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4050, file: !14, line: 730, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4050, file: !14, line: 731, baseType: !499, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4050, file: !14, line: 732, baseType: !7, size: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !580, file: !14, line: 735, baseType: !649, size: 32, offset: 4608)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !580, file: !14, line: 738, baseType: !649, size: 32, offset: 4640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !580, file: !14, line: 739, baseType: !3741, size: 64, offset: 4672)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !580, file: !14, line: 750, baseType: !372, size: 64, offset: 4736)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !576, file: !14, line: 474, baseType: !1992, size: 128, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !576, file: !14, line: 475, baseType: !1500, size: 320, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !576, file: !14, line: 476, baseType: !373, size: 32, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !576, file: !14, line: 477, baseType: !408, size: 32, offset: 544)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !576, file: !14, line: 482, baseType: !1781, size: 128, offset: 576)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !576, file: !14, line: 483, baseType: !549, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !576, file: !14, line: 484, baseType: !549, size: 64, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !576, file: !14, line: 485, baseType: !4070, size: 64, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4072)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4073)
!4073 = !{!4074, !4078, !4148, !4152, !4156, !4162, !4167, !4171, !4176, !4180, !4184, !4188, !4189, !4193, !4197, !4201, !4206, !4210, !4217, !4218}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4072, file: !14, line: 405, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!109, !2427, !1244}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4072, file: !14, line: 406, baseType: !4079, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!109, !1925, !4082}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !4084)
!4084 = !{!4085, !4115, !4129}
!4085 = !DIDerivedType(tag: DW_TAG_member, scope: !4083, file: !38, line: 295, baseType: !4086, size: 512)
!4086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4083, file: !38, line: 295, size: 512, elements: !4087)
!4087 = !{!4088, !4114}
!4088 = !DIDerivedType(tag: DW_TAG_member, scope: !4086, file: !38, line: 296, baseType: !4089, size: 448)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4086, file: !38, line: 296, size: 448, elements: !4090)
!4090 = !{!4091, !4092, !4101, !4102, !4103, !4112, !4113}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4089, file: !38, line: 298, baseType: !549, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, scope: !4089, file: !38, line: 299, baseType: !4093, size: 128, offset: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4089, file: !38, line: 299, size: 128, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4093, file: !38, line: 300, baseType: !379, size: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, scope: !4093, file: !38, line: 302, baseType: !4097, size: 128)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !38, line: 302, size: 128, elements: !4098)
!4098 = !{!4099, !4100}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4097, file: !38, line: 303, baseType: !372, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4097, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4089, file: !38, line: 310, baseType: !575, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4089, file: !38, line: 311, baseType: !549, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4089, file: !38, line: 312, baseType: !4104, size: 64, offset: 320)
!4104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4089, file: !38, line: 312, size: 64, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4104, file: !38, line: 313, baseType: !372, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4104, file: !38, line: 314, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !4110)
!4110 = !{!4111}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4109, file: !38, line: 256, baseType: !549, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4089, file: !38, line: 316, baseType: !408, size: 32, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4089, file: !38, line: 317, baseType: !408, size: 32, offset: 416)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4086, file: !38, line: 323, baseType: !2428, size: 512, align: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !4083, file: !38, line: 325, baseType: !4116, size: 512, offset: 512)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4083, file: !38, line: 325, size: 512, elements: !4117)
!4117 = !{!4118, !4128}
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !4116, file: !38, line: 326, baseType: !4119, size: 320)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4116, file: !38, line: 326, size: 320, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4119, file: !38, line: 327, baseType: !549, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4119, file: !38, line: 328, baseType: !549, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4119, file: !38, line: 329, baseType: !549, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4119, file: !38, line: 331, baseType: !408, size: 32, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4119, file: !38, line: 332, baseType: !408, size: 32, offset: 224)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4119, file: !38, line: 333, baseType: !408, size: 32, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4119, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4116, file: !38, line: 339, baseType: !2428, size: 512, align: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4083, file: !38, line: 341, baseType: !4130, size: 512, offset: 1024)
!4130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4083, file: !38, line: 341, size: 512, elements: !4131)
!4131 = !{!4132, !4141, !4147}
!4132 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !38, line: 342, baseType: !4133, size: 384)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4130, file: !38, line: 342, size: 384, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4133, file: !38, line: 343, baseType: !549, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4133, file: !38, line: 344, baseType: !549, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4133, file: !38, line: 346, baseType: !372, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4133, file: !38, line: 347, baseType: !372, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4133, file: !38, line: 348, baseType: !372, size: 64, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4133, file: !38, line: 349, baseType: !372, size: 64, offset: 320)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !38, line: 352, baseType: !4142, size: 256)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4130, file: !38, line: 352, size: 256, elements: !4143)
!4143 = !{!4144, !4145, !4146}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4142, file: !38, line: 353, baseType: !549, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4142, file: !38, line: 354, baseType: !549, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4142, file: !38, line: 356, baseType: !379, size: 128, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4130, file: !38, line: 359, baseType: !2428, size: 512, align: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4072, file: !14, line: 409, baseType: !4149, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!109, !575, !1244}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4072, file: !14, line: 412, baseType: !4153, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!920, !575, !4082}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4072, file: !14, line: 414, baseType: !4157, size: 64, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !4160}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4072, file: !14, line: 416, baseType: !4163, size: 64, offset: 320)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!109, !1925, !575, !740, !7, !4166, !2655}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4072, file: !14, line: 419, baseType: !4168, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!109, !1925, !575, !740, !7, !7, !2427, !372}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4072, file: !14, line: 424, baseType: !4172, size: 64, offset: 448)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!4175, !575, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !374, line: 131, baseType: !652)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4072, file: !14, line: 425, baseType: !4177, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !4082, !546, !546}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4072, file: !14, line: 426, baseType: !4181, size: 64, offset: 576)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!920, !4082, !373}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4072, file: !14, line: 427, baseType: !4185, size: 64, offset: 640)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !4082}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4072, file: !14, line: 428, baseType: !2254, size: 64, offset: 704)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4072, file: !14, line: 433, baseType: !4190, size: 64, offset: 768)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!109, !575, !4082, !4082, !74}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4072, file: !14, line: 435, baseType: !4194, size: 64, offset: 832)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!109, !4082}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4072, file: !14, line: 436, baseType: !4198, size: 64, offset: 896)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!920, !4082, !546, !546}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4072, file: !14, line: 438, baseType: !4202, size: 64, offset: 960)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4082, !4205, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4072, file: !14, line: 439, baseType: !4207, size: 64, offset: 1024)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!109, !575, !2427}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4072, file: !14, line: 442, baseType: !4211, size: 64, offset: 1088)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!109, !4214, !1925, !4216}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4072, file: !14, line: 444, baseType: !2647, size: 64, offset: 1152)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4072, file: !14, line: 445, baseType: !4219, size: 64, offset: 1216)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!109, !2257, !2279}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !14, line: 486, baseType: !549, size: 64, offset: 896)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !576, file: !14, line: 487, baseType: !1500, size: 320, offset: 960)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !576, file: !14, line: 488, baseType: !2690, size: 32, offset: 1280)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !576, file: !14, line: 489, baseType: !433, size: 32, offset: 1312)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !576, file: !14, line: 490, baseType: !379, size: 128, offset: 1344)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !576, file: !14, line: 491, baseType: !372, size: 64, offset: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !566, file: !525, line: 180, baseType: !4229, size: 64, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!531, !1925, !426, !565, !499, !740, !546}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !566, file: !525, line: 182, baseType: !4229, size: 64, offset: 384)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !566, file: !525, line: 184, baseType: !4234, size: 64, offset: 448)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!109, !1925, !426, !565, !2318}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !554, file: !525, line: 90, baseType: !4238, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !554, file: !525, line: 91, baseType: !4240, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !515, file: !418, line: 120, baseType: !4242, size: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!4245, !482}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4248)
!4248 = !{!4249, !4250, !4254, !4258, !4264, !4268}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4247, file: !82, line: 40, baseType: !81, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4247, file: !82, line: 41, baseType: !4251, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!920}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4247, file: !82, line: 42, baseType: !4255, size: 64, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!372}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4247, file: !82, line: 43, baseType: !4259, size: 64, offset: 192)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!2779, !4262}
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4247, file: !82, line: 44, baseType: !4265, size: 64, offset: 256)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!2779}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4247, file: !82, line: 45, baseType: !883, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !515, file: !418, line: 121, baseType: !4270, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!2779, !482}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !515, file: !418, line: 122, baseType: !4274, size: 64, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !482, !4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !417, file: !418, line: 70, baseType: !4280, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !755, line: 190, size: 1152, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4374, !4375, !4376, !4377, !4378, !4381}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4281, file: !755, line: 191, baseType: !408, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4281, file: !755, line: 192, baseType: !408, size: 32, offset: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4281, file: !755, line: 202, baseType: !4280, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4281, file: !755, line: 203, baseType: !421, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4281, file: !755, line: 205, baseType: !952, size: 192, align: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4281, file: !755, line: 207, baseType: !2779, size: 64, offset: 384)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4281, file: !755, line: 208, baseType: !7, size: 32, offset: 448)
!4290 = !DIDerivedType(tag: DW_TAG_member, scope: !4281, file: !755, line: 209, baseType: !4291, size: 256, offset: 512)
!4291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4281, file: !755, line: 209, size: 256, elements: !4292)
!4292 = !{!4293, !4302, !4306}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4291, file: !755, line: 210, baseType: !4294, size: 256)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !755, line: 153, size: 256, elements: !4295)
!4295 = !{!4296, !4297, !4298, !4301}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4294, file: !755, line: 154, baseType: !549, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4294, file: !755, line: 156, baseType: !1784, size: 64, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4294, file: !755, line: 162, baseType: !4299, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !755, line: 162, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4294, file: !755, line: 167, baseType: !549, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4291, file: !755, line: 211, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !755, line: 170, size: 64, elements: !4304)
!4304 = !{!4305}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4303, file: !755, line: 171, baseType: !4280, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4291, file: !755, line: 212, baseType: !4307, size: 256)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !755, line: 174, size: 256, elements: !4308)
!4308 = !{!4309, !4369, !4372, !4373}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4307, file: !755, line: 175, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4312)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !755, line: 271, size: 768, elements: !4313)
!4313 = !{!4314, !4334, !4338, !4342, !4346, !4350, !4354, !4358, !4359, !4360, !4361, !4365}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4312, file: !755, line: 276, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!109, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !755, line: 251, size: 1216, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4319, file: !755, line: 253, baseType: !4280, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4319, file: !755, line: 254, baseType: !1925, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4319, file: !755, line: 255, baseType: !1281, size: 64, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4319, file: !755, line: 256, baseType: !372, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4319, file: !755, line: 259, baseType: !840, size: 256, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4319, file: !755, line: 260, baseType: !840, size: 256, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4319, file: !755, line: 261, baseType: !109, size: 32, offset: 768)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4319, file: !755, line: 262, baseType: !379, size: 128, offset: 832)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4319, file: !755, line: 263, baseType: !499, size: 64, offset: 960)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4319, file: !755, line: 265, baseType: !546, size: 64, offset: 1024)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4319, file: !755, line: 266, baseType: !920, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4319, file: !755, line: 267, baseType: !920, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4319, file: !755, line: 268, baseType: !2363, size: 64, offset: 1152)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4312, file: !755, line: 277, baseType: !4335, size: 64, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{null, !4318}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4312, file: !755, line: 290, baseType: !4339, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!109, !1281, !372}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4312, file: !755, line: 292, baseType: !4343, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!372, !1281, !2248}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4312, file: !755, line: 293, baseType: !4347, size: 64, offset: 256)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!372, !1281, !372, !2248}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4312, file: !755, line: 294, baseType: !4351, size: 64, offset: 320)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !1281, !372}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4312, file: !755, line: 296, baseType: !4355, size: 64, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!531, !4318, !499, !546, !740}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4312, file: !755, line: 306, baseType: !546, size: 64, offset: 448)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4312, file: !755, line: 313, baseType: !920, size: 8, offset: 512)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4312, file: !755, line: 314, baseType: !4355, size: 64, offset: 576)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4312, file: !755, line: 317, baseType: !4362, size: 64, offset: 640)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!2305, !4318, !2307}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4312, file: !755, line: 320, baseType: !4366, size: 64, offset: 704)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!109, !4318, !2318}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4307, file: !755, line: 176, baseType: !4370, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !755, line: 35, flags: DIFlagFwdDecl)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4307, file: !755, line: 177, baseType: !740, size: 64, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4307, file: !755, line: 178, baseType: !4280, size: 64, offset: 192)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4281, file: !755, line: 215, baseType: !372, size: 64, offset: 768)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4281, file: !755, line: 221, baseType: !652, size: 64, offset: 832)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4281, file: !755, line: 223, baseType: !469, size: 16, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4281, file: !755, line: 224, baseType: !541, size: 16, offset: 912)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4281, file: !755, line: 225, baseType: !4379, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !755, line: 36, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4281, file: !755, line: 227, baseType: !1060, size: 128, align: 64, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !417, file: !418, line: 71, baseType: !400, size: 32, offset: 448)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !417, file: !418, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !417, file: !418, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !417, file: !418, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !417, file: !418, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !417, file: !418, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !414, file: !94, line: 707, baseType: !413, size: 64, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !414, file: !94, line: 709, baseType: !4390, size: 64, offset: 576)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !414, file: !94, line: 711, baseType: !421, size: 64, offset: 640)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !94, line: 712, baseType: !4394, size: 64, offset: 704)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4396)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4406, !4411, !4415}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4396, file: !94, line: 90, baseType: !421, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4396, file: !94, line: 91, baseType: !551, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4396, file: !94, line: 92, baseType: !4401, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!109, !4404, !494}
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4396, file: !94, line: 93, baseType: !4407, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!499, !4404, !4410, !4277, !4278}
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4396, file: !94, line: 95, baseType: !4412, size: 64, offset: 256)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !413}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4396, file: !94, line: 97, baseType: !4416, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4418)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4419)
!4419 = !{!4420, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4418, file: !101, line: 287, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!109, !413}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4418, file: !101, line: 288, baseType: !4412, size: 64, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4418, file: !101, line: 289, baseType: !4421, size: 64, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4418, file: !101, line: 290, baseType: !4421, size: 64, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4418, file: !101, line: 291, baseType: !4421, size: 64, offset: 256)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4418, file: !101, line: 292, baseType: !4421, size: 64, offset: 320)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4418, file: !101, line: 293, baseType: !4421, size: 64, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4418, file: !101, line: 294, baseType: !4421, size: 64, offset: 448)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4418, file: !101, line: 295, baseType: !4421, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4418, file: !101, line: 296, baseType: !4421, size: 64, offset: 576)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4418, file: !101, line: 297, baseType: !4421, size: 64, offset: 640)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4418, file: !101, line: 298, baseType: !4421, size: 64, offset: 704)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4418, file: !101, line: 299, baseType: !4421, size: 64, offset: 768)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4418, file: !101, line: 300, baseType: !4421, size: 64, offset: 832)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4418, file: !101, line: 301, baseType: !4421, size: 64, offset: 896)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4418, file: !101, line: 302, baseType: !4421, size: 64, offset: 960)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4418, file: !101, line: 303, baseType: !4421, size: 64, offset: 1024)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4418, file: !101, line: 304, baseType: !4421, size: 64, offset: 1088)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4418, file: !101, line: 305, baseType: !4421, size: 64, offset: 1152)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4418, file: !101, line: 306, baseType: !4421, size: 64, offset: 1216)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4418, file: !101, line: 307, baseType: !4421, size: 64, offset: 1280)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4418, file: !101, line: 308, baseType: !4421, size: 64, offset: 1344)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4418, file: !101, line: 309, baseType: !4421, size: 64, offset: 1408)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !414, file: !94, line: 714, baseType: !4447, size: 64, offset: 768)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4449)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4450, line: 80, size: 1344, elements: !4451)
!4450 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4515}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4449, file: !4450, line: 81, baseType: !421, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4449, file: !4450, line: 82, baseType: !421, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4449, file: !4450, line: 83, baseType: !551, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4449, file: !4450, line: 84, baseType: !551, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4449, file: !4450, line: 85, baseType: !551, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4449, file: !4450, line: 87, baseType: !4458, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!109, !413, !4461}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4474, !4478, !4479, !4480, !4481, !4482, !4490, !4491, !4492, !4493, !4494, !4495}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4462, file: !88, line: 97, baseType: !421, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4462, file: !88, line: 98, baseType: !4447, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4462, file: !88, line: 100, baseType: !769, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4462, file: !88, line: 101, baseType: !421, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4462, file: !88, line: 103, baseType: !920, size: 8, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4462, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4462, file: !88, line: 106, baseType: !4471, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4462, file: !88, line: 107, baseType: !4475, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4462, file: !88, line: 109, baseType: !4421, size: 64, offset: 448)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4462, file: !88, line: 110, baseType: !4412, size: 64, offset: 512)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4462, file: !88, line: 111, baseType: !4421, size: 64, offset: 576)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4462, file: !88, line: 112, baseType: !4412, size: 64, offset: 640)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4462, file: !88, line: 113, baseType: !4483, size: 64, offset: 704)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!109, !413, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4487)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4488)
!4488 = !{!4489}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4487, file: !101, line: 59, baseType: !109, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4462, file: !88, line: 114, baseType: !4421, size: 64, offset: 768)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4462, file: !88, line: 115, baseType: !551, size: 64, offset: 832)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4462, file: !88, line: 116, baseType: !551, size: 64, offset: 896)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4462, file: !88, line: 118, baseType: !4416, size: 64, offset: 960)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4462, file: !88, line: 119, baseType: !4412, size: 64, offset: 1024)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4462, file: !88, line: 121, baseType: !4496, size: 64, offset: 1088)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4449, file: !4450, line: 88, baseType: !4401, size: 64, offset: 384)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4449, file: !4450, line: 89, baseType: !4421, size: 64, offset: 448)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4449, file: !4450, line: 90, baseType: !4412, size: 64, offset: 512)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4449, file: !4450, line: 91, baseType: !4412, size: 64, offset: 576)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4449, file: !4450, line: 92, baseType: !4412, size: 64, offset: 640)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4449, file: !4450, line: 94, baseType: !4421, size: 64, offset: 704)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4449, file: !4450, line: 95, baseType: !4421, size: 64, offset: 768)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4449, file: !4450, line: 97, baseType: !4483, size: 64, offset: 832)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4449, file: !4450, line: 98, baseType: !4421, size: 64, offset: 896)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4449, file: !4450, line: 100, baseType: !4421, size: 64, offset: 960)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4449, file: !4450, line: 102, baseType: !4421, size: 64, offset: 1024)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4449, file: !4450, line: 103, baseType: !4412, size: 64, offset: 1088)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4449, file: !4450, line: 105, baseType: !4416, size: 64, offset: 1152)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4449, file: !4450, line: 107, baseType: !4512, size: 64, offset: 1216)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4514)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4450, line: 107, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4449, file: !4450, line: 109, baseType: !920, size: 8, offset: 1280)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !414, file: !94, line: 715, baseType: !4461, size: 64, offset: 832)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !414, file: !94, line: 717, baseType: !372, size: 64, offset: 896)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !414, file: !94, line: 719, baseType: !372, size: 64, offset: 960)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !414, file: !94, line: 721, baseType: !840, size: 256, offset: 1024)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !414, file: !94, line: 725, baseType: !4521, size: 448, offset: 1280)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4522)
!4522 = !{!4523, !4524, !4525, !4526}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4521, file: !94, line: 518, baseType: !379, size: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4521, file: !94, line: 519, baseType: !379, size: 128, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4521, file: !94, line: 520, baseType: !379, size: 128, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4521, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !414, file: !94, line: 726, baseType: !4528, size: 2496, offset: 1728)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4529)
!4529 = !{!4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4612, !4616}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4528, file: !101, line: 664, baseType: !4486, size: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4528, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4528, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4528, file: !101, line: 667, baseType: !920, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4528, file: !101, line: 668, baseType: !920, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4528, file: !101, line: 669, baseType: !920, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4528, file: !101, line: 670, baseType: !920, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4528, file: !101, line: 671, baseType: !920, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4528, file: !101, line: 672, baseType: !920, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4528, file: !101, line: 673, baseType: !920, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4528, file: !101, line: 674, baseType: !920, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4528, file: !101, line: 675, baseType: !648, size: 32, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4528, file: !101, line: 676, baseType: !433, size: 32, offset: 96)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4528, file: !101, line: 678, baseType: !379, size: 128, offset: 128)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4528, file: !101, line: 679, baseType: !789, size: 256, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4528, file: !101, line: 680, baseType: !4546, size: 64, offset: 512)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4548, line: 43, size: 1536, elements: !4549)
!4548 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4549 = !{!4550, !4551, !4552, !4553, !4554, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4547, file: !4548, line: 44, baseType: !421, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4547, file: !4548, line: 45, baseType: !109, size: 32, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4547, file: !4548, line: 46, baseType: !379, size: 128, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4547, file: !4548, line: 47, baseType: !433, size: 32, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4547, file: !4548, line: 48, baseType: !4555, size: 64, offset: 320)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4547, file: !4548, line: 49, baseType: !1082, size: 320, offset: 384)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4547, file: !4548, line: 50, baseType: !549, size: 64, offset: 704)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4547, file: !4548, line: 51, baseType: !1730, size: 64, offset: 768)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4547, file: !4548, line: 52, baseType: !1730, size: 64, offset: 832)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4547, file: !4548, line: 53, baseType: !1730, size: 64, offset: 896)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4547, file: !4548, line: 54, baseType: !1730, size: 64, offset: 960)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4547, file: !4548, line: 55, baseType: !1730, size: 64, offset: 1024)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4547, file: !4548, line: 56, baseType: !549, size: 64, offset: 1088)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4547, file: !4548, line: 57, baseType: !549, size: 64, offset: 1152)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4547, file: !4548, line: 58, baseType: !549, size: 64, offset: 1216)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4547, file: !4548, line: 59, baseType: !549, size: 64, offset: 1280)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4547, file: !4548, line: 60, baseType: !549, size: 64, offset: 1344)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4547, file: !4548, line: 61, baseType: !413, size: 64, offset: 1408)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4547, file: !4548, line: 62, baseType: !920, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4547, file: !4548, line: 63, baseType: !920, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4528, file: !101, line: 681, baseType: !920, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4528, file: !101, line: 682, baseType: !920, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4528, file: !101, line: 683, baseType: !920, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4528, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4528, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4528, file: !101, line: 690, baseType: !1722, size: 512, offset: 640)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4528, file: !101, line: 691, baseType: !652, size: 64, offset: 1152)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4528, file: !101, line: 692, baseType: !1100, size: 256, offset: 1216)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4528, file: !101, line: 693, baseType: !1593, size: 192, offset: 1472)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4528, file: !101, line: 694, baseType: !4555, size: 64, offset: 1664)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4528, file: !101, line: 695, baseType: !408, size: 32, offset: 1728)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4528, file: !101, line: 696, baseType: !408, size: 32, offset: 1760)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4528, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4528, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4528, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4528, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4528, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4528, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4528, file: !101, line: 703, baseType: !920, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4528, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4528, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4528, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4528, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4528, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4528, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4528, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4528, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4528, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4528, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4528, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4528, file: !101, line: 715, baseType: !652, size: 64, offset: 2048)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4528, file: !101, line: 716, baseType: !652, size: 64, offset: 2112)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4528, file: !101, line: 717, baseType: !652, size: 64, offset: 2176)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4528, file: !101, line: 718, baseType: !652, size: 64, offset: 2240)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4528, file: !101, line: 720, baseType: !4607, size: 64, offset: 2304)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4609)
!4609 = !{!4610, !4611}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4608, file: !101, line: 633, baseType: !433, size: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4608, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4528, file: !101, line: 721, baseType: !4613, size: 64, offset: 2368)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !413, !836}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4528, file: !101, line: 722, baseType: !4617, size: 64, offset: 2432)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !414, file: !94, line: 727, baseType: !4620, size: 64, offset: 4224)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4629, !4630, !4631}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4621, file: !101, line: 743, baseType: !4418, size: 1472)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4621, file: !101, line: 744, baseType: !4421, size: 64, offset: 1472)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4621, file: !101, line: 745, baseType: !4626, size: 64, offset: 1536)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !413, !920}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4621, file: !101, line: 746, baseType: !4421, size: 64, offset: 1600)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4621, file: !101, line: 747, baseType: !4412, size: 64, offset: 1664)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4621, file: !101, line: 748, baseType: !4412, size: 64, offset: 1728)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !414, file: !94, line: 736, baseType: !4633, size: 128, offset: 4288)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4634)
!4634 = !{!4635, !4639}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4633, file: !94, line: 531, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4638, line: 13, flags: DIFlagFwdDecl)
!4638 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4633, file: !94, line: 532, baseType: !4640, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !414, file: !94, line: 738, baseType: !4643, size: 64, offset: 4416)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4645)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !414, file: !94, line: 740, baseType: !4647, size: 64, offset: 4480)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !414, file: !94, line: 741, baseType: !652, size: 64, offset: 4544)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !414, file: !94, line: 746, baseType: !652, size: 64, offset: 4608)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !414, file: !94, line: 747, baseType: !4651, size: 64, offset: 4672)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4653)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !414, file: !94, line: 749, baseType: !4655, size: 64, offset: 4736)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4657)
!4657 = !{!4658, !4659, !4660}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4656, file: !94, line: 433, baseType: !7, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4656, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4656, file: !94, line: 435, baseType: !549, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !414, file: !94, line: 751, baseType: !379, size: 128, offset: 4800)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !414, file: !94, line: 762, baseType: !4663, size: 64, offset: 4928)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !414, file: !94, line: 770, baseType: !4666, offset: 4992)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4667, line: 5, elements: !1128)
!4667 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !414, file: !94, line: 772, baseType: !4669, size: 64, offset: 4992)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4671, line: 18, flags: DIFlagFwdDecl)
!4671 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !414, file: !94, line: 773, baseType: !4673, size: 64, offset: 5056)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4450, line: 22, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !414, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !414, file: !94, line: 778, baseType: !735, size: 32, offset: 5152)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !414, file: !94, line: 779, baseType: !648, size: 32, offset: 5184)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !414, file: !94, line: 781, baseType: !433, size: 32, offset: 5216)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !414, file: !94, line: 782, baseType: !379, size: 128, offset: 5248)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !414, file: !94, line: 784, baseType: !4681, size: 64, offset: 5376)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4683)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4684, line: 52, size: 768, elements: !4685)
!4684 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4685 = !{!4686, !4687, !4688, !4689, !4690, !4694, !4698, !4699, !4700, !4701, !4705, !4709}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4683, file: !4684, line: 53, baseType: !421, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4683, file: !4684, line: 55, baseType: !551, size: 64, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4683, file: !4684, line: 56, baseType: !551, size: 64, offset: 128)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4683, file: !4684, line: 58, baseType: !4401, size: 64, offset: 192)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4683, file: !4684, line: 59, baseType: !4691, size: 64, offset: 256)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!499, !4404, !4410}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4683, file: !4684, line: 61, baseType: !4695, size: 64, offset: 320)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{null, !4681}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4683, file: !4684, line: 62, baseType: !4412, size: 64, offset: 384)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4683, file: !4684, line: 64, baseType: !4421, size: 64, offset: 448)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4683, file: !4684, line: 66, baseType: !4245, size: 64, offset: 512)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4683, file: !4684, line: 67, baseType: !4702, size: 64, offset: 576)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!2779, !4404}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4683, file: !4684, line: 69, baseType: !4706, size: 64, offset: 640)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !4404, !4277, !4278}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4683, file: !4684, line: 71, baseType: !4416, size: 64, offset: 704)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !414, file: !94, line: 785, baseType: !551, size: 64, offset: 5440)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !414, file: !94, line: 787, baseType: !4412, size: 64, offset: 5504)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !414, file: !94, line: 788, baseType: !4713, size: 64, offset: 5568)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !414, file: !94, line: 789, baseType: !4716, size: 64, offset: 5632)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !414, file: !94, line: 791, baseType: !4719, size: 64, offset: 5696)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4725, !4726}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4720, file: !94, line: 598, baseType: !116, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4720, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4720, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4720, file: !94, line: 601, baseType: !920, size: 8, offset: 96)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4720, file: !94, line: 602, baseType: !920, size: 8, offset: 104)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !414, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !414, file: !94, line: 795, baseType: !920, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !414, file: !94, line: 796, baseType: !920, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !414, file: !94, line: 797, baseType: !920, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !414, file: !94, line: 798, baseType: !920, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !414, file: !94, line: 799, baseType: !920, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !396, file: !194, line: 73, baseType: !4734, size: 256, offset: 128)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !194, line: 66, size: 256, elements: !4735)
!4735 = !{!4736, !4737, !4738}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4734, file: !194, line: 68, baseType: !379, size: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4734, file: !194, line: 70, baseType: !372, size: 64, offset: 128)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4734, file: !194, line: 72, baseType: !433, size: 32, offset: 192)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !396, file: !194, line: 76, baseType: !4740, size: 64, offset: 384)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4742)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4743, line: 178, size: 1664, elements: !4744)
!4743 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!4744 = !{!4745, !4749, !4756, !4760, !4764, !4765, !4766, !4770, !4771, !4777, !4783, !4787, !4792, !4798, !4806, !4820, !4826, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4843, !4844}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4742, file: !4743, line: 195, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!109, !395, !549}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4742, file: !4743, line: 215, baseType: !4750, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!109, !395, !4753}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4755, line: 9, flags: DIFlagFwdDecl)
!4755 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6d675704e04807ddd52843c3d74a46")
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4742, file: !4743, line: 229, baseType: !4757, size: 64, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !395, !4753}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4742, file: !4743, line: 257, baseType: !4761, size: 64, offset: 192)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{null, !395}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4742, file: !4743, line: 274, baseType: !4761, size: 64, offset: 256)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4742, file: !4743, line: 286, baseType: !4761, size: 64, offset: 320)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4742, file: !4743, line: 293, baseType: !4767, size: 64, offset: 384)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{null, !395, !4753, !920}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4742, file: !4743, line: 300, baseType: !4757, size: 64, offset: 448)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4742, file: !4743, line: 307, baseType: !4772, size: 64, offset: 512)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{null, !4775}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !194, line: 13, flags: DIFlagFwdDecl)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4742, file: !4743, line: 316, baseType: !4778, size: 64, offset: 576)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!4781, !395, !546}
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4743, line: 38, flags: DIFlagFwdDecl)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4742, file: !4743, line: 324, baseType: !4784, size: 64, offset: 640)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!109, !395, !4753, !2094, !2094, !969}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4742, file: !4743, line: 331, baseType: !4788, size: 64, offset: 704)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!109, !395, !4753, !109, !4791}
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4742, file: !4743, line: 341, baseType: !4793, size: 64, offset: 768)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!4781, !395, !4796}
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !4743, line: 41, flags: DIFlagFwdDecl)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4742, file: !4743, line: 349, baseType: !4799, size: 64, offset: 832)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!4781, !395, !4802, !4804}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !4743, line: 42, flags: DIFlagFwdDecl)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4743, line: 46, flags: DIFlagFwdDecl)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4742, file: !4743, line: 375, baseType: !4807, size: 64, offset: 896)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!109, !4753, !395, !4810}
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !251, line: 1036, size: 256, elements: !4812)
!4812 = !{!4813, !4814, !4815, !4816, !4817, !4818, !4819}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4811, file: !251, line: 1037, baseType: !649, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4811, file: !251, line: 1038, baseType: !649, size: 32, offset: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4811, file: !251, line: 1039, baseType: !649, size: 32, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4811, file: !251, line: 1040, baseType: !649, size: 32, offset: 96)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4811, file: !251, line: 1042, baseType: !649, size: 32, offset: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4811, file: !251, line: 1043, baseType: !649, size: 32, offset: 160)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4811, file: !251, line: 1044, baseType: !653, size: 64, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4742, file: !4743, line: 393, baseType: !4821, size: 64, offset: 960)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!109, !4753, !395, !2094, !4824}
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !374, line: 113, baseType: !652)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4742, file: !4743, line: 402, baseType: !4827, size: 64, offset: 1024)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{null, !4830, !4753}
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !201, line: 45, flags: DIFlagFwdDecl)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4742, file: !4743, line: 405, baseType: !109, size: 32, offset: 1088)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4742, file: !4743, line: 407, baseType: !109, size: 32, offset: 1120)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4742, file: !4743, line: 409, baseType: !109, size: 32, offset: 1152)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4742, file: !4743, line: 411, baseType: !499, size: 64, offset: 1216)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4742, file: !4743, line: 413, baseType: !499, size: 64, offset: 1280)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4742, file: !4743, line: 415, baseType: !499, size: 64, offset: 1344)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4742, file: !4743, line: 423, baseType: !648, size: 32, offset: 1408)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4742, file: !4743, line: 433, baseType: !4840, size: 64, offset: 1472)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4842)
!4842 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !4743, line: 433, flags: DIFlagFwdDecl)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4742, file: !4743, line: 435, baseType: !109, size: 32, offset: 1536)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4742, file: !4743, line: 444, baseType: !2235, size: 64, offset: 1600)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !396, file: !194, line: 88, baseType: !372, size: 64, offset: 448)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !396, file: !194, line: 98, baseType: !4775, size: 64, offset: 512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !396, file: !194, line: 107, baseType: !4775, size: 64, offset: 576)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !396, file: !194, line: 110, baseType: !4775, size: 64, offset: 640)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !396, file: !194, line: 117, baseType: !920, size: 8, offset: 704)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !396, file: !194, line: 125, baseType: !4851, size: 64, offset: 768)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4853, line: 65, size: 1280, elements: !4854)
!4853 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4854 = !{!4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4852, file: !4853, line: 66, baseType: !400, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4852, file: !4853, line: 67, baseType: !395, size: 64, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4852, file: !4853, line: 72, baseType: !499, size: 64, offset: 128)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4852, file: !4853, line: 77, baseType: !109, size: 32, offset: 192)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4852, file: !4853, line: 82, baseType: !1988, size: 192, offset: 256)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4852, file: !4853, line: 83, baseType: !372, size: 64, offset: 448)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4852, file: !4853, line: 99, baseType: !4851, size: 64, offset: 512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4852, file: !4853, line: 107, baseType: !109, size: 32, offset: 576)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4852, file: !4853, line: 116, baseType: !379, size: 128, offset: 640)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4852, file: !4853, line: 128, baseType: !379, size: 128, offset: 768)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4852, file: !4853, line: 139, baseType: !1988, size: 192, offset: 896)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4852, file: !4853, line: 147, baseType: !1988, size: 192, offset: 1088)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !396, file: !194, line: 135, baseType: !648, size: 32, offset: 832)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !396, file: !194, line: 143, baseType: !920, size: 8, offset: 864)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !396, file: !194, line: 146, baseType: !579, size: 64, offset: 896)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !396, file: !194, line: 149, baseType: !499, size: 64, offset: 960)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !396, file: !194, line: 159, baseType: !840, size: 256, offset: 1024)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !396, file: !194, line: 166, baseType: !840, size: 256, offset: 1280)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !396, file: !194, line: 174, baseType: !408, size: 32, offset: 1536)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !396, file: !194, line: 177, baseType: !840, size: 256, offset: 1600)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !396, file: !194, line: 183, baseType: !379, size: 128, offset: 1856)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !396, file: !194, line: 191, baseType: !379, size: 128, offset: 1984)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !396, file: !194, line: 198, baseType: !840, size: 256, offset: 2112)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !396, file: !194, line: 205, baseType: !379, size: 128, offset: 2368)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !396, file: !194, line: 220, baseType: !920, size: 8, offset: 2496)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !396, file: !194, line: 230, baseType: !4881, size: 64, offset: 2560)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !194, line: 15, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !396, file: !194, line: 237, baseType: !433, size: 32, offset: 2624)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !396, file: !194, line: 242, baseType: !433, size: 32, offset: 2656)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !396, file: !194, line: 265, baseType: !648, size: 32, offset: 2688)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !396, file: !194, line: 268, baseType: !379, size: 128, offset: 2752)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !396, file: !194, line: 276, baseType: !433, size: 32, offset: 2880)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !396, file: !194, line: 279, baseType: !7, size: 32, offset: 2912)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !396, file: !194, line: 282, baseType: !4890, size: 8704, offset: 2944)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4891, line: 375, size: 8704, elements: !4892)
!4891 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4892 = !{!4893, !4894, !4913, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4890, file: !4891, line: 386, baseType: !840, size: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4890, file: !4891, line: 396, baseType: !4895, size: 448, offset: 256)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4896, line: 85, size: 448, elements: !4897)
!4896 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4897 = !{!4898, !4912}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4895, file: !4896, line: 89, baseType: !4899, size: 320)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4900, line: 47, size: 320, elements: !4901)
!4900 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4901 = !{!4902, !4903}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4899, file: !4900, line: 48, baseType: !840, size: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4899, file: !4900, line: 49, baseType: !4904, size: 64, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4900, line: 55, size: 192, elements: !4906)
!4906 = !{!4907, !4908, !4909, !4910, !4911}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4905, file: !4900, line: 56, baseType: !1606, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4905, file: !4900, line: 57, baseType: !549, size: 64, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4905, file: !4900, line: 58, baseType: !7, size: 32, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4905, file: !4900, line: 59, baseType: !469, size: 16, offset: 160)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4905, file: !4900, line: 60, baseType: !469, size: 16, offset: 176)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4895, file: !4896, line: 95, baseType: !379, size: 128, offset: 320)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4890, file: !4891, line: 406, baseType: !4914, size: 64, offset: 704)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4896, line: 46, size: 512, elements: !4916)
!4916 = !{!4917, !4918, !4920, !4923, !4924, !4925}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4915, file: !4896, line: 48, baseType: !4905, size: 192)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4915, file: !4896, line: 55, baseType: !4919, size: 64, offset: 192)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4915, file: !4896, line: 61, baseType: !4921, size: 32, offset: 256)
!4921 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4922, line: 27, baseType: !648)
!4922 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4915, file: !4896, line: 66, baseType: !379, size: 128, offset: 320)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4915, file: !4896, line: 71, baseType: !920, size: 8, offset: 448)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4915, file: !4896, line: 74, baseType: !920, size: 8, offset: 456)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4890, file: !4891, line: 414, baseType: !840, size: 256, offset: 768)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4890, file: !4891, line: 422, baseType: !1988, size: 192, offset: 1024)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4890, file: !4891, line: 430, baseType: !1988, size: 192, offset: 1216)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4890, file: !4891, line: 433, baseType: !840, size: 256, offset: 1408)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4890, file: !4891, line: 435, baseType: !109, size: 32, offset: 1664)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4890, file: !4891, line: 437, baseType: !379, size: 128, offset: 1728)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4890, file: !4891, line: 443, baseType: !433, size: 32, offset: 1856)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4890, file: !4891, line: 448, baseType: !109, size: 32, offset: 1888)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4890, file: !4891, line: 452, baseType: !4935, size: 128, offset: 1920)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1989, line: 246, size: 128, elements: !4936)
!4936 = !{!4937}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4935, file: !1989, line: 247, baseType: !1992, size: 128)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4890, file: !4891, line: 460, baseType: !379, size: 128, offset: 2048)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4890, file: !4891, line: 470, baseType: !3507, size: 64, offset: 2176)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4890, file: !4891, line: 474, baseType: !1100, size: 256, offset: 2240)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4890, file: !4891, line: 482, baseType: !109, size: 32, offset: 2496)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4890, file: !4891, line: 490, baseType: !379, size: 128, offset: 2560)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4890, file: !4891, line: 499, baseType: !109, size: 32, offset: 2688)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4890, file: !4891, line: 506, baseType: !379, size: 128, offset: 2752)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4890, file: !4891, line: 514, baseType: !109, size: 32, offset: 2880)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4890, file: !4891, line: 521, baseType: !379, size: 128, offset: 2944)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4890, file: !4891, line: 530, baseType: !379, size: 128, offset: 3072)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4890, file: !4891, line: 539, baseType: !379, size: 128, offset: 3200)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4890, file: !4891, line: 541, baseType: !109, size: 32, offset: 3328)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4890, file: !4891, line: 541, baseType: !109, size: 32, offset: 3360)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4890, file: !4891, line: 542, baseType: !109, size: 32, offset: 3392)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4890, file: !4891, line: 542, baseType: !109, size: 32, offset: 3424)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4890, file: !4891, line: 543, baseType: !4954, size: 64, offset: 3456)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4956)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4891, line: 47, size: 576, elements: !4957)
!4957 = !{!4958, !5078, !5082, !5083, !5125, !5131, !5135, !5139, !5143}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4956, file: !4891, line: 83, baseType: !4959, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!4962, !395, !4753, !5063}
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4964, line: 117, size: 1600, elements: !4965)
!4964 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5cd71656f00b65d2ac7e671422852fe")
!4965 = !{!4966, !4967, !4968, !5003, !5004, !5026, !5051, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4963, file: !4964, line: 121, baseType: !395, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4963, file: !4964, line: 126, baseType: !379, size: 128, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4963, file: !4964, line: 131, baseType: !4969, size: 256, offset: 192)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4970, line: 55, size: 256, elements: !4971)
!4970 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4971 = !{!4972, !4973, !4974, !4997, !4998}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4969, file: !4970, line: 56, baseType: !2094, size: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4969, file: !4970, line: 57, baseType: !2094, size: 32, offset: 32)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4969, file: !4970, line: 58, baseType: !4975, size: 64, offset: 64)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4970, line: 67, size: 3136, elements: !4977)
!4977 = !{!4978, !4979, !4995}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4976, file: !4970, line: 73, baseType: !109, size: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4976, file: !4970, line: 82, baseType: !4980, size: 1536, offset: 64)
!4980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4981, size: 1536, elements: !4993)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4983, line: 80, size: 960, elements: !4984)
!4983 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!4984 = !{!4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4982, file: !4983, line: 84, baseType: !379, size: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4982, file: !4983, line: 89, baseType: !4969, size: 256, offset: 128)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4982, file: !4983, line: 166, baseType: !2094, size: 32, offset: 384)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4982, file: !4983, line: 171, baseType: !3744, size: 256, offset: 416)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4982, file: !4983, line: 176, baseType: !2094, size: 32, offset: 672)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4982, file: !4983, line: 184, baseType: !4824, size: 64, offset: 704)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4982, file: !4983, line: 189, baseType: !395, size: 64, offset: 768)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4982, file: !4983, line: 197, baseType: !379, size: 128, offset: 832)
!4993 = !{!4994}
!4994 = !DISubrange(count: 24)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4976, file: !4970, line: 106, baseType: !4996, size: 1536, offset: 1600)
!4996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4825, size: 1536, elements: !4993)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4969, file: !4970, line: 59, baseType: !400, size: 32, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4969, file: !4970, line: 60, baseType: !4999, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !5002}
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4963, file: !4964, line: 136, baseType: !2956, size: 128, offset: 448)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4963, file: !4964, line: 141, baseType: !5005, size: 64, offset: 576)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5007)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5008, line: 61, size: 192, elements: !5009)
!5008 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!5009 = !{!5010, !5011, !5012, !5013, !5019, !5020, !5021, !5022, !5023, !5024, !5025}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5007, file: !5008, line: 63, baseType: !648, size: 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5007, file: !5008, line: 72, baseType: !457, size: 8, offset: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !5007, file: !5008, line: 75, baseType: !457, size: 8, offset: 40)
!5013 = !DIDerivedType(tag: DW_TAG_member, scope: !5007, file: !5008, line: 77, baseType: !5014, size: 32, offset: 48)
!5014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5007, file: !5008, line: 77, size: 32, elements: !5015)
!5015 = !{!5016, !5018}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !5014, file: !5008, line: 86, baseType: !5017, size: 32)
!5017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 32, elements: !1070)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !5014, file: !5008, line: 112, baseType: !5017, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !5007, file: !5008, line: 121, baseType: !5017, size: 32, offset: 80)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !5007, file: !5008, line: 129, baseType: !5017, size: 32, offset: 112)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !5007, file: !5008, line: 132, baseType: !457, size: 8, offset: 144)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !5007, file: !5008, line: 134, baseType: !457, size: 8, offset: 152)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !5007, file: !5008, line: 137, baseType: !920, size: 8, offset: 160)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !5007, file: !5008, line: 140, baseType: !920, size: 8, offset: 168)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !5007, file: !5008, line: 143, baseType: !920, size: 8, offset: 176)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4963, file: !4964, line: 145, baseType: !5027, size: 64, offset: 640)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5029)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4964, line: 42, size: 192, elements: !5030)
!5030 = !{!5031, !5035, !5039}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5029, file: !4964, line: 53, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !4962}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !5029, file: !4964, line: 73, baseType: !5036, size: 64, offset: 64)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!109, !4962, !4753, !912}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !5029, file: !4964, line: 97, baseType: !5040, size: 64, offset: 128)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!109, !4962, !4753, !7, !7, !5043, !7}
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !5045, line: 96, size: 64, elements: !5046)
!5045 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!5046 = !{!5047, !5048, !5049, !5050}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5044, file: !5045, line: 97, baseType: !469, size: 16)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5044, file: !5045, line: 98, baseType: !469, size: 16, offset: 16)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5044, file: !5045, line: 99, baseType: !469, size: 16, offset: 32)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5044, file: !5045, line: 100, baseType: !469, size: 16, offset: 48)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4963, file: !4964, line: 150, baseType: !5052, size: 128, offset: 704)
!5052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1070)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4963, file: !4964, line: 168, baseType: !5052, size: 128, offset: 832)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4963, file: !4964, line: 175, baseType: !4825, size: 64, offset: 960)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4963, file: !4964, line: 180, baseType: !7, size: 32, offset: 1024)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4963, file: !4964, line: 185, baseType: !7, size: 32, offset: 1056)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4963, file: !4964, line: 190, baseType: !109, size: 32, offset: 1088)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4963, file: !4964, line: 196, baseType: !109, size: 32, offset: 1120)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4963, file: !4964, line: 202, baseType: !109, size: 32, offset: 1152)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4963, file: !4964, line: 206, baseType: !379, size: 128, offset: 1216)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4963, file: !4964, line: 213, baseType: !5062, size: 256, offset: 1344)
!5062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4781, size: 256, elements: !1070)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5065)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !251, line: 703, size: 832, elements: !5066)
!5066 = !{!5067, !5068, !5069, !5070, !5071, !5072, !5074, !5075, !5076}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5065, file: !251, line: 705, baseType: !649, size: 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5065, file: !251, line: 707, baseType: !649, size: 32, offset: 32)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5065, file: !251, line: 709, baseType: !649, size: 32, offset: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5065, file: !251, line: 714, baseType: !649, size: 32, offset: 96)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5065, file: !251, line: 719, baseType: !649, size: 32, offset: 128)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5065, file: !251, line: 725, baseType: !5073, size: 128, offset: 160)
!5073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 128, elements: !1070)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5065, file: !251, line: 727, baseType: !5073, size: 128, offset: 288)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5065, file: !251, line: 729, baseType: !5073, size: 128, offset: 416)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5065, file: !251, line: 735, baseType: !5077, size: 256, offset: 576)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 256, elements: !1070)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4956, file: !4891, line: 98, baseType: !5079, size: 64, offset: 64)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!5005, !5063}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4956, file: !4891, line: 114, baseType: !4761, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4956, file: !4891, line: 124, baseType: !5084, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!141, !395, !5087}
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5089)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !142, line: 252, size: 960, elements: !5090)
!5090 = !{!5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !5089, file: !142, line: 258, baseType: !109, size: 32)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !5089, file: !142, line: 259, baseType: !467, size: 16, offset: 32)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !5089, file: !142, line: 260, baseType: !467, size: 16, offset: 48)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !5089, file: !142, line: 261, baseType: !467, size: 16, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !5089, file: !142, line: 262, baseType: !467, size: 16, offset: 80)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !5089, file: !142, line: 263, baseType: !467, size: 16, offset: 96)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !5089, file: !142, line: 264, baseType: !467, size: 16, offset: 112)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !5089, file: !142, line: 265, baseType: !467, size: 16, offset: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !5089, file: !142, line: 266, baseType: !467, size: 16, offset: 144)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !5089, file: !142, line: 267, baseType: !467, size: 16, offset: 160)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !5089, file: !142, line: 268, baseType: !467, size: 16, offset: 176)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5089, file: !142, line: 303, baseType: !648, size: 32, offset: 192)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !5089, file: !142, line: 320, baseType: !109, size: 32, offset: 224)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !5089, file: !142, line: 321, baseType: !467, size: 16, offset: 256)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !5089, file: !142, line: 322, baseType: !467, size: 16, offset: 272)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !5089, file: !142, line: 323, baseType: !467, size: 16, offset: 288)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !5089, file: !142, line: 324, baseType: !467, size: 16, offset: 304)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !5089, file: !142, line: 325, baseType: !467, size: 16, offset: 320)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !5089, file: !142, line: 326, baseType: !467, size: 16, offset: 336)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !5089, file: !142, line: 327, baseType: !467, size: 16, offset: 352)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !5089, file: !142, line: 328, baseType: !467, size: 16, offset: 368)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !5089, file: !142, line: 329, baseType: !467, size: 16, offset: 384)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !5089, file: !142, line: 330, baseType: !467, size: 16, offset: 400)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !5089, file: !142, line: 331, baseType: !467, size: 16, offset: 416)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !5089, file: !142, line: 332, baseType: !467, size: 16, offset: 432)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !5089, file: !142, line: 333, baseType: !467, size: 16, offset: 448)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5089, file: !142, line: 341, baseType: !467, size: 16, offset: 464)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5089, file: !142, line: 349, baseType: !467, size: 16, offset: 480)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5089, file: !142, line: 378, baseType: !457, size: 8, offset: 496)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !5089, file: !142, line: 389, baseType: !920, size: 8, offset: 504)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5089, file: !142, line: 396, baseType: !379, size: 128, offset: 512)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5089, file: !142, line: 403, baseType: !3744, size: 256, offset: 640)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5089, file: !142, line: 411, baseType: !141, size: 32, offset: 896)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5089, file: !142, line: 418, baseType: !184, size: 32, offset: 928)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4956, file: !4891, line: 201, baseType: !5126, size: 64, offset: 256)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!109, !395, !5129}
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !201, line: 921, flags: DIFlagFwdDecl)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4956, file: !4891, line: 283, baseType: !5132, size: 64, offset: 320)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!109, !395, !5129, !920}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4956, file: !4891, line: 302, baseType: !5136, size: 64, offset: 384)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!5129, !395}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4956, file: !4891, line: 323, baseType: !5140, size: 64, offset: 448)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !5129}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4956, file: !4891, line: 338, baseType: !5140, size: 64, offset: 512)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4890, file: !4891, line: 546, baseType: !920, size: 8, offset: 3520)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4890, file: !4891, line: 547, baseType: !920, size: 8, offset: 3528)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4890, file: !4891, line: 548, baseType: !920, size: 8, offset: 3536)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4890, file: !4891, line: 549, baseType: !1156, size: 704, offset: 3584)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4890, file: !4891, line: 557, baseType: !840, size: 256, offset: 4288)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4890, file: !4891, line: 565, baseType: !379, size: 128, offset: 4544)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4890, file: !4891, line: 573, baseType: !4981, size: 64, offset: 4672)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4890, file: !4891, line: 578, baseType: !4981, size: 64, offset: 4736)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4890, file: !4891, line: 583, baseType: !4981, size: 64, offset: 4800)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4890, file: !4891, line: 589, baseType: !4981, size: 64, offset: 4864)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4890, file: !4891, line: 594, baseType: !4981, size: 64, offset: 4928)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4890, file: !4891, line: 599, baseType: !4981, size: 64, offset: 4992)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4890, file: !4891, line: 604, baseType: !4981, size: 64, offset: 5056)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4890, file: !4891, line: 609, baseType: !4981, size: 64, offset: 5120)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4890, file: !4891, line: 614, baseType: !4981, size: 64, offset: 5184)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4890, file: !4891, line: 619, baseType: !4981, size: 64, offset: 5248)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4890, file: !4891, line: 624, baseType: !4981, size: 64, offset: 5312)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4890, file: !4891, line: 629, baseType: !4981, size: 64, offset: 5376)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4890, file: !4891, line: 634, baseType: !4981, size: 64, offset: 5440)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4890, file: !4891, line: 639, baseType: !4981, size: 64, offset: 5504)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4890, file: !4891, line: 644, baseType: !4981, size: 64, offset: 5568)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4890, file: !4891, line: 649, baseType: !4981, size: 64, offset: 5632)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4890, file: !4891, line: 655, baseType: !4981, size: 64, offset: 5696)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4890, file: !4891, line: 660, baseType: !4981, size: 64, offset: 5760)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4890, file: !4891, line: 669, baseType: !4981, size: 64, offset: 5824)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4890, file: !4891, line: 675, baseType: !4981, size: 64, offset: 5888)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4890, file: !4891, line: 681, baseType: !4981, size: 64, offset: 5952)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4890, file: !4891, line: 686, baseType: !4981, size: 64, offset: 6016)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4890, file: !4891, line: 692, baseType: !4981, size: 64, offset: 6080)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4890, file: !4891, line: 697, baseType: !4981, size: 64, offset: 6144)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4890, file: !4891, line: 703, baseType: !4981, size: 64, offset: 6208)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4890, file: !4891, line: 709, baseType: !4981, size: 64, offset: 6272)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4890, file: !4891, line: 714, baseType: !4981, size: 64, offset: 6336)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4890, file: !4891, line: 722, baseType: !4981, size: 64, offset: 6400)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4890, file: !4891, line: 728, baseType: !4981, size: 64, offset: 6464)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4890, file: !4891, line: 734, baseType: !4981, size: 64, offset: 6528)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4890, file: !4891, line: 739, baseType: !4981, size: 64, offset: 6592)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4890, file: !4891, line: 744, baseType: !4981, size: 64, offset: 6656)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4890, file: !4891, line: 749, baseType: !4981, size: 64, offset: 6720)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4890, file: !4891, line: 754, baseType: !4981, size: 64, offset: 6784)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4890, file: !4891, line: 759, baseType: !4981, size: 64, offset: 6848)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4890, file: !4891, line: 764, baseType: !4981, size: 64, offset: 6912)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4890, file: !4891, line: 769, baseType: !4981, size: 64, offset: 6976)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4890, file: !4891, line: 774, baseType: !4981, size: 64, offset: 7040)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4890, file: !4891, line: 778, baseType: !4981, size: 64, offset: 7104)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4890, file: !4891, line: 784, baseType: !4981, size: 64, offset: 7168)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4890, file: !4891, line: 789, baseType: !4981, size: 64, offset: 7232)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4890, file: !4891, line: 794, baseType: !4981, size: 64, offset: 7296)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4890, file: !4891, line: 799, baseType: !4981, size: 64, offset: 7360)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4890, file: !4891, line: 804, baseType: !4981, size: 64, offset: 7424)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4890, file: !4891, line: 810, baseType: !4981, size: 64, offset: 7488)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4890, file: !4891, line: 816, baseType: !4981, size: 64, offset: 7552)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4890, file: !4891, line: 821, baseType: !4981, size: 64, offset: 7616)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4890, file: !4891, line: 827, baseType: !4981, size: 64, offset: 7680)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4890, file: !4891, line: 832, baseType: !4981, size: 64, offset: 7744)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4890, file: !4891, line: 839, baseType: !4981, size: 64, offset: 7808)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4890, file: !4891, line: 846, baseType: !4981, size: 64, offset: 7872)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4890, file: !4891, line: 853, baseType: !4981, size: 64, offset: 7936)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4890, file: !4891, line: 861, baseType: !4981, size: 64, offset: 8000)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4890, file: !4891, line: 869, baseType: !4981, size: 64, offset: 8064)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4890, file: !4891, line: 876, baseType: !4981, size: 64, offset: 8128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4890, file: !4891, line: 882, baseType: !4981, size: 64, offset: 8192)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4890, file: !4891, line: 888, baseType: !4981, size: 64, offset: 8256)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4890, file: !4891, line: 891, baseType: !2094, size: 32, offset: 8320)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4890, file: !4891, line: 891, baseType: !2094, size: 32, offset: 8352)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4890, file: !4891, line: 899, baseType: !920, size: 8, offset: 8384)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4890, file: !4891, line: 913, baseType: !920, size: 8, offset: 8392)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4890, file: !4891, line: 919, baseType: !920, size: 8, offset: 8400)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4890, file: !4891, line: 929, baseType: !920, size: 8, offset: 8408)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4890, file: !4891, line: 937, baseType: !920, size: 8, offset: 8416)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4890, file: !4891, line: 943, baseType: !4981, size: 64, offset: 8448)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4890, file: !4891, line: 946, baseType: !2094, size: 32, offset: 8512)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4890, file: !4891, line: 946, baseType: !2094, size: 32, offset: 8544)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4890, file: !4891, line: 955, baseType: !5129, size: 64, offset: 8576)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4890, file: !4891, line: 957, baseType: !5219, size: 64, offset: 8640)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5221)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !242, line: 1454, size: 128, elements: !5222)
!5222 = !{!5223, !5224}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_tail", scope: !5221, file: !242, line: 1490, baseType: !5140, size: 64)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_setup", scope: !5221, file: !242, line: 1511, baseType: !5225, size: 64, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!109, !5129}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !396, file: !194, line: 285, baseType: !840, size: 256, offset: 11648)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !396, file: !194, line: 288, baseType: !1988, size: 192, offset: 11904)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !396, file: !194, line: 291, baseType: !5231, size: 64, offset: 12096)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !194, line: 16, flags: DIFlagFwdDecl)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !396, file: !194, line: 294, baseType: !5234, size: 64, offset: 12160)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !194, line: 17, flags: DIFlagFwdDecl)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !396, file: !194, line: 304, baseType: !193, size: 32, offset: 12224)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !396, file: !194, line: 312, baseType: !5238, size: 64, offset: 12288)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !194, line: 18, flags: DIFlagFwdDecl)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !396, file: !194, line: 319, baseType: !840, size: 256, offset: 12352)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !396, file: !194, line: 327, baseType: !379, size: 128, offset: 12608)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !392, file: !201, line: 1498, baseType: !413, size: 64, offset: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !392, file: !201, line: 1500, baseType: !5244, size: 64, offset: 128)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5246)
!5246 = !{!5247, !5248, !5252}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5245, file: !94, line: 107, baseType: !537, size: 128)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5245, file: !94, line: 108, baseType: !5249, size: 64, offset: 128)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!531, !413, !5244, !499}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5245, file: !94, line: 110, baseType: !5253, size: 64, offset: 192)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!531, !413, !5244, !421, !546}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !392, file: !201, line: 1508, baseType: !4673, size: 64, offset: 192)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !392, file: !201, line: 1518, baseType: !379, size: 128, offset: 256)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !392, file: !201, line: 1526, baseType: !379, size: 128, offset: 384)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !392, file: !201, line: 1529, baseType: !4969, size: 256, offset: 512)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !201, line: 1532, baseType: !499, size: 64, offset: 768)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !392, file: !201, line: 1539, baseType: !840, size: 256, offset: 832)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !392, file: !201, line: 1547, baseType: !7, size: 32, offset: 1088)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !392, file: !201, line: 1553, baseType: !109, size: 32, offset: 1120)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !392, file: !201, line: 1555, baseType: !109, size: 32, offset: 1152)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !392, file: !201, line: 1561, baseType: !920, size: 8, offset: 1184)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !392, file: !201, line: 1567, baseType: !920, size: 8, offset: 1192)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !392, file: !201, line: 1573, baseType: !920, size: 8, offset: 1200)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !392, file: !201, line: 1581, baseType: !920, size: 8, offset: 1208)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !392, file: !201, line: 1589, baseType: !200, size: 32, offset: 1216)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !392, file: !201, line: 1596, baseType: !379, size: 128, offset: 1280)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !392, file: !201, line: 1603, baseType: !206, size: 32, offset: 1408)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !392, file: !201, line: 1611, baseType: !379, size: 128, offset: 1472)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !392, file: !201, line: 1622, baseType: !5274, size: 1536, offset: 1600)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !201, line: 651, size: 1536, elements: !5275)
!5275 = !{!5276, !5277, !5278, !5279, !5280, !5281, !5282, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5326, !5327, !5332, !5337, !5338, !5339, !5340, !5342, !5343}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5274, file: !201, line: 655, baseType: !7, size: 32)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5274, file: !201, line: 660, baseType: !7, size: 32, offset: 32)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5274, file: !201, line: 665, baseType: !7, size: 32, offset: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5274, file: !201, line: 670, baseType: !211, size: 32, offset: 96)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5274, file: !201, line: 684, baseType: !109, size: 32, offset: 128)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5274, file: !201, line: 692, baseType: !648, size: 32, offset: 160)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5274, file: !201, line: 699, baseType: !5283, size: 64, offset: 192)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5274, file: !201, line: 703, baseType: !7, size: 32, offset: 256)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5274, file: !201, line: 710, baseType: !648, size: 32, offset: 288)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5274, file: !201, line: 716, baseType: !109, size: 32, offset: 320)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5274, file: !201, line: 721, baseType: !920, size: 8, offset: 352)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5274, file: !201, line: 729, baseType: !920, size: 8, offset: 360)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5274, file: !201, line: 737, baseType: !920, size: 8, offset: 368)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5274, file: !201, line: 742, baseType: !920, size: 8, offset: 376)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5274, file: !201, line: 748, baseType: !920, size: 8, offset: 384)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5274, file: !201, line: 754, baseType: !457, size: 8, offset: 392)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5274, file: !201, line: 760, baseType: !457, size: 8, offset: 400)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5274, file: !201, line: 765, baseType: !457, size: 8, offset: 408)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5274, file: !201, line: 770, baseType: !5297, size: 768, offset: 448)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !201, line: 293, size: 768, elements: !5298)
!5298 = !{!5299, !5309, !5310, !5311, !5312, !5313, !5314}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5297, file: !201, line: 295, baseType: !5300, size: 32)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !201, line: 231, size: 32, elements: !5301)
!5301 = !{!5302, !5303, !5304}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5300, file: !201, line: 235, baseType: !920, size: 8)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5300, file: !201, line: 239, baseType: !920, size: 8, offset: 8)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5300, file: !201, line: 243, baseType: !5305, size: 16, offset: 16)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !201, line: 214, size: 16, elements: !5306)
!5306 = !{!5307, !5308}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5305, file: !201, line: 218, baseType: !920, size: 8)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5305, file: !201, line: 222, baseType: !920, size: 8, offset: 8)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5297, file: !201, line: 303, baseType: !1073, size: 256, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5297, file: !201, line: 311, baseType: !1073, size: 256, offset: 320)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5297, file: !201, line: 314, baseType: !457, size: 8, offset: 576)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5297, file: !201, line: 317, baseType: !457, size: 8, offset: 584)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5297, file: !201, line: 320, baseType: !457, size: 8, offset: 592)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5297, file: !201, line: 323, baseType: !5315, size: 128, offset: 608)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !201, line: 253, size: 128, elements: !5316)
!5316 = !{!5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5315, file: !201, line: 255, baseType: !920, size: 8)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5315, file: !201, line: 258, baseType: !920, size: 8, offset: 8)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5315, file: !201, line: 264, baseType: !920, size: 8, offset: 16)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5315, file: !201, line: 269, baseType: !457, size: 8, offset: 24)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5315, file: !201, line: 272, baseType: !457, size: 8, offset: 32)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5315, file: !201, line: 275, baseType: !109, size: 32, offset: 64)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5315, file: !201, line: 278, baseType: !457, size: 8, offset: 96)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5315, file: !201, line: 281, baseType: !457, size: 8, offset: 104)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5315, file: !201, line: 284, baseType: !457, size: 8, offset: 112)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5274, file: !201, line: 775, baseType: !920, size: 8, offset: 1216)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5274, file: !201, line: 780, baseType: !5328, size: 32, offset: 1232)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !201, line: 383, size: 32, elements: !5329)
!5329 = !{!5330, !5331}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5328, file: !201, line: 384, baseType: !467, size: 16)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5328, file: !201, line: 385, baseType: !467, size: 16, offset: 16)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5274, file: !201, line: 785, baseType: !5333, size: 64, offset: 1280)
!5333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !201, line: 399, size: 64, elements: !5334)
!5334 = !{!5335, !5336}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5333, file: !201, line: 400, baseType: !648, size: 32)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5333, file: !201, line: 401, baseType: !648, size: 32, offset: 32)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5274, file: !201, line: 792, baseType: !457, size: 8, offset: 1344)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5274, file: !201, line: 797, baseType: !457, size: 8, offset: 1352)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5274, file: !201, line: 803, baseType: !648, size: 32, offset: 1376)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5274, file: !201, line: 808, baseType: !5341, size: 64, offset: 1408)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5274, file: !201, line: 813, baseType: !109, size: 32, offset: 1472)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5274, file: !201, line: 818, baseType: !648, size: 32, offset: 1504)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !392, file: !201, line: 1625, baseType: !5345, size: 64, offset: 3136)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5347)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !201, line: 1034, size: 1024, elements: !5348)
!5348 = !{!5349, !5354, !5358, !5362, !5363, !5367, !5371, !5375, !5376, !5377, !5941, !5945, !5949, !5955, !5959, !5960}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5347, file: !201, line: 1051, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!109, !5353, !109}
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5347, file: !201, line: 1063, baseType: !5355, size: 64, offset: 64)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{null, !5353}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5347, file: !201, line: 1096, baseType: !5359, size: 64, offset: 128)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!206, !5353, !920}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5347, file: !201, line: 1113, baseType: !5355, size: 64, offset: 192)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5347, file: !201, line: 1138, baseType: !5364, size: 64, offset: 256)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!109, !5353, !2094, !2094}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5347, file: !201, line: 1154, baseType: !5368, size: 64, offset: 320)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!109, !5353, !4981, !4825}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5347, file: !201, line: 1173, baseType: !5372, size: 64, offset: 384)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!109, !5353}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5347, file: !201, line: 1186, baseType: !5355, size: 64, offset: 448)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5347, file: !201, line: 1196, baseType: !5355, size: 64, offset: 512)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5347, file: !201, line: 1229, baseType: !5378, size: 64, offset: 576)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!5381, !5353}
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !201, line: 884, size: 1280, elements: !5383)
!5383 = !{!5384, !5385, !5834, !5906, !5907, !5908, !5909, !5929, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5382, file: !201, line: 886, baseType: !5353, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5382, file: !201, line: 894, baseType: !5386, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !5388, line: 932, size: 8064, elements: !5389)
!5388 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!5389 = !{!5390, !5391, !5392, !5393, !5394, !5395, !5396, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5748, !5749, !5751, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5827, !5828, !5829, !5830, !5831}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5387, file: !5388, line: 934, baseType: !395, size: 64)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5387, file: !5388, line: 936, baseType: !4669, size: 64, offset: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5387, file: !5388, line: 944, baseType: !379, size: 128, offset: 128)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5387, file: !5388, line: 947, baseType: !499, size: 64, offset: 256)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5387, file: !5388, line: 959, baseType: !4895, size: 448, offset: 320)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5387, file: !5388, line: 962, baseType: !4969, size: 256, offset: 768)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5387, file: !5388, line: 971, baseType: !5397, size: 64, offset: 1024)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !232, line: 603, size: 5312, elements: !5399)
!5399 = !{!5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5564, !5565, !5566, !5567, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5398, file: !232, line: 605, baseType: !395, size: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5398, file: !232, line: 614, baseType: !379, size: 128, offset: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5398, file: !232, line: 617, baseType: !499, size: 64, offset: 192)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5398, file: !232, line: 628, baseType: !4895, size: 448, offset: 256)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5398, file: !232, line: 631, baseType: !4969, size: 256, offset: 704)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5398, file: !232, line: 637, baseType: !2094, size: 32, offset: 960)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !5398, file: !232, line: 639, baseType: !4791, size: 64, offset: 1024)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !5398, file: !232, line: 641, baseType: !7, size: 32, offset: 1088)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !5398, file: !232, line: 646, baseType: !920, size: 8, offset: 1120)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !5398, file: !232, line: 649, baseType: !4824, size: 64, offset: 1152)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !5398, file: !232, line: 651, baseType: !7, size: 32, offset: 1216)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5398, file: !232, line: 660, baseType: !5386, size: 64, offset: 1280)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5398, file: !232, line: 669, baseType: !4962, size: 64, offset: 1344)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !5398, file: !232, line: 677, baseType: !4962, size: 64, offset: 1408)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5398, file: !232, line: 680, baseType: !5415, size: 64, offset: 1472)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5417)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !232, line: 279, size: 832, elements: !5418)
!5418 = !{!5419, !5423, !5427, !5431, !5432, !5436, !5537, !5541, !5545, !5551, !5555, !5556, !5560}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5417, file: !232, line: 306, baseType: !5420, size: 64)
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!109, !5397, !5386, !4962, !109, !109, !7, !7, !2094, !2094, !2094, !2094, !4914}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5417, file: !232, line: 329, baseType: !5424, size: 64, offset: 64)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!109, !5397, !4914}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5417, file: !232, line: 339, baseType: !5428, size: 64, offset: 128)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{null, !5397}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5417, file: !232, line: 351, baseType: !5428, size: 64, offset: 192)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5417, file: !232, line: 367, baseType: !5433, size: 64, offset: 256)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!109, !5397, !4981, !4825}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5417, file: !232, line: 401, baseType: !5437, size: 64, offset: 320)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!5440, !5397}
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !232, line: 52, size: 1280, elements: !5442)
!5442 = !{!5443, !5444, !5445, !5446, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5506, !5507, !5508, !5509, !5510, !5511, !5521, !5522, !5530, !5531, !5532, !5533, !5536}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5441, file: !232, line: 54, baseType: !5397, size: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5441, file: !232, line: 62, baseType: !5386, size: 64, offset: 64)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5441, file: !232, line: 70, baseType: !4962, size: 64, offset: 128)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5441, file: !232, line: 83, baseType: !5447, size: 64, offset: 192)
!5447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!5448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !365, line: 65, size: 512, elements: !5449)
!5449 = !{!5450, !5451, !5484, !5490, !5491, !5492, !5493, !5494}
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5448, file: !365, line: 66, baseType: !2559, size: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5448, file: !365, line: 67, baseType: !5452, size: 64, offset: 64)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5454)
!5454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !365, line: 125, size: 640, elements: !5455)
!5455 = !{!5456, !5457, !5461, !5462, !5466, !5467, !5471, !5475, !5479, !5480}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !5454, file: !365, line: 132, baseType: !920, size: 8)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !5454, file: !365, line: 143, baseType: !5458, size: 64, offset: 64)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!421, !5447}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !5454, file: !365, line: 155, baseType: !5458, size: 64, offset: 128)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !5454, file: !365, line: 192, baseType: !5463, size: 64, offset: 192)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{!920, !5447}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !5454, file: !365, line: 209, baseType: !5463, size: 64, offset: 256)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5454, file: !365, line: 227, baseType: !5468, size: 64, offset: 320)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!535, !5447, !920, !535}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5454, file: !365, line: 238, baseType: !5472, size: 64, offset: 384)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{null, !5447}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !5454, file: !365, line: 248, baseType: !5476, size: 64, offset: 448)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{null, !5447, !499, !109}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !5454, file: !365, line: 258, baseType: !5476, size: 64, offset: 512)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !5454, file: !365, line: 279, baseType: !5481, size: 64, offset: 576)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{null, !5447, !1730}
!5484 = !DIDerivedType(tag: DW_TAG_member, scope: !5448, file: !365, line: 84, baseType: !5485, size: 128, offset: 128)
!5485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5448, file: !365, line: 84, size: 128, elements: !5486)
!5486 = !{!5487, !5488, !5489}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5485, file: !365, line: 85, baseType: !379, size: 128)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5485, file: !365, line: 87, baseType: !1730, size: 64)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5485, file: !365, line: 89, baseType: !1060, size: 128, align: 64)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5448, file: !365, line: 91, baseType: !652, size: 64, offset: 256)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !5448, file: !365, line: 92, baseType: !652, size: 64, offset: 320)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5448, file: !365, line: 93, baseType: !549, size: 64, offset: 384)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5448, file: !365, line: 94, baseType: !400, size: 32, offset: 448)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5448, file: !365, line: 95, baseType: !109, size: 32, offset: 480)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5441, file: !232, line: 92, baseType: !2073, size: 32, offset: 256)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5441, file: !232, line: 99, baseType: !2073, size: 32, offset: 288)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5441, file: !232, line: 103, baseType: !2094, size: 32, offset: 320)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5441, file: !232, line: 103, baseType: !2094, size: 32, offset: 352)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5441, file: !232, line: 109, baseType: !2094, size: 32, offset: 384)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5441, file: !232, line: 114, baseType: !2094, size: 32, offset: 416)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5441, file: !232, line: 117, baseType: !2094, size: 32, offset: 448)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5441, file: !232, line: 117, baseType: !2094, size: 32, offset: 480)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5441, file: !232, line: 125, baseType: !467, size: 16, offset: 512)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5441, file: !232, line: 133, baseType: !5505, size: 16, offset: 528)
!5505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !374, line: 109, baseType: !467)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5441, file: !232, line: 140, baseType: !7, size: 32, offset: 544)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5441, file: !232, line: 155, baseType: !7, size: 32, offset: 576)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5441, file: !232, line: 164, baseType: !7, size: 32, offset: 608)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5441, file: !232, line: 171, baseType: !219, size: 32, offset: 640)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5441, file: !232, line: 178, baseType: !226, size: 32, offset: 672)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5441, file: !232, line: 191, baseType: !5512, size: 64, offset: 704)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4983, line: 216, size: 704, elements: !5514)
!5514 = !{!5515, !5516, !5517, !5518, !5519, !5520}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5513, file: !4983, line: 217, baseType: !4969, size: 256)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5513, file: !4983, line: 218, baseType: !395, size: 64, offset: 256)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5513, file: !4983, line: 219, baseType: !379, size: 128, offset: 320)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5513, file: !4983, line: 220, baseType: !379, size: 128, offset: 448)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5513, file: !4983, line: 221, baseType: !546, size: 64, offset: 576)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5513, file: !4983, line: 222, baseType: !372, size: 64, offset: 640)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5441, file: !232, line: 201, baseType: !920, size: 8, offset: 768)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5441, file: !232, line: 223, baseType: !5523, size: 128, offset: 800)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5524, line: 46, size: 128, elements: !5525)
!5524 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!5525 = !{!5526, !5527, !5528, !5529}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5523, file: !5524, line: 47, baseType: !109, size: 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5523, file: !5524, line: 47, baseType: !109, size: 32, offset: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5523, file: !5524, line: 47, baseType: !109, size: 32, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5523, file: !5524, line: 47, baseType: !109, size: 32, offset: 96)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5441, file: !232, line: 223, baseType: !5523, size: 128, offset: 928)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5441, file: !232, line: 231, baseType: !920, size: 8, offset: 1056)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5441, file: !232, line: 238, baseType: !231, size: 32, offset: 1088)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5441, file: !232, line: 246, baseType: !5534, size: 64, offset: 1152)
!5534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5535, size: 64)
!5535 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !201, line: 928, flags: DIFlagFwdDecl)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5441, file: !232, line: 249, baseType: !5129, size: 64, offset: 1216)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5417, file: !232, line: 411, baseType: !5538, size: 64, offset: 384)
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{null, !5397, !5440}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5417, file: !232, line: 456, baseType: !5542, size: 64, offset: 448)
!5542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{!109, !5397, !5440, !4981, !4825}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5417, file: !232, line: 479, baseType: !5546, size: 64, offset: 512)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!109, !5397, !5549, !4981, !4824}
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 64)
!5550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5441)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5417, file: !232, line: 496, baseType: !5552, size: 64, offset: 576)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!109, !5397}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5417, file: !232, line: 507, baseType: !5428, size: 64, offset: 640)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5417, file: !232, line: 518, baseType: !5557, size: 64, offset: 704)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{null, !4830, !5549}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5417, file: !232, line: 537, baseType: !5561, size: 64, offset: 768)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!920, !5397, !2094, !4825}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5398, file: !232, line: 683, baseType: !4976, size: 3136, offset: 1536)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5398, file: !232, line: 686, baseType: !236, size: 32, offset: 4672)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5398, file: !232, line: 692, baseType: !7, size: 32, offset: 4704)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5398, file: !232, line: 695, baseType: !5568, size: 64, offset: 4736)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5570)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !242, line: 1189, size: 640, elements: !5571)
!5571 = !{!5572, !5576, !5577, !5578, !5579, !5583, !5587, !5588, !5589, !5590}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fb", scope: !5570, file: !242, line: 1232, baseType: !5573, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!109, !5397, !5440}
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_fb", scope: !5570, file: !242, line: 1243, baseType: !5538, size: 64, offset: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "begin_fb_access", scope: !5570, file: !242, line: 1266, baseType: !5573, size: 64, offset: 128)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "end_fb_access", scope: !5570, file: !242, line: 1274, baseType: !5538, size: 64, offset: 192)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5570, file: !242, line: 1311, baseType: !5580, size: 64, offset: 256)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!109, !5397, !5129}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_update", scope: !5570, file: !242, line: 1328, baseType: !5584, size: 64, offset: 320)
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5585, size: 64)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{null, !5397, !5129}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5570, file: !242, line: 1353, baseType: !5584, size: 64, offset: 384)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5570, file: !242, line: 1378, baseType: !5584, size: 64, offset: 448)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_check", scope: !5570, file: !242, line: 1397, baseType: !5580, size: 64, offset: 512)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_update", scope: !5570, file: !242, line: 1434, baseType: !5584, size: 64, offset: 576)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5398, file: !232, line: 710, baseType: !5440, size: 64, offset: 4800)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !5398, file: !232, line: 717, baseType: !4981, size: 64, offset: 4864)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !5398, file: !232, line: 723, baseType: !4981, size: 64, offset: 4928)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !5398, file: !232, line: 729, baseType: !4981, size: 64, offset: 4992)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !5398, file: !232, line: 737, baseType: !4981, size: 64, offset: 5056)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !5398, file: !232, line: 746, baseType: !4981, size: 64, offset: 5120)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !5398, file: !232, line: 754, baseType: !4981, size: 64, offset: 5184)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5398, file: !232, line: 760, baseType: !4981, size: 64, offset: 5248)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !5387, file: !5388, line: 980, baseType: !5397, size: 64, offset: 1088)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5387, file: !5388, line: 986, baseType: !7, size: 32, offset: 1152)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !5387, file: !5388, line: 995, baseType: !109, size: 32, offset: 1184)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !5387, file: !5388, line: 1003, baseType: !109, size: 32, offset: 1216)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5387, file: !5388, line: 1013, baseType: !920, size: 8, offset: 1248)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5387, file: !5388, line: 1023, baseType: !5089, size: 960, offset: 1280)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5387, file: !5388, line: 1039, baseType: !5089, size: 960, offset: 2240)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5387, file: !5388, line: 1048, baseType: !109, size: 32, offset: 3200)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5387, file: !5388, line: 1056, baseType: !109, size: 32, offset: 3232)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5387, file: !5388, line: 1059, baseType: !5609, size: 64, offset: 3264)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5611)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !5388, line: 402, size: 1536, elements: !5612)
!5612 = !{!5613, !5617, !5621, !5625, !5629, !5634, !5635, !5651, !5657, !5661, !5665, !5699, !5703, !5707, !5713, !5717, !5718, !5722, !5727, !5733, !5737, !5741, !5742, !5743}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5611, file: !5388, line: 413, baseType: !5614, size: 64)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{null, !5386}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5611, file: !5388, line: 436, baseType: !5618, size: 64, offset: 64)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{!109, !5386, !4753, !2094, !2094, !2094}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5611, file: !5388, line: 458, baseType: !5622, size: 64, offset: 128)
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!109, !5386, !4753, !2094, !2094, !2094, !2073, !2073}
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5611, file: !5388, line: 478, baseType: !5626, size: 64, offset: 192)
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5627, size: 64)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{!109, !5386, !109, !109}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5611, file: !5388, line: 493, baseType: !5630, size: 64, offset: 256)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!109, !5386, !5633, !5633, !5633, !2094, !4914}
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5611, file: !5388, line: 504, baseType: !5614, size: 64, offset: 320)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5611, file: !5388, line: 520, baseType: !5636, size: 64, offset: 384)
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!109, !5639, !4914}
!5639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5640, size: 64)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !5388, line: 1193, size: 384, elements: !5641)
!5641 = !{!5642, !5643, !5644, !5646, !5647, !5648, !5650}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5640, file: !5388, line: 1194, baseType: !4962, size: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5640, file: !5388, line: 1195, baseType: !5386, size: 64, offset: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5640, file: !5388, line: 1196, baseType: !5645, size: 64, offset: 128)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5640, file: !5388, line: 1198, baseType: !2094, size: 32, offset: 192)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5640, file: !5388, line: 1199, baseType: !2094, size: 32, offset: 224)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5640, file: !5388, line: 1201, baseType: !5649, size: 64, offset: 256)
!5649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5640, file: !5388, line: 1202, baseType: !546, size: 64, offset: 320)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5611, file: !5388, line: 576, baseType: !5652, size: 64, offset: 448)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!109, !5386, !4962, !5655, !2094, !4914}
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !5388, line: 58, flags: DIFlagFwdDecl)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5611, file: !5388, line: 595, baseType: !5658, size: 64, offset: 512)
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5659, size: 64)
!5659 = !DISubroutineType(types: !5660)
!5660 = !{!109, !5386, !4962, !5655, !2094, !2094, !4914}
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5611, file: !5388, line: 615, baseType: !5662, size: 64, offset: 576)
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!109, !5386, !4981, !4825}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5611, file: !5388, line: 649, baseType: !5666, size: 64, offset: 640)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{!5669, !5386}
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !5388, line: 81, size: 2688, elements: !5671)
!5671 = !{!5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5670, file: !5388, line: 83, baseType: !5386, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5670, file: !5388, line: 90, baseType: !920, size: 8, offset: 64)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5670, file: !5388, line: 105, baseType: !920, size: 8, offset: 72)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5670, file: !5388, line: 111, baseType: !920, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5670, file: !5388, line: 123, baseType: !920, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5670, file: !5388, line: 130, baseType: !920, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5670, file: !5388, line: 141, baseType: !920, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5670, file: !5388, line: 147, baseType: !920, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5670, file: !5388, line: 153, baseType: !920, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5670, file: !5388, line: 189, baseType: !920, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5670, file: !5388, line: 195, baseType: !648, size: 32, offset: 96)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5670, file: !5388, line: 201, baseType: !648, size: 32, offset: 128)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5670, file: !5388, line: 207, baseType: !648, size: 32, offset: 160)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5670, file: !5388, line: 222, baseType: !5089, size: 960, offset: 192)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5670, file: !5388, line: 239, baseType: !5089, size: 960, offset: 1152)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5670, file: !5388, line: 245, baseType: !5512, size: 64, offset: 2112)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5670, file: !5388, line: 254, baseType: !5512, size: 64, offset: 2176)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5670, file: !5388, line: 262, baseType: !5512, size: 64, offset: 2240)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5670, file: !5388, line: 275, baseType: !5512, size: 64, offset: 2304)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5670, file: !5388, line: 283, baseType: !648, size: 32, offset: 2368)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5670, file: !5388, line: 291, baseType: !920, size: 8, offset: 2400)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5670, file: !5388, line: 300, baseType: !920, size: 8, offset: 2408)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5670, file: !5388, line: 311, baseType: !920, size: 8, offset: 2416)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5670, file: !5388, line: 318, baseType: !231, size: 32, offset: 2432)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5670, file: !5388, line: 375, baseType: !5655, size: 64, offset: 2496)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5670, file: !5388, line: 384, baseType: !5534, size: 64, offset: 2560)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5670, file: !5388, line: 387, baseType: !5129, size: 64, offset: 2624)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5611, file: !5388, line: 659, baseType: !5700, size: 64, offset: 704)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{null, !5386, !5669}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5611, file: !5388, line: 704, baseType: !5704, size: 64, offset: 768)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!109, !5386, !5669, !4981, !4825}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5611, file: !5388, line: 726, baseType: !5708, size: 64, offset: 832)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5709, size: 64)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!109, !5386, !5711, !4981, !4824}
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5670)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5611, file: !5388, line: 744, baseType: !5714, size: 64, offset: 896)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!109, !5386}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5611, file: !5388, line: 755, baseType: !5614, size: 64, offset: 960)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5611, file: !5388, line: 784, baseType: !5719, size: 64, offset: 1024)
!5719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5720, size: 64)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!109, !5386, !421}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5611, file: !5388, line: 800, baseType: !5723, size: 64, offset: 1088)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!109, !5386, !421, !5726}
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5611, file: !5388, line: 822, baseType: !5728, size: 64, offset: 1152)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!5731, !5386, !5726}
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5611, file: !5388, line: 834, baseType: !5734, size: 64, offset: 1216)
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{null, !4830, !5711}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5611, file: !5388, line: 861, baseType: !5738, size: 64, offset: 1280)
!5738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5739, size: 64)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!648, !5386}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5611, file: !5388, line: 874, baseType: !5714, size: 64, offset: 1344)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5611, file: !5388, line: 882, baseType: !5614, size: 64, offset: 1408)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5611, file: !5388, line: 920, baseType: !5744, size: 64, offset: 1472)
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5745, size: 64)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!920, !5386, !969, !5747, !920}
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5387, file: !5388, line: 1068, baseType: !2094, size: 32, offset: 3328)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !5387, file: !5388, line: 1077, baseType: !5750, size: 64, offset: 3392)
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5387, file: !5388, line: 1080, baseType: !5752, size: 64, offset: 3456)
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5754)
!5754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !242, line: 65, size: 1024, elements: !5755)
!5755 = !{!5756, !5760, !5761, !5762, !5766, !5770, !5774, !5775, !5779, !5783, !5784, !5788, !5792, !5793, !5794, !5795}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5754, file: !242, line: 82, baseType: !5757, size: 64)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{null, !5386, !109}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5754, file: !242, line: 97, baseType: !5614, size: 64, offset: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5754, file: !242, line: 112, baseType: !5614, size: 64, offset: 128)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5754, file: !242, line: 145, baseType: !5763, size: 64, offset: 192)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = !DISubroutineType(types: !5765)
!5765 = !{!141, !5386, !5087}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5754, file: !242, line: 191, baseType: !5767, size: 64, offset: 256)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!920, !5386, !5087, !5645}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5754, file: !242, line: 210, baseType: !5771, size: 64, offset: 320)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!109, !5386, !5645, !5645, !109, !109, !4962}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_nofb", scope: !5754, file: !242, line: 233, baseType: !5614, size: 64, offset: 384)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base", scope: !5754, file: !242, line: 252, baseType: !5776, size: 64, offset: 448)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!109, !5386, !109, !109, !4962}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base_atomic", scope: !5754, file: !242, line: 269, baseType: !5780, size: 64, offset: 512)
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!109, !5386, !4962, !109, !109, !241}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5754, file: !242, line: 304, baseType: !5614, size: 64, offset: 576)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5754, file: !242, line: 356, baseType: !5785, size: 64, offset: 640)
!5785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5786, size: 64)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!109, !5386, !5129}
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_begin", scope: !5754, file: !242, line: 377, baseType: !5789, size: 64, offset: 704)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{null, !5386, !5129}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flush", scope: !5754, file: !242, line: 401, baseType: !5789, size: 64, offset: 768)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5754, file: !242, line: 423, baseType: !5789, size: 64, offset: 832)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5754, file: !242, line: 443, baseType: !5789, size: 64, offset: 896)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "get_scanout_position", scope: !5754, file: !242, line: 488, baseType: !5796, size: 64, offset: 960)
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!920, !5386, !920, !969, !969, !5747, !5747, !5087}
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5387, file: !5388, line: 1083, baseType: !4976, size: 3136, offset: 3520)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5387, file: !5388, line: 1089, baseType: !4981, size: 64, offset: 6656)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5387, file: !5388, line: 1104, baseType: !5669, size: 64, offset: 6720)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !5387, file: !5388, line: 1121, baseType: !379, size: 128, offset: 6784)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !5387, file: !5388, line: 1128, baseType: !433, size: 32, offset: 6912)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5387, file: !5388, line: 1135, baseType: !614, size: 64, offset: 6976)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !5387, file: !5388, line: 1142, baseType: !5806, size: 576, offset: 7040)
!5806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5807, line: 53, size: 576, elements: !5808)
!5807 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!5808 = !{!5809, !5810, !5811, !5812, !5813, !5823, !5824, !5825, !5826}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5806, file: !5807, line: 54, baseType: !433, size: 32)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5806, file: !5807, line: 55, baseType: !421, size: 64, offset: 64)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5806, file: !5807, line: 56, baseType: !920, size: 8, offset: 128)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5806, file: !5807, line: 56, baseType: !920, size: 8, offset: 136)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5806, file: !5807, line: 57, baseType: !5814, size: 64, offset: 192)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5807, line: 33, size: 384, elements: !5816)
!5816 = !{!5817, !5818, !5819}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5815, file: !5807, line: 34, baseType: !920, size: 8)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5815, file: !5807, line: 35, baseType: !2094, size: 32, offset: 32)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5815, file: !5807, line: 36, baseType: !5820, size: 320, offset: 64)
!5820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2094, size: 320, elements: !5821)
!5821 = !{!5822}
!5822 = !DISubrange(count: 10)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5806, file: !5807, line: 58, baseType: !109, size: 32, offset: 256)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5806, file: !5807, line: 58, baseType: !109, size: 32, offset: 288)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5806, file: !5807, line: 59, baseType: !546, size: 64, offset: 320)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5806, file: !5807, line: 60, baseType: !1593, size: 192, offset: 384)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !5387, file: !5388, line: 1149, baseType: !7, size: 32, offset: 7616)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !5387, file: !5388, line: 1156, baseType: !433, size: 32, offset: 7648)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !5387, file: !5388, line: 1163, baseType: !549, size: 64, offset: 7680)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !5387, file: !5388, line: 1170, baseType: !3744, size: 256, offset: 7744)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !5387, file: !5388, line: 1177, baseType: !5832, size: 64, offset: 8000)
!5832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5833, size: 64)
!5833 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !5388, line: 44, flags: DIFlagFwdDecl)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5382, file: !201, line: 912, baseType: !5835, size: 64, offset: 128)
!5835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5836, size: 64)
!5836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5837, line: 98, size: 960, elements: !5838)
!5837 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74b3d858470ff421c0475e349d8db40a")
!5838 = !{!5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5864}
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5836, file: !5837, line: 99, baseType: !395, size: 64)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5836, file: !5837, line: 100, baseType: !379, size: 128, offset: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5836, file: !5837, line: 102, baseType: !4969, size: 256, offset: 192)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5836, file: !5837, line: 103, baseType: !499, size: 64, offset: 448)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5836, file: !5837, line: 130, baseType: !109, size: 32, offset: 512)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5836, file: !5837, line: 136, baseType: !7, size: 32, offset: 544)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5836, file: !5837, line: 149, baseType: !2094, size: 32, offset: 576)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5836, file: !5837, line: 170, baseType: !2094, size: 32, offset: 608)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5836, file: !5837, line: 177, baseType: !5386, size: 64, offset: 640)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5836, file: !5837, line: 183, baseType: !379, size: 128, offset: 704)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5836, file: !5837, line: 185, baseType: !5850, size: 64, offset: 832)
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5852)
!5852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5837, line: 40, size: 256, elements: !5853)
!5853 = !{!5854, !5858, !5859, !5863}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5852, file: !5837, line: 48, baseType: !5855, size: 64)
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5856, size: 64)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{null, !5835}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5852, file: !5837, line: 57, baseType: !5855, size: 64, offset: 64)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5852, file: !5837, line: 72, baseType: !5860, size: 64, offset: 128)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!109, !5835}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5852, file: !5837, line: 83, baseType: !5855, size: 64, offset: 192)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5836, file: !5837, line: 186, baseType: !5865, size: 64, offset: 896)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5867)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !242, line: 511, size: 832, elements: !5868)
!5868 = !{!5869, !5873, !5877, !5881, !5882, !5883, !5887, !5891, !5895, !5899, !5900, !5901, !5902}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5867, file: !242, line: 528, baseType: !5870, size: 64)
!5870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5871, size: 64)
!5871 = !DISubroutineType(types: !5872)
!5872 = !{null, !5835, !109}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5867, file: !242, line: 561, baseType: !5874, size: 64, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!141, !5835, !5087}
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5867, file: !242, line: 604, baseType: !5878, size: 64, offset: 128)
!5878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5879, size: 64)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!920, !5835, !5087, !5645}
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5867, file: !242, line: 621, baseType: !5855, size: 64, offset: 192)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5867, file: !242, line: 636, baseType: !5855, size: 64, offset: 256)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5867, file: !242, line: 660, baseType: !5884, size: 64, offset: 320)
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5885, size: 64)
!5885 = !DISubroutineType(types: !5886)
!5886 = !{null, !5835, !5645, !5645}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode_set", scope: !5867, file: !242, line: 683, baseType: !5888, size: 64, offset: 384)
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5889, size: 64)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{null, !5835, !5669, !5381}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5867, file: !242, line: 702, baseType: !5892, size: 64, offset: 448)
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!206, !5835, !5353}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5867, file: !242, line: 725, baseType: !5896, size: 64, offset: 512)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{null, !5835, !5129}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5867, file: !242, line: 748, baseType: !5896, size: 64, offset: 576)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5867, file: !242, line: 782, baseType: !5855, size: 64, offset: 640)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5867, file: !242, line: 800, baseType: !5855, size: 64, offset: 704)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5867, file: !242, line: 838, baseType: !5903, size: 64, offset: 768)
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5904, size: 64)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!109, !5835, !5669, !5381}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5382, file: !201, line: 918, baseType: !246, size: 32, offset: 192)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5382, file: !201, line: 921, baseType: !5129, size: 64, offset: 256)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5382, file: !201, line: 928, baseType: !5534, size: 64, offset: 320)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5382, file: !201, line: 931, baseType: !5910, size: 448, offset: 384)
!5910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !201, line: 867, size: 448, elements: !5911)
!5911 = !{!5912, !5913, !5914, !5921, !5922, !5923, !5924, !5925, !5926, !5927, !5928}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5910, file: !201, line: 868, baseType: !250, size: 32)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5910, file: !201, line: 869, baseType: !250, size: 32, offset: 32)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5910, file: !201, line: 870, baseType: !5915, size: 128, offset: 64)
!5915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !201, line: 831, size: 128, elements: !5916)
!5916 = !{!5917, !5918, !5919, !5920}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5915, file: !201, line: 835, baseType: !7, size: 32)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5915, file: !201, line: 840, baseType: !7, size: 32, offset: 32)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5915, file: !201, line: 845, baseType: !7, size: 32, offset: 64)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5915, file: !201, line: 850, baseType: !7, size: 32, offset: 96)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5910, file: !201, line: 871, baseType: !7, size: 32, offset: 192)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5910, file: !201, line: 872, baseType: !7, size: 32, offset: 224)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5910, file: !201, line: 873, baseType: !7, size: 32, offset: 256)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5910, file: !201, line: 874, baseType: !7, size: 32, offset: 288)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5910, file: !201, line: 875, baseType: !7, size: 32, offset: 320)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5910, file: !201, line: 876, baseType: !7, size: 32, offset: 352)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5910, file: !201, line: 877, baseType: !7, size: 32, offset: 384)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5910, file: !201, line: 878, baseType: !7, size: 32, offset: 416)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5382, file: !201, line: 945, baseType: !920, size: 8, offset: 832)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5382, file: !201, line: 954, baseType: !184, size: 32, offset: 864)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5382, file: !201, line: 962, baseType: !7, size: 32, offset: 896)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5382, file: !201, line: 968, baseType: !7, size: 32, offset: 928)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5382, file: !201, line: 974, baseType: !7, size: 32, offset: 960)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5382, file: !201, line: 980, baseType: !7, size: 32, offset: 992)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5382, file: !201, line: 987, baseType: !266, size: 32, offset: 1024)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5382, file: !201, line: 1000, baseType: !383, size: 64, offset: 1088)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5382, file: !201, line: 1006, baseType: !457, size: 8, offset: 1152)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5382, file: !201, line: 1012, baseType: !457, size: 8, offset: 1160)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5382, file: !201, line: 1018, baseType: !286, size: 32, offset: 1184)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5382, file: !201, line: 1024, baseType: !5512, size: 64, offset: 1216)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5347, file: !201, line: 1239, baseType: !5942, size: 64, offset: 640)
!5942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5943, size: 64)
!5943 = !DISubroutineType(types: !5944)
!5944 = !{null, !5353, !5381}
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5347, file: !201, line: 1284, baseType: !5946, size: 64, offset: 704)
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5947, size: 64)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!109, !5353, !5381, !4981, !4825}
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5347, file: !201, line: 1307, baseType: !5950, size: 64, offset: 768)
!5950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5951, size: 64)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!109, !5353, !5953, !4981, !4824}
!5953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5954, size: 64)
!5954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5382)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5347, file: !201, line: 1321, baseType: !5956, size: 64, offset: 832)
!5956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5957, size: 64)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{null, !4830, !5953}
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5347, file: !201, line: 1330, baseType: !5355, size: 64, offset: 896)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5347, file: !201, line: 1337, baseType: !5961, size: 64, offset: 960)
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = !DISubroutineType(types: !5963)
!5963 = !{null, !5353, !614}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !392, file: !201, line: 1632, baseType: !5512, size: 64, offset: 3200)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !392, file: !201, line: 1635, baseType: !4976, size: 3136, offset: 3264)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !392, file: !201, line: 1641, baseType: !4981, size: 64, offset: 6400)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !392, file: !201, line: 1652, baseType: !4981, size: 64, offset: 6464)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !392, file: !201, line: 1658, baseType: !4981, size: 64, offset: 6528)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !392, file: !201, line: 1666, baseType: !5512, size: 64, offset: 6592)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !392, file: !201, line: 1672, baseType: !4981, size: 64, offset: 6656)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !392, file: !201, line: 1675, baseType: !5972, size: 64, offset: 6720)
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5973, size: 64)
!5973 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !201, line: 46, flags: DIFlagFwdDecl)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !392, file: !201, line: 1678, baseType: !5975, size: 192, offset: 6784)
!5975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5976, line: 54, size: 192, elements: !5977)
!5976 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5977 = !{!5978, !5984, !5985}
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5975, file: !5976, line: 55, baseType: !5979, size: 64)
!5979 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5976, line: 51, baseType: !5980)
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5981, size: 64)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!109, !5983, !549, !372}
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5975, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5975, file: !5976, line: 56, baseType: !5983, size: 64, offset: 64)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5975, file: !5976, line: 57, baseType: !109, size: 32, offset: 128)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !392, file: !201, line: 1684, baseType: !4981, size: 64, offset: 6976)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !392, file: !201, line: 1690, baseType: !4981, size: 64, offset: 7040)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !392, file: !201, line: 1717, baseType: !5989, size: 8, offset: 7104)
!5989 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !374, line: 108, baseType: !457)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !392, file: !201, line: 1725, baseType: !109, size: 32, offset: 7136)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !392, file: !201, line: 1728, baseType: !5992, size: 64, offset: 7168)
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5993, size: 64)
!5993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5994)
!5994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !242, line: 860, size: 768, elements: !5995)
!5995 = !{!5996, !5997, !6001, !6005, !6010, !6014, !6018, !6022, !6026, !6030, !6034, !6035}
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !5994, file: !242, line: 904, baseType: !5372, size: 64)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "detect_ctx", scope: !5994, file: !242, line: 930, baseType: !5998, size: 64, offset: 64)
!5998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5999, size: 64)
!5999 = !DISubroutineType(types: !6000)
!6000 = !{!109, !5353, !4914, !920}
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5994, file: !242, line: 968, baseType: !6002, size: 64, offset: 128)
!6002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6003, size: 64)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!141, !5353, !5645}
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid_ctx", scope: !5994, file: !242, line: 1007, baseType: !6006, size: 64, offset: 192)
!6006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6007, size: 64)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{!109, !5353, !5645, !4914, !6009}
!6009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5994, file: !242, line: 1040, baseType: !6011, size: 64, offset: 256)
!6011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6012, size: 64)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{!5835, !5353}
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_best_encoder", scope: !5994, file: !242, line: 1066, baseType: !6015, size: 64, offset: 320)
!6015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6016, size: 64)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!5835, !5353, !5129}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5994, file: !242, line: 1100, baseType: !6019, size: 64, offset: 384)
!6019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6020, size: 64)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!109, !5353, !5129}
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5994, file: !242, line: 1115, baseType: !6023, size: 64, offset: 448)
!6023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6024, size: 64)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{null, !5353, !5129}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_writeback_job", scope: !5994, file: !242, line: 1132, baseType: !6027, size: 64, offset: 512)
!6027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6028, size: 64)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{!109, !388, !383}
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_writeback_job", scope: !5994, file: !242, line: 1147, baseType: !6031, size: 64, offset: 576)
!6031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6032, size: 64)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{null, !388, !383}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "enable_hpd", scope: !5994, file: !242, line: 1159, baseType: !5355, size: 64, offset: 640)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hpd", scope: !5994, file: !242, line: 1170, baseType: !5355, size: 64, offset: 704)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !392, file: !201, line: 1731, baseType: !6037, size: 768, offset: 7232)
!6037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !201, line: 1348, size: 768, elements: !6038)
!6038 = !{!6039, !6040, !6041, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6037, file: !201, line: 1354, baseType: !3744, size: 256)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !6037, file: !201, line: 1361, baseType: !920, size: 8, offset: 256)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !6037, file: !201, line: 1368, baseType: !920, size: 8, offset: 264)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !6037, file: !201, line: 1375, baseType: !920, size: 8, offset: 272)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !6037, file: !201, line: 1382, baseType: !7, size: 32, offset: 288)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !6037, file: !201, line: 1389, baseType: !109, size: 32, offset: 320)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !6037, file: !201, line: 1396, baseType: !109, size: 32, offset: 352)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !6037, file: !201, line: 1403, baseType: !109, size: 32, offset: 384)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !6037, file: !201, line: 1410, baseType: !109, size: 32, offset: 416)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !6037, file: !201, line: 1417, baseType: !920, size: 8, offset: 448)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !6037, file: !201, line: 1424, baseType: !920, size: 8, offset: 456)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !6037, file: !201, line: 1432, baseType: !920, size: 8, offset: 464)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !6037, file: !201, line: 1440, baseType: !920, size: 8, offset: 472)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !6037, file: !201, line: 1448, baseType: !292, size: 32, offset: 480)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !6037, file: !201, line: 1458, baseType: !7, size: 32, offset: 512)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !6037, file: !201, line: 1466, baseType: !298, size: 32, offset: 544)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !6037, file: !201, line: 1471, baseType: !5915, size: 128, offset: 576)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !6037, file: !201, line: 1476, baseType: !305, size: 32, offset: 704)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !6037, file: !201, line: 1483, baseType: !920, size: 8, offset: 736)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !392, file: !201, line: 1733, baseType: !292, size: 32, offset: 8000)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !392, file: !201, line: 1741, baseType: !6060, size: 64, offset: 8064)
!6060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6061, size: 64)
!6061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6062)
!6062 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !201, line: 1741, flags: DIFlagFwdDecl)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !392, file: !201, line: 1746, baseType: !840, size: 256, offset: 8128)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !392, file: !201, line: 1749, baseType: !652, size: 64, offset: 8384)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !392, file: !201, line: 1756, baseType: !648, size: 32, offset: 8448)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !392, file: !201, line: 1764, baseType: !5835, size: 64, offset: 8512)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !392, file: !201, line: 1768, baseType: !6068, size: 1024, offset: 8576)
!6068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5989, size: 1024, elements: !6069)
!6069 = !{!6070}
!6070 = !DISubrange(count: 128)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !392, file: !201, line: 1770, baseType: !840, size: 256, offset: 9600)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !392, file: !201, line: 1773, baseType: !6073, size: 16, offset: 9856)
!6073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 16, elements: !959)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !392, file: !201, line: 1778, baseType: !6075, size: 64, offset: 9888)
!6075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !959)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !392, file: !201, line: 1783, baseType: !6075, size: 64, offset: 9952)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !392, file: !201, line: 1794, baseType: !6078, size: 64, offset: 10048)
!6078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6079, size: 64)
!6079 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !201, line: 48, flags: DIFlagFwdDecl)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !392, file: !201, line: 1800, baseType: !109, size: 32, offset: 10112)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !392, file: !201, line: 1803, baseType: !7, size: 32, offset: 10144)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !392, file: !201, line: 1810, baseType: !920, size: 8, offset: 10176)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !392, file: !201, line: 1816, baseType: !457, size: 8, offset: 10184)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !392, file: !201, line: 1819, baseType: !614, size: 64, offset: 10240)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !392, file: !201, line: 1835, baseType: !5381, size: 64, offset: 10304)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !392, file: !201, line: 1852, baseType: !5512, size: 64, offset: 10368)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !392, file: !201, line: 1855, baseType: !920, size: 8, offset: 10432)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !392, file: !201, line: 1857, baseType: !6089, size: 64, offset: 10496)
!6089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6090, size: 64)
!6090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !201, line: 2058, size: 256, elements: !6091)
!6091 = !{!6092, !6093, !6094, !6095}
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6090, file: !201, line: 2059, baseType: !400, size: 32)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6090, file: !201, line: 2060, baseType: !395, size: 64, offset: 64)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6090, file: !201, line: 2061, baseType: !109, size: 32, offset: 128)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !6090, file: !201, line: 2062, baseType: !6096, size: 64, offset: 160)
!6096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 64, elements: !1765)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !392, file: !201, line: 1859, baseType: !920, size: 8, offset: 10560)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !392, file: !201, line: 1863, baseType: !5989, size: 8, offset: 10568)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !392, file: !201, line: 1863, baseType: !5989, size: 8, offset: 10576)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !392, file: !201, line: 1866, baseType: !5989, size: 8, offset: 10584)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !392, file: !201, line: 1866, baseType: !5989, size: 8, offset: 10592)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !392, file: !201, line: 1869, baseType: !5505, size: 16, offset: 10608)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !392, file: !201, line: 1869, baseType: !5505, size: 16, offset: 10624)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !392, file: !201, line: 1878, baseType: !1628, size: 64, offset: 10688)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !392, file: !201, line: 1881, baseType: !6106, size: 96, offset: 10752)
!6106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !185, line: 383, size: 96, elements: !6107)
!6107 = !{!6108, !6109}
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6106, file: !185, line: 387, baseType: !649, size: 32)
!6109 = !DIDerivedType(tag: DW_TAG_member, scope: !6106, file: !185, line: 391, baseType: !6110, size: 64, offset: 32)
!6110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6106, file: !185, line: 391, size: 64, elements: !6111)
!6111 = !{!6112}
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !6110, file: !185, line: 392, baseType: !6113, size: 64)
!6113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !185, line: 370, size: 64, elements: !6114)
!6114 = !{!6115, !6116, !6117, !6118, !6119}
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !6113, file: !185, line: 371, baseType: !459, size: 8)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6113, file: !185, line: 372, baseType: !459, size: 8, offset: 8)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !6113, file: !185, line: 373, baseType: !468, size: 16, offset: 16)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !6113, file: !185, line: 374, baseType: !468, size: 16, offset: 32)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !6113, file: !185, line: 375, baseType: !468, size: 16, offset: 48)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !389, file: !385, line: 36, baseType: !5836, size: 960, offset: 10880)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_formats_blob_ptr", scope: !389, file: !385, line: 45, baseType: !5512, size: 64, offset: 11840)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "job_lock", scope: !389, file: !385, line: 48, baseType: !433, size: 32, offset: 11904)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "job_queue", scope: !389, file: !385, line: 60, baseType: !379, size: 128, offset: 11968)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !389, file: !385, line: 67, baseType: !7, size: 32, offset: 12096)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !389, file: !385, line: 73, baseType: !433, size: 32, offset: 12128)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !389, file: !385, line: 80, baseType: !549, size: 64, offset: 12160)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !389, file: !385, line: 86, baseType: !3744, size: 256, offset: 12224)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "prepared", scope: !384, file: !385, line: 105, baseType: !920, size: 8, offset: 64)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_work", scope: !384, file: !385, line: 113, baseType: !1100, size: 256, offset: 128)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "list_entry", scope: !384, file: !385, line: 120, baseType: !379, size: 128, offset: 384)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !384, file: !385, line: 128, baseType: !4962, size: 64, offset: 512)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence", scope: !384, file: !385, line: 135, baseType: !5447, size: 64, offset: 576)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !384, file: !385, line: 142, baseType: !372, size: 64, offset: 640)
!6134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!6135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !374, line: 42, baseType: !549)
!6136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!6137 = !{!6138, !6140, !6142, !6144, !6146, !6148, !6150, !6152, !6179, !6181, !0, !6183, !6185, !6188, !6190, !6195, !6200}
!6138 = !DIGlobalVariableExpression(var: !6139, expr: !DIExpression())
!6139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_writeback_connector_init312", scope: !2, file: !3, line: 202, type: !372, isLocal: true, isDefinition: true)
!6140 = !DIGlobalVariableExpression(var: !6141, expr: !DIExpression())
!6141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !2956, isLocal: true, isDefinition: true)
!6142 = !DIGlobalVariableExpression(var: !6143, expr: !DIExpression())
!6143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_writeback_connector_init_with_encoder313", scope: !2, file: !3, line: 291, type: !372, isLocal: true, isDefinition: true)
!6144 = !DIGlobalVariableExpression(var: !6145, expr: !DIExpression())
!6145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !3744, isLocal: true, isDefinition: true)
!6146 = !DIGlobalVariableExpression(var: !6147, expr: !DIExpression())
!6147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_writeback_prepare_job314", scope: !2, file: !3, line: 328, type: !372, isLocal: true, isDefinition: true)
!6148 = !DIGlobalVariableExpression(var: !6149, expr: !DIExpression())
!6149 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_writeback_queue_job315", scope: !2, file: !3, line: 362, type: !372, isLocal: true, isDefinition: true)
!6150 = !DIGlobalVariableExpression(var: !6151, expr: !DIExpression())
!6151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_writeback_cleanup_job316", scope: !2, file: !3, line: 381, type: !372, isLocal: true, isDefinition: true)
!6152 = !DIGlobalVariableExpression(var: !6153, expr: !DIExpression())
!6153 = distinct !DIGlobalVariable(name: "__key", scope: !6154, file: !3, line: 444, type: !1213, isLocal: true, isDefinition: true)
!6154 = distinct !DISubprogram(name: "drm_writeback_signal_completion", scope: !3, file: !3, line: 416, type: !6155, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6157)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{null, !388, !109}
!6157 = !{!6158, !6159, !6160, !6161, !6162, !6163, !6167, !6168, !6170, !6171, !6173, !6176}
!6158 = !DILocalVariable(name: "wb_connector", arg: 1, scope: !6154, file: !3, line: 416, type: !388)
!6159 = !DILocalVariable(name: "status", arg: 2, scope: !6154, file: !3, line: 417, type: !109)
!6160 = !DILocalVariable(name: "flags", scope: !6154, file: !3, line: 419, type: !549)
!6161 = !DILocalVariable(name: "job", scope: !6154, file: !3, line: 420, type: !383)
!6162 = !DILocalVariable(name: "out_fence", scope: !6154, file: !3, line: 421, type: !5447)
!6163 = !DILocalVariable(name: "__dummy", scope: !6164, file: !3, line: 423, type: !549)
!6164 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 423, column: 2)
!6165 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 423, column: 2)
!6166 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 423, column: 2)
!6167 = !DILocalVariable(name: "__dummy2", scope: !6164, file: !3, line: 423, type: !549)
!6168 = !DILocalVariable(name: "head__", scope: !6169, file: !3, line: 424, type: !378)
!6169 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 424, column: 8)
!6170 = !DILocalVariable(name: "pos__", scope: !6169, file: !3, line: 424, type: !378)
!6171 = !DILocalVariable(name: "__mptr", scope: !6172, file: !3, line: 424, type: !372)
!6172 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 424, column: 8)
!6173 = !DILocalVariable(name: "__ret_warn_on", scope: !6174, file: !3, line: 432, type: !109)
!6174 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 432, column: 6)
!6175 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 432, column: 6)
!6176 = !DILocalVariable(name: "__flags", scope: !6177, file: !3, line: 432, type: !109)
!6177 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 432, column: 6)
!6178 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 432, column: 6)
!6179 = !DIGlobalVariableExpression(var: !6180, expr: !DIExpression())
!6180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_writeback_signal_completion318", scope: !2, file: !3, line: 447, type: !372, isLocal: true, isDefinition: true)
!6181 = !DIGlobalVariableExpression(var: !6182, expr: !DIExpression())
!6182 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_writeback_get_out_fence319", scope: !2, file: !3, line: 468, type: !372, isLocal: true, isDefinition: true)
!6183 = !DIGlobalVariableExpression(var: !6184, expr: !DIExpression())
!6184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !2956, isLocal: true, isDefinition: true)
!6185 = !DIGlobalVariableExpression(var: !6186, expr: !DIExpression())
!6186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !6187, isLocal: true, isDefinition: true)
!6187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, elements: !4993)
!6188 = !DIGlobalVariableExpression(var: !6189, expr: !DIExpression())
!6189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !6187, isLocal: true, isDefinition: true)
!6190 = !DIGlobalVariableExpression(var: !6191, expr: !DIExpression())
!6191 = distinct !DIGlobalVariable(scope: null, file: !347, line: 480, type: !6192, isLocal: true, isDefinition: true)
!6192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 168, elements: !6193)
!6193 = !{!6194}
!6194 = !DISubrange(count: 21)
!6195 = !DIGlobalVariableExpression(var: !6196, expr: !DIExpression())
!6196 = distinct !DIGlobalVariable(scope: null, file: !365, line: 580, type: !6197, isLocal: true, isDefinition: true)
!6197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 208, elements: !6198)
!6198 = !{!6199}
!6199 = !DISubrange(count: 26)
!6200 = !DIGlobalVariableExpression(var: !6201, expr: !DIExpression())
!6201 = distinct !DIGlobalVariable(name: "drm_writeback_fence_ops", scope: !2, file: !3, line: 108, type: !5453, isLocal: true, isDefinition: true)
!6202 = !{i32 7, !"Dwarf Version", i32 5}
!6203 = !{i32 2, !"Debug Info Version", i32 3}
!6204 = !{i32 1, !"wchar_size", i32 2}
!6205 = !{i32 8, !"cf-protection-branch", i32 1}
!6206 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6207 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6208 = !{i32 1, !"Code Model", i32 2}
!6209 = !{i32 1, !"override-stack-alignment", i32 8}
!6210 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6211 = distinct !DISubprogram(name: "drm_writeback_connector_init", scope: !3, file: !3, line: 175, type: !6212, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6214)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!109, !395, !388, !5345, !5865, !5283, !109, !648}
!6214 = !{!6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222}
!6215 = !DILocalVariable(name: "dev", arg: 1, scope: !6211, file: !3, line: 175, type: !395)
!6216 = !DILocalVariable(name: "wb_connector", arg: 2, scope: !6211, file: !3, line: 176, type: !388)
!6217 = !DILocalVariable(name: "con_funcs", arg: 3, scope: !6211, file: !3, line: 177, type: !5345)
!6218 = !DILocalVariable(name: "enc_helper_funcs", arg: 4, scope: !6211, file: !3, line: 178, type: !5865)
!6219 = !DILocalVariable(name: "formats", arg: 5, scope: !6211, file: !3, line: 179, type: !5283)
!6220 = !DILocalVariable(name: "n_formats", arg: 6, scope: !6211, file: !3, line: 179, type: !109)
!6221 = !DILocalVariable(name: "possible_crtcs", arg: 7, scope: !6211, file: !3, line: 180, type: !648)
!6222 = !DILocalVariable(name: "ret", scope: !6211, file: !3, line: 182, type: !109)
!6223 = !DILocation(line: 175, column: 53, scope: !6211)
!6224 = !DILocation(line: 176, column: 38, scope: !6211)
!6225 = !DILocation(line: 177, column: 40, scope: !6211)
!6226 = !DILocation(line: 178, column: 45, scope: !6211)
!6227 = !DILocation(line: 179, column: 17, scope: !6211)
!6228 = !DILocation(line: 179, column: 30, scope: !6211)
!6229 = !DILocation(line: 180, column: 10, scope: !6211)
!6230 = !DILocation(line: 182, column: 2, scope: !6211)
!6231 = !DILocation(line: 182, column: 6, scope: !6211)
!6232 = !DILocation(line: 184, column: 26, scope: !6211)
!6233 = !DILocation(line: 184, column: 40, scope: !6211)
!6234 = !DILocation(line: 184, column: 49, scope: !6211)
!6235 = !DILocation(line: 184, column: 2, scope: !6211)
!6236 = !DILocation(line: 186, column: 41, scope: !6211)
!6237 = !DILocation(line: 186, column: 2, scope: !6211)
!6238 = !DILocation(line: 186, column: 16, scope: !6211)
!6239 = !DILocation(line: 186, column: 24, scope: !6211)
!6240 = !DILocation(line: 186, column: 39, scope: !6211)
!6241 = !DILocation(line: 188, column: 25, scope: !6211)
!6242 = !DILocation(line: 188, column: 31, scope: !6211)
!6243 = !DILocation(line: 188, column: 45, scope: !6211)
!6244 = !DILocation(line: 188, column: 8, scope: !6211)
!6245 = !DILocation(line: 188, column: 6, scope: !6211)
!6246 = !DILocation(line: 191, column: 6, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 191, column: 6)
!6248 = !DILocation(line: 191, column: 6, scope: !6211)
!6249 = !DILocation(line: 192, column: 10, scope: !6247)
!6250 = !DILocation(line: 192, column: 3, scope: !6247)
!6251 = !DILocation(line: 194, column: 50, scope: !6211)
!6252 = !DILocation(line: 194, column: 55, scope: !6211)
!6253 = !DILocation(line: 194, column: 70, scope: !6211)
!6254 = !DILocation(line: 194, column: 84, scope: !6211)
!6255 = !DILocation(line: 195, column: 4, scope: !6211)
!6256 = !DILocation(line: 195, column: 15, scope: !6211)
!6257 = !DILocation(line: 195, column: 24, scope: !6211)
!6258 = !DILocation(line: 194, column: 8, scope: !6211)
!6259 = !DILocation(line: 194, column: 6, scope: !6211)
!6260 = !DILocation(line: 197, column: 6, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 197, column: 6)
!6262 = !DILocation(line: 197, column: 6, scope: !6211)
!6263 = !DILocation(line: 198, column: 24, scope: !6261)
!6264 = !DILocation(line: 198, column: 38, scope: !6261)
!6265 = !DILocation(line: 198, column: 3, scope: !6261)
!6266 = !DILocation(line: 200, column: 9, scope: !6211)
!6267 = !DILocation(line: 200, column: 2, scope: !6211)
!6268 = !DILocation(line: 201, column: 1, scope: !6211)
!6269 = distinct !DISubprogram(name: "drm_encoder_helper_add", scope: !242, file: !242, line: 848, type: !6270, scopeLine: 850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{null, !5835, !5865}
!6272 = !{!6273, !6274}
!6273 = !DILocalVariable(name: "encoder", arg: 1, scope: !6269, file: !242, line: 848, type: !5835)
!6274 = !DILocalVariable(name: "funcs", arg: 2, scope: !6269, file: !242, line: 849, type: !5865)
!6275 = !DILocation(line: 848, column: 63, scope: !6269)
!6276 = !DILocation(line: 849, column: 47, scope: !6269)
!6277 = !DILocation(line: 851, column: 28, scope: !6269)
!6278 = !DILocation(line: 851, column: 2, scope: !6269)
!6279 = !DILocation(line: 851, column: 11, scope: !6269)
!6280 = !DILocation(line: 851, column: 26, scope: !6269)
!6281 = !DILocation(line: 852, column: 1, scope: !6269)
!6282 = !DISubprogram(name: "drm_encoder_init", scope: !5837, file: !5837, line: 192, type: !6283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!109, !395, !5835, !5850, !109, !421, null}
!6285 = distinct !DISubprogram(name: "drm_writeback_connector_init_with_encoder", scope: !3, file: !3, line: 233, type: !6286, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6288)
!6286 = !DISubroutineType(types: !6287)
!6287 = !{!109, !395, !388, !5835, !5345, !5283, !109}
!6288 = !{!6289, !6290, !6291, !6292, !6293, !6294, !6295, !6296, !6297, !6299, !6300, !6301}
!6289 = !DILocalVariable(name: "dev", arg: 1, scope: !6285, file: !3, line: 233, type: !395)
!6290 = !DILocalVariable(name: "wb_connector", arg: 2, scope: !6285, file: !3, line: 234, type: !388)
!6291 = !DILocalVariable(name: "enc", arg: 3, scope: !6285, file: !3, line: 234, type: !5835)
!6292 = !DILocalVariable(name: "con_funcs", arg: 4, scope: !6285, file: !3, line: 235, type: !5345)
!6293 = !DILocalVariable(name: "formats", arg: 5, scope: !6285, file: !3, line: 235, type: !5283)
!6294 = !DILocalVariable(name: "n_formats", arg: 6, scope: !6285, file: !3, line: 236, type: !109)
!6295 = !DILocalVariable(name: "blob", scope: !6285, file: !3, line: 238, type: !5512)
!6296 = !DILocalVariable(name: "connector", scope: !6285, file: !3, line: 239, type: !5353)
!6297 = !DILocalVariable(name: "config", scope: !6285, file: !3, line: 240, type: !6298)
!6298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!6299 = !DILocalVariable(name: "ret", scope: !6285, file: !3, line: 241, type: !109)
!6300 = !DILabel(scope: !6285, name: "attach_fail", file: !3, line: 285)
!6301 = !DILabel(scope: !6285, name: "connector_fail", file: !3, line: 287)
!6302 = !DILocation(line: 233, column: 66, scope: !6285)
!6303 = !DILocation(line: 234, column: 35, scope: !6285)
!6304 = !DILocation(line: 234, column: 69, scope: !6285)
!6305 = !DILocation(line: 235, column: 37, scope: !6285)
!6306 = !DILocation(line: 235, column: 59, scope: !6285)
!6307 = !DILocation(line: 236, column: 7, scope: !6285)
!6308 = !DILocation(line: 238, column: 2, scope: !6285)
!6309 = !DILocation(line: 238, column: 28, scope: !6285)
!6310 = !DILocation(line: 239, column: 2, scope: !6285)
!6311 = !DILocation(line: 239, column: 24, scope: !6285)
!6312 = !DILocation(line: 239, column: 37, scope: !6285)
!6313 = !DILocation(line: 239, column: 51, scope: !6285)
!6314 = !DILocation(line: 240, column: 2, scope: !6285)
!6315 = !DILocation(line: 240, column: 26, scope: !6285)
!6316 = !DILocation(line: 240, column: 36, scope: !6285)
!6317 = !DILocation(line: 240, column: 41, scope: !6285)
!6318 = !DILocation(line: 241, column: 2, scope: !6285)
!6319 = !DILocation(line: 241, column: 6, scope: !6285)
!6320 = !DILocation(line: 241, column: 40, scope: !6285)
!6321 = !DILocation(line: 241, column: 12, scope: !6285)
!6322 = !DILocation(line: 243, column: 6, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 243, column: 6)
!6324 = !DILocation(line: 243, column: 10, scope: !6323)
!6325 = !DILocation(line: 243, column: 6, scope: !6285)
!6326 = !DILocation(line: 244, column: 10, scope: !6323)
!6327 = !DILocation(line: 244, column: 3, scope: !6323)
!6328 = !DILocation(line: 246, column: 34, scope: !6285)
!6329 = !DILocation(line: 246, column: 39, scope: !6285)
!6330 = !DILocation(line: 246, column: 49, scope: !6285)
!6331 = !DILocation(line: 247, column: 6, scope: !6285)
!6332 = !DILocation(line: 246, column: 9, scope: !6285)
!6333 = !DILocation(line: 246, column: 7, scope: !6285)
!6334 = !DILocation(line: 248, column: 13, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 248, column: 6)
!6336 = !DILocation(line: 248, column: 6, scope: !6335)
!6337 = !DILocation(line: 248, column: 6, scope: !6285)
!6338 = !DILocation(line: 249, column: 18, scope: !6335)
!6339 = !DILocation(line: 249, column: 10, scope: !6335)
!6340 = !DILocation(line: 249, column: 3, scope: !6335)
!6341 = !DILocation(line: 252, column: 2, scope: !6285)
!6342 = !DILocation(line: 252, column: 13, scope: !6285)
!6343 = !DILocation(line: 252, column: 31, scope: !6285)
!6344 = !DILocation(line: 254, column: 27, scope: !6285)
!6345 = !DILocation(line: 254, column: 32, scope: !6285)
!6346 = !DILocation(line: 254, column: 43, scope: !6285)
!6347 = !DILocation(line: 254, column: 8, scope: !6285)
!6348 = !DILocation(line: 254, column: 6, scope: !6285)
!6349 = !DILocation(line: 256, column: 6, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 256, column: 6)
!6351 = !DILocation(line: 256, column: 6, scope: !6285)
!6352 = !DILocation(line: 257, column: 3, scope: !6350)
!6353 = !DILocation(line: 259, column: 37, scope: !6285)
!6354 = !DILocation(line: 259, column: 48, scope: !6285)
!6355 = !DILocation(line: 259, column: 8, scope: !6285)
!6356 = !DILocation(line: 259, column: 6, scope: !6285)
!6357 = !DILocation(line: 260, column: 6, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 260, column: 6)
!6359 = !DILocation(line: 260, column: 6, scope: !6285)
!6360 = !DILocation(line: 261, column: 3, scope: !6358)
!6361 = !DILocation(line: 263, column: 18, scope: !6285)
!6362 = !DILocation(line: 263, column: 32, scope: !6285)
!6363 = !DILocation(line: 263, column: 2, scope: !6285)
!6364 = !DILocation(line: 264, column: 2, scope: !6285)
!6365 = !DILocation(line: 264, column: 2, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 264, column: 2)
!6367 = !DILocation(line: 266, column: 32, scope: !6285)
!6368 = !DILocation(line: 266, column: 2, scope: !6285)
!6369 = !DILocation(line: 266, column: 16, scope: !6285)
!6370 = !DILocation(line: 266, column: 30, scope: !6285)
!6371 = !DILocation(line: 267, column: 2, scope: !6285)
!6372 = !DILocation(line: 267, column: 2, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 267, column: 2)
!6374 = !DILocation(line: 268, column: 11, scope: !6285)
!6375 = !DILocation(line: 268, column: 25, scope: !6285)
!6376 = !DILocation(line: 270, column: 23, scope: !6285)
!6377 = !DILocation(line: 270, column: 34, scope: !6285)
!6378 = !DILocation(line: 270, column: 39, scope: !6285)
!6379 = !DILocation(line: 270, column: 43, scope: !6285)
!6380 = !DILocation(line: 270, column: 54, scope: !6285)
!6381 = !DILocation(line: 268, column: 2, scope: !6285)
!6382 = !DILocation(line: 272, column: 30, scope: !6285)
!6383 = !DILocation(line: 272, column: 41, scope: !6285)
!6384 = !DILocation(line: 273, column: 8, scope: !6285)
!6385 = !DILocation(line: 273, column: 16, scope: !6285)
!6386 = !DILocation(line: 272, column: 2, scope: !6285)
!6387 = !DILocation(line: 275, column: 30, scope: !6285)
!6388 = !DILocation(line: 275, column: 41, scope: !6285)
!6389 = !DILocation(line: 276, column: 8, scope: !6285)
!6390 = !DILocation(line: 276, column: 16, scope: !6285)
!6391 = !DILocation(line: 275, column: 2, scope: !6285)
!6392 = !DILocation(line: 278, column: 30, scope: !6285)
!6393 = !DILocation(line: 278, column: 41, scope: !6285)
!6394 = !DILocation(line: 279, column: 8, scope: !6285)
!6395 = !DILocation(line: 279, column: 16, scope: !6285)
!6396 = !DILocation(line: 280, column: 8, scope: !6285)
!6397 = !DILocation(line: 280, column: 14, scope: !6285)
!6398 = !DILocation(line: 280, column: 19, scope: !6285)
!6399 = !DILocation(line: 278, column: 2, scope: !6285)
!6400 = !DILocation(line: 281, column: 41, scope: !6285)
!6401 = !DILocation(line: 281, column: 2, scope: !6285)
!6402 = !DILocation(line: 281, column: 16, scope: !6285)
!6403 = !DILocation(line: 281, column: 39, scope: !6285)
!6404 = !DILocation(line: 283, column: 2, scope: !6285)
!6405 = !DILocation(line: 285, column: 1, scope: !6285)
!6406 = !DILocation(line: 286, column: 24, scope: !6285)
!6407 = !DILocation(line: 286, column: 2, scope: !6285)
!6408 = !DILocation(line: 287, column: 1, scope: !6285)
!6409 = !DILocation(line: 288, column: 24, scope: !6285)
!6410 = !DILocation(line: 288, column: 2, scope: !6285)
!6411 = !DILocation(line: 289, column: 9, scope: !6285)
!6412 = !DILocation(line: 289, column: 2, scope: !6285)
!6413 = !DILocation(line: 290, column: 1, scope: !6285)
!6414 = !DISubprogram(name: "drm_encoder_cleanup", scope: !5837, file: !5837, line: 308, type: !5856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6415 = distinct !DISubprogram(name: "create_writeback_properties", scope: !3, file: !3, line: 114, type: !6416, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6418)
!6416 = !DISubroutineType(types: !6417)
!6417 = !{!109, !395}
!6418 = !{!6419, !6420}
!6419 = !DILocalVariable(name: "dev", arg: 1, scope: !6415, file: !3, line: 114, type: !395)
!6420 = !DILocalVariable(name: "prop", scope: !6415, file: !3, line: 116, type: !4981)
!6421 = !DILocation(line: 114, column: 59, scope: !6415)
!6422 = !DILocation(line: 116, column: 2, scope: !6415)
!6423 = !DILocation(line: 116, column: 23, scope: !6415)
!6424 = !DILocation(line: 118, column: 7, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 118, column: 6)
!6426 = !DILocation(line: 118, column: 12, scope: !6425)
!6427 = !DILocation(line: 118, column: 24, scope: !6425)
!6428 = !DILocation(line: 118, column: 6, scope: !6415)
!6429 = !DILocation(line: 119, column: 37, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 118, column: 50)
!6431 = !DILocation(line: 119, column: 10, scope: !6430)
!6432 = !DILocation(line: 119, column: 8, scope: !6430)
!6433 = !DILocation(line: 122, column: 8, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 122, column: 7)
!6435 = !DILocation(line: 122, column: 7, scope: !6430)
!6436 = !DILocation(line: 123, column: 4, scope: !6434)
!6437 = !DILocation(line: 124, column: 47, scope: !6430)
!6438 = !DILocation(line: 124, column: 3, scope: !6430)
!6439 = !DILocation(line: 124, column: 8, scope: !6430)
!6440 = !DILocation(line: 124, column: 20, scope: !6430)
!6441 = !DILocation(line: 124, column: 45, scope: !6430)
!6442 = !DILocation(line: 125, column: 2, scope: !6430)
!6443 = !DILocation(line: 127, column: 7, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 127, column: 6)
!6445 = !DILocation(line: 127, column: 12, scope: !6444)
!6446 = !DILocation(line: 127, column: 24, scope: !6444)
!6447 = !DILocation(line: 127, column: 6, scope: !6415)
!6448 = !DILocation(line: 128, column: 30, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 127, column: 58)
!6450 = !DILocation(line: 128, column: 10, scope: !6449)
!6451 = !DILocation(line: 128, column: 8, scope: !6449)
!6452 = !DILocation(line: 132, column: 8, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6449, file: !3, line: 132, column: 7)
!6454 = !DILocation(line: 132, column: 7, scope: !6449)
!6455 = !DILocation(line: 133, column: 4, scope: !6453)
!6456 = !DILocation(line: 134, column: 55, scope: !6449)
!6457 = !DILocation(line: 134, column: 3, scope: !6449)
!6458 = !DILocation(line: 134, column: 8, scope: !6449)
!6459 = !DILocation(line: 134, column: 20, scope: !6449)
!6460 = !DILocation(line: 134, column: 53, scope: !6449)
!6461 = !DILocation(line: 135, column: 2, scope: !6449)
!6462 = !DILocation(line: 137, column: 7, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 137, column: 6)
!6464 = !DILocation(line: 137, column: 12, scope: !6463)
!6465 = !DILocation(line: 137, column: 24, scope: !6463)
!6466 = !DILocation(line: 137, column: 6, scope: !6415)
!6467 = !DILocation(line: 138, column: 36, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6463, file: !3, line: 137, column: 58)
!6469 = !DILocation(line: 138, column: 10, scope: !6468)
!6470 = !DILocation(line: 138, column: 8, scope: !6468)
!6471 = !DILocation(line: 141, column: 8, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 141, column: 7)
!6473 = !DILocation(line: 141, column: 7, scope: !6468)
!6474 = !DILocation(line: 142, column: 4, scope: !6472)
!6475 = !DILocation(line: 143, column: 55, scope: !6468)
!6476 = !DILocation(line: 143, column: 3, scope: !6468)
!6477 = !DILocation(line: 143, column: 8, scope: !6468)
!6478 = !DILocation(line: 143, column: 20, scope: !6468)
!6479 = !DILocation(line: 143, column: 53, scope: !6468)
!6480 = !DILocation(line: 144, column: 2, scope: !6468)
!6481 = !DILocation(line: 146, column: 2, scope: !6415)
!6482 = !DILocation(line: 147, column: 1, scope: !6415)
!6483 = !DISubprogram(name: "drm_property_create_blob", scope: !4983, file: !4983, line: 277, type: !6484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!5512, !395, !546, !2779}
!6486 = distinct !DISubprogram(name: "IS_ERR", scope: !6487, file: !6487, line: 59, type: !6488, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6490)
!6487 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!920, !2779}
!6490 = !{!6491}
!6491 = !DILocalVariable(name: "ptr", arg: 1, scope: !6486, file: !6487, line: 59, type: !2779)
!6492 = !DILocation(line: 59, column: 60, scope: !6486)
!6493 = !DILocation(line: 61, column: 9, scope: !6486)
!6494 = !DILocation(line: 61, column: 2, scope: !6486)
!6495 = distinct !DISubprogram(name: "PTR_ERR", scope: !6487, file: !6487, line: 49, type: !6496, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6498)
!6496 = !DISubroutineType(types: !6497)
!6497 = !{!535, !2779}
!6498 = !{!6499}
!6499 = !DILocalVariable(name: "ptr", arg: 1, scope: !6495, file: !6487, line: 49, type: !2779)
!6500 = !DILocation(line: 49, column: 61, scope: !6495)
!6501 = !DILocation(line: 51, column: 16, scope: !6495)
!6502 = !DILocation(line: 51, column: 9, scope: !6495)
!6503 = !DILocation(line: 51, column: 2, scope: !6495)
!6504 = !DISubprogram(name: "drm_connector_init", scope: !201, file: !201, line: 1886, type: !6505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!109, !395, !5353, !5345, !109}
!6507 = !DISubprogram(name: "drm_connector_attach_encoder", scope: !201, file: !201, line: 1903, type: !6508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6508 = !DISubroutineType(types: !6509)
!6509 = !{!109, !5353, !5835}
!6510 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6511, file: !6511, line: 35, type: !6512, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6514)
!6511 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6512 = !DISubroutineType(types: !6513)
!6513 = !{null, !378}
!6514 = !{!6515}
!6515 = !DILocalVariable(name: "list", arg: 1, scope: !6510, file: !6511, line: 35, type: !378)
!6516 = !DILocation(line: 35, column: 53, scope: !6510)
!6517 = !DILocation(line: 37, column: 2, scope: !6510)
!6518 = !DILocation(line: 37, column: 2, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6510, file: !6511, line: 37, column: 2)
!6520 = !DILocation(line: 37, column: 2, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6519, file: !6511, line: 37, column: 2)
!6522 = !DILocation(line: 37, column: 2, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6519, file: !6511, line: 37, column: 2)
!6524 = !DILocation(line: 38, column: 2, scope: !6510)
!6525 = !DILocation(line: 38, column: 2, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6510, file: !6511, line: 38, column: 2)
!6527 = !DILocation(line: 38, column: 2, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6526, file: !6511, line: 38, column: 2)
!6529 = !DILocation(line: 38, column: 2, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6526, file: !6511, line: 38, column: 2)
!6531 = !DILocation(line: 39, column: 1, scope: !6510)
!6532 = distinct !DISubprogram(name: "spinlock_check", scope: !6533, file: !6533, line: 324, type: !6534, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6537)
!6533 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6534 = !DISubroutineType(types: !6535)
!6535 = !{!6536, !2559}
!6536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!6537 = !{!6538}
!6538 = !DILocalVariable(name: "lock", arg: 1, scope: !6532, file: !6533, line: 324, type: !2559)
!6539 = !DILocation(line: 324, column: 67, scope: !6532)
!6540 = !DILocation(line: 326, column: 10, scope: !6532)
!6541 = !DILocation(line: 326, column: 16, scope: !6532)
!6542 = !DILocation(line: 326, column: 2, scope: !6532)
!6543 = !DISubprogram(name: "dma_fence_context_alloc", scope: !365, file: !365, line: 644, type: !6544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6544 = !DISubroutineType(types: !6545)
!6545 = !{!652, !7}
!6546 = !DISubprogram(name: "snprintf", scope: !6547, file: !6547, line: 12, type: !6548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6547 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6548 = !DISubroutineType(types: !6549)
!6549 = !{!109, !499, !546, !421, null}
!6550 = !DISubprogram(name: "drm_object_attach_property", scope: !4970, file: !4970, line: 137, type: !6551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6551 = !DISubroutineType(types: !6552)
!6552 = !{null, !6553, !4981, !4825}
!6553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!6554 = !DISubprogram(name: "drm_connector_cleanup", scope: !201, file: !201, line: 1906, type: !5356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6555 = !DISubprogram(name: "drm_property_blob_put", scope: !4983, file: !4983, line: 291, type: !6556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6556 = !DISubroutineType(types: !6557)
!6557 = !{null, !5512}
!6558 = distinct !DISubprogram(name: "drm_writeback_set_fb", scope: !3, file: !3, line: 293, type: !6559, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6561)
!6559 = !DISubroutineType(types: !6560)
!6560 = !{!109, !5381, !4962}
!6561 = !{!6562, !6563, !6564, !6566}
!6562 = !DILocalVariable(name: "conn_state", arg: 1, scope: !6558, file: !3, line: 293, type: !5381)
!6563 = !DILocalVariable(name: "fb", arg: 2, scope: !6558, file: !3, line: 294, type: !4962)
!6564 = !DILocalVariable(name: "__ret_warn_on", scope: !6565, file: !3, line: 296, type: !109)
!6565 = distinct !DILexicalBlock(scope: !6558, file: !3, line: 296, column: 2)
!6566 = !DILocalVariable(name: "__flags", scope: !6567, file: !3, line: 296, type: !109)
!6567 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 296, column: 2)
!6568 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 296, column: 2)
!6569 = !DILocation(line: 293, column: 54, scope: !6558)
!6570 = !DILocation(line: 294, column: 29, scope: !6558)
!6571 = !DILocation(line: 296, column: 2, scope: !6565)
!6572 = !DILocation(line: 296, column: 2, scope: !6568)
!6573 = !DILocation(line: 296, column: 2, scope: !6567)
!6574 = !DILocation(line: 296, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 296, column: 2)
!6576 = !DILocation(line: 296, column: 2, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 296, column: 2)
!6578 = !{i64 2155502710, i64 2155502739, i64 2155502785, i64 2155502843, i64 2155502897, i64 2155502951, i64 2155503006, i64 2155503037, i64 2155503345, i64 2155503351, i64 2155503398, i64 2155503421, i64 2155503447}
!6579 = !DILocation(line: 296, column: 2, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 296, column: 2)
!6581 = !DILocation(line: 296, column: 2, scope: !6558)
!6582 = !DILocation(line: 298, column: 7, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6558, file: !3, line: 298, column: 6)
!6584 = !DILocation(line: 298, column: 19, scope: !6583)
!6585 = !DILocation(line: 298, column: 6, scope: !6558)
!6586 = !DILocation(line: 300, column: 4, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6583, file: !3, line: 298, column: 34)
!6588 = !DILocation(line: 299, column: 3, scope: !6587)
!6589 = !DILocation(line: 299, column: 15, scope: !6587)
!6590 = !DILocation(line: 299, column: 29, scope: !6587)
!6591 = !DILocation(line: 301, column: 8, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 301, column: 7)
!6593 = !DILocation(line: 301, column: 20, scope: !6592)
!6594 = !DILocation(line: 301, column: 7, scope: !6587)
!6595 = !DILocation(line: 302, column: 4, scope: !6592)
!6596 = !DILocation(line: 305, column: 31, scope: !6587)
!6597 = !DILocation(line: 305, column: 43, scope: !6587)
!6598 = !DILocation(line: 305, column: 4, scope: !6587)
!6599 = !DILocation(line: 304, column: 3, scope: !6587)
!6600 = !DILocation(line: 304, column: 15, scope: !6587)
!6601 = !DILocation(line: 304, column: 30, scope: !6587)
!6602 = !DILocation(line: 304, column: 40, scope: !6587)
!6603 = !DILocation(line: 306, column: 2, scope: !6587)
!6604 = !DILocation(line: 308, column: 26, scope: !6558)
!6605 = !DILocation(line: 308, column: 38, scope: !6558)
!6606 = !DILocation(line: 308, column: 53, scope: !6558)
!6607 = !DILocation(line: 308, column: 57, scope: !6558)
!6608 = !DILocation(line: 308, column: 2, scope: !6558)
!6609 = !DILocation(line: 309, column: 2, scope: !6558)
!6610 = !DILocation(line: 310, column: 1, scope: !6558)
!6611 = distinct !DISubprogram(name: "kzalloc", scope: !347, file: !347, line: 719, type: !6612, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6614)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{!372, !546, !373}
!6614 = !{!6615, !6616}
!6615 = !DILocalVariable(name: "size", arg: 1, scope: !6611, file: !347, line: 719, type: !546)
!6616 = !DILocalVariable(name: "flags", arg: 2, scope: !6611, file: !347, line: 719, type: !373)
!6617 = !DILocation(line: 719, column: 52, scope: !6611)
!6618 = !DILocation(line: 719, column: 64, scope: !6611)
!6619 = !DILocation(line: 721, column: 17, scope: !6611)
!6620 = !DILocation(line: 721, column: 23, scope: !6611)
!6621 = !DILocation(line: 721, column: 29, scope: !6611)
!6622 = !DILocation(line: 721, column: 9, scope: !6611)
!6623 = !DILocation(line: 721, column: 2, scope: !6611)
!6624 = distinct !DISubprogram(name: "drm_connector_to_writeback", scope: !385, file: !385, line: 146, type: !6625, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6625 = !DISubroutineType(types: !6626)
!6626 = !{!388, !5353}
!6627 = !{!6628, !6629}
!6628 = !DILocalVariable(name: "connector", arg: 1, scope: !6624, file: !385, line: 146, type: !5353)
!6629 = !DILocalVariable(name: "__mptr", scope: !6630, file: !385, line: 148, type: !372)
!6630 = distinct !DILexicalBlock(scope: !6624, file: !385, line: 148, column: 9)
!6631 = !DILocation(line: 146, column: 50, scope: !6624)
!6632 = !DILocation(line: 148, column: 9, scope: !6630)
!6633 = !DILocation(line: 148, column: 9, scope: !6624)
!6634 = !DILocation(line: 148, column: 2, scope: !6624)
!6635 = distinct !DISubprogram(name: "drm_framebuffer_assign", scope: !4964, file: !4964, line: 270, type: !6636, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6639)
!6636 = !DISubroutineType(types: !6637)
!6637 = !{null, !6638, !4962}
!6638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!6639 = !{!6640, !6641}
!6640 = !DILocalVariable(name: "p", arg: 1, scope: !6635, file: !4964, line: 270, type: !6638)
!6641 = !DILocalVariable(name: "fb", arg: 2, scope: !6635, file: !4964, line: 271, type: !4962)
!6642 = !DILocation(line: 270, column: 68, scope: !6635)
!6643 = !DILocation(line: 271, column: 32, scope: !6635)
!6644 = !DILocation(line: 273, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6635, file: !4964, line: 273, column: 6)
!6646 = !DILocation(line: 273, column: 6, scope: !6635)
!6647 = !DILocation(line: 274, column: 23, scope: !6645)
!6648 = !DILocation(line: 274, column: 3, scope: !6645)
!6649 = !DILocation(line: 275, column: 7, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6635, file: !4964, line: 275, column: 6)
!6651 = !DILocation(line: 275, column: 6, scope: !6650)
!6652 = !DILocation(line: 275, column: 6, scope: !6635)
!6653 = !DILocation(line: 276, column: 24, scope: !6650)
!6654 = !DILocation(line: 276, column: 23, scope: !6650)
!6655 = !DILocation(line: 276, column: 3, scope: !6650)
!6656 = !DILocation(line: 277, column: 7, scope: !6635)
!6657 = !DILocation(line: 277, column: 3, scope: !6635)
!6658 = !DILocation(line: 277, column: 5, scope: !6635)
!6659 = !DILocation(line: 278, column: 1, scope: !6635)
!6660 = distinct !DISubprogram(name: "drm_writeback_prepare_job", scope: !3, file: !3, line: 312, type: !6661, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6663)
!6661 = !DISubroutineType(types: !6662)
!6662 = !{!109, !383}
!6663 = !{!6664, !6665, !6666, !6667}
!6664 = !DILocalVariable(name: "job", arg: 1, scope: !6660, file: !3, line: 312, type: !383)
!6665 = !DILocalVariable(name: "connector", scope: !6660, file: !3, line: 314, type: !388)
!6666 = !DILocalVariable(name: "funcs", scope: !6660, file: !3, line: 315, type: !5992)
!6667 = !DILocalVariable(name: "ret", scope: !6660, file: !3, line: 317, type: !109)
!6668 = !DILocation(line: 312, column: 57, scope: !6660)
!6669 = !DILocation(line: 314, column: 2, scope: !6660)
!6670 = !DILocation(line: 314, column: 34, scope: !6660)
!6671 = !DILocation(line: 314, column: 46, scope: !6660)
!6672 = !DILocation(line: 314, column: 51, scope: !6660)
!6673 = !DILocation(line: 315, column: 2, scope: !6660)
!6674 = !DILocation(line: 315, column: 43, scope: !6660)
!6675 = !DILocation(line: 316, column: 3, scope: !6660)
!6676 = !DILocation(line: 316, column: 14, scope: !6660)
!6677 = !DILocation(line: 316, column: 19, scope: !6660)
!6678 = !DILocation(line: 317, column: 2, scope: !6660)
!6679 = !DILocation(line: 317, column: 6, scope: !6660)
!6680 = !DILocation(line: 319, column: 6, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6660, file: !3, line: 319, column: 6)
!6682 = !DILocation(line: 319, column: 13, scope: !6681)
!6683 = !DILocation(line: 319, column: 6, scope: !6660)
!6684 = !DILocation(line: 320, column: 9, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 319, column: 36)
!6686 = !DILocation(line: 320, column: 16, scope: !6685)
!6687 = !DILocation(line: 320, column: 38, scope: !6685)
!6688 = !DILocation(line: 320, column: 49, scope: !6685)
!6689 = !DILocation(line: 320, column: 7, scope: !6685)
!6690 = !DILocation(line: 321, column: 7, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6685, file: !3, line: 321, column: 7)
!6692 = !DILocation(line: 321, column: 11, scope: !6691)
!6693 = !DILocation(line: 321, column: 7, scope: !6685)
!6694 = !DILocation(line: 322, column: 11, scope: !6691)
!6695 = !DILocation(line: 322, column: 4, scope: !6691)
!6696 = !DILocation(line: 323, column: 2, scope: !6685)
!6697 = !DILocation(line: 325, column: 2, scope: !6660)
!6698 = !DILocation(line: 325, column: 7, scope: !6660)
!6699 = !DILocation(line: 325, column: 16, scope: !6660)
!6700 = !DILocation(line: 326, column: 2, scope: !6660)
!6701 = !DILocation(line: 327, column: 1, scope: !6660)
!6702 = distinct !DISubprogram(name: "drm_writeback_queue_job", scope: !3, file: !3, line: 349, type: !6703, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6705)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{null, !388, !5381}
!6705 = !{!6706, !6707, !6708, !6709, !6710, !6714}
!6706 = !DILocalVariable(name: "wb_connector", arg: 1, scope: !6702, file: !3, line: 349, type: !388)
!6707 = !DILocalVariable(name: "conn_state", arg: 2, scope: !6702, file: !3, line: 350, type: !5381)
!6708 = !DILocalVariable(name: "job", scope: !6702, file: !3, line: 352, type: !383)
!6709 = !DILocalVariable(name: "flags", scope: !6702, file: !3, line: 353, type: !549)
!6710 = !DILocalVariable(name: "__dummy", scope: !6711, file: !3, line: 358, type: !549)
!6711 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 358, column: 2)
!6712 = distinct !DILexicalBlock(scope: !6713, file: !3, line: 358, column: 2)
!6713 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 358, column: 2)
!6714 = !DILocalVariable(name: "__dummy2", scope: !6711, file: !3, line: 358, type: !549)
!6715 = !DILocation(line: 349, column: 62, scope: !6702)
!6716 = !DILocation(line: 350, column: 37, scope: !6702)
!6717 = !DILocation(line: 352, column: 2, scope: !6702)
!6718 = !DILocation(line: 352, column: 28, scope: !6702)
!6719 = !DILocation(line: 353, column: 2, scope: !6702)
!6720 = !DILocation(line: 353, column: 16, scope: !6702)
!6721 = !DILocation(line: 355, column: 8, scope: !6702)
!6722 = !DILocation(line: 355, column: 20, scope: !6702)
!6723 = !DILocation(line: 355, column: 6, scope: !6702)
!6724 = !DILocation(line: 356, column: 2, scope: !6702)
!6725 = !DILocation(line: 356, column: 14, scope: !6702)
!6726 = !DILocation(line: 356, column: 28, scope: !6702)
!6727 = !DILocation(line: 358, column: 2, scope: !6702)
!6728 = !DILocation(line: 358, column: 2, scope: !6713)
!6729 = !DILocation(line: 358, column: 2, scope: !6711)
!6730 = !DILocation(line: 358, column: 2, scope: !6712)
!6731 = !DILocation(line: 359, column: 17, scope: !6702)
!6732 = !DILocation(line: 359, column: 22, scope: !6702)
!6733 = !DILocation(line: 359, column: 35, scope: !6702)
!6734 = !DILocation(line: 359, column: 49, scope: !6702)
!6735 = !DILocation(line: 359, column: 2, scope: !6702)
!6736 = !DILocation(line: 360, column: 26, scope: !6702)
!6737 = !DILocation(line: 360, column: 40, scope: !6702)
!6738 = !DILocation(line: 360, column: 50, scope: !6702)
!6739 = !DILocation(line: 360, column: 2, scope: !6702)
!6740 = !DILocation(line: 361, column: 1, scope: !6702)
!6741 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6742, file: !6742, line: 32, type: !6743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6742 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6743 = !DISubroutineType(types: !6744)
!6744 = !{!549, !6536}
!6745 = distinct !DISubprogram(name: "list_add_tail", scope: !6511, file: !6511, line: 181, type: !6746, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{null, !378, !378}
!6748 = !{!6749, !6750}
!6749 = !DILocalVariable(name: "new", arg: 1, scope: !6745, file: !6511, line: 181, type: !378)
!6750 = !DILocalVariable(name: "head", arg: 2, scope: !6745, file: !6511, line: 181, type: !378)
!6751 = !DILocation(line: 181, column: 52, scope: !6745)
!6752 = !DILocation(line: 181, column: 75, scope: !6745)
!6753 = !DILocation(line: 183, column: 13, scope: !6745)
!6754 = !DILocation(line: 183, column: 18, scope: !6745)
!6755 = !DILocation(line: 183, column: 24, scope: !6745)
!6756 = !DILocation(line: 183, column: 30, scope: !6745)
!6757 = !DILocation(line: 183, column: 2, scope: !6745)
!6758 = !DILocation(line: 184, column: 1, scope: !6745)
!6759 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6533, file: !6533, line: 404, type: !6760, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6762)
!6760 = !DISubroutineType(types: !6761)
!6761 = !{null, !2559, !549}
!6762 = !{!6763, !6764, !6765, !6768}
!6763 = !DILocalVariable(name: "lock", arg: 1, scope: !6759, file: !6533, line: 404, type: !2559)
!6764 = !DILocalVariable(name: "flags", arg: 2, scope: !6759, file: !6533, line: 404, type: !549)
!6765 = !DILocalVariable(name: "__dummy", scope: !6766, file: !6533, line: 406, type: !549)
!6766 = distinct !DILexicalBlock(scope: !6767, file: !6533, line: 406, column: 2)
!6767 = distinct !DILexicalBlock(scope: !6759, file: !6533, line: 406, column: 2)
!6768 = !DILocalVariable(name: "__dummy2", scope: !6766, file: !6533, line: 406, type: !549)
!6769 = !DILocation(line: 404, column: 64, scope: !6759)
!6770 = !DILocation(line: 404, column: 84, scope: !6759)
!6771 = !DILocation(line: 406, column: 2, scope: !6759)
!6772 = !DILocation(line: 406, column: 2, scope: !6766)
!6773 = !DILocation(line: 406, column: 2, scope: !6767)
!6774 = !DILocation(line: 407, column: 1, scope: !6759)
!6775 = distinct !DISubprogram(name: "drm_writeback_cleanup_job", scope: !3, file: !3, line: 364, type: !6776, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6778)
!6776 = !DISubroutineType(types: !6777)
!6777 = !{null, !383}
!6778 = !{!6779, !6780, !6781}
!6779 = !DILocalVariable(name: "job", arg: 1, scope: !6775, file: !3, line: 364, type: !383)
!6780 = !DILocalVariable(name: "connector", scope: !6775, file: !3, line: 366, type: !388)
!6781 = !DILocalVariable(name: "funcs", scope: !6775, file: !3, line: 367, type: !5992)
!6782 = !DILocation(line: 364, column: 58, scope: !6775)
!6783 = !DILocation(line: 366, column: 2, scope: !6775)
!6784 = !DILocation(line: 366, column: 34, scope: !6775)
!6785 = !DILocation(line: 366, column: 46, scope: !6775)
!6786 = !DILocation(line: 366, column: 51, scope: !6775)
!6787 = !DILocation(line: 367, column: 2, scope: !6775)
!6788 = !DILocation(line: 367, column: 43, scope: !6775)
!6789 = !DILocation(line: 368, column: 3, scope: !6775)
!6790 = !DILocation(line: 368, column: 14, scope: !6775)
!6791 = !DILocation(line: 368, column: 19, scope: !6775)
!6792 = !DILocation(line: 370, column: 6, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 370, column: 6)
!6794 = !DILocation(line: 370, column: 11, scope: !6793)
!6795 = !{i8 0, i8 2}
!6796 = !DILocation(line: 370, column: 20, scope: !6793)
!6797 = !DILocation(line: 370, column: 23, scope: !6793)
!6798 = !DILocation(line: 370, column: 30, scope: !6793)
!6799 = !DILocation(line: 370, column: 6, scope: !6775)
!6800 = !DILocation(line: 371, column: 3, scope: !6793)
!6801 = !DILocation(line: 371, column: 10, scope: !6793)
!6802 = !DILocation(line: 371, column: 32, scope: !6793)
!6803 = !DILocation(line: 371, column: 43, scope: !6793)
!6804 = !DILocation(line: 373, column: 6, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 373, column: 6)
!6806 = !DILocation(line: 373, column: 11, scope: !6805)
!6807 = !DILocation(line: 373, column: 6, scope: !6775)
!6808 = !DILocation(line: 374, column: 23, scope: !6805)
!6809 = !DILocation(line: 374, column: 28, scope: !6805)
!6810 = !DILocation(line: 374, column: 3, scope: !6805)
!6811 = !DILocation(line: 376, column: 6, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 376, column: 6)
!6813 = !DILocation(line: 376, column: 11, scope: !6812)
!6814 = !DILocation(line: 376, column: 6, scope: !6775)
!6815 = !DILocation(line: 377, column: 17, scope: !6812)
!6816 = !DILocation(line: 377, column: 22, scope: !6812)
!6817 = !DILocation(line: 377, column: 3, scope: !6812)
!6818 = !DILocation(line: 379, column: 8, scope: !6775)
!6819 = !DILocation(line: 379, column: 2, scope: !6775)
!6820 = !DILocation(line: 380, column: 1, scope: !6775)
!6821 = distinct !DISubprogram(name: "drm_framebuffer_put", scope: !4964, file: !4964, line: 246, type: !5033, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6822)
!6822 = !{!6823}
!6823 = !DILocalVariable(name: "fb", arg: 1, scope: !6821, file: !4964, line: 246, type: !4962)
!6824 = !DILocation(line: 246, column: 64, scope: !6821)
!6825 = !DILocation(line: 248, column: 23, scope: !6821)
!6826 = !DILocation(line: 248, column: 27, scope: !6821)
!6827 = !DILocation(line: 248, column: 2, scope: !6821)
!6828 = !DILocation(line: 249, column: 1, scope: !6821)
!6829 = distinct !DISubprogram(name: "dma_fence_put", scope: !365, file: !365, line: 293, type: !5473, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6830)
!6830 = !{!6831}
!6831 = !DILocalVariable(name: "fence", arg: 1, scope: !6829, file: !365, line: 293, type: !5447)
!6832 = !DILocation(line: 293, column: 52, scope: !6829)
!6833 = !DILocation(line: 295, column: 6, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6829, file: !365, line: 295, column: 6)
!6835 = !DILocation(line: 295, column: 6, scope: !6829)
!6836 = !DILocation(line: 296, column: 13, scope: !6834)
!6837 = !DILocation(line: 296, column: 20, scope: !6834)
!6838 = !DILocation(line: 296, column: 3, scope: !6834)
!6839 = !DILocation(line: 297, column: 1, scope: !6829)
!6840 = !DISubprogram(name: "kfree", scope: !347, file: !347, line: 227, type: !6841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6841 = !DISubroutineType(types: !6842)
!6842 = !{null, !2779}
!6843 = !DILocation(line: 416, column: 65, scope: !6154)
!6844 = !DILocation(line: 417, column: 9, scope: !6154)
!6845 = !DILocation(line: 419, column: 2, scope: !6154)
!6846 = !DILocation(line: 419, column: 16, scope: !6154)
!6847 = !DILocation(line: 420, column: 2, scope: !6154)
!6848 = !DILocation(line: 420, column: 28, scope: !6154)
!6849 = !DILocation(line: 421, column: 2, scope: !6154)
!6850 = !DILocation(line: 421, column: 20, scope: !6154)
!6851 = !DILocation(line: 423, column: 2, scope: !6154)
!6852 = !DILocation(line: 423, column: 2, scope: !6166)
!6853 = !DILocation(line: 423, column: 2, scope: !6164)
!6854 = !DILocation(line: 423, column: 2, scope: !6165)
!6855 = !DILocation(line: 424, column: 8, scope: !6169)
!6856 = !DILocation(line: 424, column: 8, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 424, column: 8)
!6858 = !DILocation(line: 424, column: 8, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6857, file: !3, line: 424, column: 8)
!6860 = !DILocation(line: 424, column: 8, scope: !6172)
!6861 = !DILocation(line: 424, column: 8, scope: !6154)
!6862 = !DILocation(line: 424, column: 6, scope: !6154)
!6863 = !DILocation(line: 427, column: 6, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 427, column: 6)
!6865 = !DILocation(line: 427, column: 6, scope: !6154)
!6866 = !DILocation(line: 428, column: 13, scope: !6864)
!6867 = !DILocation(line: 428, column: 18, scope: !6864)
!6868 = !DILocation(line: 428, column: 3, scope: !6864)
!6869 = !DILocation(line: 430, column: 26, scope: !6154)
!6870 = !DILocation(line: 430, column: 40, scope: !6154)
!6871 = !DILocation(line: 430, column: 50, scope: !6154)
!6872 = !DILocation(line: 430, column: 2, scope: !6154)
!6873 = !DILocation(line: 432, column: 6, scope: !6174)
!6874 = !DILocation(line: 432, column: 6, scope: !6178)
!6875 = !DILocation(line: 432, column: 6, scope: !6177)
!6876 = !DILocation(line: 432, column: 6, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 432, column: 6)
!6878 = !DILocation(line: 432, column: 6, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 432, column: 6)
!6880 = !{i64 2155516649, i64 2155516678, i64 2155516724, i64 2155516782, i64 2155516836, i64 2155516890, i64 2155516945, i64 2155516976, i64 2155517284, i64 2155517290, i64 2155517337, i64 2155517360, i64 2155517386}
!6881 = !DILocation(line: 432, column: 6, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 432, column: 6)
!6883 = !DILocation(line: 432, column: 6, scope: !6175)
!6884 = !DILocation(line: 432, column: 6, scope: !6154)
!6885 = !DILocation(line: 433, column: 3, scope: !6175)
!6886 = !DILocation(line: 435, column: 14, scope: !6154)
!6887 = !DILocation(line: 435, column: 19, scope: !6154)
!6888 = !DILocation(line: 435, column: 12, scope: !6154)
!6889 = !DILocation(line: 436, column: 6, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 436, column: 6)
!6891 = !DILocation(line: 436, column: 6, scope: !6154)
!6892 = !DILocation(line: 437, column: 7, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6894, file: !3, line: 437, column: 7)
!6894 = distinct !DILexicalBlock(scope: !6890, file: !3, line: 436, column: 17)
!6895 = !DILocation(line: 437, column: 7, scope: !6894)
!6896 = !DILocation(line: 438, column: 24, scope: !6893)
!6897 = !DILocation(line: 438, column: 35, scope: !6893)
!6898 = !DILocation(line: 438, column: 4, scope: !6893)
!6899 = !DILocation(line: 439, column: 20, scope: !6894)
!6900 = !DILocation(line: 439, column: 3, scope: !6894)
!6901 = !DILocation(line: 440, column: 17, scope: !6894)
!6902 = !DILocation(line: 440, column: 3, scope: !6894)
!6903 = !DILocation(line: 441, column: 3, scope: !6894)
!6904 = !DILocation(line: 441, column: 8, scope: !6894)
!6905 = !DILocation(line: 441, column: 18, scope: !6894)
!6906 = !DILocation(line: 442, column: 2, scope: !6894)
!6907 = !DILocation(line: 444, column: 2, scope: !6154)
!6908 = !DILocation(line: 444, column: 2, scope: !6909)
!6909 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 444, column: 2)
!6910 = !DILocation(line: 444, column: 2, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6909, file: !3, line: 444, column: 2)
!6912 = !DILocation(line: 445, column: 13, scope: !6154)
!6913 = !DILocation(line: 445, column: 30, scope: !6154)
!6914 = !DILocation(line: 445, column: 35, scope: !6154)
!6915 = !DILocation(line: 445, column: 2, scope: !6154)
!6916 = !DILocation(line: 446, column: 1, scope: !6154)
!6917 = distinct !DISubprogram(name: "list_del", scope: !6511, file: !6511, line: 227, type: !6512, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6918)
!6918 = !{!6919}
!6919 = !DILocalVariable(name: "entry", arg: 1, scope: !6917, file: !6511, line: 227, type: !378)
!6920 = !DILocation(line: 227, column: 47, scope: !6917)
!6921 = !DILocation(line: 229, column: 19, scope: !6917)
!6922 = !DILocation(line: 229, column: 2, scope: !6917)
!6923 = !DILocation(line: 230, column: 2, scope: !6917)
!6924 = !DILocation(line: 230, column: 9, scope: !6917)
!6925 = !DILocation(line: 230, column: 14, scope: !6917)
!6926 = !DILocation(line: 231, column: 2, scope: !6917)
!6927 = !DILocation(line: 231, column: 9, scope: !6917)
!6928 = !DILocation(line: 231, column: 14, scope: !6917)
!6929 = !DILocation(line: 232, column: 1, scope: !6917)
!6930 = distinct !DISubprogram(name: "dma_fence_set_error", scope: !365, file: !365, line: 577, type: !6931, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6933)
!6931 = !DISubroutineType(types: !6932)
!6932 = !{null, !5447, !109}
!6933 = !{!6934, !6935, !6936, !6938, !6941, !6943}
!6934 = !DILocalVariable(name: "fence", arg: 1, scope: !6930, file: !365, line: 577, type: !5447)
!6935 = !DILocalVariable(name: "error", arg: 2, scope: !6930, file: !365, line: 578, type: !109)
!6936 = !DILocalVariable(name: "__ret_warn_on", scope: !6937, file: !365, line: 580, type: !109)
!6937 = distinct !DILexicalBlock(scope: !6930, file: !365, line: 580, column: 2)
!6938 = !DILocalVariable(name: "__flags", scope: !6939, file: !365, line: 580, type: !109)
!6939 = distinct !DILexicalBlock(scope: !6940, file: !365, line: 580, column: 2)
!6940 = distinct !DILexicalBlock(scope: !6937, file: !365, line: 580, column: 2)
!6941 = !DILocalVariable(name: "__ret_warn_on", scope: !6942, file: !365, line: 581, type: !109)
!6942 = distinct !DILexicalBlock(scope: !6930, file: !365, line: 581, column: 2)
!6943 = !DILocalVariable(name: "__flags", scope: !6944, file: !365, line: 581, type: !109)
!6944 = distinct !DILexicalBlock(scope: !6945, file: !365, line: 581, column: 2)
!6945 = distinct !DILexicalBlock(scope: !6942, file: !365, line: 581, column: 2)
!6946 = !DILocation(line: 577, column: 58, scope: !6930)
!6947 = !DILocation(line: 578, column: 16, scope: !6930)
!6948 = !DILocation(line: 580, column: 2, scope: !6937)
!6949 = !DILocation(line: 580, column: 2, scope: !6940)
!6950 = !DILocation(line: 580, column: 2, scope: !6939)
!6951 = !DILocation(line: 580, column: 2, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6939, file: !365, line: 580, column: 2)
!6953 = !DILocation(line: 580, column: 2, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6939, file: !365, line: 580, column: 2)
!6955 = !{i64 2150842056, i64 2150842085, i64 2150842131, i64 2150842189, i64 2150842243, i64 2150842297, i64 2150842352, i64 2150842383, i64 2150842691, i64 2150842697, i64 2150842744, i64 2150842767, i64 2150842793}
!6956 = !DILocation(line: 580, column: 2, scope: !6957)
!6957 = distinct !DILexicalBlock(scope: !6939, file: !365, line: 580, column: 2)
!6958 = !DILocation(line: 580, column: 2, scope: !6930)
!6959 = !DILocation(line: 581, column: 2, scope: !6942)
!6960 = !DILocation(line: 581, column: 2, scope: !6945)
!6961 = !DILocation(line: 581, column: 2, scope: !6944)
!6962 = !DILocation(line: 581, column: 2, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6944, file: !365, line: 581, column: 2)
!6964 = !DILocation(line: 581, column: 2, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6944, file: !365, line: 581, column: 2)
!6966 = !{i64 2150843578, i64 2150843607, i64 2150843653, i64 2150843711, i64 2150843765, i64 2150843819, i64 2150843874, i64 2150843905, i64 2150844213, i64 2150844219, i64 2150844266, i64 2150844289, i64 2150844315}
!6967 = !DILocation(line: 581, column: 2, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6944, file: !365, line: 581, column: 2)
!6969 = !DILocation(line: 581, column: 2, scope: !6930)
!6970 = !DILocation(line: 583, column: 17, scope: !6930)
!6971 = !DILocation(line: 583, column: 2, scope: !6930)
!6972 = !DILocation(line: 583, column: 9, scope: !6930)
!6973 = !DILocation(line: 583, column: 15, scope: !6930)
!6974 = !DILocation(line: 584, column: 1, scope: !6930)
!6975 = !DISubprogram(name: "dma_fence_signal", scope: !365, file: !365, line: 390, type: !6976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6976 = !DISubroutineType(types: !6977)
!6977 = !{!109, !5447}
!6978 = distinct !DISubprogram(name: "__init_work", scope: !321, file: !321, line: 263, type: !6979, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6981)
!6979 = !DISubroutineType(types: !6980)
!6980 = !{null, !1109, !109}
!6981 = !{!6982, !6983}
!6982 = !DILocalVariable(name: "work", arg: 1, scope: !6978, file: !321, line: 263, type: !1109)
!6983 = !DILocalVariable(name: "onstack", arg: 2, scope: !6978, file: !321, line: 263, type: !109)
!6984 = !DILocation(line: 263, column: 52, scope: !6978)
!6985 = !DILocation(line: 263, column: 62, scope: !6978)
!6986 = !DILocation(line: 263, column: 73, scope: !6978)
!6987 = distinct !DISubprogram(name: "cleanup_work", scope: !3, file: !3, line: 390, type: !1107, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6988)
!6988 = !{!6989, !6990, !6991}
!6989 = !DILocalVariable(name: "work", arg: 1, scope: !6987, file: !3, line: 390, type: !1109)
!6990 = !DILocalVariable(name: "job", scope: !6987, file: !3, line: 392, type: !383)
!6991 = !DILocalVariable(name: "__mptr", scope: !6992, file: !3, line: 392, type: !372)
!6992 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 392, column: 34)
!6993 = !DILocation(line: 390, column: 46, scope: !6987)
!6994 = !DILocation(line: 392, column: 2, scope: !6987)
!6995 = !DILocation(line: 392, column: 28, scope: !6987)
!6996 = !DILocation(line: 392, column: 34, scope: !6992)
!6997 = !DILocation(line: 392, column: 34, scope: !6987)
!6998 = !DILocation(line: 396, column: 28, scope: !6987)
!6999 = !DILocation(line: 396, column: 2, scope: !6987)
!7000 = !DILocation(line: 397, column: 1, scope: !6987)
!7001 = distinct !DISubprogram(name: "queue_work", scope: !321, file: !321, line: 559, type: !7002, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7004)
!7002 = !DISubroutineType(types: !7003)
!7003 = !{!920, !1161, !1109}
!7004 = !{!7005, !7006}
!7005 = !DILocalVariable(name: "wq", arg: 1, scope: !7001, file: !321, line: 559, type: !1161)
!7006 = !DILocalVariable(name: "work", arg: 2, scope: !7001, file: !321, line: 560, type: !1109)
!7007 = !DILocation(line: 559, column: 56, scope: !7001)
!7008 = !DILocation(line: 560, column: 30, scope: !7001)
!7009 = !DILocation(line: 562, column: 41, scope: !7001)
!7010 = !DILocation(line: 562, column: 45, scope: !7001)
!7011 = !DILocation(line: 562, column: 9, scope: !7001)
!7012 = !DILocation(line: 562, column: 2, scope: !7001)
!7013 = distinct !DISubprogram(name: "drm_writeback_get_out_fence", scope: !3, file: !3, line: 450, type: !7014, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7016)
!7014 = !DISubroutineType(types: !7015)
!7015 = !{!5447, !388}
!7016 = !{!7017, !7018, !7019, !7022}
!7017 = !DILocalVariable(name: "wb_connector", arg: 1, scope: !7013, file: !3, line: 450, type: !388)
!7018 = !DILocalVariable(name: "fence", scope: !7013, file: !3, line: 452, type: !5447)
!7019 = !DILocalVariable(name: "__ret_warn_on", scope: !7020, file: !3, line: 454, type: !109)
!7020 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 454, column: 6)
!7021 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 454, column: 6)
!7022 = !DILocalVariable(name: "__flags", scope: !7023, file: !3, line: 454, type: !109)
!7023 = distinct !DILexicalBlock(scope: !7024, file: !3, line: 454, column: 6)
!7024 = distinct !DILexicalBlock(scope: !7020, file: !3, line: 454, column: 6)
!7025 = !DILocation(line: 450, column: 61, scope: !7013)
!7026 = !DILocation(line: 452, column: 2, scope: !7013)
!7027 = !DILocation(line: 452, column: 20, scope: !7013)
!7028 = !DILocation(line: 454, column: 6, scope: !7020)
!7029 = !DILocation(line: 454, column: 6, scope: !7024)
!7030 = !DILocation(line: 454, column: 6, scope: !7023)
!7031 = !DILocation(line: 454, column: 6, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7023, file: !3, line: 454, column: 6)
!7033 = !DILocation(line: 454, column: 6, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !7023, file: !3, line: 454, column: 6)
!7035 = !{i64 2155521250, i64 2155521279, i64 2155521325, i64 2155521383, i64 2155521437, i64 2155521491, i64 2155521546, i64 2155521577, i64 2155521885, i64 2155521891, i64 2155521938, i64 2155521961, i64 2155521987}
!7036 = !DILocation(line: 454, column: 6, scope: !7037)
!7037 = distinct !DILexicalBlock(scope: !7023, file: !3, line: 454, column: 6)
!7038 = !DILocation(line: 454, column: 6, scope: !7021)
!7039 = !DILocation(line: 454, column: 6, scope: !7013)
!7040 = !DILocation(line: 456, column: 3, scope: !7021)
!7041 = !DILocation(line: 458, column: 10, scope: !7013)
!7042 = !DILocation(line: 458, column: 8, scope: !7013)
!7043 = !DILocation(line: 459, column: 7, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 459, column: 6)
!7045 = !DILocation(line: 459, column: 6, scope: !7013)
!7046 = !DILocation(line: 460, column: 3, scope: !7044)
!7047 = !DILocation(line: 462, column: 17, scope: !7013)
!7048 = !DILocation(line: 463, column: 11, scope: !7013)
!7049 = !DILocation(line: 463, column: 25, scope: !7013)
!7050 = !DILocation(line: 463, column: 37, scope: !7013)
!7051 = !DILocation(line: 463, column: 51, scope: !7013)
!7052 = !DILocation(line: 464, column: 12, scope: !7013)
!7053 = !DILocation(line: 464, column: 26, scope: !7013)
!7054 = !DILocation(line: 464, column: 10, scope: !7013)
!7055 = !DILocation(line: 462, column: 2, scope: !7013)
!7056 = !DILocation(line: 466, column: 9, scope: !7013)
!7057 = !DILocation(line: 466, column: 2, scope: !7013)
!7058 = !DILocation(line: 467, column: 1, scope: !7013)
!7059 = !DISubprogram(name: "dma_fence_init", scope: !365, file: !365, line: 282, type: !7060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7060 = !DISubroutineType(types: !7061)
!7061 = !{null, !5447, !5452, !2559, !652, !652}
!7062 = !DISubprogram(name: "drm_property_create_object", scope: !4983, file: !4983, line: 268, type: !7063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7063 = !DISubroutineType(types: !7064)
!7064 = !{!4981, !395, !648, !421, !2094}
!7065 = !DISubprogram(name: "drm_property_create", scope: !4983, file: !4983, line: 250, type: !7066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7066 = !DISubroutineType(types: !7067)
!7067 = !{!4981, !395, !648, !421, !109}
!7068 = !DISubprogram(name: "drm_property_create_range", scope: !4983, file: !4983, line: 262, type: !7069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7069 = !DISubroutineType(types: !7070)
!7070 = !{!4981, !395, !648, !421, !4825, !4825}
!7071 = distinct !DISubprogram(name: "kmalloc", scope: !347, file: !347, line: 591, type: !6612, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7072)
!7072 = !{!7073, !7074, !7075}
!7073 = !DILocalVariable(name: "size", arg: 1, scope: !7071, file: !347, line: 591, type: !546)
!7074 = !DILocalVariable(name: "flags", arg: 2, scope: !7071, file: !347, line: 591, type: !373)
!7075 = !DILocalVariable(name: "index", scope: !7076, file: !347, line: 594, type: !7)
!7076 = distinct !DILexicalBlock(scope: !7077, file: !347, line: 593, column: 42)
!7077 = distinct !DILexicalBlock(scope: !7071, file: !347, line: 593, column: 6)
!7078 = !DILocation(line: 591, column: 61, scope: !7071)
!7079 = !DILocation(line: 591, column: 73, scope: !7071)
!7080 = !DILocation(line: 593, column: 27, scope: !7077)
!7081 = !DILocation(line: 593, column: 6, scope: !7077)
!7082 = !DILocation(line: 593, column: 33, scope: !7077)
!7083 = !DILocation(line: 593, column: 36, scope: !7077)
!7084 = !DILocation(line: 593, column: 6, scope: !7071)
!7085 = !DILocation(line: 594, column: 3, scope: !7076)
!7086 = !DILocation(line: 594, column: 16, scope: !7076)
!7087 = !DILocation(line: 596, column: 7, scope: !7088)
!7088 = distinct !DILexicalBlock(scope: !7076, file: !347, line: 596, column: 7)
!7089 = !DILocation(line: 596, column: 12, scope: !7088)
!7090 = !DILocation(line: 596, column: 7, scope: !7076)
!7091 = !DILocation(line: 597, column: 25, scope: !7088)
!7092 = !DILocation(line: 597, column: 31, scope: !7088)
!7093 = !DILocation(line: 597, column: 11, scope: !7088)
!7094 = !DILocation(line: 597, column: 4, scope: !7088)
!7095 = !DILocation(line: 599, column: 11, scope: !7076)
!7096 = !DILocation(line: 599, column: 9, scope: !7076)
!7097 = !DILocation(line: 601, column: 33, scope: !7076)
!7098 = !DILocation(line: 601, column: 40, scope: !7076)
!7099 = !DILocation(line: 601, column: 20, scope: !7076)
!7100 = !DILocation(line: 601, column: 5, scope: !7076)
!7101 = !DILocation(line: 601, column: 51, scope: !7076)
!7102 = !DILocation(line: 602, column: 5, scope: !7076)
!7103 = !DILocation(line: 602, column: 12, scope: !7076)
!7104 = !DILocation(line: 600, column: 10, scope: !7076)
!7105 = !DILocation(line: 600, column: 3, scope: !7076)
!7106 = !DILocation(line: 603, column: 2, scope: !7077)
!7107 = !DILocation(line: 604, column: 19, scope: !7071)
!7108 = !DILocation(line: 604, column: 25, scope: !7071)
!7109 = !DILocation(line: 604, column: 9, scope: !7071)
!7110 = !DILocation(line: 604, column: 2, scope: !7071)
!7111 = !DILocation(line: 605, column: 1, scope: !7071)
!7112 = !DISubprogram(name: "kmalloc_large", scope: !347, file: !347, line: 531, type: !6612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7113 = distinct !DISubprogram(name: "__kmalloc_index", scope: !347, file: !347, line: 444, type: !7114, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7116)
!7114 = !DISubroutineType(types: !7115)
!7115 = !{!7, !546, !920}
!7116 = !{!7117, !7118}
!7117 = !DILocalVariable(name: "size", arg: 1, scope: !7113, file: !347, line: 444, type: !546)
!7118 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7113, file: !347, line: 445, type: !920)
!7119 = !DILocation(line: 444, column: 60, scope: !7113)
!7120 = !DILocation(line: 445, column: 16, scope: !7113)
!7121 = !DILocation(line: 447, column: 7, scope: !7122)
!7122 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 447, column: 6)
!7123 = !DILocation(line: 447, column: 6, scope: !7113)
!7124 = !DILocation(line: 448, column: 3, scope: !7122)
!7125 = !DILocation(line: 450, column: 6, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 450, column: 6)
!7127 = !DILocation(line: 450, column: 11, scope: !7126)
!7128 = !DILocation(line: 450, column: 6, scope: !7113)
!7129 = !DILocation(line: 451, column: 3, scope: !7126)
!7130 = !DILocation(line: 453, column: 32, scope: !7131)
!7131 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 453, column: 6)
!7132 = !DILocation(line: 453, column: 37, scope: !7131)
!7133 = !DILocation(line: 453, column: 42, scope: !7131)
!7134 = !DILocation(line: 453, column: 45, scope: !7131)
!7135 = !DILocation(line: 453, column: 50, scope: !7131)
!7136 = !DILocation(line: 453, column: 6, scope: !7113)
!7137 = !DILocation(line: 454, column: 3, scope: !7131)
!7138 = !DILocation(line: 455, column: 32, scope: !7139)
!7139 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 455, column: 6)
!7140 = !DILocation(line: 455, column: 37, scope: !7139)
!7141 = !DILocation(line: 455, column: 43, scope: !7139)
!7142 = !DILocation(line: 455, column: 46, scope: !7139)
!7143 = !DILocation(line: 455, column: 51, scope: !7139)
!7144 = !DILocation(line: 455, column: 6, scope: !7113)
!7145 = !DILocation(line: 456, column: 3, scope: !7139)
!7146 = !DILocation(line: 457, column: 6, scope: !7147)
!7147 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 457, column: 6)
!7148 = !DILocation(line: 457, column: 11, scope: !7147)
!7149 = !DILocation(line: 457, column: 6, scope: !7113)
!7150 = !DILocation(line: 457, column: 26, scope: !7147)
!7151 = !DILocation(line: 458, column: 6, scope: !7152)
!7152 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 458, column: 6)
!7153 = !DILocation(line: 458, column: 11, scope: !7152)
!7154 = !DILocation(line: 458, column: 6, scope: !7113)
!7155 = !DILocation(line: 458, column: 26, scope: !7152)
!7156 = !DILocation(line: 459, column: 6, scope: !7157)
!7157 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 459, column: 6)
!7158 = !DILocation(line: 459, column: 11, scope: !7157)
!7159 = !DILocation(line: 459, column: 6, scope: !7113)
!7160 = !DILocation(line: 459, column: 26, scope: !7157)
!7161 = !DILocation(line: 460, column: 6, scope: !7162)
!7162 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 460, column: 6)
!7163 = !DILocation(line: 460, column: 11, scope: !7162)
!7164 = !DILocation(line: 460, column: 6, scope: !7113)
!7165 = !DILocation(line: 460, column: 26, scope: !7162)
!7166 = !DILocation(line: 461, column: 6, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 461, column: 6)
!7168 = !DILocation(line: 461, column: 11, scope: !7167)
!7169 = !DILocation(line: 461, column: 6, scope: !7113)
!7170 = !DILocation(line: 461, column: 26, scope: !7167)
!7171 = !DILocation(line: 462, column: 6, scope: !7172)
!7172 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 462, column: 6)
!7173 = !DILocation(line: 462, column: 11, scope: !7172)
!7174 = !DILocation(line: 462, column: 6, scope: !7113)
!7175 = !DILocation(line: 462, column: 26, scope: !7172)
!7176 = !DILocation(line: 463, column: 6, scope: !7177)
!7177 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 463, column: 6)
!7178 = !DILocation(line: 463, column: 11, scope: !7177)
!7179 = !DILocation(line: 463, column: 6, scope: !7113)
!7180 = !DILocation(line: 463, column: 26, scope: !7177)
!7181 = !DILocation(line: 464, column: 6, scope: !7182)
!7182 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 464, column: 6)
!7183 = !DILocation(line: 464, column: 11, scope: !7182)
!7184 = !DILocation(line: 464, column: 6, scope: !7113)
!7185 = !DILocation(line: 464, column: 26, scope: !7182)
!7186 = !DILocation(line: 465, column: 6, scope: !7187)
!7187 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 465, column: 6)
!7188 = !DILocation(line: 465, column: 11, scope: !7187)
!7189 = !DILocation(line: 465, column: 6, scope: !7113)
!7190 = !DILocation(line: 465, column: 26, scope: !7187)
!7191 = !DILocation(line: 466, column: 6, scope: !7192)
!7192 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 466, column: 6)
!7193 = !DILocation(line: 466, column: 11, scope: !7192)
!7194 = !DILocation(line: 466, column: 6, scope: !7113)
!7195 = !DILocation(line: 466, column: 26, scope: !7192)
!7196 = !DILocation(line: 467, column: 6, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 467, column: 6)
!7198 = !DILocation(line: 467, column: 11, scope: !7197)
!7199 = !DILocation(line: 467, column: 6, scope: !7113)
!7200 = !DILocation(line: 467, column: 26, scope: !7197)
!7201 = !DILocation(line: 468, column: 6, scope: !7202)
!7202 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 468, column: 6)
!7203 = !DILocation(line: 468, column: 11, scope: !7202)
!7204 = !DILocation(line: 468, column: 6, scope: !7113)
!7205 = !DILocation(line: 468, column: 26, scope: !7202)
!7206 = !DILocation(line: 469, column: 6, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 469, column: 6)
!7208 = !DILocation(line: 469, column: 11, scope: !7207)
!7209 = !DILocation(line: 469, column: 6, scope: !7113)
!7210 = !DILocation(line: 469, column: 26, scope: !7207)
!7211 = !DILocation(line: 470, column: 6, scope: !7212)
!7212 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 470, column: 6)
!7213 = !DILocation(line: 470, column: 11, scope: !7212)
!7214 = !DILocation(line: 470, column: 6, scope: !7113)
!7215 = !DILocation(line: 470, column: 26, scope: !7212)
!7216 = !DILocation(line: 471, column: 6, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 471, column: 6)
!7218 = !DILocation(line: 471, column: 11, scope: !7217)
!7219 = !DILocation(line: 471, column: 6, scope: !7113)
!7220 = !DILocation(line: 471, column: 26, scope: !7217)
!7221 = !DILocation(line: 472, column: 6, scope: !7222)
!7222 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 472, column: 6)
!7223 = !DILocation(line: 472, column: 11, scope: !7222)
!7224 = !DILocation(line: 472, column: 6, scope: !7113)
!7225 = !DILocation(line: 472, column: 26, scope: !7222)
!7226 = !DILocation(line: 473, column: 6, scope: !7227)
!7227 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 473, column: 6)
!7228 = !DILocation(line: 473, column: 11, scope: !7227)
!7229 = !DILocation(line: 473, column: 6, scope: !7113)
!7230 = !DILocation(line: 473, column: 26, scope: !7227)
!7231 = !DILocation(line: 474, column: 6, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 474, column: 6)
!7233 = !DILocation(line: 474, column: 11, scope: !7232)
!7234 = !DILocation(line: 474, column: 6, scope: !7113)
!7235 = !DILocation(line: 474, column: 27, scope: !7232)
!7236 = !DILocation(line: 475, column: 6, scope: !7237)
!7237 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 475, column: 6)
!7238 = !DILocation(line: 475, column: 11, scope: !7237)
!7239 = !DILocation(line: 475, column: 6, scope: !7113)
!7240 = !DILocation(line: 475, column: 32, scope: !7237)
!7241 = !DILocation(line: 477, column: 50, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7113, file: !347, line: 477, column: 6)
!7243 = !DILocation(line: 477, column: 6, scope: !7113)
!7244 = !DILocation(line: 478, column: 3, scope: !7242)
!7245 = !DILocation(line: 478, column: 3, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7247, file: !347, line: 478, column: 3)
!7247 = distinct !DILexicalBlock(scope: !7242, file: !347, line: 478, column: 3)
!7248 = !{i32 -2141200551}
!7249 = !DILocation(line: 478, column: 3, scope: !7247)
!7250 = !DILocation(line: 480, column: 3, scope: !7242)
!7251 = !DILocation(line: 480, column: 3, scope: !7252)
!7252 = distinct !DILexicalBlock(scope: !7242, file: !347, line: 480, column: 3)
!7253 = !DILocation(line: 480, column: 3, scope: !7254)
!7254 = distinct !DILexicalBlock(scope: !7252, file: !347, line: 480, column: 3)
!7255 = !DILocation(line: 480, column: 3, scope: !7256)
!7256 = distinct !DILexicalBlock(scope: !7252, file: !347, line: 480, column: 3)
!7257 = !{i64 2153766948, i64 2153766977, i64 2153767023, i64 2153767081, i64 2153767135, i64 2153767189, i64 2153767244, i64 2153767275}
!7258 = !DILocation(line: 483, column: 2, scope: !7113)
!7259 = !DILocation(line: 484, column: 1, scope: !7113)
!7260 = !DISubprogram(name: "kmalloc_trace", scope: !347, file: !347, line: 525, type: !7261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7261 = !DISubroutineType(types: !7262)
!7262 = !{!372, !2004, !373, !546}
!7263 = distinct !DISubprogram(name: "kmalloc_type", scope: !347, file: !347, line: 401, type: !7264, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7266)
!7264 = !DISubroutineType(types: !7265)
!7265 = !{!346, !373, !549}
!7266 = !{!7267, !7268}
!7267 = !DILocalVariable(name: "flags", arg: 1, scope: !7263, file: !347, line: 401, type: !373)
!7268 = !DILocalVariable(name: "caller", arg: 2, scope: !7263, file: !347, line: 401, type: !549)
!7269 = !DILocation(line: 401, column: 67, scope: !7263)
!7270 = !DILocation(line: 401, column: 88, scope: !7263)
!7271 = !DILocation(line: 407, column: 6, scope: !7272)
!7272 = distinct !DILexicalBlock(scope: !7263, file: !347, line: 407, column: 6)
!7273 = !DILocation(line: 407, column: 6, scope: !7263)
!7274 = !DILocation(line: 413, column: 3, scope: !7272)
!7275 = !DILocation(line: 423, column: 38, scope: !7276)
!7276 = distinct !DILexicalBlock(scope: !7263, file: !347, line: 423, column: 6)
!7277 = !DILocation(line: 423, column: 44, scope: !7276)
!7278 = !DILocation(line: 423, column: 6, scope: !7263)
!7279 = !DILocation(line: 424, column: 3, scope: !7276)
!7280 = !DILocation(line: 426, column: 3, scope: !7281)
!7281 = distinct !DILexicalBlock(scope: !7263, file: !347, line: 425, column: 6)
!7282 = !DILocation(line: 429, column: 1, scope: !7263)
!7283 = !DISubprogram(name: "__kmalloc", scope: !347, file: !347, line: 488, type: !6612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7284 = !DISubprogram(name: "__compiletime_assert_236", scope: !347, file: !347, line: 478, type: !1204, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7285 = distinct !DISubprogram(name: "drm_framebuffer_get", scope: !4964, file: !4964, line: 234, type: !5033, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7286)
!7286 = !{!7287}
!7287 = !DILocalVariable(name: "fb", arg: 1, scope: !7285, file: !4964, line: 234, type: !4962)
!7288 = !DILocation(line: 234, column: 64, scope: !7285)
!7289 = !DILocation(line: 236, column: 23, scope: !7285)
!7290 = !DILocation(line: 236, column: 27, scope: !7285)
!7291 = !DILocation(line: 236, column: 2, scope: !7285)
!7292 = !DILocation(line: 237, column: 1, scope: !7285)
!7293 = !DISubprogram(name: "drm_mode_object_get", scope: !4970, file: !4970, line: 124, type: !7294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7294 = !DISubroutineType(types: !7295)
!7295 = !{null, !6553}
!7296 = distinct !DISubprogram(name: "__list_add", scope: !6511, file: !6511, line: 146, type: !7297, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7299)
!7297 = !DISubroutineType(types: !7298)
!7298 = !{null, !378, !378, !378}
!7299 = !{!7300, !7301, !7302}
!7300 = !DILocalVariable(name: "new", arg: 1, scope: !7296, file: !6511, line: 146, type: !378)
!7301 = !DILocalVariable(name: "prev", arg: 2, scope: !7296, file: !6511, line: 147, type: !378)
!7302 = !DILocalVariable(name: "next", arg: 3, scope: !7296, file: !6511, line: 148, type: !378)
!7303 = !DILocation(line: 146, column: 49, scope: !7296)
!7304 = !DILocation(line: 147, column: 28, scope: !7296)
!7305 = !DILocation(line: 148, column: 28, scope: !7296)
!7306 = !DILocation(line: 150, column: 24, scope: !7307)
!7307 = distinct !DILexicalBlock(scope: !7296, file: !6511, line: 150, column: 6)
!7308 = !DILocation(line: 150, column: 29, scope: !7307)
!7309 = !DILocation(line: 150, column: 35, scope: !7307)
!7310 = !DILocation(line: 150, column: 7, scope: !7307)
!7311 = !DILocation(line: 150, column: 6, scope: !7296)
!7312 = !DILocation(line: 151, column: 3, scope: !7307)
!7313 = !DILocation(line: 153, column: 15, scope: !7296)
!7314 = !DILocation(line: 153, column: 2, scope: !7296)
!7315 = !DILocation(line: 153, column: 8, scope: !7296)
!7316 = !DILocation(line: 153, column: 13, scope: !7296)
!7317 = !DILocation(line: 154, column: 14, scope: !7296)
!7318 = !DILocation(line: 154, column: 2, scope: !7296)
!7319 = !DILocation(line: 154, column: 7, scope: !7296)
!7320 = !DILocation(line: 154, column: 12, scope: !7296)
!7321 = !DILocation(line: 155, column: 14, scope: !7296)
!7322 = !DILocation(line: 155, column: 2, scope: !7296)
!7323 = !DILocation(line: 155, column: 7, scope: !7296)
!7324 = !DILocation(line: 155, column: 12, scope: !7296)
!7325 = !DILocation(line: 156, column: 2, scope: !7296)
!7326 = !DILocation(line: 156, column: 2, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7296, file: !6511, line: 156, column: 2)
!7328 = !DILocation(line: 156, column: 2, scope: !7329)
!7329 = distinct !DILexicalBlock(scope: !7327, file: !6511, line: 156, column: 2)
!7330 = !DILocation(line: 156, column: 2, scope: !7331)
!7331 = distinct !DILexicalBlock(scope: !7327, file: !6511, line: 156, column: 2)
!7332 = !DILocation(line: 157, column: 1, scope: !7296)
!7333 = distinct !DISubprogram(name: "__list_add_valid", scope: !6511, file: !6511, line: 128, type: !7334, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7336)
!7334 = !DISubroutineType(types: !7335)
!7335 = !{!920, !378, !378, !378}
!7336 = !{!7337, !7338, !7339}
!7337 = !DILocalVariable(name: "new", arg: 1, scope: !7333, file: !6511, line: 128, type: !378)
!7338 = !DILocalVariable(name: "prev", arg: 2, scope: !7333, file: !6511, line: 129, type: !378)
!7339 = !DILocalVariable(name: "next", arg: 3, scope: !7333, file: !6511, line: 130, type: !378)
!7340 = !DILocation(line: 128, column: 55, scope: !7333)
!7341 = !DILocation(line: 129, column: 23, scope: !7333)
!7342 = !DILocation(line: 130, column: 23, scope: !7333)
!7343 = !DILocation(line: 132, column: 2, scope: !7333)
!7344 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6742, file: !6742, line: 43, type: !7345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7345 = !DISubroutineType(types: !7346)
!7346 = !{null, !6536, !549}
!7347 = !DISubprogram(name: "drm_mode_object_put", scope: !4970, file: !4970, line: 125, type: !7294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7348 = distinct !DISubprogram(name: "kref_put", scope: !401, file: !401, line: 62, type: !7349, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7351)
!7349 = !DISubroutineType(types: !7350)
!7350 = !{!109, !5002, !4999}
!7351 = !{!7352, !7353}
!7352 = !DILocalVariable(name: "kref", arg: 1, scope: !7348, file: !401, line: 62, type: !5002)
!7353 = !DILocalVariable(name: "release", arg: 2, scope: !7348, file: !401, line: 62, type: !4999)
!7354 = !DILocation(line: 62, column: 41, scope: !7348)
!7355 = !DILocation(line: 62, column: 54, scope: !7348)
!7356 = !DILocation(line: 64, column: 29, scope: !7357)
!7357 = distinct !DILexicalBlock(scope: !7348, file: !401, line: 64, column: 6)
!7358 = !DILocation(line: 64, column: 35, scope: !7357)
!7359 = !DILocation(line: 64, column: 6, scope: !7357)
!7360 = !DILocation(line: 64, column: 6, scope: !7348)
!7361 = !DILocation(line: 65, column: 3, scope: !7362)
!7362 = distinct !DILexicalBlock(scope: !7357, file: !401, line: 64, column: 46)
!7363 = !DILocation(line: 65, column: 11, scope: !7362)
!7364 = !DILocation(line: 66, column: 3, scope: !7362)
!7365 = !DILocation(line: 68, column: 2, scope: !7348)
!7366 = !DILocation(line: 69, column: 1, scope: !7348)
!7367 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !357, file: !357, line: 331, type: !7368, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7371)
!7368 = !DISubroutineType(types: !7369)
!7369 = !{!920, !7370}
!7370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!7371 = !{!7372}
!7372 = !DILocalVariable(name: "r", arg: 1, scope: !7367, file: !357, line: 331, type: !7370)
!7373 = !DILocation(line: 331, column: 67, scope: !7367)
!7374 = !DILocation(line: 333, column: 33, scope: !7367)
!7375 = !DILocation(line: 333, column: 9, scope: !7367)
!7376 = !DILocation(line: 333, column: 2, scope: !7367)
!7377 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !357, file: !357, line: 313, type: !7378, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7380)
!7378 = !DISubroutineType(types: !7379)
!7379 = !{!920, !7370, !969}
!7380 = !{!7381, !7382}
!7381 = !DILocalVariable(name: "r", arg: 1, scope: !7377, file: !357, line: 313, type: !7370)
!7382 = !DILocalVariable(name: "oldp", arg: 2, scope: !7377, file: !357, line: 313, type: !969)
!7383 = !DILocation(line: 313, column: 69, scope: !7377)
!7384 = !DILocation(line: 313, column: 77, scope: !7377)
!7385 = !DILocation(line: 315, column: 36, scope: !7377)
!7386 = !DILocation(line: 315, column: 39, scope: !7377)
!7387 = !DILocation(line: 315, column: 9, scope: !7377)
!7388 = !DILocation(line: 315, column: 2, scope: !7377)
!7389 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !357, file: !357, line: 270, type: !7390, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7392)
!7390 = !DISubroutineType(types: !7391)
!7391 = !{!920, !109, !7370, !969}
!7392 = !{!7393, !7394, !7395, !7396}
!7393 = !DILocalVariable(name: "i", arg: 1, scope: !7389, file: !357, line: 270, type: !109)
!7394 = !DILocalVariable(name: "r", arg: 2, scope: !7389, file: !357, line: 270, type: !7370)
!7395 = !DILocalVariable(name: "oldp", arg: 3, scope: !7389, file: !357, line: 270, type: !969)
!7396 = !DILocalVariable(name: "old", scope: !7389, file: !357, line: 272, type: !109)
!7397 = !DILocation(line: 270, column: 61, scope: !7389)
!7398 = !DILocation(line: 270, column: 76, scope: !7389)
!7399 = !DILocation(line: 270, column: 84, scope: !7389)
!7400 = !DILocation(line: 272, column: 2, scope: !7389)
!7401 = !DILocation(line: 272, column: 6, scope: !7389)
!7402 = !DILocation(line: 272, column: 37, scope: !7389)
!7403 = !DILocation(line: 272, column: 41, scope: !7389)
!7404 = !DILocation(line: 272, column: 44, scope: !7389)
!7405 = !DILocation(line: 272, column: 12, scope: !7389)
!7406 = !DILocation(line: 274, column: 6, scope: !7407)
!7407 = distinct !DILexicalBlock(scope: !7389, file: !357, line: 274, column: 6)
!7408 = !DILocation(line: 274, column: 6, scope: !7389)
!7409 = !DILocation(line: 275, column: 11, scope: !7407)
!7410 = !DILocation(line: 275, column: 4, scope: !7407)
!7411 = !DILocation(line: 275, column: 9, scope: !7407)
!7412 = !DILocation(line: 275, column: 3, scope: !7407)
!7413 = !DILocation(line: 277, column: 6, scope: !7414)
!7414 = distinct !DILexicalBlock(scope: !7389, file: !357, line: 277, column: 6)
!7415 = !DILocation(line: 277, column: 13, scope: !7414)
!7416 = !DILocation(line: 277, column: 10, scope: !7414)
!7417 = !DILocation(line: 277, column: 6, scope: !7389)
!7418 = !DILocation(line: 278, column: 3, scope: !7419)
!7419 = distinct !DILexicalBlock(scope: !7414, file: !357, line: 277, column: 16)
!7420 = !DILocation(line: 278, column: 3, scope: !7421)
!7421 = distinct !DILexicalBlock(scope: !7419, file: !357, line: 278, column: 3)
!7422 = !DILocation(line: 278, column: 3, scope: !7423)
!7423 = distinct !DILexicalBlock(scope: !7421, file: !357, line: 278, column: 3)
!7424 = !DILocation(line: 278, column: 3, scope: !7425)
!7425 = distinct !DILexicalBlock(scope: !7421, file: !357, line: 278, column: 3)
!7426 = !DILocation(line: 278, column: 3, scope: !7427)
!7427 = distinct !DILexicalBlock(scope: !7425, file: !357, line: 278, column: 3)
!7428 = !{i64 2149839620}
!7429 = !DILocation(line: 279, column: 3, scope: !7419)
!7430 = !DILocation(line: 282, column: 6, scope: !7431)
!7431 = distinct !DILexicalBlock(scope: !7389, file: !357, line: 282, column: 6)
!7432 = !DILocation(line: 282, column: 6, scope: !7389)
!7433 = !DILocation(line: 283, column: 26, scope: !7431)
!7434 = !DILocation(line: 283, column: 3, scope: !7431)
!7435 = !DILocation(line: 285, column: 2, scope: !7389)
!7436 = !DILocation(line: 286, column: 1, scope: !7389)
!7437 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !7438, file: !7438, line: 397, type: !7439, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7442)
!7438 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7439 = !DISubroutineType(types: !7440)
!7440 = !{!109, !109, !7441}
!7441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!7442 = !{!7443, !7444}
!7443 = !DILocalVariable(name: "i", arg: 1, scope: !7437, file: !7438, line: 397, type: !109)
!7444 = !DILocalVariable(name: "v", arg: 2, scope: !7437, file: !7438, line: 397, type: !7441)
!7445 = !DILocation(line: 397, column: 30, scope: !7437)
!7446 = !DILocation(line: 397, column: 43, scope: !7437)
!7447 = !DILocation(line: 399, column: 2, scope: !7437)
!7448 = !DILocation(line: 399, column: 2, scope: !7449)
!7449 = distinct !DILexicalBlock(scope: !7437, file: !7438, line: 399, column: 2)
!7450 = !DILocation(line: 400, column: 31, scope: !7437)
!7451 = !DILocation(line: 400, column: 2, scope: !7437)
!7452 = !DILocation(line: 401, column: 38, scope: !7437)
!7453 = !DILocation(line: 401, column: 41, scope: !7437)
!7454 = !DILocation(line: 401, column: 9, scope: !7437)
!7455 = !DILocation(line: 401, column: 2, scope: !7437)
!7456 = !DISubprogram(name: "refcount_warn_saturate", scope: !357, file: !357, line: 127, type: !7457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7457 = !DISubroutineType(types: !7458)
!7458 = !{null, !7370, !356}
!7459 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7460, file: !7460, line: 94, type: !7461, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7466)
!7460 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7461 = !DISubroutineType(types: !7462)
!7462 = !{null, !7463, !546}
!7463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7464, size: 64)
!7464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7465)
!7465 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7466 = !{!7467, !7468}
!7467 = !DILocalVariable(name: "v", arg: 1, scope: !7459, file: !7460, line: 94, type: !7463)
!7468 = !DILocalVariable(name: "size", arg: 2, scope: !7459, file: !7460, line: 94, type: !546)
!7469 = !DILocation(line: 94, column: 79, scope: !7459)
!7470 = !DILocation(line: 94, column: 89, scope: !7459)
!7471 = !DILocation(line: 96, column: 20, scope: !7459)
!7472 = !DILocation(line: 96, column: 23, scope: !7459)
!7473 = !DILocation(line: 96, column: 2, scope: !7459)
!7474 = !DILocation(line: 97, column: 2, scope: !7459)
!7475 = !DILocation(line: 98, column: 1, scope: !7459)
!7476 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7477, file: !7477, line: 928, type: !7439, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7478)
!7477 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7478 = !{!7479, !7480}
!7479 = !DILocalVariable(name: "i", arg: 1, scope: !7476, file: !7477, line: 928, type: !109)
!7480 = !DILocalVariable(name: "v", arg: 2, scope: !7476, file: !7477, line: 928, type: !7441)
!7481 = !DILocation(line: 928, column: 34, scope: !7476)
!7482 = !DILocation(line: 928, column: 47, scope: !7476)
!7483 = !DILocation(line: 936, column: 31, scope: !7476)
!7484 = !DILocation(line: 936, column: 34, scope: !7476)
!7485 = !DILocation(line: 936, column: 9, scope: !7476)
!7486 = !DILocation(line: 936, column: 2, scope: !7476)
!7487 = distinct !DISubprogram(name: "kasan_check_write", scope: !7488, file: !7488, line: 44, type: !7489, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7491)
!7488 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7489 = !DISubroutineType(types: !7490)
!7490 = !{!920, !7463, !7}
!7491 = !{!7492, !7493}
!7492 = !DILocalVariable(name: "p", arg: 1, scope: !7487, file: !7488, line: 44, type: !7463)
!7493 = !DILocalVariable(name: "size", arg: 2, scope: !7487, file: !7488, line: 44, type: !7)
!7494 = !DILocation(line: 44, column: 59, scope: !7487)
!7495 = !DILocation(line: 44, column: 75, scope: !7487)
!7496 = !DILocation(line: 46, column: 2, scope: !7487)
!7497 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7498, file: !7498, line: 229, type: !7499, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7501)
!7498 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7499 = !DISubroutineType(types: !7500)
!7500 = !{null, !7463, !546, !109}
!7501 = !{!7502, !7503, !7504}
!7502 = !DILocalVariable(name: "ptr", arg: 1, scope: !7497, file: !7498, line: 229, type: !7463)
!7503 = !DILocalVariable(name: "size", arg: 2, scope: !7497, file: !7498, line: 229, type: !546)
!7504 = !DILocalVariable(name: "type", arg: 3, scope: !7497, file: !7498, line: 230, type: !109)
!7505 = !DILocation(line: 229, column: 60, scope: !7497)
!7506 = !DILocation(line: 229, column: 72, scope: !7497)
!7507 = !DILocation(line: 230, column: 15, scope: !7497)
!7508 = !DILocation(line: 230, column: 23, scope: !7497)
!7509 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7510, file: !7510, line: 101, type: !7439, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7511)
!7510 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7511 = !{!7512, !7513, !7514}
!7512 = !DILocalVariable(name: "i", arg: 1, scope: !7509, file: !7510, line: 101, type: !109)
!7513 = !DILocalVariable(name: "v", arg: 2, scope: !7509, file: !7510, line: 101, type: !7441)
!7514 = !DILocalVariable(name: "__ret", scope: !7515, file: !7510, line: 103, type: !109)
!7515 = distinct !DILexicalBlock(scope: !7509, file: !7510, line: 103, column: 9)
!7516 = !DILocation(line: 101, column: 54, scope: !7509)
!7517 = !DILocation(line: 101, column: 67, scope: !7509)
!7518 = !DILocation(line: 103, column: 9, scope: !7515)
!7519 = !{i64 2148895304, i64 2148895343, i64 2148895364, i64 2148895401, i64 2148895424, i64 2148895433}
!7520 = !DILocation(line: 103, column: 9, scope: !7509)
!7521 = !DILocation(line: 103, column: 2, scope: !7509)
!7522 = distinct !DISubprogram(name: "__list_del_entry", scope: !6511, file: !6511, line: 213, type: !6512, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7523)
!7523 = !{!7524}
!7524 = !DILocalVariable(name: "entry", arg: 1, scope: !7522, file: !6511, line: 213, type: !378)
!7525 = !DILocation(line: 213, column: 55, scope: !7522)
!7526 = !DILocation(line: 215, column: 30, scope: !7527)
!7527 = distinct !DILexicalBlock(scope: !7522, file: !6511, line: 215, column: 6)
!7528 = !DILocation(line: 215, column: 7, scope: !7527)
!7529 = !DILocation(line: 215, column: 6, scope: !7522)
!7530 = !DILocation(line: 216, column: 3, scope: !7527)
!7531 = !DILocation(line: 218, column: 13, scope: !7522)
!7532 = !DILocation(line: 218, column: 20, scope: !7522)
!7533 = !DILocation(line: 218, column: 26, scope: !7522)
!7534 = !DILocation(line: 218, column: 33, scope: !7522)
!7535 = !DILocation(line: 218, column: 2, scope: !7522)
!7536 = !DILocation(line: 219, column: 1, scope: !7522)
!7537 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6511, file: !6511, line: 134, type: !7538, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7540)
!7538 = !DISubroutineType(types: !7539)
!7539 = !{!920, !378}
!7540 = !{!7541}
!7541 = !DILocalVariable(name: "entry", arg: 1, scope: !7537, file: !6511, line: 134, type: !378)
!7542 = !DILocation(line: 134, column: 61, scope: !7537)
!7543 = !DILocation(line: 136, column: 2, scope: !7537)
!7544 = distinct !DISubprogram(name: "__list_del", scope: !6511, file: !6511, line: 193, type: !6746, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7545)
!7545 = !{!7546, !7547}
!7546 = !DILocalVariable(name: "prev", arg: 1, scope: !7544, file: !6511, line: 193, type: !378)
!7547 = !DILocalVariable(name: "next", arg: 2, scope: !7544, file: !6511, line: 193, type: !378)
!7548 = !DILocation(line: 193, column: 50, scope: !7544)
!7549 = !DILocation(line: 193, column: 75, scope: !7544)
!7550 = !DILocation(line: 195, column: 15, scope: !7544)
!7551 = !DILocation(line: 195, column: 2, scope: !7544)
!7552 = !DILocation(line: 195, column: 8, scope: !7544)
!7553 = !DILocation(line: 195, column: 13, scope: !7544)
!7554 = !DILocation(line: 196, column: 2, scope: !7544)
!7555 = !DILocation(line: 196, column: 2, scope: !7556)
!7556 = distinct !DILexicalBlock(scope: !7544, file: !6511, line: 196, column: 2)
!7557 = !DILocation(line: 196, column: 2, scope: !7558)
!7558 = distinct !DILexicalBlock(scope: !7556, file: !6511, line: 196, column: 2)
!7559 = !DILocation(line: 196, column: 2, scope: !7560)
!7560 = distinct !DILexicalBlock(scope: !7556, file: !6511, line: 196, column: 2)
!7561 = !DILocation(line: 197, column: 1, scope: !7544)
!7562 = distinct !DISubprogram(name: "const_test_bit", scope: !7563, file: !7563, line: 166, type: !7564, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7569)
!7563 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7564 = !DISubroutineType(types: !7565)
!7565 = !{!920, !549, !7566}
!7566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7567, size: 64)
!7567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7568)
!7568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !549)
!7569 = !{!7570, !7571, !7572, !7573, !7574}
!7570 = !DILocalVariable(name: "nr", arg: 1, scope: !7562, file: !7563, line: 166, type: !549)
!7571 = !DILocalVariable(name: "addr", arg: 2, scope: !7562, file: !7563, line: 166, type: !7566)
!7572 = !DILocalVariable(name: "p", scope: !7562, file: !7563, line: 168, type: !6136)
!7573 = !DILocalVariable(name: "mask", scope: !7562, file: !7563, line: 169, type: !549)
!7574 = !DILocalVariable(name: "val", scope: !7562, file: !7563, line: 170, type: !549)
!7575 = !DILocation(line: 166, column: 30, scope: !7562)
!7576 = !DILocation(line: 166, column: 64, scope: !7562)
!7577 = !DILocation(line: 168, column: 2, scope: !7562)
!7578 = !DILocation(line: 168, column: 23, scope: !7562)
!7579 = !DILocation(line: 168, column: 50, scope: !7562)
!7580 = !DILocation(line: 168, column: 57, scope: !7562)
!7581 = !DILocation(line: 168, column: 55, scope: !7562)
!7582 = !DILocation(line: 169, column: 2, scope: !7562)
!7583 = !DILocation(line: 169, column: 16, scope: !7562)
!7584 = !DILocation(line: 169, column: 23, scope: !7562)
!7585 = !DILocation(line: 170, column: 2, scope: !7562)
!7586 = !DILocation(line: 170, column: 16, scope: !7562)
!7587 = !DILocation(line: 170, column: 23, scope: !7562)
!7588 = !DILocation(line: 170, column: 22, scope: !7562)
!7589 = !DILocation(line: 172, column: 12, scope: !7562)
!7590 = !DILocation(line: 172, column: 18, scope: !7562)
!7591 = !DILocation(line: 172, column: 16, scope: !7562)
!7592 = !DILocation(line: 172, column: 10, scope: !7562)
!7593 = !DILocation(line: 172, column: 9, scope: !7562)
!7594 = !DILocation(line: 173, column: 1, scope: !7562)
!7595 = !DILocation(line: 172, column: 2, scope: !7562)
!7596 = distinct !DISubprogram(name: "_test_bit", scope: !7597, file: !7597, line: 139, type: !7564, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7598)
!7597 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7598 = !{!7599, !7600}
!7599 = !DILocalVariable(name: "nr", arg: 1, scope: !7596, file: !7597, line: 139, type: !549)
!7600 = !DILocalVariable(name: "addr", arg: 2, scope: !7596, file: !7597, line: 139, type: !7566)
!7601 = !DILocation(line: 139, column: 25, scope: !7596)
!7602 = !DILocation(line: 139, column: 59, scope: !7596)
!7603 = !DILocation(line: 141, column: 25, scope: !7596)
!7604 = !DILocation(line: 141, column: 32, scope: !7596)
!7605 = !DILocation(line: 141, column: 30, scope: !7596)
!7606 = !DILocation(line: 141, column: 2, scope: !7596)
!7607 = !DILocation(line: 142, column: 23, scope: !7596)
!7608 = !DILocation(line: 142, column: 27, scope: !7596)
!7609 = !DILocation(line: 142, column: 9, scope: !7596)
!7610 = !DILocation(line: 142, column: 2, scope: !7596)
!7611 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7460, file: !7460, line: 66, type: !7461, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7612)
!7612 = !{!7613, !7614}
!7613 = !DILocalVariable(name: "v", arg: 1, scope: !7611, file: !7460, line: 66, type: !7463)
!7614 = !DILocalVariable(name: "size", arg: 2, scope: !7611, file: !7460, line: 66, type: !546)
!7615 = !DILocation(line: 66, column: 73, scope: !7611)
!7616 = !DILocation(line: 66, column: 83, scope: !7611)
!7617 = !DILocation(line: 68, column: 19, scope: !7611)
!7618 = !DILocation(line: 68, column: 22, scope: !7611)
!7619 = !DILocation(line: 68, column: 2, scope: !7611)
!7620 = !DILocation(line: 69, column: 2, scope: !7611)
!7621 = !DILocation(line: 70, column: 1, scope: !7611)
!7622 = distinct !DISubprogram(name: "arch_test_bit", scope: !7623, file: !7623, line: 237, type: !7564, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7624)
!7623 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7624 = !{!7625, !7626}
!7625 = !DILocalVariable(name: "nr", arg: 1, scope: !7622, file: !7623, line: 237, type: !549)
!7626 = !DILocalVariable(name: "addr", arg: 2, scope: !7622, file: !7623, line: 237, type: !7566)
!7627 = !DILocation(line: 237, column: 29, scope: !7622)
!7628 = !DILocation(line: 237, column: 63, scope: !7622)
!7629 = !DILocation(line: 239, column: 30, scope: !7622)
!7630 = !DILocation(line: 239, column: 9, scope: !7622)
!7631 = !DILocation(line: 239, column: 54, scope: !7622)
!7632 = !DILocation(line: 239, column: 58, scope: !7622)
!7633 = !DILocation(line: 239, column: 36, scope: !7622)
!7634 = !DILocation(line: 240, column: 26, scope: !7622)
!7635 = !DILocation(line: 240, column: 30, scope: !7622)
!7636 = !DILocation(line: 240, column: 8, scope: !7622)
!7637 = !DILocation(line: 239, column: 2, scope: !7622)
!7638 = distinct !DISubprogram(name: "kasan_check_read", scope: !7488, file: !7488, line: 40, type: !7489, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7639)
!7639 = !{!7640, !7641}
!7640 = !DILocalVariable(name: "p", arg: 1, scope: !7638, file: !7488, line: 40, type: !7463)
!7641 = !DILocalVariable(name: "size", arg: 2, scope: !7638, file: !7488, line: 40, type: !7)
!7642 = !DILocation(line: 40, column: 58, scope: !7638)
!7643 = !DILocation(line: 40, column: 74, scope: !7638)
!7644 = !DILocation(line: 42, column: 2, scope: !7638)
!7645 = distinct !DISubprogram(name: "constant_test_bit", scope: !7623, file: !7623, line: 204, type: !7646, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7648)
!7646 = !DISubroutineType(types: !7647)
!7647 = !{!920, !535, !7566}
!7648 = !{!7649, !7650}
!7649 = !DILocalVariable(name: "nr", arg: 1, scope: !7645, file: !7623, line: 204, type: !535)
!7650 = !DILocalVariable(name: "addr", arg: 2, scope: !7645, file: !7623, line: 204, type: !7566)
!7651 = !DILocation(line: 204, column: 52, scope: !7645)
!7652 = !DILocation(line: 204, column: 86, scope: !7645)
!7653 = !DILocation(line: 206, column: 19, scope: !7645)
!7654 = !DILocation(line: 206, column: 22, scope: !7645)
!7655 = !DILocation(line: 206, column: 15, scope: !7645)
!7656 = !DILocation(line: 207, column: 4, scope: !7645)
!7657 = !DILocation(line: 207, column: 9, scope: !7645)
!7658 = !DILocation(line: 207, column: 12, scope: !7645)
!7659 = !DILocation(line: 206, column: 44, scope: !7645)
!7660 = !DILocation(line: 207, column: 37, scope: !7645)
!7661 = !DILocation(line: 206, column: 2, scope: !7645)
!7662 = distinct !DISubprogram(name: "variable_test_bit", scope: !7623, file: !7623, line: 224, type: !7646, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7663)
!7663 = !{!7664, !7665, !7666}
!7664 = !DILocalVariable(name: "nr", arg: 1, scope: !7662, file: !7623, line: 224, type: !535)
!7665 = !DILocalVariable(name: "addr", arg: 2, scope: !7662, file: !7623, line: 224, type: !7566)
!7666 = !DILocalVariable(name: "oldbit", scope: !7662, file: !7623, line: 226, type: !920)
!7667 = !DILocation(line: 224, column: 52, scope: !7662)
!7668 = !DILocation(line: 224, column: 86, scope: !7662)
!7669 = !DILocation(line: 226, column: 2, scope: !7662)
!7670 = !DILocation(line: 226, column: 7, scope: !7662)
!7671 = !DILocation(line: 231, column: 33, scope: !7662)
!7672 = !DILocation(line: 231, column: 46, scope: !7662)
!7673 = !DILocation(line: 228, column: 2, scope: !7662)
!7674 = !{i64 2148059128, i64 2148059202}
!7675 = !DILocation(line: 233, column: 9, scope: !7662)
!7676 = !DILocation(line: 234, column: 1, scope: !7662)
!7677 = !DILocation(line: 233, column: 2, scope: !7662)
!7678 = !DISubprogram(name: "queue_work_on", scope: !321, file: !321, line: 496, type: !7679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7679 = !DISubroutineType(types: !7680)
!7680 = !{!920, !109, !1161, !1109}
!7681 = distinct !DISubprogram(name: "drm_writeback_fence_get_driver_name", scope: !3, file: !3, line: 86, type: !5459, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7682)
!7682 = !{!7683, !7684, !7685}
!7683 = !DILocalVariable(name: "fence", arg: 1, scope: !7681, file: !3, line: 86, type: !5447)
!7684 = !DILocalVariable(name: "wb_connector", scope: !7681, file: !3, line: 88, type: !388)
!7685 = !DILocalVariable(name: "__mptr", scope: !7686, file: !3, line: 89, type: !372)
!7686 = distinct !DILexicalBlock(scope: !7681, file: !3, line: 89, column: 3)
!7687 = !DILocation(line: 86, column: 74, scope: !7681)
!7688 = !DILocation(line: 88, column: 2, scope: !7681)
!7689 = !DILocation(line: 88, column: 34, scope: !7681)
!7690 = !DILocation(line: 89, column: 3, scope: !7686)
!7691 = !DILocation(line: 89, column: 3, scope: !7681)
!7692 = !DILocation(line: 91, column: 9, scope: !7681)
!7693 = !DILocation(line: 91, column: 23, scope: !7681)
!7694 = !DILocation(line: 91, column: 28, scope: !7681)
!7695 = !DILocation(line: 91, column: 33, scope: !7681)
!7696 = !DILocation(line: 91, column: 41, scope: !7681)
!7697 = !DILocation(line: 92, column: 1, scope: !7681)
!7698 = !DILocation(line: 91, column: 2, scope: !7681)
!7699 = distinct !DISubprogram(name: "drm_writeback_fence_get_timeline_name", scope: !3, file: !3, line: 95, type: !5459, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7700)
!7700 = !{!7701, !7702, !7703}
!7701 = !DILocalVariable(name: "fence", arg: 1, scope: !7699, file: !3, line: 95, type: !5447)
!7702 = !DILocalVariable(name: "wb_connector", scope: !7699, file: !3, line: 97, type: !388)
!7703 = !DILocalVariable(name: "__mptr", scope: !7704, file: !3, line: 98, type: !372)
!7704 = distinct !DILexicalBlock(scope: !7699, file: !3, line: 98, column: 3)
!7705 = !DILocation(line: 95, column: 57, scope: !7699)
!7706 = !DILocation(line: 97, column: 2, scope: !7699)
!7707 = !DILocation(line: 97, column: 34, scope: !7699)
!7708 = !DILocation(line: 98, column: 3, scope: !7704)
!7709 = !DILocation(line: 98, column: 3, scope: !7699)
!7710 = !DILocation(line: 100, column: 9, scope: !7699)
!7711 = !DILocation(line: 100, column: 23, scope: !7699)
!7712 = !DILocation(line: 101, column: 1, scope: !7699)
!7713 = !DILocation(line: 100, column: 2, scope: !7699)
!7714 = distinct !DISubprogram(name: "drm_writeback_fence_enable_signaling", scope: !3, file: !3, line: 103, type: !5464, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7715)
!7715 = !{!7716}
!7716 = !DILocalVariable(name: "fence", arg: 1, scope: !7714, file: !3, line: 103, type: !5447)
!7717 = !DILocation(line: 103, column: 68, scope: !7714)
!7718 = !DILocation(line: 105, column: 2, scope: !7714)
